<?php

class Promo_item_model extends CI_Model
{
	public function getamount($promo_id, $retained, $rate = 0){
		$query = $this->db->get_where('promo_items', array('promo_id' => $promo_id));
		$result = $query->row();

		//check is_price_per_piece
		$query1 = $this->db->get_where('promo_item_breakdown', array('con_id' => $promo_id, 
			'is_price_per_unit' => 'Y',
			'distribution_type_id' => 1,
			'unit_price >' => 0
		));
		$result1 = $query1->result_array();
		$transaction_qty = 1;
		foreach ($result1 as $key) {
			$transaction_qty = $key['transaction_qty'];
		}

		$tsp = $result->tsp;
		//if is_price_per_piece then * qty
		if (count($result1) > 0){
			$tsp = $result->tsp * $transaction_qty;
		}

		if ($retained == 'Y'){
			$nsp = $result->nsp;
			$pse = $result->pse;
			$wtax = 10;

			if ($pse > 0){
				$wtax_amount = round($pse * ($wtax / 100), 2);
				$net_pse = $pse - $wtax_amount;
				$amount = $tsp - $net_pse;
			} else {
				$pse = round($nsp * ($rate / 100), 2);
				$wtax_amount = round($pse * ($wtax / 100), 2);
				$net_pse = $pse - $wtax_amount;
				$amount = $tsp - $net_pse;
			}
			return $amount;
		}
		return $tsp;
	}

	public function load_promo($server_ip)
	{
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_promos';
		$qstring = array('X-API-KEY' => '12345');
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);

		$this->truncate_table();

		$promos = json_decode($response, TRUE);
		foreach($promos as $row){
			$promo_arr = array(
				'promo_id' => $row['promo_id'],
				'promo_type_id' => $row['promo_type_id'],
				'promo_code' => $row['promo_code'],
				'promo_description' => $row['promo_description'],
				'promo_period_from' => $row['promo_period_from'],
				'promo_period_to' => $row['promo_period_to'],
				'pse' =>  $row['pse'],
				'tsp' =>  $row['tsp'],
				'nsp' =>  $row['nsp'],
				'item_package_id' =>  $row['item_package_id']
			);
			$this->save($promo_arr);
		}
	}

	public function fetch_promos($item_id){
		$this->db->distinct();
		$this->db->select('promo_items.*');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id', 'INNER');
		$array = array('promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1
		);
		$this->db->where($array);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');

		$this->db->group_start();
		$this->db->where('promo_item_breakdown.item_id', $item_id);
		$this->db->or_where('promo_item_breakdown.item_bundle_id', $item_id);
		$this->db->group_end();
		$query = $this->db->get();
		return $query->result_array();
	}

	public function fetch_promos_packages($item_package_id){
		$this->db->select('promo_items.*');
		$this->db->from('promo_items');
		$array = array('promo_items.item_package_id' => $item_package_id);
		$this->db->where($array);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function fetch_promos_per_type($type){
		//get without bundle and not first class
		$this->db->select('promo_items.*, items.item_photo, promo_item_breakdown.item_id');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id', 'INNER');
		$this->db->join('items', 'items.item_id = promo_item_breakdown.item_id', 'INNER');
		$array = array(
			'promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1,
			'promo_item_breakdown.item_bundle_id' => 0,
			'promo_items.promo_type_id' => $type
		);
		$this->db->where($array);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query1 = $this->db->get_compiled_select();

		//bundle items
		$this->db->distinct();
		$this->db->select('promo_items.*, items.item_photo, promo_item_breakdown.item_bundle_id');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id', 'INNER');
		$this->db->join('items', 'items.item_id = promo_item_breakdown.item_bundle_id', 'INNER');
		$array = array(
			'promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1,
			'promo_item_breakdown.item_bundle_id >' => 0,
			'promo_items.promo_type_id' => $type
		);
		$this->db->where($array);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query2 = $this->db->get_compiled_select();

		//first class
		$this->db->select('promo_items.*, item_packages.product_img, item_packages.id');
		$this->db->from('promo_items');
		$this->db->join('item_packages', 'item_packages.id = promo_items.item_package_id', 'INNER');
		$array = array(
			'promo_items.promo_type_id' => $type,
			'promo_items.item_package_id >' => 0
		);
		$this->db->where($array);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query3 = $this->db->get_compiled_select();

		$query = $this->db->query($query1 . " UNION " . $query2 . " UNION " . $query3);
		return $query->result_array();
	}

	public function fetch_promos_other(){
		//get without bundle and not first class
		$this->db->select('promo_items.*, items.item_photo, promo_item_breakdown.item_id');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id', 'INNER');
		$this->db->join('items', 'items.item_id = promo_item_breakdown.item_id', 'INNER');
		$array = array(
			'promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1,
			'promo_item_breakdown.item_bundle_id' => 0
		);
		$this->db->where($array);

		$promos = array(1, 2, 3, 16);
		$this->db->where_not_in('promo_items.promo_type_id', $promos);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query1 = $this->db->get_compiled_select();

		//bundle items
		$this->db->distinct();
		$this->db->select('promo_items.*, items.item_photo, promo_item_breakdown.item_bundle_id');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id', 'INNER');
		$this->db->join('items', 'items.item_id = promo_item_breakdown.item_bundle_id', 'INNER');
		$array = array(
			'promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1,
			'promo_item_breakdown.item_bundle_id >' => 0
		);
		$this->db->where($array);
		$this->db->where_not_in('promo_items.promo_type_id', $promos);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query2 = $this->db->get_compiled_select();

		//first class
		$this->db->select('promo_items.*, item_packages.product_img, item_packages.id');
		$this->db->from('promo_items');
		$this->db->join('item_packages', 'item_packages.id = promo_items.item_package_id', 'INNER');
		$array = array(
			'promo_items.item_package_id >' => 0
		);
		$this->db->where($array);
		$this->db->where_not_in('promo_items.promo_type_id', $promos);
		$this->db->where('promo_items.promo_period_from <= date(now())');
		$this->db->where('promo_items.promo_period_to >= date(now())');
		$query3 = $this->db->get_compiled_select();

		$query = $this->db->query($query1 . " UNION " . $query2 . " UNION " . $query3);
		return $query->result_array();
	}

	public function truncate_table(){
		$this->db->truncate('promo_items');
	}

	public function save($details){
		$this->db->set($this->_setItem($details))->insert('promo_items');
	}

	private function _setItem($details)
	{
		return array(
			'promo_id' => $details['promo_id'],
			'promo_type_id' => $details['promo_type_id'],
			'promo_code' => $details['promo_code'],
			'promo_description' => $details['promo_description'],
			'promo_period_from' => $details['promo_period_from'],
			'promo_period_to' => $details['promo_period_to'],
			'pse' =>  $details['pse'],
			'tsp' =>  $details['tsp'],
			'nsp' =>  $details['nsp'],
			'item_package_id' =>  $details['item_package_id']
		);
	}
}
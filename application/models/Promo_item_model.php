<?php

class Promo_item_model extends CI_Model
{
	public function load_promo($server_ip){
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

		$this->db->where('promo_items.promo_period_from <= now()');
		$this->db->where('promo_items.promo_period_to <= now()');

		$this->db->group_start();
		$this->db->where('promo_item_breakdown.item_id', $item_id);
		$this->db->or_where('promo_item_breakdown.item_bundle_id', $item_id);
		$this->db->group_end();
		$query = $this->db->get();
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
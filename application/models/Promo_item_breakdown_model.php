<?php
class Promo_item_breakdown_model extends CI_Model
{
	public function fetch_bonus($promo_id, $recipient){
		$this->db->select('items.item_description, promo_item_breakdown.transaction_qty');
		$this->db->from('promo_item_breakdown');
		$this->db->join('items', 'items.item_id = promo_item_breakdown.item_id', 'INNER');

		$array = array(
			'promo_item_breakdown.con_id' => $promo_id,
			'promo_item_breakdown.distribution_type_id' => 2,
			'promo_item_breakdown.recipient' => $recipient
		);
		$this->db->where($array);
		$query = $this->db->get();
		return $query->result_array();
	}

	public function load_breakdown($server_ip){
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_breakdowns';
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
				'con_id' => $row['con_id'],
				'item_id' => $row['item_id'],
				'distribution_type_id' => $row['distribution_type_id'],
				'transaction_qty' => $row['transaction_qty'],
				'unit_price' => $row['unit_price'],
				'nsp' => $row['nsp'],
				'recipient' =>  $row['recipient'],
				'item_bundle_id' =>  $row['item_bundle_id'],
				'is_price_per_unit' =>  'N'
			);
			$this->save($promo_arr);
		}
	}

	public function truncate_table(){
		$this->db->truncate('promo_item_breakdown');
	}

	public function save($details){
		$this->db->set($this->_setItem($details))->insert('promo_item_breakdown');
	}

	private function _setItem($details)
	{
		return array(
			'con_id' => $details['con_id'],
			'item_id' => $details['item_id'],
			'distribution_type_id' => $details['distribution_type_id'],
			'transaction_qty' => $details['transaction_qty'],
			'unit_price' => $details['unit_price'],
			'nsp' => $details['nsp'],
			'recipient' =>  $details['recipient'],
			'item_bundle_id' =>  $details['item_bundle_id'],
			'is_price_per_unit' => $details['is_price_per_unit']
		);
	}
}
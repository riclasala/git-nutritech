<?php

class Item_model extends CI_Model
{
	public function getamount($promo_id, $retained){
		return 2.00;
	}

	public function load_items($server_ip)
	{
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_items';
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
		
		$items = json_decode($response, TRUE);
		foreach($items as $row){
			$item_arr = array(
				'item_id' => $row['item_id'],
				'item_class_id' => $row['item_class_id'],
				'item_description' => $row['item_description'],
				'unit_price' =>  $row['unit_price'],
				'nsp' =>  $row['nsp'],
				'pse' =>  $row['pse'],
				'item_photo' =>  $row['item_photo'],
				'sequence' =>  $row['sequence']
			);
			$this->save($item_arr);
		}
	}

	public function item_per_class($class_id){
		$query = $this->db->get_where('items', array('item_class_id' => $class_id));
		return $query->result_array();
	}

	public function truncate_table(){
		$this->db->truncate('items');
	}
	
	public function save($details)
	{
		$this->db->set($this->_setItem($details))->insert('items');
	}
	
	private function _setItem($details)
	{
		return array(
			'item_id' => $details['item_id'],
			'item_class_id' => $details['item_class_id'],
			'item_description' =>  $details['item_description'],
			'unit_price' =>  $details['unit_price'],
			'nsp' =>  $details['nsp'],
			'pse' =>  $details['pse'],
			'item_photo' =>  $details['item_photo'],
			'sequence' =>  $details['sequence']
		);
	}
}
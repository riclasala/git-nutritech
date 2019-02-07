<?php
class Item_package_model extends CI_Model
{
	public function getamount($item_package_id, $retained, $rate = 0){
		$query = $this->db->get_where('item_packages', array('id' => $item_package_id));
		$result = $query->row();

		$tsp = $result->unit_price;
		if ($retained == 'Y'){
			$nsp = round($tsp / 1.12, 2);
			$wtax = 10;

			$pse = round($nsp * ($rate / 100), 2);
			$wtax_amount = round($pse * ($wtax / 100), 2);
			$net_pse = $pse - $wtax_amount;
			$amount = $tsp - $net_pse;
			return $amount;
		}
		return $tsp;
	}

	public function item_per_package(){
		$this->db->from('item_packages');
		$this->db->order_by('sequence', 'ASC');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function load_packages($server_ip){
		//load latest packages details
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_packages';
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
		
		$packs = json_decode($response, TRUE);
		foreach($packs as $row){
			$pack_arr = array(
				'id' => $row['id'],
				'product_name' => $row['product_name'],
				'product_img' => $row['product_img'],
				'product_code' =>  $row['product_code'],
				'sequence' =>  $row['sequence'],
				'unit_price' =>  $row['unit_price']
			);
			$this->save($pack_arr);
		}
	}

	public function truncate_table(){
		$this->db->truncate('item_packages');
	}
	
	public function save($details)
	{
		$this->db->set($this->_setItem($details))->insert('item_packages');
	}
	
	private function _setItem($details)
	{
		return array(
			'id' => $details['id'],
			'product_name' => $details['product_name'],
			'product_img' => $details['product_img'],
			'product_code' =>  $details['product_code'],
			'sequence' =>  $details['sequence'],
			'unit_price' =>  $details['unit_price']
		);
	}
}
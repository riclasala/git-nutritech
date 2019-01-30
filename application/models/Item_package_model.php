<?php
class Item_package_model extends CI_Model
{
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
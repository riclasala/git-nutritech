<?php

class Item_model extends CI_Model
{
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
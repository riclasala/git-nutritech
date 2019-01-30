<?php
class Item_class_model extends CI_Model
{
	public function fetch_class($class_id)
	{
		$this->db->select('item_class_description');
		$this->db->from('item_class');
		$this->db->where('id', $class_id);

		$query = $this->db->get();
		$result = $query->row();
		return $result->item_class_description;
	}
}
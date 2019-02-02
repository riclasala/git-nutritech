<?php

class Promo_item_model extends CI_Model
{
	public function fetch_promos($item_id){
		$this->db->distinct();
		$this->db->select('promo_items.*');
		$this->db->from('promo_items');
		$this->db->join('promo_item_breakdown', 'promo_item_breakdown.con_id = promo_items.promo_id');

		$array = array('promo_items.item_package_id' => 0,
			'promo_item_breakdown.distribution_type_id' => 1
		);
		$this->db->where($array);
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
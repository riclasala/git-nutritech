<?php

class Promo_item_model extends CI_Model
{
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
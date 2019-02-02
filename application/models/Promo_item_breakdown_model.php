<?php

class Promo_item_breakdown_model extends CI_Model
{
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
<?php
class Shop_cart_model extends CI_Model
{
	public function create_cart($user_id, $tmp_user_id, $retained){
		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');

		$amount = 0;

		if($promo_id > 0){
			$this->load->model('promo_item_model');
			$amount = $this->promo_item_model->getamount($promo_id, $retained);
		} else {
			$this->load->model('item_model');
			$amount = $this->item_model->getamount($item_id, $retained);
		}

		$details = array(
			'user_id' => $user_id,
			'promo_id' =>  $promo_id,
			'item_id' => $item_id,
			'quantity' =>  1,
			'amount' =>  $amount,
			'date_cart' =>  date('Y-m-d H:i:s'),
			'promo_expire' =>  'N',
			'tmp_user_id' =>  $tmp_user_id,
			'amount_retained' =>  $retained
		);

		$this->db->set($details)->insert('shop_cart_tmp');
	}

	public function fetch_cart($user_id, $tmp_user_id){
		$query = $this->db->get_where('shop_cart_tmp', array('user_id' => $user_id, 
			'tmp_user_id' => $tmp_user_id,
			'promo_expire' => 'N'
		));

		return $query->result_array();
	}
}
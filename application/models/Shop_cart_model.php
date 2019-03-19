<?php
class Shop_cart_model extends CI_Model
{
	public function check_duplicate($user_id, $tmp_user_id, $item_id, $promo_id){
		$query =$this->db->get_where('shop_cart_tmp', array(
			'user_id' => $user_id,
			'tmp_user_id' => $tmp_user_id,
			'item_id' => $item_id,
			'promo_id' => $promo_id
		));
		return $query->num_rows();
	}

	public function remove_expired_promo($user_id, $tmp_user_id){
		$this->db->delete('shop_cart_tmp', array('user_id' => $user_id,
			'tmp_user_id' => $tmp_user_id,
			'promo_expire' => 'Y'
		));
	}

	public function update_expired_promos(){
		$this->db->select('shop_cart_tmp.*, promo_items.promo_period_from, promo_items.promo_period_to');
		$this->db->from('shop_cart_tmp');
		$this->db->join('promo_items', 'promo_items.promo_id = shop_cart_tmp.promo_id', 'INNER');
		$query = $this->db->where(array('promo_expire' => 'N',
			'promo_period_to <' => date('Y-m-d')
		))->get();
		$results = $query->result_array();
		foreach ($results as $key) {
			$this->db->where(array('id' => $key['id']));
			$this->db->update('shop_cart_tmp', array('promo_expire' => 'Y'));
		}
	}

	public function remove_previous_cart($user_id, $tmp_user_id){
		$this->db->delete('shop_cart_tmp', array('user_id' => $user_id,
			'tmp_user_id <>' => $tmp_user_id,
		));
	}

	public function create_transaction($details){
		$details['X-API-KEY'] = '12345';
		$url = 'http://'.$server_ip.'/nutritech_api/customer/save_customer';
		$qstring = $details;
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);
		
		$row = json_decode($response, TRUE);
	}

	public function shop_cart($request_id){
		$query = $this->db->get_where('shop_cart', array('request_id' => $request_id));
		return $query->result_array();
	}

	public function update_cart($user_id, $tmp_user_id, $item_id, $promo_id, $qty = 0){
		$query =$this->db->get_where('shop_cart_tmp', array(
			'user_id' => $user_id,
			'tmp_user_id' => $tmp_user_id,
			'item_id' => $item_id,
			'promo_id' => $promo_id
		));

		$result = $query->row();
		if ($qty == 0){
			$qty = $result->quantity + 1;
			if ($qty > 10) {
				$qty = 10;
			}
		}

		$array = array('quantity' => $qty);
		$this->db->where('id', $result->id);
		$this->db->update('shop_cart_tmp', $array);
	}

	public function check_request_id($request_id){
		$query = $this->db->get_where('shop_cart', array('request_id' => $request_id));
		if($query->num_rows() == 0){
			return $request_id;
		} else {
			$request_id = substr(uniqid(), 0, 13);
			$this->check_request_id($request_id);
		}
	}

	public function checkout_summary($request_id){
		$this->db->select('shop_cart.*, promo_items.promo_code, items.item_code');
		$this->db->from('shop_cart');
		$this->db->join('promo_items', 'shop_cart.promo_id = promo_items.promo_id', 'LEFT');
		$this->db->join('items', 'shop_cart.item_id = items.item_id', 'LEFT');
		$this->db->where(array('request_id' => $request_id));
		$query = $this->db->get();
		return $query->result();
	}

	public function tmp_to_cart($user_id, $tmp_user_id, $request_id, $customer_id){
		$query = $this->db->get_where('shop_cart_tmp', array('user_id' => $user_id, 'tmp_user_id' => $tmp_user_id));
		$tmp_cart = $query->result_array();
		foreach ($tmp_cart as $key) {
			$cart_array = array(
				'user_id' => $key['user_id'],
				'promo_id' => $key['promo_id'],
				'item_id' => $key['item_id'],
				'quantity' => $key['quantity'],
				'amount' => $key['amount'],
				'date_cart' => $key['date_cart'],
				'promo_expire' => $key['promo_expire'],
				'tmp_user_id' => $key['tmp_user_id'],
				'amount_retained' => $key['amount_retained'],
				'request_id' => $request_id,
				'customer_id' => $customer_id
			);
			$this->db->insert('shop_cart', $cart_array);
		}
	}

	public function create_cart($user_id, $tmp_user_id, $retained, $item_id, $promo_id){
		$this->load->model('distributor_model');
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);

		$rate = $this->distributor_model->fetch_distributor_rate($distributor->distributor_id);
		if($promo_id > 0){
			$this->load->model('promo_item_model');
			$amount = $this->promo_item_model->getamount($promo_id, $retained, $rate);
		} else {
			$this->load->model('item_model');
			$amount = $this->item_model->getamount($item_id, $retained, $rate);
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

	public function delete_cart($user_id, $tmp_user_id, $item_id, $promo_id){
		$this->db->delete('shop_cart_tmp', array(
			'user_id' => $user_id,
			'promo_id' => $promo_id,
			'item_id' => $item_id,
			'tmp_user_id' => $tmp_user_id
		));
	}

	public function total_cart($user_id, $tmp_user_id){
		$this->db->select('sum(amount * quantity) as amount');
		$query = $this->db->get_where('shop_cart_tmp', array('user_id' => $user_id, 
			'tmp_user_id' => $tmp_user_id));
		$result = $query->row();

		return $result->amount;
	}

	public function count_cart($user_id, $tmp_user_id){
		$this->db->select('sum(quantity) as cart_count');
		$query = $this->db->get_where('shop_cart_tmp', array('user_id' => $user_id, 
			'tmp_user_id' => $tmp_user_id));
		$result = $query->row();

		return $result->cart_count;
	}

	public function fetch_cart($user_id, $tmp_user_id){
		$this->db->select('shop_cart_tmp.amount, 
			shop_cart_tmp.promo_id, 
			shop_cart_tmp.item_id,
			shop_cart_tmp.amount,
			shop_cart_tmp.quantity, 
			promo_items.promo_description,
			items.item_description');
		$this->db->from('shop_cart_tmp');
		$this->db->join('promo_items', 'promo_items.promo_id = shop_cart_tmp.promo_id', 'LEFT');
		$this->db->join('items', 'items.item_id = shop_cart_tmp.item_id', 'LEFT');
		$this->db->where(
			array('shop_cart_tmp.user_id' => $user_id, 
				'shop_cart_tmp.tmp_user_id' => $tmp_user_id,
				'shop_cart_tmp.promo_expire' => 'N'
			));

		$query = $this->db->get();
		return $query->result_array();
	}
}
<?php
class Carts extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('shop_cart_model');
	}

	public function index(){
		$data['title'] = "My Cart";

		$user_id = 0; //temporary values without login
		$tmp_user_id = ""; //temporary values without login

		$data['total'] = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);
		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);

		$this->load->view('layouts/header');
		$this->load->view('pages/cart', $data);
		$this->load->view('layouts/footer');
	}

	public function checkout(){
		$this->load->view('layouts/header');
		$this->load->view('pages/checkout');
		$this->load->view('layouts/footer');
	}

	public function create(){
		$user_id = 0;
		$tmp_user_id = "";
		$retained = "N";

		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');

		$record_count = $this->shop_cart_model->check_duplicate($user_id, $tmp_user_id, $item_id, $promo_id);
		if($record_count > 0) {
			$this->shop_cart_model->update_cart($user_id, $tmp_user_id, $item_id, $promo_id);
		} else {
			$this->shop_cart_model->create_cart($user_id, $tmp_user_id, $retained, $item_id, $promo_id);
		}
		redirect('checkout');
	}
}
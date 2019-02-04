<?php
class Carts extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('shop_cart_model');
	}

	public function index(){
		$user_id = 0;
		$tmp_user_id = "";

		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);

		$this->load->view('layouts/header');
		$this->load->view('pages/cart', $data);
		$this->load->view('layouts/footer');
	}

	public function create(){
		$user_id = 0;
		$tmp_user_id = "";
		$retained = "N";

		$this->shop_cart_model->create_cart($user_id, $tmp_user_id, $retained);
		redirect('carts');
	}
}
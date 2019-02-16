<?php
class Carts extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('shop_cart_model');
		$this->load->helper('site_settings');
		$this->load->helper('site_security');
	}

	public function index(){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$data['title'] = "My Cart";

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$data['total'] = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);
		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);

		$this->load->view('layouts/header');
		$this->load->view('carts/index', $data);
		$this->load->view('layouts/footer');
	}

	public function checkout(){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$this->load->view('layouts/header');
		$this->load->view('carts/checkout');
		$this->load->view('layouts/footer');
	}

	public function create(){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		
		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');

		$record_count = $this->shop_cart_model->check_duplicate($user_id, $tmp_user_id, $item_id, $promo_id);
		if($record_count > 0) {
			$this->shop_cart_model->update_cart($user_id, $tmp_user_id, $item_id, $promo_id);
		} else {
			$this->shop_cart_model->create_cart($user_id, $tmp_user_id, $retained, $item_id, $promo_id);
		}

		$buy = $this->input->post('Buy');
		if(isset($buy)){
			redirect('checkout');
		}
	}

	public function destroy(){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');

		$this->shop_cart_model->delete_cart($user_id, $tmp_user_id, $item_id, $promo_id);
		$this->_cart($user_id, $tmp_user_id);
	}

	public function update(){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');
		$qty = $this->input->post('qty');

		$this->shop_cart_model->update_cart($user_id, $tmp_user_id, $item_id, $promo_id, $qty);
		$this->_cart($user_id, $tmp_user_id);
	}

	private function _cart($user_id, $tmp_user_id){
		$cart = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);
		$total = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);

		$cart_items = '';
		if (count($cart) > 0) {
			foreach ($cart as $item) {
				$cart_items .= '
					<div class="row border-bottom">
						<div class="col-2">
							<input type="hidden" id="item_id_'. $item['item_id'] .'_x_'. $item['promo_id'] .'" value="'. $item['item_id'] .'" />
							<input type="hidden" id="promo_id_'. $item['item_id'] .'_x_'. $item['promo_id'] .'" value="'. $item['promo_id'] .'" />
							<button type="button" uniq="yes" class="btn btn-danger btn-sm" id="btn_'. $item['item_id'] .'_x_'. $item['promo_id']. '" style="margin-top: 5px; margin-bottom: 5px;">
								<i class="fas fa-times"></i>
							</button>
						</div>

						<div class="col">';
							if ($item['promo_id'] > 0) {
								$cart_items .= '<small>'. $item['promo_description'] .'</small>';
							} else {
								$cart_items .= '<small>'. $item['item_description'] .'</small>';
							}
				$cart_items .= '
						</div>

						<div class="col-lg-4 col-md-4 col-sm-8 col-xs-8 text-center">
							<small>₱'. number_format($item['amount'], 2) .'</small> x ';

				$options = array();
				foreach (range(1, 10) as $i) {
					$options[$i] = $i;
				}
				$cart_items .= form_dropdown('quantity', $options, $item['quantity'], 'id="qty_'. $item['item_id'] .'_x_'. $item['promo_id'] .'"');
				$cart_items .= '
						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4 text-right">
							₱'. number_format($item['amount'] * $item['quantity'], 2) .'
						</div>
					</div>
				';
			}
		} else {
			$cart_items .= '
				<div class="row border-bottom">
					<div class="col text text-center">
						NO ITEMS FOUND.
					</div>
				</div>
			';
		}

		$cart_total = '';
		$cart_total .= '
			<div class="row border-bottom">
				<div class="col text-right">
					<b>TOTAL</b>:
				</div>
				<div class="col text-right">
					<b>₱'. number_format($total, 2) .'</b>
				</div>
			</div>';

			if (count($cart) > 0) {
				$cart_total .= '
					<br />
					<div class="row text-center">
						<div class="col-12">
							<a href="'. base_url() .'checkout" class="btn btn-success btn-sm">
								<i class="fas fa-check"></i> Proceed to Checkout
							</a>
						</div>
					</div>
					<hr />'
				;
			}

		echo json_encode(array(
			'cart_items' => $cart_items,
			'cart_total' => $cart_total
		));
	}
}
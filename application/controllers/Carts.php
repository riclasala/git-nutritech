<?php
class Carts extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('shop_cart_model');
		$this->load->helper('site_settings');
		$this->load->helper('site_security');
	}

	public function index(){
		$this->_auth_login();

		$data['title'] = "My Cart";

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$data['total'] = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);
		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);

		if($this->session->page_type == "members") {
			$this->load->view('layouts/member_header');
			$data['page_type'] = $this->session->page_type;
		} else {
			$this->load->view('layouts/header');
			$data['page_type'] = '';
		}
		$this->load->view('carts/index', $data);
		$this->load->view('layouts/footer');
	}

	public function checkout(){
		$this->_auth_login();

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$this->load->model('country_model');
		$data['countries'] = $this->country_model->fetch_countries();

		$this->load->model('distributor_model');
		$data['distributor'] = $this->distributor_model->fetch_distributor_by_user_id($user_id);

		$data['total'] = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);
		$data['cart_count'] = $this->shop_cart_model->count_cart($user_id, $tmp_user_id);
		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);
		if (count($data['cart']) == 0){
			if($this->session->page_type == "members") {
				redirect('members');
			} else {
				redirect();
			}
		}

		if($this->session->page_type == "members") {
			$this->load->view('layouts/member_header');
		} else {
			$this->load->view('layouts/header');
		}
		$this->load->view('carts/checkout', $data);
		$this->load->view('layouts/footer');
	}

	public function create(){
		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$retained = "N";
		if($this->session->page_type == "members") {
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
			$oage_type = $this->session->page_type;
			if ($oage_type == 'members'){
				redirect('members/checkout');
			} else {
				redirect('checkout');
			}
		}
	}

	public function submit_cart(){
		$server_ip = _ip_url();
		
		$first_name = strtoupper($this->input->post('first_name'));
		$last_name = strtoupper($this->input->post('last_name'));
		$middle_name = strtoupper($this->input->post('middle_name'));
		$email = $this->input->post('email');
		$permanent_address = $this->input->post('permanent_address');
		$delivery_address = $this->input->post('delivery_address');
		$mobile = $this->input->post('mobile');
		$telephone = $this->input->post('telephone');
		$country = $this->input->post('country');
		$zip = $this->input->post('zip');
		$save_info = $this->input->post('save-info');

		$customer_post = array(
			'firstname' => $first_name,
			'lastname' => $last_name,
			'middlename' => $middle_name,
			'email_user' => $email,
			'address' => $permanent_address,
			'delivery_address' => $delivery_address,
			'mobile_number' => $mobile,
			'tel_no' => $telephone,
			'country' => $country,
			'zipcode' => $zip
		);

		//Check if Exists. From current DB
		$user_id = $this->session->user_id;
		$this->load->model('distributor_model');
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$customer_array = array(
			'firstname' => trim($first_name),
			'lastname' => trim($last_name)
		);
		$this->load->model('customer_model');
		$customer = $this->customer_model->customer_exists($customer_array, $distributor->distributor_id);
		if(isset($customer)){
			if($save_info == true){
				$this->customer_model->update_details($customer_post, $customer->customer_id);
			}
		} else {
			$customer_name = $last_name . ', ' . $first_name . ' ' . $middle_name;
			$customer_name = trim($customer_name);
			$customer_name = str_replace(' ','<>', $customer_name); //find spaces
			$customer_name = str_replace('><', '', $customer_name); //remove double spaces
			$customer_name = str_replace('<>', ' ', $customer_name); //return clean spaces

			$customer = $this->customer_model->customer_from_api($customer_name, $distributor->distributor_id);
			if(isset($customer)){
				$this->customer_model->update_details($customer_post, $customer->customer_id);
			} else {
				$customer_post['customer_name'] = $customer_name;
				$customer_post['customer_status'] = 1;
				$customer_post['distributor_tag'] = 'n';
				$customer_post['online_tag'] = 'y';
				$customer_id = $this->customer_model->save_api_db($server_ip, $customer_post);

				$customer_post['customer_id'] = $customer_id;
				$customer_post['distributor_id'] = $distributor->distributor_id;
				$this->customer_model->save($customer_post);
			}
		}
	}

	public function distributor_customer(){
		$user_id = $this->session->user_id;
		$this->load->model('distributor_model');
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);

		$customer_array = array(
			'firstname' => $distributor->first_name,
			'lastname' => $distributor->last_name,
		);

		$this->load->model('customer_model');
		$customer = $this->customer_model->customer_exists($customer_array, $distributor->distributor_id);
		if(isset($customer)) {
			$details = array(
				'first_name' => $customer->firstname,
				'last_name' => $customer->lastname,
				'middle_name' => $customer->middlename,
				'email' => $customer->email_user,
				'permanent_address' => $customer->address,
				'delivery_address' => $customer->delivery_address,
				'mobile' => $customer->mobile_number,
				'telephone' => $customer->tel_no,
				'country' => $customer->country,
				'zip' => $customer->zipcode
			);
		} else {
			$details = array(
				'first_name' => $distributor->first_name,
				'last_name' => $distributor->last_name,
				'middle_name' => $distributor->middle_name,
				'email' => $distributor->email,
				'permanent_address' => $distributor->distributor_address,
				'delivery_address' => 'Pick-up to NutriTECH Office',
				'mobile' => $distributor->mobile_number,
				'telephone' => $distributor->residence_telephone,
				'country' => 'PH',
				'zip' => ''
			);

			$this->customer_model->save_distributor($distributor);
		}
		echo json_encode($details);
	}

	public function check_customer(){
		$server_ip = _ip_url();
		$first_name = $this->input->post('first_name');
		$last_name = $this->input->post('last_name');
		$middle_name = $this->input->post('middle_name');

		$user_id = $this->session->user_id;
		$this->load->model('distributor_model');
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);

		$customer_array = array(
			'firstname' => trim($first_name),
			'lastname' => trim($last_name)
		);

		$this->load->model('customer_model');
		$customer = $this->customer_model->customer_exists($customer_array, $distributor->distributor_id);
		if(isset($customer)) {
			$this->_display_customer($customer);
		} else {
			$customer_name = $last_name . ', ' . $first_name . ' ' . $middle_name;
			$customer_name = trim($customer_name);
			$customer_name = str_replace(' ','<>', $customer_name); //find spaces
			$customer_name = str_replace('><', '', $customer_name); //remove double spaces
			$customer_name = str_replace('<>', ' ', $customer_name); //return clean spaces

			$customer = $this->customer_model->customer_from_api($customer_name, $distributor->distributor_id);
			if(isset($customer)){
				$this->_display_customer($customer);
			} else {
				$clear_name = str_replace('.', '', $customer_name); //remove periods
				$this->customer_model->load_customer($server_ip, $clear_name, $distributor->distributor_id);

				$customer = $this->customer_model->customer_from_api($customer_name, $distributor->distributor_id);
				if(isset($customer)) {
					$this->_display_customer($customer);
				}
			}
		}
	}

	private function _display_customer($customer){
		echo json_encode(array(
			'first_name' => $customer->firstname,
			'last_name' => $customer->lastname,
			'middle_name' => $customer->middlename,
			'email' => $customer->email_user,
			'permanent_address' => $customer->address,
			'delivery_address' => $customer->delivery_address,
			'mobile' => $customer->mobile_number,
			'telephone' => $customer->tel_no,
			'country' => $customer->country,
			'zip' => $customer->zipcode
		));
	} 

	public function destroy(){
		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$item_id = $this->input->post('item_id');
		$promo_id = $this->input->post('promo_id');

		$this->shop_cart_model->delete_cart($user_id, $tmp_user_id, $item_id, $promo_id);
		$this->_cart($user_id, $tmp_user_id);
	}

	public function update(){
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

	private function _auth_login(){
		$this->load->helper('url');
		$page = $this->uri->segment(1);
		if ($page != 'members'){
			$page = 'customers';
		}
		$is_logged_in = _check_login($page);
		if ($is_logged_in == false){
			_clear_sessions();
			if($page == 'members'){
				redirect('members/login');
			} else {
				redirect('login');
			}
		}
	}
}
<?php
class Items extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('site_settings');
		$this->load->helper('site_security');
		$this->load->model('item_model');

		$this->load->model('currency_rate_model');
		$this->load->model('promo_item_model');
		$this->load->model('promo_item_breakdown_model');
		$this->load->model('distributor_model');
	}

	public function item_list($class_id){
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$this->load->model('item_class_model');

		$data['title'] = $this->item_class_model->fetch_class($class_id);
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$item_array = array();
		$items = $this->item_model->item_per_class($class_id);
		foreach ($items as $row) {
			$item_id = $row['item_id'];
			$promos = $this->promo_item_model->fetch_promos($item_id);

			$membership = "N";
			//list of items for membership
			$members_array = array(3409);
			if (in_array($row['item_id'], $members_array)){
				$membership = "Y";
			}

			$promo_array = array();
			foreach ($promos as $key){
				$promo_id = $key['promo_id'];
				$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

				$promo_array[] = array(
					'promo_id' => $key['promo_id'],
					'promo_description' => $key['promo_description'],
					'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
					'breakdown_array' => $breakdowns
				);
			}

			$item_array[] = array(
				'item_id' => $row['item_id'],
				'item_description' => $row['item_description'],
				'unit_price' => $this->item_model->getamount($row['item_id'], $retained, $rate),
				'item_photo' => $row['item_photo'],
				'promo_array' => $promo_array,
				'membership' => $membership
			);
		}
		$data['items'] = $item_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/item_list', $data);
		$this->load->view('layouts/footer');
	}

	public function booster()
	{
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$data['title'] = "Booster Promo";
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$promo_array = array();
		$promos = $this->promo_item_model->fetch_promos_per_type(2);
		foreach ($promos as $key){
			$promo_id = $key['promo_id'];
			$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

			$promo_array[] = array(
				'item_id' => $key['item_id'],
				'item_photo' => $key['item_photo'],
				'promo_id' => $key['promo_id'],
				'promo_description' => $key['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns
			);
		}

		$data['promos'] = $promo_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/booster', $data);
		$this->load->view('layouts/footer');
	}

	public function specials()
	{
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$data['title'] = "Specials Promo";
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$promo_array = array();
		$promos = $this->promo_item_model->fetch_promos_per_type(3);
		foreach ($promos as $key){
			$promo_id = $key['promo_id'];
			$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

			$promo_array[] = array(
				'item_id' => $key['item_id'],
				'item_photo' => $key['item_photo'],
				'promo_id' => $key['promo_id'],
				'promo_description' => $key['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns
			);
		}

		$data['promos'] = $promo_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/specials', $data);
		$this->load->view('layouts/footer');
	}

	public function first_class()
	{
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$data['title'] = "First Class Collection";
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$item_array = array();

		$this->load->model('item_package_model');
		$items = $this->item_package_model->item_per_package();
		foreach ($items as $row) {
			$item_package_id = $row['id'];
			$promos = $this->promo_item_model->fetch_promos_packages($item_package_id);

			$promo_array = array();
			foreach ($promos as $key){
				$promo_id = $key['promo_id'];
				$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

				$promo_array[] = array(
					'promo_id' => $key['promo_id'],
					'promo_description' => $key['promo_description'],
					'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
					'breakdown_array' => $breakdowns
				);
			}

			$item_array[] = array(
				'item_id' => $row['id'],
				'item_description' => $row['product_name'],
				'unit_price' => $this->item_package_model->getamount($row['id'], $retained, $rate),
				'item_photo' => $row['product_img'],
				'promo_array' => $promo_array
			);
		}
		$data['items'] = $item_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/first_class', $data);
		$this->load->view('layouts/footer');
	}

	public function fastbreak()
	{
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$data['title'] = "Fastbreak Promo";
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$promo_array = array();
		$promos = $this->promo_item_model->fetch_promos_per_type(16);
		foreach ($promos as $key){
			$promo_id = $key['promo_id'];
			$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

			$promo_array[] = array(
				'item_id' => $key['item_id'],
				'item_photo' => $key['item_photo'],
				'promo_id' => $key['promo_id'],
				'promo_description' => $key['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns
			);
		}

		$data['promos'] = $promo_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/fastbreak', $data);
		$this->load->view('layouts/footer');
	}

	public function other_promo()
	{
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}
		$data['title'] = "Other Promos";
		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$user_id = $this->session->user_id;
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$promo_array = array();
		$promos = $this->promo_item_model->fetch_promos_other();
		foreach ($promos as $key){
			$promo_id = $key['promo_id'];
			$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

			$promo_array[] = array(
				'item_id' => $key['item_id'],
				'item_photo' => $key['item_photo'],
				'promo_id' => $key['promo_id'],
				'promo_description' => $key['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns
			);
		}

		$data['promos'] = $promo_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/other_promo', $data);
		$this->load->view('layouts/footer');
	}

	public function home()
	{	
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();

			$data['error'] = '';
			return $this->load->view('pages/login', $data);
		}

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		//remove previous cart and expired promos
		$this->load->model('shop_cart_model');
		$this->shop_cart_model->remove_previous_cart($user_id, $tmp_user_id);
		$this->shop_cart_model->update_expired_promos();
		$this->shop_cart_model->remove_expired_promo($user_id, $tmp_user_id);

		$retained = "N";
		if($this->session->page_type == "member") {
			$retained = "Y";
		}
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$distributor_id = $distributor->distributor_id;
		$rate = $this->distributor_model->fetch_distributor_rate($distributor_id);

		$promo_array = array();
		$promos = $this->promo_item_model->fetch_promos_other();
		foreach ($promos as $key){
			$promo_id = $key['promo_id'];
			$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

			$promo_array[] = array(
				'item_id' => $key['item_id'],
				'item_photo' => $key['item_photo'],
				'promo_id' => $key['promo_id'],
				'promo_description' => $key['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns
			);
		}

		$data['promos'] = $promo_array;

		$promo_array1 = array();
		$promos1 = $this->promo_item_model->fetch_promos_per_type(3);
		foreach ($promos1 as $key1){
			$promo_id1 = $key1['promo_id'];
			$breakdowns1 = $this->promo_item_breakdown_model->fetch_bonus($promo_id1, 'CU');

			$promo_array1[] = array(
				'item_id' => $key1['item_id'],
				'item_photo' => $key1['item_photo'],
				'promo_id' => $key1['promo_id'],
				'promo_description' => $key1['promo_description'],
				'tsp' => $this->promo_item_model->getamount($key1['promo_id'], $retained, $rate),
				'breakdown_array' => $breakdowns1
			);
		}

		$data['promos1'] = $promo_array1;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/home', $data);
		$this->load->view('layouts/footer');
	}

	public function load_items()
	{
		$server_ip = _ip_url();
		$this->item_model->load_items($server_ip);

		$data['alert'] = "Item Master List Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}

	public function load_usdrate(){
		//load usd to php rates
		$usd_rate = _get_dollar_exrate();
		$this->load->model('currency_rate_model');
		$this->currency_rate_model->edit($usd_rate);

		$data['alert'] = "USD Exchange Rate Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}

	public function load_packages(){
		$server_ip = _ip_url();
		$this->load->model('item_package_model');
		$this->item_package_model->load_packages($server_ip);

		$data['alert'] = "Item Packages Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}

	public function load_promo(){
		$server_ip = _ip_url();
		$this->load->model('promo_item_model');
		$this->promo_item_model->load_promo($server_ip);

		$data['alert'] = "Promo Items Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}

	public function load_breakdown(){
		$server_ip = _ip_url();
		$this->load->model('promo_item_breakdown_model');
		$this->promo_item_breakdown_model->load_breakdown($server_ip);

		$data['alert'] = "Promo Item Breakdowns Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}
}
<?php
class Items extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('site_settings');
		$this->load->model('item_model');

		$this->load->model('currency_rate_model');
		$this->load->model('promo_item_model');
		$this->load->model('promo_item_breakdown_model');
	}

	public function item_list($class_id){
		$this->load->model('item_class_model');

		$data['title'] = $this->item_class_model->fetch_class($class_id);
		$retained = "N";

		$item_array = array();
		$items = $this->item_model->item_per_class($class_id);
		foreach ($items as $row) {
			$item_id = $row['item_id'];
			$promos = $this->promo_item_model->fetch_promos($item_id);

			$promo_array = array();
			foreach ($promos as $key){
				$promo_id = $key['promo_id'];
				$breakdowns = $this->promo_item_breakdown_model->fetch_bonus($promo_id, 'CU');

				$promo_array[] = array(
					'promo_id' => $key['promo_id'],
					'promo_description' => $key['promo_description'],
					'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
					'breakdown_array' => $breakdowns
				);
			}

			$item_array[] = array(
				'item_id' => $row['item_id'],
				'item_description' => $row['item_description'],
				'unit_price' => $this->item_model->getamount($row['item_id'], $retained),
				'item_photo' => $row['item_photo'],
				'promo_array' => $promo_array
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
		$data['title'] = "Booster Promo";
		$retained = "N";

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
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
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
		$data['title'] = "Specials Promo";
		$retained = "N";

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
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
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
		$data['title'] = "First Class Collection";
		$retained = "N";

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
					'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
					'breakdown_array' => $breakdowns
				);
			}

			$item_array[] = array(
				'item_id' => $row['id'],
				'item_description' => $row['product_name'],
				'unit_price' => $this->item_package_model->getamount($row['id'], $retained),
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
		$data['title'] = "Fastbreak Promo";
		$retained = "N";

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
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
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
		$data['title'] = "Other Promos";
		$retained = "N";

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
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
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
		$retained = "N";

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
				'tsp' => $this->promo_item_model->getamount($key['promo_id'], $retained),
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
				'tsp' => $this->promo_item_model->getamount($key1['promo_id'], $retained),
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
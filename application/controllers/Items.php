<?php
class Items extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('site_settings');
		$this->load->model('item_model');
	}

	public function item_list($class_id){
		$this->load->model('item_class_model');		
		$this->load->model('currency_rate_model');
		$this->load->model('promo_item_model');
		$this->load->model('promo_item_breakdown_model');

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

		$this->load->view('layouts/header');
		$this->load->view('items/booster', $data);
		$this->load->view('layouts/footer');
	}

	public function specials()
	{
		$data['title'] = "Specials Promo";

		$this->load->view('layouts/header');
		$this->load->view('items/specials', $data);
		$this->load->view('layouts/footer');
	}

	public function first_class()
	{
		$data['title'] = "First Class Collection";

		$this->load->view('layouts/header');
		$this->load->view('items/first_class', $data);
		$this->load->view('layouts/footer');
	}

	public function fastbreak()
	{
		$data['title'] = "Fastbreak Promo";

		$this->load->view('layouts/header');
		$this->load->view('items/fastbreak', $data);
		$this->load->view('layouts/footer');
	}

	public function other_promo()
	{
		$data['title'] = "Other Promos";

		$this->load->view('layouts/header');
		$this->load->view('items/other_promo', $data);
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
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

		$data['title'] = $this->item_class_model->fetch_class($class_id);

		$item_array = array();
		$items = $this->item_model->item_per_class($class_id);
		foreach ($items as $row) {
			$item_id = $row['item_id'];
			$promos = $this->promo_item_model->fetch_promos($item_id);

			$item_array[] = array(
				'item_id' => $row['item_id'],
				'item_description' => $row['item_description'],
				'unit_price' => $row['unit_price'],
				'item_photo' => $row['item_photo'],
				'promo_array' => $promos
			);
		}
		$data['items'] = $item_array;

		$usd_rate = $this->currency_rate_model->fetch_usdrate();
		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/item_list', $data);
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
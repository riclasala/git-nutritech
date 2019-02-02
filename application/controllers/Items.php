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
		//load item subclass
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_items';
		$qstring = array('X-API-KEY' => '12345');
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);
		
		$this->item_model->truncate_table();
		
		$items = json_decode($response, TRUE);
		foreach($items as $row){
			$item_arr = array(
				'item_id' => $row['item_id'],
				'item_class_id' => $row['item_class_id'],
				'item_description' => $row['item_description'],
				'unit_price' =>  $row['unit_price'],
				'nsp' =>  $row['nsp'],
				'pse' =>  $row['pse'],
				'item_photo' =>  $row['item_photo'],
				'sequence' =>  $row['sequence']
			);
			$this->item_model->save($item_arr);
		}	

		echo 'Item Master List Loaded ...<br />';

		$this->load_breakdown($server_ip);

		echo '<br />DATABASE Successfully Loaded!';
	}

	public function load_usdrate(){
		//load usd to php rates
		$usd_rate = _get_dollar_exrate();
		$this->load->model('currency_rate_model');
		$this->currency_rate_model->edit($usd_rate);

		echo 'USD Exchange Rate Loaded ...<br />';
	}

	public function load_packages($server_ip){
		//load latest packages details
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_packages';
		$qstring = array('X-API-KEY' => '12345');
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);
		
		$this->load->model('item_package_model');
		$this->item_package_model->truncate_table();
		
		$packs = json_decode($response, TRUE);
		foreach($packs as $row){
			$pack_arr = array(
				'id' => $row['id'],
				'product_name' => $row['product_name'],
				'product_img' => $row['product_img'],
				'product_code' =>  $row['product_code'],
				'sequence' =>  $row['sequence'],
				'unit_price' =>  $row['unit_price']
			);
			$this->item_package_model->save($pack_arr);
		}

		echo 'Item Packages Loaded ...<br />';
	}

	public function load_promo($server_ip){
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_promos';
		$qstring = array('X-API-KEY' => '12345');
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);

		$this->load->model('promo_item_model');
		$this->promo_item_model->truncate_table();

		$promos = json_decode($response, TRUE);
		foreach($promos as $row){
			$promo_arr = array(
				'promo_id' => $row['promo_id'],
				'promo_type_id' => $row['promo_type_id'],
				'promo_code' => $row['promo_code'],
				'promo_description' => $row['promo_description'],
				'promo_period_from' => $row['promo_period_from'],
				'promo_period_to' => $row['promo_period_to'],
				'pse' =>  $row['pse'],
				'tsp' =>  $row['tsp'],
				'nsp' =>  $row['nsp'],
				'item_package_id' =>  $row['item_package_id']
			);
			$this->promo_item_model->save($promo_arr);
		}
		echo 'Promo Items Loaded ...<br />';
	}

	public function load_breakdown($server_ip){
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_breakdowns';
		$qstring = array('X-API-KEY' => '12345');
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);

		$this->load->model('promo_item_breakdown_model');
		$this->promo_item_breakdown_model->truncate_table();

		$promos = json_decode($response, TRUE);
		foreach($promos as $row){
			$promo_arr = array(
				'con_id' => $row['con_id'],
				'item_id' => $row['item_id'],
				'distribution_type_id' => $row['distribution_type_id'],
				'transaction_qty' => $row['transaction_qty'],
				'unit_price' => $row['unit_price'],
				'nsp' => $row['nsp'],
				'recipient' =>  $row['recipient'],
				'item_bundle_id' =>  $row['item_bundle_id'],
				'is_price_per_unit' =>  'N'
			);
			$this->promo_item_breakdown_model->save($promo_arr);
		}
		echo 'Promo Item Breakdowns Loaded ...<br />';
	}
}
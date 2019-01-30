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

		$data['title'] = $this->item_class_model->fetch_class($class_id);
		$data['items'] = $this->item_model->item_per_class($class_id);
		$usd_rate = $this->currency_rate_model->fetch_usdrate();

		$data['usd_rate'] = round($usd_rate, 2);

		$this->load->view('layouts/header');
		$this->load->view('items/item_list', $data);
		$this->load->view('layouts/footer');
	}

	public function load_items()
	{
		$server_ip = _ip_url();
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_items';
		
		//------------------------------------------------
		//load item subclass
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
				'item_photo' =>  $row['item_photo'],
				'sequence' =>  $row['sequence']
			);
			$this->item_model->save($item_arr);
		}	

		//--------------------------------------------------
		//load usd to php rates
		$usd_rate = _get_dollar_exrate();
		$this->load->model('currency_rate_model');
		$this->currency_rate_model->edit($usd_rate);

		//--------------------------------------------------
		//load latest packages details
		$url = 'http://'.$server_ip.'/nutritech_api/product/reload_packages';
		//load item subclass
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

		echo 'Database Successfully Loaded.';
	}
}
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
			$page_type = $this->session->page_type;
			if ($page_type == 'members'){
				redirect('members/checkout');
			} else {
				redirect('checkout');
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

	public function fetch_cart(){
		$request_id = $this->input->post('request_id');
		$details = $this->shop_cart_model->shop_cart($request_id);

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
			$customer_name = str_replace(' ', '<>', $customer_name); //find spaces
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

		$user_id = $this->session->user_id;
		$tmp_user_id = $this->session->tmp_user_id;

		$this->load->model('distributor_model');
		$distributor = $this->distributor_model->fetch_distributor_by_user_id($user_id);
		$customer_array = array(
			'firstname' => trim($first_name),
			'lastname' => trim($last_name)
		);
		$this->load->model('customer_model');
		$customer = $this->customer_model->customer_exists($customer_array, $distributor->distributor_id);
		if(isset($customer)){
			$customer_id = $customer->customer_id;
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
				$customer_id = $customer->customer_id;
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

		$data['customer'] = $this->customer_model->fetch_customer($customer_id);
		$this->load->model('distributor_model');
		$data['distributor'] = $this->distributor_model->fetch_distributor_by_user_id($user_id);

		$data['total'] = $this->shop_cart_model->total_cart($user_id, $tmp_user_id);
		$data['cart_count'] = $this->shop_cart_model->count_cart($user_id, $tmp_user_id);
		$data['cart'] = $this->shop_cart_model->fetch_cart($user_id, $tmp_user_id);
		
		$strxml = $this->_prepare_xml($customer_id, $customer_post);
		$data['b64string'] = base64_encode($strxml);

		$data['url'] = 'https://testpti.payserv.net/webpayment/Nutritech/Default.aspx'; //test environment
		//$data['url'] = 'https://ptiapps.paynamics.net/webpayment/Nutritech/Default.aspx'; //new live

		if($this->session->page_type == "members") {
			$this->load->view('layouts/member_header');
		} else {
			$this->load->view('layouts/header');
		}
		$this->load->view('carts/confirm_checkout', $data);
		$this->load->view('layouts/footer');
	}

	public function callback() {
		try {
			$body = $_POST["paymentresponse"];
			$body = str_replace(" ", "+", $body);

			$decodebody = base64_decode($body);

			echo "DECODED : " . $decodebody. "</br></br> ";
			$ServiceResponseWPF = new SimpleXMLElement($decodebody);
			$application = $ServiceResponseWPF->application;
			$responseStatus = $ServiceResponseWPF->responseStatus;

			echo "Response: " . $ServiceResponseWPF->application->signature;
			$cert = "EF8F0ACB9EBC9BA83507861419F5D54A"; //merchantkey
			// NUTRITECH MERCHANT KEY = 85771CAD063E73835F102CDB3659BC3E 
			// test EF8F0ACB9EBC9BA83507861419F5D54A

			$forSign = $application->merchantid . $application->request_id . $application->response_id . $responseStatus->response_code . $responseStatus->response_message . $responseStatus->response_advise . $application->timestamp . $application->rebill_id . $cert;

			$_sign = hash("sha512", $forSign);
			echo "</br>computed:" . $_sign;

			if($_sign == $ServiceResponseWPF->application->signature){
				echo "</br>VALID SIGNATURE";
			}else {
				echo "</br>INVALID SIGNATURE";
			}

			$myFilex = $application->request_id."return.xml";

			$fhx = fopen('assets/xml/' . $myFilex, 'w') or die("can't open file");

			$stringData = $decodebody;
			fwrite($fhx, $stringData);
			fclose($fhx);

			$xml=simplexml_load_file($application->request_id."return.xml") or die("Error: Cannot create object");
			$merchantid            = $xml->application[0]->merchantid;
			$request_id            = $xml->application[0]->request_id;
			$response_id           = $xml->application[0]->response_id;
			$timestamp             = $xml->application[0]->timestamp;
			$signature             = $xml->application[0]->signature;
			$response_code         = $xml->responseStatus[0]->response_code;
			$response_message      = $xml->responseStatus[0]->response_message;
			$response_advise       = $xml->responseStatus[0]->response_advise;
			$processor_response_id = $xml->responseStatus[0]->processor_response_id;
			$ptype                 = $xml->application[0]->ptype;
			$rbill                 = $xml->application[0]->rebill_id;
			$cc_type               = $xml->MetaData[0]->SubItem[0]->value;
			$cc_holder_name        = $xml->MetaData[0]->SubItem[1]->value;
			
			$response_message = str_replace("'", "", $response_message);
			$response_advise = str_replace("'", "", $response_advise);
			
			if (strpos($rbill, ':3:') !== false) {
				$rbill = '3 Months 0% Interest';
			}else if (strpos($rbill, ':6:') !== false) {
				$rbill = '6 Months 0% Interest';
			}else if (strpos($rbill, ':12:') !== false) {
				$rbill = '12 Months Regular Rate';
			}else if (($ptype == '' && $rbill != '|') || $ptype == 'CC') {
				$ptype = 'CC';
				$rbill = 'Straight Payment';
			}else if ($ptype == 'BDOINSTALL'){
				$rbill = 'Installment';
			}else{
				$rbill = '';
			}

			$serv_xml=simplexml_load_file($application->request_id."serverdata.xml") or die("Error: Cannot create object");

			$client_ip = $serv_xml->serverapp[0]->ip_address;
			$email     = $serv_xml->serverapp[0]->email;
			$user_id   = $serv_xml->serverapp[0]->user_id;
			$user_tmp  = $serv_xml->serverapp[0]->user_tmp;
			$customer_id = $serv_xml->serverapp[0]->customer_id;

			$stamp = $timestamp;
			$pos = strpos($stamp, 'T');
			$time = strtotime($stamp);
			$newformat = date('Y-m-d', $time);
			$trans_date = $newformat . ' ' . substr($stamp, $pos + 1, 8);

			$details = array(
				'user_id' => $user_id,
				'request_id' => $application->request_id,
				'time_stamp' => $timestamp,
				'signature' => $signature,
				'ptype' => $ptype,
				'response_code' => $response_code,
				'response_message' => $response_message,
				'response_advise' => $response_advise,
				'processor_response_id' => $processor_response_id,
				'client_ip' => $client_ip,
				'transaction_date' => $trans_date,
				'card_holder' => $rbill, //<---- 3, 6, 12, straight
				'response_id' => $response_id,
				'con_user_email' => $email,
				'customer_id' => $customer_id,
				'tmp_user' => $user_tmp,
				'cc_type' => $cc_type,
				'cc_holder_name' => $cc_holder_name 
			);

			$this->shop_cart_model->create_transaction($details);
		}
		catch(Exception $ex){
			echo $ex->getMessage();
		}
	}

	private function _prepare_xml($customer_id, $customer_post){
		//get request id
		$request = substr(uniqid(), 0, 13);
		$_request_id = $this->shop_cart_model->check_request_id($request);

		//save to actual cart
		$tmp_user_id = $this->session->tmp_user_id;
		$user_id = $this->session->user_id;
		$this->shop_cart_model->tmp_to_cart($user_id, $tmp_user_id, $_request_id, $customer_id);

		//get actual cart
		$strxmlx  = '';
		$total = 0.00;
		$summarycheckout = $this->shop_cart_model->checkout_summary($_request_id);
		foreach ($summarycheckout as $row) {
			$strxmlx .= '<Items>';
			$strxmlx .= '<itemname>' . ($row->promo_id == 0) ? $row->promo_code : $row->item_code . '</itemname> ';
			$strxmlx .= '<quantity>' . $row->quantity .'</quantity> <amount>' . $row->amount .'</amount>';
			$strxmlx .= '</Items>';
			$total += ($row->quantity * $row->amount);
		}

		$_mid = "00000013041670B45F4E"; //<-- your merchant id
		// NUTRITECH MERCHANT ID = 000000090616E1A0B248
		// test 00000013041670B45F4E

		$page = '';
		$page_type = $this->session->page_type;
		if($page_type == 'members'){
			$page = $page_type . '/';
		}
		$_ipaddress = $this->session->ipaddress;
		$_noturl = base_url() . 'callback';
		$_resurl = base_url() . $page .'result'; //url of merchant landing page
		$_cancelurl = base_url() . $page; //url of merchant landing page

		$permanent_address = str_replace("'", "", $customer_post['address']);
		$delivery_address = str_replace("'", "", $customer_post['delivery_address']);

		$_fname = $customer_post['firstname'];
		$_mname = $customer_post['middlename'];
		$_lname = $customer_post['lastname'];
		$_addr1 = $permanent_address;
		$_addr2 = $delivery_address;
		$_city = "";
		$_state = "";
		$_country = $customer_post['country'];
		$_zip = $customer_post['zipcode'];
		$_sec3d = "try3d";
		$_email = $customer_post['email_user'];
		$_phone = $customer_post['tel_no'];
		$_mobile = $customer_post['mobile_number'];
		$_clientip = $_ipaddress;
		$_amount = sprintf('%0.2f', $total);
		$_currency = "PHP";

		$forSign = $_mid . $_request_id . $_ipaddress . $_noturl . $_resurl .  $_fname . $_lname . $_mname . $_addr1 . $_addr2 . $_city . $_state . $_country . $_zip . $_email . $_phone . $_clientip . $_amount . $_currency . $_sec3d;

		$info_data = fopen('assets/xml/' .$_request_id. "infodata.xml", "w") or die("can't open file");
		fwrite($info_data, $forSign);
		fclose($info_data);
		
		$cert = "EF8F0ACB9EBC9BA83507861419F5D54A"; //<-- your merchant key 
		// NUTRITECH MERCHANT KEY = 85771CAD063E73835F102CDB3659BC3E 
		// test EF8F0ACB9EBC9BA83507861419F5D54A

		$_sign = hash("sha512", $forSign.$cert);
		
		$strxml = "";
		$strxml .= "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
		$strxml .= "<Request>";
		$strxml .= "<orders>";
		$strxml .= "<items>";
		$strxml .= $strxmlx;
		$strxml .= "</items>";
		$strxml .= "</orders>";
		$strxml .= "<mid>" . $_mid . "</mid>";
		$strxml .= "<request_id>" . $_request_id . "</request_id>";
		$strxml .= "<ip_address>" . $_ipaddress . "</ip_address>";
		$strxml .= "<notification_url>" . $_noturl . "</notification_url>";
		$strxml .= "<response_url>" . $_resurl . "</response_url>";
		$strxml .= "<cancel_url>" . $_cancelurl . "</cancel_url>";
		$strxml .= "<mtac_url>http://wnutritech.com/termsandcondition.html</mtac_url>";
		$strxml .= "<descriptor_note>'My Descriptor .18008008008'</descriptor_note>";
		$strxml .= "<fname>" . $_fname . "</fname>";
		$strxml .= "<lname>" . $_lname . "</lname>";
		$strxml .= "<mname>" . $_mname . "</mname>";
		$strxml .= "<address1>" . $_addr1 . "</address1>";
		$strxml .= "<address2>" . $_addr2 . "</address2>";
		$strxml .= "<city>" . $_city . "</city>";
		$strxml .= "<state>" . $_state . "</state>";
		$strxml .= "<country>" . $_country . "</country>";
		$strxml .= "<zip>" . $_zip . "</zip>";
		$strxml .= "<secure3d>" . $_sec3d . "</secure3d>";
		$strxml .= "<trxtype>sale</trxtype>";
		$strxml .= "<email>" . $_email . "</email>";
		$strxml .= "<phone>" . $_phone . "</phone>";
		$strxml .= "<mobile>" . $_mobile . "</mobile>";
		$strxml .= "<client_ip>" . $_clientip . "</client_ip>";
		$strxml .= "<amount>" . $_amount . "</amount>";
		$strxml .= "<currency>" . $_currency . "</currency>";
		$strxml .= "<mlogo_url>http://wnutritech.com/images/logo_final.png</mlogo_url>";
		$strxml .= "<pmethod></pmethod>";//CC, GC, PP, DP
		$strxml .= "<signature>" . $_sign . "</signature>";
		$strxml .= "</Request>";

		$serverxml = '<?xml version="1.0" encoding="utf-8"?><ServiceResponseWPF xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">';
		$serverxml .= '<serverapp>';
		$serverxml .= "<request_id>" . $_request_id . "</request_id>";
		$serverxml .= '<ip_address>' . $_ipaddress . '</ip_address>';
		$serverxml .= "<email>" . $_email . "</email>";
		$serverxml .= "<user_id>" . $user_id . "</user_id>";
		$serverxml .= "<user_tmp>" . $tmp_user_id . "</user_tmp>";
		$serverxml .= "<forsign>" . $forSign.$cert . "</forsign>";
		$serverxml .= "<location>" . $_country.$_zip . "</location>";
		$serverxml .= "<customer_id>" . $customer_id . "</customer_id>";
		$serverxml .= '</serverapp>';
		$serverxml .= '</ServiceResponseWPF>';

		$server_data = fopen('assets/xml/' .$_request_id. "serverdata.xml", "w") or die("can't open file");
		fwrite($server_data, $serverxml);
		fclose($server_data);

		return $strxml;
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
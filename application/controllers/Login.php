<?php
class Login extends CI_Controller{
	public function __construct(){
		parent::__construct();

		$this->load->helper('site_settings');
		$this->load->helper('site_security');
		$this->load->model('distributor_model');
		$this->load->model('portal_account_model');
	}

	public function index(){
		$this->load->view('pages/login');
	}

	public function signin(){
		$user = $this->input->post('username');

		//set the server ip first before other sessions --IMPORTANT-- particularly session (ip_address)
		//this is to determine whether you are accessing on the same network or outside it.
		//it is need for all the api links
		$server_ip = _ip_url();

		$this->_check_portal_accounts($user);
		$this->_check_distributors($user, $server_ip);

		//load both distributor and portal accounts
		$this->distributor_model->load_distributor_by_code($server_ip, $user);

		//do both checking after the loading
		$this->_check_portal_accounts($user);
		$this->_check_distributors($user, $server_ip);

		echo 'NTAC CODE DOES NOT EXIST';
	}

	public function check_user(){
		$user = $this->input->post('username');

		//set the server ip first before other sessions --IMPORTANT-- particularly session (ip_address)
		//this is to determine whether you are accessing on the same network or outside it.
		//it is need for all the api links
		$server_ip = _ip_url();

		$message = "Username does not exist!";
		$portal = $this->portal_account_model->check_user($user);
		if (isset($portal)){
			$distributor_id = $portal->distributor_id;
			$distributor = $this->distributor_model->fetch_distributor($distributor_id);
			$message = "Happy Day! ". $distributor->first_name ." ". $distributor->last_name;
		} else {
			$distributor = $this->distributor_model->check_user($user);
			if(isset($distributor)) {
				$distributor_id = $distributor->distributor_id;
				$portal = $this->portal_account_model->fetch_account($distributor_id);
				if(!isset($portal)){
					//create portal account
					$this->portal_account_model->load_portal($server_ip, $distributor_id);
				}
				$message = "Happy Day! ". $distributor->first_name ." ". $distributor->last_name;
			} else {
				$this->distributor_model->load_distributor_by_code($server_ip, $user);
				//check again after loading of data
				if (isset($portal)){
					$distributor_id = $portal->distributor_id;
					$distributor = $this->distributor_model->fetch_distributor($distributor_id);
					$message = "Happy Day! ". $distributor->first_name ." ". $distributor->last_name;
				} else {
					$distributor = $this->distributor_model->check_user($user);
					if(isset($distributor)) {
						$message = "Happy Day! ". $distributor->first_name ." ". $distributor->last_name;
					}
				}
			}
		}
		echo $message;
	}

	public function load_distributors(){
		$server_ip = _ip_url();
		$this->distributor_model->load_active_distributors($server_ip);

		$data['alert'] = "Distributor Loaded ...";

		$this->load->view('layouts/header');
		$this->load->view('pages/loader', $data);
		$this->load->view('layouts/footer');
	}

	private function _check_portal_accounts($user){
		$portal = $this->portal_account_model->check_user($user);
		if(isset($portal)) {
			$array = array('tmp_user_id' => session_id() . _generate_random_string(10) . $portal->user_id,
				'ip_address' => $_SERVER['REMOTE_ADDR'],
				'user_id' => $portal->user_id
			);
			$this->session->set_userdata($array);
			redirect('home');
		}
	}

	private function _check_distributors($user, $server_ip){
		$distributor = $this->distributor_model->check_user($user);
		if(isset($distributor)) {
			$distributor_id = $distributor->distributor_id;
			$portal = $this->portal_account_model->fetch_account($distributor_id);
			if(!isset($portal)){
				//create portal account
				$this->portal_account_model->load_portal($server_ip, $distributor_id);
				$portal = $this->portal_account_model->check_user($user);
			}
			
			$array = array('tmp_user_id' => session_id() . _generate_random_string(10) . $portal->user_id,
				'ip_address' => $_SERVER['REMOTE_ADDR'],
				'user_id' => $portal->user_id
			);
			$this->session->set_userdata($array);
			redirect('home');
		}
	}
}
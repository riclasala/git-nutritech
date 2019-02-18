<?php
class Members extends CI_Controller{
	public function __construct(){
		parent::__construct();

		$this->load->helper('site_settings');
		$this->load->helper('site_security');
		$this->load->model('distributor_model');
		$this->load->model('portal_account_model');
	}

	public function index(){
		$data['error'] = $this->session->flashdata('error');

		$this->load->view('members/login', $data);
	}

	public function signin(){
		$user = $this->input->post('username');
		$password = $this->input->post('password');

		$server_ip = _ip_url();

		$this->_check_portal_accounts($user, $password);
		$this->_check_distributors($user, $password, $server_ip);

		//load both distributor and portal accounts
		$this->distributor_model->load_distributor_by_code($server_ip, $user);

		//do both checking after the loading
		$this->_check_portal_accounts($user, $password);
		$this->_check_distributors($user, $password, $server_ip);
	}

	public function logout(){
		session_destroy();
		redirect('members/login');
	}

	private function _check_portal_accounts($user, $password){
		$portal = $this->portal_account_model->check_user($user);
		if(isset($portal)) {
			$this->_check_password($password, $portal);
		}
	}

	private function _check_distributors($user, $password, $server_ip){
		$distributor = $this->distributor_model->check_user($user);
		if(isset($distributor)) {
			$distributor_id = $distributor->distributor_id;
			$portal = $this->portal_account_model->fetch_account($distributor_id);
			if(!isset($portal)) {
				//create portal account
				$this->portal_account_model->load_portal($server_ip, $distributor_id);
				$portal = $this->portal_account_model->check_user($user);
			}
			$this->_check_password($password, $portal);
		}
	}

	private function _check_password($password, $portal){
		if(md5($password) == $portal->password) {
			$array = array('tmp_user_id' => session_id() . _generate_random_string(10) . $portal->user_id,
				'ip_address' => $_SERVER['REMOTE_ADDR'],
				'user_id' => $portal->user_id,
				'page_type' => 'member'
			);
			$this->session->set_userdata($array);
			redirect('members');
		} else {
			$message = '<br /><div class="alert alert-danger" role="alert"><i class="fas fa-times"></i> Incorrect Username / Password.</div>';
			$this->session->set_flashdata('error', $message);
			redirect('members/login');
		}
	}
}
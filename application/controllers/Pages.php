<?php
class Pages extends CI_Controller{
	public function __construct(){
		parent::__construct();

		$this->load->helper('site_settings');
		$this->load->helper('site_security');
	}
	
	public function view($page = ''){
		if(!file_exists(APPPATH. 'views/pages/'. $page . '.php')){
			show_404();
		}
		
		$is_logged_in = _check_login();
		if ($is_logged_in == false){
			_clear_sessions();
			redirect('login');
		}

		$data['title'] = ucfirst($page);
		
		if($this->session->page_type == "member") {
			$this->load->view('layouts/member_header');
		} else {
			$this->load->view('layouts/header');
		}
		$this->load->view('pages/' .$page, $data);
		$this->load->view('layouts/footer');
	}
}
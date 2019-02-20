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

		$data['title'] = ucfirst($page);
		
		if($this->session->page_type == "members") {
			$this->load->view('layouts/member_header');
		} else {
			$this->load->view('layouts/header');
		}
		$this->load->view('pages/' .$page, $data);
		$this->load->view('layouts/footer');
	}
}
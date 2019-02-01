<?php
class Members extends CI_Controller{
	public function index(){
		$this->load->view('members/login');
	}
}
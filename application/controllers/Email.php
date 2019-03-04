<?php
class Email extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('online_idcf_model');
	}
	function index($distributor_id){
		$config = Array(
			'protocol'	=> 'smtp',
			'smtp_host'	=> 'ssl://mail.wnutritech.com',
			'smtp_port'	=> 465,
			'smtp_user'	=> 'lasalar@wnutritech.com',
			'smtp_pass'	=> '123456',
			'mailtype'	=> 'html',
			'charset'   => 'iso-8859-1'
		);
		
		$id = 1;
			//if ($id != null or $id !=''){
		$data['member'] =  $this->online_idcf_model->fetch_new_distributor_summary($distributor_id);
		$mesg= $this->load->view('idcf/idcf_success',$data,true);
				
		$this->load->library('email',$config);
		$this->email->set_newline("\r\n");
		$this->email->from('lasalar@wnutritech.com','Customer Care');
		$this->email->to('lasalar@wnutritech.com');
		$this->email->subject('NutriTECH Shops Online Membership');
		//$this->email->message($this->body_content($data));
		$this->email->message($mesg);
		if($this->email->send()){
			echo 'successful';
		}else{
			show_error($this->email->print_debugger());
		}
	}

	function body_content($data){
		$body = '';
		foreach($data['member'] as $row){
			$body = "<div class = 'border border-dark' width='500px'><p> Happy Day <b>".$row['full_name']."</b>!<br/>Welcome to NutriTECH.</p><img src = '". base_url() . "assets/images/idcf_member/header.jpg' width='500px' /></div>";
		}
			
		return $body;
	}
}
<?php
	class Idcf extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->model('online_idcf_model');
		}

		public function view(){
			$data["member"] = $this->online_idcf_model->fetch_sponsor_info(1);
			$this->load->view('layouts/header');
			$this->load->view('idcf/membership',$data);
			$this->load->view('layouts/footer');
		}

		public function idcf_membership(){

			$this->load->view('idcf/idcf_success');
		}

		public function save_idcf()
		{
			$data = array('success' => false, 'messages' => array());
			
			
			$this->form_validation->set_rules("last_name", "Last Name", "trim|required");
			$this->form_validation->set_rules("first_name", "First Name", "trim|required");
			$this->form_validation->set_rules("home_address", "Home/Mailing Address", "trim|required");
			$this->form_validation->set_rules("bday", "Birthday", "trim|required");
			$this->form_validation->set_rules("mobile_no", "Mobile No.", "trim|required");
			$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
			if ($this->form_validation->run()) {
				//$data['success'] = true;
				$this->online_idcf_model->insert_idcf($this->idcf_details($data));
				redirect('idcf');
			}
			else {
				/*foreach ($_POST as $key => $value) {
					$data['messages'][$key] = form_error($key);
				}*/
				//$this->view();
				redirect('membership');
			}
			//echo json_encode($data);
			
		}

		private function idcf_details($data){
			$last_name 		= 	strtoupper(trim($this->input->post("last_name")));
			$first_name 	= 	strtoupper(trim($this->input->post("first_name")));
			$middle_name 	= 	strtoupper(trim($this->input->post("middle_name")));
			$home_address 	= 	strtoupper(trim($this->input->post("home_address")));
			$bday 			= 	$this->input->post("bday");
			$civil_status 	= 	strtoupper(trim($this->input->post("civil_status")));
			$email 			= 	strtoupper(trim($this->input->post("email")));
			$mobile_no 		= 	strtoupper(trim($this->input->post("mobile_no")));
			$tin_no 		=	strtoupper(trim($this->input->post("tin_no")));
			$sss_no 		= 	strtoupper(trim($this->input->post("sss_no")));
			$nick_name		= 	strtoupper(trim($this->input->post("nick_name")));
			$home_tel_no	= 	strtoupper(trim($this->input->post("home_tel_no")));
			$office_tel_no	= 	strtoupper(trim($this->input->post("office_tel_no")));
			$s_last_name 	= 	$this->_isEmpty(strtoupper(trim($this->input->post("s_last_name"))));
			$s_first_name 	= 	$this->_isEmpty(strtoupper(trim($this->input->post("s_first_name"))));
			$s_middle_name 	= 	$this->_isEmpty(strtoupper(trim($this->input->post("s_middle_name"))));
			$s_mobile_no 	= 	$this->_isEmpty(strtoupper(trim($this->input->post("s_mobile_no"))));
			$s_address 		= 	'N/A';
			$member 		= 	'N';
			return array (
				"last_name" 	=> 	$last_name,
				"first_name" 	=> 	$first_name,
				"middle_name" 	=> 	$middle_name,
				"n_address" 	=> 	$home_address,
				"birthdate" 	=> 	$bday,
				"civil_status"	=> 	$civil_status,
				"email_address"	=> 	$email,
				"n_mobile_no"	=> 	$mobile_no,
				"tin"			=> 	$tin_no,
				"sss_no"		=> 	$sss_no,
				"nick_name"		=> 	$nick_name,
				"home_tel_no"	=> 	$home_tel_no,
				"office_tel_no"	=> 	$office_tel_no,
				"s_last_name" 	=> 	$s_last_name,
				"s_first_name" 	=> 	$s_first_name,
				"s_middle_name"	=> 	$s_middle_name,
				"s_mobile_no"	=> 	$s_mobile_no,
				"s_address"		=> 	$s_address,
				"member"		=> 	$member
			);
		}

		private function _isEmpty($data){
			if($data == null || $data == ""){
				$data = 'N/A';
			}
			return $data;
		}
	}

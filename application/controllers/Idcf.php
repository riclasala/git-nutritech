<?php
	class Idcf extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->helper('site_settings');
			$this->load->helper('site_security');
			$this->load->helper('site_settings');
			$this->load->library('form_validation');
			$this->load->model('distributor_model');
			$this->load->model('online_idcf_model');
		}
		
		public function view(){
			$this->_auth_login();

			$server_ip = _ip_url();
			$distributor = $this->distributor_model->fetch_distributor_by_user_id($_SESSION['user_id']);
			$distributor_id = $distributor->distributor_id;
			$data["member"] = $this->online_idcf_model->fetch_sponsor_info($distributor_id);
			$this->load->view('layouts/header');
			$this->load->view('idcf/membership',$data);
			$this->load->view('layouts/footer');
		}
		public function idcf_success1(){
			
				$this->load->view('idcf/idcf_success1');
		
		}
		public function idcf_membership(){
			$distributor_id = $this->session->flashdata('new_idcf');
			if ($distributor_id != null or $distributor_id !=''){
				$data['member'] =  $this->online_idcf_model->fetch_new_distributor_summary($distributor_id);
				$this->load->view('idcf/idcf_success',$data);
			}else{
				redirect(base_url());
			}
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
				
				$new_idcf_id = $this->online_idcf_model->insert_idcf($this->idcf_details($data));
				//$this->idcf_membership($new_idcf_id);
				$this->session->set_flashdata('new_idcf', $new_idcf_id);

				if($_SESSION['page_type'] == 'member'){
					redirect('members/idcf_confirmation');
				}else{
					redirect('idcf_confirmation');
				}
			}
			else {
				foreach ($_POST as $key => $value) {
					$data['messages'][$key] = form_error($key);
				}
				//$this->view();
				//redirect('membership');
			}
			//echo json_encode($data);
			
		}

		public function idcf_details($data){
			$sponsor_id		= 	$this->input->post("sponsor_id");
			$last_name 		= 	strtoupper(trim($this->input->post("last_name")));
			$first_name 	= 	strtoupper(trim($this->input->post("first_name")));
			$middle_name 	= 	strtoupper(trim($this->input->post("middle_name")));
			$home_address 	= 	strtoupper(trim($this->input->post("home_address")));
			$bday 			= 	date('Y-m-d',strtotime($this->input->post("bday")));
			$civil_status 	= 	strtoupper(trim($this->input->post("civil_status")));
			$email 			= 	strtolower(trim($this->input->post("email")));
			$mobile_no 		= 	strtoupper(trim($this->input->post("mobile_no")));
			$tin_no 		=	strtoupper(trim($this->input->post("tin_no")));
			$sss_no 		= 	strtoupper(trim($this->input->post("sss_no")));
			$nick_name		= 	strtoupper(trim($this->input->post("nick_name")));
			$home_tel_no	= 	strtoupper(trim($this->input->post("home_tel_no")));
			$office_tel_no	= 	strtoupper(trim($this->input->post("office_tel_no")));
			$s_last_name 	= 	strtoupper(trim($this->input->post("s_last_name")));
			$s_first_name 	= 	strtoupper(trim($this->input->post("s_first_name")));
			$s_middle_name 	= 	strtoupper(trim($this->input->post("s_middle_name")));
			$s_mobile_no 	= 	strtoupper(trim($this->input->post("s_mobile_no")));
			$s_address 		= 	'';

			$img 			= 	$this->_uploadImage($last_name, $first_name);
			$img_name 		= 	$this->_imgName($img);
			$img_type 		= 	$this->_imgType($img, $img_name);

			$cash_payment	=	trim($this->input->post("cash_payment"));
			
			$admin_fee		=	$this->input->post('admin_fee');
			$deposit_bank	=	$this->_isDepositToBank(strtoupper(trim($this->input->post("depositing_bank"))),$cash_payment);
			$deposit_ref_no	=	strtoupper(trim($this->input->post("deposit_ref_no")));
			$office 		=	strtoupper(trim($this->input->post("office")));
			$member 		= 	'N';

			$remarks		=	$this->_remarks(trim($this->input->post("remarks")), $deposit_bank, $deposit_ref_no, $office);
			
			$idcf_status	=	1;

			
			
			return array (
				"sponsor_id"		=>	$sponsor_id,
				"last_name" 		=> 	$last_name,
				"first_name" 		=> 	$first_name,
				"middle_name" 		=> 	$middle_name,
				"n_address" 		=> 	$home_address,
				"birthdate" 		=> 	$bday,
				"civil_status"		=> 	$civil_status,
				"email_address"		=> 	$email,
				"n_mobile_no"		=> 	$mobile_no,
				"tin"				=> 	$tin_no,
				"sss_no"			=> 	$sss_no,
				"nick_name"			=> 	$nick_name,
				"home_tel_no"		=> 	$home_tel_no,
				"office_tel_no"		=> 	$office_tel_no,
				"s_last_name" 		=> 	$s_last_name,
				"s_first_name" 		=> 	$s_first_name,
				"s_middle_name"		=> 	$s_middle_name,
				"s_mobile_no"		=> 	$s_mobile_no,
				"s_address"			=> 	$s_address,
				"img_path"			=>	$img_name,
				"img_file_type"		=>	$img_type,
				"admin_fee"			=>	$admin_fee,
				"depositing_bank"	=>	$deposit_bank,
				"deposit_ref_no"	=>	$deposit_ref_no,
				"member"			=> 	$member,
				"remarks"			=>	$remarks,
				"cash_payment"		=>	$cash_payment,
				"shop_idcf_status"	=>	$idcf_status
			);
		}

		private function _isEmpty($data){
			if($data == null || $data == ""){
				$data = 'N/A';
			}
			return $data;
		}

		private function _uploadImage($last_name,$first_name){
			$img_info = "";
			if($_FILES['image_file']['name']!='' or $_FILES['image_file']['name'] != null){
				$config = array(
					'file_name' 	=> date('YmdHis') . '_' . strtolower($last_name) . strtolower($first_name),
					'upload_path' 	=> "assets/images/idcf_member/distributors/",
					'upload_url' 	=> base_url() . "assets/images/idcf_member/distributors/",
					'allowed_types' => "gif|jpg|png|jpeg"
				);
				$this->load->library('upload', $config);
				$this->upload->do_upload('image_file');
				$img_info = $this->upload->data();
			}
			return $img_info;
		}
		private function _imgName($img){
			if($img != null or $img != ''){
				return "assets/images/idcf_member/distributors/" . $img["orig_name"];
			}
			return "";
		}
		private function _imgType($img, $img_name){
			if($img != null or $img != ''){
				return end(explode(".", $img_name));
			}
			return "";
		}
		private function _isDepositToBank($deposit_bank, $cash_payment){
			if($cash_payment == "Y"){
				return $deposit_bank;
			}
			return "";
		}
		private function _remarks($remarks, $deposit_bank, $deposit_ref_no, $office){
			if($remarks == "deposit_payment"){
				$remarks = "Payment is deposited at " . $deposit_bank . " with reference#" . $deposit_ref_no;
			}elseif($remarks == "office_payment"){
				$remarks = "Will submit payment at NutriTECH " . $office . " Office";
			}elseif($remarks == 'function_payment'){
				$remarks = "Will submit payment at NutriTECH Function";
			}
			return $remarks;
		}

		private function _auth_login(){
			$is_logged_in = _check_login();
			if ($is_logged_in == false){
				_clear_sessions();
				$this->load->helper('url');
				$page = $this->uri->segment(1);
				if($page == 'members'){
					redirect('members/login');
				} else {
					redirect('login');
				}
			}
		}
	}

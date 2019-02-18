<?php
	class Idcf extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->helper('site_settings');
			$this->load->library('form_validation');
			$this->load->model('online_idcf_model');
		}

		public function view(){
			$server_ip = _ip_url();
			$distributor_id = 23089; //this should be session
			$data["member"] = $this->online_idcf_model->fetch_sponsor_info($server_ip, $distributor_id);
			$this->load->view('layouts/header');
			$this->load->view('idcf/membership',$data);
			$this->load->view('layouts/footer');
		}

		public function idcf_membership(){
			//$server_ip = _ip_url();
			//$distributor_id = 23089; //this should be session
			//$data["member"] = $this->online_idcf_model->fetch_new_distributor_summary($server_ip, $distributor_id);
			$id = $this->session->flashdata('new_idcf');
			if ($id != null or $id !=''){
				$data['member'] =  $this->online_idcf_model->fetch_new_distributor_summary($id);
				$this->load->view('idcf/idcf_success',$data);
			}else{
				redirect('home');
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

		public function idcf_details($data){
			$sponsor_id		= 	$this->input->post("sponsor_id");
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

			$img = $this->_uploadImage($last_name, $first_name);

			$img_name = "";
			$img_type = "";
			if($img != null or $img != ''){
				$img_name = "assets/images/idcf_member/distributors/" . $img["orig_name"];
				$img_type = end(explode(".", $img_name));
			}
			return array (
				"sponsor_id"	=>	$sponsor_id,
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
				"img_path"		=>	$img_name,
				"img_file_type"	=>	$img_type,
				"member"		=> 	$member
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
					'file_name' => date('Ymd') . '_' . strtolower($last_name) . strtolower($first_name),
					'upload_path' => "assets/images/idcf_member/distributors/",
					'upload_url' => base_url() . "assets/images/idcf_member/distributors/",
					'allowed_types' => "gif|jpg|png|jpeg"
				);
				$this->load->library('upload', $config);
				$this->upload->do_upload('image_file');
				$img_info = $this->upload->data();
			}
			return $img_info;
		}
	}

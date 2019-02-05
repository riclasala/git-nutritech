<?php 
	class Online_IDCF_model extends CI_Model{
		public function insert_idcf(){
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
	
			$data =  array (
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
			$this->db->insert("shop_idcf",$data);
		}

		private function _isEmpty($data){
			if($data == null || $data == ""){
				$data = 'N/A';
			}
			return $data;
		}
	}
?>

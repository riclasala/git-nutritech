<?php 
	class Online_idcf_model extends CI_Model{
		
		public function insert_idcf($idcf_details){
			$this->db->insert("shop_idcf",$idcf_details);
			$last_id = $this->db->insert_id();
			return $last_id;
		}
		/*public function fetch_sponsor_info($server_ip,$id){
			$url = 'http://'.$server_ip.'/nutritech_api/sponsor/'.$id;
			$qstring = array('X-API-KEY' => '12345');
			$query = http_build_query($qstring);
			$ch    = curl_init();
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_HEADER, false);
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
			$response = curl_exec($ch);
			curl_close($ch);

			$distributor = json_decode($response, TRUE);
			return $distributor;
		}*/
		public function fetch_sponsor_info($distributor_id){
			$this->db->select("d.distributor_id as id,d.last_name, d.first_name, d.middle_name, d.distributor_code, upper(concat(sst.subteam_name,' - ',st.team_name,' - ',l.location)) as team_area");
			$this->db->from("distributors d");
			$this->db->join('location l', 'l.location_id = d.location_id', 'INNER');
			$this->db->join('sales_subteam sst', 'sst.subteam_id = d.subteam_id', 'INNER');
			$this->db->join('sales_team st', 'st.team_id = sst.con_id', 'INNER');
			$this->db->where("d.distributor_id",$distributor_id);
			$query = $this->db->get();
			return $query->result_array();
		}
		public function fetch_new_distributor_summary($id){
			$this->db->select("
							si.sponsor_id,
							concat(si.last_name,', ',si.first_name, ' ', case when si.middle_name = '' then '' else concat(substring(si.middle_name,1,1),'.') end) as full_name,
							concat(d.last_name,', ',d.first_name, ' ', case when d.middle_name = '' then '' else concat(substring(d.middle_name,1,1),'.') end) as sp_full_name,
							upper(concat(sst.subteam_name,' - ',st.team_name,' - ',l.location)) as team_area,
							si.n_address,
							date_format(si.birthdate,'%M %d, %Y') as birthdate,
							si.civil_status,
							case when si.email_address = '' then 'N/A' else si.email_address end as email,
							si.n_mobile_no as mobile_no,
							case when si.home_tel_no = '' then 'N/A' else si.home_tel_no end as home_no,
							case when si.office_tel_no = '' then 'N/A' else si.office_tel_no end as office_no,
							case when si.tin = '' then 'N/A' else si.tin end as tin_no,
							case when si.sss_no = '' then 'N/A' else si.sss_no end as sss_no,
							case when (si.s_last_name = 'N/A' or si.s_last_name = '') and (si.s_first_name = 'N/A' or si.s_first_name = '') then 'N/A' else concat(si.s_last_name,', ',si.s_first_name,' ',case when si.s_middle_name != '' then concat(substring(si.s_middle_name,1,1),'.') else '' end) end as s_full_name,
							case when si.s_mobile_no = '' then 'N/A' else si.s_mobile_no end as s_mobile_no,
							si.admin_fee,
							case when si.remarks = '' then 'N/A' else si.remarks end as remarks
							");
			$this->db->from("shop_idcf si");
			$this->db->join('distributors d', 'd.distributor_id = si.sponsor_id', 'INNER');
			$this->db->join('location l', 'l.location_id = d.location_id', 'INNER');
			$this->db->join('sales_subteam sst', 'sst.subteam_id = d.subteam_id', 'INNER');
			$this->db->join('sales_team st', 'st.team_id = sst.con_id', 'INNER');
			$this->db->where("si.id",$id);
			$query = $this->db->get();
			return $query->result_array();
		}
		//for actual server use
		/*
		public function fetch_new_distributor_summary($id){
			$this->db->select("
							si.sponsor_id,
							concat(si.last_name,', ',si.first_name, ' ', case when si.middle_name = '' then '' else concat(substring(si.middle_name,1,1),'.') end) as full_name,
							concat(d.last_name,', ',d.first_name, ' ', case when d.middle_name = '' then '' else concat(substring(d.middle_name,1,1),'.') end) as sp_full_name,
							dbo.fn_team_area(d.id) as team_area,
							si.n_address,
							date_format(si.birthdate,'%M %d, %Y') as birthdate,
							si.civil_status,
							case when si.email_address = '' then 'N/A' else si.email_address end as email,
							si.n_mobile_no as mobile_no,
							case when si.home_tel_no = '' then 'N/A' else si.home_tel_no end as home_no,
							case when si.office_tel_no = '' then 'N/A' else si.office_tel_no end as office_no,
							case when si.tin = '' then 'N/A' else si.tin end as tin_no,
							case when si.sss_no = '' then 'N/A' else si.sss_no end as sss_no,
							case when (si.s_last_name = 'N/A' or si.s_last_name = '') and (si.s_first_name = 'N/A' or si.s_first_name = '') then 'N/A' else concat(si.s_last_name,', ',si.s_first_name,' ',case when si.s_middle_name != '' then concat(substring(si.s_middle_name,1,1),'.') else '' end) end as s_full_name,
							case when si.s_mobile_no = '' then 'N/A' else si.s_mobile_no end as s_mobile_no,
							si.admin_fee,
							case when si.remarks = '' then 'N/A' else si.remarks end as remarks
							");
			$this->db->from("shop_idcf si");
			$this->db->join('distributors d', 'd.id = si.sponsor_id', 'INNER');
			$this->db->where("si.id",$id);
			$query = $this->db->get();
			return $query->result_array();
		}
		*/
		
	}
?>

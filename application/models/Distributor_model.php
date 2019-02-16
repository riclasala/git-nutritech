<?php
class Distributor_model extends CI_Model
{
	public function fetch_distributor($distributor_id)
	{
		$query = $this->db->get_where('distributors', array('distributor_id' => $distributor_id));
		$result = $query->row();
		return $result;
	}

	public function fetch_distributor_by_user_id($user_id){
		$this->load->model('portal_account_model');
		$portal = $this->portal_account_model->fetch_account_by_user_id($user_id);

		return $this->fetch_distributor($portal->distributor_id);
	}

	public function fetch_distributor_rate($distributor_id){
		$distributor = $this->fetch_distributor($distributor_id);

		$this->load->model('distributor_level_model');
		$distributor_level = $this->distributor_level_model->fetch_rate($distributor->distributor_level_id);
		return $distributor_level->pse;
	}

	public function load_distributor_by_code($server_ip, $user)
	{
		$url = 'http://'.$server_ip.'/nutritech_api/distributor_by_user';
		$qstring = array('X-API-KEY' => '12345', 'username' => $user);
		$query = http_build_query($qstring);
		$ch    = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
		$response = curl_exec($ch);
		curl_close($ch);
		
		$row = json_decode($response, TRUE);
		if($row['distributor_id'] > 0) {
			$dist_arr = array(
				'distributor_id' => $row['distributor_id'],
				'distributor_code' => $row['distributor_code'],
				'last_name' => $row['last_name'],
				'first_name' =>  $row['first_name'],
				'middle_name' =>  $row['middle_name'],
				'nickname' =>  $row['nickname'],
				'date_joined' =>  $row['date_joined'],
				'distributor_address' =>  $row['distributor_address'],
				'location_id' => $row['location_id'],
				'email' => $row['email'],
				'distributor_level_id' => $row['distributor_level_id'],
				'birthdate' => $row['birthdate'],
				'residence_telephone' => $row['residence_telephone'],
				'office_telephone' => $row['office_telephone'],
				'mobile_number' => $row['mobile_number'],
				'tin' => $row['tin'],
				'subteam_id' => $row['subteam_id'],
				'sponsor_id' => $row['sponsor_id'],
				'mobile_number2' => $row['mobile_number2']
			);
			$this->save($dist_arr);

			$this->load->model('portal_account_model');
			$this->portal_account_model->load_portal($server_ip, $row['distributor_id']);
		}
	}

	public function check_user($user){
		$this->db->from('distributors');
		$this->db->where(array('distributor_code' => $user));
		$this->db->order_by('distributor_id', 'DESC');
		$query = $this->db->limit(1)->get();
		$result = $query->row();
		return $result;
	}

	public function load_active_distributors($server_ip)
	{
		$url = 'http://'.$server_ip.'/nutritech_api/active_distributors';
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
		
		$this->truncate_table();
		
		$distributors = json_decode($response, TRUE);
		foreach($distributors as $row){
			$dist_arr = array(
				'distributor_id' => $row['distributor_id'],
				'distributor_code' => $row['distributor_code'],
				'last_name' => $row['last_name'],
				'first_name' =>  $row['first_name'],
				'middle_name' =>  $row['middle_name'],
				'nickname' =>  $row['nickname'],
				'date_joined' =>  $row['date_joined'],
				'distributor_address' =>  $row['distributor_address'],
				'location_id' => $row['location_id'],
				'email' => $row['email'],
				'distributor_level_id' => $row['distributor_level_id'],
				'birthdate' => $row['birthdate'],
				'residence_telephone' => $row['residence_telephone'],
				'office_telephone' => $row['office_telephone'],
				'mobile_number' => $row['mobile_number'],
				'tin' => $row['tin'],
				'subteam_id' => $row['subteam_id'],
				'sponsor_id' => $row['sponsor_id'],
				'mobile_number2' => $row['mobile_number2']
			);
			$this->save($dist_arr);
		}
	}

	public function truncate_table(){
		$this->db->truncate('distributors');
	}

	public function save($details)
	{
		$this->db->set($this->_setItem($details))->insert('distributors');
	}
	
	private function _setItem($details)
	{
		return array(
			'distributor_id' => $details['distributor_id'],
				'distributor_code' => $details['distributor_code'],
				'last_name' => $details['last_name'],
				'first_name' =>  $details['first_name'],
				'middle_name' =>  $details['middle_name'],
				'nickname' =>  $details['nickname'],
				'date_joined' =>  $details['date_joined'],
				'distributor_address' =>  $details['distributor_address'],
				'location_id' => $details['location_id'],
				'email' => $details['email'],
				'distributor_level_id' => $details['distributor_level_id'],
				'birthdate' => $details['birthdate'],
				'residence_telephone' => $details['residence_telephone'],
				'office_telephone' => $details['office_telephone'],
				'mobile_number' => $details['mobile_number'],
				'tin' => $details['tin'],
				'subteam_id' => $details['subteam_id'],
				'sponsor_id' => $details['sponsor_id'],
				'mobile_number2' => $details['mobile_number2']
		);
	}
}
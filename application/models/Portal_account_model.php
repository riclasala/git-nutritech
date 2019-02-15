<?php
class Portal_account_model extends CI_Model
{
	public function check_user($user){
		$query = $this->db->get_where('portal_accounts', array('username' => $user));
		return $query->row();
	}

	public function fetch_account($distributor_id){
		$query = $this->db->get_where('portal_accounts', array('distributor_id' => $distributor_id));
		return $query->row();
	}

	public function load_portal($server_ip, $distributor_id){
		$url = 'http://'.$server_ip.'/nutritech_api/portal_account_dist/'.$distributor_id;
		$params = array('X-API-KEY' => '12345');
		
		$query = http_build_query($params);
		$ch    = curl_init($url.'?'.$query);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		$response = curl_exec($ch);
		curl_close($ch);
		
		$portal = json_decode($response, TRUE);
		if($portal['id'] == 0) {
			//create temporary login
			$distributor = $this->distributor_model->fetch_distributor($distributor_id);
			$birthdate = $distributor->birthdate;
			$password = date('mdY', strtotime($birthdate));
			if($password == '19000101' || $password == '19200101') {
				$date_joined = $distributor->date_joined;
				$password = date('mdY', strtotime($date_joined));
			}

			$account_arr = array(
				'user_id' => $distributor->distributor_id,
				'username' => $distributor->distributor_code,
				'password' => md5($password),
				'type' =>  3,
				'disabled' => 0,
				'distributor_id' => $distributor->distributor_id,
				'temporary' => 1
			);
		} else {
			$account_arr = array(
				'user_id' => $portal['distributor_id'],
				'username' => $portal['username'],
				'password' => $portal['password'],
				'type' =>  $portal['type'],
				'disabled' =>  $portal['disabled'],
				'distributor_id' => $portal['distributor_id'],
				'temporary' => 0
			);
		}
		
		$this->save($account_arr);
	}

	public function truncate_table(){
		$this->db->truncate('portal_accounts');
	}

	public function save($details)
	{
		$this->db->set($this->_setItem($details))->insert('portal_accounts');
	}
	
	private function _setItem($details)
	{
		return array(
			'user_id' => $details['user_id'],
			'username' => $details['username'],
			'password' => $details['password'],
			'type' =>  $details['type'],
			'disabled' =>  $details['disabled'],
			'distributor_id' => $details['distributor_id'],
			'temporary' => $details['temporary']
		);
	}
}
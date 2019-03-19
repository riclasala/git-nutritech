<?php
class Customer_model extends CI_Model
{
	public function customer_exists($customer, $distributor_id){
		$this->db->from('customers');
		$this->db->where($customer);
		$this->db->where('distributor_id', $distributor_id);
		$this->db->limit(1);
		
		$query = $this->db->get();
		return $query->row();
	}

	public function fetch_customer($customer_id){
		$query = $this->db->get_where('customers', array('customer_id' => $customer_id));
		return $query->row();
	}

	public function customer_from_api($customer_name, $distributor_id){
		$query = $this->db->get_where('customers', array(
			'customer_name' => $customer_name,
			'distributor_id' => $distributor_id
		));

		return $query->row();
	}

	public function update_details($customer, $customer_id){
		$this->db->where('customer_id', $customer_id);
		$this->db->update('customers', $customer);
	}

	public function save_distributor($details)
	{
		$this->db->set($this->_distributor($details))->insert('customers');
	}

	public function save_api_db($server_ip, $details){
		$details['X-API-KEY'] = '12345';
		$url = 'http://'.$server_ip.'/nutritech_api/customer/save_customer';
		$qstring = $details;
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
		return $row['customer_id'];
	}
	
	public function load_customer($server_ip, $customer_name, $distributor_id){
		$url = 'http://'.$server_ip.'/nutritech_api/customer/find_customer';
		$qstring = array('X-API-KEY' => '12345', 'customer' => $customer_name, 'distributor_id' => $distributor_id);
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
		if($row['customer_id'] > 0) {
			$customer_arr = array(
				'customer_id' => $row['customer_id'],
				'address' => $row['address'],
				'customer_name' => $row['customer_name'],
				'customer_status' => $row['customer_status'],
				'tel_no' => $row['tel_no'],
				'mobile_number' => $row['mobile_number'],
				'distributor_tag' => $row['distributor_tag'],
				'online_tag' => $row['online_tag'],
				'country' => $row['country'],
				'zipcode' => $row['zipcode'],
				'firstname' => $row['firstname'],
				'middlename' => $row['middlename'],
				'lastname' => $row['lastname'],
				'email_user' => $row['email_user'],
				'delivery_address' => $row['delivery_address'],
				'distributor_id' => $distributor_id
			);
			$this->save($customer_arr);
		}
	}

	public function save($details){
		$this->db->insert('customers', $details);
	}

	private function _distributor($details)
	{
		return array(
			'customer_id' => $details->customer_id,
			'address' => $details->distributor_address,
			'customer_name' => $details->last_name .', '. $details->first_name . ($details->middle_name == '' ? '' : ' '. $details->middle_name),
			'customer_status' => 14,
			'tel_no' => $details->residence_telephone,
			'mobile_number' => $details->mobile_number,
			'distributor_tag' => 'y',
			'online_tag' => 'y',
			'country' => 'PH',
			'zipcode' => '',
			'firstname' =>  $details->first_name,
			'middlename' =>  $details->middle_name,
			'lastname' => $details->last_name,
			'email_user' => $details->email,
			'delivery_address' => 'Pick-up to NutriTECH Office',
			'distributor_id' => $details->distributor_id
		);
	}
}
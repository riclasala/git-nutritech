<?php 
	class Online_idcf_model extends CI_Model{
		
		public function insert_idcf($idcf_details){
			$this->db->insert("shop_idcf",$idcf_details);
			$last_id = $this->db->insert_id();
			return $last_id;
		}
		public function fetch_sponsor_info($server_ip,$id){
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
		}
		public function fetch_new_distributor_summary($id){
			$query = $this->db->get_where('shop_idcf', array('id' => $id));
			return $query->result_array();
		}
	}
?>

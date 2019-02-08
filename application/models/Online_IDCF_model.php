<?php 
	class Online_idcf_model extends CI_Model{
		
		/*public function load_distributor($server_ip){
			$url = 'http://'.$server_ip.'/nutritech_api/product/reload_promos';
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
		}*/

		public function insert_idcf($idcf_details){
			$this->db->insert("shop_idcf",$idcf_details);
		}
		public function fetch_sponsor_info($id){
			$query = $this->db->get_where("distributor",array('id' => $id));
		  	return $query;
		} 
	}
?>

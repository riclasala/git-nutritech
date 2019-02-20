<?php
class Country_model extends CI_Model
{
	public function fetch_countries()
	{
		$this->db->from('countries');
		$query = $this->db->get();
		return $query->result_array();
	}
}
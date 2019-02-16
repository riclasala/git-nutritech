<?php
class Distributor_level_model extends CI_Model
{
	public function fetch_rate($distributor_level_id)
	{
		$query = $this->db->get_where('distributor_levels', array('id' => $distributor_level_id));
		return $query->row();
	}
}
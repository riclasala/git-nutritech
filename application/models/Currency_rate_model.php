<?php
class Currency_rate_model extends CI_Model
{
	public function fetch_usdrate()
	{
		$this->db->select('usd_rate');
		$this->db->from('currency_rates');
		$this->db->order_by('id', 'DESC');
		$this->db->limit(1);

		$query = $this->db->get();
		$result = $query->row();
		return $result->usd_rate;
	}

	public function edit($usd_rate){
		$array = array('usd_rate' => $usd_rate);
		$this->db->where('id', 1);
		$this->db->update('currency_rates', $array);
	}
}
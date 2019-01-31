<?php
class Pages extends CI_Controller{

	public function view($page = 'home'){
		if(!file_exists(APPPATH. 'views/pages/'. $page . '.php')){
			show_404();
		}
		
		$data['title'] = ucfirst($page);
		
		$this->load->view('layouts/header');
		$this->load->view('pages/' .$page, $data);
		$this->load->view('layouts/footer');
	}

	public function save()
	{
		$data = array('success' => false, 'messages' => array());

		$this->load->library('form_validation');
		$this->form_validation->set_rules("last_name", "Last Name", "trim|required");
		$this->form_validation->set_rules("first_name", "First Name", "trim|required");
		$this->form_validation->set_rules("username", "Username", "trim|required");
		$this->form_validation->set_rules("email", "Email", "trim|required|valid_email");
		$this->form_validation->set_rules("password", "Password", "trim|required");
		$this->form_validation->set_rules("password_confirm", "Password Confirm", "trim|required|matches[password]");
		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
		if ($this->form_validation->run()) {
			$data['success'] = true;
		}
		else {
			foreach ($_POST as $key => $value) {
				$data['messages'][$key] = form_error($key);
			}
		}

		echo json_encode($data);
	}
}
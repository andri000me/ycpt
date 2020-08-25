<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_auth');
	}

	public function index()
	{
		$session = $this->session->userdata('status');

		$this->form_validation->set_rules('username', 'username', 'required|min_length[4]|max_length[50]');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == false) {
			$this->load->view('login');
		} else {
			$username 	= trim($_POST['username']);
			$password 	= trim($_POST['password']);
			$level 		= trim($_POST['level']);

			$data = $this->M_auth->login($username, $password, $level);

			if ($data == false) {
				// echo "salah";
				$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>  Username atau Password Salah!.</div>');


				// echo $this->session->flashdata('message');
				// $this->session->set_flashdata('error_msg', '<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>  Username atau Password Salah!.</div>');
				redirect('Auth');
			} else {
				$session = [
					'userdata' 	=> $data,
					'status' 	=> "Loged in",
					'level' 	=> $level
				];
				$this->session->set_userdata($session);
				redirect('Home');
			}
		}
	}

	public function login()
	{
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('Auth');
	}
}

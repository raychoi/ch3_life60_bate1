<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		//$this->load->model('user_model');
    }

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/sidebar_menu');
		$this->load->view('template/header_menu');
		$this->load->view('main/index');
		$this->load->view('template/footer_info');
		$this->load->view('template/footer');
	}
}

/* End of file Main.php */
/* Location: ./application/controllers/Main.php */

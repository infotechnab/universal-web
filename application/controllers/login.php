<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

 function __construct()
 {
   parent::__construct();
   $this->load->library('session');
    
 }

 function index()
 {
      $this->load->library('session');
     if(!$this->session->userdata('logged_in'))
     {
        $header ="admin/templates/";
        $this->load->view($header.'header');            
        $this->load->view('admin/form');
        $this->load->view('admin/templates/footer');
     }
 else {
         redirect('admin','refresh');
     }
 }
 
    function validate_credentials()
	{	$this->load->library('session');
                $this->load->library('form_validation');
                $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
                $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|callback_check_database');
                if($this->form_validation->run() == FALSE)
                     {
                        $this->index();
                     }
                else
                    {
		$this->load->model('dbmodel');
		$query = $this->dbmodel->validate();
		if($query) // if the user's credentials validated...
		{
			$data = array(
				'username' => $this->input->post('username'),
				'logged_in' => true
			);
			$this->session->set_userdata($data);
			redirect('admin/index');
		}
		else // incorrect username or password
                    {
                        $this->session->set_flashdata('message', 'Username or password incorrect');
                        redirect('login');
                        
                    }
                    }
	}
        

}
?>
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
*/
class View extends CI_Controller {
 public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('viewmodel');
        
    }
    
   


	public function index()
	{
             
            //$data['abc']= "this is message";
            $id=1;
            $data['event'] = $this->viewmodel->get_event();
     $data['slider'] = $this->viewmodel->get_slider();
            $data['query'] =$this->viewmodel->get_page($id);
            $data['gadget'] = $this->viewmodel->get_gadgets();
		$this->load->view('templates/left',$data);
                $this->load->view('templates/right',$data);
                
    }
    
    function page($id)
    {   
         
                $data['slider'] = $this->viewmodel->get_slider();
                $data['event'] = $this->viewmodel->get_event();
                $data['query'] =$this->viewmodel->get_page($id);
                $data['gadget'] = $this->viewmodel->get_gadgets();
                $this->load->view('templates/left',$data);
                $this->load->view('templates/right',$data);
                }
     
 
    public function event()
    {
         $data['slider'] = $this->viewmodel->get_slider();
        $data['gadget'] = $this->viewmodel->get_gadgets();
        $data['query'] = $this->viewmodel->get_event();
        $this->load->view('templates/left',$data);
        $this->load->view('templates/right',$data);
        
    }
    
     public function events($aid)
    {
         $data['slider'] = $this->viewmodel->get_slider();
         $data['gadget'] = $this->viewmodel->get_gadgets();
         $data['event'] = $this->viewmodel->get_event();
        $data['query'] = $this->viewmodel->get_event_more($aid);
        $this->load->view('templates/left',$data);
        $this->load->view('event/index',$data);
        
    }
    
   
    
    

    
    
    
    
}

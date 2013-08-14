
<?php 
class Viewmodel extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }
    
    function get_page($id)
    {      
        $this->db->where('pid = ' . "'" . $id . "'");      
        $this->db->from('pages');
        $query = $this->db->get();
        
        if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
    }
    
    
    public function get_gallery($aid)
    {  
        $this->db->where('aid',$aid);
        $query = $this->db->get('gallery');
        return $query->result();  
       
       if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
        
    }
    
      public function get_album()
    {
        $query = $this->db->get('album');
        return $query->result();
    }
    
    public function get_event()
    {        $this->db->order_by('aid','DESC');
        $query = $this->db->get('activities',2);
        return $query->result();
    }
            
    
    public function get_event_more($aid)
    {
        $this->db->where('aid',$aid);
        $query = $this->db->get('activities');
        return $query->result();  
       
       if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
        
    }
    function get_gallery_image($aid)
        {
            $this->db->select('image');            
            $this->db->where('aid',$aid);
            $this->db->order_by('eid','DESC');
            $this->db->limit(1);
                    $query = $this->db->get('gallery');
           if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
        }
    
    
    
    
    public function get_gadgets()
    {
        $this->db->order_by('gid','DESC');
        $query = $this->db->get('gadget',5);
        return $query->result();
    }

     public function get_slider()
    {
        $query = $this->db->get('slider');
        return $query->result();
    }



}


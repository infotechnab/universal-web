 <?php
 if(isset($error))
  {
      echo $error;
  }
 
        if($query){
            foreach ($query as $data){
           $pid = $data->pid;
           $title = $data->title;
           $body = $data->body;
           $image = $data->image;
           $status= $data->status;
            
            }
        }
    ?>
<h2>Edit Page id <?php echo $pid; ?></h2>
  <?php echo validation_errors(); ?>
 
  <p id="sucessmsg">
  <?php if($this->session->flashdata('message')){echo $this->session->flashdata('message');}?>
    </p>
  <?php echo form_open_multipart('admin/update');?>
  <p>Title:<br />
      <input type="hidden" name="id" value="<?php echo $pid; ?>" />
      <input type="text" name="title" value="<?php echo $title; ?>" />
  </p>
  <p>Body:<br />
  <textarea name="body" rows="5" cols="50" style="resize:none;"><?php echo $body; ?></textarea>
  </p>
  <p> Image : <br/> <input type="file" name="userfile"/> </p>
    
   <p>Status:<br />
  <?php 
  $options = array(
                  '1'  => 'publish',
                  '0'    => 'draft');
  echo form_dropdown('status',$options,$status)
  ?>
  </p>
  <input type="submit" value="Submit" />
  <?php echo form_close();?>
<p><b>Note:</b> Max file size: 500KB, Max Width: 1024px, Max Height: 768px </p>

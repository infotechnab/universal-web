<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<h2>News and Events   </h2>
<a href="addactivity">Add New Events</a>
<div id="body">
    
     <p id="sucessmsg">
  <?php if($this->session->flashdata('message')){echo $this->session->flashdata('message');}?>
    </p>
    <p>List of News and Events</p>
    <table border="1" cellpadding="10">
        <tr>
            <th>S.N.</th>
            <th>News & Events </th> 
            <th>Image</th>
            <th>Action</th>
        </tr>
    
    <?php
    
    
        if($query){
            foreach ($query as $data){
            ?>
          <tr>
            <td><?php echo $data->aid ?></td>
            <td><?php echo $data->title ?></td>
            <?php $image = $data->image;
            if(($image =='0')||($image ==''))
            {
                $image = 'image not set';
            
?>
            <td><?php echo $image; ?></td>
            <?php } else { ?>
            <td><img src="<?php echo base_url(); ?>uploads/<?php echo $image; ?>" width="60px" height="50px" />  </td> <?php } ?>
            <td><?php echo anchor('admin/editactivities/'.$data->aid,'Edit') ?> / <?php echo anchor('admin/deleteactivities/'.$data->aid,'Delete') ?></td>
      
        </tr>
            <?php    
            }
        }
    ?>
    </table>
</div>
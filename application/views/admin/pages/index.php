<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<h2>Pages </h2>
<a href="addpage">Add New Page</a>
<div id="body">
    <p id="sucessmsg">
  <?php if($this->session->flashdata('message')){echo $this->session->flashdata('message');}?>
    </p>
    <p>List of all pages</p>
    <table border="1" cellpadding="10">
        <tr>
            <th>S.N.</th>
            <th>Page</th> 
            <th>Image</th>
            <th>Published On</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    
    <?php
    
    
        if($query){
            foreach ($query as $data){
            ?>
          <tr>
            <td><?php echo $data->pid ?></td>
            <td><?php echo $data->title ?></td>
            <td><?php echo $data->image ?>  </td>
            <td><?php echo $data->date ?></td>
            
            <td><?php if($data->status==0)
            {
                echo "Draft";
            }
                else
            {
                    echo "Published";
                    
            }
            ?></td>
            <td><?php echo anchor('admin/editpage/'.$data->pid,'Edit'); ?> / 
            <?php echo anchor('admin/deletepage/'.$data->pid,'Delete'); ?></td>
        </tr>
            <?php    
            }
        }
    ?>
    </table>
</div>
<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<script>
function del()
{	
var r = confirm("Are You Sure Want To Delete");
if (r)
{
return true;
}
else{
return false;
}
}
</script>
<h2>Gadget</h2>
<a href="addgadget">Add New Gadget</a>
<div id="body">
    <p id="sucessmsg">
  <?php if($this->session->flashdata('message')){echo $this->session->flashdata('message');}?>
    </p>
    <p>List of Gadget</p>
    <table border="1" cellpadding="10">
        <tr>
            
            <td>S.N.</td>
            <td>Gadget</td>
            <td>Status</td>
            <td colspan="2" align="center">Action</td>
        </tr>
        <?php
        if($query){
            foreach ($query as $data){
            ?>
          <tr>
            <td><?php echo $data->gid ?></td>
            <td><?php echo $data->title ?></td>
            <td><?php if($data->status==0)
            {
                echo "Draft";
            }
                else
            {
                    echo "Published";
                    
            }
            ?></td>
            <td><?php echo anchor('admin/editgadget/'.$data->gid,'Edit') ?>   </td> <td onclick="return del()"> <?php echo anchor('admin/deletegadget/'.$data->gid,'Delete') ?> </td>
        </tr>
            <?php    
            }
        }
    ?>
    </table>
</div>
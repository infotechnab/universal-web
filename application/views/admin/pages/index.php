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
            <td><?php echo $data->pid; ?></td>
            <td><?php echo $data->title; ?></td>
             <?php $image = $data->image;
            if(($image =='0')||($image ==''))
            {
                $image = 'image not set';
            ?>
            <td><?php echo $image; ?> </td>
            <?php } else { ?>
            <td><img src="<?php echo base_url(); ?>uploads/<?php echo $image; ?>" width="60px" height="50px" />  </td> <?php } ?>
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
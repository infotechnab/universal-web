<?php foreach ($query as $data)
{
    $pid = $data->pid;
    $tital = $data->title;
    $body = $data->body;
}?>         
<div class="full-right">
<div class="slider" id="div">
   <!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
   <?php foreach ($slider as $data)
   { ?>           
<li><img src="<?php echo base_url(); ?>slider/<?php echo $data->image; ?>" alt="<?php echo $data->title; ?>" title="<?php echo $data->title; ?>" id="wows1_0"/></li> <?php } ?>
<!--<li><img src="<?php echo base_url(); ?>content/data1/images/iphoneapplehomecctvsecurity.jpg" alt="iphone-apple-home-cctv-security" title="iphone-apple-home-cctv-security" id="wows1_1"/></li>
<li><img src="<?php echo base_url(); ?>content/data1/images/samsung.jpg" alt="samsung" title="samsung" id="wows1_2"/></li>
<li><img src="<?php echo base_url(); ?>content/data1/images/untitled2.jpg" alt="Untitled-2" title="Untitled-2" id="wows1_3"/></li> -->
</ul></div>
<div class="ws_bullets"><div>
<a href="#" title="CCTV_Camera_Alarm_CCTV_IR_Camera_surveillance_IR_equipment">
    <img src="<?php echo base_url(); ?>content/data1/tooltips/cctv_camera_alarm_cctv_ir_camera_surveillance_ir_equipment.jpg" alt="CCTV_Camera_Alarm_CCTV_IR_Camera_surveillance_IR_equipment"/>1</a>
<a href="#" title="iphone-apple-home-cctv-security">
    <img src="data1/tooltips/iphoneapplehomecctvsecurity.jpg" alt="iphone-apple-home-cctv-security"/>2</a>
<a href="#" title="samsung"><img src="<?php echo base_url(); ?>content/data1/tooltips/samsung.jpg" alt="samsung"/>3</a>
<a href="#" title="Untitled-2">
    <img src="<?php echo base_url(); ?>content/data1/tooltips/untitled2.jpg" alt="Untitled-2"/>4</a>
</div></div>

	<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="<?php echo base_url(); ?>content/engine1/wowslider.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>content/engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section --> 
</div>
<div class="content">
  <div class="title-name">
  <h2> <?php echo $tital; ?></h2>
  </div>
    
    <p class="para"><?php echo $body; ?></p>
        
</div>
</div>    
<!--//======full div close=========//-->
</div>
</body>
</html>
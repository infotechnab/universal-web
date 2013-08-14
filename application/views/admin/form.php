<hr>

<div id="bnw">
    <img src="<?php echo base_url()."/content/images/B&G100px.jpg"; ?>"/>
</div>
<div id="loginform"/>

<?php if($this->session->flashdata('message')){echo $this->session->flashdata('message');}
    echo validation_errors(); ?>
   <?php echo form_open('login/validate_credentials'); ?>
    <h3> Admin Login</h3>    
     <label for="username">Username:</label>
     <input type="text" size="20" id="username" name="username"/>
     <br/> <br/>
     <label for="password">Password:</label>
     <input type="password" size="20" id="passowrd" name="password"/>
     <br/> <br/>
     <input type="submit" value="Login"/>
   </form>
</div>
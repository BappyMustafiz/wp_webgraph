<?php 
/*
 * Template Name: Registration Page 
 */
get_header();?>

<!-- breadcrum start -->
<?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'banner-image');?>
<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="breadcrum_content">
        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ Register</h2>
        <hr>
    </div>
</div>
<!-- breadcrum end -->
<?php 
	global $wpdb;
	if($_POST){
		$first_name          = $wpdb->escape($_POST['first_name']);
		$last_name           = $wpdb->escape($_POST['last_name']);
		$username            = $wpdb->escape($_POST['username']);
		$password            = $wpdb->escape($_POST['password']);
		$confirm_password    = $wpdb->escape($_POST['confirm_password']);

		$error = array();
		// if(stripos($first_name, ' ')!== false){
		// 	$error['first_name_space'] = "In first name no space allowed";
		// }
		// if(empty($first_name)){
		// 	$error['first_name_empty'] = "First name is required";
		// }
		// if(stripos($last_name, ' ')!== false){
		// 	$error['last_name_space'] = "In last name no space allowed";
		// }
		// if(empty($last_name)){
		// 	$error['last_name_empty'] = "Last name is required";
		// }
		if(stripos($username, ' ')!== false){
			$error['username_space'] = "In username no space allowed";
		}
		if(empty($username)){
			$error['username_empty'] = "Username is required";
		}
		if(username_exists($username)){
			$error['username_exists'] = "Username already exists";
		}
		if(is_email($email)){
			$error['email_valid'] = "Please enter valid E-mail address";
		}
		if(email_exists($email)){
			$error['email_exists'] = "E-mail already exists";
		}
		if(strcmp($password,$confirm_password) !== 0){
			$error['password'] = "Password didn't match";
		}
		if(count($error) == 0){
			wp_create_user($username, $email, $password);
			echo "User created successfully";
			exit();
		}else{
			print_r($error);
		}

	}
?>
<div class="registration-page">
	<div class="container">
		<div class="form_wrapper">
		  <div class="form_container">
		    <div class="title_container">
		      <h2>Registration Form</h2>
		    </div>
		    <div class="row clearfix">
		      <div class="">
		        <form method="post">

		          <div class="row clearfix">
		            <div class="col_half">
		              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
		                <input type="text" name="first_name" placeholder="First Name" />
		              </div>
		            </div>
		            <div class="col_half">
		              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
		                <input type="text" name="last_name" placeholder="Last Name" />
		              </div>
		            </div>
		          </div>
		          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
		            <input type="text" name="username" placeholder="Username" />
		          </div>
		          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
		            <input type="email" name="email" placeholder="Email" />
		          </div>
		          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
		            <input type="password" name="password" placeholder="Password" />
		          </div>
		          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
		            <input type="password" name="confirm_password" placeholder="Re-type Password" />
		          </div>
	            	<!-- <div class="input_field radio_option">
			            <input type="radio" name="radiogroup1" id="rd1">
			            <label for="rd1">Male</label>
			            <input type="radio" name="radiogroup1" id="rd2">
			            <label for="rd2">Female</label>
		            </div>
		              <div class="input_field select_option">
		                <select>
		                  <option>Select a country</option>
		                  <option>Option 1</option>
		                  <option>Option 2</option>
		                </select>
		                <div class="select_arrow"></div>
		              </div>
		            <div class="input_field checkbox_option">
		            	<input type="checkbox" id="cb1">
		    			<label for="cb1">I agree with terms and conditions</label>
		            </div>
		            <div class="input_field checkbox_option">
		            	<input type="checkbox" id="cb2">
		    			<label for="cb2">I want to receive the newsletter</label>
		            </div> -->
		          <input class="button" type="submit" name="register" value="Register" />
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
	</div>


<?php get_footer();?>
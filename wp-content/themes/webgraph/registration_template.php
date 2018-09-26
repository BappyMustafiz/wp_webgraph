<?php
/**
 * Template Name: Register
 */

 get_header();

?>
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
	if (!isset($_POST['submit'])) {
?>
<div style="margin: 100px 0;">
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2 col-sm-12">
				
				<form method="post">
					<?php wp_nonce_field( 'new-member' ); ?>
				  <div class="form-group row">
				    <label for="applicant_name" class="col-sm-3 col-form-label">Applicant name</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" id="applicant_name" placeholder="Applicant name" name="ka_applicant_name">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="father_name" class="col-sm-3 col-form-label">Father's name</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_father_name" id="father_name" placeholder="Father's name">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="mother_name" class="col-sm-3 col-form-label">Mother's name</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_mother_name" id="mother_name" placeholder="Mother's name">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="permanent_address" class="col-sm-3 col-form-label">Permanent address</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_permanent_address" id="permanent_address" placeholder="Permanent address">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="current_address" class="col-sm-3 col-form-label">Current address</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_current_address" id="current_address" placeholder="Current address">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="mobile_number" class="col-sm-3 col-form-label">Mobile number</label>
				    <div class="col-sm-9">
				      <input type="number" class="form-control" name="ka_mobile_number" id="mobile_number" placeholder="Mobile number">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-3 col-form-label">Email address</label>
				    <div class="col-sm-9">
				      <input type="email" class="form-control" name="ka_email" id="email" placeholder="Email">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="facebook_link" class="col-sm-3 col-form-label">Facebook link</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_facebook_link" id="facebook_link" placeholder="Facebook link">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="nid_number" class="col-sm-3 col-form-label">NID/BC/PN</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_nid_number" id="nid_number" placeholder="NID/Birth certificate/Passport number">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="date_of_birth" class="col-sm-3 col-form-label">Date of birth</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_date_of_birth" id="date_of_birth" placeholder="Date of birth">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="blood_group" class="col-sm-3 col-form-label">Blood group</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_blood_group" id="blood_group" placeholder="Blood group">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="religion" class="col-sm-3 col-form-label">Religion</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_religion" id="religion" placeholder="Religion">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="education" class="col-sm-3 col-form-label">Education</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_education" id="education" placeholder="Education">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="profession" class="col-sm-3 col-form-label">Profession</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_profession" id="profession" placeholder="Profession">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="office_address" class="col-sm-3 col-form-label">Office address</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="ka_office_address" id="office_address" placeholder="Office address">
				    </div>
				  </div>
				  <div class="form-group row">
				  	<label for="office_address" class="col-sm-3 col-form-label"></label>
				    <div class="col-sm-9">
				      <button type="submit" name="submit" class="btn btn-primary">Submit</button>
				    </div>
				  </div>
				</form>

			</div>
		</div>
	</div>
</div>
<?php }
else {

        $meta_box1 = $_POST['ka_applicant_name'];
        $meta_box2 = $_POST['ka_father_name'];
        $meta_box3 = $_POST['ka_mother_name'];
        $meta_box4 = $_POST['ka_permanent_address'];
        $meta_box5 = $_POST['ka_current_address'];
        $meta_box6 = $_POST['ka_mobile_number'];
        $meta_box7 = $_POST['ka_email'];
        $meta_box8 = $_POST['ka_facebook_link'];
        $meta_box9 = $_POST['ka_nid_number'];
        $meta_box10 = $_POST['ka_date_of_birth'];
        $meta_box11 = $_POST['ka_blood_group'];
        $meta_box12 = $_POST['ka_religion'];
        $meta_box13 = $_POST['ka_education'];
        $meta_box14 = $_POST['ka_profession'];
        $meta_box15 = $_POST['ka_office_address'];

        $new_post = array(
            'post_title'    => $meta_box1,
            'post_status'   => 'publish',           // Choose: publish, preview, future, draft, etc.
            'post_type' => 'register-members'  //'post',page' or use a custom post type if you want to
    );
    //save the new post
    $pid    =   wp_insert_post($new_post, 10, 1);

    // Do the wp_insert_post action to insert it
    do_action('wp_insert_post', 'wp_insert_post', 10, 1); 
    add_post_meta($pid, 'ka_applicant_name', $meta_box1, true);
    add_post_meta($pid, 'ka_father_name', $meta_box2, true);
    add_post_meta($pid, 'ka_mother_name', $meta_box3, true);
    add_post_meta($pid, 'ka_permanent_address', $meta_box4, true);
    add_post_meta($pid, 'ka_current_address', $meta_box5, true);
    add_post_meta($pid, 'ka_mobile_number', $meta_box6, true);
    add_post_meta($pid, 'ka_email', $meta_box7, true);
    add_post_meta($pid, 'ka_facebook_link', $meta_box8, true);
    add_post_meta($pid, 'ka_date_of_birth', $meta_box9, true);
    add_post_meta($pid, 'ka_blood_group', $meta_box10, true);
    add_post_meta($pid, 'ka_religion', $meta_box11, true);
    add_post_meta($pid, 'ka_education', $meta_box12, true);
    add_post_meta($pid, 'ka_profession', $meta_box13, true);
    add_post_meta($pid, 'ka_office_address', $meta_box14, true);

    if($new_post){
	    echo 'Information submitted Successfully.';
	}else{
	    echo 'Unable to submit information.';
	}
    // print '<pre>';
    // var_dump(array($new_post, $pid));
    // print '</pre>';
}
?>
<?php get_footer();?>
<?php
/*
* Registering menu support
*/
 function webgraph_register_menu(){
 	if(function_exists('register_nav_menu')){
 		register_nav_menu('header_top_menu', __('Main Menu', 'webgraph'));
 		register_nav_menu('footer_menu', __('Footer Menu', 'webgraph'));
 	}
 }
 add_action('init', 'webgraph_register_menu');

 /*
* Registering DEFAULT MENU
*/
function default_menu(){
	echo '<ul class="menu-links">';
	if (is_user_logged_in()) {
		echo '<li><a href="'.home_url().'/wp-admin/nav-menus.php">Create Menu</a></li>';
		} else {
			echo '<li><a href="'.home_url().'">Home</a></li>';
		}
	echo "</ul>";
}

/*
* Featured image support
*/
add_theme_support( 'post-thumbnails', array('post','page','slider-items') );
set_post_thumbnail_size(200, 200, true);

// if want to use custom size
add_image_size('blog-image', 311, 181, true);
add_image_size('slider-items', 1920, 1080, true);
add_image_size('recent-post', 69, 47, true);
add_image_size('banner-image', 1920, 249, true);
add_image_size('blog-details-image', 710, 413, true);
/*
* Widget support
*/

function widgets_sidebar() {
    register_sidebar( array(
        'name'          => esc_html__( 'Main Sidebar', 'webgraph' ),
        'id'            => 'widget-home-one',
        'description'   => esc_html__( 'Widgets for sidebar', 'webgraph' ),
        'before_widget' => '<div class="categories no-gutters"><ul>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="aside-title">',
		'after_title'   => '</h2>',
	    ) );

    // footer widget
  //   register_sidebar( array(
  //       'name'          => esc_html__( 'Footer Widget', 'webgraph' ),
  //       'id'            => 'footer-widget',
  //       'description'   => esc_html__( 'Widgets for footer one', 'webgraph' ),
  //       'before_widget' => '<div class="col-lg-3 col-md-6"><div class="usefull-link">',
		// 'after_widget'  => '</div></div>',
		// 'before_title'  => '<h6 class="text-white">',
		// 'after_title'   => '</h6>',
	 //    ) );
}
add_action( 'widgets_init', 'widgets_sidebar' ); 

/*
* custom social link onto user profile
*/

function my_show_extra_profile_fields($user) { ?>

	<h3>Extra profile information</h3>

	<table class="form-table">

		<tr>
			<th><label for="facebook">Facebook</label></th>

			<td>
				<input type="text" name="facebook" id="facebook" value="<?php echo esc_attr( get_the_author_meta( 'facebook', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your facebook username. [e.g http://www.facebook.com/BappyMustafiz]</span>
			</td>
		</tr>
		<tr>
			<th><label for="skype">Skype</label></th>

			<td>
				<input type="text" name="skype" id="skype" value="<?php echo esc_attr( get_the_author_meta( 'skype', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your skype username. [e.g http://www.skype.com/BappyMustafiz]</span>
			</td>
		</tr>
		
		<tr>
			<th><label for="instagram">Instagram</label></th>

			<td>
				<input type="text" name="instagram" id="instagram" value="<?php echo esc_attr( get_the_author_meta( 'instagram', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your instagram username. [e.g http://www.instagram.com/BappyMustafiz]</span>
			</td>
		</tr>

		<tr>
			<th><label for="linkedin">Linkedin</label></th>

			<td>
				<input type="text" name="linkedin" id="linkedin" value="<?php echo esc_attr( get_the_author_meta( 'linkedin', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your linkedin username. [e.g http://www.linkedin.com/BappyMustafiz]</span>
			</td>
		</tr>
		<tr>
			<th><label for="twitter">Twitter</label></th>

			<td>
				<input type="text" name="twitter" id="twitter" value="<?php echo esc_attr( get_the_author_meta( 'twitter', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your twitter username. [e.g http://www.twitter.com/BappyMustafiz]</span>
			</td>
		</tr>
		
	</table>
<?php }

add_action( 'show_user_profile', 'my_show_extra_profile_fields' );
add_action( 'edit_user_profile', 'my_show_extra_profile_fields' );


// save social link
function my_save_extra_profile_fields($user_id) {

	if ( !current_user_can( 'edit_user', $user_id ) )
		return false;

		/* Copy and paste this line for additional fields. Make sure to change 'facebook' to the field ID. */
		update_user_meta( $user_id, 'facebook', $_POST['facebook'] );
		update_user_meta( $user_id, 'skype', $_POST['skype'] );
		update_user_meta( $user_id, 'instagram', $_POST['instagram'] );
		update_user_meta( $user_id, 'linkedin', $_POST['linkedin'] );
		update_user_meta( $user_id, 'twitter', $_POST['twitter'] );
	}
add_action( 'personal_options_update', 'my_save_extra_profile_fields' );
add_action( 'edit_user_profile_update', 'my_save_extra_profile_fields' );

/*
* rearrange comment field as user demand
*/

function rearrange_comment_field( $fields ) {
	$comment_field = $fields['comment'];
	unset( $fields['comment'] );
	$fields['comment'] = $comment_field;
	return $fields;
}
 
add_filter( 'comment_form_fields', 'rearrange_comment_field' );



/*
* custom post
*/
function slider_gallery(){
	register_post_type('slider-items',
		array(
			'labels'=>array(
				'name'               =>__('Slider'), 
				'singular_name'      =>__('Slider'), 
				'menu_name'          =>__('Slider Gallery'), 
				'name_admin_bar'     =>__('Add Slider'), 
				'add_new'            => __( 'Add Slider'),
				'add_new_item'       => __( 'Add New Slider'),
				'new_item'           => __( 'New Slider' ),
				'edit_item'          => __( 'Edit Slider' ),
				'view_item'          => __( 'View Slider' ),
				'all_items'          => __( 'All Slider' ),
				'search_items'       => __( 'Search Slider' ),
				'parent_item_colon'  => __( 'Parent Slider' ),
				'not_found'          => __( 'No Slider Found' ),
				'not_found_in_trash' => __( 'No slider found in Trash.') 
			),
			'public'             => true,
			'has_archive'        => true,
			'rewrite'            => array( 'slug' => 'slider-item' ),
			'menu_position'      => 8,
			'menu_icon'          => 'dashicons-format-gallery',
			'supports'           => array( 'title', 'editor','thumbnail')
		)
	);
}
add_action('init', 'slider_gallery');


/*
* Enable custom post taxnomy (slider gallery)
*/
function slider_gallery_taxonomy(){
	register_taxonomy(
		'slider_cat', //the name of the category, the name should be in slug form(must not contains capital letters or spaces)
		'slider-items', //post type name
		array(
			'hierarchical'      => true,
			'label'            => 'Slider Category',
			'query_var'         => true,
			'rewrite'           => array(
			   'slug' => 'slider-category',//this controls the base slug which displays before each term 
			   'with_front' => true // don't display the category base before

			)	
		)
	);
}

add_action('init', 'slider_gallery_taxonomy');

/*
* Custom meta box
*/
function slider_custom_meta() {
	add_meta_box( 'slider_meta', __( 'Others Section', 'webgraph' ), 'slider_meta_callback', 'slider-items' );
}
add_action( 'add_meta_boxes', 'slider_custom_meta' );

// field creation
function slider_meta_callback( $post ) {
	wp_nonce_field( basename( __FILE__ ), 'slider_nonce' );
	$slider_stored_meta = get_post_meta( $post->ID );
	?>
	<input type="text" name="meta-subtitle-slider" id="meta-text" value="<?php if ( isset ( $slider_stored_meta['meta-subtitle-slider'] ) ) echo $slider_stored_meta['meta-subtitle-slider'][0]; ?>" style="width:100%;font-size:16px; margin-bottom: 20px;" placeholder="Enter Slider Subtitle">

	<input type="text" name="meta-url-slider" id="meta-text" value="<?php if ( isset ( $slider_stored_meta['meta-url-slider'] ) ) echo $slider_stored_meta['meta-url-slider'][0]; ?>" style="width:100%;font-size:16px;" placeholder="Enter Button URL">
	
	<?php
}
//save field value
function slider_meta_save( $post_id ) {
 
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'slider_nonce' ] ) && wp_verify_nonce( $_POST[ 'slider_nonce' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
 
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
		return;
	}
 
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'meta-subtitle-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-subtitle-slider', sanitize_text_field( $_POST[ 'meta-subtitle-slider' ] ) );
	}

	if( isset( $_POST[ 'meta-url-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-url-slider', sanitize_text_field( $_POST[ 'meta-url-slider' ] ) );
	}
	

}
add_action( 'save_post', 'slider_meta_save' );


/*
* member custom post
*/
function registerd_member(){
	register_post_type('register-members',
		array(
			'labels'=>array(
				'name'               =>__('Registerd Members'), 
				'singular_name'      =>__('Register Members'), 
				'menu_name'          =>__('Registerd Members'), 
				'name_admin_bar'     =>__('Add Member'), 
				'add_new'            => __( 'Add Member'),
				'add_new_item'       => __( 'Add New Member'),
				'new_item'           => __( 'New Member' ),
				'edit_item'          => __( 'View Member' ),
				'view_item'          => __( 'View Member' ),
				'all_items'          => __( 'All Members' ),
				'search_items'       => __( 'Search Member' ),
				'parent_item_colon'  => __( 'Parent Member' ),
				'not_found'          => __( 'No Member Found' ),
				'not_found_in_trash' => __( 'No member found in Trash.') 
			),
			'public'             => true,
			'has_archive'        => true,
			'rewrite'            => false,
			'has_archive' => false,
			'menu_position'      => 7,
			'menu_icon'          => 'dashicons-admin-users',
			'supports'           => array( 'title'),
		)
	);
}
add_action('init', 'registerd_member');

/*
* Custom meta box
*/
function member_custom_meta() {
	add_meta_box( 'member_meta', __( 'Member details', 'webgraph' ), 'member_meta_callback', 'register-members' );
}
add_action( 'add_meta_boxes', 'member_custom_meta' );

// field creation
function member_meta_callback( $post ) {
	wp_nonce_field( basename( __FILE__ ), 'new-member' );
	$member_stored_meta = get_post_meta( $post->ID );
	// echo "<pre>";print_r($member_stored_meta);die();
	?>
	<h3>Applicant name : <?php if ( isset ( $member_stored_meta['ka_applicant_name'] ) ) echo $member_stored_meta['ka_applicant_name'][0]; ?></h3>
	<h3>Father's name : <?php if ( isset ( $member_stored_meta['ka_father_name'] ) ) echo $member_stored_meta['ka_father_name'][0]; ?></h3>
	<h3>Mother's name : <?php if ( isset ( $member_stored_meta['ka_mother_name'] ) ) echo $member_stored_meta['ka_mother_name'][0]; ?></h3>
	<h3>Permanent address : <?php if ( isset ( $member_stored_meta['ka_permanent_address'] ) ) echo $member_stored_meta['ka_permanent_address'][0]; ?></h3>
	<h3>Current address : <?php if ( isset ( $member_stored_meta['ka_current_address'] ) ) echo $member_stored_meta['ka_current_address'][0]; ?></h3>
	<h3>Mobile number : <?php if ( isset ( $member_stored_meta['ka_mobile_number'] ) ) echo $member_stored_meta['ka_mobile_number'][0]; ?></h3>
	<h3>Email address : <?php if ( isset ( $member_stored_meta['ka_email'] ) ) echo $member_stored_meta['ka_email'][0]; ?></h3>
	<h3>Facebook link : <?php if ( isset ( $member_stored_meta['ka_facebook_link'] ) ) echo $member_stored_meta['ka_facebook_link'][0]; ?></h3>
	<h3>NID/BC/PN : <?php if ( isset ( $member_stored_meta['ka_nid_number'] ) ) echo $member_stored_meta['ka_nid_number'][0]; ?></h3>
	<h3>Date of birth : <?php if ( isset ( $member_stored_meta['ka_date_of_birth'] ) ) echo $member_stored_meta['ka_date_of_birth'][0]; ?></h3>
	<h3>Blood group : <?php if ( isset ( $member_stored_meta['ka_blood_group'] ) ) echo $member_stored_meta['ka_blood_group'][0]; ?></h3>
	<h3>Religion : <?php if ( isset ( $member_stored_meta['ka_religion'] ) ) echo $member_stored_meta['ka_religion'][0]; ?></h3>
	<h3>Education : <?php if ( isset ( $member_stored_meta['ka_education'] ) ) echo $member_stored_meta['ka_education'][0]; ?></h3>
	<h3>Profession : <?php if ( isset ( $member_stored_meta['ka_profession'] ) ) echo $member_stored_meta['ka_profession'][0]; ?></h3>
	<h3>Office address : <?php if ( isset ( $member_stored_meta['ka_office_address'] ) ) echo $member_stored_meta['ka_office_address'][0]; ?></h3>
	
	<?php
}

function wpse_76815_remove_publish_box() {
    remove_meta_box( 'submitdiv', 'register-members', 'side' );
}
add_action( 'admin_menu', 'wpse_76815_remove_publish_box' );

<?php
/*Remove customize from apperance*/
function webgraph_remove_customize_page(){
	global $submenu;
	unset($submenu['themes.php'][6]); //remove customize link
}
add_action('admin_menu','webgraph_remove_customize_page');

/*adding customizer into menu*/
function webgraph_register_customizer_for_menu_items(){
	add_menu_page('Customizer title', 'Customize theme', 'manage_options', 'customize.php', '', '', 100);
}
add_action('admin_menu','webgraph_register_customizer_for_menu_items');

/*Customizer main*/
function webgraph_customizer($wp_customize){

	/* =========================================== */
	/* ------------ Panel :: Header */
	/* =========================================== */
	$wp_customize->add_panel('header_panel', array(
		'priority' => 9,
		'capability' => 'edit_theme_options',
		'theme_support' => '',
		'title' => __('Header','webgraph'),
		'description' => false,
	));

	// logo
	/* ============ Section =============== */
	$wp_customize->add_section('logo_section', array(
		'title' => 'Site Logo',
		'priority' => 5,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	
	$wp_customize->add_setting('logo', array(
		'default' => '',
		'transport' => 'refresh'
	));

	$wp_customize->add_control(
		new WP_Customize_Image_Control($wp_customize, 'logo', array(
			'section' => 'logo_section',
			'label' => 'Upload Your Logo'
		))
	);
	// favicon
	/* ============ Section =============== */
	$wp_customize->add_section('favicon_section', array(
		'title' => 'Site Favicon',
		'priority' => 6,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	// logo
	$wp_customize->add_setting('favicon', array(
		'default' => '',
		'transport' => 'refresh'
	));

	$wp_customize->add_control(
		new WP_Customize_Image_Control($wp_customize, 'favicon', array(
			'section' => 'favicon_section',
			'label' => 'Upload Your Favicon'
		))
	);

	// header text section
	/* ============ Section =============== */
	$wp_customize->add_section('header_text_section', array(
		'title' => 'Header Contact',
		'priority' => 7,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	// header phone
	$wp_customize->add_setting('header_phone', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('header_phone', array(
			'section' => 'header_text_section',
			'label' => 'Header Phone Number',
			'type' => 'text'
		));
	/* ============ Settings and control =============== */
	// header email
	$wp_customize->add_setting('header_email', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('header_email', array(
			'section' => 'header_text_section',
			'label' => 'Header Email Address',
			'type' => 'text'
		));
	/* =========================================== */
	/* ------------Footer Panel :: Footer */
	/* =========================================== */
	$wp_customize->add_panel('footer_panel',array(
	    'priority'=> 10,
	    'capability' => 'edit_theme_options',
		'theme_support' => '',
		'title' => __('Footer','webgraph'),
		'description' => false,
	));

	// header text section
	/* ============ Section =============== */
	$wp_customize->add_section('footer_text_section', array(
		'title' => 'Footer Contact',
		'priority' => 6,
		'panel' => 'footer_panel'
	));

	/* ============ Settings and control =============== */
	// footer location
	$wp_customize->add_setting('footer_location', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_location', array(
			'section' => 'footer_text_section',
			'label' => 'Footer Location',
			'type' => 'text'
	));

	/* ============ Settings and control =============== */
	// footer phone
	$wp_customize->add_setting('footer_phone', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_phone', array(
			'section' => 'footer_text_section',
			'label' => 'Footer Phone Number',
			'type' => 'text'
		));
	/* ============ Settings and control =============== */
	// footer email
	$wp_customize->add_setting('footer_email', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_email', array(
			'section' => 'footer_text_section',
			'label' => 'Footer Email Address',
			'type' => 'text'
		));
	// footer logo
	/* ============ Section =============== */
	$wp_customize->add_section('footer_logo_section', array(
		'title' => 'Footer Logo',
		'priority' => 7,
		'panel' => 'footer_panel'
	));

	/* ============ Settings and control =============== */
	
	$wp_customize->add_setting('footer_logo', array(
		'default' => '',
		'transport' => 'refresh'
	));

	$wp_customize->add_control(
		new WP_Customize_Image_Control($wp_customize, 'footer_logo', array(
			'section' => 'footer_logo_section',
			'label' => 'Upload Your Logo'
		))
	);
	// footer copyright section
	/* ============ Section =============== */
	$wp_customize->add_section('footer_copyright_section', array(
		'title' => 'Footer Copyright',
		'priority' => 8,
		'panel' => 'footer_panel'
	));

	/* ============ Settings and control =============== */
	// footer location
	$wp_customize->add_setting('footer_copyright', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_copyright', array(
			'section' => 'footer_copyright_section',
			'label' => 'Footer Copyright',
			'type' => 'text'
	));
	// footer copyright section
	/* ============ Section =============== */
	$wp_customize->add_section('footer_copyright_section', array(
		'title' => 'Footer Copyright',
		'priority' => 8,
		'panel' => 'footer_panel'
	));

	/* ============ Settings and control =============== */
	// footer location
	$wp_customize->add_setting('footer_copyright', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_copyright', array(
			'section' => 'footer_copyright_section',
			'label' => 'Footer Copyright',
			'type' => 'text'
	));
	// footer developer
	/* ============ Section =============== */
	$wp_customize->add_section('footer_developer_section', array(
		'title' => 'Footer Developer',
		'priority' => 9,
		'panel' => 'footer_panel'
	));

	/* ============ Settings and control =============== */
	// footer developer
	$wp_customize->add_setting('footer_developer', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_developer', array(
			'section' => 'footer_developer_section',
			'label' => 'Footer Developer Name',
			'type' => 'text'
	));
	/* ============ Settings and control =============== */
	// footer developer url
	$wp_customize->add_setting('footer_developer_url', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('footer_developer_url', array(
			'section' => 'footer_developer_section',
			'label' => 'Footer Developer url',
			'type' => 'url',
			'description' => __( 'This is a developer url input.' ),
			'input_attrs' => array(
	    		'placeholder' => __( 'http://www.url.com' ),
	  ),
	));
}

add_action('customize_register','webgraph_customizer');

// /*Removing live refresh style for customizer */
// function webgraph_customizer_scripts(){
// 	wp_enqueue_script('customizer-scripts', get_template_directory_uri().'/inc/customizer/theme-customize.js', array('jquery', 'customize-preview'), '', true);
// }
// add_action('customize_preview_init', 'webgraph_customizer_scripts');
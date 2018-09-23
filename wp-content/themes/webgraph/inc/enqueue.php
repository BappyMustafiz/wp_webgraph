<?php
/* enqueing css and js*/
function webgraph_cs_js(){
	wp_enqueue_style('webgraph_normalize',get_template_directory_uri().'/assets/css/normalize.css', array(), '1.0.0', 'all');
	wp_enqueue_style('gfonts',webgraph_fonts_url(), array(), '1.0.0');
	wp_enqueue_style('webgraph_bootstrap_css',get_template_directory_uri().'/assets/css/bootstrap.min.css', array(), '1.0.0', 'all');
	wp_enqueue_style('webgraph_fonts',get_template_directory_uri().'/assets/fonts/css/font-awesome.min.css', array(), '1.0.0', 'all');
	wp_enqueue_style('webgraph_main',get_template_directory_uri().'/assets/css/main.css', array(), '1.0.0', 'all');
	wp_enqueue_style('webgraph_manwar',get_template_directory_uri().'/assets/css/manwar.css', array(), '1.0.0', 'all');
	wp_enqueue_style('webgraph_responsive',get_template_directory_uri().'/assets/css/responsive.css', array(), '1.0.0', 'all');
	wp_enqueue_style('custom', get_stylesheet_uri());
	
	if (is_singular() && comments_open() && get_option('thread_comments')) {
	    wp_enqueue_script('comment-reply');
	  }
}
add_action('wp_enqueue_scripts','webgraph_cs_js');

// add google font or any other font
function webgraph_fonts_url(){
	$fonts_url = '';

	$Poppins = _x('on', 'Poppins font: on or off', 'theme-slug');

	if ('off' !== $Poppins) {
		
		$font_families = array();

		if ('off' !== $Poppins) {
			$font_families[] = 'Poppins:300,400,500,500i,600,600i,700,700i,800,800i,900,900i';
		}
	}

	$query_args = array(
		'family' => urlencode(implode('|', $font_families) ),
		'subset' => urlencode('devanagari,latin-ext,latin' ),
	);

	$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );  

	return esc_url_raw($fonts_url);
}
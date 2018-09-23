<?php

require_once(get_template_directory().'/inc/enqueue.php');
require_once(get_template_directory().'/inc/webgraph-theme-setup.php');
require_once(get_template_directory().'/inc/navwalker.php');
require_once(get_template_directory().'/inc/webgraph_default_customize.php');
/**
 * Custom template tags for this theme.
 */
require get_parent_theme_file_path( '/inc/template-tags.php' );
/**
 * SVG icons functions and filters.
 */
require get_parent_theme_file_path( '/inc/icon-functions.php' );

// Redux framework
require_once(get_template_directory().'/redux-framework/ReduxCore/framework.php');
require_once(get_template_directory().'/redux-framework/sample/config.php');

// Codestar theme options for dynamic page
require_once(get_template_directory().'/theme-options/cs-framework.php');

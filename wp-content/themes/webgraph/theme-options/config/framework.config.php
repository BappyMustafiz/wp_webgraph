<?php if ( ! defined( 'ABSPATH' ) ) { die; } // Cannot access pages directly.
// ===============================================================================================
// -----------------------------------------------------------------------------------------------
// FRAMEWORK SETTINGS
// -----------------------------------------------------------------------------------------------
// ===============================================================================================
$settings           = array(
  'menu_title'      => 'Dynamic page options',
  'menu_type'       => 'menu', // menu, submenu, options, theme, etc.
  'menu_slug'       => 'cs-framework',
  'ajax_save'       => false,
  'show_reset_all'  => false,
  'framework_title' => 'Dynamic page options <small>for Webgraph training institute',
);

// ===============================================================================================
// -----------------------------------------------------------------------------------------------
// FRAMEWORK OPTIONS
// -----------------------------------------------------------------------------------------------
// ===============================================================================================
$options        = array();

// ----------------------------------------
// all section for home page
// ----------------------------------------
$options[]   = array(
  'name'     => 'home_sections',
  'title'    => 'Home page',
  'icon'     => 'fa fa-home',
  'sections' => array(

    // -----------------------------
    // begin: text options         -
    // -----------------------------
    array(
      'name'      => 'first_section',
      'title'     => 'How we work section',
      'icon'      => 'fa fa-check',

      // begin: fields
      'fields'    => array(


        // begin: a field
        
        array(
          'id'    => 'first_section_title',
          'type'  => 'text',
          'title' => 'Section title',
          'default' => 'Set section title',
        ),
        array(
          'id'    => 'first_section_title_color',
          'type'  => 'color_picker',
          'title' => 'Section title color',
          'default'=> '#323232'
        ),
        array(
          'id' =>'how_we_work_section_group',
          'type' =>'group',
          'title' =>'Section left details',
          'button_title' =>'Add New',
          'accordion_title' =>'Add New Field',
          'fields'=>array(
               // begin: a field
            array(
              'id'    => 'section_left_icon',
              'type'  => 'image',
              'title' => 'Section left icon image',
            ),
            array(
              'id'    => 'section_left_title',
              'type'  => 'text',
              'title' => 'Section left title',
              'default' => 'set section left title',
            ),
            array(
              'id'    => 'section_left_description',
              'type'  => 'textarea',
              'title' => 'Section left details',
              'default' => ' set section left description....',
            )
          )
        ),
        array(
          'id'    => 'first_section_right_image',
          'type'  => 'image',
          'title' => 'First section main image',
          'help'    => 'The Image Size Must Be 570 x 439 For Perfection',
        ),
        array(
          'id'      => 'first_section_controller',
          'type'    => 'switcher',
          'title'   => 'Disable or Enable first section',
          'default' => true
        ),
      )
    ),
    // owner section
    array(
      'name'      => 'owner_section',
      'title'     => 'Owner Section',
      'icon'      => 'fa fa-check',
      'fields'    => array(

        
        array(
          'id'    => 'owner_image',
          'type'  => 'image',
          'title' => 'Owner main image',
          'help'    => 'The Image Size Must Be 370 x 417 For Perfection',
        ),
        array(
              'id'    => 'owner_name',
              'type'  => 'text',
              'title' => 'Owner Name',
              'default' => 'John Doe',
            ),
        array(
              'id'    => 'owner_designation',
              'type'  => 'text',
              'title' => 'Owner Designation',
              'default' => 'Founder/CEO',
            ),
        array(
              'id'    => 'owner_comment_title',
              'type'  => 'text',
              'title' => 'Owner Comment Title',
              'default' => 'please set comment title',
            ),
        array(
          'id'    => 'owner_comment_title_color',
          'type'  => 'color_picker',
          'title' => 'Owner comment title color',
          'default'=> '#5b9cdf'
        ),
        array(
          'id'    => 'owner_comment_description',
          'type'  => 'textarea',
          'title' => 'Section left details',
          'default' => ' set comment description....',
        ),
        array(
          'id'      => 'owner_section_controller',
          'type'    => 'switcher',
          'title'   => 'Disable or Enable owner section',
          'default' => true
        )
      )
    ),
    // our courses section
    array(
      'name'      => 'our_courses_section',
      'title'     => 'Courses',
      'icon'      => 'fa fa-check',
      'fields'    => array(
              array(
                'id'    => 'our_courses_section_title',
                'type'  => 'text',
                'title' => 'Corses Section title',
                'default' => 'Set section title',
              ),
              array(
                'id' =>'our_courses_section_group',
                'type' =>'group',
                'title' =>'Courses details',
                'button_title' =>'Add New',
                'accordion_title' =>'Add New Field',
                'fields'=>array(
                     // begin: a field
                  array(
                    'id'    => 'course_image',
                    'type'  => 'image',
                    'title' => 'Course image',
                    'help'    => 'The Image Size Must Be 290 x 135 For Perfection',
                  ),
                  array(
                    'id'    => 'course_title',
                    'type'  => 'text',
                    'title' => 'Course Title',
                    'default' => 'Set course title',
                  ),
                  array(
                    'id'    => 'course_price',
                    'type'  => 'text',
                    'title' => 'Course Price',
                    'default' => 'Set course price',
                  ),
                )
              ),
              array(
                'id'      => 'our_courses_section_controller',
                'type'    => 'switcher',
                'title'   => 'Disable or Enable courses section',
                'default' => true
              ),
            )
    ),
    // details counter section
    array(
      'name'      => 'details_counter',
      'title'     => 'Details counter',
      'icon'      => 'fa fa-check',
      'fields'    => array(
              array(
                'id' =>'details_counter_section_group',
                'type' =>'group',
                'title' =>'Counter details',
                'button_title' =>'Add New',
                'accordion_title' =>'Add New Field',
                'fields'=>array(
                     // begin: a field
                  
                  array(
                    'id'    => 'counter_details_name',
                    'type'  => 'text',
                    'title' => 'Counter Title',
                    'default' => 'Set counter title',
                  ),
                  array(
                    'id'    => 'counter_details_image',
                    'type'  => 'image',
                    'title' => 'Counter image',
                    'help'    => 'The Image Size Must Be 50 x 47 For Perfection',
                  ),
                  array(
                    'id'    => 'counter_nummber',
                    'type'  => 'number',
                    'title' => 'Counted details',
                    'default' => 'Set counted details',
                  )
                )
              ),
              array(
                'id'      => 'details_counter_section_controller',
                'type'    => 'switcher',
                'title'   => 'Disable or Enable counter section',
                'default' => true
              ),
            )
    ),
    // trainer section
    array(
      'name'      => 'our_courses_trainer',
      'title'     => 'Our Trainers',
      'icon'      => 'fa fa-check',
      'fields'    => array(
              array(
                'id'    => 'our_trainer_section_title',
                'type'  => 'text',
                'title' => 'Trainer Section title',
                'default' => 'Set section title',
              ),
              array(
                'id' =>'our_trainer_section_group',
                'type' =>'group',
                'title' =>'Trainer details',
                'button_title' =>'Add New',
                'accordion_title' =>'Add New Field',
                'fields'=>array(
                     // begin: a field
                  array(
                    'id'    => 'trainer_image',
                    'type'  => 'image',
                    'title' => 'Trainer image',
                    'help'    => 'The Image Size Must Be 270 x 315 For Perfection',
                  ),
                  array(
                    'id'    => 'trainer_name',
                    'type'  => 'text',
                    'title' => 'Trainer Name',
                    'default' => 'Set trainer name',
                  ),
                  array(
                    'id'    => 'trainer_designation',
                    'type'  => 'text',
                    'title' => 'Trainer Designation',
                    'default' => 'Set trainer designation',
                  ),
                  array(
                    'id'    => 'trainer_facebook',
                    'type'  => 'text',
                    'title' => 'Trainer facebook link',
                    'default' => 'http://www.facebook.com',
                  ),
                  array(
                    'id'    => 'trainer_twitter',
                    'type'  => 'text',
                    'title' => 'Trainer twitter link',
                    'default' => 'http://www.twitter.com',
                  ),
                  array(
                    'id'    => 'trainer_instagram',
                    'type'  => 'text',
                    'title' => 'Trainer instagram link',
                    'default' => 'http://www.instagram.com',
                  ),
                  array(
                    'id'    => 'Trainer_linkedin',
                    'type'  => 'text',
                    'title' => 'Trainer linkedin link',
                    'default' => 'http://www.linkedin.com',
                  ),
                  array(
                    'id'    => 'Trainer_skype',
                    'type'  => 'text',
                    'title' => 'Trainer skype link',
                    'default' => 'http://www.skype.com',
                  ),
                  array(
                    'id'    => 'trainer_description',
                    'type'  => 'textarea',
                    'title' => 'Trainer details',
                    'default' => 'set trainer description....',
                  )
                )
              ),
              array(
                'id'      => 'our_trainer_section_controller',
                'type'    => 'switcher',
                'title'   => 'Disable or Enable trainer section',
                'default' => true
              ),
            )
    ),
    // student opinion section
    array(
      'name'      => 'student_opinion_section',
      'title'     => 'Student opinion',
      'icon'      => 'fa fa-check',
      'fields'    => array(
              array(
                'id'    => 'student_opinion_section_title',
                'type'  => 'text',
                'title' => 'Student Opinion Section title',
                'default' => 'Set section title',
              ),
              array(
                'id' =>'student_opinion_section_group',
                'type' =>'group',
                'title' =>'Student details',
                'button_title' =>'Add New',
                'accordion_title' =>'Add New Field',
                'fields'=>array(
                     // begin: a field
                  array(
                    'id'    => 'student_image',
                    'type'  => 'image',
                    'title' => 'Student image',
                    'help'    => 'The Image Size Must Be 158 x 158 For Perfection',
                  ),
                  array(
                    'id'    => 'student_name',
                    'type'  => 'text',
                    'title' => 'Student name',
                    'default' => 'set student name',
                  ),
                  array(
                    'id'    => 'student_facebook',
                    'type'  => 'text',
                    'title' => 'Student facebook link',
                    'default' => 'http://www.facebook.com',
                  ),
                  array(
                    'id'    => 'student_twitter',
                    'type'  => 'text',
                    'title' => 'Student twitter link',
                    'default' => 'http://www.twitter.com',
                  ),
                  array(
                    'id'    => 'student_instagram',
                    'type'  => 'text',
                    'title' => 'Student instagram link',
                    'default' => 'http://www.instagram.com',
                  ),
                  array(
                    'id'    => 'student_linkedin',
                    'type'  => 'text',
                    'title' => 'Student linkedin link',
                    'default' => 'http://www.linkedin.com',
                  ),
                  array(
                    'id'    => 'student_skype',
                    'type'  => 'text',
                    'title' => 'Student skype link',
                    'default' => 'http://www.skype.com',
                  ),
                  array(
                    'id'    => 'student_description',
                    'type'  => 'textarea',
                    'title' => 'Student details',
                    'default' => 'set student description....',
                  )
                )
              ),
              array(
                'id'      => 'student_opinion_section_controller',
                'type'    => 'switcher',
                'title'   => 'Disable or Enable student opinion section',
                'default' => true
              ),
            )
    )
  )
);

// ----------------------------------------
// a option section for about us page  -
// ----------------------------------------
$options[]   = array(
  'name'     => 'about_us_sections',
  'title'    => 'About Us page',
  'icon'     => 'fa fa-user',
  'sections' => array(

    // -----------------------------
    // begin: text options         -
    // -----------------------------
    
    // who we are section
    array(
      'name'      => 'about_who_section',
      'title'     => 'Our Introduction',
      'icon'      => 'fa fa-check',
      'fields'    => array(

        
        array(
          'id'    => 'about_who_image',
          'type'  => 'image',
          'title' => 'Introduction main image',
          'help'    => 'The Image Size Must Be 501 x 439 For Perfection',
        ),
        array(
              'id'    => 'about_who_title',
              'type'  => 'text',
              'title' => 'Introduction title',
              'default' => 'WHO WE ARE',
            ),
        array(
          'id'    => 'about_who_description',
          'type'  => 'textarea',
          'title' => 'About us description',
          'default' => ' set about us description....',
        ),
        array(
          'id'      => 'about_who_section_controller',
          'type'    => 'switcher',
          'title'   => 'Disable or Enable about us section',
          'default' => true
        )
      )
    ),
    array(
      'name'      => 'wroking_process_section',
      'title'     => 'About our work process',
      'icon'      => 'fa fa-check',

      // begin: fields
      'fields'    => array(


        // begin: a field
        
        array(
          'id'    => 'wroking_process_section_title',
          'type'  => 'text',
          'title' => 'Our work title',
          'default' => 'Set section title',
        ),
        array(
          'id' =>'wroking_process_section_group',
          'type' =>'group',
          'title' =>'Work section left details',
          'button_title' =>'Add New',
          'accordion_title' =>'Add New Field',
          'fields'=>array(
               // begin: a field
            array(
              'id'    => 'wroking_process_left_icon',
              'type'  => 'image',
              'title' => 'Section left icon image',
            ),
            array(
              'id'    => 'wroking_process_left_title',
              'type'  => 'text',
              'title' => 'Work process left title',
              'default' => 'set section left title',
            ),
            array(
              'id'    => 'wroking_process_left_description',
              'type'  => 'textarea',
              'title' => 'Section left details',
              'default' => ' set section left description....',
            )
          )
        ),
        array(
          'id'    => 'wroking_process_section_right_image',
          'type'  => 'image',
          'title' => 'Our work process main image',
          'help'    => 'The Image Size Must Be 570 x 439 For Perfection',
        ),
        array(
          'id'      => 'wroking_process_section_controller',
          'type'    => 'switcher',
          'title'   => 'Disable or Enable work process section',
          'default' => true
        ),
      )
    ),
  )
);


CSFramework::instance( $settings, $options );

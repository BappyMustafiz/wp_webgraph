<?php
/*
 * Template Name: Homepage 
 */
get_header();?>
<?php get_template_part('slider');?>

 <!-- How we work section start -->
<?php 
    if(cs_get_option('first_section_controller')):
?>
<div id="how-we-work">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="how-we-work">
                    <div class="how-we-work-title">
                        <p style="color: <?= esc_html(cs_get_option( 'first_section_title_color' ));?>"><?= esc_html(cs_get_option( 'first_section_title' ));?></p>
                        <hr class="how-we-work-hr">
                    </div>
                    <?php 
                        $how_we_work_section_group_data = cs_get_option('how_we_work_section_group');
                        
                        foreach($how_we_work_section_group_data as $how_we_work_data){
                    ?>
                    <div class="row">
                        <div class="col-md-2 col-sm-2 col-lg-2 col-xl-2">
                            <div class="how-we-work-section-image">
                                <?php
                                    $image_id = $how_we_work_data['section_left_icon'];
                                    $work_image = wp_get_attachment_image_src( $image_id, 'full' );
                                ?>
                                <img src="<?= $work_image[0];?>" alt="how-we-work">
                            </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-10 col-sm-10 col-lg-10 col-xl-10">
                            <div class="how-we-work-section-title">
                                <p><?= esc_html($how_we_work_data['section_left_title'] );?></p>
                            </div>
                            <div class="how-we-work-section-desc">
                                <p><?= esc_html($how_we_work_data['section_left_description'] );?></p>
                            </div>
                        </div>
                        <!--.col-->
                    </div>
                    <?php }?>
                </div>
            </div>
            <!--.col-->
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="how-we-work-image">
                    <?php 
                        $image_id = cs_get_option( 'first_section_right_image' );
                        $first_section_image = wp_get_attachment_image_src( $image_id, 'full' );
                    ?>
                    <img src="<?= $first_section_image[0];?>" alt="how-we-work" class="img-fluid">
                </div>
            </div>
            <!--.col-->
        </div>
        <!--.row-->
    </div>
    <!--.container-->
</div>
<?php endif;?>
<!-- How we work section end -->
<!-- Introduction section start -->
<?php 
    if(cs_get_option('owner_section_controller')):
?>
<div class="introduction" id="introduction">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="introduction-image">
                    <?php 
                        $image_id = cs_get_option( 'owner_image' );
                        $owner_image = wp_get_attachment_image_src( $image_id, 'full' );
                    ?>
                    <img src="<?= $owner_image[0];?>" alt="about-us" class="img-fluid">
                </div>
            </div><!--.col-->
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                <div class="introduction-content">
                    <div class="row">
                        <div class="owner-title">
                            <p>Hi, I’m <?= esc_html(cs_get_option( 'owner_name' ));?></p>
                        </div>
                    </div><!--.row-->
                    <div class="row">
                        <div class="owner-designation">
                            <p><?= esc_html(cs_get_option( 'owner_designation' ));?></p>
                        </div>
                    </div><!--.row-->
                    <div class="row">
                        <div class="owner-comment">
                            <p style="color: <?= cs_get_option( 'owner_comment_title_color' );?>"><?= esc_html(cs_get_option( 'owner_comment_title' ));?></p>
                        </div>
                    </div><!--.row-->
                    <div class="row">
                        <div class="owner-comment-short-desc">
                            <p><?= esc_html(cs_get_option( 'owner_comment_description' ));?></p>
                        </div>
                    </div><!--.row-->
                </div>
            </div><!--.col-->
        </div><!--.row-->
    </div><!--.container-->
</div>
<?php endif;?>
<!-- Introduction section end -->
<!-- Our coursrs start -->
<?php 
    if(cs_get_option('our_courses_section_controller')):
?>
<div class="our-coursrs-section">
    <div class="container">
        <div class="row">
            <div class="our-courses-title">
                <p><?= esc_html(cs_get_option( 'our_courses_section_title' ));?></p>
                <hr class="our-courses-title-hr">
            </div>
        </div><!--.row-->
        <div class="row">
            <?php 
                $our_courses_section_group_data = cs_get_option('our_courses_section_group');
                // echo "<pre>";die(var_dump($our_courses_section_group_data));

                $latest_course_data = array_slice($our_courses_section_group_data, -3, 3, true);
                foreach($latest_course_data as $latest_course){
            ?>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="single-course text-align-center">
                    <?php
                        $image_id = $latest_course['course_image'];
                        $course_image = wp_get_attachment_image_src( $image_id, 'full' );
                    ?>
                    <img class="img-fluid" src="<?= $course_image[0];?>" alt="Course Image">
                    <h5><?= esc_html($latest_course['course_title'] );?></h5>
                    <h1><?= esc_html($latest_course['course_price'] );?></h1>
                    <a href="<?php get_template_directory_uri()?>course-details"><button>Read More</button></a>
                </div>
            </div>
            <?php }?>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="load-more-button-area text-align-center">
                    <a href="<?php get_template_directory_uri()?>courses"><button>View More</button></a>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif;?>
<!-- Our courses end -->
<!-- Our trainer section start -->
<?php 
    if(cs_get_option('our_trainer_section_controller')):
?>
<div class="our-trainer" id="trainer">
   <div class="container">
      <div class="row">
         <div class="our-trainer-title">
            <p><?= esc_html(cs_get_option( 'our_trainer_section_title' ));?></p>
            <hr class="our-trainer-title-hr">
         </div>
      </div>
      <div class="wrapper">
         <div class="content-wrapper">
            <div class="tab-content active">
               <div class="our-courses-total">
                  <div class="row">
                    <?php 
                        $our_trainer_section_group_data = cs_get_option('our_trainer_section_group');
                        $our_trainer_data = array_slice($our_trainer_section_group_data, -4, 4, true);
                        foreach($our_trainer_data as $trainer_data){
                    ?>
                    <div class="col-md-3 col-sm-6">
                        <div class="profile_card">
                           <div class="profile_inner">
                              <div class="profile_img">
                                <?php
                                    $image_id = $trainer_data['trainer_image'];
                                    $trainer_image = wp_get_attachment_image_src( $image_id, 'full' );
                                ?>
                                 <img src="<?= $trainer_image[0];?>" alt="trainer" class="img-fluid" />
                              </div>
                              <div class="over_layer">
                                 <ul class="social_links">
                                    <li><a href="<?= esc_html($trainer_data['trainer_facebook'] );?>" target="_blank" class="fa fa-facebook"></a></li>
                                    <li><a href="<?= esc_html($trainer_data['trainer_twitter'] );?>" target="_blank" class="fa fa-twitter"></a></li>
                                    <li><a href="<?= esc_html($trainer_data['trainer_instagram'] );?>" target="_blank" class="fa fa-instagram"></a></li>
                                    <li><a href="<?= esc_html($trainer_data['trainer_linkedin'] );?>" target="_blank" class="fa fa-linkedin"></a></li>
                                    <li><a href="<?= esc_html($trainer_data['trainer_skype'] );?>" target="_blank" class="fa fa-skype"></a></li>
                                 </ul>
                                 <p><?= esc_html($trainer_data['trainer_description'] );?></p>
                              </div>
                           </div>
                           <div class="profile_contact">
                              <h3><?= esc_html($trainer_data['trainer_name'] );?>
                                 <span><?= esc_html($trainer_data['trainer_designation'] );?></span>
                              </h3>
                           </div>
                        </div>
                    </div>
                    <?php }?>
                  </div>
                  <!--.row-->
                  <div class="row">
                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="load-more-button-area text-align-center">
                           <a href="<?php get_template_directory_uri()?>trainers"><button>View More</button></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--.container-->
</div>
<?php endif;?>
<!-- Our trainer section end -->
<!-- Our details section start -->
<?php 
    if(cs_get_option('details_counter_section_controller')):
?>
<div class="our-details">
    <div class="container">
        <div class="row">
            <?php 
                $details_counter_section_group_data = cs_get_option('details_counter_section_group');
                $details_counter_data = array_slice($details_counter_section_group_data, -4, 4, true);
                foreach($details_counter_data as $counter_data){
            ?>
                <div class="col-md-3 col-sm-6">
                    <div class="our-details-package">
                        <div class="row">
                            <div class="col-md-3 col-sm-3">
                                <div class="our-details-package-image">
                                    <?php
                                        $image_id = $counter_data['counter_details_image'];
                                        $counter_image = wp_get_attachment_image_src( $image_id, 'full' );
                                    ?>
                                    <img src="<?= $counter_image[0];?>" alt="Our details">
                                </div>
                            </div>
                            <div class="col-md-9 col-sm-9">
                                <div class="our-details-count">
                                    <p class="timer count-title count-number" data-to="<?= esc_html($counter_data['counter_nummber'] );?>" data-speed="1500"></p>
                                    <hr class="our-details-count-hr">
                                </div>
                                <div class="our-details-title">
                                    <p><?= esc_html($counter_data['counter_details_name'] );?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }?>
        </div>
        <!--.row-->
    </div>
    <!--.container-->
</div>
<?php endif;?>
<!-- Our details section end -->
<!-- Testimonial section start -->
<?php 
    if(cs_get_option('student_opinion_section_controller')):
?>
<div class="student-opinion" id="studentOpinion">
    <div class="container">
        <div class="row">
            <div class="student-opinion-title">
                <p><?= esc_html(cs_get_option( 'student_opinion_section_title' ));?></p>
                <hr class="student-opinion-title-hr">
            </div>
        </div><!--.row-->
        <div class="row">
            <div class="testimonials">
                <div class="col-md-12 col-sm-12">
                    <div class="test-body">
                        <div class="row">
                    <?php 
                        $student_opinion_section_group_data = cs_get_option('student_opinion_section_group');
                        $student_opinion_data = array_slice($student_opinion_section_group_data, -3, 3, true);
                        foreach($student_opinion_data as $student_data){
                    ?>
                    <div class="col-md-4 col-sm-12">
                        <div class="item">
                            <?php
                                $image_id = $student_data['student_image'];
                                $student_image = wp_get_attachment_image_src( $image_id, 'full' );
                            ?>
                            <img src="<?= $student_image[0];?>" class="img-fluid" alt="student">
                            <div class="name"><?= esc_html($student_data['student_name'] );?></div>
                            <div class="share">
                                <a href="<?= esc_html($student_data['student_facebook'] );?>" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="<?= esc_html($student_data['student_twitter'] );?>" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="<?= esc_html($student_data['student_instagram'] );?>" target="_blank"><i class="fa fa-instagram"></i></a>
                                <a href="<?= esc_html($student_data['student_linkedin'] );?>" target="_blank"><i class="fa fa-linkedin"></i></a>
                                <a href="<?= esc_html($student_data['student_skype'] );?>" target="_blank"><i class="fa fa-skype"></i></a>
                            </div>
                            <p><?= esc_html($student_data['student_description'] );?></p>
                        </div>
                    </div>
                        <?php }?>
                    </div>
                    </div>
                </div>
            </div>
        </div><!--.row-->
    </div><!--.container-->
</div>
<?php endif;?>
<!-- Testimonial section end -->

<?php get_footer();?>
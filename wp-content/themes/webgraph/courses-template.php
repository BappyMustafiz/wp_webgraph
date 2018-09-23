<?php
/*
 * Template Name: Courses page 
 */
get_header();?>
<!-- breadcrum start -->
<?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'banner-image');?>
<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="breadcrum_content">
        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ <?php the_title();?></h2>
        <hr>
    </div>
</div>

<!-- breadcrum end -->
<div class="our-coursrs-section-single">
    <div class="container">
        <div class="row">
            <?php 
                $our_courses_section_group_data = cs_get_option('our_courses_section_group');
                foreach($our_courses_section_group_data as $our_courses_data){
            ?>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="single-course text-align-center">
                    <?php
                        $image_id = $our_courses_data['course_image'];
                        $course_image = wp_get_attachment_image_src( $image_id, 'full' );
                    ?>
                    <img class="img-fluid" src="<?= $course_image[0];?>" alt="Course Image">
                    <h5><?= esc_html($our_courses_data['course_title'] );?></h5>
                    <h1><?= esc_html($our_courses_data['course_price'] );?></h1>
                    <a href="#!"><button>Read More</button></a>
                </div>
            </div>
            <?php }?>
        </div>
    </div>
</div>
<?php get_footer();?>
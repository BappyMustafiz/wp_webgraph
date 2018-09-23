<?php
/*
 * Template Name: Testimonial page 
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
<div class="student-opinion-single" id="studentOpinion">
    <div class="container">
        <div class="row">
            <div class="testimonials">
                <div class="col-md-12 col-sm-12">
                    <div class="test-body">
                        <div class="row">
                    <?php 
                        $student_opinion_section_group_data = cs_get_option('student_opinion_section_group');
                        foreach($student_opinion_section_group_data as $student_data){
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
<?php get_footer();?>
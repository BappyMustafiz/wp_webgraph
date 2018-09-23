<?php
/*
 * Template Name: About us page 
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
<!-- about start -->
<?php 
    if(cs_get_option('about_who_section_controller')):
?>
<div class="about">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="image-area">
                    <?php 
                        $image_id = cs_get_option( 'about_who_image' );
                        $about_who_image = wp_get_attachment_image_src( $image_id, 'full' );
                    ?>
                    <img class="img-fluid" src="<?= $about_who_image[0];?>" alt="About Us Image 01">
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="about-content-area">
                    <h3><?= esc_html(cs_get_option( 'about_who_title' ));?></h3>
                    <p><?= esc_html(cs_get_option( 'about_who_description' ));?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif;?>
<!-- about end -->

<!-- How we work start -->
<?php 
    if(cs_get_option('wroking_process_section_controller')):
?>
<div id="how-we-work">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="how-we-work">
                    <div class="how-we-work-title">
                        <p><?= esc_html(cs_get_option( 'wroking_process_section_title' ));?></p>
                        <hr class="how-we-work-hr">
                    </div>
                    <?php 
                        $wroking_process_section_group_data = cs_get_option('wroking_process_section_group');
                        
                        foreach($wroking_process_section_group_data as $wroking_process_data){
                    ?>
                    <div class="row">
                        <div class="col-md-2 col-sm-2 col-lg-2 col-xl-2">
                            <div class="how-we-work-section-image">
                                <?php
                                    $image_id = $wroking_process_data['wroking_process_left_icon'];
                                    $wroking_process_image = wp_get_attachment_image_src( $image_id, 'full' );
                                ?>
                                <img src="<?= $wroking_process_image[0];?>" alt="how-we-work">
                            </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-10 col-sm-10 col-lg-10 col-xl-10">
                            <div class="how-we-work-section-title">
                                <p><?= esc_html($wroking_process_data['wroking_process_left_title'] );?></p>
                            </div>
                            <div class="how-we-work-section-desc">
                                <p><?= esc_html($wroking_process_data['wroking_process_left_description'] );?></p>
                            </div>
                        </div>
                        <!--.col-->
                    </div>
                    <?php }?>
                </div>
            </div>
            <!--.col-->
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="how-we-work-image">
                    <img src="<?= get_template_directory_uri()?>/assets/img/how_we_work_image.png" alt="how-we-work" class="img-fluid">
                </div>
            </div>
            <!--.col-->
        </div>
        <!--.row-->
    </div>
    <!--.container-->
</div>
<?php endif;?>
<!-- How we work end -->
<?php get_footer();?>
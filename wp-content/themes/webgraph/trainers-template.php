<?php
/*
 * Template Name: Trainer page 
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
        <div class="wrapper">
             <div class="content-wrapper">
                <div class="tab-content active">
                   <div class="our-courses-total">
                      <div class="row">
                        <?php 
                            $our_trainer_section_group_data = cs_get_option('our_trainer_section_group');
                            foreach($our_trainer_section_group_data as $trainer_data){
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
                   </div>
                </div>
             </div>
          </div>
    </div>
</div>
<?php get_footer();?>
<?php get_header();?>
<?php get_header();?>
<?php if(have_posts()) : while(have_posts()) : the_post();?>
  <?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'slider-items');?>
<!-- breadcrum start -->
<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="breadcrum_content">
        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ <?= the_title();?></h2>
        <hr>
    </div>
</div>
<!-- breadcrum end -->
<?php endwhile;?> 
<?php endif;?>


<div class="blog-details-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12"> 
            	<div class="blog_area">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<?php if(have_posts()) : while(have_posts()) : the_post();?>
                            <div class="blog-details">
                                <div class="blog-details-image-area">
                                    <?php the_post_thumbnail( 'slider-items',  array('class' => 'img-fluid') ); ?>
                                </div>
                                <div class="blog-details-content">
                                    <h3><?php the_title();?></h3>
                                    <p><?php the_content();?></p>
                                    <div class="blog-details-tag">
                                        <?php the_tags('','',''); ?>
                                    </div>
                                </div>
                            </div>
                            <?php endwhile;?>  
            				<?php endif;?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <?php get_sidebar();?>
            </div> 
        </div>
    </div>  
</div>
<?php get_footer();?>
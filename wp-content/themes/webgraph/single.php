<?php get_header();?>
<?php if(have_posts()) : while(have_posts()) : the_post();?>
  <?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'banner-image');?>
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
                                    <?php the_post_thumbnail( 'blog-details-image',  array('class' => 'img-fluid') ); ?>
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
                            <div class="related-post-area">
                                <h2 class="aside-title">Related Post</h2>
                                <div class="row">
                                	<?php
					                  $tags = wp_get_post_tags($post->ID);
					                  
					                  if ($tags) {
					                    $first_tag = $tags[0]->term_id;
					                    
					                    $my_query = new WP_Query(array(
					                      'tag__in' => array($first_tag),
					                      'post__not_in' => array($post->ID),
					                      'posts_per_page'=>3,
					                      'caller_get_posts'=>1
					                    ));
					                    
					                    
					                    if( $my_query->have_posts() ) {
					                    while ($my_query->have_posts()) : $my_query->the_post();
					                ?>
                                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                                        <div class="related-post">
                                            <div class="related-post-image">
                                                <?php the_post_thumbnail( 'blog-image',  array('class' => 'img-fluid') ); ?>
                                            </div>
                                            <a href="<?php the_permalink();?>"><h5><?php the_title();?></h5></a>
                                            <p><?php the_time('M d, Y');?></p>
                                        </div>
                                    </div>
                                    <?php
					                  endwhile;
					                  }
					                  wp_reset_query();
					                  }
				                 	?>
                                </div>
                            </div>
                            <div class="published-post-area">
                                <h2 class="aside-title">Published By</h2>
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="published-content">
                                            <div class="published-content-image">
                                                <?php echo get_avatar( get_the_author_meta('ID'), $size, $default, $alt, $args ); ?>
                                            </div>
                                            <div class="published-content-details">
                                                <h3><?php the_author_posts_link();?></h3>
                                                <!-- <p>Product Designer</p> -->
                                                <a>Total <?php echo get_the_author_posts();?> posts</a>
                                                <p><?php the_author_meta('description');?></p>
                                                <div class="published-social">
                                                    <ul>
                                                        <li><a href="<?php the_author_meta('facebook');?>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                        <li><a href="<?php the_author_meta('skype');?>" target="_blank"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                                        <li><a href="<?php the_author_meta('instagram');?>" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                        <li><a href="<?php the_author_meta('linkedin');?>" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                                        <li><a href="<?php the_author_meta('twitter');?>" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<hr>
                            <div class="published-post-area">
                                <?php comments_template('', true); ?>
                            </div>
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
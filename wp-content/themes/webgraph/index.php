<?php get_header();?>
<!-- breadcrum start -->
<?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'banner-image');?>
<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="breadcrum_content">
        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ Blog</h2>
        <hr>
    </div>
</div>
<!-- breadcrum end -->


<div class="blog_content">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="blog_area">
                    <div class="row">
                        <?php
                            if ( have_posts() ) :
                            while ( have_posts() ) : the_post(); 
                        ?>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div class="single_blog">
                                <div class="blog-card">
                                    <?php the_post_thumbnail( 'blog-image',  array('class' => 'img-fluid') ); ?>
                                    <div class="blog-card-body">
                                        <h5 class="card-title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h5>
                                        <div class="blog_profile">
                                            <img src="<?php echo get_template_directory_uri()?>/assets/img/blog_profile.png" alt="">
                                            <h6><?php the_author();?></h6>
                                        </div>
                                        <p class="card-text"><?= wp_trim_words(get_the_content(),20);?></p>
                                        <h6><i class="fa fa-comment-o" aria-hidden="true"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?><span class="blog-date"><i class="fa fa-calendar-o" aria-hidden="true"></i></span> <?php the_time('M d, Y');?></h6>
                                        <div class="main-page-button">
                                            <a href="<?php the_permalink();?>">Read More</a>
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                            endwhile;
                        ?>
                        <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
                                <div class="pagination-area">
                                    <ul class="pagination">
                                        <?php echo paginate_links(); ?>
                                    </ul>
                                </div>
                            </div>
                        <?php
                            else :

                                get_template_part( 'template-parts/post/content', 'none' );

                            endif;
                        ?>
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
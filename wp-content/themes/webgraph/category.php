<?php get_header();?>
<!-- breadcrum start -->
<?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'banner-image');?>
<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="breadcrum_content">
        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ Category</h2>
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
                            get_template_part( 'template-parts/post/content', get_post_format() );

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
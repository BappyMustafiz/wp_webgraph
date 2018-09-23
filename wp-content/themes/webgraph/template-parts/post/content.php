<?php
/**
 * Template part for displaying posts
 *
 */

?>

<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12" <?php post_class(); ?>>
    <div class="single_blog" id="post-<?php the_ID(); ?>">
        <div class="blog-card">
			<?php if ( '' !== get_the_post_thumbnail() && ! is_single() ) : ?>
				<div class="card-img-top">
					<?php the_post_thumbnail( 'blog-image',  array('class' => 'img-fluid') ); ?>
				</div><!-- .post-thumbnail -->
			<?php endif; ?>
            <div class="blog-card-body">
                	<?php
                		if ( is_single() ) {
							the_title( '<h5 class="card-title">', '</h5>' );
						} elseif ( is_front_page() && is_home() ) {
							the_title( '<h5 class="card-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h5>' );
						} else {
							the_title( '<h5 class="card-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h5>' );
						}
                	?>
                <div class="blog_profile">
                    <img src="<?= get_template_directory_uri();?>/assets/img/blog_profile.png" alt="">
                    <h6>Khaza Nazimuddin</h6>
                </div>
                <p class="card-text">
						<?= wp_trim_words(get_the_content(),20);?>
                </p>
                <h6><i class="fa fa-comment-o" aria-hidden="true"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?><span class="blog-date"><i class="fa fa-calendar-o" aria-hidden="true"></i></span>
                	<?php
						if ( 'post' === get_post_type() ) {
								if ( is_single() ) {
									the_time('M d, Y');
								} else {
									echo the_time('M d, Y');
									?>
									<br><br>
									<?php
									webgraph_edit_link();
								};
						};
					?>
             </h6>
             <div class="inner-page-button">
             	<a href="<?php the_permalink();?>">Read More</a>
             </div>
            </div>
        </div>
    </div>
</div>
<?php 
wp_link_pages( array(
		'before'      => '<div class="page-links">' . __( 'Pages:', 'webgraph' ),
		'after'       => '</div>',
		'link_before' => '<span class="page-number">',
		'link_after'  => '</span>',
	) );
	?>

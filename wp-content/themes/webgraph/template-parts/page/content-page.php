<?php
/**
 * Template part for displaying page content in page.php
 *
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'slider-items');?>
	<div class="breadcrum img-fluid img-responsive" style="background: url(<?= $banner_image_url[0];?>); background-size: cover;">
	    <div class="breadcrum_content">
	        <h2><a href="<?php echo esc_url(home_url('/')); ?>">Home </a>/ <?= the_title();?></h2>
	        <hr>
	    </div>
	</div>
	<div class="container" style="padding-top: 100px;">
		<?php
			the_content();

			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'webgraph' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->
</article><!-- #post-## -->

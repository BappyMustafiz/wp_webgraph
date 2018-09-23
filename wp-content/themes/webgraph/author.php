<?php get_header();?>
<!-- breadcrum start -->
<div class="breadcrum img-fluid img-responsive">
    <div class="breadcrum_content">
        <h2><a href="#!">Home </a>/ Author</h2>
        <hr>
    </div>
</div>
<!-- breadcrum end -->
<div class="container">
    <div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="author-details-page">
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<div class="author-details-left">
							<div class="card">
							  <div class="card-banner">
							    <div class="card-profile">
							    	<?php echo get_avatar( get_the_author_meta('ID'), $size, $default, $alt, $args ); ?>
							    </div>
							    <h3><?php the_author();?></h3>
							    <a><?php the_author_meta('email'); ?></a>
							    <p>Total posts: <?php echo get_the_author_posts();?></p>
							    <ul>
							    <a href="<?php the_author_meta('facebook');?>" target="_blank"><i class="fa fa-facebook" style="font-size:16px"></i></a>
							    <a href="<?php the_author_meta('skype');?>" target="_blank"><i class="fa fa-skype" style="font-size:16px"></i></a>
							    <a href="<?php the_author_meta('instagram');?>" target="_blank"><i class="fa fa-instagram" style="font-size:16px"></i></a>
							    <a href="<?php the_author_meta('linkedin');?>" target="_blank"><i class="fa fa-linkedin" style="font-size:16px"></i></a>
							    <a href="<?php the_author_meta('twitter');?>" target="_blank"><i class="fa fa-twitter" style="font-size:16px"></i></a>
							    </ul>
							  </div>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-sm-12">
						<div class="author-recent-posts">
							<div class="row">
							<?php $i = 0;?>  
							<?php if(have_posts()) : while(have_posts()) : the_post();?>
							<?php if($i==0 || $i==1 || $i==2){?>
								<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
	                                <div class="single_blog">
	                                    <div class="blog-card">
	                                        <?php the_post_thumbnail( 'blog-image',  array('class' => 'img-fluid') ); ?>
	                                        <div class="blog-card-body">
	                                            <h5 class="card-title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h5>
	                                            <p class="card-text"><?= wp_trim_words(get_the_content(),20);?></p>
	                                            <h6><i class="fa fa-comment-o" aria-hidden="true"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?><span class="blog-date"><i class="fa fa-calendar-o" aria-hidden="true"></i></span> <?php the_time('M d, Y');?></h6>
	                                            <div class="main-page-button">
		                                            <a href="<?php the_permalink();?>">Read More</a>
		                                        </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
							<?php } $i++;?>
						    <?php endwhile; else :?>
						       <p><?php esc_html_e('Sorry, No posts found...');?></p>  
						    <?php endif;?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr>
		</div>
	</div>
</div>
<div class="blog_content">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="blog_area">
                    <div class="row">
                    <?php $i = 0;?>  
				    <?php if(have_posts()) : while(have_posts()) : the_post();?>
				    <?php if($i !=0 && $i!=1 && $i!=2){?>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div class="single_blog">
                                <div class="blog-card">
                                    <?php the_post_thumbnail( 'blog-image',  array('class' => 'img-fluid') ); ?>
                                    <div class="blog-card-body">
                                        <h5 class="card-title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h5>
                                        <p class="card-text"><?= wp_trim_words(get_the_content(),20);?></p>
                                        <h6><i class="fa fa-comment-o" aria-hidden="true"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?><span class="blog-date"><i class="fa fa-calendar-o" aria-hidden="true"></i></span> <?php the_time('M d, Y');?></h6>
                                        <div class="main-page-button">
                                            <a href="<?php the_permalink();?>">Read More</a>
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } $i++;?>
				    <?php endwhile; else :?>
						<div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
                            <div class="pagination-area">
                                <ul class="pagination">
                                    <?php echo paginate_links(); ?>
                                </ul>
                            </div>
                        </div>
				        <?php get_template_part( 'template-parts/post/content', 'none' );  ?>
				    <?php endif;?>
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
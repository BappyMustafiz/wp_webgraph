<div class="row">
    <div class="search-area col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <form action="<?php echo home_url('/');?>" method="GET">
            <div class="row no-gutters">
                <div class="col">
                    <input class="form-control border-secondary border-right-0 rounded-0" type="search" placeholder="Search" id="example-search-input4" name="s" value="">
                </div>
                <div class="col-auto">
                    <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
    <div class="search-area col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="categories no-gutters">
            <h2 class="aside-title">Categories</h2>
            <ul>
                <?php
                  $args = array(
                     'order_by'=>'slug', 
                     'parent'  => 0 
                  );

                  $categories = get_categories($args);
                  foreach ($categories as $category) {
                    echo '<li><a href="'.get_category_link($category->term_id).'" rel="bookmark"> <i class="fa fa-angle-right">'.' '.$category->name.'</i>' .' '.$category->description. '</a></li>';
                  }
                ?>
               </ul>
        </div>
    </div>
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="categories no-gutters">
            <h2 class="aside-title">Recent Post</h2>
            <div class="row">
                <?php
                  global $post;
                  $args = array( 'posts_per_page' => 3, 'order'=> 'DESC', 'orderby' => 'post_date' );
                  $postslist = get_posts( $args );
                  foreach ( $postslist as $post ) :
                    setup_postdata( $post ); ?>
                    <div class="col-md-12">
                        <div class="recent-post">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 recent-post-image">
                                    <?php the_post_thumbnail('recent-post', array('class' => 'img-fluid'));?>
                                </div>
                                <div class="col-md-9 col-sm-9 recent-post-content-column">
                                    <div class="recent-post-content">
                                        <a href="<?php the_permalink();?>"><?php the_title(); ?></a>
                                        <p>Date: <?php the_time('M d, Y');?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
                    endforeach; 
                    wp_reset_postdata();
                ?>
            </div>
        </div>
    </div>
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="tags no-gutters">
            <h2 class="aside-title">Tags</h2>
            <?php the_tags(' ', ' ', ' '); ?>
        </div>
    </div>
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <?php dynamic_sidebar('widget-home-one')?>
    </div>
</div>
<section>
  <div id="carousel-1" class="carousel slide" data-ride="carousel">
       
        <div class="carousel-inner" role="listbox">
          <?php
            global $post;
            $i=0;
            $args = array('posts_per_page' => -1, 'post_type'=> 'slider-items','page'=> $paged, 'order' => 'DESC');
            $myposts = get_posts( $args );
            foreach( $myposts as $post ) : setup_postdata($post);
            $large_image_url = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'slider-items');  
            $i++;
            $this_id = get_the_ID(); 
            global $wpdb;
            $m_name_subtitle = '';
            $tbl_postmeta = $wpdb->prefix."postmeta";     
            $meta_name_subtitle = 'meta-subtitle-slider';     
            $query_result = "select * from $tbl_postmeta where post_id='$this_id' AND meta_key='$meta_name_subtitle'";
            $result = $wpdb->get_results($query_result);
            foreach($result as $row)
            {
              $m_name_subtitle = $row->meta_value;
            }
          ?>
          <?php if($i == 1):?>
            <div class="carousel-item active">
          <?php else :?>
            <div class="carousel-item">    
          <?php endif; ?>    
              <img class="d-block img-fluid" src="<?php echo $large_image_url[0];  ?>" alt="slide">
              <div class="carousel-caption d-none d-md-block">
                <h3><?php the_title();?></h3>
                <p><?php echo $m_name_subtitle;?></p>
                <div class="slider-button">
                  <a href="<?php the_permalink();?>">Discover More</a>
                </div>
              </div>
            </div>
          <?php endforeach;?>

        </div><!-- e carousel-inner -->
        
        <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">prev</span>
        </a>
        
        <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">next</span>
        </a>
        
  </div><!-- e carousel -->
</section>
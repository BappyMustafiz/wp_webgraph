 <?php global $webgraph;?>       
        <!-- Footer top section start -->
        <?php if($webgraph['footer-top-switch-button'] == 1):?>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12">
                        <div class="footer-contact-title">
                            <p>Contact Us</p>
                            <hr class="footer-hr">
                        </div>
                        <div class="footer-contact-street">
                            <p><i class="fa fa-map-marker"></i> <?php
                                    if(get_theme_mod('footer_location')){
                                        echo get_theme_mod('footer_location');
                                    } else{
                                        echo $webgraph['opt-footer-address'];
                                    }
                                  ?>
                            </p>
                        </div>
                        <div class="footer-contact-phone">
                            <p><i class="fa fa-phone"></i> <?php
                                    if(get_theme_mod('footer_phone')){
                                        echo get_theme_mod('footer_phone');
                                    } else{
                                        echo $webgraph['opt-footer-phone'];
                                    }
                                  ?>
                              </p>
                        </div>
                        <div class="footer-contact-mail">
                            <p><i class="fa fa-envelope"></i> <?php
                                    if(get_theme_mod('footer_email')){
                                        echo get_theme_mod('footer_email');
                                    } else{
                                        echo $webgraph['opt-footer-email'];
                                    }
                                  ?>
                              </p>
                        </div>
                        <div class="row">
                            <div class="footer-contact-social">
                                <ul class="list-unstyled">
                                    <?php if(!empty($webgraph['opt-site-social-facebook'])):?>
                                <li><a target="_blank" href="<?php echo $webgraph['opt-site-social-facebook'];
                                  ?>"><i class="fa fa-facebook active"></i></a></li>
                                  <?php endif;?>
                                <?php if(!empty($webgraph['opt-site-social-linkedin'])):?>  
                                <li><a target="_blank" href="<?php echo $webgraph['opt-site-social-linkedin'];
                                  ?>"><i class="fa fa-linkedin active"></i></a></li>
                                  <?php endif;?>
                                  <?php if(!empty($webgraph['opt-site-social-twitter'])):?>
                                <li><a target="_blank" href="<?php echo $webgraph['opt-site-social-twitter'];
                                  ?>"><i class="fa fa-twitter active"></i></a></li>
                                  <?php endif;?>
                                  <?php if(!empty($webgraph['opt-site-social-google'])):?>
                                <li><a target="_blank" href="<?php echo $webgraph['opt-site-social-google'];
                                  ?>"><i class="fa fa-google-plus active"></i></a></li>
                                  <?php endif;?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--.col-->
                    <div class="col-md-3 col-sm-12">
                        <div class="footer-quick-links">
                            <div class="footer-links-title">
                                <p>Navigation</p>
                                <hr class="footer-hr">
                            </div>
                            <div class="row">
                                <?php wp_nav_menu(array(
                                   'theme_location' => 'footer_menu',
                                   'container' => 'div',
                                   'container_class' => 'footer-links',
                                   'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                                   'walker'            => new WP_Bootstrap_Navwalker()
                                   
                                  ));
                                ?>
                            </div>
                            <!--.row-->
                        </div>
                    </div>
                    <!--.col-->
                    <div class="col-md-3 col-sm-12">
                        <div class="footer-quick-touch-title">
                            <p>Quick Touch</p>
                            <hr class="footer-hr">
                        </div>
                        <div class="footer-quick-touch-input">
                            <div class="form-group row">
                                <div class="col-12">
                                    <input class="form-control" type="email" placeholder="E-mail">
                                </div>
                                <!--.col-->
                            </div>
                            <!--.row-->
                            <div class="form-group row">
                                <div class="col-12">
                                    <textarea class="form-control" rows="3" placeholder="Message"></textarea>
                                </div>
                                <!--.col-->
                            </div>
                            <!--.row-->
                            <div class="row footer-button">
                                <div class="col-6">
                                    <button>send</button>
                                </div>
                                <!--.col-->
                            </div>
                            <!--.row-->
                        </div>
                    </div>
                    <!--.col-->
                    <div class="col-md-3 col-sm-12">
                        <div class="footer-gallery">
                            <div class="footer-gallery-title">
                                <p>Recent Posts</p>
                                <hr class="footer-hr">
                            </div>
                        </div>
                        <div class="categories no-gutters">
                            <div class="row">
                                <?php
                                  global $post;
                                  $args = array( 'posts_per_page' => 3, 'order'=> 'DESC', 'orderby' => 'post_date' );
                                  $postslist = get_posts( $args );
                                  foreach ( $postslist as $post ) :
                                    setup_postdata( $post ); ?>
                                    <div class="col-md-12">
                                        <div class="recent-footer-post">
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 recent-footer-post-image">
                                                    <?php the_post_thumbnail('recent-post', array('class' => 'img-fluid'));?>
                                                </div>
                                                <div class="col-md-9 col-sm-9 recent-footer-post-content-column">
                                                    <div class="recent-footer-post-content">
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
                </div>
                <!--.row-->
            </div>
            <!--.container-->
        </div>
        <?php endif;?>
        <!-- Footer top section end -->
        <!-- Footer bottom section start -->
        <?php if($webgraph['footer-bottom-switch-button'] == 1):?>
        <div class="footer-bottom">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-sm-12">
                        <?php if($webgraph['opt-footer-logo-enable-disable'] == 1):?>
                        <div class="footer-logo text-md-left">
                            <a href="<?php echo esc_url(home_url('/')); ?>"><img src="<?php
                                    if(get_theme_mod('footer_logo')){
                                        echo get_theme_mod('footer_logo');
                                    } else{
                                        echo $webgraph['opt-footer-logo']['url'];
                                    }
                                  ?>" alt="Webgraph Logo" class="img-fluid"></a>
                        </div>
                        <?php endif;?>
                    </div>
                    <!--.col-->
                    <div class="col-md-3 col-sm-12">
                        <div class="footer-copyright text-md-left">
                            <p><?php
                                    if(get_theme_mod('footer_copyright')){
                                        echo get_theme_mod('footer_copyright');
                                    } else{
                                        echo $webgraph['opt-site-copyright'];
                                    }
                                  ?>
                                      
                                  </p>
                        </div>
                    </div>
                    <!--.col-->
                    <div class="col-md-6 col-sm-12">
                        <div class="footer-credit text-md-right">
                            <p><span>Design & Developed By</span> <a target="_blank" href="
                                <?php
                                    if(get_theme_mod('footer_developer_url')){
                                        echo get_theme_mod('footer_developer_url');
                                    } else{
                                        echo $webgraph['opt-copyright-developer-url'];
                                    }
                                  ?>">
                                  <?php
                                    if(get_theme_mod('footer_developer')){
                                        echo get_theme_mod('footer_developer');
                                    } else{
                                        echo $webgraph['opt-copyright-developer-name'];
                                    }
                                  ?>
                                      
                                  </a>
                              </p>
                        </div>
                    </div>
                    <!--.col-->
                </div>
                <!--.row-->
            </div>
        </div>
        <?php endif;?>

        <!-- Footer bottom section end -->
        <!-- Scroll top to bottom start -->
        <a href="javascript:void(0);" title="Go To Top" id="scroll" style="display: none;"><span></span></a>
        <!-- Scroll top to bottom end -->
        <!-- modernizr js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/vendor/modernizr-3.6.0.min.js"></script>
        <!-- jQuery js -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="<?php echo get_template_directory_uri();?>/assets/js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
        <!-- plugins js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/bootstrap.min.js"></script>
        <!-- modernizr js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/plugins.js"></script>
        <!-- modernizr js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/popper.min.js"></script>
        <!-- smooth-scroll js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/smooth-scroll.min.js"></script>
        <!-- carousel js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/owl.carousel.min.js"></script>
        <!-- fontawesome js -->
        <script src="https://use.fontawesome.com/1744f3f671.js"></script>
        <!-- Custom js -->
        <script src="<?php echo get_template_directory_uri();?>/assets/js/main.js"></script>
        <?php wp_footer();?>
    </body>
</html>
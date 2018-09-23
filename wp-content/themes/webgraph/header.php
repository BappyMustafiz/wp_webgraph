<?php global $webgraph;?>
<!doctype html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ); ?>" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><?php bloginfo( 'name' ); ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="<?= $webgraph['opt-site-favicon']?>">
        <style>
          .navbar{
            background-color: <?= $webgraph['header-navbar-background'];?>!important;
          }
          .footer-credit a{
            color: <?= $webgraph['opt-copyright-developer-link-color']['regular'];?>!important;
          }
          .footer-credit a:hover{
            color: <?= $webgraph['opt-copyright-developer-link-color']['hover'];?>!important;
          }
          .footer-credit a:active{
            color: <?= $webgraph['opt-copyright-developer-link-color']['active'];?>!important;
          }.footer{
           
            background: <?= $webgraph['footer-top-background'];?>!important;
          }
          .footer-bottom{
            background: <?= $webgraph['footer-bottom-background'];?>!important;
          }

        </style>
        <?php wp_head();?>
    </head>
    <body>
        <!--[if lte IE 9]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        <!-- Header top start -->
        <div class="top_header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 col-sm-12 col-lg-8 col-xl-8">
                        <div class="row">
                            <div class="top-phone">
                                <p><span><i class="fa fa-phone"></i> 
                                  <?php
                                    if(get_theme_mod('header_phone')){
                                        echo get_theme_mod('header_phone');
                                    } else{
                                        echo $webgraph['opt-topbar-phone'];
                                    }
                                  ?>
                                </span></p>
                            </div>
                            <div class="top-opening-hour">
                                <p><span><i class="fa fa-envelope"></i>
                                <?php
                                    if(get_theme_mod('header_email')){
                                        echo get_theme_mod('header_email');
                                    } else{
                                        echo $webgraph['opt-topbar-email'];
                                    }
                                  ?>
                                </span></p>
                            </div>
                        </div><!--.row-->
                    </div><!--.col-->
                    <div class="col-md-4 col-sm-12 col-lg-4 col-xl-4">
                      <?php get_search_form();?>
                    </div>
                </div><!--.row-->
            </div><!--.container-fluid-->
        </div><!--.top_header-->
        <!-- Header top end -->
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark">
         <div class="container">
          <?php if($webgraph['opt-site-logo-enable-disable'] == 1):?>
            <a class="navbar-brand" href="<?php echo esc_url(home_url('/')); ?>">
            <img src="<?php
                                    if(get_theme_mod('logo')){
                                        echo get_theme_mod('logo');
                                    } else{
                                        echo $webgraph['opt-site-logo']['url'];
                                    }
                                  ?>" alt="logo" class="img-fluid">
            </a>
          <?php endif;?>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span style="background-color: #39598e;" class="navbar-toggler-icon"></span>
            </button>
            <?php wp_nav_menu(array(
               'theme_location' => 'header_top_menu',
               'container' => 'div',
               'container_class' => 'collapse navbar-collapse',
               'container_id' => 'navbarResponsive',
               'menu_class' => 'navbar-nav ml-auto',
               'depth' => '3',
               'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
               'walker'            => new WP_Bootstrap_Navwalker()
               
              ));
            ?>
         </div>
         <!-- .container -->
      </nav>
        <!-- End Navigation -->

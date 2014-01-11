<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?><!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->
        <title>Way to Fun</title>
        <link rel="shortcut icon" href="<?php bloginfo('stylesheet_directory')?>/images/favicon.png">
        <meta name="viewport" content="width=1200, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_directory')?>/css/custom/style.css"/>
        <link href='http://fonts.googleapis.com/css?family=Istok+Web:400,700,400italic' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/jquery.cycle2.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/jquery.watermark.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/jquery.cycle2.swipe.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/jquery.cycle2.center.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/html5.js"></script>
        <!--[if IE 8 ]>
            <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/respond.min.js"></script>
        <![endif]-->
        <!--[if (lt IE 9)|(IE9) ]>
            <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/main-ie.js"></script>
        <![endif]-->
        <script type="text/javascript" src="<?php bloginfo('stylesheet_directory')?>/js/main.js"></script>
    </head>
    <body>
        <header>
            <div class="container">
                <a href="#" class="header_logo_wrap"><img src="<?php bloginfo('stylesheet_directory')?>/images/header_logo.png"></a>
                <!--<form class="header_search_wrap input-group">
                    <input type="text" class="form-control js-watermark js-width-input-ie" placeholder="Search"/>
                    <span class="icon-search"></span>
                </form>-->
                <nav class="header_links_wrap">
                        <?php
                        $var_header_nav = array(
                            'menu'            => 'header-links',
                            'container'       => '',
                            'menu_class'      => 'clearfix',
                            'echo'            => true,
                        );
                        wp_nav_menu( $var_header_nav );
                        ?>
                </nav>
            </div>
        </header>
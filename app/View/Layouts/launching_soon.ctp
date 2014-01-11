<?php
/**
 *
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

?>
<!DOCTYPE html>
<html lang="en">
    <!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
    <!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <?php echo $this->Html->charset(); ?>
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->
        <title>Way To Fun</title>
        <link rel="shortcut icon" href="<?php echo $this->webroot; ?>images/favicon.png">
        <meta name="viewport" content="width=1200, initial-scale=1.0" />
        <?php
            echo $this->Html->css('custom'.'/'.'style.css');
            // echo $this->fetch('meta');
            // echo $this->fetch('css');
            echo $this->fetch('script');
            echo '<script type="text/javascript" src="'.$this->webroot.'js/jquery-1.10.2.min.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/jquery.cycle2.min.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/jquery.watermark.min.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/jquery.cycle2.swipe.min.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/jquery.cycle2.center.min.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/html5.js"></script>';
            echo '<script type="text/javascript" src="'.$this->webroot.'js/main.js"></script>';
        ?>
        <link href='http://fonts.googleapis.com/css?family=Istok+Web:400,700,400italic' rel='stylesheet' type='text/css'>
        <!--[if IE 8 ]>
            <?php echo '<script type="text/javascript" src="'.$this->webroot.'js/respond.min.js"></script>'; ?>
        <![endif]-->
        <!--[if (IE) ]>
            <?php echo '<script type="text/javascript" src="'.$this->webroot.'js/main-ie.js"></script>'; ?>
        <![endif]-->
    </head>
    <body>
        <?php echo $this->fetch('content'); ?>
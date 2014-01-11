<?php
/**
 * The Template for displaying all single posts
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

    <div class="container">
        <?php
            // Start the Loop.
            while ( have_posts() ) : the_post();
        ?>
        <ul class="post_breadcrumb_link clearfix">
            <li><a href="#">Home</a><span></span></li>
            <li><a href="<?php echo get_site_url(); ?>">Blog</a><span></span></li>
            <li><a href="<?php echo get_site_url(); ?>">Itenaries</a><span></span></li>
            <li><?php echo the_title(); ?></li>
        </ul>
        <?php $image = simple_fields_get_post_group_values(get_the_id(),"post_main_image",true,2);
            $image_url = wp_get_attachment_image_src($image[0]['image'], "full")[0]; ?>
        <div class="post_content_wrap">
            <h2><?php the_title(); ?></h2>
            <section class="clearfix">
                <?php if($image_url) {?>
                    <img src="<?php echo $image_url ?>" >
                <?php } ?>
                <?php the_content(); ?>
            </section>
        </div>
        <?php endwhile; ?>
    </div>

<?php
get_footer();

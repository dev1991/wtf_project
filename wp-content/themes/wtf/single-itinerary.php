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
            $image_url = wp_get_attachment_image_src($image[0]['image'], "full")[0];
            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id(get_the_id()), 'thumbnail_size');
            $details = simple_fields_get_post_group_values(get_the_id(),"itinerary_detail",true,2);
            $plan_head = simple_fields_get_post_group_values(get_the_id(),"itinerary_plan_head",true,2);
            $plan = simple_fields_get_post_group_values(get_the_id(),"itinerary_plan",true,2);
             ?>
        <div class="itinerary_content_wrap">
            <img src="<?php echo $image_url;?>" class="header_image">
            <h2><?php the_title(); ?></h2>
            <section class="clearfix">
                <?php if($image_url) {?>
                    <img src="<?php echo $thumb['0']; ?>" >
                <?php } ?>
                <div class="text">
                    <?php the_content(); ?>
                </div>
            </section>
            <?php for($i=0;$i < count($details);$i++) {
                echo '<h3>'.$details[$i]['head'].' : '.$details[$i]['detail'].'</h3>';
            } ?>
            <div class="itenary_plan">
                <h3><?php echo $plan_head[0]['head'] ?></h3>
                <?php for($i=0;$i < count($plan);$i++) { ?>
                    <section>
                        <h4><?php echo $plan[$i]['head'] ?></h4>
                        <div class="text"><?php echo $plan[$i]['detail'] ?></div>
                    </section>
                <?php } ?>
            </div>
        </div>
        <?php endwhile; ?>
    </div>

<?php
get_footer();

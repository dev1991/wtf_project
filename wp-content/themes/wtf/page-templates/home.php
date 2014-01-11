<?php
/**
 * The main template file
 *
 * Template name: Home Page Template
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>
        <div class="container">
            <div class="blog_home_header">
                <h1>Welcome to Way to Fun Blog</h1>
                <section class="clearfix">
                    <a href="#" class="js-trigger-visible active" data-visible-index="0">Blog posts</a>
                    <a href="#" class="js-trigger-visible" data-visible-index="1">Itineraries</a>
                </section>
            </div>
        </div>
        <div class="main_content_wrap js-target-visible" data-visible-index="0">
            <div class="main_content_slider container">
                <h2>Blog Posts</h2>
                <div class="main_content">
                    <?php $args = array(
                        'orderby'          => 'post_date',
                        'order'            => 'DESC',
                        'post_type'        => 'post',
                        );
                        $posts = get_posts($args);
                        foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <a href="<?php the_permalink(); ?>" class="main_content_section js-show-content">
                                <?php $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail_size');
                                ?>
                                <img src="<?php echo $thumb['0'];?>">
                                <h3><?php the_title(); ?></h3>
                                <div class="text"><?php the_excerpt() ?></div>
                            </a>
                        <?php endforeach;
                        wp_reset_postdata();
                    ?>
                </div>
            </div>
        </div>
        <div class="main_content_wrap js-target-visible" data-visible-index="1">
            <div class="main_content_slider container">
                <h2>Itineraries</h2>
                <div class="main_content">
                    <?php $args = array(
                        'orderby'          => 'post_date',
                        'order'            => 'DESC',
                        'post_type'        => 'itinerary',
                        );
                        $posts = get_posts($args);
                        foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <a href="<?php the_permalink(); ?>" class="main_content_section js-show-content">
                                <?php $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail_size' );
                                ?>
                                <img src="<?php echo $thumb['0'];?>">
                                <h3><?php the_title(); ?></h3>
                                <div class="text"><?php the_excerpt(); ?></div>
                            </a>
                        <?php endforeach;
                        wp_reset_postdata();
                    ?>
                </div>
            </div>
        </div>

<?php
get_footer();

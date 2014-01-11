-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2014 at 04:32 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wtf_blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-01-04 08:16:38', '2014-01-04 08:16:38', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://w.localhost/wtf_blog', 'yes'),
(2, 'blogname', 'Way To Fun Blog', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'ishu.madan91@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://w.localhost/wtf_blog', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentythirteen', 'yes'),
(45, 'stylesheet', 'twentythirteen', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '24448', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1388823402;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1388823409;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1388863200;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_doing_cron', '1388924973.2643609046936035156250', 'yes'),
(101, '_transient_random_seed', 'c667f3b791fedc6ca57d3d4ff78cede4', 'yes'),
(102, 'auth_key', ']_ltscmuH{VQm*OMo+L}i~638o|373voBdumU{a7fmBf16-ltgm$0KTi m@TzH1%', 'yes'),
(103, 'auth_salt', 'RdI6e?-Ce8)}4ASgTJs`fhCc>$@<N=$5h0X(E]3ssw|J~%5bloO8#E~8Hu>>wuI:', 'yes'),
(104, 'logged_in_key', 'yxp._dO2qDM`z9b*oDuFO6kOldh8;fo;`.s$Dmz4*~VY*NZJ0r`C7/:`TBs)s]qe', 'yes'),
(105, 'logged_in_salt', '&+EoF%z+2gl]!Ge)h)_q:a8HnF.CEVT-7q:v@i*ivb?|Xi<bWMRq($&([jSd=DvJ', 'yes'),
(106, 'nonce_key', 'nVvQ1LjOb-aPeJvq{xeUTCm>V4 o@Kk|O*II<-z0y=MW1PheNOw<(4yXIx#=oX(D', 'yes'),
(107, 'nonce_salt', '&10+DM@3C,Obm3+d=N%IYC|x|3c{G~19^y- san^4hKineXx% 5ke6[1EL +CP&=', 'yes'),
(109, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1388824288;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}}', 'yes'),
(110, '_site_transient_timeout_theme_roots', '1388825211', 'yes'),
(111, '_site_transient_theme_roots', 'a:2:{s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(112, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1388824276;s:7:"checked";a:2:{s:14:"twentythirteen";s:3:"1.0";s:12:"twentytwelve";s:3:"1.2";}s:8:"response";a:2:{s:14:"twentythirteen";a:3:{s:11:"new_version";s:3:"1.1";s:3:"url";s:42:"http://wordpress.org/themes/twentythirteen";s:7:"package";s:59:"http://wordpress.org/themes/download/twentythirteen.1.1.zip";}s:12:"twentytwelve";a:3:{s:11:"new_version";s:3:"1.3";s:3:"url";s:40:"http://wordpress.org/themes/twentytwelve";s:7:"package";s:57:"http://wordpress.org/themes/download/twentytwelve.1.3.zip";}}}', 'yes'),
(113, '_site_transient_timeout_browser_27148f6f2bcb830897e8114862fabe25', '1389428212', 'yes'),
(114, '_site_transient_browser_27148f6f2bcb830897e8114862fabe25', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"23.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(115, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:27:"http://w.localhost/wtf_blog";s:4:"link";s:103:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://w.localhost/wtf_blog/";s:3:"url";s:136:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://w.localhost/wtf_blog/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(117, 'db_upgraded', '', 'yes'),
(118, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:39:"https://wordpress.org/wordpress-3.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:39:"https://wordpress.org/wordpress-3.8.zip";s:10:"no_content";s:50:"https://wordpress.org/wordpress-3.8-no-content.zip";s:11:"new_bundled";s:51:"https://wordpress.org/wordpress-3.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.8";s:7:"version";s:3:"3.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1388824607;s:15:"version_checked";s:3:"3.8";s:12:"translations";a:0:{}}', 'yes'),
(119, 'can_compress_scripts', '0', 'yes'),
(120, '_site_transient_timeout_wordpress_credits_en_US', '1388911409', 'yes'),
(121, '_site_transient_wordpress_credits_en_US', 'a:2:{s:6:"groups";a:6:{s:15:"project-leaders";a:4:{s:4:"name";s:15:"Project Leaders";s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:6:{s:4:"ryan";a:4:{i:0;s:10:"Ryan Boren";i:1;s:32:"c22398fb9602c967d1dac8174f4a1a4e";i:2;s:4:"ryan";i:3;s:14:"Lead Developer";}s:11:"markjaquith";a:4:{i:0;s:12:"Mark Jaquith";i:1;s:32:"097a87a525e317519b5ee124820012fb";i:2;s:11:"markjaquith";i:3;s:14:"Lead Developer";}s:4:"matt";a:4:{i:0;s:14:"Matt Mullenweg";i:1;s:32:"767fc9c115a1b989744c755db47feb60";i:2;s:4:"matt";i:3;s:23:"Cofounder, Project Lead";}s:5:"nacin";a:4:{i:0;s:12:"Andrew Nacin";i:1;s:32:"01cfe9feaafb068590891bbd1f6a7f5a";i:2;s:5:"nacin";i:3;s:14:"Lead Developer";}s:6:"azaozz";a:4:{i:0;s:10:"Andrew Ozz";i:1;s:32:"4e84843ebff0918d72ade21c6ee7b1e4";i:2;s:6:"azaozz";i:3;s:14:"Lead Developer";}s:5:"westi";a:4:{i:0;s:14:"Peter Westwood";i:1;s:32:"5b3b5ce04dd402124aba53142b3e47f6";i:2;s:5:"westi";i:3;s:14:"Lead Developer";}}}s:15:"core-developers";a:4:{s:4:"name";s:23:"Contributing Developers";s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:3:{s:4:"dd32";a:4:{i:0;s:10:"Dion Hulse";i:1;s:32:"fa63bbe285f64ba10985551154474e25";i:2;s:4:"dd32";i:3;s:14:"Core Developer";}s:4:"koop";a:4:{i:0;s:17:"Daryl Koopersmith";i:1;s:32:"26671c19c0d5722d0b1c101fd9d35175";i:2;s:4:"koop";i:3;s:14:"Core Developer";}s:5:"duck_";a:4:{i:0;s:8:"Jon Cave";i:1;s:32:"c422d58d80cf37281d34221f21a4a557";i:2;s:5:"duck_";i:3;s:14:"Core Developer";}}}s:23:"contributing-developers";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:9:{s:7:"ocean90";a:4:{i:0;s:17:"Dominik Schilling";i:1;s:32:"3e8e161d97d793bd8fc2dcd62583bb76";i:2;s:7:"ocean90";i:3;s:0:"";}s:14:"SergeyBiryukov";a:4:{i:0;s:15:"Sergey Biryukov";i:1;s:32:"750b7b0fcd855389264c2b1294d61bd6";i:2;s:14:"SergeyBiryukov";i:3;s:0:"";}s:5:"helen";a:4:{i:0;s:15:"Helen Hou-Sandi";i:1;s:32:"6506162ada6b700b151ad8a187f65842";i:2;s:5:"helen";i:3;s:0:"";}s:14:"wonderboymusic";a:4:{i:0;s:12:"Scott Taylor";i:1;s:32:"0e9fc8ea22885ed718ee37d31dcffb8c";i:2;s:14:"wonderboymusic";i:3;s:0:"";}s:11:"johnbillion";a:4:{i:0;s:15:"John Blackbourn";i:1;s:32:"0000ba6dd1b089e1746abbfe6281ee3b";i:2;s:11:"johnbillion";i:3;s:0:"";}s:12:"DrewAPicture";a:4:{i:0;s:11:"Drew Jaynes";i:1;s:32:"95c934fa2c3362794bf62ff8c59ada08";i:2;s:12:"DrewAPicture";i:3;s:0:"";}s:13:"iammattthomas";a:4:{i:0;s:11:"Matt Thomas";i:1;s:32:"86debe7ed7ece0f968097a768dcbd5cb";i:2;s:13:"iammattthomas";i:3;s:0:"";}s:12:"lancewillett";a:4:{i:0;s:13:"Lance Willett";i:1;s:32:"ddc339d9565077190a08a9e5da7a5f44";i:2;s:12:"lancewillett";i:3;s:0:"";}s:6:"Otto42";a:4:{i:0;s:11:"Samuel Wood";i:1;s:32:"0994d5e2e158a24ba8017c2525d78263";i:2;s:6:"Otto42";i:3;s:0:"";}}}s:16:"recent-rockstars";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:21:{s:9:"apeatling";a:4:{i:0;s:13:"Andy Peatling";i:1;s:32:"bb29d699b5cba218c313b61aa82249da";i:2;s:9:"apeatling";i:3;s:0:"";}s:8:"dbernar1";a:4:{i:0;s:13:"Dan Bernardic";i:1;s:32:"4dbcc26c4517bee8d40efbc6119e93e2";i:2;s:8:"dbernar1";i:3;s:0:"";}s:6:"drw158";a:4:{i:0;s:12:"Dave Whitley";i:1;s:32:"2ca3643aa5d77785ff6c6c7fd2cc5949";i:2;s:6:"drw158";i:3;s:0:"";}s:13:"EmpireOfLight";a:4:{i:0;s:10:"Ben Dunkle";i:1;s:32:"1772cd53f2747f71c8455ac820606afc";i:2;s:13:"EmpireOfLight";i:3;s:0:"";}s:10:"isaackeyet";a:4:{i:0;s:11:"Isaac Keyet";i:1;s:32:"848f029cb21bb7aef88d2088e036794b";i:2;s:10:"isaackeyet";i:3;s:0:"";}s:4:"Joen";a:4:{i:0;s:13:"Joen Asmussen";i:1;s:32:"d45b1928dd67faae313e7758a14f573d";i:2;s:4:"Joen";i:3;s:0:"";}s:7:"kraftbj";a:4:{i:0;s:13:"Brandon Kraft";i:1;s:32:"fa4976cfd706b9be00f6494df9aa99d9";i:2;s:7:"kraftbj";i:3;s:0:"";}s:9:"lessbloat";a:4:{i:0;s:11:"Dave Martin";i:1;s:32:"4c5da16f1f65bd9824bc30cb1cc62e8f";i:2;s:9:"lessbloat";i:3;s:0:"";}s:18:"littlethingsstudio";a:4:{i:0;s:12:"Kate Whitley";i:1;s:32:"392e6ec5db73aea222b25193e12bb950";i:2;s:18:"littlethingsstudio";i:3;s:0:"";}s:6:"matveb";a:4:{i:0;s:15:"Matías Ventura";i:1;s:32:"3f8389957d0c59bb0bd5433e86b53a19";i:2;s:6:"matveb";i:3;s:0:"";}s:9:"melchoyce";a:4:{i:0;s:10:"Mel Choyce";i:1;s:32:"2dc245d4cf9e5579dfb0e13e7dcb75db";i:2;s:9:"melchoyce";i:3;s:0:"";}s:15:"mitchoyoshitaka";a:4:{i:0;s:16:"Michael Erlewine";i:1;s:32:"d5b5a1768e8c9c23dffd78b42be6bf9a";i:2;s:15:"mitchoyoshitaka";i:3;s:0:"";}s:6:"ryelle";a:4:{i:0;s:10:"Kelly Dwan";i:1;s:32:"3edc6efd8d74663d6d9c159006fb115c";i:2;s:6:"ryelle";i:3;s:0:"";}s:12:"shaunandrews";a:4:{i:0;s:13:"Shaun Andrews";i:1;s:32:"b7fdd6477cc13ca16e8358a0725bc02c";i:2;s:12:"shaunandrews";i:3;s:0:"";}s:10:"tillkruess";a:4:{i:0;s:11:"Till Krüss";i:1;s:32:"49ebe9971807a5c384641ff44c08dbb8";i:2;s:10:"tillkruess";i:3;s:0:"";}s:6:"jorbin";a:4:{i:0;s:12:"Aaron Jorbin";i:1;s:32:"b3e2b94eb305bf95a1bee11bc7705fb7";i:2;s:6:"jorbin";i:3;s:0:"";}s:10:"kadamwhite";a:4:{i:0;s:13:"K. Adam White";i:1;s:32:"6cd1cf6de05952505a165425efaf06b4";i:2;s:10:"kadamwhite";i:3;s:0:"";}s:5:"yoavf";a:4:{i:0;s:10:"Yoav Farhi";i:1;s:32:"ae98ec38ec28f129a33a424e5eba5769";i:2;s:5:"yoavf";i:3;s:0:"";}s:16:"celloexpressions";a:4:{i:0;s:11:"Nick Halsey";i:1;s:32:"c5fe6b97c0f4d32a41346582d4e894db";i:2;s:16:"celloexpressions";i:3;s:0:"";}s:10:"iamtakashi";a:4:{i:0;s:12:"Takashi Irie";i:1;s:32:"56bae6e12bf9305a0852753e0f557489";i:2;s:10:"iamtakashi";i:3;s:0:"";}s:8:"obenland";a:4:{i:0;s:19:"Konstantin Obenland";i:1;s:32:"2370ea5912750f4cb0f3c51ae1cbca55";i:2;s:8:"obenland";i:3;s:0:"";}}}s:5:"props";a:4:{s:4:"name";s:33:"Core Contributors to WordPress %s";s:12:"placeholders";a:1:{i:0;s:3:"3.8";}s:4:"type";s:4:"list";s:4:"data";a:157:{s:13:"aaronholbrook";s:14:"Aaron Holbrook";s:15:"adamsilverstein";s:15:"adamsilverstein";s:13:"admiralthrawn";s:13:"admiralthrawn";s:8:"ahoereth";s:17:"Alexander Hoereth";s:8:"sabreuse";s:22:"Amy Hendrix (sabreuse)";s:8:"aralbald";s:17:"Andrey Kabakchiev";s:18:"ankitgadertcampcom";s:10:"Ankit Gade";s:7:"atimmer";s:16:"Anton Timmermans";s:7:"fliespl";s:22:"Arkadiusz Rzadkowolski";s:9:"aubreypwd";s:15:"Aubrey Portwood";s:8:"bassgang";s:8:"bassgang";s:13:"empireoflight";s:10:"Ben Dunkle";s:15:"bananastalktome";s:23:"Billy (bananastalktome)";s:10:"binarymoon";s:10:"binarymoon";s:12:"bradyvercher";s:13:"Brady Vercher";s:4:"rzen";s:14:"Brian Richards";s:6:"bpetty";s:11:"Bryan Petty";s:5:"calin";s:9:"Calin Don";s:10:"carldanley";s:11:"Carl Danley";s:8:"sixhours";s:14:"Caroline Moore";s:6:"caspie";s:6:"Caspie";s:12:"chrisbliss18";s:10:"Chris Jean";s:10:"iblamefish";s:16:"Clinton Montague";s:6:"corphi";s:6:"Corphi";s:12:"danieldudzic";s:13:"Daniel Dudzic";s:12:"datafeedrcom";s:9:"datafeedr";s:12:"dougwollison";s:13:"Doug Wollison";s:12:"drewapicture";s:11:"Drew Jaynes";s:7:"dziudek";s:7:"dziudek";s:9:"ericlewis";s:17:"Eric Andrew Lewis";s:8:"ethitter";s:12:"Erick Hitter";s:8:"ericmann";s:9:"Eric Mann";s:11:"evansolomon";s:12:"Evan Solomon";s:6:"faison";s:6:"Faison";s:11:"frank-klein";s:11:"Frank Klein";s:5:"garyj";s:10:"Gary Jones";s:5:"pento";s:15:"Gary Pendergast";s:10:"soulseekah";s:17:"Gennady Kovshenin";s:15:"georgestephanis";s:16:"George Stephanis";s:7:"gnarf37";s:7:"gnarf37";s:6:"tivnet";s:17:"Gregory Karpinsky";s:5:"hanni";s:5:"hanni";s:7:"iandunn";s:8:"Ian Dunn";s:7:"ipstenu";s:22:"Ipstenu (Mika Epstein)";s:8:"jdgrimes";s:11:"J.D. Grimes";s:9:"jacklenox";s:10:"Jack Lenox";s:11:"janhenckens";s:11:"janhenckens";s:4:"jblz";s:10:"Jeff Bowen";s:6:"jeffr0";s:13:"Jeff Chandler";s:7:"jenmylo";s:8:"Jen Mylo";s:7:"buffler";s:13:"Jeremy Buller";s:10:"jeremyfelt";s:11:"Jeremy Felt";s:7:"jeherve";s:12:"Jeremy Herve";s:4:"jpry";s:10:"Jeremy Pry";s:6:"jayjdk";s:24:"Jesper Johansen (jayjdk)";s:5:"jhned";s:5:"jhned";s:6:"jim912";s:6:"jim912";s:6:"jartes";s:10:"Joan Artes";s:9:"joedolson";s:10:"Joe Dolson";s:4:"joen";s:13:"Joen Asmussen";s:9:"johnafish";s:9:"John Fish";s:15:"johnjamesjacoby";s:17:"John James Jacoby";s:11:"joostdevalk";s:13:"Joost de Valk";s:14:"joshuaabenazer";s:15:"Joshua Abenazer";s:6:"nukaga";s:12:"Junko Nukaga";s:8:"devesine";s:16:"Justin de Vesine";s:13:"justinsainton";s:14:"Justin Sainton";s:7:"trepmal";s:16:"Kailey (trepmal)";s:9:"codebykat";s:9:"Kat Hagan";s:8:"kpdesign";s:11:"Kim Parsell";s:6:"kwight";s:10:"Kirk Wight";s:6:"koki4a";s:17:"Konstantin Dankov";s:9:"kovshenin";s:20:"Konstantin Kovshenin";s:6:"drozdz";s:15:"Krzysiek Drozdz";s:11:"leewillis77";s:10:"Lee Willis";s:5:"lite3";s:5:"lite3";s:4:"lucp";s:11:"Luc Princen";s:4:"latz";s:12:"Lutz Schroer";s:6:"mako09";s:4:"Mako";s:14:"markmcwilliams";s:15:"Mark McWilliams";s:12:"markoheijnen";s:13:"Marko Heijnen";s:6:"mdbitz";s:14:"Matthew Denton";s:7:"mattheu";s:20:"Matthew Haines-Young";s:9:"mattwiebe";s:10:"Matt Wiebe";s:10:"megane9988";s:10:"megane9988";s:9:"micahwave";s:9:"micahwave";s:5:"cainm";s:12:"Michael Cain";s:10:"michelwppi";s:22:"Michel - xiligroup dev";s:9:"chellycat";s:17:"Michelle Langston";s:8:"gradyetc";s:10:"Mike Burns";s:12:"mikehansenme";s:11:"Mike Hansen";s:10:"mikelittle";s:11:"Mike Little";s:11:"dh-shredder";s:13:"Mike Schroder";s:7:"dimadin";s:11:"Milan Dinic";s:6:"batmoo";s:15:"Mohammad Jangda";s:11:"morganestes";s:12:"Morgan Estes";s:6:"mt8biz";s:10:"moto hachi";s:3:"Nao";s:12:"Naoko Takano";s:8:"neil_pie";s:8:"Neil Pie";s:13:"nickdaugherty";s:14:"Nick Daugherty";s:10:"nbachiyski";s:17:"Nikolay Bachiyski";s:5:"ninio";s:5:"ninio";s:10:"ninnypants";s:10:"ninnypants";s:9:"nofearinc";s:9:"nofearinc";s:4:"nvwd";s:16:"Nowell VanHoesen";s:11:"odysseygate";s:7:"odyssey";s:11:"originalexe";s:11:"OriginalEXE";s:10:"swissspidy";s:15:"Pascal Birchler";s:13:"pauldewouters";s:15:"Paul de Wouters";s:9:"pavelevap";s:9:"pavelevap";s:6:"senlin";s:4:"Piet";s:10:"ptahdunbar";s:11:"Ptah Dunbar";s:7:"raamdev";s:8:"Raam Dev";s:11:"rachelbaker";s:11:"rachelbaker";s:12:"bamadesigner";s:13:"Rachel Carden";s:7:"radices";s:7:"Radices";s:11:"mauryaratan";s:16:"Ram Ratan Maurya";s:7:"defries";s:15:"Remkus de Vries";s:6:"ounziw";s:18:"Rescuework Support";s:8:"rickalee";s:20:"Ricky Lee Whittemore";s:5:"rdall";s:11:"Robert Dall";s:3:"wet";s:35:"Robert Wetzlmayr, PHP-Programmierer";s:13:"rodrigosprimo";s:13:"Rodrigo Primo";s:6:"otto42";s:18:"Samuel Wood (Otto)";s:12:"sanchothefat";s:12:"sanchothefat";s:9:"sboisvert";s:9:"sboisvert";s:13:"scottbasgaard";s:14:"Scott Basgaard";s:11:"coffee2code";s:12:"Scott Reilly";s:6:"scribu";s:6:"scribu";s:10:"seanchayes";s:10:"Sean Hayes";s:14:"sergeybiryukov";s:15:"Sergey Biryukov";s:12:"designsimply";s:28:"Sheri Bigelow (designsimply)";s:9:"shinichin";s:9:"ShinichiN";s:13:"simonwheatley";s:14:"Simon Wheatley";s:7:"siobhan";s:7:"Siobhan";s:7:"siobhyb";s:24:"Siobhan Bamber (siobhyb)";s:10:"sirbrillig";s:10:"sirbrillig";s:12:"solarissmoke";s:12:"solarissmoke";s:6:"netweb";s:13:"Stephen Edgar";s:13:"stephenharris";s:14:"Stephen Harris";s:11:"stevenkword";s:11:"Steven Word";s:8:"miyauchi";s:17:"Takayuki Miyauchi";s:5:"tmtoy";s:15:"Takuma Morikawa";s:13:"thomasguillot";s:14:"Thomas Guillot";s:6:"tierra";s:6:"tierra";s:8:"tlamedia";s:9:"TLA Media";s:8:"tobiasbg";s:8:"TobiasBg";s:11:"tommcfarlin";s:11:"tommcfarlin";s:10:"zodiac1978";s:18:"Torsten Landsiedel";s:8:"taupecat";s:12:"Tracy Rotton";s:11:"trishasalas";s:11:"trishasalas";s:9:"mbmufffin";s:11:"Tyler Smith";s:14:"grapplerulrich";s:6:"Ulrich";s:4:"l10n";s:8:"Vladimir";s:11:"westonruter";s:12:"Weston Ruter";s:6:"yonasy";s:6:"yonasy";s:8:"tollmanz";s:12:"Zack Tollman";}}s:9:"libraries";a:3:{s:4:"name";s:18:"External Libraries";s:4:"type";s:9:"libraries";s:4:"data";a:28:{i:0;a:2:{i:0;s:11:"Backbone.js";i:1;s:22:"http://backbonejs.org/";}i:1;a:2:{i:0;s:10:"Class POP3";i:1;s:24:"http://squirrelmail.org/";}i:2;a:2:{i:0;s:16:"Color Animations";i:1;s:39:"http://plugins.jquery.com/project/color";}i:3;a:2:{i:0;s:15:"Horde Text Diff";i:1;s:22:"http://pear.horde.org/";}i:4;a:2:{i:0;s:11:"hoverIntent";i:1;s:45:"http://plugins.jquery.com/project/hoverIntent";}i:5;a:2:{i:0;s:13:"imgAreaSelect";i:1;s:42:"http://odyniec.net/projects/imgareaselect/";}i:6;a:2:{i:0;s:4:"Iris";i:1;s:34:"https://github.com/Automattic/Iris";}i:7;a:2:{i:0;s:6:"jQuery";i:1;s:18:"http://jquery.com/";}i:8;a:2:{i:0;s:9:"jQuery UI";i:1;s:20:"http://jqueryui.com/";}i:9;a:2:{i:0;s:14:"jQuery Hotkeys";i:1;s:41:"https://github.com/tzuryby/jquery.hotkeys";}i:10;a:2:{i:0;s:14:"jQuery Masonry";i:1;s:28:"http://masonry.desandro.com/";}i:11;a:2:{i:0;s:22:"jQuery serializeObject";i:1;s:49:"http://benalman.com/projects/jquery-misc-plugins/";}i:12;a:2:{i:0;s:12:"jQuery.query";i:1;s:46:"http://plugins.jquery.com/project/query-object";}i:13;a:2:{i:0;s:14:"jQuery.suggest";i:1;s:41:"http://plugins.jquery.com/project/suggest";}i:14;a:2:{i:0;s:21:"jQuery UI Touch Punch";i:1;s:27:"http://touchpunch.furf.com/";}i:15;a:2:{i:0;s:5:"json2";i:1;s:43:"https://github.com/douglascrockford/JSON-js";}i:16;a:2:{i:0;s:15:"MediaElement.js";i:1;s:26:"http://mediaelementjs.com/";}i:17;a:2:{i:0;s:6:"PclZip";i:1;s:33:"http://www.phpconcept.net/pclzip/";}i:18;a:2:{i:0;s:6:"PemFTP";i:1;s:50:"http://www.phpclasses.org/browse/package/1743.html";}i:19;a:2:{i:0;s:6:"phpass";i:1;s:31:"http://www.openwall.com/phpass/";}i:20;a:2:{i:0;s:9:"PHPMailer";i:1;s:55:"http://code.google.com/a/apache-extras.org/p/phpmailer/";}i:21;a:2:{i:0;s:8:"Plupload";i:1;s:24:"http://www.plupload.com/";}i:22;a:2:{i:0;s:9:"SimplePie";i:1;s:21:"http://simplepie.org/";}i:23;a:2:{i:0;s:27:"The Incutio XML-RPC Library";i:1;s:34:"http://scripts.incutio.com/xmlrpc/";}i:24;a:2:{i:0;s:8:"Thickbox";i:1;s:32:"http://jquery.com/demo/thickbox/";}i:25;a:2:{i:0;s:7:"TinyMCE";i:1;s:23:"http://www.tinymce.com/";}i:26;a:2:{i:0;s:13:"Underscore.js";i:1;s:24:"http://underscorejs.org/";}i:27;a:2:{i:0;s:6:"zxcvbn";i:1;s:30:"https://github.com/lowe/zxcvbn";}}}}s:4:"data";a:2:{s:8:"profiles";s:32:"http://profiles.wordpress.org/%s";s:7:"version";s:3:"3.8";}}', 'yes'),
(123, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1388831465:1'),
(3, 1, '_edit_lock', '1388832227:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-01-04 08:16:38', '2014-01-04 08:16:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-01-04 08:16:38', '2014-01-04 08:16:38', '', 0, 'http://w.localhost/wtf_blog/?p=1', 0, 'post', '', 1),
(2, 1, '2014-01-04 08:16:38', '2014-01-04 08:16:38', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://w.localhost/wtf_blog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-01-04 08:16:38', '2014-01-04 08:16:38', '', 0, 'http://w.localhost/wtf_blog/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-01-04 08:16:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-04 08:16:52', '0000-00-00 00:00:00', '', 0, 'http://w.localhost/wtf_blog/?p=3', 0, 'post', '', 0),
(4, 1, '2014-01-04 10:32:49', '2014-01-04 10:32:49', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://w.localhost/wtf_blog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2014-01-04 10:32:49', '2014-01-04 10:32:49', '', 2, 'http://w.localhost/wtf_blog/?p=4', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B21x9cz.DuXXhOb09cAlieTFwDpGGp/', 'admin', 'ishu.madan91@gmail.com', '', '2014-01-04 08:16:38', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

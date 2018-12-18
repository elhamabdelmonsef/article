-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2018 at 12:28 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mag`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-15 21:25:58', '2018-12-15 21:25:58', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/freelance/ahmed-idea/article', 'yes'),
(2, 'home', 'http://localhost/freelance/ahmed-idea/article', 'yes'),
(3, 'blogname', 'ColorMag', 'yes'),
(4, 'blogdescription', 'ColorMag Demo site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'elham.abdelmonsef@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1\";s:64:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:48:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]\";s:36:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:17:\"weglot/weglot.php\";i:1;s:63:\"wp-firebase-push-notification/wp-firebase-push-notification.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'colormag', 'yes'),
(41, 'stylesheet', 'colormag', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:7:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:2;a:2:{s:5:\"title\";s:14:\"Premium Themes\";s:4:\"text\";s:746:\"<ul>\n										<li><a href=\"https://themegrill.com/themes/spacious-pro/\">Spacious Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/foodhunt-pro/\">FoodHunt Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/colornews-pro/\">ColorNews Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/accelerate-pro/\">Accelerate Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/esteem-pro/\">Esteem Pro</a></li>\n										<li><a href=\"https://http://themegrill.com/themes/radiate-pro/\">Radiate Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/fitclub-pro/\">Fitclub Pro</a></li>\n										<li><a href=\"https://themegrill.com/themes/himalayas-pro/\">Himalayas Pro</a></li>\n									</ul>\";}i:3;a:2:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:398:\"<a title=\"logo\" href=\"http://localhost/freelance/ahmed-idea/wordpress\"><img src=\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/colormag-logo.png\" alt=\"Logo\" /></a> <br> We love WordPress and we are here to provide you with professional looking WordPress themes so that you can take your website one step ahead. We focus on simplicity, elegant design and clean code.\";}i:4;a:2:{s:5:\"title\";s:12:\"Useful Links\";s:4:\"text\";s:654:\"<ul>\n										<li><a href=\"https://themegrill.com/\">ThemeGrill</a></li>\n										<li><a href=\"https://themegrill.com/support-forum/\">Support</a></li>\n										<li><a href=\"https://themegrill.com/theme-instruction/colormag/\">Documentation</a></li>\n										<li><a href=\"https://themegrill.com/frequently-asked-questions/\">FAQ</a></li>\n										<li><a href=\"https://themegrill.com/themes/\">Themes</a></li>\n										<li><a href=\"https://themegrill.com/plugins/\">Plugins</a></li>\n										<li><a href=\"https://themegrill.com/blog/\">Blog</a></li>\n										<li><a href=\"https://themegrill.com/plans-pricing/\">Plans &amp; Pricing</a></li>\n									</ul>\";}i:5;a:2:{s:5:\"title\";s:12:\"Other Themes\";s:4:\"text\";s:747:\"<ul>\n										<li><a href=\"https://themegrill.com/themes/envince/\">Envince</a></li>\n										<li><a href=\"https://themegrill.com/themes/estore/\">eStore</a></li>\n										<li><a href=\"https://themegrill.com/themes/ample/\">Ample</a></li>\n										<li><a href=\"https://themegrill.com/themes/spacious/\">Spacious</a></li>\n										<li><a href=\"https://themegrill.com/themes/accelerate/\">Accelerate</a></li>\n										<li><a href=\"https://themegrill.com/themes/radiate/\">Radiate</a></li>\n										<li><a href=\"https://themegrill.com/themes/esteem/\">Esteem</a></li>\n										<li><a href=\"https://themegrill.com/themes/himalayas/\">Himalayas</a></li>\n										<li><a href=\"https://themegrill.com/themes/colornews/\">ColorNews</a></li>\n									</ul>\";}i:6;a:1:{s:4:\"text\";s:71:\"Contains all features of free version and many new additional features.\";}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:17:\"weglot/weglot.php\";s:23:\"weglot_plugin_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:0:{}s:22:\"colormag_right_sidebar\";a:3:{i:0;s:41:\"colormag_featured_posts_vertical_widget-2\";i:1;s:6:\"text-2\";i:2;s:39:\"colormag_125x125_advertisement_widget-2\";}s:21:\"colormag_left_sidebar\";a:0:{}s:23:\"colormag_header_sidebar\";a:1:{i:0;s:38:\"colormag_728x90_advertisement_widget-2\";}s:31:\"colormag_front_page_slider_area\";a:1:{i:0;s:39:\"colormag_featured_posts_slider_widget-2\";}s:38:\"colormag_front_page_area_beside_slider\";a:1:{i:0;s:35:\"colormag_highlighted_posts_widget-2\";}s:39:\"colormag_front_page_content_top_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-2\";}s:47:\"colormag_front_page_content_middle_left_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-3\";}s:48:\"colormag_front_page_content_middle_right_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-4\";}s:42:\"colormag_front_page_content_bottom_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-3\";}s:29:\"colormag_contact_page_sidebar\";a:0:{}s:31:\"colormag_error_404_page_sidebar\";a:0:{}s:47:\"colormag_advertisement_above_the_footer_sidebar\";a:0:{}s:27:\"colormag_footer_sidebar_one\";a:1:{i:0;s:6:\"text-3\";}s:27:\"colormag_footer_sidebar_two\";a:1:{i:0;s:6:\"text-4\";}s:29:\"colormag_footer_sidebar_three\";a:1:{i:0;s:6:\"text-5\";}s:28:\"colormag_footer_sidebar_four\";a:2:{i:0;s:39:\"colormag_300x250_advertisement_widget-2\";i:1;s:6:\"text-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1545128760;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545168360;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545168388;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545169521;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544909274;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"ar_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1545128571;s:15:\"version_checked\";s:5:\"5.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1545128574;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:17:\"weglot/weglot.php\";s:5:\"2.3.1\";s:63:\"wp-firebase-push-notification/wp-firebase-push-notification.php\";s:3:\"3.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"weglot/weglot.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/weglot\";s:4:\"slug\";s:6:\"weglot\";s:6:\"plugin\";s:17:\"weglot/weglot.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/weglot/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/weglot.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/weglot/assets/icon-256x256.png?rev=1784581\";s:2:\"1x\";s:59:\"https://ps.w.org/weglot/assets/icon-128x128.png?rev=1784581\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/weglot/assets/banner-1544x500.jpg?rev=1784581\";s:2:\"1x\";s:61:\"https://ps.w.org/weglot/assets/banner-772x250.jpg?rev=1784581\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"wp-firebase-push-notification/wp-firebase-push-notification.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/wp-firebase-push-notification\";s:4:\"slug\";s:29:\"wp-firebase-push-notification\";s:6:\"plugin\";s:63:\"wp-firebase-push-notification/wp-firebase-push-notification.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/wp-firebase-push-notification/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/wp-firebase-push-notification.3.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:73:\"https://s.w.org/plugins/geopattern-icon/wp-firebase-push-notification.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545128574;s:7:\"checked\";a:4:{s:8:\"colormag\";s:5:\"1.3.4\";s:14:\"twentynineteen\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.8\";s:13:\"twentysixteen\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_3cb814792c45ee8f64f41e2c224770f1', '1545513990', 'no'),
(121, '_site_transient_browser_3cb814792c45ee8f64f41e2c224770f1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"56.0.2924.87\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'ColorMag', 'yes'),
(139, 'theme_mods_colormag', 'a:21:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:22:\"colormag_breaking_news\";i:1;s:21:\"colormag_date_display\";i:1;s:30:\"colormag_header_logo_placement\";s:16:\"header_logo_only\";s:24:\"colormag_hide_blog_front\";i:1;s:28:\"colormag_search_icon_in_menu\";i:1;s:28:\"colormag_random_post_in_menu\";i:1;s:29:\"colormag_social_link_activate\";i:1;s:26:\"colormag_home_icon_display\";i:1;s:28:\"colormag_primary_sticky_menu\";i:1;s:31:\"colormag_related_posts_activate\";i:1;s:24:\"colormag_social_facebook\";s:1:\"#\";s:23:\"colormag_social_twitter\";s:1:\"#\";s:26:\"colormag_social_googleplus\";s:1:\"#\";s:25:\"colormag_social_instagram\";s:1:\"#\";s:25:\"colormag_social_pinterest\";s:1:\"#\";s:23:\"colormag_social_youtube\";s:1:\"#\";s:16:\"background_color\";s:6:\"eaeaea\";s:25:\"colormag_category_color_1\";s:7:\"#dd0808\";}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'widget_colormag_featured_posts_slider_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:1:{s:6:\"number\";i:2;}}', 'yes'),
(142, 'widget_colormag_highlighted_posts_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:1:{s:6:\"number\";i:4;}}', 'yes'),
(143, 'widget_colormag_featured_posts_widget', 'a:3:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:5:\"title\";s:6:\"HEALTH\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:10:\"TECHNOLOGY\";s:4:\"text\";s:39:\"Check out technology changing the life.\";s:6:\"number\";i:4;}}', 'yes'),
(144, 'widget_colormag_featured_posts_vertical_widget', 'a:4:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:5:\"title\";s:4:\"NEWS\";s:6:\"number\";i:2;}i:3;a:2:{s:5:\"title\";s:7:\"FASHION\";s:6:\"number\";i:4;}i:4;a:2:{s:5:\"title\";s:6:\"SPORTS\";s:6:\"number\";i:4;}}', 'yes'),
(145, 'widget_colormag_728x90_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:17:\"728x90_image_link\";s:41:\"https://demo.themegrill.com/colormag-pro/\";s:16:\"728x90_image_url\";s:91:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-large.jpg\";}}', 'yes'),
(146, 'widget_colormag_300x250_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:3:{s:5:\"title\";s:12:\"ColorMag Pro\";s:18:\"300x250_image_link\";s:41:\"https://demo.themegrill.com/colormag-pro/\";s:17:\"300x250_image_url\";s:92:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-medium.jpg\";}}', 'yes'),
(147, 'widget_colormag_125x125_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:9:{s:5:\"title\";s:15:\"TG: 125x125 Ads\";s:20:\"125x125_image_link_1\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_1\";s:91:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_2\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_2\";s:91:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_3\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_3\";s:91:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_4\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_4\";s:91:\"http://localhost/freelance/ahmed-idea/wordpress/wp-content/themes/colormag/img/ad-small.jpg\";}}', 'yes'),
(148, '_transient_timeout_colormag_theme_switched', '1545168474', 'no'),
(149, '_transient_colormag_theme_switched', 'colormag_new_theme_notice', 'no'),
(150, 'colormag_admin_notice_welcome', '1', 'yes'),
(165, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(173, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'weglot_version', '2.3.1', 'yes'),
(175, 'weglot-translate', 'a:22:{s:7:\"api_key\";s:36:\"wg_7ac344fb6b65a1c9cd164ad902fa4a860\";s:17:\"original_language\";s:2:\"ar\";s:20:\"destination_language\";a:1:{i:0;s:2:\"en\";}s:13:\"translate_amp\";i:0;s:14:\"exclude_blocks\";a:0:{}s:12:\"exclude_urls\";a:0:{}s:13:\"auto_redirect\";i:0;s:15:\"email_translate\";i:0;s:11:\"is_fullname\";i:1;s:9:\"with_name\";i:1;s:11:\"is_dropdown\";i:1;s:10:\"type_flags\";s:1:\"3\";s:10:\"with_flags\";i:1;s:12:\"override_css\";s:0:\"\";s:18:\"has_first_settings\";b:0;s:23:\"show_box_first_settings\";b:0;s:13:\"rtl_ltr_style\";s:0:\"\";s:7:\"allowed\";b:1;s:11:\"custom_urls\";a:0:{}s:8:\"flag_css\";s:0:\"\";s:12:\"private_mode\";a:5:{s:6:\"active\";i:0;s:2:\"en\";i:0;s:2:\"ar\";i:0;s:2:\"de\";i:0;s:2:\"fr\";i:0;}s:7:\"is_menu\";i:0;}', 'yes'),
(176, 'widget_weglot-translate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'stf_fcm_api', 'AAAAuJ30Dyk:APA91bGCHlWZ6ibknDk-frKFRFROtc4-8YwrRsitcQFnU8jFKDQ67YHWawHje7-nP8ug1uRfKEXP3dR5N0qaJJ35Rldx26Vw8eddGEUiOpKvNBwFwgxZxsLrjcyQuravNQ_z_k0kONMy', 'yes'),
(238, 'fcm_option', 'topic', 'yes'),
(239, 'fcm_topic', 'article-4eccd', 'yes'),
(240, 'fcm_disable', '1', 'yes'),
(241, 'fcm_update_disable', '1', 'yes'),
(242, 'fcm_page_disable', '1', 'yes'),
(243, 'fcm_update_page_disable', '1', 'yes'),
(246, '_site_transient_timeout_theme_roots', '1545130373', 'no'),
(247, '_site_transient_theme_roots', 'a:4:{s:8:\"colormag\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', 'layout'),
(4, 5, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(5, 6, '_wp_page_template', 'page-templates/contact.php'),
(6, 6, '_customize_draft_post_name', 'contact'),
(7, 6, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(8, 7, '_customize_draft_post_name', 'coffee-is-health-food-myth-or-fact'),
(9, 7, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(10, 8, '_customize_draft_post_name', 'get-more-nutrition-in-every-bite'),
(11, 8, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(12, 9, '_customize_draft_post_name', 'womens-relay-competition'),
(13, 9, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(14, 10, '_customize_draft_post_name', 'a-paradise-for-holiday'),
(15, 10, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(16, 11, '_customize_draft_post_name', 'destruction-in-montania'),
(17, 11, '_customize_changeset_uuid', '3a02274e-16c7-4baf-96e7-4b78e78d6a75'),
(19, 13, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(20, 14, '_wp_page_template', 'page-templates/contact.php'),
(22, 14, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(24, 15, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(26, 16, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(28, 17, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(30, 18, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(32, 19, '_customize_changeset_uuid', '6f651aff-c6c0-48ec-8bf8-03689dd81751'),
(38, 28, '_menu_item_type', 'custom'),
(39, 28, '_menu_item_menu_item_parent', '0'),
(40, 28, '_menu_item_object_id', '28'),
(41, 28, '_menu_item_object', 'custom'),
(42, 28, '_menu_item_target', ''),
(43, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 28, '_menu_item_xfn', ''),
(45, 28, '_menu_item_url', 'https://downloads.wordpress.org/theme/colormag.zip'),
(46, 29, '_menu_item_type', 'custom'),
(47, 29, '_menu_item_menu_item_parent', '0'),
(48, 29, '_menu_item_object_id', '29'),
(49, 29, '_menu_item_object', 'custom'),
(50, 29, '_menu_item_target', ''),
(51, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 29, '_menu_item_xfn', ''),
(53, 29, '_menu_item_url', 'https://themegrill.com/themes/colormag/'),
(54, 30, '_menu_item_type', 'custom'),
(55, 30, '_menu_item_menu_item_parent', '0'),
(56, 30, '_menu_item_object_id', '30'),
(57, 30, '_menu_item_object', 'custom'),
(58, 30, '_menu_item_target', ''),
(59, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 30, '_menu_item_xfn', ''),
(61, 30, '_menu_item_url', 'https://themegrill.com/themes/colormag/'),
(62, 31, '_menu_item_type', 'post_type'),
(63, 31, '_menu_item_menu_item_parent', '0'),
(64, 31, '_menu_item_object_id', '13'),
(65, 31, '_menu_item_object', 'page'),
(66, 31, '_menu_item_target', ''),
(67, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 31, '_menu_item_xfn', ''),
(69, 31, '_menu_item_url', ''),
(70, 32, '_menu_item_type', 'post_type'),
(71, 32, '_menu_item_menu_item_parent', '0'),
(72, 32, '_menu_item_object_id', '14'),
(73, 32, '_menu_item_object', 'page'),
(74, 32, '_menu_item_target', ''),
(75, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 32, '_menu_item_xfn', ''),
(77, 32, '_menu_item_url', ''),
(78, 20, '_wp_trash_meta_status', 'publish'),
(79, 20, '_wp_trash_meta_time', '1544983930'),
(80, 12, '_customize_restore_dismissed', '1'),
(81, 33, '_edit_lock', '1544984486:1'),
(82, 33, '_wp_trash_meta_status', 'publish'),
(83, 33, '_wp_trash_meta_time', '1544984528'),
(84, 34, '_edit_lock', '1544984787:1'),
(85, 34, '_wp_trash_meta_status', 'publish'),
(86, 34, '_wp_trash_meta_time', '1544984789'),
(87, 35, '_edit_lock', '1544998958:1'),
(88, 15, '_edit_lock', '1544998691:1'),
(89, 36, '_edit_lock', '1544998958:1'),
(91, 36, '_edit_last', '1'),
(92, 36, 'colormag_page_layout', 'default_layout'),
(94, 38, '_edit_lock', '1545046650:1'),
(96, 38, '_edit_last', '1'),
(97, 38, 'colormag_page_layout', 'default_layout'),
(99, 40, '_edit_lock', '1545048783:1'),
(101, 40, '_edit_last', '1'),
(102, 40, 'colormag_page_layout', 'default_layout'),
(103, 40, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-15 21:25:58', '2018-12-15 21:25:58', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-12-15 21:25:58', '2018-12-15 21:25:58', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-15 21:25:58', '2018-12-15 21:25:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/freelance/ahmed-idea/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-12-15 21:25:58', '2018-12-15 21:25:58', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-15 21:25:58', '2018-12-15 21:25:58', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/freelance/ahmed-idea/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-12-15 21:25:58', '2018-12-15 21:25:58', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-12-15 21:26:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:26:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'ThemeGrill layout content', 'Layout', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet', 'Coffee is health food: Myth or fact?', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind. Germany missed six targets overall, avoiding any laps around the penalty loop. Maria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Women’s Relay Competition', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=9', 0, 'post', '', 0),
(10, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'Chocolate bar marzipan sweet marzipan. Danish tart bear claw donut cake bonbon biscuit powder croissant. Liquorice cake cookie. Dessert cotton candy macaroon gummies sweet gingerbread sugar plum. Biscuit tart cake. Candy jelly ice cream halvah jelly-o jelly beans brownie pastry sweet. Candy sweet roll dessert. Lemon drops jelly-o fruitcake topping. Soufflé jelly beans bonbon.', 'A Paradise for Holiday', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', 'Nunc consectetur ipsum nisi, ut pellentesque felis tempus vitae. Integer eget lacinia nunc. Vestibulum consectetur convallis augue id egestas. Nullam rhoncus, arcu in tincidunt ultricies, velit diam imperdiet lacus, sed faucibus mi massa vel nunc. In ac viverra augue, a luctus nisl. Donec interdum enim tempus, aliquet metus maximus, euismod quam. Sed pretium finibus rhoncus. Phasellus libero diam, rutrum non ipsum ut, ultricies sodales sapien. Duis viverra purus lorem.', 'Destruction in Montania', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2018-12-15 21:28:14', '0000-00-00 00:00:00', '{\n    \"widget_colormag_728x90_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiI3Mjh4OTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTY6IjcyOHg5MF9pbWFnZV91cmwiO3M6OTE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJlZWxhbmNlL2FobWVkLWlkZWEvd29yZHByZXNzL3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1sYXJnZS5qcGciO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3bc87637eafad773667ad3f2865a374c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_header_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_728x90_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_slider_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aToyO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5d7464e39f24b8b461ea38ee3153b5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_slider_area]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_slider_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_highlighted_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aTo0O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3b6fb0a4b48d65013580c56c905be877\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_area_beside_slider]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_highlighted_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjQ6Ik5FV1MiO3M6NjoibnVtYmVyIjtpOjI7fQ==\",\n            \"title\": \"NEWS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2f0d8fd603fd708947d0e2aa6cd3d062\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE0OiJQcmVtaXVtIFRoZW1lcyI7czo0OiJ0ZXh0IjtzOjc0NjoiPHVsPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL3NwYWNpb3VzLXByby8iPlNwYWNpb3VzIFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2Zvb2RodW50LXByby8iPkZvb2RIdW50IFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy1wcm8vIj5Db2xvck5ld3MgUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvYWNjZWxlcmF0ZS1wcm8vIj5BY2NlbGVyYXRlIFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdGVlbS1wcm8vIj5Fc3RlZW0gUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly9odHRwOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL3JhZGlhdGUtcHJvLyI+UmFkaWF0ZSBQcm88L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9maXRjbHViLXByby8iPkZpdGNsdWIgUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvaGltYWxheWFzLXByby8iPkhpbWFsYXlhcyBQcm88L2E+PC9saT4KCQkJCQkJCQkJPC91bD4iO30=\",\n            \"title\": \"Premium Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0ef72968fdd284ac8d4ba364a6349c42\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_125x125_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjE1OiJURzogMTI1eDEyNSBBZHMiO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua18xIjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfMSI7czo5MToiaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3Mvd3AtY29udGVudC90aGVtZXMvY29sb3JtYWcvaW1nL2FkLXNtYWxsLmpwZyI7czoyMDoiMTI1eDEyNV9pbWFnZV9saW5rXzIiO3M6MjM6Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vIjtzOjE5OiIxMjV4MTI1X2ltYWdlX3VybF8yIjtzOjkxOiJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvYWQtc21hbGwuanBnIjtzOjIwOiIxMjV4MTI1X2ltYWdlX2xpbmtfMyI7czoyMzoiaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS8iO3M6MTk6IjEyNXgxMjVfaW1hZ2VfdXJsXzMiO3M6OTE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJlZWxhbmNlL2FobWVkLWlkZWEvd29yZHByZXNzL3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua180IjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfNCI7czo5MToiaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3Mvd3AtY29udGVudC90aGVtZXMvY29sb3JtYWcvaW1nL2FkLXNtYWxsLmpwZyI7fQ==\",\n            \"title\": \"TG: 125x125 Ads\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b2e40ff9424b289eb0ce202039c2aee2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_right_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-2\",\n            \"text-2\",\n            \"colormag_125x125_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IkhFQUxUSCI7czo2OiJudW1iZXIiO2k6NTt9\",\n            \"title\": \"HEALTH\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"01926221ea58736ea2e22828c1b963a1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_top_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjc6IkZBU0hJT04iO3M6NjoibnVtYmVyIjtpOjQ7fQ==\",\n            \"title\": \"FASHION\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1d10c96d7cf3f4156a2b1191d4b4c56e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_left_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IlNQT1JUUyI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"SPORTS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a039281ddd2b008be9a60e7eb6f023f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_right_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_featured_posts_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEwOiJURUNITk9MT0dZIjtzOjQ6InRleHQiO3M6Mzk6IkNoZWNrIG91dCB0ZWNobm9sb2d5IGNoYW5naW5nIHRoZSBsaWZlLiI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"TECHNOLOGY\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f173e98c1d5a3c23461401825e3ec333\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_bottom_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjg6IkFib3V0IFVzIjtzOjQ6InRleHQiO3M6Mzk4OiI8YSB0aXRsZT0ibG9nbyIgaHJlZj0iaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3MiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvY29sb3JtYWctbG9nby5wbmciIGFsdD0iTG9nbyIgLz48L2E+IDxicj4gV2UgbG92ZSBXb3JkUHJlc3MgYW5kIHdlIGFyZSBoZXJlIHRvIHByb3ZpZGUgeW91IHdpdGggcHJvZmVzc2lvbmFsIGxvb2tpbmcgV29yZFByZXNzIHRoZW1lcyBzbyB0aGF0IHlvdSBjYW4gdGFrZSB5b3VyIHdlYnNpdGUgb25lIHN0ZXAgYWhlYWQuIFdlIGZvY3VzIG9uIHNpbXBsaWNpdHksIGVsZWdhbnQgZGVzaWduIGFuZCBjbGVhbiBjb2RlLiI7fQ==\",\n            \"title\": \"About Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e5324a3558c95092e2acebf02881a7dd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_one]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJVc2VmdWwgTGlua3MiO3M6NDoidGV4dCI7czo2NTQ6Ijx1bD4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI+VGhlbWVHcmlsbDwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vc3VwcG9ydC1mb3J1bS8iPlN1cHBvcnQ8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lLWluc3RydWN0aW9uL2NvbG9ybWFnLyI+RG9jdW1lbnRhdGlvbjwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vZnJlcXVlbnRseS1hc2tlZC1xdWVzdGlvbnMvIj5GQVE8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy8iPlRoZW1lczwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vcGx1Z2lucy8iPlBsdWdpbnM8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL2Jsb2cvIj5CbG9nPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS9wbGFucy1wcmljaW5nLyI+UGxhbnMgJmFtcDsgUHJpY2luZzwvYT48L2xpPgoJCQkJCQkJCQk8L3VsPiI7fQ==\",\n            \"title\": \"Useful Links\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a9ff79d2dae54993b4bef30b02f16d9a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_two]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJPdGhlciBUaGVtZXMiO3M6NDoidGV4dCI7czo3NDc6Ijx1bD4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9lbnZpbmNlLyI+RW52aW5jZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdG9yZS8iPmVTdG9yZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2FtcGxlLyI+QW1wbGU8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9zcGFjaW91cy8iPlNwYWNpb3VzPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvYWNjZWxlcmF0ZS8iPkFjY2VsZXJhdGU8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9yYWRpYXRlLyI+UmFkaWF0ZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdGVlbS8iPkVzdGVlbTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2hpbWFsYXlhcy8iPkhpbWFsYXlhczwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy8iPkNvbG9yTmV3czwvYT48L2xpPgoJCQkJCQkJCQk8L3VsPiI7fQ==\",\n            \"title\": \"Other Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"11e42246aee271a9750417193003dfd6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_three]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_colormag_300x250_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiJDb2xvck1hZyBQcm8iO3M6MTg6IjMwMHgyNTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTc6IjMwMHgyNTBfaW1hZ2VfdXJsIjtzOjkyOiJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvYWQtbWVkaXVtLmpwZyI7fQ==\",\n            \"title\": \"ColorMag Pro\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ee0e214d029b5254a631ea442c103cb8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjQ6InRleHQiO3M6NzE6IkNvbnRhaW5zIGFsbCBmZWF0dXJlcyBvZiBmcmVlIHZlcnNpb24gYW5kIG1hbnkgbmV3IGFkZGl0aW9uYWwgZmVhdHVyZXMuIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c9c20bbc21feeed8a7b34704e6fc9343\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_four]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_300x250_advertisement_widget-2\",\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Download\",\n            \"url\": \"https://downloads.wordpress.org/theme/colormag.zip\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Theme Info\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"View pro\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Layout\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 4,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"blogname\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"blogdescription\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag Demo site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_breaking_news\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_date_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"starter_content\": true,\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_hide_blog_front\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_search_icon_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_random_post_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_link_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_home_icon_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_primary_sticky_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_related_posts_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_facebook\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_twitter\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_googleplus\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_instagram\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_pinterest\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    },\n    \"colormag::colormag_social_youtube\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-15 21:28:14\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '3a02274e-16c7-4baf-96e7-4b78e78d6a75', '', '', '2018-12-15 21:28:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'ThemeGrill layout content', 'Layout', '', 'publish', 'closed', 'closed', '', 'layout', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet', 'Coffee is health food: Myth or fact?', '', 'publish', 'open', 'open', '', 'coffee-is-health-food-myth-or-fact', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=15', 0, 'post', '', 0),
(16, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'publish', 'open', 'open', '', 'get-more-nutrition-in-every-bite', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind. Germany missed six targets overall, avoiding any laps around the penalty loop. Maria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Women’s Relay Competition', '', 'publish', 'open', 'open', '', 'womens-relay-competition', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Chocolate bar marzipan sweet marzipan. Danish tart bear claw donut cake bonbon biscuit powder croissant. Liquorice cake cookie. Dessert cotton candy macaroon gummies sweet gingerbread sugar plum. Biscuit tart cake. Candy jelly ice cream halvah jelly-o jelly beans brownie pastry sweet. Candy sweet roll dessert. Lemon drops jelly-o fruitcake topping. Soufflé jelly beans bonbon.', 'A Paradise for Holiday', '', 'publish', 'open', 'open', '', 'a-paradise-for-holiday', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=18', 0, 'post', '', 0),
(19, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Nunc consectetur ipsum nisi, ut pellentesque felis tempus vitae. Integer eget lacinia nunc. Vestibulum consectetur convallis augue id egestas. Nullam rhoncus, arcu in tincidunt ultricies, velit diam imperdiet lacus, sed faucibus mi massa vel nunc. In ac viverra augue, a luctus nisl. Donec interdum enim tempus, aliquet metus maximus, euismod quam. Sed pretium finibus rhoncus. Phasellus libero diam, rutrum non ipsum ut, ultricies sodales sapien. Duis viverra purus lorem.', 'Destruction in Montania', '', 'publish', 'open', 'open', '', 'destruction-in-montania', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=19', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(20, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', '{\n    \"widget_colormag_728x90_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiI3Mjh4OTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTY6IjcyOHg5MF9pbWFnZV91cmwiO3M6OTE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJlZWxhbmNlL2FobWVkLWlkZWEvd29yZHByZXNzL3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1sYXJnZS5qcGciO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3bc87637eafad773667ad3f2865a374c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_header_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_728x90_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_slider_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aToyO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5d7464e39f24b8b461ea38ee3153b5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_slider_area]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_slider_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_highlighted_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aTo0O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3b6fb0a4b48d65013580c56c905be877\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_area_beside_slider]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_highlighted_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjQ6Ik5FV1MiO3M6NjoibnVtYmVyIjtpOjI7fQ==\",\n            \"title\": \"NEWS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2f0d8fd603fd708947d0e2aa6cd3d062\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE0OiJQcmVtaXVtIFRoZW1lcyI7czo0OiJ0ZXh0IjtzOjc0NjoiPHVsPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL3NwYWNpb3VzLXByby8iPlNwYWNpb3VzIFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2Zvb2RodW50LXByby8iPkZvb2RIdW50IFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy1wcm8vIj5Db2xvck5ld3MgUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvYWNjZWxlcmF0ZS1wcm8vIj5BY2NlbGVyYXRlIFBybzwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdGVlbS1wcm8vIj5Fc3RlZW0gUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly9odHRwOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL3JhZGlhdGUtcHJvLyI+UmFkaWF0ZSBQcm88L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9maXRjbHViLXByby8iPkZpdGNsdWIgUHJvPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvaGltYWxheWFzLXByby8iPkhpbWFsYXlhcyBQcm88L2E+PC9saT4KCQkJCQkJCQkJPC91bD4iO30=\",\n            \"title\": \"Premium Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0ef72968fdd284ac8d4ba364a6349c42\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_125x125_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjE1OiJURzogMTI1eDEyNSBBZHMiO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua18xIjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfMSI7czo5MToiaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3Mvd3AtY29udGVudC90aGVtZXMvY29sb3JtYWcvaW1nL2FkLXNtYWxsLmpwZyI7czoyMDoiMTI1eDEyNV9pbWFnZV9saW5rXzIiO3M6MjM6Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vIjtzOjE5OiIxMjV4MTI1X2ltYWdlX3VybF8yIjtzOjkxOiJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvYWQtc21hbGwuanBnIjtzOjIwOiIxMjV4MTI1X2ltYWdlX2xpbmtfMyI7czoyMzoiaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS8iO3M6MTk6IjEyNXgxMjVfaW1hZ2VfdXJsXzMiO3M6OTE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJlZWxhbmNlL2FobWVkLWlkZWEvd29yZHByZXNzL3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua180IjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfNCI7czo5MToiaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3Mvd3AtY29udGVudC90aGVtZXMvY29sb3JtYWcvaW1nL2FkLXNtYWxsLmpwZyI7fQ==\",\n            \"title\": \"TG: 125x125 Ads\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b2e40ff9424b289eb0ce202039c2aee2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_right_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-2\",\n            \"text-2\",\n            \"colormag_125x125_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IkhFQUxUSCI7czo2OiJudW1iZXIiO2k6NTt9\",\n            \"title\": \"HEALTH\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"01926221ea58736ea2e22828c1b963a1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_top_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjc6IkZBU0hJT04iO3M6NjoibnVtYmVyIjtpOjQ7fQ==\",\n            \"title\": \"FASHION\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1d10c96d7cf3f4156a2b1191d4b4c56e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_left_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IlNQT1JUUyI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"SPORTS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a039281ddd2b008be9a60e7eb6f023f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_right_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_featured_posts_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEwOiJURUNITk9MT0dZIjtzOjQ6InRleHQiO3M6Mzk6IkNoZWNrIG91dCB0ZWNobm9sb2d5IGNoYW5naW5nIHRoZSBsaWZlLiI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"TECHNOLOGY\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f173e98c1d5a3c23461401825e3ec333\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_bottom_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjg6IkFib3V0IFVzIjtzOjQ6InRleHQiO3M6Mzk4OiI8YSB0aXRsZT0ibG9nbyIgaHJlZj0iaHR0cDovL2xvY2FsaG9zdC9mcmVlbGFuY2UvYWhtZWQtaWRlYS93b3JkcHJlc3MiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvY29sb3JtYWctbG9nby5wbmciIGFsdD0iTG9nbyIgLz48L2E+IDxicj4gV2UgbG92ZSBXb3JkUHJlc3MgYW5kIHdlIGFyZSBoZXJlIHRvIHByb3ZpZGUgeW91IHdpdGggcHJvZmVzc2lvbmFsIGxvb2tpbmcgV29yZFByZXNzIHRoZW1lcyBzbyB0aGF0IHlvdSBjYW4gdGFrZSB5b3VyIHdlYnNpdGUgb25lIHN0ZXAgYWhlYWQuIFdlIGZvY3VzIG9uIHNpbXBsaWNpdHksIGVsZWdhbnQgZGVzaWduIGFuZCBjbGVhbiBjb2RlLiI7fQ==\",\n            \"title\": \"About Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e5324a3558c95092e2acebf02881a7dd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_one]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJVc2VmdWwgTGlua3MiO3M6NDoidGV4dCI7czo2NTQ6Ijx1bD4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI+VGhlbWVHcmlsbDwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vc3VwcG9ydC1mb3J1bS8iPlN1cHBvcnQ8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lLWluc3RydWN0aW9uL2NvbG9ybWFnLyI+RG9jdW1lbnRhdGlvbjwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vZnJlcXVlbnRseS1hc2tlZC1xdWVzdGlvbnMvIj5GQVE8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy8iPlRoZW1lczwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vcGx1Z2lucy8iPlBsdWdpbnM8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL2Jsb2cvIj5CbG9nPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS9wbGFucy1wcmljaW5nLyI+UGxhbnMgJmFtcDsgUHJpY2luZzwvYT48L2xpPgoJCQkJCQkJCQk8L3VsPiI7fQ==\",\n            \"title\": \"Useful Links\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a9ff79d2dae54993b4bef30b02f16d9a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_two]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJPdGhlciBUaGVtZXMiO3M6NDoidGV4dCI7czo3NDc6Ijx1bD4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9lbnZpbmNlLyI+RW52aW5jZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdG9yZS8iPmVTdG9yZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2FtcGxlLyI+QW1wbGU8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9zcGFjaW91cy8iPlNwYWNpb3VzPC9hPjwvbGk+CgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvYWNjZWxlcmF0ZS8iPkFjY2VsZXJhdGU8L2E+PC9saT4KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9yYWRpYXRlLyI+UmFkaWF0ZTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2VzdGVlbS8iPkVzdGVlbTwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2hpbWFsYXlhcy8iPkhpbWFsYXlhczwvYT48L2xpPgoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy8iPkNvbG9yTmV3czwvYT48L2xpPgoJCQkJCQkJCQk8L3VsPiI7fQ==\",\n            \"title\": \"Other Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"11e42246aee271a9750417193003dfd6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_three]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_colormag_300x250_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiJDb2xvck1hZyBQcm8iO3M6MTg6IjMwMHgyNTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTc6IjMwMHgyNTBfaW1hZ2VfdXJsIjtzOjkyOiJodHRwOi8vbG9jYWxob3N0L2ZyZWVsYW5jZS9haG1lZC1pZGVhL3dvcmRwcmVzcy93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvYWQtbWVkaXVtLmpwZyI7fQ==\",\n            \"title\": \"ColorMag Pro\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ee0e214d029b5254a631ea442c103cb8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjQ6InRleHQiO3M6NzE6IkNvbnRhaW5zIGFsbCBmZWF0dXJlcyBvZiBmcmVlIHZlcnNpb24gYW5kIG1hbnkgbmV3IGFkZGl0aW9uYWwgZmVhdHVyZXMuIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c9c20bbc21feeed8a7b34704e6fc9343\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_four]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_300x250_advertisement_widget-2\",\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Download\",\n            \"url\": \"https://downloads.wordpress.org/theme/colormag.zip\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Theme Info\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"View pro\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Layout\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Layout\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    },\n    \"colormag::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"blogname\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"blogdescription\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag Demo site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_breaking_news\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_date_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"starter_content\": true,\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_hide_blog_front\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_search_icon_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_random_post_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_link_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_home_icon_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_primary_sticky_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_related_posts_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_facebook\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_twitter\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_googleplus\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_instagram\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_pinterest\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::colormag_social_youtube\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:10:22\"\n    },\n    \"colormag::background_color\": {\n        \"value\": \"#59d600\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f651aff-c6c0-48ec-8bf8-03689dd81751', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'ThemeGrill layout content', 'Layout', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 13, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 14, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/14-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet', 'Coffee is health food: Myth or fact?', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 15, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/15-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 16, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/16-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind. Germany missed six targets overall, avoiding any laps around the penalty loop. Maria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Women’s Relay Competition', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 17, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/17-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Chocolate bar marzipan sweet marzipan. Danish tart bear claw donut cake bonbon biscuit powder croissant. Liquorice cake cookie. Dessert cotton candy macaroon gummies sweet gingerbread sugar plum. Biscuit tart cake. Candy jelly ice cream halvah jelly-o jelly beans brownie pastry sweet. Candy sweet roll dessert. Lemon drops jelly-o fruitcake topping. Soufflé jelly beans bonbon.', 'A Paradise for Holiday', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 18, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/18-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-12-16 18:12:09', '2018-12-16 18:12:09', 'Nunc consectetur ipsum nisi, ut pellentesque felis tempus vitae. Integer eget lacinia nunc. Vestibulum consectetur convallis augue id egestas. Nullam rhoncus, arcu in tincidunt ultricies, velit diam imperdiet lacus, sed faucibus mi massa vel nunc. In ac viverra augue, a luctus nisl. Donec interdum enim tempus, aliquet metus maximus, euismod quam. Sed pretium finibus rhoncus. Phasellus libero diam, rutrum non ipsum ut, ultricies sodales sapien. Duis viverra purus lorem.', 'Destruction in Montania', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-16 18:12:09', '2018-12-16 18:12:09', '', 19, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/19-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 'Download', '', 'publish', 'closed', 'closed', '', 'download', '', '', '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/download/', 0, 'nav_menu_item', '', 0),
(29, 1, '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 'Theme Info', '', 'publish', 'closed', 'closed', '', 'theme-info', '', '', '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/theme-info/', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 'View pro', '', 'publish', 'closed', 'closed', '', 'view-pro', '', '', '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/view-pro/', 2, 'nav_menu_item', '', 0),
(31, 1, '2018-12-16 18:12:10', '2018-12-16 18:12:10', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/31/', 3, 'nav_menu_item', '', 0),
(32, 1, '2018-12-16 18:12:10', '2018-12-16 18:12:10', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-12-16 18:12:10', '2018-12-16 18:12:10', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/index.php/2018/12/16/32/', 4, 'nav_menu_item', '', 0),
(33, 1, '2018-12-16 18:22:08', '2018-12-16 18:22:08', '{\n    \"colormag::background_color\": {\n        \"value\": \"#eaeaea\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:12:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2fe1b2e0-7fc1-4726-944b-0435a204353b', '', '', '2018-12-16 18:22:08', '2018-12-16 18:22:08', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2018-12-16 18:26:29', '2018-12-16 18:26:29', '{\n    \"colormag::colormag_category_color_1\": {\n        \"value\": \"#dd0808\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-16 18:26:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2eb2b6e-58ad-4b14-a07c-2a190eeaea7a', '', '', '2018-12-16 18:26:29', '2018-12-16 18:26:29', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2018-12-16 21:45:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-16 21:45:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2018-12-16 22:23:58', '2018-12-16 22:23:58', '<!-- wp:paragraph -->\n<p>اول مقال عربى </p>\n<!-- /wp:paragraph -->', 'اول مقال', '', 'publish', 'open', 'open', '', '%d8%a7%d9%88%d9%84-%d9%85%d9%82%d8%a7%d9%84', '', '', '2018-12-16 22:23:59', '2018-12-16 22:23:59', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2018-12-16 22:23:58', '2018-12-16 22:23:58', '<!-- wp:paragraph -->\n<p>اول مقال عربى </p>\n<!-- /wp:paragraph -->', 'اول مقال', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-12-16 22:23:58', '2018-12-16 22:23:58', '', 36, 'http://localhost/freelance/ahmed-idea/wordpress/2018/12/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-12-17 10:14:36', '2018-12-17 10:14:36', '<!-- wp:paragraph -->\n<p>جديد فى جديد</p>\n<!-- /wp:paragraph -->', 'جديد', '', 'publish', 'open', 'open', '', '%d8%ac%d8%af%d9%8a%d8%af', '', '', '2018-12-17 10:14:37', '2018-12-17 10:14:37', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=38', 0, 'post', '', 0),
(39, 1, '2018-12-17 10:14:36', '2018-12-17 10:14:36', '<!-- wp:paragraph -->\n<p>جديد فى جديد</p>\n<!-- /wp:paragraph -->', 'جديد', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-12-17 10:14:36', '2018-12-17 10:14:36', '', 38, 'http://localhost/freelance/ahmed-idea/wordpress/2018/12/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-12-17 11:51:05', '2018-12-17 11:51:05', '<!-- wp:paragraph -->\n<p>نجرب</p>\n<!-- /wp:paragraph -->', 'نجرب', '', 'publish', 'open', 'open', '', '%d9%86%d8%ac%d8%b1%d8%a8', '', '', '2018-12-17 11:51:06', '2018-12-17 11:51:06', '', 0, 'http://localhost/freelance/ahmed-idea/wordpress/?p=40', 0, 'post', '', 0),
(41, 1, '2018-12-17 11:51:05', '2018-12-17 11:51:05', '<!-- wp:paragraph -->\n<p>نجرب</p>\n<!-- /wp:paragraph -->', 'نجرب', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-12-17 11:51:05', '2018-12-17 11:51:05', '', 40, 'http://localhost/freelance/ahmed-idea/wordpress/2018/12/40-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 9),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ahmed'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"ade915d1e4215a0f4108457b3ac17844c753aa0fdc96800297ea1234466da601\";a:4:{s:10:\"expiration\";i:1546118788;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\";s:5:\"login\";i:1544909188;}s:64:\"67cbd963ed2a3c60fc476051b0843872bebe5675d2178c9a007e4558ebf18603\";a:4:{s:10:\"expiration\";i:1545161962;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\";s:5:\"login\";i:1544989162;}s:64:\"bd467af9ae403c5fb438ebc25197071ced94c8f8689cfcd5b92a061db930ffc3\";a:4:{s:10:\"expiration\";i:1546198867;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\";s:5:\"login\";i:1544989267;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o'),
(19, 1, 'wp_user-settings-time', '1545040424'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ahmed', '$P$BwFpt8whKQhg4aT44dRtTmbVEvIb2H1', 'ahmed', 'elham.abdelmonsef@gmail.com', '', '2018-12-15 21:25:58', '', 0, 'ahmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

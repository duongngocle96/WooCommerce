-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2020 lúc 01:18 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_woo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_actionscheduler_actions`
--

CREATE TABLE `tbl_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_actionscheduler_actions`
--

INSERT INTO `tbl_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-11-02 02:59:03', '2020-11-02 02:59:03', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604285943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604285943;}', 2, 1, '2020-11-02 02:59:45', '2020-11-02 02:59:45', 0, NULL),
(7, 'action_scheduler/migration_hook', 'canceled', '2020-11-02 02:59:03', '2020-11-02 02:59:03', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604285943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604285943;}', 1, 0, '2020-11-02 02:59:42', '2020-11-02 02:59:42', 0, NULL),
(8, 'action_scheduler/migration_hook', 'complete', '2020-11-02 02:59:03', '2020-11-02 02:59:03', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604285943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604285943;}', 3, 1, '2020-11-02 02:59:45', '2020-11-02 02:59:45', 0, NULL),
(9, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-11-02 03:49:42', '2020-11-02 03:49:42', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604288982;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604288982;}', 0, 1, '2020-11-02 03:49:52', '2020-11-02 03:49:52', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_actionscheduler_claims`
--

CREATE TABLE `tbl_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_actionscheduler_groups`
--

CREATE TABLE `tbl_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_actionscheduler_groups`
--

INSERT INTO `tbl_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration'),
(3, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_actionscheduler_logs`
--

CREATE TABLE `tbl_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_actionscheduler_logs`
--

INSERT INTO `tbl_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-11-02 02:58:04', '2020-11-02 02:58:04'),
(2, 8, 'action created', '2020-11-02 02:58:05', '2020-11-02 02:58:05'),
(3, 7, 'action created', '2020-11-02 02:58:05', '2020-11-02 02:58:05'),
(4, 6, 'action started via WP Cron', '2020-11-02 02:59:42', '2020-11-02 02:59:42'),
(5, 7, 'action canceled', '2020-11-02 02:59:44', '2020-11-02 02:59:44'),
(6, 6, 'action complete via WP Cron', '2020-11-02 02:59:45', '2020-11-02 02:59:45'),
(7, 7, 'action ignored via WP Cron', '2020-11-02 02:59:45', '2020-11-02 02:59:45'),
(8, 8, 'action started via WP Cron', '2020-11-02 02:59:45', '2020-11-02 02:59:45'),
(9, 8, 'action complete via WP Cron', '2020-11-02 02:59:45', '2020-11-02 02:59:45'),
(10, 9, 'action created', '2020-11-02 03:49:42', '2020-11-02 03:49:42'),
(11, 9, 'action started via Async Request', '2020-11-02 03:49:50', '2020-11-02 03:49:50'),
(12, 9, 'action complete via Async Request', '2020-11-02 03:49:52', '2020-11-02 03:49:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_commentmeta`
--

CREATE TABLE `tbl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-11-02 02:53:33', '2020-11-02 02:53:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_links`
--

CREATE TABLE `tbl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_options`
--

CREATE TABLE `tbl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_options`
--

INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'duongngocle96@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:19:\"wp-smtp/wp-smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:58:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/shop/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'shop', 'yes'),
(41, 'stylesheet', 'shop', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '0', 'yes'),
(57, 'thumbnail_size_h', '0', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '0', 'yes'),
(60, 'medium_size_h', '0', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '0', 'yes'),
(63, 'large_size_h', '0', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1619837597', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'tbl_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:20:{i:1604718572;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604720255;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604720256;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604729360;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604880435;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1604883218;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604883587;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604883589;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604884032;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1604890416;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604890418;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604890419;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604890447;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604890450;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604891370;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604912961;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604966400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604976816;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1605582621;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604290847;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1604880450;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"duongngocle96@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604285644;}', 'no'),
(128, '_site_transient_timeout_browser_779907e610943ae67ea2ec9b8026591e', '1604890448', 'no'),
(129, '_site_transient_browser_779907e610943ae67ea2ec9b8026591e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.111\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1604890449', 'no'),
(131, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(154, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(156, 'schema-ActionScheduler_StoreSchema', '3.0.1604285833', 'yes'),
(158, 'schema-ActionScheduler_LoggerSchema', '2.0.1604285834', 'yes'),
(166, 'action_scheduler_lock_async-request-runner', '1604880550', 'yes'),
(167, 'woocommerce_schema_version', '430', 'yes'),
(169, 'woocommerce_store_address', 'da nang', 'yes'),
(171, 'woocommerce_store_address_2', 'da nang', 'yes'),
(172, 'woocommerce_store_city', 'da nang', 'yes'),
(173, 'woocommerce_default_country', 'VN', 'yes'),
(174, 'woocommerce_store_postcode', '550000', 'yes'),
(176, 'woocommerce_allowed_countries', 'all', 'yes'),
(178, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(179, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(180, 'woocommerce_ship_to_countries', '', 'yes'),
(181, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(182, 'woocommerce_default_customer_address', 'base', 'yes'),
(183, 'woocommerce_calc_taxes', 'no', 'yes'),
(185, 'woocommerce_enable_coupons', 'yes', 'yes'),
(186, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(188, 'woocommerce_currency', 'VND', 'yes'),
(190, 'woocommerce_currency_pos', 'right', 'yes'),
(192, 'woocommerce_price_thousand_sep', '.', 'yes'),
(194, 'woocommerce_price_decimal_sep', '.', 'yes'),
(195, 'woocommerce_price_num_decimals', '0', 'yes'),
(196, 'woocommerce_shop_page_id', '7', 'yes'),
(197, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'woocommerce_placeholder_image', '5', 'yes'),
(202, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"Elg9TTGTopGzlAH3kF2DSHuZ7XheJvZI\";}', 'yes'),
(203, 'woocommerce_weight_unit', 'kg', 'yes'),
(204, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(205, 'woocommerce_dimension_unit', 'cm', 'yes'),
(207, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'woocommerce_enable_reviews', 'yes', 'yes'),
(210, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(212, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(213, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(214, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(215, 'woocommerce_review_rating_required', 'yes', 'no'),
(216, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'woocommerce_manage_stock', 'yes', 'yes'),
(219, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(220, 'woocommerce_hold_stock_minutes', '60', 'no'),
(222, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'woocommerce_notify_low_stock', 'yes', 'no'),
(226, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(227, 'woocommerce_notify_no_stock', 'yes', 'no'),
(228, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(229, 'woocommerce_stock_email_recipient', 'duongngocle96@gmail.com', 'no'),
(231, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(232, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(233, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(234, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(236, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(239, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(240, 'woocommerce_stock_format', '', 'yes'),
(241, 'woocommerce_file_download_method', 'force', 'no'),
(242, 'woocommerce_downloads_require_login', 'no', 'no'),
(246, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(247, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(249, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(250, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(251, 'woocommerce_prices_include_tax', 'no', 'yes'),
(253, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(254, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(255, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(257, 'woocommerce_tax_classes', '', 'yes'),
(258, 'woocommerce_onboarding_profile', 'a:1:{s:9:\"completed\";b:1;}', 'yes'),
(259, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(260, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(261, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(262, 'woocommerce_price_display_suffix', '', 'yes'),
(263, 'woocommerce_tax_total_display', 'itemized', 'no'),
(265, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(267, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(270, 'woocommerce_ship_to_destination', 'billing', 'no'),
(271, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(272, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(273, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(275, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(276, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(277, 'woocommerce_registration_generate_username', 'yes', 'no'),
(279, 'woocommerce_registration_generate_password', 'yes', 'no'),
(280, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(281, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(283, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(284, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(285, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(286, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(288, 'woocommerce_trash_pending_orders', '', 'no'),
(289, 'woocommerce_trash_failed_orders', '', 'no'),
(290, 'woocommerce_trash_cancelled_orders', '', 'no'),
(292, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(293, 'woocommerce_email_from_name', 'wordpress', 'no'),
(294, 'woocommerce_email_from_address', 'duongngocle96@gmail.com', 'no'),
(295, 'woocommerce_email_header_image', '', 'no'),
(296, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(297, 'woocommerce_email_base_color', '#96588a', 'no'),
(298, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(299, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(300, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(301, 'woocommerce_cart_page_id', '8', 'no'),
(302, 'woocommerce_checkout_page_id', '9', 'no'),
(304, 'woocommerce_myaccount_page_id', '10', 'no'),
(305, 'woocommerce_terms_page_id', '', 'no'),
(306, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(308, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(309, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(310, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(311, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(312, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(314, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(315, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(316, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(317, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(319, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(320, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(321, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(323, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(325, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(326, 'woocommerce_api_enabled', 'no', 'yes'),
(327, 'woocommerce_allow_tracking', 'no', 'no'),
(328, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(330, 'woocommerce_single_image_width', '600', 'yes'),
(332, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(333, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(334, 'woocommerce_demo_store', 'no', 'no'),
(343, 'woocommerce_admin_version', '1.6.2', 'yes'),
(344, 'woocommerce_admin_install_timestamp', '1604285879', 'yes'),
(348, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1604285881', 'yes'),
(349, 'wc_blocks_db_schema_version', '260', 'yes'),
(350, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(351, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(353, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(354, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(356, 'wc_remote_inbox_notifications_specs', 'a:3:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}}', 'yes'),
(358, 'default_product_cat', '33', 'yes'),
(366, 'action_scheduler_migration_status', 'complete', 'yes'),
(373, '_transient_woocommerce_reports-transient-version', '1604286029', 'yes'),
(374, '_transient_timeout_orders-all-statuses', '1604890830', 'no'),
(375, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";a:0:{}}', 'no'),
(379, '_transient_timeout_wc_report_orders_stats_fd878822f86e71be63d4dc339e25cc83', '1604891096', 'no'),
(380, '_transient_timeout_wc_report_orders_stats_dd152a4c92779593e8bb4950984b9a67', '1604891096', 'no'),
(381, '_transient_wc_report_orders_stats_fd878822f86e71be63d4dc339e25cc83', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(382, '_transient_wc_report_orders_stats_dd152a4c92779593e8bb4950984b9a67', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:04:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:04:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(383, '_transient_timeout_wc_report_orders_stats_ad3feebe3226c0b18554b64ab2f3176a', '1604891097', 'no'),
(384, '_transient_timeout_wc_report_orders_stats_51981499d821fdffea293b14c5f8257d', '1604891097', 'no'),
(385, '_transient_wc_report_orders_stats_ad3feebe3226c0b18554b64ab2f3176a', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(386, '_transient_wc_report_orders_stats_51981499d821fdffea293b14c5f8257d', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:04:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:04:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(387, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(390, '_transient_timeout_wc_report_orders_stats_2b200d47005f462400a0efb9265ecf6a', '1604891198', 'no'),
(391, '_transient_wc_report_orders_stats_2b200d47005f462400a0efb9265ecf6a', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:06:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:06:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(392, '_transient_timeout_wc_report_orders_stats_b7c0b081ca7e849c6f16e36948d9dabb', '1604891199', 'no'),
(393, '_transient_wc_report_orders_stats_b7c0b081ca7e849c6f16e36948d9dabb', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:06:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:06:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(403, 'woocommerce_version', '4.6.1', 'yes'),
(404, 'woocommerce_db_version', '4.6.1', 'yes'),
(405, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(416, '_transient_timeout_wc_report_orders_stats_6ece904a8f502b46db01c43fe13ef21a', '1604891375', 'no'),
(417, '_transient_wc_report_orders_stats_6ece904a8f502b46db01c43fe13ef21a', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:09:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:09:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(418, '_transient_timeout_wc_report_orders_stats_b4e5ba0c19b92240afb02de0143208ca', '1604891375', 'no'),
(419, '_transient_wc_report_orders_stats_b4e5ba0c19b92240afb02de0143208ca', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:09:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:09:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(421, '_transient_shipping-transient-version', '1604286618', 'yes'),
(422, '_transient_timeout_wc_shipping_method_count', '1606878618', 'no'),
(423, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1604286618\";s:5:\"value\";i:0;}', 'no'),
(425, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(426, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(427, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(429, '_transient_timeout_wc_report_orders_stats_9c3b25414c81ffed8125009cf0d0be8c', '1604891476', 'no');
INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(430, '_transient_wc_report_orders_stats_9c3b25414c81ffed8125009cf0d0be8c', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:11:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:11:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(431, '_transient_timeout_wc_report_orders_stats_624049071c93ff033eabe9fe0cbbf732', '1604891476', 'no'),
(432, '_transient_wc_report_orders_stats_624049071c93ff033eabe9fe0cbbf732', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:11:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:11:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(446, '_transient_timeout_wc_report_orders_stats_bb71148eef969c4393c2ab7210c57b0b', '1604891861', 'no'),
(447, '_transient_wc_report_orders_stats_bb71148eef969c4393c2ab7210c57b0b', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(448, '_transient_timeout_wc_report_orders_stats_0c9750eaddaf0b84211df995c17f6b35', '1604891862', 'no'),
(449, '_transient_wc_report_orders_stats_0c9750eaddaf0b84211df995c17f6b35', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 10:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 10:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(476, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1604288198;s:7:\"version\";s:3:\"5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(477, 'wpseo', 'a:38:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:18:\"indexation_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:31:\"indexables_indexation_completed\";b:1;s:7:\"version\";s:4:\"15.2\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1604288258;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:26:\"http://localhost/wordpress\";s:18:\"dynamic_permalinks\";b:0;s:21:\"custom_taxonomy_slugs\";a:5:{s:12:\"product_type\";s:12:\"product_type\";s:18:\"product_visibility\";s:18:\"product_visibility\";s:11:\"product_cat\";s:16:\"product-category\";s:11:\"product_tag\";s:11:\"product-tag\";s:22:\"product_shipping_class\";s:22:\"product_shipping_class\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:1;}', 'yes'),
(478, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"15.2\";}', 'yes'),
(480, 'wpseo_titles', 'a:99:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:24:\"schema-page-type-product\";s:7:\"WebPage\";s:27:\"schema-article-type-product\";s:4:\"None\";s:23:\"title-ptarchive-product\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(481, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(482, 'wpseo_flush_rewrite', '1', 'yes'),
(502, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1604288991;}', 'no'),
(507, 'wpseo_taxonomy_meta', 'a:1:{s:11:\"product_cat\";a:8:{i:17;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:31;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:33;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:32;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:30;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:28;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:27;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:29;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(519, '_transient_product_query-transient-version', '1604637714', 'yes'),
(520, '_transient_product-transient-version', '1604549649', 'yes'),
(546, 'current_theme', 'Mor-shopping', 'yes'),
(547, 'theme_mods_shop', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:10:\"header-top\";i:24;s:11:\"header-main\";i:25;s:11:\"menu_footer\";i:35;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(548, 'theme_switched', '', 'yes'),
(549, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(615, 'recovery_mode_email_last_sent', '1604560163', 'yes'),
(638, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:35;}}', 'yes'),
(657, 'category_children', 'a:0:{}', 'yes'),
(752, 'wck_meta_boxes_ids', 'a:0:{}', 'yes'),
(753, 'wck_update_to_unserialized', 'no', 'yes'),
(754, 'acf_version', '5.9.1', 'yes'),
(756, 'wck_cptc', 'a:3:{i:0;a:40:{s:9:\"post-type\";s:6:\"slider\";s:11:\"description\";s:6:\"slider\";s:14:\"singular-label\";s:6:\"slider\";s:12:\"plural-label\";s:6:\"slider\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:5:\"false\";s:8:\"supports\";s:16:\"title, thumbnail\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:1;a:40:{s:9:\"post-type\";s:8:\"bannerqc\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:10:\"Banner Q/c\";s:12:\"plural-label\";s:10:\"Banner Q/c\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:5:\"false\";s:8:\"supports\";s:16:\"title, thumbnail\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:2;a:40:{s:9:\"post-type\";s:6:\"banner\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:11:\"banner-main\";s:12:\"plural-label\";s:6:\"banner\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:5:\"false\";s:8:\"supports\";s:24:\"title, editor, thumbnail\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}}', 'yes'),
(845, '_transient_timeout_wc_report_orders_stats_510a83ce9804bd5784311de9e8682779', '1604917732', 'no'),
(846, '_transient_timeout_wc_report_orders_stats_65623a7daa95a5c2f385976949240b3e', '1604917732', 'no'),
(847, '_transient_timeout_wc_report_orders_stats_46a90705045b3b32717f195c85625f88', '1604917732', 'no'),
(848, '_transient_timeout_wc_report_orders_stats_ad5c7df02b06a9d6f8ddbad79f214637', '1604917732', 'no'),
(849, '_transient_wc_report_orders_stats_510a83ce9804bd5784311de9e8682779', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-44\";s:10:\"date_start\";s:19:\"2019-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(850, '_transient_wc_report_orders_stats_ad5c7df02b06a9d6f8ddbad79f214637', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-11-01\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-11-02\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(851, '_transient_wc_report_orders_stats_46a90705045b3b32717f195c85625f88', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 17:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 17:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(852, '_transient_timeout_wc_report_orders_stats_1bf53e31a14dc4f04964c795fa96f887', '1604917732', 'no'),
(853, '_transient_wc_report_orders_stats_65623a7daa95a5c2f385976949240b3e', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-11-01\";s:10:\"date_start\";s:19:\"2019-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-11-02\";s:10:\"date_start\";s:19:\"2019-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(854, '_transient_wc_report_orders_stats_1bf53e31a14dc4f04964c795fa96f887', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-11-01\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-11-02\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(855, '_transient_timeout_wc_report_orders_stats_488a9d9e0074fd06e02d8fe98c393e2d', '1604917732', 'no'),
(856, '_transient_timeout_wc_report_orders_stats_e8bf9947e56e2bfe6a9267e4f60a32bc', '1604917732', 'no'),
(857, '_transient_wc_report_orders_stats_488a9d9e0074fd06e02d8fe98c393e2d', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-11-01\";s:10:\"date_start\";s:19:\"2019-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-11-02\";s:10:\"date_start\";s:19:\"2019-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(858, '_transient_timeout_wc_report_orders_stats_9cbd88465025ee8ad8a105761a707fa5', '1604917733', 'no'),
(859, '_transient_wc_report_orders_stats_e8bf9947e56e2bfe6a9267e4f60a32bc', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-44\";s:10:\"date_start\";s:19:\"2019-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(860, '_transient_wc_report_orders_stats_9cbd88465025ee8ad8a105761a707fa5', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 17:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 17:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(878, '_transient_timeout_wc_report_orders_stats_8eb7bc659bb589d750f84964e8e29adc', '1604938411', 'no'),
(879, '_transient_wc_report_orders_stats_8eb7bc659bb589d750f84964e8e29adc', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:12:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:12:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(880, '_transient_timeout_wc_report_orders_stats_69fe454c219e37a6877021cd688bdc85', '1604938412', 'no'),
(881, '_transient_wc_report_orders_stats_69fe454c219e37a6877021cd688bdc85', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:12:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:12:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(882, '_transient_timeout_wc_report_orders_stats_a989c85a519279d1210f359838e2286a', '1604938435', 'no');
INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(883, '_transient_wc_report_orders_stats_a989c85a519279d1210f359838e2286a', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:13:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:13:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(884, '_transient_timeout_wc_report_orders_stats_46e4666becd5a8621641ab18870ef915', '1604938435', 'no'),
(885, '_transient_wc_report_orders_stats_46e4666becd5a8621641ab18870ef915', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:13:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:13:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-44\";s:10:\"date_start\";s:19:\"2020-11-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(935, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"8\",\"critical\":\"1\"}', 'yes'),
(1019, '_transient_timeout_wc_report_orders_stats_7be501f1f48e10238afb7247a3ab322b', '1604981939', 'no'),
(1020, '_transient_timeout_wc_report_orders_stats_13cf952cdf6dbc361b4ecd7dfa44d8f8', '1604981939', 'no'),
(1021, '_transient_wc_report_orders_stats_7be501f1f48e10238afb7247a3ab322b', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1022, '_transient_wc_report_orders_stats_13cf952cdf6dbc361b4ecd7dfa44d8f8', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-03 11:18:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-03 11:18:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1023, '_transient_timeout_wc_report_orders_stats_e069e2fea55f15f7e671d645a466a96b', '1604981940', 'no'),
(1024, '_transient_timeout_wc_report_orders_stats_90868d7a6e0044ca06a91b746714f4dd', '1604981940', 'no'),
(1025, '_transient_wc_report_orders_stats_90868d7a6e0044ca06a91b746714f4dd', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-03 11:18:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-03 11:18:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1026, '_transient_wc_report_orders_stats_e069e2fea55f15f7e671d645a466a96b', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1027, '_transient_timeout_wc_report_orders_stats_40e3fd29fa57a4a955d083e6b8f9310f', '1604981948', 'no'),
(1028, '_transient_wc_report_orders_stats_40e3fd29fa57a4a955d083e6b8f9310f', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-03 11:19:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-03 11:19:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1029, '_transient_timeout_wc_report_orders_stats_10a5a6f639b329864390f41d8cbec35f', '1604981948', 'no'),
(1030, '_transient_wc_report_orders_stats_10a5a6f639b329864390f41d8cbec35f', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-03 11:19:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-03 11:19:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1122, '_site_transient_timeout_browser_604cf57e85b34d730ab3981148710fdb', '1605107230', 'no'),
(1123, '_site_transient_browser_604cf57e85b34d730ab3981148710fdb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.183\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1425, 'product_cat_children', 'a:3:{i:17;a:4:{i:0;i:27;i:1;i:28;i:2;i:29;i:3;i:30;}i:20;a:3:{i:0;i:31;i:1;i:32;i:2;i:33;}i:19;a:4:{i:0;i:34;i:1;i:36;i:2;i:37;i:3;i:38;}}', 'yes'),
(1454, '_transient_timeout_wc_term_counts', '1607230657', 'no'),
(1455, '_transient_wc_term_counts', 'a:17:{i:17;s:1:\"5\";i:19;s:1:\"6\";i:20;s:1:\"1\";i:28;s:0:\"\";i:27;s:1:\"3\";i:30;s:0:\"\";i:29;s:1:\"1\";i:34;s:1:\"3\";i:37;s:1:\"1\";i:36;s:0:\"\";i:38;s:1:\"1\";i:23;s:1:\"1\";i:39;s:1:\"1\";i:31;s:0:\"\";i:32;s:0:\"\";i:33;s:0:\"\";i:21;s:1:\"1\";}', 'no'),
(1514, '_transient_timeout_wc_low_stock_count', '1607144144', 'no'),
(1515, '_transient_wc_low_stock_count', '0', 'no'),
(1516, '_transient_timeout_wc_outofstock_count', '1607144144', 'no'),
(1517, '_transient_wc_outofstock_count', '0', 'no'),
(1524, '_transient_timeout_wc_report_orders_stats_9cc7eda7aa1da7828b5e56ab8d317791', '1605156977', 'no'),
(1525, '_transient_timeout_wc_report_orders_stats_57542d5ed3296e5c657cacb1f5d134f1', '1605156977', 'no'),
(1526, '_transient_wc_report_orders_stats_9cc7eda7aa1da7828b5e56ab8d317791', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1527, '_transient_wc_report_orders_stats_57542d5ed3296e5c657cacb1f5d134f1', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-05 11:56:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-05 11:56:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1528, '_transient_timeout_wc_report_orders_stats_46a6babe10ab55954d8804dc0d98c834', '1605156978', 'no'),
(1529, '_transient_timeout_wc_report_orders_stats_06ca08729e4c6bc6e6aa05a4b0096e0d', '1605156978', 'no'),
(1530, '_transient_wc_report_orders_stats_06ca08729e4c6bc6e6aa05a4b0096e0d', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-05 11:56:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-05 11:56:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1531, '_transient_wc_report_orders_stats_46a6babe10ab55954d8804dc0d98c834', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-11-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1566, 'tp_options', 'a:8:{s:8:\"last_tab\";s:1:\"1\";s:7:\"logo-on\";s:1:\"1\";s:10:\"logo-image\";a:5:{s:3:\"url\";s:62:\"http://localhost/wordpress/wp-content/uploads/2020/11/logo.png\";s:2:\"id\";s:3:\"103\";s:6:\"height\";s:3:\"113\";s:5:\"width\";s:3:\"389\";s:9:\"thumbnail\";s:70:\"http://localhost/wordpress/wp-content/uploads/2020/11/logo-150x113.png\";}s:6:\"footer\";s:76:\"Website chuyên cung cấp thiết bị điện tử hàng đầu Việt Nam\";s:4:\"mail\";s:26:\"thietkeweb43.comt@test.com\";s:3:\"sdt\";s:10:\"0358949xxx\";s:3:\"add\";s:54:\"457/44 Tôn Đức Thắng, Liên Chiểu, Đà Nẵng\";s:3:\"www\";s:20:\" https://huykira.net\";}', 'yes'),
(1567, 'tp_options-transients', 'a:4:{s:14:\"changed_values\";a:1:{s:10:\"logo-image\";a:5:{s:3:\"url\";s:85:\"http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg\";s:2:\"id\";s:2:\"16\";s:6:\"height\";s:3:\"399\";s:5:\"width\";s:3:\"600\";s:9:\"thumbnail\";s:93:\"http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2-150x150.jpg\";}}s:9:\"last_save\";i:1604563613;s:13:\"last_compiler\";i:1604563612;s:11:\"last_import\";i:1604563612;}', 'yes'),
(1627, 'secret_key', '&gJfJus-D_bl?&k(#NDo]h}*GjL=%}wC90VbpGH!qX}%}Zxzsk~;-)_EzUa)`36(', 'no'),
(1655, 'wp_smtp_options', 'a:9:{s:4:\"from\";s:23:\"duongngocle96@gmail.com\";s:8:\"fromname\";s:7:\"contact\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:23:\"duongngocle96@gmail.com\";s:8:\"password\";s:16:\"bqzofpbtulskoppd\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(1753, 'WPLANG', '', 'yes'),
(1754, 'new_admin_email', 'duongngocle96@gmail.com', 'yes'),
(1763, '_transient_timeout_wc_report_orders_stats_aa66ba83f3ad640bc45547ef89db20a9', '1605238098', 'no'),
(1764, '_transient_timeout_wc_report_orders_stats_92c25debf65e20abdcf9c57b467a4edd', '1605238098', 'no'),
(1765, '_transient_wc_report_orders_stats_aa66ba83f3ad640bc45547ef89db20a9', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-04 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-05 16:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1766, '_transient_wc_report_orders_stats_92c25debf65e20abdcf9c57b467a4edd', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-06 10:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-06 03:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1768, '_transient_timeout_wc_report_orders_stats_97888ce2b486cea1ba98b48e3be036fd', '1605238099', 'no'),
(1769, '_transient_timeout_wc_report_orders_stats_418e7e68257e75831add44f4c2cfe998', '1605238099', 'no'),
(1770, '_transient_wc_report_orders_stats_97888ce2b486cea1ba98b48e3be036fd', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-06 10:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-06 03:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1771, '_transient_wc_report_orders_stats_418e7e68257e75831add44f4c2cfe998', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-04 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-11-05 16:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1776, 'rewrite_rules', 'a:221:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:32:\"slider/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?slider=$matches[1]&wc-api=$matches[3]\";s:38:\"slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"bannerqc/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"bannerqc/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"bannerqc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bannerqc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bannerqc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"bannerqc/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"bannerqc/([^/]+)/embed/?$\";s:41:\"index.php?bannerqc=$matches[1]&embed=true\";s:29:\"bannerqc/([^/]+)/trackback/?$\";s:35:\"index.php?bannerqc=$matches[1]&tb=1\";s:37:\"bannerqc/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?bannerqc=$matches[1]&paged=$matches[2]\";s:44:\"bannerqc/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?bannerqc=$matches[1]&cpage=$matches[2]\";s:34:\"bannerqc/([^/]+)/wc-api(/(.*))?/?$\";s:49:\"index.php?bannerqc=$matches[1]&wc-api=$matches[3]\";s:40:\"bannerqc/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"bannerqc/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"bannerqc/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?bannerqc=$matches[1]&page=$matches[2]\";s:25:\"bannerqc/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"bannerqc/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"bannerqc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bannerqc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bannerqc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"bannerqc/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:32:\"banner/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?banner=$matches[1]&wc-api=$matches[3]\";s:38:\"banner/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"banner/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1787, '_transient_timeout_wc_report_orders_stats_e9250a37f80acca938fa96709f025e4b', '1605238403', 'no');
INSERT INTO `tbl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1788, '_transient_wc_report_orders_stats_e9250a37f80acca938fa96709f025e4b', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-06 10:33:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-06 03:33:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1789, '_transient_timeout_wc_report_orders_stats_fbe777cffa50b43d11b55e0a3043e5de', '1605238403', 'no'),
(1790, '_transient_wc_report_orders_stats_fbe777cffa50b43d11b55e0a3043e5de', 'a:2:{s:7:\"version\";s:10:\"1604286029\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-45\";s:10:\"date_start\";s:19:\"2020-11-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-11-05 17:00:00\";s:8:\"date_end\";s:19:\"2020-11-06 10:33:00\";s:12:\"date_end_gmt\";s:19:\"2020-11-06 03:33:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1856, '_transient_timeout_wc_shipping_method_count_legacy', '1607230657', 'no'),
(1857, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1604286618\";s:5:\"value\";i:0;}', 'no'),
(1913, '_transient_timeout__woocommerce_helper_subscriptions', '1604881338', 'no'),
(1914, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1915, '_site_transient_timeout_theme_roots', '1604882239', 'no'),
(1916, '_site_transient_theme_roots', 'a:4:{s:4:\"shop\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1917, '_transient_timeout__woocommerce_helper_updates', '1604923640', 'no'),
(1918, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1604880440;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1920, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604880463;s:7:\"checked\";a:4:{s:4:\"shop\";s:3:\"1.1\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:4:\"shop\";a:6:{s:5:\"theme\";s:4:\"shop\";s:11:\"new_version\";s:4:\"1.02\";s:3:\"url\";s:34:\"https://wordpress.org/themes/shop/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/theme/shop.1.02.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1921, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1604880463;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"15.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.15.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"4.1.23\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.4.1.23.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=2352112\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/redux-framework/assets/banner-1544x500.png?rev=2352114\";s:2:\"1x\";s:70:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=2352114\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:61:\"w.org/plugins/wck-custom-fields-and-custom-post-types-creator\";s:4:\"slug\";s:47:\"wck-custom-fields-and-custom-post-types-creator\";s:6:\"plugin\";s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:78:\"https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/wck-custom-fields-and-custom-post-types-creator.2.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-256x256.png?rev=2257602\";s:2:\"1x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-128x128.png?rev=2257602\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:103:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-1544x500.png?rev=2257602\";s:2:\"1x\";s:102:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-772x250.png?rev=2257602\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-smtp/wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-smtp\";s:4:\"slug\";s:7:\"wp-smtp\";s:6:\"plugin\";s:19:\"wp-smtp/wp-smtp.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-smtp/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-smtp.1.2.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:60:\"https://ps.w.org/wp-smtp/assets/icon-128x128.png?rev=2351919\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/wp-smtp/assets/banner-772x250.png?rev=2348247\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1923, '_transient_timeout_wpseo_total_unindexed_posts', '1604966879', 'no'),
(1924, '_transient_wpseo_total_unindexed_posts', '45', 'no'),
(1925, '_transient_timeout_wpseo_total_unindexed_terms', '1604966879', 'no'),
(1926, '_transient_wpseo_total_unindexed_terms', '1', 'no'),
(1927, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1604966880', 'no'),
(1928, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(1929, '_transient_timeout_wpseo_unindexed_post_link_count', '1604966881', 'no'),
(1930, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(1931, '_transient_doing_cron', '1604880482.2590799331665039062500', 'yes'),
(1932, '_transient_timeout_wpseo_unindexed_term_link_count', '1604966883', 'no'),
(1933, '_transient_wpseo_unindexed_term_link_count', '0', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_postmeta`
--

CREATE TABLE `tbl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_postmeta`
--

INSERT INTO `tbl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:3:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 11, '_form', '<label> Họ và Tên\n    [text* your-name] </label>\n\n<label> Địa chỉ mail\n    [email* your-email] </label>\n\n<label> điện thoại\n   [text text-7]</label>\n\n<label> Tiêu đề\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(8, 11, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <duongngocle96@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(9, 11, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <duongngocle96@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(10, 11, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(11, 11, '_additional_settings', ''),
(12, 11, '_locale', 'en_US'),
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1604289251:1'),
(15, 13, '_edit_last', '1'),
(16, 13, '_edit_lock', '1604378835:1'),
(17, 14, '_wp_attached_file', '2020/11/iphone-11-green-1.png'),
(18, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:469;s:4:\"file\";s:29:\"2020/11/iphone-11-green-1.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"iphone-11-green-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-11-green-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iphone-11-green-1-229x300.png\";s:5:\"width\";i:229;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-11-green-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"iphone-11-green-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-11-green-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_thumbnail_id', '55'),
(20, 13, '_regular_price', '21990000'),
(21, 13, '_sale_price', '2100000'),
(22, 13, 'total_sales', '0'),
(23, 13, '_tax_status', 'taxable'),
(24, 13, '_tax_class', ''),
(25, 13, '_manage_stock', 'no'),
(26, 13, '_backorders', 'no'),
(27, 13, '_sold_individually', 'no'),
(28, 13, '_virtual', 'no'),
(29, 13, '_downloadable', 'no'),
(30, 13, '_download_limit', '-1'),
(31, 13, '_download_expiry', '-1'),
(32, 13, '_stock', NULL),
(33, 13, '_stock_status', 'instock'),
(34, 13, '_wc_average_rating', '0'),
(35, 13, '_wc_review_count', '0'),
(36, 13, '_product_version', '4.6.1'),
(37, 13, '_price', '2100000'),
(38, 13, '_product_image_gallery', '14'),
(39, 13, '_yoast_wpseo_primary_product_cat', '17'),
(40, 13, '_yoast_wpseo_content_score', '30'),
(41, 15, '_edit_last', '1'),
(42, 15, '_edit_lock', '1604547894:1'),
(43, 16, '_wp_attached_file', '2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg'),
(44, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:399;s:4:\"file\";s:39:\"2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"PC-HP-AIO-EliteOne-800-G5-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 15, '_thumbnail_id', '16'),
(46, 15, '_regular_price', '29590000'),
(47, 15, '_sale_price', '28888888'),
(48, 15, 'total_sales', '0'),
(49, 15, '_tax_status', 'taxable'),
(50, 15, '_tax_class', ''),
(51, 15, '_manage_stock', 'no'),
(52, 15, '_backorders', 'no'),
(53, 15, '_sold_individually', 'no'),
(54, 15, '_virtual', 'no'),
(55, 15, '_downloadable', 'no'),
(56, 15, '_download_limit', '-1'),
(57, 15, '_download_expiry', '-1'),
(58, 15, '_stock', NULL),
(59, 15, '_stock_status', 'instock'),
(60, 15, '_wc_average_rating', '0'),
(61, 15, '_wc_review_count', '0'),
(62, 15, '_product_version', '4.6.1'),
(63, 15, '_price', '28888888'),
(64, 15, '_product_image_gallery', '55'),
(65, 15, '_yoast_wpseo_primary_product_cat', '20'),
(66, 15, '_yoast_wpseo_content_score', '60'),
(67, 17, '_edit_last', '1'),
(68, 17, '_edit_lock', '1604547433:1'),
(69, 18, '_wp_attached_file', '2020/11/Macbook-Air-13-2019-Gold.jpg'),
(70, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:367;s:4:\"file\";s:36:\"2020/11/Macbook-Air-13-2019-Gold.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Macbook-Air-13-2019-Gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 19, '_wp_attached_file', '2020/11/Macbook-Air-13-2019-Gold-1.jpg'),
(72, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:367;s:4:\"file\";s:38:\"2020/11/Macbook-Air-13-2019-Gold-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gold-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 20, '_wp_attached_file', '2020/11/Macbook-Air-13-2019-Gray-4.jpg'),
(74, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:444;s:4:\"file\";s:38:\"2020/11/Macbook-Air-13-2019-Gray-4.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-600x381.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-600x381.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 21, '_wp_attached_file', '2020/11/Macbook-Air-13-2019-Gray-3.jpg'),
(76, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:384;s:4:\"file\";s:38:\"2020/11/Macbook-Air-13-2019-Gray-3.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-600x329.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-600x329.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Macbook-Air-13-2019-Gray-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 17, '_thumbnail_id', '20'),
(78, 17, '_regular_price', '21000000'),
(80, 17, 'total_sales', '0'),
(81, 17, '_tax_status', 'taxable'),
(82, 17, '_tax_class', ''),
(83, 17, '_manage_stock', 'no'),
(84, 17, '_backorders', 'no'),
(85, 17, '_sold_individually', 'no'),
(86, 17, '_virtual', 'no'),
(87, 17, '_downloadable', 'no'),
(88, 17, '_download_limit', '-1'),
(89, 17, '_download_expiry', '-1'),
(90, 17, '_stock', NULL),
(91, 17, '_stock_status', 'instock'),
(92, 17, '_wc_average_rating', '0'),
(93, 17, '_wc_review_count', '0'),
(94, 17, '_product_version', '4.6.1'),
(95, 17, '_price', '21000000'),
(96, 17, '_product_image_gallery', '18,20'),
(97, 17, '_yoast_wpseo_primary_product_cat', '19'),
(98, 17, '_yoast_wpseo_content_score', '60'),
(99, 12, '_wp_trash_meta_status', 'draft'),
(100, 12, '_wp_trash_meta_time', '1604290133'),
(101, 12, '_wp_desired_post_slug', ''),
(102, 25, '_edit_last', '1'),
(103, 25, '_edit_lock', '1604302803:1'),
(104, 27, '_menu_item_type', 'post_type'),
(105, 27, '_menu_item_menu_item_parent', '0'),
(106, 27, '_menu_item_object_id', '25'),
(107, 27, '_menu_item_object', 'page'),
(108, 27, '_menu_item_target', ''),
(109, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 27, '_menu_item_xfn', ''),
(111, 27, '_menu_item_url', ''),
(113, 28, '_menu_item_type', 'post_type'),
(114, 28, '_menu_item_menu_item_parent', '0'),
(115, 28, '_menu_item_object_id', '10'),
(116, 28, '_menu_item_object', 'page'),
(117, 28, '_menu_item_target', ''),
(118, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 28, '_menu_item_xfn', ''),
(120, 28, '_menu_item_url', ''),
(122, 29, '_menu_item_type', 'post_type'),
(123, 29, '_menu_item_menu_item_parent', '0'),
(124, 29, '_menu_item_object_id', '8'),
(125, 29, '_menu_item_object', 'page'),
(126, 29, '_menu_item_target', ''),
(127, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 29, '_menu_item_xfn', ''),
(129, 29, '_menu_item_url', ''),
(131, 30, '_menu_item_type', 'post_type'),
(132, 30, '_menu_item_menu_item_parent', '0'),
(133, 30, '_menu_item_object_id', '7'),
(134, 30, '_menu_item_object', 'page'),
(135, 30, '_menu_item_target', ''),
(136, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 30, '_menu_item_xfn', ''),
(138, 30, '_menu_item_url', ''),
(140, 31, '_edit_last', '1'),
(141, 31, '_edit_lock', '1604303814:1'),
(142, 33, '_edit_last', '1'),
(143, 33, '_edit_lock', '1604303827:1'),
(144, 35, '_edit_last', '1'),
(145, 35, '_edit_lock', '1604303846:1'),
(146, 37, '_menu_item_type', 'post_type'),
(147, 37, '_menu_item_menu_item_parent', '0'),
(148, 37, '_menu_item_object_id', '31'),
(149, 37, '_menu_item_object', 'page'),
(150, 37, '_menu_item_target', ''),
(151, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 37, '_menu_item_xfn', ''),
(153, 37, '_menu_item_url', ''),
(155, 38, '_menu_item_type', 'post_type'),
(156, 38, '_menu_item_menu_item_parent', '0'),
(157, 38, '_menu_item_object_id', '25'),
(158, 38, '_menu_item_object', 'page'),
(159, 38, '_menu_item_target', ''),
(160, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 38, '_menu_item_xfn', ''),
(162, 38, '_menu_item_url', ''),
(164, 39, '_menu_item_type', 'post_type'),
(165, 39, '_menu_item_menu_item_parent', '0'),
(166, 39, '_menu_item_object_id', '7'),
(167, 39, '_menu_item_object', 'page'),
(168, 39, '_menu_item_target', ''),
(169, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 39, '_menu_item_xfn', ''),
(171, 39, '_menu_item_url', ''),
(173, 40, '_menu_item_type', 'custom'),
(174, 40, '_menu_item_menu_item_parent', '0'),
(175, 40, '_menu_item_object_id', '40'),
(176, 40, '_menu_item_object', 'custom'),
(177, 40, '_menu_item_target', ''),
(178, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 40, '_menu_item_xfn', ''),
(180, 40, '_menu_item_url', 'http://localhost/wordpress/'),
(182, 35, '_wp_trash_meta_status', 'draft'),
(183, 35, '_wp_trash_meta_time', '1604304109'),
(184, 35, '_wp_desired_post_slug', ''),
(185, 33, '_wp_trash_meta_status', 'draft'),
(186, 33, '_wp_trash_meta_time', '1604304118'),
(187, 33, '_wp_desired_post_slug', ''),
(188, 41, '_menu_item_type', 'taxonomy'),
(189, 41, '_menu_item_menu_item_parent', '0'),
(190, 41, '_menu_item_object_id', '26'),
(191, 41, '_menu_item_object', 'category'),
(192, 41, '_menu_item_target', ''),
(193, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 41, '_menu_item_xfn', ''),
(195, 41, '_menu_item_url', ''),
(197, 43, '_menu_item_type', 'taxonomy'),
(198, 43, '_menu_item_menu_item_parent', '39'),
(199, 43, '_menu_item_object_id', '17'),
(200, 43, '_menu_item_object', 'product_cat'),
(201, 43, '_menu_item_target', ''),
(202, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 43, '_menu_item_xfn', ''),
(204, 43, '_menu_item_url', ''),
(206, 44, '_menu_item_type', 'taxonomy'),
(207, 44, '_menu_item_menu_item_parent', '39'),
(208, 44, '_menu_item_object_id', '19'),
(209, 44, '_menu_item_object', 'product_cat'),
(210, 44, '_menu_item_target', ''),
(211, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 44, '_menu_item_xfn', ''),
(213, 44, '_menu_item_url', ''),
(215, 45, '_menu_item_type', 'taxonomy'),
(216, 45, '_menu_item_menu_item_parent', '39'),
(217, 45, '_menu_item_object_id', '20'),
(218, 45, '_menu_item_object', 'product_cat'),
(219, 45, '_menu_item_target', ''),
(220, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(221, 45, '_menu_item_xfn', ''),
(222, 45, '_menu_item_url', ''),
(224, 47, '_wp_attached_file', '2020/11/baner-02.png'),
(225, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/baner-02.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"baner-02-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"baner-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"baner-02-768x288.png\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"baner-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"baner-02-600x225.png\";s:5:\"width\";i:600;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"baner-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"baner-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"baner-02-600x225.png\";s:5:\"width\";i:600;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"baner-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 48, '_wp_attached_file', '2020/11/banner-01.png'),
(227, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2020/11/banner-01.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-01-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banner-01-768x288.png\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banner-01-600x225.png\";s:5:\"width\";i:600;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banner-01-600x225.png\";s:5:\"width\";i:600;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 46, '_edit_last', '1'),
(229, 46, '_thumbnail_id', '48'),
(230, 46, '_yoast_wpseo_content_score', '30'),
(231, 46, '_edit_lock', '1604307790:1'),
(232, 49, '_edit_last', '1'),
(233, 49, '_thumbnail_id', '47'),
(234, 49, '_yoast_wpseo_content_score', '30'),
(235, 49, '_edit_lock', '1604307753:1'),
(236, 50, '_menu_item_type', 'custom'),
(237, 50, '_menu_item_menu_item_parent', '0'),
(238, 50, '_menu_item_object_id', '50'),
(239, 50, '_menu_item_object', 'custom'),
(240, 50, '_menu_item_target', ''),
(241, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(242, 50, '_menu_item_xfn', ''),
(243, 50, '_menu_item_url', '#'),
(245, 51, '_menu_item_type', 'custom'),
(246, 51, '_menu_item_menu_item_parent', '0'),
(247, 51, '_menu_item_object_id', '51'),
(248, 51, '_menu_item_object', 'custom'),
(249, 51, '_menu_item_target', ''),
(250, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 51, '_menu_item_xfn', ''),
(252, 51, '_menu_item_url', '#'),
(254, 52, '_menu_item_type', 'custom'),
(255, 52, '_menu_item_menu_item_parent', '0'),
(256, 52, '_menu_item_object_id', '52'),
(257, 52, '_menu_item_object', 'custom'),
(258, 52, '_menu_item_target', ''),
(259, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 52, '_menu_item_xfn', ''),
(261, 52, '_menu_item_url', '#'),
(263, 53, '_menu_item_type', 'custom'),
(264, 53, '_menu_item_menu_item_parent', '0'),
(265, 53, '_menu_item_object_id', '53'),
(266, 53, '_menu_item_object', 'custom'),
(267, 53, '_menu_item_target', ''),
(268, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 53, '_menu_item_xfn', ''),
(270, 53, '_menu_item_url', ''),
(272, 54, '_menu_item_type', 'custom'),
(273, 54, '_menu_item_menu_item_parent', '0'),
(274, 54, '_menu_item_object_id', '54'),
(275, 54, '_menu_item_object', 'custom'),
(276, 54, '_menu_item_target', ''),
(277, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 54, '_menu_item_xfn', ''),
(279, 54, '_menu_item_url', 'http://Chương%20trình%20khuyến%20mãi'),
(281, 55, '_wp_attached_file', '2020/11/sp.png'),
(282, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:14:\"2020/11/sp.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"sp-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"sp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"sp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"sp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"sp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"sp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 56, '_wp_attached_file', '2020/11/sp2.png'),
(284, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:15:\"2020/11/sp2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp2-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"sp2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 57, '_edit_last', '1'),
(286, 57, '_edit_lock', '1604507992:1'),
(287, 58, '_wp_attached_file', '2020/11/news.jpg'),
(288, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:546;s:4:\"file\";s:16:\"2020/11/news.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"news-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"news-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"news-768x524.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:524;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"news-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"news-600x410.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"news-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"news-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"news-600x410.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"news-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 57, '_thumbnail_id', '58'),
(292, 57, '_yoast_wpseo_content_score', '90'),
(293, 57, '_yoast_wpseo_primary_category', '26'),
(294, 61, '_edit_last', '1'),
(295, 61, '_edit_lock', '1604638630:1'),
(296, 61, '_thumbnail_id', '104'),
(299, 61, '_yoast_wpseo_content_score', '60'),
(300, 61, '_yoast_wpseo_primary_category', '26'),
(303, 1, '_edit_lock', '1604552001:1'),
(304, 1, '_edit_last', '1'),
(305, 1, '_thumbnail_id', '65'),
(308, 1, '_yoast_wpseo_content_score', '90'),
(309, 1, '_yoast_wpseo_primary_category', '1'),
(312, 64, '_edit_last', '1'),
(313, 64, '_edit_lock', '1604541709:1'),
(314, 65, '_wp_attached_file', '2020/11/banner.png'),
(315, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:630;s:4:\"file\";s:18:\"2020/11/banner.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-143x300.png\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"banner-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 64, '_thumbnail_id', '65'),
(317, 64, '_yoast_wpseo_content_score', '30'),
(318, 68, '_edit_last', '1'),
(319, 68, '_edit_lock', '1604541015:1'),
(320, 64, 'link_qc', 'http://localhost/wordpress'),
(321, 64, '_link_qc', 'field_5fa35a9d64db4'),
(322, 70, '_edit_last', '1'),
(323, 70, '_edit_lock', '1604543789:1'),
(324, 72, '_edit_last', '1'),
(325, 72, 'add_fb', '<div class=\"fb-page\" data-href=\"https://www.facebook.com/btaskeedanang/\" data-tabs=\"timeline\" data-width=\"\" data-height=\"\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/btaskeedanang/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/btaskeedanang/\">bTaskee Đà Nẵng - Giúp việc theo giờ</a></blockquote></div>'),
(326, 72, '_add_fb', 'field_5fa361bf5d8e7'),
(327, 72, '_edit_lock', '1604547336:1'),
(328, 73, '_wp_attached_file', '2020/11/122445757_3587850704608758_7473537705871244182_o.jpg'),
(329, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1800;s:4:\"file\";s:60:\"2020/11/122445757_3587850704608758_7473537705871244182_o.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"122445757_3587850704608758_7473537705871244182_o-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"122445757_3587850704608758_7473537705871244182_o-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:62:\"122445757_3587850704608758_7473537705871244182_o-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"122445757_3587850704608758_7473537705871244182_o-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 74, '_wp_attached_file', '2020/11/huykira.png'),
(331, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1843;s:6:\"height\";i:238;s:4:\"file\";s:19:\"2020/11/huykira.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"huykira-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"huykira-1024x132.png\";s:5:\"width\";i:1024;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"huykira-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"huykira-768x99.png\";s:5:\"width\";i:768;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"huykira-1536x198.png\";s:5:\"width\";i:1536;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"huykira-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"huykira-600x77.png\";s:5:\"width\";i:600;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"huykira-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"huykira-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"huykira-600x77.png\";s:5:\"width\";i:600;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"huykira-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 72, '_thumbnail_id', '76'),
(333, 72, '_yoast_wpseo_content_score', '30'),
(334, 76, '_wp_attached_file', '2020/11/huykira-1.png'),
(335, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1843;s:6:\"height\";i:238;s:4:\"file\";s:21:\"2020/11/huykira-1.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"huykira-1-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"huykira-1-1024x132.png\";s:5:\"width\";i:1024;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"huykira-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"huykira-1-768x99.png\";s:5:\"width\";i:768;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"huykira-1-1536x198.png\";s:5:\"width\";i:1536;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"huykira-1-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"huykira-1-600x77.png\";s:5:\"width\";i:600;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"huykira-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"huykira-1-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"huykira-1-600x77.png\";s:5:\"width\";i:600;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"huykira-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 79, '_edit_last', '1'),
(337, 79, '_edit_lock', '1604548035:1'),
(338, 80, '_wp_attached_file', '2020/11/iphone-11-pro-max-green-400x400-1.jpg'),
(339, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:45:\"2020/11/iphone-11-pro-max-green-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"iphone-11-pro-max-green-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 79, '_thumbnail_id', '80'),
(341, 79, '_regular_price', '33990000'),
(342, 79, '_sale_price', '32990000'),
(343, 79, 'total_sales', '0'),
(344, 79, '_tax_status', 'taxable'),
(345, 79, '_tax_class', ''),
(346, 79, '_manage_stock', 'no'),
(347, 79, '_backorders', 'no'),
(348, 79, '_sold_individually', 'no'),
(349, 79, '_virtual', 'no'),
(350, 79, '_downloadable', 'no'),
(351, 79, '_download_limit', '-1'),
(352, 79, '_download_expiry', '-1'),
(353, 79, '_stock', NULL),
(354, 79, '_stock_status', 'instock'),
(355, 79, '_wc_average_rating', '0'),
(356, 79, '_wc_review_count', '0'),
(357, 79, '_product_version', '4.6.1'),
(358, 79, '_price', '32990000'),
(359, 79, '_product_image_gallery', '80'),
(360, 79, '_yoast_wpseo_primary_product_cat', '27'),
(361, 79, '_yoast_wpseo_content_score', '60'),
(362, 81, '_edit_last', '1'),
(363, 81, '_edit_lock', '1604548136:1'),
(364, 82, '_wp_attached_file', '2020/11/iphone-11-red-fix-200x200-1.jpg'),
(365, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:39:\"2020/11/iphone-11-red-fix-200x200-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"iphone-11-red-fix-200x200-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"iphone-11-red-fix-200x200-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"iphone-11-red-fix-200x200-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 83, '_wp_attached_file', '2020/11/iphone-12-pro-max-195420-015420-400x400-1.jpg'),
(367, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:53:\"2020/11/iphone-12-pro-max-195420-015420-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:53:\"iphone-12-pro-max-195420-015420-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 84, '_wp_attached_file', '2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png');
INSERT INTO `tbl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(369, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:61:\"2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"samsung-galaxy-note-10-plus-den-400x460-400x460-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 81, '_thumbnail_id', '82'),
(371, 81, '_regular_price', '33000000'),
(372, 81, '_sale_price', '32000000'),
(373, 81, 'total_sales', '0'),
(374, 81, '_tax_status', 'taxable'),
(375, 81, '_tax_class', ''),
(376, 81, '_manage_stock', 'no'),
(377, 81, '_backorders', 'no'),
(378, 81, '_sold_individually', 'no'),
(379, 81, '_virtual', 'no'),
(380, 81, '_downloadable', 'no'),
(381, 81, '_download_limit', '-1'),
(382, 81, '_download_expiry', '-1'),
(383, 81, '_stock', NULL),
(384, 81, '_stock_status', 'instock'),
(385, 81, '_wc_average_rating', '0'),
(386, 81, '_wc_review_count', '0'),
(387, 81, '_product_version', '4.6.1'),
(388, 81, '_price', '32000000'),
(389, 81, '_product_image_gallery', '82'),
(390, 81, '_yoast_wpseo_primary_product_cat', '27'),
(391, 81, '_yoast_wpseo_content_score', '60'),
(392, 86, '_edit_last', '1'),
(393, 86, '_edit_lock', '1604548244:1'),
(394, 86, '_thumbnail_id', '80'),
(395, 86, '_regular_price', '32000000'),
(396, 86, '_sale_price', '26000000'),
(397, 86, 'total_sales', '0'),
(398, 86, '_tax_status', 'taxable'),
(399, 86, '_tax_class', ''),
(400, 86, '_manage_stock', 'no'),
(401, 86, '_backorders', 'no'),
(402, 86, '_sold_individually', 'no'),
(403, 86, '_virtual', 'no'),
(404, 86, '_downloadable', 'no'),
(405, 86, '_download_limit', '-1'),
(406, 86, '_download_expiry', '-1'),
(407, 86, '_stock', NULL),
(408, 86, '_stock_status', 'instock'),
(409, 86, '_wc_average_rating', '0'),
(410, 86, '_wc_review_count', '0'),
(411, 86, '_product_version', '4.6.1'),
(412, 86, '_price', '26000000'),
(413, 86, '_yoast_wpseo_primary_product_cat', '27'),
(414, 86, '_yoast_wpseo_content_score', '60'),
(415, 87, '_edit_last', '1'),
(416, 87, '_edit_lock', '1604548386:1'),
(417, 87, '_thumbnail_id', '84'),
(418, 87, '_regular_price', '26000000'),
(419, 87, '_sale_price', '25000000'),
(420, 87, 'total_sales', '0'),
(421, 87, '_tax_status', 'taxable'),
(422, 87, '_tax_class', ''),
(423, 87, '_manage_stock', 'no'),
(424, 87, '_backorders', 'no'),
(425, 87, '_sold_individually', 'no'),
(426, 87, '_virtual', 'no'),
(427, 87, '_downloadable', 'no'),
(428, 87, '_download_limit', '-1'),
(429, 87, '_download_expiry', '-1'),
(430, 87, '_stock', NULL),
(431, 87, '_stock_status', 'instock'),
(432, 87, '_wc_average_rating', '0'),
(433, 87, '_wc_review_count', '0'),
(434, 87, '_product_version', '4.6.1'),
(435, 87, '_price', '25000000'),
(436, 87, '_yoast_wpseo_primary_product_cat', '29'),
(437, 87, '_yoast_wpseo_content_score', '30'),
(438, 91, '_edit_last', '1'),
(439, 91, '_edit_lock', '1604548938:1'),
(440, 91, '_regular_price', '20000000'),
(441, 91, '_sale_price', '17000000'),
(442, 91, 'total_sales', '0'),
(443, 91, '_tax_status', 'taxable'),
(444, 91, '_tax_class', ''),
(445, 91, '_manage_stock', 'no'),
(446, 91, '_backorders', 'no'),
(447, 91, '_sold_individually', 'no'),
(448, 91, '_virtual', 'no'),
(449, 91, '_downloadable', 'no'),
(450, 91, '_download_limit', '-1'),
(451, 91, '_download_expiry', '-1'),
(452, 91, '_stock', NULL),
(453, 91, '_stock_status', 'instock'),
(454, 91, '_wc_average_rating', '0'),
(455, 91, '_wc_review_count', '0'),
(456, 91, '_product_version', '4.6.1'),
(457, 91, '_price', '17000000'),
(458, 91, '_yoast_wpseo_primary_product_cat', '19'),
(459, 91, '_yoast_wpseo_content_score', '60'),
(460, 92, '_wp_attached_file', '2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg'),
(461, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:81:\"2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:81:\"asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 93, '_wp_attached_file', '2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg'),
(463, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:69:\"2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:69:\"asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(464, 94, '_wp_attached_file', '2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg'),
(465, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:59:\"2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"dell-inspiron-3493-i5-n4i5122w-222088-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(466, 95, '_wp_attached_file', '2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg'),
(467, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:57:\"2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:57:\"hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(468, 96, '_wp_attached_file', '2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg'),
(469, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:65:\"2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(470, 91, '_thumbnail_id', '96'),
(471, 97, '_edit_last', '1'),
(472, 97, '_edit_lock', '1604549167:1'),
(473, 97, '_thumbnail_id', '95'),
(474, 97, '_regular_price', '32000000'),
(475, 97, '_sale_price', '31000000'),
(476, 97, 'total_sales', '0'),
(477, 97, '_tax_status', 'taxable'),
(478, 97, '_tax_class', ''),
(479, 97, '_manage_stock', 'no'),
(480, 97, '_backorders', 'no'),
(481, 97, '_sold_individually', 'no'),
(482, 97, '_virtual', 'no'),
(483, 97, '_downloadable', 'no'),
(484, 97, '_download_limit', '-1'),
(485, 97, '_download_expiry', '-1'),
(486, 97, '_stock', NULL),
(487, 97, '_stock_status', 'instock'),
(488, 97, '_wc_average_rating', '0'),
(489, 97, '_wc_review_count', '0'),
(490, 97, '_product_version', '4.6.1'),
(491, 97, '_price', '31000000'),
(492, 97, '_yoast_wpseo_primary_product_cat', '19'),
(493, 97, '_yoast_wpseo_content_score', '60'),
(494, 99, '_edit_last', '1'),
(495, 99, '_thumbnail_id', '94'),
(496, 99, '_regular_price', '32000000'),
(497, 99, '_sale_price', '20000000'),
(498, 99, 'total_sales', '0'),
(499, 99, '_tax_status', 'taxable'),
(500, 99, '_tax_class', ''),
(501, 99, '_manage_stock', 'no'),
(502, 99, '_backorders', 'no'),
(503, 99, '_sold_individually', 'no'),
(504, 99, '_virtual', 'no'),
(505, 99, '_downloadable', 'no'),
(506, 99, '_download_limit', '-1'),
(507, 99, '_download_expiry', '-1'),
(508, 99, '_stock', NULL),
(509, 99, '_stock_status', 'instock'),
(510, 99, '_wc_average_rating', '0'),
(511, 99, '_wc_review_count', '0'),
(512, 99, '_product_version', '4.6.1'),
(513, 99, '_price', '20000000'),
(514, 99, '_yoast_wpseo_primary_product_cat', '19'),
(515, 99, '_yoast_wpseo_content_score', '30'),
(516, 99, '_edit_lock', '1604549252:1'),
(517, 100, '_edit_last', '1'),
(518, 100, '_edit_lock', '1604549339:1'),
(519, 100, '_thumbnail_id', '93'),
(520, 100, '_regular_price', '26000000'),
(521, 100, 'total_sales', '0'),
(522, 100, '_tax_status', 'taxable'),
(523, 100, '_tax_class', ''),
(524, 100, '_manage_stock', 'no'),
(525, 100, '_backorders', 'no'),
(526, 100, '_sold_individually', 'no'),
(527, 100, '_virtual', 'no'),
(528, 100, '_downloadable', 'no'),
(529, 100, '_download_limit', '-1'),
(530, 100, '_download_expiry', '-1'),
(531, 100, '_stock', NULL),
(532, 100, '_stock_status', 'instock'),
(533, 100, '_wc_average_rating', '0'),
(534, 100, '_wc_review_count', '0'),
(535, 100, '_product_version', '4.6.1'),
(536, 100, '_price', '26000000'),
(537, 100, '_yoast_wpseo_primary_product_cat', '19'),
(538, 100, '_yoast_wpseo_content_score', '30'),
(539, 101, '_edit_last', '1'),
(540, 101, '_edit_lock', '1604549441:1'),
(541, 101, '_thumbnail_id', '92'),
(542, 101, '_regular_price', '31000000'),
(543, 101, 'total_sales', '0'),
(544, 101, '_tax_status', 'taxable'),
(545, 101, '_tax_class', ''),
(546, 101, '_manage_stock', 'no'),
(547, 101, '_backorders', 'no'),
(548, 101, '_sold_individually', 'no'),
(549, 101, '_virtual', 'no'),
(550, 101, '_downloadable', 'no'),
(551, 101, '_download_limit', '-1'),
(552, 101, '_download_expiry', '-1'),
(553, 101, '_stock', NULL),
(554, 101, '_stock_status', 'instock'),
(555, 101, '_wc_average_rating', '0'),
(556, 101, '_wc_review_count', '0'),
(557, 101, '_product_version', '4.6.1'),
(558, 101, '_price', '31000000'),
(559, 101, '_yoast_wpseo_primary_product_cat', '19'),
(560, 101, '_yoast_wpseo_content_score', '30'),
(563, 61, 'add_fb', ''),
(564, 61, '_add_fb', 'field_5fa361bf5d8e7'),
(565, 102, 'add_fb', ''),
(566, 102, '_add_fb', 'field_5fa361bf5d8e7'),
(569, 1, 'add_fb', ''),
(570, 1, '_add_fb', 'field_5fa361bf5d8e7'),
(571, 63, 'add_fb', ''),
(572, 63, '_add_fb', 'field_5fa361bf5d8e7'),
(573, 103, '_wp_attached_file', '2020/11/logo.png'),
(574, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:113;s:4:\"file\";s:16:\"2020/11/logo.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x87.png\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"logo-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 104, '_wp_attached_file', '2020/11/blog-post-01-300x132-1.jpg'),
(576, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:132;s:4:\"file\";s:34:\"2020/11/blog-post-01-300x132-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"blog-post-01-300x132-1-150x132.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"blog-post-01-300x132-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"blog-post-01-300x132-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 105, '_wp_attached_file', '2020/11/1-300x132-1.jpg'),
(578, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:132;s:4:\"file\";s:23:\"2020/11/1-300x132-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"1-300x132-1-150x132.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"1-300x132-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"1-300x132-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(579, 106, '_wp_attached_file', '2020/11/2.jpg'),
(580, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:340;s:4:\"file\";s:13:\"2020/11/2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"2-600x265.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-600x265.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(581, 61, '_wp_page_template', 'default'),
(584, 107, 'add_fb', ''),
(585, 107, '_add_fb', 'field_5fa361bf5d8e7'),
(588, 108, 'add_fb', ''),
(589, 108, '_add_fb', 'field_5fa361bf5d8e7'),
(592, 109, 'add_fb', ''),
(593, 109, '_add_fb', 'field_5fa361bf5d8e7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-02 02:53:33', '2020-11-02 02:53:33', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-11-05 04:17:30', '2020-11-05 04:17:30', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-11-02 02:53:33', '2020-11-02 02:53:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-11-02 02:53:33', '2020-11-02 02:53:33', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-02 02:53:33', '2020-11-02 02:53:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-02 02:53:33', '2020-11-02 02:53:33', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-11-02 02:58:56', '2020-11-02 02:58:56', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-11-02 02:58:56', '2020-11-02 02:58:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-11-02 02:58:57', '2020-11-02 02:58:57', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder-2', '', '', '2020-11-02 02:58:57', '2020-11-02 02:58:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-11-02 03:09:22', '2020-11-02 03:09:22', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-11-02 03:09:22', '2020-11-02 03:09:22', '', 0, 'http://localhost/wordpress/shop/', 0, 'page', '', 0),
(8, 1, '2020-11-02 03:09:24', '2020-11-02 03:09:24', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-11-02 03:09:24', '2020-11-02 03:09:24', '', 0, 'http://localhost/wordpress/cart/', 0, 'page', '', 0),
(9, 1, '2020-11-02 03:09:24', '2020-11-02 03:09:24', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-11-02 03:09:24', '2020-11-02 03:09:24', '', 0, 'http://localhost/wordpress/checkout/', 0, 'page', '', 0),
(10, 1, '2020-11-02 03:09:25', '2020-11-02 03:09:25', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-11-02 03:09:25', '2020-11-02 03:09:25', '', 0, 'http://localhost/wordpress/my-account/', 0, 'page', '', 0),
(11, 1, '2020-11-02 03:36:37', '2020-11-02 03:36:37', '<label> Họ và Tên\r\n    [text* your-name] </label>\r\n\r\n<label> Địa chỉ mail\r\n    [email* your-email] </label>\r\n\r\n<label> điện thoại\r\n   [text text-7]</label>\r\n\r\n<label> Tiêu đề\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <duongngocle96@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <duongngocle96@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-11-05 08:44:44', '2020-11-05 08:44:44', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=11', 0, 'wpcf7_contact_form', '', 0),
(12, 1, '2020-11-02 04:08:53', '2020-11-02 04:08:53', '', 'Điện thoại Apple iPhone 11 64G', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2020-11-02 04:08:53', '2020-11-02 04:08:53', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2020-11-02 04:01:06', '2020-11-02 04:01:06', '<div class=\"css-dcbhpa\">\r\n<div class=\"css-1oycjaj\">\r\n<div class=\"title css-akoccx\">Mô tả sản phẩm</div>\r\n</div>\r\n</div>\r\n<div class=\"css-cssveg\">\r\n<div class=\"css-1s36n16\">\r\n<div class=\"css-r9cu07\">\r\n<div class=\"card-body css-0\">\r\n<div class=\"css-111s35w\">\r\n\r\nApple chính thức ra mắt Điện Thoại Di Động iPhone 11 64GB Green vào ngày 11/9 với nhiều điểm nhấn đến từ thiết kế. Có rất nhiều ý kiến xoay quanh đến cụm camera, bên cạnh đó Apple ra mắt phiên bản chip nhanh nhất hiện nay A13 mang đến trải nghiệm tốt hơn cho người dùng.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-1.png\" alt=\"Iphone 11\" /></figure>\r\n<h2><strong>Màn hình tràn viền Liquid Retina Supercolorful 6.1</strong></h2>\r\nVới thiết kế kiểu dáng màn hình mới này có kết cấu không khác Iphone X với hình ảnh tượng trưng \"tai thỏ\" quen thuộc.\r\n\r\nThiết kế màn hình LCD Retina tinh thể lỏng bên cạnh kiểu dáng tràn viền cao cấp mang đến hình ảnh chân thực hơn làm cho mọi thứ trông thật tuyệt vời, trải nghiệm thật thú vị.\r\nTông màu chuẩn xác với khả năng điều chỉnh cân bằng trắng để phù hợp với biên độ màu của ánh sáng xung quanh bạn. Lựa chọn phù hợp giúp người dùng có thể dễ nhìn hơn, dễ dùng hơn.\r\n\r\nNhấn hoặc nâng thiết bị lên để đánh thức IPhone của bạn đã sẵn sàng ngay lập tức. Tính năng này giúp người dùng sử dụng dễ dàng hơn, tiện lợi hơn và mở máy nhanh hơn tận dụng được những khoảnh khắc chớp nhoáng trong cuộc sống.\r\nCảm ứng xúc giác mang đến tốc độ phản hồi nhanh hơn. Với các nút chức năng giúp người dùng dễ dàng sử dụng, thao tác nhanh và gọn hơn.\r\n<h2><strong>Camera kép mới</strong></h2>\r\nCùng Iphone 11 chụp những bức ảnh sắc nét hơn cùng camera 12MP bên cạnh các tinh chỉnh về hình ảnh. Kết hợp camera chụp góc siêu rộng Ultra wide mang đến những bức ảnh chụp góc rộng được rõ nét hơn, đầy đủ hơn.\r\n\r\nCamera góc siêu rộng mang đến ống kính với khả năng chụp ảnh góc rộng gấp 4 lần mang đến trải nghiệm chụp những bức ảnh phong cảnh tinh tế hơn, góc nhìn rộng hơn. Lưu lại những bức ảnh của những chuyến đi xa đẹp hơn, tinh tế hơn nhiều bên cạnh camera Ultra Wide cao cấp.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-2-e1568350152776.png\" alt=\"Iphone 11\" /></figure>\r\nChế độ chụp ảnh ban đêm cao cấp mới mang đến cho người dùng trải nghiệm những bức ảnh trong môi trường thiếu sáng 1 cách tinh tế nhất mà không cần sử dụng đèn Flash với màu sắc tự nhiên hơn, chất lượng đẹp hơn.\r\n\r\nHiệu ứng chụp ảnh chân dung mới kết hợp cùng khả năng chụp xóa phông cao cấp mang đến những bức ảnh chân dung hoàn hảo. Cảm nhận rõ ràng qua những bức ảnh chụp chân dung từ 2 đến 4 người bên cạnh khả năng xóa phông cao cấp.\r\n\r\nChế độ HDR thế hệ tiếp theo mang đến những bức ảnh đầy màu sắc, phân chia và nhấn mạnh rõ ràng những khu vực có màu sáng, tối khác nhau chinh phục người xem.\r\n\r\nCamera sau được nâng cấp bên cạnh chế độ chụp ảnh còn sở hữu khả năng quay video mới mang đến chất lượng hình ảnh 4K với tốc độ khung hình 60Hz. Không chỉ quay những video thông thường, Iphone 11 tích hợp khả năng chỉnh sửa video với những màu sắc mới, chế độ mới, ... Chỉnh sửa video chưa bao giờ dễ dàng như chỉnh sửa ảnh đến vậy.\r\n\r\nCamera trước với độ phân giải lên tới 12MP bên cạnh chế độ quay phim mới <strong>Slofie</strong> hay còn được hiểu là chế độ quay phim slow motion selfie mang đến những video tinh tế - điều thường chỉ được gặp trên camera sau.\r\n<h2><strong>Chip mới nhanh nhất hiện nay</strong></h2>\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-chip-a13.jpg\" alt=\"Iphone 11\" /></figure>\r\nIphone 11 tích hợp phiên bản chip A13 được Apple đánh giá sở hữu tốc độ nhanh nhất hiện nay cùng với việc tích hợp công nghệ Machine learning mang đến hiệu suất làm việc mạnh mẽ hơn bao giờ hết. Machine learning không chỉ mang đến hiệu năng mạnh mẽ, công nghệ còn giúp người dùng được trải nghiệm công nghệ chụp ảnh tinh tế và quay phim chất lượng cao.\r\n\r\nVới chip A13 mang đến trải nghiệm hoàn toàn mới cùng khả năng chơi game cũng như thực hiện nhiều tác vụ 1 lúc mượt mà hơn, tiết kiệm pin hơn mang đến hiệu quả sử dụng lớn hơn. Với việc sử dụng động cơ Neural thế hệ thứ 3 cho phép người dùng được trải nghiệm nhiều hơn, hấp dẫn hơn.\r\n<h2><strong>Thiết kế mới an toàn hơn, mạnh mẽ hơn</strong></h2>\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-3.jpg\" alt=\"Iphone 11\" /></figure>\r\nHai mặt kính cường lực dành cho cả mặt trước và mặt sau mang đến sự an toàn trong sử dụng cùng với khả năng giảm đi thiệt hại sau mỗi lần người dùng sơ ý làm rơi, va đập.\r\n\r\nThiết kế mới còn cho phép kháng nước tốt hơn rất nhiều lần mang lại sự yên tâm hơn cho người dùng trong lúc mưa hay lỡ bị rơi xuống nước. Với phiên bản Iphone 11 có khả năng chịu độ sâu ngập nước lên tới 2m và thời gian lên tới 30 phút bởi công nghệ IP68 (dữ liệu bên Apple cung cấp).\r\n<h2><strong>Các điểm nhấn về công nghệ tích hợp</strong></h2>\r\nFace ID vẫn được tích hợp cùng Iphone 11 giúp người dùng nâng cao mức độ bảo mật. Sử dụng ảnh đại diện của người dùng tích hợp vào Airdrop mang đến sự chính xác trong việc truyền dữ liệu.\r\n\r\nÂm thanh tích hợp 2 chế độ cao cấp giả lập âm thanh vòm và công nghệ Dolby Atmos mang đến cảm giác trải nghiệm 3D, khi sử dụng người dùng sẽ cảm nhận được rõ âm thanh đang ở xung quanh mình sẽ là tuyệt vời hơn rất nhiều đối với xem phim.\r\n\r\nChuẩn Wifi mới Wifi 6 (802.11 ax) mang đến tốc độ vượt trội hơn hẳn so với các dòng điện thoại trước đây sử dụng wifi với chuẩn 802.11 ac và còn sở hữu tốc độ truyền tải mạnh hơn lên đến 10Gps bên cạnh khả năng phủ sóng cao hơn nhiều lần so với các chuyển cũ trước đây.\r\n\r\nSử dụng Gigabit-Class LTE sở hữu lên tới 30 băng tần LTE để chuyển vùng tốt nhất trên toàn thế giới.\r\n<h2><strong>Các chỉ số rất được quan tâm của Iphone 11</strong></h2>\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-4.png\" alt=\"Iphone 11\" /></figure>\r\nIphone 11 sở hữu 3 mức dung lượng là 64, 128, 256 GB giúp người dùng dễ dàng lựa chọn hơn.\r\n\r\nNgười dùng lần này có lẽ sẽ cảm thấy vui hơn với cổng sạc 18 W đầu tiên của Apple sau bao nhiêu lâu chờ đợi. Để nhấn về sạc pin, người dùng còn được trải nghiệm cả khả năng sạc không dây của Iphone 11.\r\n\r\nPin tăng, thời gian sạc rút gọn được xem như là bước chuyển mình của Apple dành cho Iphone 11, thử nghiệm thực tế cho thấy khả năng phát video lên tới 17 giờ, phát nhạc lên tới 65 giờ.\r\n\r\nSử dụng 2 khe cắm sim giúp người dùng cảm nhận được rõ hơn sự tiện lợi với khả năng lựa chọn cho mình 2 số điện thoại cũng như 2 sim dành cho data khác nhau.\r\n\r\nTrong phiên bản Iphone 11 mới lần này, người dùng được trải nghiệm tốt hơn với IOS 13 với nhiều tính năng mới bên cạnh khả năng tối ưu vận hành của nó.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Điện Thoại Di Động iPhone 11 64GB Green', '', 'publish', 'open', 'closed', '', 'dien-thoai-di-dong-iphone-11-64gb-green', '', '', '2020-11-03 04:34:20', '2020-11-03 04:34:20', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2020-11-02 04:00:37', '2020-11-02 04:00:37', '', 'iphone-11-green-1', '', 'inherit', 'open', 'closed', '', 'iphone-11-green-1', '', '', '2020-11-02 04:00:37', '2020-11-02 04:00:37', '', 13, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-green-1.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-11-02 04:04:38', '2020-11-02 04:04:38', '<h2><strong>Sẵn sàng cho công việc</strong></h2>\r\nĐược thiết kế để dễ cài đặt và sử dụng, <strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> cho phép bạn tiết kiệm không gian làm việc và cung cấp hiệu năng mạnh mẽ để giải quyết công việc hằng ngày với bộ xử lý Intel Core thế hệ mới nhất và bộ nhớ DDR4 lên đến 32GB.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-2.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-2\" /></figure>\r\n<h2><strong>Hiệu năng xử lý tối ưu</strong></h2>\r\n<strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> giúp tối ưu hóa hiệu suất với bộ xử lý Intel Core thế hệ mới nhất, hỗ trợ đồ họa iGPU tích hợp của Intel, bộ nhớ DDR4 có thể nâng cấp tối đa 32GB, và tùy chọn lưu trữ SSD PCIe NVMe với hai khe cắm để phát triển trong tương lai.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-1.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-1\" /></figure>\r\n<h2><strong>Thiết kế tuyệt đẹp</strong></h2>\r\nThiết bị đa năng cực mỏng này được thiết kế với màn hình viền siêu nhỏ, độ phân giải Full HD và tấm nền chống chói. Tất cả được chế tác theo phong cách tinh xảo và kỹ lưỡng, phù hợp với mọi không gian làm việc của bạn.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5\" /></figure>\r\n<h2><strong>Các tính năng mở rộng</strong></h2>\r\nTrải nghiệm nội dung 4K: <strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> với iGPU tích hợp giúp bạn tạo, chỉnh sửa và chia sẻ nội dung 4K một cách dễ dàng và tận hưởng trải nghiệm video 4K toàn màn hình.\r\n\r\nKết nối không dây: nhận kết nối internet nhanh chóng và dễ dàng với Gigabit LAN và WLAN tùy chọn có giao thức 802.11ac và kết nối Bluetooth® 5.0.\r\n\r\nQuản lý PC dễ hơn: dành ít thời gian hơn và nhận ngay các bản cập nhật bạn cần với Bộ tích hợp phần mềm quản lý từ HP.\r\n\r\nAn toàn cho dữ liệu: giúp bảo vệ thông tin tài khoản và dữ liệu của bạn với phần mềm TPM và khe khóa bảo mật.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-3-1.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-3-1\" /></figure>', 'EliteOne 800 G5 8GA59P', '', 'publish', 'open', 'closed', '', 'eliteone-800-g5-8ga59p', '', '', '2020-11-05 03:40:14', '2020-11-05 03:40:14', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2020-11-02 04:04:18', '2020-11-02 04:04:18', '', 'PC-HP-AIO-EliteOne-800-G5-2', '', 'inherit', 'open', 'closed', '', 'pc-hp-aio-eliteone-800-g5-2', '', '', '2020-11-02 04:04:18', '2020-11-02 04:04:18', '', 15, 'http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-11-02 04:07:57', '2020-11-02 04:07:57', '<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/08/Macbook-Air-13-2019-Gold.jpg\" alt=\"Macbook-Air-13-2019-Gold\" /></figure>\r\n<h2><strong>Chất liệu 100% nhôm tái chế</strong></h2>\r\n<strong>Laptop MacBook Air 2019 MVFN2SA/A</strong> được làm từ hợp kim nhôm do Apple tạo ra mang lại sức mạnh, độ bền và hoàn thiện đến mức hoàn hảo - mà không cần khai thác bất kỳ nhôm mới nào từ trái đất. Chất liệu được thiết kế từ việc sử dụng các mảnh nhôm tái chế được chế tạo lại đến mức nguyên tử. Kết quả là một khung vỏ vô cùng đẹp và mạnh mẽ như bất kỳ thứ gì chúng ta đã tạo ra, và đây là chiếc Mac \"xanh\" nhất từng được tạo ra.\r\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/08/Macbook-Air-13-2019-Gray-1.jpg\" alt=\"Macbook-Air-13-2019-Gray-1\" /></figure>', 'Laptop Apple MacBook Air 13\" 2019 MVFN2SA/A (Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)', '', 'publish', 'open', 'closed', '', 'laptop-apple-macbook-air-13-2019-mvfn2sa-a-core-i5-8gb-256gb-ssd-uhd-617-macos-1-3-kg', '', '', '2020-11-05 03:38:56', '2020-11-05 03:38:56', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2020-11-02 04:06:32', '2020-11-02 04:06:32', '', 'Macbook-Air-13-2019-Gold', '', 'inherit', 'open', 'closed', '', 'macbook-air-13-2019-gold', '', '', '2020-11-02 04:06:32', '2020-11-02 04:06:32', '', 17, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-11-02 04:07:24', '2020-11-02 04:07:24', '', 'Macbook-Air-13-2019-Gold', '', 'inherit', 'open', 'closed', '', 'macbook-air-13-2019-gold-2', '', '', '2020-11-02 04:07:24', '2020-11-02 04:07:24', '', 17, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gold-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-11-02 04:07:27', '2020-11-02 04:07:27', '', 'Macbook-Air-13-2019-Gray-4', '', 'inherit', 'open', 'closed', '', 'macbook-air-13-2019-gray-4', '', '', '2020-11-02 04:07:27', '2020-11-02 04:07:27', '', 17, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-11-02 04:07:31', '2020-11-02 04:07:31', '', 'Macbook-Air-13-2019-Gray-3', '', 'inherit', 'open', 'closed', '', 'macbook-air-13-2019-gray-3', '', '', '2020-11-02 04:07:31', '2020-11-02 04:07:31', '', 17, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-11-02 07:40:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-02 07:40:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-11-02 07:40:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-02 07:40:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2020-11-02 07:40:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-02 07:40:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2020-11-02 07:42:04', '2020-11-02 07:42:04', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-11-02 07:42:04', '2020-11-02 07:42:04', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-11-02 07:42:04', '2020-11-02 07:42:04', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-11-02 07:42:04', '2020-11-02 07:42:04', '', 25, 'http://localhost/wordpress/2020/11/02/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-11-02 07:44:58', '2020-11-02 07:44:58', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-11-02 07:44:58', '2020-11-02 07:44:58', '', 0, 'http://localhost/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-11-02 07:44:59', '2020-11-02 07:44:59', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-11-02 07:44:59', '2020-11-02 07:44:59', '', 0, 'http://localhost/wordpress/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2020-11-02 07:45:00', '2020-11-02 07:45:00', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-11-02 07:45:00', '2020-11-02 07:45:00', '', 0, 'http://localhost/wordpress/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-11-02 07:45:00', '2020-11-02 07:45:00', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-11-02 07:45:00', '2020-11-02 07:45:00', '', 0, 'http://localhost/wordpress/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2020-11-02 07:59:11', '2020-11-02 07:59:11', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2020-11-02 07:59:11', '2020-11-02 07:59:11', '', 0, 'http://localhost/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-11-02 07:59:11', '2020-11-02 07:59:11', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-11-02 07:59:11', '2020-11-02 07:59:11', '', 31, 'http://localhost/wordpress/2020/11/02/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-11-02 08:01:58', '2020-11-02 08:01:58', '', 'Tin tức', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2020-11-02 08:01:58', '2020-11-02 08:01:58', '', 0, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-11-02 07:59:26', '2020-11-02 07:59:26', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-11-02 07:59:26', '2020-11-02 07:59:26', '', 33, 'http://localhost/wordpress/2020/11/02/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-11-02 08:01:49', '2020-11-02 08:01:49', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-11-02 08:01:49', '2020-11-02 08:01:49', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2020-11-02 07:59:40', '2020-11-02 07:59:40', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-11-02 07:59:40', '2020-11-02 07:59:40', '', 35, 'http://localhost/wordpress/2020/11/02/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-11-02 08:01:33', '2020-11-02 08:01:33', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-11-02 08:23:36', '2020-11-02 08:23:36', '', 0, 'http://localhost/wordpress/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-11-02 08:01:34', '2020-11-02 08:01:34', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-11-02 08:23:37', '2020-11-02 08:23:37', '', 0, 'http://localhost/wordpress/?p=38', 7, 'nav_menu_item', '', 0),
(39, 1, '2020-11-02 08:01:35', '2020-11-02 08:01:35', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-11-02 08:23:36', '2020-11-02 08:23:36', '', 0, 'http://localhost/wordpress/?p=39', 3, 'nav_menu_item', '', 0),
(40, 1, '2020-11-02 08:01:33', '2020-11-02 08:01:33', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-11-02 08:23:36', '2020-11-02 08:23:36', '', 0, 'http://localhost/wordpress/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2020-11-02 08:04:30', '2020-11-02 08:04:30', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-11-02 08:23:37', '2020-11-02 08:23:37', '', 0, 'http://localhost/wordpress/?p=41', 8, 'nav_menu_item', '', 0),
(42, 1, '2020-11-02 08:19:06', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-11-02 08:19:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=42', 0, 'product', '', 0),
(43, 1, '2020-11-02 08:22:28', '2020-11-02 08:22:28', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-11-02 08:23:37', '2020-11-02 08:23:37', '', 0, 'http://localhost/wordpress/?p=43', 4, 'nav_menu_item', '', 0),
(44, 1, '2020-11-02 08:22:30', '2020-11-02 08:22:30', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-11-02 08:23:37', '2020-11-02 08:23:37', '', 0, 'http://localhost/wordpress/?p=44', 6, 'nav_menu_item', '', 0),
(45, 1, '2020-11-02 08:22:29', '2020-11-02 08:22:29', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-11-02 08:23:37', '2020-11-02 08:23:37', '', 0, 'http://localhost/wordpress/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2020-11-02 08:46:32', '2020-11-02 08:46:32', '', '02', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2020-11-02 09:05:09', '2020-11-02 09:05:09', '', 0, 'http://localhost/wordpress/?post_type=slider&#038;p=46', 0, 'slider', '', 0),
(47, 1, '2020-11-02 08:46:04', '2020-11-02 08:46:04', '', 'baner-02', '', 'inherit', 'open', 'closed', '', 'baner-02', '', '', '2020-11-02 08:46:04', '2020-11-02 08:46:04', '', 46, 'http://localhost/wordpress/wp-content/uploads/2020/11/baner-02.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2020-11-02 08:46:15', '2020-11-02 08:46:15', '', 'banner-01', '', 'inherit', 'open', 'closed', '', 'banner-01', '', '', '2020-11-02 08:46:15', '2020-11-02 08:46:15', '', 46, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner-01.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-11-02 08:46:53', '2020-11-02 08:46:53', '', '01', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2020-11-02 09:04:49', '2020-11-02 09:04:49', '', 0, 'http://localhost/wordpress/?post_type=slider&#038;p=49', 0, 'slider', '', 0),
(50, 1, '2020-11-02 09:35:30', '2020-11-02 09:35:30', '', '<i class=\"fa fa-angle-double-right\"></i> sách bảo mật', '', 'publish', 'closed', 'closed', '', 'chinh-sach-bao-mat', '', '', '2020-11-02 10:07:12', '2020-11-02 10:07:12', '', 0, 'http://localhost/wordpress/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2020-11-02 09:35:31', '2020-11-02 09:35:31', '', '<i class=\"fa fa-angle-double-right\"></i> sách đổi trả', '', 'publish', 'closed', 'closed', '', 'chinh-sach-doi-tra', '', '', '2020-11-02 10:07:13', '2020-11-02 10:07:13', '', 0, 'http://localhost/wordpress/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2020-11-02 09:35:32', '2020-11-02 09:35:32', '', '<i class=\"fa fa-angle-double-right\"></i> vẫn chuyển', '', 'publish', 'closed', 'closed', '', 'phi-van-chuyen', '', '', '2020-11-02 10:07:13', '2020-11-02 10:07:13', '', 0, 'http://localhost/wordpress/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2020-11-02 09:35:32', '2020-11-02 09:35:32', '', '<i class=\"fa fa-angle-double-right\"></i> dẫn thanh toán', '', 'publish', 'closed', 'closed', '', 'huong-dan-thanh-toan', '', '', '2020-11-02 10:07:13', '2020-11-02 10:07:13', '', 0, 'http://localhost/wordpress/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2020-11-02 09:35:33', '2020-11-02 09:35:33', '', '<i class=\"fa fa-angle-double-right\"></i> trình khuyến mãi', '', 'publish', 'closed', 'closed', '', 'chuong-trinh-khuyen-mai', '', '', '2020-11-02 10:07:13', '2020-11-02 10:07:13', '', 0, 'http://localhost/wordpress/?p=54', 5, 'nav_menu_item', '', 0),
(55, 1, '2020-11-03 02:59:08', '2020-11-03 02:59:08', '', 'sp', '', 'inherit', 'open', 'closed', '', 'sp', '', '', '2020-11-03 02:59:08', '2020-11-03 02:59:08', '', 15, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-11-03 02:59:14', '2020-11-03 02:59:14', '', 'sp2', '', 'inherit', 'open', 'closed', '', 'sp2', '', '', '2020-11-03 02:59:14', '2020-11-03 02:59:14', '', 15, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2020-11-04 16:42:05', '2020-11-04 16:42:05', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'publish', 'open', 'open', '', 'thuong-hieu-dong-ho-thong-minh-sinophy-cua-nuoc-nao', '', '', '2020-11-04 16:42:05', '2020-11-04 16:42:05', '', 0, 'http://localhost/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2020-11-04 16:41:48', '2020-11-04 16:41:48', '', 'news', '', 'inherit', 'open', 'closed', '', 'news', '', '', '2020-11-04 16:41:48', '2020-11-04 16:41:48', '', 57, 'http://localhost/wordpress/wp-content/uploads/2020/11/news.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-11-04 16:42:05', '2020-11-04 16:42:05', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-11-04 16:42:05', '2020-11-04 16:42:05', '', 57, 'http://localhost/wordpress/2020/11/04/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-11-04 16:42:09', '2020-11-04 16:42:09', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2020-11-04 16:42:09', '2020-11-04 16:42:09', '', 57, 'http://localhost/wordpress/2020/11/04/57-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2020-11-04 16:42:29', '2020-11-04 16:42:29', '<h4>80% Khách sạn, resort, homestay, cơ sở lưu trú có mức độ nhận diện cao nhờ đầu tư vào tiếp thị nội dung đa kênh, bao phủ mạng xã hội, truyền thông trực tuyến, truyền hình, báo chí, và đặc biệt là nguồn nội dung từ khách hàng đã sử dụng sản phẩm, dịch vụ. Xuất hiện trên các tạp chí, báo mạng với nội dung được cung cấp từ chính người dùng đóng vai trò vừa là cách giới thiệu thuyết phục về cơ sở của bạn, vừa thu hút sự quan tâm từ khách hàng mới, mà lại không tốn kém. Tuy nhiên, khó nhất là lựa chọn được kênh truyền thông phù hợp cũng như nguồn xuất bản nội dung uy tín, chất lượng và tiếp cận đối tượng mục tiêu hiệu quả. Xu hướng hiện nay, khách hàng thường dễ được thuyết phục với các bài reviews, đánh giá trải nghiệm từ người đi trước từ các trang web đánh giá, facebook cá nhân,.. đặc biệt là từ các cuộc thi lớn về du lịch trải nghiệm.</h4>', 'đồng hồ thông minh Sinophy của nước nào?', 'đặc biệt là từ các cuộc thi lớn về du lịch trải nghiệm.', 'publish', 'open', 'open', '', 'thuong-hieu-dong-ho-thong-minh-sinophy-cua-nuoc-nao-2', '', '', '2020-11-06 11:41:54', '2020-11-06 04:41:54', '', 0, 'http://localhost/wordpress/?p=61', 0, 'post', '', 0),
(62, 1, '2020-11-04 16:42:29', '2020-11-04 16:42:29', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-11-04 16:42:29', '2020-11-04 16:42:29', '', 61, 'http://localhost/wordpress/2020/11/04/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-11-04 16:47:07', '2020-11-04 16:47:07', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-11-04 16:47:07', '2020-11-04 16:47:07', '', 1, 'http://localhost/wordpress/2020/11/04/1-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-11-05 01:50:26', '2020-11-05 01:50:26', '', 'Banner Q/c1', '', 'publish', 'closed', 'closed', '', 'banner-q-c1', '', '', '2020-11-05 02:04:07', '2020-11-05 02:04:07', '', 0, 'http://localhost/wordpress/?post_type=bannerqc&#038;p=64', 0, 'bannerqc', '', 0),
(65, 1, '2020-11-05 01:49:21', '2020-11-05 01:49:21', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2020-11-05 01:49:21', '2020-11-05 01:49:21', '', 64, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-11-05 01:50:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-05 01:50:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2020-11-05 01:50:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-05 01:50:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2020-11-05 01:52:30', '2020-11-05 01:52:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"bannerqc\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'link_q/c', 'link_q-c', 'publish', 'closed', 'closed', '', 'group_5fa35a72d7c87', '', '', '2020-11-05 01:52:35', '2020-11-05 01:52:35', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2020-11-05 01:52:30', '2020-11-05 01:52:30', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link q/c', 'link_qc', 'publish', 'closed', 'closed', '', 'field_5fa35a9d64db4', '', '', '2020-11-05 01:52:30', '2020-11-05 01:52:30', '', 68, 'http://localhost/wordpress/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2020-11-05 02:22:40', '2020-11-05 02:22:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'add_qc', 'add_qc', 'publish', 'closed', 'closed', '', 'group_5fa361a1577e3', '', '', '2020-11-05 02:38:48', '2020-11-05 02:38:48', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2020-11-05 02:22:41', '2020-11-05 02:22:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'add_qc', 'add_fb', 'publish', 'closed', 'closed', '', 'field_5fa361bf5d8e7', '', '', '2020-11-05 02:38:48', '2020-11-05 02:38:48', '', 70, 'http://localhost/wordpress/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-11-05 02:23:37', '2020-11-05 02:23:37', '<img class=\"alignnone wp-image-76\" src=\"http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1-300x39.png\" alt=\"\" width=\"594\" height=\"77\" />', 'FB', '', 'publish', 'closed', 'closed', '', 'fb', '', '', '2020-11-05 03:19:06', '2020-11-05 03:19:06', '', 0, 'http://localhost/wordpress/?post_type=fb&#038;p=72', 0, 'banner', '', 0),
(73, 1, '2020-11-05 02:39:12', '2020-11-05 02:39:12', '', '122445757_3587850704608758_7473537705871244182_o', '', 'inherit', 'open', 'closed', '', '122445757_3587850704608758_7473537705871244182_o', '', '', '2020-11-05 02:39:12', '2020-11-05 02:39:12', '', 72, 'http://localhost/wordpress/wp-content/uploads/2020/11/122445757_3587850704608758_7473537705871244182_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-11-05 02:39:24', '2020-11-05 02:39:24', '', 'huykira', '', 'inherit', 'open', 'closed', '', 'huykira', '', '', '2020-11-05 02:39:24', '2020-11-05 02:39:24', '', 72, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-11-05 02:39:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-05 02:39:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=banner&p=75', 0, 'banner', '', 0),
(76, 1, '2020-11-05 02:51:02', '2020-11-05 02:51:02', '', 'huykira (1)', '', 'inherit', 'open', 'closed', '', 'huykira-1', '', '', '2020-11-05 02:51:02', '2020-11-05 02:51:02', '', 72, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2020-11-05 03:03:29', '2020-11-05 03:03:29', '<img class=\"alignnone wp-image-76\" src=\"http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1-300x39.png\" alt=\"\" width=\"1000\" height=\"349\" />', 'FB', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2020-11-05 03:03:29', '2020-11-05 03:03:29', '', 72, 'http://localhost/wordpress/2020/11/05/72-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2020-11-05 03:47:08', '2020-11-05 03:47:08', '<h2><strong>Sẵn sàng cho công việc</strong></h2>\nĐược thiết kế để dễ cài đặt và sử dụng, <strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> cho phép bạn tiết kiệm không gian làm việc và cung cấp hiệu năng mạnh mẽ để giải quyết công việc hằng ngày với bộ xử lý Intel Core thế hệ mới nhất và bộ nhớ DDR4 lên đến 32GB.\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-2.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-2\" /></figure>\n<h2><strong>Hiệu năng xử lý tối ưu</strong></h2>\n<strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> giúp tối ưu hóa hiệu suất với bộ xử lý Intel Core thế hệ mới nhất, hỗ trợ đồ họa iGPU tích hợp của Intel, bộ nhớ DDR4 có thể nâng cấp tối đa 32GB, và tùy chọn lưu trữ SSD PCIe NVMe với hai khe cắm để phát triển trong tương lai.\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-1.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-1\" /></figure>\n<h2><strong>Thiết kế tuyệt đẹp</strong></h2>\nThiết bị đa năng cực mỏng này được thiết kế với màn hình viền siêu nhỏ, độ phân giải Full HD và tấm nền chống chói. Tất cả được chế tác theo phong cách tinh xảo và kỹ lưỡng, phù hợp với mọi không gian làm việc của bạn.\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5\" /></figure>\n<h2><strong>Các tính năng mở rộng</strong></h2>\nTrải nghiệm nội dung 4K: <strong>PC HP AIO EliteOne 800 G5 8GA59PA</strong> với iGPU tích hợp giúp bạn tạo, chỉnh sửa và chia sẻ nội dung 4K một cách dễ dàng và tận hưởng trải nghiệm video 4K toàn màn hình.\n\nKết nối không dây: nhận kết nối internet nhanh chóng và dễ dàng với Gigabit LAN và WLAN tùy chọn có giao thức 802.11ac và kết nối Bluetooth® 5.0.\n\nQuản lý PC dễ hơn: dành ít thời gian hơn và nhận ngay các bản cập nhật bạn cần với Bộ tích hợp phần mềm quản lý từ HP.\n\nAn toàn cho dữ liệu: giúp bảo vệ thông tin tài khoản và dữ liệu của bạn với phần mềm TPM và khe khóa bảo mật.\n<figure class=\"image\"><img src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-3-1.jpg\" alt=\"PC-HP-AIO-EliteOne-800-G5-3-1\" /></figure>', 'EliteOne 800 G5 8GA59P', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2020-11-05 03:47:08', '2020-11-05 03:47:08', '', 15, 'http://localhost/wordpress/2020/11/05/15-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2020-11-05 03:49:01', '2020-11-05 03:49:01', '<h3>iPhone 12 Pro Max 128GB</h3>', 'iPhone 12 Pro Max 128GB', '<h3>iPhone 12 Pro Max 128GB</h3>', 'publish', 'open', 'closed', '', 'iphone-12-pro-max-128gb', '', '', '2020-11-05 03:49:05', '2020-11-05 03:49:05', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2020-11-05 03:48:43', '2020-11-05 03:48:43', '', 'iphone-11-pro-max-green-400x400', '', 'inherit', 'open', 'closed', '', 'iphone-11-pro-max-green-400x400', '', '', '2020-11-05 03:48:43', '2020-11-05 03:48:43', '', 79, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-11-05 03:50:59', '2020-11-05 03:50:59', '<h1 data-s=\"java\" data-p=\"3\">Điện thoại iPhone 11 Pro Max 64GB</h1>', 'Điện thoại iPhone 11 Pro Max 64GB', '<h1 data-s=\"java\" data-p=\"3\">Điện thoại iPhone 11 Pro Max 64GB</h1>', 'publish', 'open', 'closed', '', 'dien-thoai-iphone-11-pro-max-64gb', '', '', '2020-11-05 03:55:39', '2020-11-05 03:55:39', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2020-11-05 03:50:32', '2020-11-05 03:50:32', '', 'iphone-11-red-fix-200x200', '', 'inherit', 'open', 'closed', '', 'iphone-11-red-fix-200x200', '', '', '2020-11-05 03:50:32', '2020-11-05 03:50:32', '', 81, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-11-05 03:50:34', '2020-11-05 03:50:34', '', 'iphone-12-pro-max-195420-015420-400x400', '', 'inherit', 'open', 'closed', '', 'iphone-12-pro-max-195420-015420-400x400', '', '', '2020-11-05 03:50:34', '2020-11-05 03:50:34', '', 81, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-12-pro-max-195420-015420-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-11-05 03:50:37', '2020-11-05 03:50:37', '', 'samsung-galaxy-note-10-plus-den-400x460-400x460', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-10-plus-den-400x460-400x460', '', '', '2020-11-05 03:50:37', '2020-11-05 03:50:37', '', 81, 'http://localhost/wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2020-11-05 03:51:12', '2020-11-05 03:51:12', '<h1 data-s=\"java\" data-p=\"3\">Điện thoại iPhone 11 Pro Max 64GB</h1>', 'Điện thoại iPhone 11 Pro Max 64GB', '<h1 data-s=\"java\" data-p=\"3\">Điện thoại iPhone 11 Pro Max 64GB</h1>', 'inherit', 'closed', 'closed', '', '81-autosave-v1', '', '', '2020-11-05 03:51:12', '2020-11-05 03:51:12', '', 81, 'http://localhost/wordpress/2020/11/05/81-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2020-11-05 03:52:32', '2020-11-05 03:52:32', 'Điện thoại iPhone 11', 'Điện thoại iPhone 11', '', 'publish', 'open', 'closed', '', 'dien-thoai-iphone-11', '', '', '2020-11-05 03:55:42', '2020-11-05 03:55:42', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2020-11-05 03:53:58', '2020-11-05 03:53:58', '<h3>Samsung Galaxy Note 10+</h3>', 'Samsung Galaxy Note 10+', '<h3>Samsung Galaxy Note 10+</h3>', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-10', '', '', '2020-11-05 03:54:35', '2020-11-05 03:54:35', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2020-11-05 04:01:49', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-11-05 04:01:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=88', 0, 'product', '', 0),
(89, 1, '2020-11-05 04:01:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-11-05 04:01:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=89', 0, 'product', '', 0);
INSERT INTO `tbl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2020-11-05 04:01:52', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-11-05 04:01:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=90', 0, 'product', '', 0),
(91, 1, '2020-11-05 04:03:02', '2020-11-05 04:03:02', '<h1 data-s=\"java\" data-p=\"3\">Laptop HP Pavilion 15</h1>', 'Laptop HP Pavilion 15', '<h1 data-s=\"java\" data-p=\"3\">Laptop HP Pavilion 15</h1>', 'publish', 'open', 'closed', '', 'laptop-hp-pavilion-15', '', '', '2020-11-05 04:04:14', '2020-11-05 04:04:14', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2020-11-05 04:03:37', '2020-11-05 04:03:37', '', 'asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600', '', 'inherit', 'open', 'closed', '', 'asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600', '', '', '2020-11-05 04:03:37', '2020-11-05 04:03:37', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-11-05 04:03:42', '2020-11-05 04:03:42', '', 'asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400', '', 'inherit', 'open', 'closed', '', 'asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400', '', '', '2020-11-05 04:03:42', '2020-11-05 04:03:42', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-11-05 04:03:46', '2020-11-05 04:03:46', '', 'dell-inspiron-3493-i5-n4i5122w-222088-400x400', '', 'inherit', 'open', 'closed', '', 'dell-inspiron-3493-i5-n4i5122w-222088-400x400', '', '', '2020-11-05 04:03:46', '2020-11-05 04:03:46', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-11-05 04:03:49', '2020-11-05 04:03:49', '', 'hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400', '', 'inherit', 'open', 'closed', '', 'hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400', '', '', '2020-11-05 04:03:49', '2020-11-05 04:03:49', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-11-05 04:03:54', '2020-11-05 04:03:54', '', 'hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400', '', 'inherit', 'open', 'closed', '', 'hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400', '', '', '2020-11-05 04:03:54', '2020-11-05 04:03:54', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-11-05 04:06:01', '2020-11-05 04:06:01', '<h3>Lenovo IdeaPad S340 14IIL i5 1035G1</h3>', 'Lenovo IdeaPad S340 14IIL i5 1035G1', '<h3>Lenovo IdeaPad S340 14IIL i5 1035G1</h3>', 'publish', 'open', 'closed', '', 'lenovo-ideapad-s340-14iil-i5-1035g1', '', '', '2020-11-05 04:07:54', '2020-11-05 04:07:54', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2020-11-05 04:08:22', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-11-05 04:08:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=98', 0, 'product', '', 0),
(99, 1, '2020-11-05 04:09:12', '2020-11-05 04:09:12', '', 'Laptop Gaming', '', 'publish', 'open', 'closed', '', 'laptop-gaming', '', '', '2020-11-05 04:14:08', '2020-11-05 04:14:08', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2020-11-05 04:10:31', '2020-11-05 04:10:31', '', 'Laptop sony', '', 'publish', 'open', 'closed', '', 'laptop-sony', '', '', '2020-11-05 04:14:07', '2020-11-05 04:14:07', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2020-11-05 04:12:55', '2020-11-05 04:12:55', '', 'Game ming 360 14 dw0060TU', '', 'publish', 'open', 'closed', '', 'game-ming-360-14-dw0060tu', '', '', '2020-11-05 04:14:06', '2020-11-05 04:14:06', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2020-11-05 04:16:19', '2020-11-05 04:16:19', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>', 'đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-11-05 04:16:19', '2020-11-05 04:16:19', '', 61, 'http://localhost/wordpress/2020/11/05/61-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-11-05 08:01:51', '2020-11-05 08:01:51', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-11-05 08:01:51', '2020-11-05 08:01:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/11/logo.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2020-11-06 03:26:17', '2020-11-06 03:26:17', '', 'blog-post-01-300x132', '', 'inherit', 'open', 'closed', '', 'blog-post-01-300x132', '', '', '2020-11-06 03:26:17', '2020-11-06 03:26:17', '', 61, 'http://localhost/wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-11-06 03:26:25', '2020-11-06 03:26:25', '', '1-300x132', '', 'inherit', 'open', 'closed', '', '1-300x132', '', '', '2020-11-06 03:26:25', '2020-11-06 03:26:25', '', 61, 'http://localhost/wordpress/wp-content/uploads/2020/11/1-300x132-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2020-11-06 03:26:29', '2020-11-06 03:26:29', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-11-06 03:26:29', '2020-11-06 03:26:29', '', 61, 'http://localhost/wordpress/wp-content/uploads/2020/11/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-11-06 03:26:43', '2020-11-06 03:26:43', '<h4><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào </a><a href=\"http://localhost/wordpress/#\">Thương hiệu đồng hồ thông minh Sinophy của nước nào?</a></h4>\n<h4></h4>', 'đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2020-11-06 03:26:43', '2020-11-06 03:26:43', '', 61, 'http://localhost/wordpress/2020/11/06/61-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2020-11-06 11:40:22', '2020-11-06 04:40:22', '<h4>80% Khách sạn, resort, homestay, cơ sở lưu trú có mức độ nhận diện cao nhờ đầu tư vào tiếp thị nội dung đa kênh, bao phủ mạng xã hội, truyền thông trực tuyến, truyền hình, báo chí, và đặc biệt là nguồn nội dung từ khách hàng đã sử dụng sản phẩm, dịch vụ. Xuất hiện trên các tạp chí, báo mạng với nội dung được cung cấp từ chính người dùng đóng vai trò vừa là cách giới thiệu thuyết phục về cơ sở của bạn, vừa thu hút sự quan tâm từ khách hàng mới, mà lại không tốn kém. Tuy nhiên, khó nhất là lựa chọn được kênh truyền thông phù hợp cũng như nguồn xuất bản nội dung uy tín, chất lượng và tiếp cận đối tượng mục tiêu hiệu quả. Xu hướng hiện nay, khách hàng thường dễ được thuyết phục với các bài reviews, đánh giá trải nghiệm từ người đi trước từ các trang web đánh giá, facebook cá nhân,.. đặc biệt là từ các cuộc thi lớn về du lịch trải nghiệm.</h4>', 'đồng hồ thông minh Sinophy của nước nào?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-11-06 11:40:22', '2020-11-06 04:40:22', '', 61, 'http://localhost/wordpress/61-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-11-06 11:41:54', '2020-11-06 04:41:54', '<h4>80% Khách sạn, resort, homestay, cơ sở lưu trú có mức độ nhận diện cao nhờ đầu tư vào tiếp thị nội dung đa kênh, bao phủ mạng xã hội, truyền thông trực tuyến, truyền hình, báo chí, và đặc biệt là nguồn nội dung từ khách hàng đã sử dụng sản phẩm, dịch vụ. Xuất hiện trên các tạp chí, báo mạng với nội dung được cung cấp từ chính người dùng đóng vai trò vừa là cách giới thiệu thuyết phục về cơ sở của bạn, vừa thu hút sự quan tâm từ khách hàng mới, mà lại không tốn kém. Tuy nhiên, khó nhất là lựa chọn được kênh truyền thông phù hợp cũng như nguồn xuất bản nội dung uy tín, chất lượng và tiếp cận đối tượng mục tiêu hiệu quả. Xu hướng hiện nay, khách hàng thường dễ được thuyết phục với các bài reviews, đánh giá trải nghiệm từ người đi trước từ các trang web đánh giá, facebook cá nhân,.. đặc biệt là từ các cuộc thi lớn về du lịch trải nghiệm.</h4>', 'đồng hồ thông minh Sinophy của nước nào?', 'đặc biệt là từ các cuộc thi lớn về du lịch trải nghiệm.', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-11-06 11:41:54', '2020-11-06 04:41:54', '', 61, 'http://localhost/wordpress/61-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_termmeta`
--

CREATE TABLE `tbl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_termmeta`
--

INSERT INTO `tbl_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'display_type', ''),
(2, 17, 'thumbnail_id', '0'),
(3, 19, 'order', '0'),
(4, 19, 'display_type', ''),
(5, 19, 'thumbnail_id', '0'),
(6, 20, 'order', '0'),
(7, 20, 'display_type', ''),
(8, 20, 'thumbnail_id', '0'),
(9, 17, 'product_count_product_cat', '5'),
(10, 21, 'product_count_product_tag', '1'),
(11, 20, 'product_count_product_cat', '1'),
(12, 22, 'product_count_product_tag', '1'),
(13, 19, 'product_count_product_cat', '6'),
(14, 23, 'product_count_product_tag', '1'),
(15, 27, 'order', '0'),
(16, 27, 'display_type', ''),
(17, 27, 'thumbnail_id', '0'),
(18, 28, 'order', '0'),
(19, 28, 'display_type', ''),
(20, 28, 'thumbnail_id', '0'),
(21, 29, 'order', '0'),
(22, 29, 'display_type', ''),
(23, 29, 'thumbnail_id', '0'),
(24, 30, 'order', '0'),
(25, 30, 'display_type', ''),
(26, 30, 'thumbnail_id', '0'),
(27, 31, 'order', '0'),
(28, 31, 'display_type', ''),
(29, 31, 'thumbnail_id', '0'),
(30, 32, 'order', '0'),
(31, 32, 'display_type', ''),
(32, 32, 'thumbnail_id', '0'),
(33, 33, 'order', '0'),
(34, 33, 'display_type', ''),
(35, 33, 'thumbnail_id', '0'),
(36, 34, 'order', '0'),
(37, 34, 'display_type', ''),
(38, 34, 'thumbnail_id', '0'),
(39, 27, 'product_count_product_cat', '3'),
(40, 29, 'product_count_product_cat', '1'),
(41, 36, 'order', '0'),
(42, 36, 'display_type', ''),
(43, 36, 'thumbnail_id', '0'),
(44, 37, 'order', '0'),
(45, 37, 'display_type', ''),
(46, 37, 'thumbnail_id', '0'),
(47, 38, 'order', '0'),
(48, 38, 'display_type', ''),
(49, 38, 'thumbnail_id', '0'),
(50, 34, 'product_count_product_cat', '3'),
(51, 39, 'product_count_product_tag', '1'),
(52, 37, 'product_count_product_cat', '1'),
(53, 38, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_terms`
--

CREATE TABLE `tbl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_terms`
--

INSERT INTO `tbl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Điện Thoại', 'dien-thoai', 0),
(19, 'Laptop', 'laptop', 0),
(20, 'Máy Tính', 'may-tinh', 0),
(21, 'iphone', 'iphone', 0),
(22, 'pc', 'pc', 0),
(23, 'mac', 'mac', 0),
(24, 'menu-top', 'menu-top', 0),
(25, 'menu main', 'menu-main', 0),
(26, 'Tin tức', 'tin-tuc', 0),
(27, 'iphone', 'iphone', 0),
(28, 'htc', 'htc', 0),
(29, 'vinsmart', 'vinsmart', 0),
(30, 'vertu', 'vertu', 0),
(31, 'Apple', 'apple', 0),
(32, 'dell', 'dell', 0),
(33, 'asus', 'asus', 0),
(34, 'Game ming', 'gameming', 0),
(35, 'menu footer', 'menu-footer', 0),
(36, 'macbook', 'macbook', 0),
(37, 'lenovo', 'lenovo', 0),
(38, 'sony vivo', 'sony-vivo', 0),
(39, '12', '12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_term_relationships`
--

CREATE TABLE `tbl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_term_relationships`
--

INSERT INTO `tbl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 26, 0),
(13, 2, 0),
(13, 8, 0),
(13, 17, 0),
(13, 21, 0),
(15, 2, 0),
(15, 8, 0),
(15, 20, 0),
(15, 22, 0),
(17, 2, 0),
(17, 8, 0),
(17, 19, 0),
(17, 23, 0),
(27, 24, 0),
(28, 24, 0),
(29, 24, 0),
(30, 24, 0),
(37, 25, 0),
(38, 25, 0),
(39, 25, 0),
(40, 25, 0),
(41, 25, 0),
(43, 25, 0),
(44, 25, 0),
(45, 25, 0),
(50, 35, 0),
(51, 35, 0),
(52, 35, 0),
(53, 35, 0),
(54, 35, 0),
(57, 26, 0),
(61, 26, 0),
(79, 2, 0),
(79, 17, 0),
(79, 27, 0),
(81, 2, 0),
(81, 8, 0),
(81, 27, 0),
(86, 2, 0),
(86, 8, 0),
(86, 17, 0),
(86, 27, 0),
(87, 2, 0),
(87, 17, 0),
(87, 29, 0),
(91, 2, 0),
(91, 19, 0),
(91, 34, 0),
(91, 39, 0),
(97, 2, 0),
(97, 19, 0),
(97, 37, 0),
(99, 2, 0),
(99, 8, 0),
(99, 19, 0),
(99, 34, 0),
(100, 2, 0),
(100, 8, 0),
(100, 19, 0),
(100, 38, 0),
(101, 2, 0),
(101, 8, 0),
(101, 19, 0),
(101, 34, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_term_taxonomy`
--

CREATE TABLE `tbl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_term_taxonomy`
--

INSERT INTO `tbl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 8),
(9, 9, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 4),
(19, 19, 'product_cat', '', 0, 6),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'product_tag', '', 0, 1),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'nav_menu', '', 0, 4),
(25, 25, 'nav_menu', '', 0, 8),
(26, 26, 'category', '', 0, 3),
(27, 27, 'product_cat', '', 17, 3),
(28, 28, 'product_cat', '', 17, 0),
(29, 29, 'product_cat', '', 17, 1),
(30, 30, 'product_cat', '', 17, 0),
(31, 31, 'product_cat', '', 20, 0),
(32, 32, 'product_cat', '', 20, 0),
(33, 33, 'product_cat', '', 20, 0),
(34, 34, 'product_cat', '', 19, 3),
(35, 35, 'nav_menu', '', 0, 5),
(36, 36, 'product_cat', '', 19, 0),
(37, 37, 'product_cat', '', 19, 1),
(38, 38, 'product_cat', '', 19, 1),
(39, 39, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_usermeta`
--

CREATE TABLE `tbl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_usermeta`
--

INSERT INTO `tbl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wordpress'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tbl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tbl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"9c0b9601bbd3512e2b04df536ceac9cb1de05abf7c7a68fefbfc04f0d67e9d6c\";a:4:{s:10:\"expiration\";i:1605495247;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604285647;}s:64:\"99b43b685b3c5d4dcb3cd28f7f1f637d26c365107a3bef4907b6f5f6350d6b6a\";a:4:{s:10:\"expiration\";i:1604675224;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604502424;}s:64:\"00154cd79f9b6a3462cd7b24429ba3972c5ca168f512ec22c8a7a4e08fb989ec\";a:4:{s:10:\"expiration\";i:1605712028;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604502428;}s:64:\"fecb28f721466fc3e1e8358d569e85eb1718f54b8649e3a7bf62fe8a5111a40d\";a:4:{s:10:\"expiration\";i:1605712047;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604502447;}}'),
(17, 1, 'tbl_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:7pKWlRmjjIsFoYG3emYra2D2'),
(19, 1, 'last_update', '1604504958'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1604286292953'),
(22, 1, 'wc_last_active', '1604880000'),
(23, 1, 'closedpostboxes_product', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(24, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(25, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:66:\"postexcerpt,postcustom,woocommerce-product-data,wpseo_meta,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_product', '2'),
(27, 1, 'tbl_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(28, 1, 'tbl_user-settings-time', '1604558753'),
(29, 1, '_yoast_wpseo_profile_updated', '1604504955'),
(31, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(32, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-product_tag\";}'),
(33, 1, 'closedpostboxes_page', 'a:1:{i:0;s:13:\"pageparentdiv\";}'),
(34, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(35, 1, 'nav_menu_recently_edited', '35'),
(36, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(37, 1, 'closedpostboxes_slider', 'a:0:{}'),
(38, 1, 'metaboxhidden_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(39, 1, '_order_count', '0'),
(42, 1, 'wpseo_title', ''),
(43, 1, 'wpseo_metadesc', ''),
(44, 1, 'wpseo_noindex_author', ''),
(45, 1, 'wpseo_content_analysis_disable', ''),
(46, 1, 'wpseo_keyword_analysis_disable', ''),
(47, 1, 'billing_first_name', ''),
(48, 1, 'billing_last_name', ''),
(49, 1, 'billing_company', ''),
(50, 1, 'billing_address_1', ''),
(51, 1, 'billing_address_2', ''),
(52, 1, 'billing_city', ''),
(53, 1, 'billing_postcode', ''),
(54, 1, 'billing_country', ''),
(55, 1, 'billing_state', ''),
(56, 1, 'billing_phone', ''),
(57, 1, 'billing_email', 'duongngocle96@gmail.com'),
(58, 1, 'shipping_first_name', ''),
(59, 1, 'shipping_last_name', ''),
(60, 1, 'shipping_company', ''),
(61, 1, 'shipping_address_1', ''),
(62, 1, 'shipping_address_2', ''),
(63, 1, 'shipping_city', ''),
(64, 1, 'shipping_postcode', ''),
(65, 1, 'shipping_country', ''),
(66, 1, 'shipping_state', ''),
(67, 1, 'facebook', ''),
(68, 1, 'instagram', ''),
(69, 1, 'linkedin', ''),
(70, 1, 'myspace', ''),
(71, 1, 'pinterest', ''),
(72, 1, 'soundcloud', ''),
(73, 1, 'tumblr', ''),
(74, 1, 'twitter', ''),
(75, 1, 'youtube', ''),
(76, 1, 'wikipedia', ''),
(77, 1, 'closedpostboxes_fb', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(78, 1, 'metaboxhidden_fb', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(79, 1, 'tbl_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:53;s:9:\"\0*\0reason\";s:26:\"permalink_settings_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:9:\"wordpress\";s:9:\"user_pass\";s:34:\"$P$BIutOGVs76sPl00UCkMAhToMtvolOV/\";s:13:\"user_nicename\";s:9:\"wordpress\";s:10:\"user_email\";s:23:\"duongngocle96@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/wordpress\";s:15:\"user_registered\";s:19:\"2020-11-02 02:53:31\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"wordpress\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:16:\"tbl_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:116:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:365:\"<strong>New in Yoast SEO 15.2: </strong>You’re now able to optimize URLs for more visibility when shared on Slack! <a href=\"https://yoa.st/yoast15-2?php_version=7.4&#038;platform=wordpress&#038;platform_version=5.5.3&#038;software=free&#038;software_version=15.2&#038;days_active=6-30&#038;user_language=en_US\" target=\"_blank\">Read all about version 15.2 here</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"updated\";s:2:\"id\";s:20:\"wpseo-plugin-updated\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:9:\"wordpress\";s:9:\"user_pass\";s:34:\"$P$BIutOGVs76sPl00UCkMAhToMtvolOV/\";s:13:\"user_nicename\";s:9:\"wordpress\";s:10:\"user_email\";s:23:\"duongngocle96@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/wordpress\";s:15:\"user_registered\";s:19:\"2020-11-02 02:53:31\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"wordpress\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:16:\"tbl_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:116:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:1:{s:13:\"dismiss_value\";s:4:\"15.2\";}s:13:\"dismissal_key\";s:20:\"wpseo-plugin-updated\";s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:428:\"Yoast SEO and WooCommerce can work together a lot better by adding a helper plugin. Please install Yoast WooCommerce SEO to make your life better. <a href=\"https://yoa.st/1o0?php_version=7.4&platform=wordpress&platform_version=5.5.3&software=free&software_version=15.2&days_active=6-30&user_language=en_US\" aria-label=\"More information about Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:4:\"user\";r:161;s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(80, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:65:\"submitdiv,categorydiv,tagsdiv-post_tag,pageparentdiv,postimagediv\";s:6:\"normal\";s:120:\"wpseo_meta,acf-group_5fa361a1577e3,revisionsdiv,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(81, 1, 'screen_layout_post', '2'),
(82, 1, 'closedpostboxes_post', 'a:0:{}'),
(83, 1, 'metaboxhidden_post', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(84, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";a:11:{s:3:\"key\";s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";s:10:\"product_id\";i:13;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4200000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:4200000;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wordpress', '$P$BIutOGVs76sPl00UCkMAhToMtvolOV/', 'wordpress', 'duongngocle96@gmail.com', 'http://localhost/wordpress', '2020-11-02 02:53:31', '', 0, 'wordpress');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_admin_notes`
--

CREATE TABLE `tbl_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wc_admin_notes`
--

INSERT INTO `tbl_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 02:58:06', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 02:58:09', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'actioned', 'woocommerce-admin', '2020-11-02 02:58:11', NULL, 0, 'plain', '', 0, 'info'),
(4, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-11-02 02:58:20', NULL, 0, 'plain', '', 0, 'info'),
(5, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-11-02 02:58:21', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-11-02 02:58:22', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_admin_note_actions`
--

CREATE TABLE `tbl_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wc_admin_note_actions`
--

INSERT INTO `tbl_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(3, 3, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/wordpress/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(106, 4, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(107, 5, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(108, 6, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_category_lookup`
--

CREATE TABLE `tbl_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wc_category_lookup`
--

INSERT INTO `tbl_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(17, 27),
(17, 28),
(17, 29),
(17, 30),
(20, 31),
(20, 32),
(20, 33),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_customer_lookup`
--

CREATE TABLE `tbl_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_download_log`
--

CREATE TABLE `tbl_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_order_coupon_lookup`
--

CREATE TABLE `tbl_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_order_product_lookup`
--

CREATE TABLE `tbl_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_order_stats`
--

CREATE TABLE `tbl_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_order_tax_lookup`
--

CREATE TABLE `tbl_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_product_meta_lookup`
--

CREATE TABLE `tbl_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wc_product_meta_lookup`
--

INSERT INTO `tbl_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(13, '', 0, 0, '2100000.0000', '2100000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(15, '', 0, 0, '28888888.0000', '28888888.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(17, '', 0, 0, '21000000.0000', '21000000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(79, '', 0, 0, '32990000.0000', '32990000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(81, '', 0, 0, '32000000.0000', '32000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '26000000.0000', '26000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(87, '', 0, 0, '25000000.0000', '25000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, '', 0, 0, '17000000.0000', '17000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(97, '', 0, 0, '31000000.0000', '31000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, '', 0, 0, '20000000.0000', '20000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(100, '', 0, 0, '26000000.0000', '26000000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '31000000.0000', '31000000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_reserved_stock`
--

CREATE TABLE `tbl_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_tax_rate_classes`
--

CREATE TABLE `tbl_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wc_tax_rate_classes`
--

INSERT INTO `tbl_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wc_webhooks`
--

CREATE TABLE `tbl_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_api_keys`
--

CREATE TABLE `tbl_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_attribute_taxonomies`
--

CREATE TABLE `tbl_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `tbl_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_log`
--

CREATE TABLE `tbl_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_order_itemmeta`
--

CREATE TABLE `tbl_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_order_items`
--

CREATE TABLE `tbl_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_payment_tokenmeta`
--

CREATE TABLE `tbl_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_payment_tokens`
--

CREATE TABLE `tbl_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_sessions`
--

CREATE TABLE `tbl_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_woocommerce_sessions`
--

INSERT INTO `tbl_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(9, '1', 'a:7:{s:4:\"cart\";s:420:\"a:1:{s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";a:11:{s:3:\"key\";s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";s:10:\"product_id\";i:13;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:8400000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:8400000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:7:\"8400000\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:7:\"8400000\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"8400000\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:737:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-11-04T15:49:18+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"duongngocle96@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1605053210);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_shipping_zones`
--

CREATE TABLE `tbl_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_shipping_zone_locations`
--

CREATE TABLE `tbl_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_shipping_zone_methods`
--

CREATE TABLE `tbl_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_tax_rates`
--

CREATE TABLE `tbl_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_woocommerce_tax_rate_locations`
--

CREATE TABLE `tbl_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wpsmtp_logs`
--

CREATE TABLE `tbl_wpsmtp_logs` (
  `mail_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `to` varchar(200) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '0',
  `message` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_wpsmtp_logs`
--

INSERT INTO `tbl_wpsmtp_logs` (`mail_id`, `timestamp`, `to`, `subject`, `message`, `headers`, `error`) VALUES
(1, '2020-11-05 09:18:57', 'duongngocle96@gmail.com', 'wordpress \"0358949xxx\"', 'From: 12 <duongngocle96@GMAIL.COM>\nSubject: 0358949xxx\n\nMessage Body:\n12\n\n-- \nThis e-mail was sent from a contact form on wordpress (http://localhost/wordpress)', 'From: wordpress <duongngocle96@gmail.com>\nX-WPCF7-Content-Type: text/plain\nReply-To: duongngocle96@GMAIL.COM\n', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_yoast_indexable`
--

CREATE TABLE `tbl_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_yoast_indexable`
--

INSERT INTO `tbl_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(1, 'http://localhost/wordpress/author/wordpress/', '44:3716d18d5b66d69b4a3ce46fc5c8860f', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/95eea54190488f1c0f3fbe3f1dfefa91?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/95eea54190488f1c0f3fbe3f1dfefa91?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-11-02 03:46:22', '2020-11-08 17:07:46', 1, NULL, NULL, NULL, NULL, 0),
(2, 'http://localhost/wordpress/hello-world/', '39:65f5b40e0ac877c5df4093300e0933ce', 1, 'post', 'post', 1, 0, NULL, NULL, 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', NULL, '65', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', '65', 'featured-image', '{\n    \"width\": 300,\n    \"height\": 630,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/banner.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/banner.png\",\n    \"size\": \"full\",\n    \"id\": 65,\n    \"alt\": \"\",\n    \"pixels\": 189000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 03:46:22', '2020-11-05 20:32:37', 1, NULL, NULL, NULL, NULL, 0),
(3, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, NULL, '2020-11-02 03:49:45', '2020-11-06 04:40:24', 1, NULL, NULL, NULL, NULL, 0),
(4, 'http://localhost/wordpress/product-category/dien-thoai/', '55:92c4410f2753b450901d422583a6ebdd', 17, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Điện Thoại', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 03:51:44', '2020-11-01 20:51:45', 1, NULL, NULL, NULL, NULL, 0),
(5, 'http://localhost/wordpress/product-category/laptop/', '51:a250f8e93e0591016840900d4bc36d93', 19, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Laptop', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 03:52:13', '2020-11-01 20:52:13', 1, NULL, NULL, NULL, NULL, 0),
(6, 'http://localhost/wordpress/product-category/may-tinh/', '53:3b03a8e6a52b26bd4c1eb7f6637ce882', 20, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Máy Tính', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 03:52:36', '2020-11-01 20:52:36', 1, NULL, NULL, NULL, NULL, 0),
(7, 'http://localhost/wordpress/product/__trashed/', '45:6351f509969bb0881473b0358f2527c4', 12, 'post', 'product', 1, 0, NULL, NULL, 'Điện thoại Apple iPhone 11 64G', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 03:52:44', '2020-11-01 21:08:53', 1, NULL, NULL, NULL, NULL, 0),
(8, 'http://localhost/wordpress/product/dien-thoai-di-dong-iphone-11-64gb-green/', '75:21f4a91d84ca91b7fc367adf08e78875', 13, 'post', 'product', 1, 0, NULL, NULL, 'Điện Thoại Di Động iPhone 11 64GB Green', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp.png', NULL, '55', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp.png', '55', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 460,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/sp.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/sp.png\",\n    \"size\": \"full\",\n    \"id\": 55,\n    \"alt\": \"\",\n    \"pixels\": 184000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 03:55:19', '2020-11-02 21:34:21', 1, NULL, NULL, NULL, NULL, 0),
(9, NULL, NULL, 14, 'post', 'attachment', 1, 13, NULL, NULL, 'iphone-11-green-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-green-1.png', NULL, '14', 'attachment-image', NULL, NULL, NULL, '14', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:00:38', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(10, 'http://localhost/wordpress/product-tag/iphone/', '46:405eb2769ef17effcc5d7ad526c2162d', 21, 'term', 'product_tag', NULL, NULL, NULL, NULL, 'iphone', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 04:01:06', '2020-11-01 21:01:06', 1, NULL, NULL, NULL, NULL, 0),
(11, 'http://localhost/wordpress/product/eliteone-800-g5-8ga59p/', '58:290ff014b269a7bc95956d72296b265e', 15, 'post', 'product', 1, 0, NULL, NULL, 'EliteOne 800 G5 8GA59P', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg', NULL, '16', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg', '16', 'featured-image', '{\n    \"width\": 600,\n    \"height\": 399,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg\",\n    \"size\": \"full\",\n    \"id\": 16,\n    \"alt\": \"\",\n    \"pixels\": 239400,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-02 04:01:48', '2020-11-04 20:40:15', 1, NULL, NULL, NULL, NULL, 0),
(12, NULL, NULL, 16, 'post', 'attachment', 1, 15, NULL, NULL, 'PC-HP-AIO-EliteOne-800-G5-2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/PC-HP-AIO-EliteOne-800-G5-2.jpg', NULL, '16', 'attachment-image', NULL, NULL, NULL, '16', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:04:19', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(13, 'http://localhost/wordpress/product-tag/pc/', '42:5bad0bc54daba18f36a5d0aef62b5abc', 22, 'term', 'product_tag', NULL, NULL, NULL, NULL, 'pc', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 04:04:39', '2020-11-01 21:04:39', 1, NULL, NULL, NULL, NULL, 0),
(14, 'http://localhost/wordpress/product/laptop-apple-macbook-air-13-2019-mvfn2sa-a-core-i5-8gb-256gb-ssd-uhd-617-macos-1-3-kg/', '121:7e34faff67c89afade41b06e4c938b73', 17, 'post', 'product', 1, 0, NULL, NULL, 'Laptop Apple MacBook Air 13&#8243; 2019 MVFN2SA/A (Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg', NULL, '20', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg', '20', 'featured-image', '{\n    \"width\": 700,\n    \"height\": 444,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg\",\n    \"size\": \"full\",\n    \"id\": 20,\n    \"alt\": \"\",\n    \"pixels\": 310800,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-02 04:04:59', '2020-11-04 20:38:57', 1, NULL, NULL, NULL, NULL, 0),
(15, NULL, NULL, 18, 'post', 'attachment', 1, 17, NULL, NULL, 'Macbook-Air-13-2019-Gold', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gold.jpg', NULL, '18', 'attachment-image', NULL, NULL, NULL, '18', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:06:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(16, NULL, NULL, 19, 'post', 'attachment', 1, 17, NULL, NULL, 'Macbook-Air-13-2019-Gold', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gold-1.jpg', NULL, '19', 'attachment-image', NULL, NULL, NULL, '19', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:07:24', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(17, NULL, NULL, 20, 'post', 'attachment', 1, 17, NULL, NULL, 'Macbook-Air-13-2019-Gray-4', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-4.jpg', NULL, '20', 'attachment-image', NULL, NULL, NULL, '20', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:07:27', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(18, NULL, NULL, 21, 'post', 'attachment', 1, 17, NULL, NULL, 'Macbook-Air-13-2019-Gray-3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/Macbook-Air-13-2019-Gray-3.jpg', NULL, '21', 'attachment-image', NULL, NULL, NULL, '21', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 04:07:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(19, 'http://localhost/wordpress/product-tag/mac/', '43:87d01b3811be495f12929879f6b7d069', 23, 'term', 'product_tag', NULL, NULL, NULL, NULL, 'mac', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 04:07:58', '2020-11-01 21:07:58', 1, NULL, NULL, NULL, NULL, 0),
(20, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 04:59:11', '2020-11-01 21:59:11', 1, NULL, NULL, NULL, NULL, 0),
(21, NULL, NULL, 8, 'post', 'page', 1, 0, NULL, NULL, 'Cart', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:31', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(22, NULL, NULL, 22, 'post', 'page', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:31', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(23, NULL, NULL, 9, 'post', 'page', 1, 0, NULL, NULL, 'Checkout', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(24, NULL, NULL, 23, 'post', 'page', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(25, NULL, NULL, 10, 'post', 'page', 1, 0, NULL, NULL, 'My account', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(26, NULL, NULL, 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:33', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(27, NULL, NULL, 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-11-02 07:40:33', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(28, 'http://localhost/wordpress/shop/', '32:fac8ab8e5450faa99127a78df553f19d', 7, 'post', 'page', 1, 0, NULL, NULL, 'Shop', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:34', '2020-11-05 20:34:50', 1, NULL, NULL, NULL, NULL, 0),
(29, NULL, NULL, 24, 'post', 'page', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:40:34', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(30, 'http://localhost/wordpress/lien-he/', '35:9539e7017804947f332b114307e3051c', 25, 'post', 'page', 1, 0, NULL, NULL, 'Liên hệ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:41:05', '2020-11-05 20:35:07', 1, NULL, NULL, NULL, NULL, 0),
(31, 'http://localhost/wordpress/2020/11/02/27/', '41:9ca3644ff77ff6f13a5fae5a94cb1c96', 27, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:44:44', '2020-11-02 00:44:59', 1, NULL, NULL, NULL, NULL, 0),
(32, 'http://localhost/wordpress/2020/11/02/28/', '41:174affe45384641841163825afdaa0f5', 28, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:44:45', '2020-11-02 00:44:59', 1, NULL, NULL, NULL, NULL, 0),
(33, 'http://localhost/wordpress/2020/11/02/29/', '41:c399eabda620f173ade499d57ea36fcc', 29, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:44:46', '2020-11-02 00:45:00', 1, NULL, NULL, NULL, NULL, 0),
(34, 'http://localhost/wordpress/2020/11/02/30/', '41:f209ffa33475966d5c1b0e49a9359450', 30, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:44:47', '2020-11-02 00:45:00', 1, NULL, NULL, NULL, NULL, 0),
(35, 'http://localhost/wordpress/gioi-thieu/', '38:ef9d6bc4c630c95ac19a096534dc4153', 31, 'post', 'page', 1, 0, NULL, NULL, 'Giới thiệu', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:56:47', '2020-11-05 20:31:31', 1, NULL, NULL, NULL, NULL, 0),
(36, NULL, NULL, 33, 'post', 'page', 1, 0, NULL, NULL, 'Tin tức', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:59:17', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(37, NULL, NULL, 35, 'post', 'page', 1, 0, NULL, NULL, 'Trang chủ', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 07:59:31', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(38, 'http://localhost/wordpress/2020/11/02/37/', '41:b06f4a44dfd34b7d3946fc41ed583a1e', 37, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:01:02', '2020-11-02 01:23:36', 1, NULL, NULL, NULL, NULL, 0),
(39, 'http://localhost/wordpress/2020/11/02/38/', '41:84607eca557abdb7b65690994a5a466f', 38, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:01:03', '2020-11-02 01:23:37', 1, NULL, NULL, NULL, NULL, 0),
(40, 'http://localhost/wordpress/2020/11/02/39/', '41:b8d9d95c996abc2d23f55b61f9a6bcd5', 39, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Cửa hàng', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:01:04', '2020-11-02 01:23:37', 1, NULL, NULL, NULL, NULL, 0),
(41, 'http://localhost/wordpress/2020/11/02/home/', '43:c1a67d7a8f88dcd5cf665814d4223c83', 40, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Trang chủ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:01:12', '2020-11-02 01:23:36', 1, NULL, NULL, NULL, NULL, 0),
(42, 'http://localhost/wordpress/category/tin-tuc/', '44:bfdaad386cfd8642f8b6b84173a72410', 26, 'term', 'category', NULL, NULL, NULL, NULL, 'Tin tức', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:02:22', '2020-11-05 20:35:11', 1, NULL, NULL, NULL, NULL, 0),
(43, 'http://localhost/wordpress/2020/11/02/41/', '41:6a166a50ca0b3be2a97ee8ef416eb523', 41, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:02:43', '2020-11-02 01:23:38', 1, NULL, NULL, NULL, NULL, 0),
(44, 'http://localhost/wordpress/product-category/dien-thoai/iphone/', '62:a565c141c686616e6af72e24806f3300', 27, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'iphone', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:10:34', '2020-11-04 09:03:56', 1, NULL, NULL, NULL, NULL, 1),
(45, 'http://localhost/wordpress/product-category/dien-thoai/htc/', '59:4e54996fbdb7da45793c38eaf050c350', 28, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'htc', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:10:53', '2020-11-04 08:31:53', 1, NULL, NULL, NULL, NULL, 1),
(46, 'http://localhost/wordpress/product-category/dien-thoai/vinsmart/', '64:948026814e60983e435a9a1617e76cbb', 29, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'vinsmart', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:11:11', '2020-11-02 01:18:44', 1, NULL, NULL, NULL, NULL, 1),
(47, 'http://localhost/wordpress/product-category/dien-thoai/vertu/', '61:f484890958515e28557ac7114079e43e', 30, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'vertu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:11:30', '2020-11-02 01:17:36', 1, NULL, NULL, NULL, NULL, 1),
(48, 'http://localhost/wordpress/product-category/may-tinh/apple/', '59:5a2048899a661fab3d82448b044b9f2b', 31, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Apple', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:11:58', '2020-11-02 01:14:07', 1, NULL, NULL, NULL, NULL, 1),
(49, 'http://localhost/wordpress/product-category/may-tinh/dell/', '58:19c29a8eb0f2899fc9d38de19c24b0f4', 32, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'dell', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:12:08', '2020-11-02 01:16:21', 1, NULL, NULL, NULL, NULL, 1),
(50, 'http://localhost/wordpress/product-category/may-tinh/asus/', '58:6432c332b1d4560560fa27cc361ade2a', 33, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'asus', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:12:23', '2020-11-02 01:14:42', 1, NULL, NULL, NULL, NULL, 1),
(51, 'http://localhost/wordpress/?post_type=product&p=42', '50:e7cfc5ea938ea20291c4655e70ae81fa', 42, 'post', 'product', 1, 0, NULL, NULL, 'AUTO-DRAFT', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:19:07', '2020-11-02 01:19:07', 1, NULL, NULL, NULL, NULL, 0),
(52, 'http://localhost/wordpress/product-category/laptop/gameming/', '60:37af830e51a91a4b3e9999aa93013ea9', 34, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Game ming', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:19:52', '2020-11-02 01:19:52', 1, NULL, NULL, NULL, NULL, 1),
(53, 'http://localhost/wordpress/2020/11/02/43/', '41:92c4f4b9dd146b440eeebb640d11930c', 43, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:22:01', '2020-11-02 01:23:37', 1, NULL, NULL, NULL, NULL, 0),
(54, 'http://localhost/wordpress/2020/11/02/44/', '41:0e61033fe22c78d08f53cce122edfc2d', 44, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:22:02', '2020-11-02 01:23:37', 1, NULL, NULL, NULL, NULL, 0),
(55, 'http://localhost/wordpress/2020/11/02/45/', '41:d57be6d86abf6ae57a27d984417c09af', 45, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:22:05', '2020-11-02 01:23:37', 1, NULL, NULL, NULL, NULL, 0),
(56, NULL, NULL, 5, 'post', 'attachment', 1, 0, NULL, NULL, 'woocommerce-placeholder', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png', NULL, '5', 'attachment-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png', '5', 'attachment-image', '{\n    \"width\": 1200,\n    \"height\": 1200,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/woocommerce-placeholder.png\",\n    \"size\": \"full\",\n    \"id\": 5,\n    \"alt\": \"\",\n    \"pixels\": 1440000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 08:37:50', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(57, NULL, NULL, 6, 'post', 'attachment', 1, 0, NULL, NULL, 'woocommerce-placeholder', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png', NULL, '6', 'attachment-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png', '6', 'attachment-image', '{\n    \"width\": 1200,\n    \"height\": 1200,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/woocommerce-placeholder.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/woocommerce-placeholder.png\",\n    \"size\": \"full\",\n    \"id\": 6,\n    \"alt\": \"\",\n    \"pixels\": 1440000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 08:37:50', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(59, NULL, NULL, 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 08:37:51', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(60, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 08:37:51', '2020-11-02 01:37:51', 1, NULL, NULL, NULL, NULL, 0),
(61, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 08:37:51', '2020-11-02 01:37:51', 1, NULL, NULL, NULL, NULL, 0),
(62, 'http://localhost/wordpress/shop/', '32:fac8ab8e5450faa99127a78df553f19d', NULL, 'post-type-archive', 'product', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Products', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 08:37:51', '2020-11-04 21:12:59', 1, NULL, NULL, NULL, NULL, 0),
(63, NULL, NULL, 46, 'post', 'slider', 1, 0, NULL, NULL, '02', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner-01.png', NULL, '48', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner-01.png', '48', 'featured-image', '{\n    \"width\": 800,\n    \"height\": 300,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/banner-01.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/banner-01.png\",\n    \"size\": \"full\",\n    \"id\": 48,\n    \"alt\": \"\",\n    \"pixels\": 240000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 08:45:36', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(64, NULL, NULL, 47, 'post', 'attachment', 1, 46, NULL, NULL, 'baner-02', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/baner-02.png', NULL, '47', 'attachment-image', NULL, NULL, NULL, '47', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 08:46:05', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(65, NULL, NULL, 48, 'post', 'attachment', 1, 46, NULL, NULL, 'banner-01', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner-01.png', NULL, '48', 'attachment-image', NULL, NULL, NULL, '48', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-02 08:46:15', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(66, NULL, NULL, 49, 'post', 'slider', 1, 0, NULL, NULL, '01', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/baner-02.png', NULL, '47', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/baner-02.png', '47', 'featured-image', '{\n    \"width\": 800,\n    \"height\": 300,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/baner-02.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/baner-02.png\",\n    \"size\": \"full\",\n    \"id\": 47,\n    \"alt\": \"\",\n    \"pixels\": 240000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-02 08:46:40', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(67, 'http://localhost/wordpress/2020/11/02/chinh-sach-bao-mat/', '57:2c8c17d1915698a7f5fa8becd3524aa2', 50, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'sách bảo mật', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 09:34:11', '2020-11-02 03:07:13', 1, NULL, NULL, NULL, NULL, 0),
(68, 'http://localhost/wordpress/2020/11/02/chinh-sach-doi-tra/', '57:62e3457390000750441968dbb0e8cd02', 51, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'sách đổi trả', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 09:34:33', '2020-11-02 03:07:13', 1, NULL, NULL, NULL, NULL, 0),
(69, 'http://localhost/wordpress/2020/11/02/phi-van-chuyen/', '53:91dfac7435a317981c65f2b33ce5f627', 52, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'vẫn chuyển', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 09:34:48', '2020-11-02 03:07:13', 1, NULL, NULL, NULL, NULL, 0),
(70, 'http://localhost/wordpress/2020/11/02/huong-dan-thanh-toan/', '59:43535bb88a4dab8be532ae832a0f2efd', 53, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'dẫn thanh toán', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 09:35:00', '2020-11-02 03:07:13', 1, NULL, NULL, NULL, NULL, 0),
(71, 'http://localhost/wordpress/2020/11/02/chuong-trinh-khuyen-mai/', '62:58a4e9e212dbaa9be4c06d3c91caf73c', 54, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'trình khuyến mãi', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-02 09:35:22', '2020-11-02 03:07:14', 1, NULL, NULL, NULL, NULL, 0),
(72, NULL, NULL, 55, 'post', 'attachment', 1, 15, NULL, NULL, 'sp', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp.png', NULL, '55', 'attachment-image', NULL, NULL, NULL, '55', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-03 02:59:09', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(73, NULL, NULL, 56, 'post', 'attachment', 1, 15, NULL, NULL, 'sp2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/sp2.png', NULL, '56', 'attachment-image', NULL, NULL, NULL, '56', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-03 02:59:14', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(74, 'http://localhost/wordpress/thuong-hieu-dong-ho-thong-minh-sinophy-cua-nuoc-nao/', '79:60c444aa9fa4ec295e5b39ddb1498baa', 57, 'post', 'post', 1, 0, NULL, NULL, 'Thương hiệu đồng hồ thông minh Sinophy của nước nào?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/news.jpg', NULL, '58', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/news.jpg', '58', 'featured-image', '{\n    \"width\": 800,\n    \"height\": 546,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/news.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/news.jpg\",\n    \"size\": \"full\",\n    \"id\": 58,\n    \"alt\": \"\",\n    \"pixels\": 436800,\n    \"type\": \"image/jpeg\"\n}', 1, NULL, NULL, '2020-11-04 16:39:48', '2020-11-05 20:32:37', 1, NULL, NULL, NULL, NULL, 0),
(75, NULL, NULL, 58, 'post', 'attachment', 1, 57, NULL, NULL, 'news', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/news.jpg', NULL, '58', 'attachment-image', NULL, NULL, NULL, '58', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-04 16:41:48', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(76, 'http://localhost/wordpress/thuong-hieu-dong-ho-thong-minh-sinophy-cua-nuoc-nao-2/', '81:f4083ce62577263728ceca251d779230', 61, 'post', 'post', 1, 0, NULL, NULL, 'đồng hồ thông minh Sinophy của nước nào?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg', NULL, '104', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg', '104', 'featured-image', '{\n    \"width\": 300,\n    \"height\": 132,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 104,\n    \"alt\": \"\",\n    \"pixels\": 39600,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-04 16:42:15', '2020-11-05 21:41:55', 1, NULL, NULL, NULL, NULL, 0),
(77, NULL, NULL, 64, 'post', 'bannerqc', 1, 0, NULL, NULL, 'Banner Q/c1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', NULL, '65', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', '65', 'featured-image', '{\n    \"width\": 300,\n    \"height\": 630,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/banner.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/banner.png\",\n    \"size\": \"full\",\n    \"id\": 65,\n    \"alt\": \"\",\n    \"pixels\": 189000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-05 01:47:14', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(78, NULL, NULL, 65, 'post', 'attachment', 1, 64, NULL, NULL, 'banner', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/banner.png', NULL, '65', 'attachment-image', NULL, NULL, NULL, '65', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 01:49:22', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(79, 'http://localhost/wordpress/?post_type=acf-field-group&p=66', '58:1264de694e1cccb89a597d17ef062f6a', 66, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 01:50:39', '2020-11-04 18:50:40', 1, NULL, NULL, NULL, NULL, 0),
(80, 'http://localhost/wordpress/?post_type=acf-field-group&p=67', '58:27ac0709743ae323ddc8f17438f2123d', 67, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 01:50:40', '2020-11-04 18:50:40', 1, NULL, NULL, NULL, NULL, 0),
(81, 'http://localhost/wordpress/?post_type=acf-field-group&p=68', '58:d5e178d77c9e7affb9a2f95c7288d351', 68, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'link_q/c', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 01:50:42', '2020-11-04 18:52:35', 1, NULL, NULL, NULL, NULL, 0),
(82, 'http://localhost/wordpress/?post_type=acf-field&p=69', '52:311e3258d56f385277c654ee12516355', 69, 'post', 'acf-field', 1, 68, NULL, NULL, 'link q/c', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 01:52:30', '2020-11-04 18:52:31', 1, NULL, NULL, NULL, NULL, 0),
(83, 'http://localhost/wordpress/?post_type=acf-field-group&p=70', '58:8d4972b5da380ca6f105bdad66b33841', 70, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'add_qc', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 02:21:21', '2020-11-04 19:38:49', 1, NULL, NULL, NULL, NULL, 0),
(84, 'http://localhost/wordpress/?post_type=acf-field&p=71', '52:63ef1fc79e722274b16d0ca74504939d', 71, 'post', 'acf-field', 1, 70, NULL, NULL, 'add_qc', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 02:22:41', '2020-11-04 19:38:48', 1, NULL, NULL, NULL, NULL, 0),
(85, NULL, NULL, 72, 'post', 'banner', 1, 0, NULL, NULL, 'FB', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1.png', NULL, '76', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1.png', '76', 'featured-image', '{\n    \"width\": 1843,\n    \"height\": 238,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/huykira-1.png\",\n    \"size\": \"full\",\n    \"id\": 76,\n    \"alt\": \"\",\n    \"pixels\": 438634,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-05 02:23:16', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(86, NULL, NULL, 73, 'post', 'attachment', 1, 72, NULL, NULL, '122445757_3587850704608758_7473537705871244182_o', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/122445757_3587850704608758_7473537705871244182_o.jpg', NULL, '73', 'attachment-image', NULL, NULL, NULL, '73', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 02:39:12', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(87, NULL, NULL, 74, 'post', 'attachment', 1, 72, NULL, NULL, 'huykira', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira.png', NULL, '74', 'attachment-image', NULL, NULL, NULL, '74', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 02:39:24', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(88, NULL, NULL, 75, 'post', 'banner', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 02:39:37', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(89, NULL, NULL, 76, 'post', 'attachment', 1, 72, NULL, NULL, 'huykira (1)', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1.png', NULL, '76', 'attachment-image', NULL, NULL, NULL, '76', 'attachment-image', NULL, 0, 1, NULL, '2020-11-05 02:51:03', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(90, 'http://localhost/wordpress/product/iphone-12-pro-max-128gb/', '59:7fca7521cab6b9f32400c2f294f2c247', 79, 'post', 'product', 1, 0, NULL, NULL, 'iPhone 12 Pro Max 128GB', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', NULL, '80', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', '80', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 400,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 80,\n    \"alt\": \"\",\n    \"pixels\": 160000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 03:47:09', '2020-11-04 20:49:06', 1, NULL, NULL, NULL, NULL, 0),
(91, NULL, NULL, 80, 'post', 'attachment', 1, 79, NULL, NULL, 'iphone-11-pro-max-green-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', NULL, '80', 'attachment-image', NULL, NULL, NULL, '80', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 03:48:43', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(92, 'http://localhost/wordpress/product/dien-thoai-iphone-11-pro-max-64gb/', '69:535e99410e22690516f44a76303040a8', 81, 'post', 'product', 1, 0, NULL, NULL, 'Điện thoại iPhone 11 Pro Max 64GB', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg', NULL, '82', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg', '82', 'featured-image', '{\n    \"width\": 200,\n    \"height\": 200,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 82,\n    \"alt\": \"\",\n    \"pixels\": 40000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 03:49:37', '2020-11-04 20:51:05', 1, NULL, NULL, NULL, NULL, 0),
(93, NULL, NULL, 82, 'post', 'attachment', 1, 81, NULL, NULL, 'iphone-11-red-fix-200&#215;200', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-red-fix-200x200-1.jpg', NULL, '82', 'attachment-image', NULL, NULL, NULL, '82', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 03:50:32', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(94, NULL, NULL, 83, 'post', 'attachment', 1, 81, NULL, NULL, 'iphone-12-pro-max-195420-015420-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-12-pro-max-195420-015420-400x400-1.jpg', NULL, '83', 'attachment-image', NULL, NULL, NULL, '83', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 03:50:34', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(95, NULL, NULL, 84, 'post', 'attachment', 1, 81, NULL, NULL, 'samsung-galaxy-note-10-plus-den-400&#215;460-400&#215;460', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png', NULL, '84', 'attachment-image', NULL, NULL, NULL, '84', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 03:50:37', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 1),
(96, 'http://localhost/wordpress/product/dien-thoai-iphone-11/', '56:1d778e6b9171f1c595633c5d3e60f346', 86, 'post', 'product', 1, 0, NULL, NULL, 'Điện thoại iPhone 11', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', NULL, '80', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg', '80', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 400,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/iphone-11-pro-max-green-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 80,\n    \"alt\": \"\",\n    \"pixels\": 160000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 03:51:18', '2020-11-04 20:52:51', 1, NULL, NULL, NULL, NULL, 0),
(97, 'http://localhost/wordpress/product/samsung-galaxy-note-10/', '58:de5c0f3b545906c14b1fd313968c6c1c', 87, 'post', 'product', 1, 0, NULL, NULL, 'Samsung Galaxy Note 10+', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png', NULL, '84', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png', '84', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 460,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/samsung-galaxy-note-10-plus-den-400x460-400x460-1.png\",\n    \"size\": \"full\",\n    \"id\": 84,\n    \"alt\": \"\",\n    \"pixels\": 184000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2020-11-05 03:53:07', '2020-11-04 20:54:36', 1, NULL, NULL, NULL, NULL, 0),
(98, 'http://localhost/wordpress/product-category/laptop/macbook/', '59:f7a16e5bb8886f802dc045fdef39c407', 36, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'macbook', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 03:57:12', '2020-11-04 20:57:12', 1, NULL, NULL, NULL, NULL, 1),
(99, 'http://localhost/wordpress/product-category/laptop/lenovo/', '58:2f78d2c24f3bfbc1df54a894affec355', 37, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'lenovo', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 03:57:33', '2020-11-04 20:57:33', 1, NULL, NULL, NULL, NULL, 1),
(100, 'http://localhost/wordpress/product-category/laptop/sony-vivo/', '61:02a1ab28fc97db75111ddfb7b35a1211', 38, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'sony vivo', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 03:58:21', '2020-11-04 20:58:21', 1, NULL, NULL, NULL, NULL, 1),
(101, 'http://localhost/wordpress/?post_type=product&p=88', '50:d52930010994f8537da7e3a206bb65db', 88, 'post', 'product', 1, 0, NULL, NULL, 'AUTO-DRAFT', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 04:01:49', '2020-11-04 21:01:49', 1, NULL, NULL, NULL, NULL, 0),
(102, 'http://localhost/wordpress/?post_type=product&p=89', '50:b47cd029ba3e69769a43a9999a67c2c3', 89, 'post', 'product', 1, 0, NULL, NULL, 'AUTO-DRAFT', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 04:01:51', '2020-11-04 21:01:52', 1, NULL, NULL, NULL, NULL, 0),
(103, 'http://localhost/wordpress/?post_type=product&p=90', '50:1a3787e350f978df20f49041acb31cc4', 90, 'post', 'product', 1, 0, NULL, NULL, 'AUTO-DRAFT', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 04:01:53', '2020-11-04 21:01:53', 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tbl_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(104, 'http://localhost/wordpress/product/laptop-hp-pavilion-15/', '57:c3a084039a823a63cedaab481776a65d', 91, 'post', 'product', 1, 0, NULL, NULL, 'Laptop HP Pavilion 15', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg', NULL, '96', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg', '96', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 267,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 96,\n    \"alt\": \"\",\n    \"pixels\": 106800,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 04:01:53', '2020-11-04 21:04:14', 1, NULL, NULL, NULL, NULL, 0),
(105, NULL, NULL, 92, 'post', 'attachment', 1, 91, NULL, NULL, 'asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600&#215;600', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg', NULL, '92', 'attachment-image', NULL, NULL, NULL, '92', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 04:03:38', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(106, NULL, NULL, 93, 'post', 'attachment', 1, 91, NULL, NULL, 'asus-vivobook-x509ma-n5030-ej256t-171120-051158-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg', NULL, '93', 'attachment-image', NULL, NULL, NULL, '93', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 04:03:42', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(107, NULL, NULL, 94, 'post', 'attachment', 1, 91, NULL, NULL, 'dell-inspiron-3493-i5-n4i5122w-222088-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg', NULL, '94', 'attachment-image', NULL, NULL, NULL, '94', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 04:03:46', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(108, NULL, NULL, 95, 'post', 'attachment', 1, 91, NULL, NULL, 'hp-15s-fq1105tu-i5-193p7pa-223682-1-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg', NULL, '95', 'attachment-image', NULL, NULL, NULL, '95', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 04:03:50', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(109, NULL, NULL, 96, 'post', 'attachment', 1, 91, NULL, NULL, 'hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400&#215;400', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-pavilion-15-cs3010tu-i3-8qn78pa-220955-1-400x400-1.jpg', NULL, '96', 'attachment-image', NULL, NULL, NULL, '96', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 04:03:55', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(110, 'http://localhost/wordpress/product-tag/12/', '42:0232d045d9a5eb9bde5cf2d9ab30586f', 39, 'term', 'product_tag', NULL, NULL, NULL, NULL, '12', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 04:04:12', '2020-11-04 21:04:12', 1, NULL, NULL, NULL, NULL, 0),
(111, 'http://localhost/wordpress/product/lenovo-ideapad-s340-14iil-i5-1035g1/', '71:a1f9961ecb45e15f8cdf9641f76efc08', 97, 'post', 'product', 1, 0, NULL, NULL, 'Lenovo IdeaPad S340 14IIL i5 1035G1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg', NULL, '95', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg', '95', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 267,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/hp-15s-fq1105tu-i5-193p7pa-223682-1-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 95,\n    \"alt\": \"\",\n    \"pixels\": 106800,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 04:04:41', '2020-11-04 21:07:54', 1, NULL, NULL, NULL, NULL, 0),
(112, 'http://localhost/wordpress/?post_type=product&p=98', '50:a9c2d9ea1cc16f78c7d25bbeda8a9228', 98, 'post', 'product', 1, 0, NULL, NULL, 'AUTO-DRAFT', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 04:08:22', '2020-11-04 21:08:23', 1, NULL, NULL, NULL, NULL, 0),
(113, 'http://localhost/wordpress/product/laptop-gaming/', '49:aa5a1489d1c7d7533f3fcbee1f792c8d', 99, 'post', 'product', 1, 0, NULL, NULL, 'Laptop Gaming', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg', NULL, '94', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg', '94', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 267,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/dell-inspiron-3493-i5-n4i5122w-222088-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 94,\n    \"alt\": \"\",\n    \"pixels\": 106800,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 04:08:23', '2020-11-04 21:09:15', 1, NULL, NULL, NULL, NULL, 0),
(114, 'http://localhost/wordpress/product/laptop-sony/', '47:f138761fbc94d4852afb0bd1d011259a', 100, 'post', 'product', 1, 0, NULL, NULL, 'Laptop sony', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg', NULL, '93', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg', '93', 'featured-image', '{\n    \"width\": 400,\n    \"height\": 267,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 93,\n    \"alt\": \"\",\n    \"pixels\": 106800,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 04:09:55', '2020-11-04 21:10:36', 1, NULL, NULL, NULL, NULL, 0),
(115, 'http://localhost/wordpress/product/game-ming-360-14-dw0060tu/', '61:52a6a73511218cce8925cb1e3c8f1c2c', 101, 'post', 'product', 1, 0, NULL, NULL, 'Game ming 360 14 dw0060TU', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg', NULL, '92', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg', '92', 'featured-image', '{\n    \"width\": 600,\n    \"height\": 400,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress/wp-content/uploads/2020/11/asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 92,\n    \"alt\": \"\",\n    \"pixels\": 240000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2020-11-05 04:11:21', '2020-11-04 21:12:59', 1, NULL, NULL, NULL, NULL, 0),
(116, NULL, NULL, 103, 'post', 'attachment', 1, 0, NULL, NULL, 'logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/logo.png', NULL, '103', 'attachment-image', NULL, NULL, NULL, '103', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-05 08:01:52', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(117, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=11', '61:689ddfd437b675a8783c2a2a1ef25bcb', 11, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Contact form 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-05 08:15:06', '2020-11-05 01:44:44', 1, NULL, NULL, NULL, NULL, 0),
(118, NULL, NULL, 104, 'post', 'attachment', 1, 61, NULL, NULL, 'blog-post-01-300&#215;132', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/blog-post-01-300x132-1.jpg', NULL, '104', 'attachment-image', NULL, NULL, NULL, '104', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-06 03:26:17', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(119, NULL, NULL, 105, 'post', 'attachment', 1, 61, NULL, NULL, '1-300&#215;132', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/1-300x132-1.jpg', NULL, '105', 'attachment-image', NULL, NULL, NULL, '105', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-06 03:26:25', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0),
(120, NULL, NULL, 106, 'post', 'attachment', 1, 61, NULL, NULL, '2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2020/11/2.jpg', NULL, '106', 'attachment-image', NULL, NULL, NULL, '106', 'attachment-image', NULL, 0, NULL, NULL, '2020-11-06 03:26:30', '2020-11-06 03:31:29', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_yoast_indexable_hierarchy`
--

CREATE TABLE `tbl_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_yoast_indexable_hierarchy`
--

INSERT INTO `tbl_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(9, 8, 1, 1),
(12, 11, 1, 1),
(15, 14, 1, 1),
(16, 14, 1, 1),
(17, 14, 1, 1),
(18, 14, 1, 1),
(44, 4, 1, 1),
(45, 4, 1, 1),
(46, 4, 1, 1),
(47, 4, 1, 1),
(48, 6, 1, 1),
(49, 6, 1, 1),
(50, 6, 1, 1),
(52, 5, 1, 1),
(64, 63, 1, 1),
(65, 63, 1, 1),
(72, 11, 1, 1),
(73, 11, 1, 1),
(75, 74, 1, 1),
(78, 77, 1, 1),
(82, 81, 1, 1),
(84, 83, 1, 1),
(86, 85, 1, 1),
(87, 85, 1, 1),
(89, 85, 1, 1),
(91, 90, 1, 1),
(93, 92, 1, 1),
(94, 92, 1, 1),
(95, 92, 1, 1),
(98, 5, 1, 1),
(99, 5, 1, 1),
(100, 5, 1, 1),
(105, 104, 1, 1),
(106, 104, 1, 1),
(107, 104, 1, 1),
(108, 104, 1, 1),
(109, 104, 1, 1),
(118, 76, 1, 1),
(119, 76, 1, 1),
(120, 76, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_yoast_migrations`
--

CREATE TABLE `tbl_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_yoast_migrations`
--

INSERT INTO `tbl_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_yoast_primary_term`
--

CREATE TABLE `tbl_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_yoast_primary_term`
--

INSERT INTO `tbl_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 13, 17, 'product_cat', '2020-11-02 04:01:11', '2020-11-02 21:34:20', 1),
(2, 15, 20, 'product_cat', '2020-11-02 04:04:45', '2020-11-04 20:40:15', 1),
(3, 17, 19, 'product_cat', '2020-11-02 04:08:02', '2020-11-04 20:38:57', 1),
(4, 57, 26, 'category', '2020-11-04 16:42:06', '2020-11-04 09:42:06', 1),
(5, 61, 26, 'category', '2020-11-04 16:42:30', '2020-11-05 21:41:55', 1),
(6, 1, 1, 'category', '2020-11-04 16:47:09', '2020-11-04 21:17:31', 1),
(7, 79, 27, 'product_cat', '2020-11-05 03:49:06', '2020-11-04 20:49:06', 1),
(8, 81, 27, 'product_cat', '2020-11-05 03:51:03', '2020-11-04 20:51:03', 1),
(9, 86, 27, 'product_cat', '2020-11-05 03:52:35', '2020-11-04 20:52:51', 1),
(10, 87, 29, 'product_cat', '2020-11-05 03:54:01', '2020-11-04 20:54:35', 1),
(11, 91, 19, 'product_cat', '2020-11-05 04:03:05', '2020-11-04 21:04:14', 1),
(12, 97, 19, 'product_cat', '2020-11-05 04:06:05', '2020-11-04 21:07:54', 1),
(13, 99, 19, 'product_cat', '2020-11-05 04:09:15', '2020-11-04 21:09:15', 1),
(14, 100, 19, 'product_cat', '2020-11-05 04:10:35', '2020-11-04 21:10:35', 1),
(15, 101, 19, 'product_cat', '2020-11-05 04:12:58', '2020-11-04 21:12:59', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_yoast_seo_links`
--

CREATE TABLE `tbl_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_yoast_seo_links`
--

INSERT INTO `tbl_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(23, 'http://localhost/wordpress/wp-admin/', 2, NULL, 'internal', 27, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-1.png', 13, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-2-e1568350152776.png', 13, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-chip-a13.jpg', 13, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-3.jpg', 13, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/iphone-11-green-4.png', 13, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'http://localhost/wordpress/#', 57, NULL, 'internal', 74, 3, NULL, NULL, NULL, NULL, NULL),
(55, 'http://localhost/wordpress/wp-content/uploads/2020/11/huykira-1-300x39.png', 72, 76, 'image-in', 85, 89, 238, 1843, 39576, NULL, NULL),
(56, 'https://tmp.phongvu.vn/wp-content/uploads/2019/08/Macbook-Air-13-2019-Gold.jpg', 17, NULL, 'image-ex', 14, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'https://tmp.phongvu.vn/wp-content/uploads/2019/08/Macbook-Air-13-2019-Gray-1.jpg', 17, NULL, 'image-ex', 14, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-2.jpg', 15, NULL, 'image-ex', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-1.jpg', 15, NULL, 'image-ex', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5.jpg', 15, NULL, 'image-ex', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'https://tmp.phongvu.vn/wp-content/uploads/2019/09/PC-HP-AIO-EliteOne-800-G5-3-1.jpg', 15, NULL, 'image-ex', 11, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_actionscheduler_actions`
--
ALTER TABLE `tbl_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Chỉ mục cho bảng `tbl_actionscheduler_claims`
--
ALTER TABLE `tbl_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `tbl_actionscheduler_groups`
--
ALTER TABLE `tbl_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `tbl_actionscheduler_logs`
--
ALTER TABLE `tbl_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `tbl_commentmeta`
--
ALTER TABLE `tbl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `tbl_links`
--
ALTER TABLE `tbl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `tbl_postmeta`
--
ALTER TABLE `tbl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `tbl_termmeta`
--
ALTER TABLE `tbl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbl_terms`
--
ALTER TABLE `tbl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `tbl_term_relationships`
--
ALTER TABLE `tbl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `tbl_term_taxonomy`
--
ALTER TABLE `tbl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `tbl_usermeta`
--
ALTER TABLE `tbl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `tbl_wc_admin_notes`
--
ALTER TABLE `tbl_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `tbl_wc_admin_note_actions`
--
ALTER TABLE `tbl_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `tbl_wc_category_lookup`
--
ALTER TABLE `tbl_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Chỉ mục cho bảng `tbl_wc_customer_lookup`
--
ALTER TABLE `tbl_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `tbl_wc_order_coupon_lookup`
--
ALTER TABLE `tbl_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbl_wc_order_product_lookup`
--
ALTER TABLE `tbl_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbl_wc_order_stats`
--
ALTER TABLE `tbl_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Chỉ mục cho bảng `tbl_wc_order_tax_lookup`
--
ALTER TABLE `tbl_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbl_wc_product_meta_lookup`
--
ALTER TABLE `tbl_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `tbl_wc_reserved_stock`
--
ALTER TABLE `tbl_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `tbl_wc_tax_rate_classes`
--
ALTER TABLE `tbl_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `tbl_wc_webhooks`
--
ALTER TABLE `tbl_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_api_keys`
--
ALTER TABLE `tbl_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbl_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `tbl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbl_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_log`
--
ALTER TABLE `tbl_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_order_itemmeta`
--
ALTER TABLE `tbl_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `tbl_woocommerce_order_items`
--
ALTER TABLE `tbl_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbl_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `tbl_woocommerce_payment_tokens`
--
ALTER TABLE `tbl_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_sessions`
--
ALTER TABLE `tbl_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_shipping_zones`
--
ALTER TABLE `tbl_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `tbl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_tax_rates`
--
ALTER TABLE `tbl_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `tbl_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbl_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `tbl_wpsmtp_logs`
--
ALTER TABLE `tbl_wpsmtp_logs`
  ADD PRIMARY KEY (`mail_id`);

--
-- Chỉ mục cho bảng `tbl_yoast_indexable`
--
ALTER TABLE `tbl_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Chỉ mục cho bảng `tbl_yoast_indexable_hierarchy`
--
ALTER TABLE `tbl_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Chỉ mục cho bảng `tbl_yoast_migrations`
--
ALTER TABLE `tbl_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_yoast_migrations_version` (`version`);

--
-- Chỉ mục cho bảng `tbl_yoast_primary_term`
--
ALTER TABLE `tbl_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Chỉ mục cho bảng `tbl_yoast_seo_links`
--
ALTER TABLE `tbl_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_actionscheduler_actions`
--
ALTER TABLE `tbl_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_actionscheduler_claims`
--
ALTER TABLE `tbl_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT cho bảng `tbl_actionscheduler_groups`
--
ALTER TABLE `tbl_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_actionscheduler_logs`
--
ALTER TABLE `tbl_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_commentmeta`
--
ALTER TABLE `tbl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_links`
--
ALTER TABLE `tbl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1936;

--
-- AUTO_INCREMENT cho bảng `tbl_postmeta`
--
ALTER TABLE `tbl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `tbl_termmeta`
--
ALTER TABLE `tbl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_terms`
--
ALTER TABLE `tbl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_term_taxonomy`
--
ALTER TABLE `tbl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_usermeta`
--
ALTER TABLE `tbl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_admin_notes`
--
ALTER TABLE `tbl_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_admin_note_actions`
--
ALTER TABLE `tbl_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_customer_lookup`
--
ALTER TABLE `tbl_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_tax_rate_classes`
--
ALTER TABLE `tbl_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_wc_webhooks`
--
ALTER TABLE `tbl_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_api_keys`
--
ALTER TABLE `tbl_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbl_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbl_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_log`
--
ALTER TABLE `tbl_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_order_itemmeta`
--
ALTER TABLE `tbl_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_order_items`
--
ALTER TABLE `tbl_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbl_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_payment_tokens`
--
ALTER TABLE `tbl_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_sessions`
--
ALTER TABLE `tbl_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_shipping_zones`
--
ALTER TABLE `tbl_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbl_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_tax_rates`
--
ALTER TABLE `tbl_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbl_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_wpsmtp_logs`
--
ALTER TABLE `tbl_wpsmtp_logs`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_yoast_indexable`
--
ALTER TABLE `tbl_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `tbl_yoast_migrations`
--
ALTER TABLE `tbl_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_yoast_primary_term`
--
ALTER TABLE `tbl_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_yoast_seo_links`
--
ALTER TABLE `tbl_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_wc_download_log`
--
ALTER TABLE `tbl_wc_download_log`
  ADD CONSTRAINT `fk_tbl_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `tbl_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

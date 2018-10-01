-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2018 at 05:38 PM
-- Server version: 5.6.38
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Jolly-Fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-01 11:27:46', '2018-10-01 08:27:46', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://jolly-fashion', 'yes'),
(2, 'home', 'http://jolly-fashion', 'yes'),
(3, 'blogname', 'Jolly-Fashion', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'onceagain@ua.fm', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'jolly-fashion', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'r[A*eUX_v:8+S)~,GV,DU04;IDT619?p+C1P@}`k1Ty9[rpaB(}cxU0ZsRdX^PJ,', 'no'),
(110, 'nonce_salt', 'b0ANP1~D=-!mH_X}+b^5nonw&`5ckP7Sb8fM]BMQSR/875+7gaAI~@`oDuwxRaWh', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:11:{i:1538404066;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538404191;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538404262;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1538425666;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538427600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538468884;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538468991;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538469001;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538479791;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541462400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538386382;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'auth_key', 'bg*gX/h_G`rkW~&5f8f?g;RY~5QyD2!-r-2_A!{M~GTxHaVMtz=BZWo%+Umco]_[', 'no'),
(129, 'auth_salt', '^k?rnd[TpnlIt]r9@=hf1@l_K&BT@WIB}]&8[tvu{NYjd4Y;r|(^6W4gV`z0!9/>', 'no'),
(130, 'logged_in_key', 'g7G]QJg.tD^-m15H|A/t#)E3h]2&DC]dNh~X)beH!sSp8<%t{ylR %HTEb>9J6pa', 'no'),
(131, 'logged_in_salt', '6[x1@hy;%6|9RNkA&$?NsSX*CA%/sp;eNIDyMs.0go)|U|fV/)1NGU3T*X.J?8Me', 'no'),
(132, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1538987279', 'no'),
(133, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1538425681', 'no'),
(135, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(137, '_transient_timeout_feed_126d1ca39d75da07beec8b892738427b', '1538425681', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(138, '_transient_feed_126d1ca39d75da07beec8b892738427b', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Блог | Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ru.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Mon, 17 Sep 2018 19:43:11 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"ru-RU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43653\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"Электронная коммерция с WordPress, как создать интернет-магазин?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ru.wordpress.org/news/2018/09/meetup-moscow-1809/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 19:41:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=2048\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:583:\"Первый тематический митап про WooCommerce (и не только) состоится в Москве 20 сентября. Обсуждаем особенности создания интернет-магазинов на WordPress, плагины, темы, оптимизацию работы сайта. Приглашаем всех, кто интересуется электронной коммерцией, имеет опыт или планирует открыть свой интернет-магазин. Подробности по ссылке\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:692:\"<p>Первый тематический митап про WooCommerce (и не только) состоится в Москве 20 сентября. Обсуждаем особенности создания интернет-магазинов на WordPress, плагины, темы, оптимизацию работы сайта.</p>\n\n<p>Приглашаем всех, кто интересуется электронной коммерцией, имеет опыт или планирует открыть свой интернет-магазин.</p>\n\n<p><a href=\"https://www.meetup.com/ru-RU/Moscow-WordPress-Meetup/events/254204545/\">Подробности по ссылке</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n		\n				\n		\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Конференция WordCamp Москва 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://ru.wordpress.org/news/2018/07/wordcamp-moscow2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 17:06:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=2017\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:446:\"В этом году WordCamp Moscow впервые будет длиться два дня! Мероприятие пройдет 18 и 19 августа в центре Digital October! Посетите сайт конференции, чтобы ознакомиться с подробностями, стать спикером, спонсором или зарегистрироваться для участия в конференции!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:568:\"<p>В этом году WordCamp Moscow впервые будет длиться два дня! Мероприятие пройдет <strong>18 и 19 августа</strong> в центре Digital October!</p>\n<p><a href=\"https://2018.moscow.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Посетите сайт конференции</a>, чтобы ознакомиться с подробностями, стать спикером, спонсором или зарегистрироваться для участия в конференции!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n		\n				\n		\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Конференция WordCamp Санкт-Петербург 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 07:03:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1994\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:575:\"Конференция состоится 26 мая 2018 при поддержке компании SEMrush. Хотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress? Приходите, будет интересно! Полезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party. Подробности на сайте конференции.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:706:\"<p>Конференция состоится 26 мая 2018 при поддержке компании SEMrush.<br />\nХотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress?<br />\nПриходите, будет интересно!<br />\nПолезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party.<br />\nПодробности <a href=\"https://2018.saintpetersburg.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">на сайте конференции.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Выпуск WordPress 4.9.4 (требуется ручное обновление)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://ru.wordpress.org/news/2018/02/%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-wordpress-4-9-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:46:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:22:\"Исправления\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1886\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:661:\"Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в Консоль &#62; Обновления, либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно здесь. Детали ошибки [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:905:\"<p>Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в <em>Консоль &gt; Обновления, </em>либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно <a href=\"https://ru.wordpress.org/releases/\">здесь</a>.</p>\n<p>Детали ошибки <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\" target=\"_blank\" rel=\"noopener\">доступны</a> в блоге Make WordPress.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Всемирный день перевода WordPress 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2017/09/wp-translation-day-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Sep 2017 18:55:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1841\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Denis Yanchevskiy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4393:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><a href=\"https://wptranslationday.org/\"><img class=\"alignnone wp-image-1842 size-full\" src=\"https://ru.wordpress.org/files/2017/09/4by3.jpg\" alt=\"\" width=\"1024\" height=\"768\" srcset=\"https://ru.wordpress.org/files/2017/09/4by3.jpg 1024w, https://ru.wordpress.org/files/2017/09/4by3-300x225.jpg 300w, https://ru.wordpress.org/files/2017/09/4by3-768x576.jpg 768w, https://ru.wordpress.org/files/2017/09/4by3-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируется встреча в Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 30 сентября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd3/22\">https://www.crowdcast.io/e/gwtd3/22</a>, начало в 20:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#primary\">https://wptranslationday.org/#primary</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://ru.wordpress.org/support/topic/%D0%BA%D0%B0%D0%BA-%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%B5%D1%81%D1%82%D0%B8-%D1%82%D0%B5%D0%BC%D1%83-%D0%B8%D0%BB%D0%B8-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD/\">Как перевести тему или плагин?</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://translate.wordpress.org/locale/ru/default/glossary\">Словарь терминов</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Всемирный день перевода WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ru.wordpress.org/news/2016/11/wp-translation-day/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Nov 2016 16:35:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1751\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4653:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><img class=\"alignnone wp-image-1764 size-large\" src=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg\" width=\"692\" height=\"391\" srcset=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg 1024w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-300x170.jpg 300w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-768x434.jpg 768w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируются встречи в Москве и Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 12 ноября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li><a href=\"https://wpmag.ru/2016/global-translation-day-moscow/\">Москва</a>: метро Краснопресненская, БЦ «Трехгорная мануфактура», ул. Рочдельская, д. 15 стр. 10, 2 этаж (офис компании Setka). Начало в 12:00.</li>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd2/14\">https://www.crowdcast.io/e/gwtd2/14</a>, начало в 16:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#schedule\">https://wptranslationday.org/#schedule</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D0.BB.D0.BE.D0.B2.D0.B0.D1.80.D1.8C_.D1.82.D0.B5.D1.80.D0.BC.D0.B8.D0.BD.D0.BE.D0.B2\">Словарь терминов</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Moscow 2016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2016/07/wordcamp-moscow-2016/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 14:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1722\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2961:\"<p>13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.</p>\n<p><img src=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg\" alt=\"Николай Миронов на WordCamp Russia 2015\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1724\" srcset=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg 1024w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-300x200.jpg 300w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-768x513.jpg 768w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Cписок докладов находится на стадии утверждения, но некоторые темы уже определены:</p>\n<ul>\n<li>Как заказать разработку сайта у специалиста и остаться довольным</li>\n<li>Как работает искусственный интеллект в поисковых системах</li>\n<li>Откуда брать идеи для написания постов, плагинов и тем</li>\n<li>Как опубликовать свою тему в директорию на WordPress.org</li>\n<li>Чем может быть полезен стек Elasticsearch, Logstash и Kibana</li>\n<li>Как держать потребление памяти в WordPress под контролем</li>\n<li>Что такое A/B тестирование и как его проводить в WordPress</li>\n<li>и многое другое</li>\n</ul>\n<p>В перерывах между докладами можно будет пообщаться с коллегами, задать вопросы опытным специалистам и поделиться своими идеями.</p>\n<p>Приобрести билет можно на <a href=\"https://2016.moscow.wordcamp.org/tickets/\">сайте конференции</a> кредитной или дебетовой картой через PayPal, или при помощи системы Яндекс.Деньги.</p>\n<p>После мероприятия всех ждёт afterparty, где участники смогут пообщаться в местном баре в неформальной обстановке. Ну и, конечно же, каждый из гостей получит футболку с символикой WordPress и унесет с собой столько наклеек и значков, сколько влезет в карманы.</p>\n<p><a href=\"https://2016.moscow.wordcamp.org/tickets/\">Зарегистрироваться</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2015\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2015/07/wordcamp-russia-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Jul 2015 10:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1660\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:282:\"Конференция WordCamp Russia 2015 пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2883:\"<p>Конференция <a href=\"https://russia.wordcamp.org/2015/\">WordCamp Russia 2015</a> пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.</p>\n<p><img src=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg\" alt=\"WordCamp Russia\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1662\" srcset=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg 1024w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-300x200.jpg 300w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>В этом году на WordCamp вы сможете послушать интересные доклады от ведущих специалистов по WordPress в России, познакомиться с единомышленниками и поделиться своими идеями. Доклады разделены на два потока для пользователей и разработчиков WordPress, и охватывают дизайн, маркетинг, программирование, безопасность, производительность и поисковую оптимизацию.</p>\n<h2>Программа</h2>\n<p>На WordCamp Russia 2015 вы узнаете:</p>\n<ul>\n<li>Как создавать эффективные лендинги с помощью WordPress</li>\n<li>Что такое поведенческие факторы и как они измеряются</li>\n<li>Как создавать многоязычные сайты на WordPress</li>\n<li>Самые распространенные причины медленных сайтов на WordPress</li>\n<li>Как взламываются сайты на WordPress (на практике)</li>\n<li>Что такое фильтры и события в WordPress</li>\n<li>Чего ожидать от REST API в WordPress и как с ним работать</li>\n<li>Почему следует участвовать в разработке ядра WordPress</li>\n<li><a href=\"https://russia.wordcamp.org/2015/schedule/\">и многое другое</a></li>\n</ul>\n<p>Стоимость билета – $20. Сюда входит участие в конференции, обед и напитки, футболка с символикой мероприятия, значки, наклейки, подарки от спонсоров и целый день хорошего настроения.</p>\n<p>Подробности и регистрация <a href=\"https://russia.wordcamp.org/2015/\">на сайте конференции &rarr;</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.2.1 на русском\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ru.wordpress.org/news/2015/04/wordpress-4-2-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Apr 2015 16:54:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1636\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:766:\"Доступен WordPress 4.2.1. Это критическое обновление безопасности для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее. Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил Йоуко Пиннонен. WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1558:\"<p>Доступен WordPress 4.2.1. Это <strong>критическое обновление безопасности</strong> для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее.</p>\n<p>Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил <a href=\"http://klikki.fi/\">Йоуко Пиннонен</a>.</p>\n<p>WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, которые <a href=\"http://https://wordpress.org/plugins/background-update-tester/\">поддерживают</a> автоматические фоновые обновления.</p>\n<p>Дополнительную информацию можно найти в <a href=\"https://codex.wordpress.org/Version_4.2.1\">заметке о релизе</a> или в <a href=\"https://core.trac.wordpress.org/log/branches/4.2?rev=32311&amp;stop_rev=32300\">списке изменений</a>.</p>\n<p><a href=\"https://ru.wordpress.org/releases/\">Скачайте версию 4.2.1</a> или перейдите в меню «Консоль» → «Обновления» и нажмите кнопку «Обновить сейчас».</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2014/07/wordcamp-russia-2014/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jul 2014 09:37:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1588\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"Конференция WordCamp Russia 2014 пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1919:\"<p>Конференция <a href=\"http://2014.russia.wordcamp.org/\">WordCamp Russia 2014</a> пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.</p>\n<p>В этом году на WordCamp Russia планируется два отдельных потока для пользователей и разработчиков. С докладами на конференции выступят специалисты WordPress из России и из-за рубежа, включая разработчиков ядра WordPress. Среди подтвержденных докладов:</p>\n<ul>\n<li>Основы поисковой оптимизации WordPress</li>\n<li>WordPress под нагрузкой: масштабирование и отказоустойчивость</li>\n<li>Сайт глазами контентера: какой должна быть идеальная &#171;админка&#187;</li>\n<li>Как не сойти с ума при разработке крупных проектов на WordPress</li>\n<li>WordPress под прицелом хакеров. Что нужно знать, и как избежать проблем.</li>\n<li>Все что вы хотели знать о WP_Query</li>\n<li>Моделирование контента в WordPress: сильно больше, чем &#171;просто блог&#187;</li>\n<li>Малоизвестные функции в ядре WordPress</li>\n<li>Профилирование кода в WordPress</li>\n</ul>\n<p>Подробности и регистрация <a href=\"http://2014.russia.wordcamp.org/\">на сайте конференции &rarr;</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ru.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 01 Oct 2018 08:28:01 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Mon, 01 Oct 2018 08:21:21 GMT\";s:4:\"link\";s:61:\"<https://ru.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no'),
(139, '_transient_timeout_feed_mod_126d1ca39d75da07beec8b892738427b', '1538425681', 'no'),
(140, '_transient_feed_mod_126d1ca39d75da07beec8b892738427b', '1538382481', 'no'),
(141, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1538425682', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(142, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WordCamp Tokyo 2018: Highlights, Recaps, Aftermovie, and More\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wordcamp-tokyo-2018-highlights-recaps-aftermovie-and-more\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3174:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/WordCampTokyo2018.jpg?ssl=1\"><img /></a></p>\n<p><a href=\"https://2018.tokyo.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">WordCamp Tokyo 2018</a> was held two weeks ago on September 14-15 and recordings of the sessions should be published to WordPress.tv soon. The theme of the WordCamp was &#8220;Challenge!&#8221;, a celebration of the challenges the WordPress project has overcome over the past 15 years, as well as a rallying call for embracing the challenges introduced by the new Gutenberg editor.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"ja\" dir=\"ltr\">WordCamp Tokyo 2018: Challenge! — ブログを投稿しました！ <a href=\"https://twitter.com/hashtag/wctokyo?src=hash&ref_src=twsrc%5Etfw\">#wctokyo</a> <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/WordCamp?src=hash&ref_src=twsrc%5Etfw\">#WordCamp</a> <a href=\"https://t.co/1cQ3rU9c6f\">https://t.co/1cQ3rU9c6f</a> <a href=\"https://t.co/4XDc6HW9Pn\">pic.twitter.com/4XDc6HW9Pn</a></p>\n<p>&mdash; Paulo E. Aquino (@pauloeaquino) <a href=\"https://twitter.com/pauloeaquino/status/1041950336326545408?ref_src=twsrc%5Etfw\">September 18, 2018</a></p></blockquote>\n<p></p>\n<p>WordCamp Tokyo is one of the largest camps in Asia, hosted by one of the most active international communities. The first edition of the camp was held in 2008 with 60 attendees. It was also the very first WordCamp in Japan. Since that time the WordPress community has exploded in the region, spawning dozens of local meetups and WordCamps around the country.</p>\n<p>The official WordCamp Tokyo 2018 website has a growing list of more than <a href=\"https://2018.tokyo.wordcamp.org/2018/09/27/impressions_blog/\" rel=\"noopener noreferrer\" target=\"_blank\">40 recaps and articles</a> written about the event. Overall, attendees enjoyed the opportunity to connect and contribute back to WordPress. The after party was held at a disco-like club in Shibuya and you can <a href=\"https://www.tecking.org/archives/5629\" rel=\"noopener noreferrer\" target=\"_blank\">listen to a selection of the songs</a> that the DJ posted to his WordPress blog.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"ja\" dir=\"ltr\">アフターパーティ大盛り上がりだぷー( ^ω^ U)<img src=\"https://s.w.org/images/core/emoji/11/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" /><a href=\"https://twitter.com/hashtag/wctokyo?src=hash&ref_src=twsrc%5Etfw\">#wctokyo</a> <a href=\"https://t.co/G6thGqCaq7\">pic.twitter.com/G6thGqCaq7</a></p>\n<p>&mdash; WordCamp Tokyo (@wctokyo) <a href=\"https://twitter.com/wctokyo/status/1040936683338792960?ref_src=twsrc%5Etfw\">September 15, 2018</a></p></blockquote>\n<p></p>\n<p>If you are one of the many people across the globe who love the Japanese WordPress community and wished you could have attended the WordCamp, this aftermovie offers a glimpse of a few of the contributors, sponsors, organizers, and attendees who made the event a success. It captures a bit of the energy in the air and may inspire you to put WordCamp Tokyo on your calendar next year.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 29 Sep 2018 01:21:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WordPress Theme Developers Begin Marketing Themes as Gutenberg Compatible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84284\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/wordpress-theme-developers-begin-marketing-themes-as-gutenberg-compatible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4729:\"<p>WordPress theme developers are starting to advertise their themes as being compatible with Gutenberg, ahead of the new editor&#8217;s imminent merge into core. Work on the 5.0 release may be ramping up sooner than expected after yesterday&#8217;s announcement that <a href=\"https://wptavern.com/wordpress-4-9-9-release-may-shift-focus-to-php-7-3-compatibility-gutenberg-merge-proposal-timeline-tbd\" rel=\"noopener noreferrer\" target=\"_blank\">4.9.9 may be a quick release for PHP 7.3 compatibility</a> or possibly cancelled altogether.</p>\n<p>Themeforest, the largest marketplace for commercial WordPress themes with more than 11,000 products, has a specific <a href=\"https://themeforest.net/tags/gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">tag for Gutenberg-compatible theme listings</a>. Searching for themes that mention Gutenberg in the description turns up 139 products. But what does &#8220;Gutenberg compatible&#8221; mean?</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-27-at-3.44.38-PM.png?ssl=1\"><img /></a></p>\n<p>Gutenberg compatibility seems to be more of a buzzword among most of the Themeforest listings, indicating that the theme includes styles for all core blocks. However, in some instances theme authors have also tested shortcodes for compatibility with the new editor. A smaller number include access to premium blocks as part of their advertised Gutenberg compatibility.</p>\n<p>Searching the WordPress.org Theme Directory for &#8220;<a href=\"https://wordpress.org/themes/search/Gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg</a>&#8221; produces 26 results where compatibility is mentioned in the theme descriptions. Themes are noted to be &#8220;fully compatible&#8221; with Gutenberg or specifically &#8220;designed to work with the new editor.&#8221; There is a wide spectrum of interpretation on those selling points &#8211; from basic styles for core blocks to themes that explore all the possibilities that Gutenberg opens up with features created specifically for manipulation inside the new editor.</p>\n<p>Independent theme shops have been leading the charge in creating themes built to showcase what Gutenberg can do through pairing with plugins that offer block collections. Themes like <a href=\"https://wordpress.org/themes/editor-blocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Editor Blocks</a>, <a href=\"https://wordpress.org/themes/atomic-blocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Atomic Blocks</a>, and <a href=\"https://wordpress.org/themes/coblocks/\" rel=\"noopener noreferrer\" target=\"_blank\">CoBlocks</a> all have accompanying plugins that add custom blocks. This particular approach of packaging blocks into collections may not last very long, as it tends to make individual blocks more difficult to find.</p>\n<p>At the moment, advertising a theme as &#8220;Gutenberg compatible&#8221; is a temporary marketing strategy, as Gutenberg will soon lose its code name and become simply &#8220;the editor.&#8221; That special distinction will evaporate as soon as WordPress 5.0 lands. Gutenberg support will quickly become a matter of basic WordPress compatibility. The days of using it as a marketable feature are limited, and the pressure is on for theme developers to ensure their products are ready.</p>\n<p>In the video below, an excerpt from the &#8220;Theming with Gutenberg Course,&#8221; Zac Gordon examines considerations for theme developers who are working towards making their products compatible with the new editor. Gordon emphasizes that Gutenberg should work out of the box with any theme. However, there are a few features, such as the full width cover image, that may require special styles in order to work on the front end. The bulk of the compatibility work is ensuring that the editing experience matches the frontend and that Gutenberg blocks are styled harmoniously with the rest of the theme&#8217;s features.</p>\n<p>There are many tutorials available to help theme developers (and agencies preparing client sites) get started with making their themes ready for the Gutenberg era. Check out the resources below:</p>\n<p><a href=\"https://weavertheme.com/make-your-wordpress-theme-fully-compatible-with-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Things to consider when updating a WordPress theme for Gutenberg</a></p>\n<p><a href=\"https://richtabor.com/gutenberg-block-unit-test/\" rel=\"noopener noreferrer\" target=\"_blank\">Preparing WordPress themes for Gutenberg with the Block Unit Test</a></p>\n<p><a href=\"https://www.billerickson.net/getting-your-theme-ready-for-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Getting your theme ready for Gutenberg</a></p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Sep 2018 23:12:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: WPWeekly Episode 331 – Status Update on Gutenberg With Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=84269&preview=true&preview_id=84269\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/wpweekly-episode-331-status-update-on-gutenberg-with-gary-pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1993:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://pento.net/\">Gary Pendergast</a>, Gutenberg and WordPress core contributor to get an update on Gutenberg&#8217;s progress. We discuss its rollout on WordPress.com, the feedback and sentiment shared thus far, and when we can expect to see it merged into WordPress 5.0. We also talk about what the future may hold for WordPress years after Gutenberg is merged into core.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://make.wordpress.org/core/2018/09/26/an-update-on-gutenberg-tasks/\">An Update on Gutenberg Tasks</a><br />\n<a href=\"https://wptavern.com/gutenstats-blog-is-live-tracking-gutenberg-beta-testing-data\">Gutenstats Blog Is Live, Tracking Gutenberg Beta Testing Data</a><br />\n<a href=\"https://wptavern.com/gutenberg-cloud-a-cross-platform-community-library-for-custom-gutenberg-blocks\">Gutenberg Cloud: A Cross-Platform Community Library for Custom Gutenberg Blocks</a><br />\n<a href=\"https://wptavern.com/gutenberg-is-slowly-rolling-out-to-wordpress-com-users\">Gutenberg is Slowly Rolling Out to WordPress.com Users</a><br />\n<a href=\"https://wptavern.com/drupal-gutenberg-project-receives-enthusiastic-reception-at-drupal-europe\">Drupal Gutenberg Project Receives Enthusiastic Reception at Drupal Europe</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 3rd 10:00 A.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #331:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Sep 2018 21:03:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Lyft Open Sources ColorBox Algorithm for Building Accessible Color Systems\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84187\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/lyft-open-sources-colorbox-algorithm-for-building-accessible-color-systems\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2755:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-26-at-2.54.12-PM.png?ssl=1\"><img /></a></p>\n<p>Lyft has open sourced its color algorithm for creating an accessible color system. The company&#8217;s design team also packaged the algorithm as a web tool called <a href=\"https://www.colorbox.io/\" rel=\"noopener noreferrer\" target=\"_blank\">ColorBox</a>. It makes it easy for anyone to produce color sets with accessible contrast ratios, as outlined in the <a href=\"https://www.w3.org/WAI/intro/wcag\" rel=\"noopener noreferrer\" target=\"_blank\">WCAG 2.0</a> standards.</p>\n<p>&#8220;We made accessibility a cornerstone of our new color system,&#8221; Lyft designer Kevyn Arnott said. &#8220;We wanted to remove the need to manually check color contrast using third-party tools, and we needed to make it dead-simple for everyone to create accessible products.&#8221;</p>\n<p>Arnott&#8217;s post &#8220;<a href=\"https://design.lyft.com/re-approaching-color-9e604ba22c88\" rel=\"noopener noreferrer\" target=\"_blank\">Re-approaching color</a>&#8221; describes how his team created the algorithm and why it was necessary. As Lyft&#8217;s design and engineering teams grew, it became apparent that color naming and selection was not consistent across their products. With thousands of people building products that rely on color, scaling a color system becomes vitally important.</p>\n<p>Lyft used what they had already done with color naming and selection and created an algorithm that would standardize the progression of lightness-to-darkness across color hues. The result is that every color 0–50 is accessible (4.5:1) on black and every color 60–100 is accessible (4.5:1) on white.</p>\n<p>ColorBox is a mesmerizing and powerful tool to play with. It has inputs for the number of steps, hue, saturation, and luminosity. Each input also comes with different preset curve options, offering greater control over how colors progress in hue and saturation.</p>\n<p>&#8220;This algorithm allows us to remove all the dependencies we previously had with color selection, so if we have a new designer working on this or we change tools or monitors, we’ll still have the same outcome,&#8221; Arnott said. &#8220;This algorithm also enables us to quickly modify or scale color as we need to over time.&#8221;</p>\n<p>Many companies and open source projects seem to be short on accessibility experts, so a tool targeted at making accessible color systems more approachable is a welcome contribution. The <a href=\"https://github.com/lyft/coloralgorithm\" rel=\"noopener noreferrer\" target=\"_blank\">JavaScript color algorithm</a> is open source on GitHub (Apache 2.0 license) and can be modified for any project&#8217;s specific needs.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Sep 2018 14:46:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: Gutenberg 4.0 RC 1 Will Be Available in A Few Days\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84264\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/gutenberg-4-0-rc-1-will-be-available-in-a-few-days\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2145:\"<p>Matias Ventura, Gutenberg&#8217;s technical lead, <a href=\"https://make.wordpress.org/core/2018/09/26/an-update-on-gutenberg-tasks/\">published an update</a> on the progress of Gutenberg 4.0 and what users can expect. This version will mark the project&#8217;s 40th release.</p>\n\n<p>Ventura outlined a number of tasks that have been completed up to this point. These include, Full Screen, Unified Toolbar, and Spotlight modes to adapt to a user’s creative preferences, adaptive design, and autosave support.<br /></p>\n\n<p>The list provides a great recap of the progress that&#8217;s been made since early 2017. Gutenberg 4.0 will initially be a release candidate that will be made available in the next few days. </p>\n\n<p>Due to the &#8220;Try Gutenberg&#8221; callout <a href=\"https://wptavern.com/wordpress-4-9-8-released\">in WordPress 4.9.8</a> and the editor <a href=\"https://wptavern.com/gutenberg-is-slowly-rolling-out-to-wordpress-com-users\">slowly making its way</a> to sites on WordPress.com, the team has received a lot of feedback leading to improved iterations. <br /></p>\n\n<p>&#8220;The main feature set <a href=\"https://github.com/WordPress/gutenberg/issues/4894\">targeted for the first version</a> of the editor has been considered complete for a few releases now,&#8221; Ventura said. &#8220;Since then, however, the large amount of testing being carried out and the great feedback coming from multiple venues has resulted in several further iterations and additions to continue to improve the overall experience to wider satisfaction.</p>\n\n<p>&#8220;This includes things like editor modes and tweaks to the inserter, transformation, and toolbar mechanisms. That has pushed us back a little in being able to fully focus on bug fixing.&#8221;</p>\n\n<p>With the initial feature set complete and the WordPress 5.0 release cycle <a href=\"https://wptavern.com/wordpress-4-9-9-release-may-shift-focus-to-php-7-3-compatibility-gutenberg-merge-proposal-timeline-tbd\">about to begin</a>, a merge proposal appears imminent even though specific timelines <a href=\"https://make.wordpress.org/core/5-0/\">have yet to be determined</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Sep 2018 23:26:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WPTavern: WordPress 4.9.9 Release May Shift Focus to PHP 7.3 Compatibility, Gutenberg Merge Proposal Timeline TBD\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84255\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wptavern.com/wordpress-4-9-9-release-may-shift-focus-to-php-7-3-compatibility-gutenberg-merge-proposal-timeline-tbd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3553:\"<p>The plans for WordPress 4.9.9 are currently in limbo after today&#8217;s core developers&#8217; chat. Here&#8217;s what we know right now: Discussions are underway regarding making it a quick PHP 7.3 compatibility release or cancelling it in favor of moving ahead with the 5.0 release cycle.</p>\n<p>&#8220;Progress and communication on 4.9.9 has been very vague as of late, and I apologize for that,&#8221; WordPress 4.9.9 release co-lead Alain Schlesser said. &#8220;There were things that needed to be clarified first, but we can now finally share the big news with you: It&#8217;s just about time to begin work on the 5.0 release cycle.</p>\n<p>&#8220;Because of this, @antpb and I will step back as release leads and we&#8217;ll wind down the 4.9.9 release. Over the next couple of weeks we will start coordinating the transition to ease into this major release cycle. This includes going through the hard work that teams are already in the middle of and planning how best to proceed. As we&#8217;ll figure out the next steps and the best path forward, we&#8217;ll share further details in future updates.&#8221;</p>\n<p>After Schlesser&#8217;s announcement, there was some discussion about whether or not 4.9.9 is still needed, but the matter seemed to be already settled. Josepha Haden, who leads the open source teams at Automattic as a full-time sponsored volunteer on the WordPress project, is assisting in transitioning important items from the 4.9.9 release.</p>\n<p>&#8220;I think we all know that a lot of work has gone into 4.9.9 planning already,&#8221; Haden said. &#8220;So the next couple of weeks will be all about reaching out to team reps and discussing what you&#8217;ve been working on and what we can do to keep things moving forward for everyone. But I will probably be helping with the 4.9.9 transition things, and I will say that the final timelines will almost certainly will be contingent on what I hear from team reps who were collaborating on 4.9.9.&#8221;</p>\n<p>Haden confirmed that Schlesser was sharing the overall plan for the release but that feedback from the discussions indicated there may be items with earlier deadlines to consider. After gathering information from the team representatives, they will work to prioritize items that may need to land before 5.0. There may be time for a tightly-focused 4.9.9 release aimed solely at PHP 7.3 compatibility.</p>\n<p>&#8220;I think it will be possible to wrangle a small 4.9.9 release with PHP 7.3 related bug fixes, while 5.0 is ramping up,&#8221; Gary Pendergast commented during the meeting.</p>\n<p>&#8220;Given a good part of 4.9.9&#8217;s focus was on supporting things for Gutenberg, not sure we &#8216;need a 4.9.9 release if we would just include the work done to support Gutenberg with the Gutenberg merge proposal coming for 5.0,&#8221; Jeff Paul said. Gutenberg technical lead Matias Ventura confirmed that the plugin is ready for the team to begin collaborating on a merge proposal.</p>\n<p>&#8220;We have kept development in the plugin for as long as possible for speed / convenience, etc, but it’s been ready for starting 5.0 process for a bit,&#8221; Ventura said. &#8220;From the Gutenberg side, things should be ready to start planning the merge.&#8221;</p>\n<p>At the moment, a quick 4.9.9 release is under consideration for PHP 7.3-related bug fixes. It may happen while the gears are in motion for 5.0 or it may yet be cancelled in favor of going full speed ahead with the 5.0 release cycle. The decision has not yet been officially announced.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Sep 2018 22:29:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: The Hero’s Journey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2629\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://heropress.com/the-heros-journey/#utm_source=rss&utm_medium=rss&utm_campaign=the-heros-journey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3427:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/10/100516-2-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: We cannot know the end of any journey until we find ourselves there.\" /><p>A couple years ago I noticed that someone had done a talk at WordCamp Brighton called &#8220;<a href=\"http://wordpress.tv/2016/08/09/tamsin-taylor-a-heros-journey/\">The Hero&#8217;s Journey</a>&#8220;. As you can imagine it immediately caught my eye and I went hunting to find this cool person.  As it turns out it was Tamsin Taylor from Brighton and she had a great story. As I was re-reading it today I was struck by her point that great things are built from the foundation of many smaller things. Experience comes from years of simply doing. Maturity comes from years of growing. Heroism comes from many small acts of goodness.</p>\n<p>There&#8217;s a journey involved in every destination. We face hardship, struggle, pain, and growth, and at the end we&#8217;re a different person in a different place. Often we don&#8217;t realize it until someone says &#8220;Wow, you&#8217;re amazing, how did you get so good at that?&#8221; and you realize you&#8217;ve just been doing it so long that it just feels like who you are.</p>\n<p>Find the good things in life and do them over and over until they become who you are.  Also, read Tamsin&#8217;s excellent essay:</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/bumpy-journey-becoming/\">The Bumpy Journey of Becoming</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Hero&#8217;s Journey\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Hero%27s%20Journey&via=heropress&url=https%3A%2F%2Fheropress.com%2Fthe-heros-journey%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Hero&#8217;s Journey\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fthe-heros-journey%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fthe-heros-journey%2F&title=The+Hero%26%238217%3Bs+Journey\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Hero&#8217;s Journey\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/the-heros-journey/&media=https://heropress.com/wp-content/uploads/2016/10/100516-2-150x150.jpg&description=The Hero\'s Journey\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Hero&#8217;s Journey\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/the-heros-journey/\" title=\"The Hero&#8217;s Journey\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/the-heros-journey/\">The Hero&#8217;s Journey</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Sep 2018 14:57:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: Creative Commons Beta Search Tool Adds Access to 13 Content Providers, Improves Metadata with AI Image Tags\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84213\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://wptavern.com/creative-commons-beta-search-tool-adds-access-to-13-content-providers-improves-metadata-with-ai-image-tags\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3609:\"<p>In February 2017, Creative Commons <a href=\"https://wptavern.com/creative-commons-new-search-tool-is-now-in-beta-pulls-cc-images-from-multiple-sources\" rel=\"noopener noreferrer\" target=\"_blank\">launched the beta version</a> of its new <a href=\"https://ccsearch.creativecommons.org\" rel=\"noopener noreferrer\" target=\"_blank\">multi-source search tool</a>, built on a lean budget by a single contractor over seven months. Since that time a new tech team has taken over the project to further the mission of finding and indexing all 1.4 billion+ CC-licensed works on the web.</p>\n<p>The first iteration added access to images from Rijksmuseum, Flickr, 500px, the New York Public Library, and the Metropolitan Museum of Art. Today&#8217;s <a href=\"https://creativecommons.org/2018/09/24/big-changes-for-cc-search-beta-updates-released-today/\" rel=\"noopener noreferrer\" target=\"_blank\">update</a> to the search tool adds access to more than 10 million images and a total of 13 content providers, including Behance, Geograph UK, IHA Holiday Ads, several other museums, and a handful of smaller sources.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/screencapture-ccsearch-creativecommons.png?ssl=1\"><img /></a>The search page is also sporting a new design, featuring Creative Commons&#8217; top categories and top images.</p>\n<p>Previously, search results were displayed as a masonry style grid, supporting images of varying sizes and orientations. The updated results are displayed as a slice of a landscape-oriented image on mobile and desktop, which is not optimal for seeing what the image is without clicking on it. This doesn&#8217;t seem like an improvement, but the search tool&#8217;s development team is still working through bugs and the site is in active development.</p>\n<p>This update to the search tool also adds AI image tags generated by <a href=\"https://clarifai.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Clarifai</a>&#8216;s image classification system. More than 10.3 million images have been tagged using the image recognition software, in addition to the user-defined and platform-defined tags gathered from web crawl data. This should make the search results more accurate for users in the future.</p>\n<p>Lists and collections were a feature of the first beta but private lists are no longer available in the beta update. (Users can request they be manually retrieved by emailing Creative Commons.) The feature has been updated to allow users to create public lists of images without having an account. A new shares.cc link shortening system is now available for sharing images and lists.</p>\n<p>The Creative Commons library is an excellent resource for finding images for blogging or for use in WordPress theme and plugin development. Images that are CC0-licensed are GPL-compatible for use within WordPress products. Creative Commons has a recommended implementation for <a href=\"https://wiki.creativecommons.org/wiki/CC0_FAQ#May_I_apply_CC0_to_computer_software.3F_If_so.2C_is_there_a_recommended_implementation.3F\" rel=\"noopener noreferrer\" target=\"_blank\">using CC0 to release software</a>.</p>\n<p>A WordPress plugin for bringing images in from the Creative Commons library does not yet exist but there are many that pull CC-licensed images from resources like Flickr or Pixabay. For now, users will need to search directly on the <a href=\"https://ccsearch.creativecommons.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Creative Commons beta search</a> website. The new search tool allows users to filter by collection, license, and license type.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 25 Sep 2018 23:45:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Gutenberg 3.9 Introduces Reusable, Exportable Templates for Multiple Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/gutenberg-3-9-introduces-reusable-exportable-templates-for-multiple-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3107:\"<p><a href=\"https://make.wordpress.org/core/2018/09/21/whats-new-in-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.9</a> was released last week with a new feature that allows users to group multiple blocks into reusable templates. The templates can also be exported and imported as a JSON file.</p>\n<p>The idea of reusable templates is an expansion of the concept of <a href=\"https://github.com/WordPress/gutenberg/issues/1516\" rel=\"noopener noreferrer\" target=\"_blank\">dynamic reusable blocks</a> that Gutenberg technical lead Matias Ventura proposed in June 2017. Reusability is even more powerful when applied to multiple blocks. The import/export capabilities make it possible for templates to be easily shared across WordPress sites.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-24-at-1.04.36-PM.png?ssl=1\"><img /></a></p>\n<p>If you want to test it, you can select multiple blocks by selecting the content inside a block and dragging outside the boundaries of the block to extend the selection to multiple blocks. The <a href=\"https://github.com/WordPress/gutenberg/issues/62\" rel=\"noopener noreferrer\" target=\"_blank\">multi-select feature</a> was originally added for the purpose of deleting or moving multiple blocks but it has now become indispensable for creating reusable templates.</p>\n<p>This feature lays the ground work for a full-fledged layout builder in the next phase of Gutenberg development. Reusable templates should make it a breeze to build WordPress sites with pre-defined layouts that users and developers can share. They are much more intuitive to implement than page templates.</p>\n<p>&#8220;Holy wow, imagine this: wp-blueprints.com, where people can group blocks together and share their JSON strings with nice little copy buttons,&#8221; Gutenberg designer Joen Asmussen commented on the PR. &#8220;Categories for top rated, most downloaded, search, etc? This is going to happen because of this magic.&#8221;</p>\n<p>Matias Ventura&#8217;s demo video shows the reusable templates in action. It also highlights a new tool for <a href=\"https://github.com/WordPress/gutenberg/pull/7995\" rel=\"noopener noreferrer\" target=\"_blank\">visually comparing possible ways to convert an invalid block</a>. The editor now includes a diff UI for blocks, which Ventura said could possibly scale in the future to provide an improved UX for revisions as a whole.</p>\n<p></p>\n<p>A few other notable additions in the 3.9 release include improvements to the drag and drop handle, collapsible groups for the block toolbar, and the ability to convert a cover image block to an image and back. <a href=\"https://github.com/WordPress/gutenberg/pull/9683\" rel=\"noopener noreferrer\" target=\"_blank\">Dark editor style support</a> is now available for theme developers, making Gutenberg more friendly for use with dark WordPress themes. Check out the <a href=\"https://make.wordpress.org/core/2018/09/21/whats-new-in-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">3.9 changelog</a> to see a full list of enhancements and bug fixes.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Sep 2018 23:32:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: New commonWP Plugin Enables WordPress Sites to Use the Free jsDelivr CDN\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84046\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/new-commonwp-plugin-enables-wordpress-sites-to-use-the-free-jsdelivr-cdn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5414:\"<p>Milan Dinić, a WordPress developer based in Serbia, has released his <a href=\"https://wordpress.org/plugins/commonwp/\" rel=\"noopener noreferrer\" target=\"_blank\">commonWP</a> plugin that enables WordPress sites to use the free, public <a href=\"https://www.jsdelivr.com/\" rel=\"noopener noreferrer\" target=\"_blank\">jsDelivr</a> CDN. Last year <a href=\"https://www.jsdelivr.com/blog/jsdelivr-reloaded-2017/\" rel=\"noopener noreferrer\" target=\"_blank\">jsDelivr was revamped</a> to allow any file from GitHub and npm to be served by the CDN. WordPress&#8217; mirror on GitHub made it possible for Dinić to create a plugin that works with the CDN.</p>\n<p>commonWP aims to speed up performance by offloading JavaScript and CSS files to jsDelivr, including the following:</p>\n<ul>\n<li>All files from WordPress core (unless development version of WordPress is in use)</li>\n<li>All files from plugins hosted by WordPress.org Plugins Repository (unless author of specific plugin doesn’t use SVN tags for releasing)</li>\n<li>All files from themes hosted by WordPress.org Themes Repository</li>\n<li>All files from plugins and themes hosted on GitHub that support GitHub Updater</li>\n<li>All files marked as available on npm in any type of theme, plugin, or MU plugin</li>\n</ul>\n<p>Dinić said he designed commonWP with a emphasis on keeping it lightweight, easy-to-use, and secure. He claims the approach he used in the plugin is safer than any other plugin that employs a CDN for WordPress files:</p>\n<blockquote><p>First, commonWP will only rewrite file to point to one on jsDelivr if that remote file is identical to local one. Second, during comparison, it generates <a href=\"https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity\" rel=\"noopener noreferrer\" target=\"_blank\">subresource identity hash</a> of remote jsDelivr file and includes that hash in page’s source code so browser won’t load remote file if it doesn’t have exactly the same hash.</p></blockquote>\n<p>Dinić recommends the plugin for users who are not already using a CDN, have limited budgets, or live in less developed countries.</p>\n<p>&#8220;Using a CDN is generally recommended, and with this one they might get even more speed because some files might be already cached by their visitors,&#8221; he said. &#8220;Imagine if jquery.js, jquery-migrate.min.js (most common files) are always served from one place. You wouldn&#8217;t need to get them from each WordPress site you visit. You would get them once and they would be in your browser&#8217;s cache, and initial page load would be faster.&#8221;</p>\n<p>Dinić referenced a Trac <a href=\"https://core.trac.wordpress.org/ticket/44229\" rel=\"noopener noreferrer\" target=\"_blank\">ticket</a> where using a CDN is proposed for serving assets like jQuery, but no action has been taken on the proposal yet. One benefit he cites for WordPress&#8217; global user base is that a CDN like jsDelivr allows visitors to get files from their own content, country, or even the same city. jsDelivr has a large multi-CDN network with infrastructure built on top of other networks, including StackPath, Cloudflare, Fastly, and Quantil. It also has custom servers in locations like China where other public CDNs have little or no presence.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-21-at-2.39.40-PM.png?ssl=1\"><img /></a></p>\n<p>commonWP doesn&#8217;t have any settings for users to configure. The plugin fills up its cache in the background after it is activated. Developers can fine tune it for their needs and Dinić has published some <a href=\"https://github.com/dimadin/commonWP#marking-files-that-exist-in-npm\" rel=\"noopener noreferrer\" target=\"_blank\">code examples</a> to GitHub.</p>\n<p>In his release <a href=\"https://milandinic.com/2018/09/18/introducing-commonwp/\" rel=\"noopener noreferrer\" target=\"_blank\">post</a>, Dinić referenced a Serbian site getting a 1-second loading improvement and has done other tests but said he&#8217;s still looking for a good way to present the data. The plugin&#8217;s FAQ outlines which factors influence whether or not commonWP can bring performance improvements:</p>\n<ul>\n<li>How many of your files are available on jsDelivr and can be rewritten &#8211; the more files on jsDelivr, the more speed; the more files used by the page are rewritten to jsDelivr, the more speed.</li>\n<li>The further your site&#8217;s visitors are from the server your site is hosted on, the more speed you can get.</li>\n<li>The slower your server is, the more speed it can get.</li>\n<li>If your visitors already visited WordPress site(s) with commonWP activated, there is more chance that some of the files you use on your site are already cached by them so they can get more speed.</li>\n</ul>\n<p>Not every site will see drastic improvements for site owners testing performance, but visitors from other parts of the world may be able to load certain files faster. Dinić recommends users test their sites using webpagetest.org and select a higher number of tests to get an average. He also recommends testing with different locations and different connection speeds. Test with the plugin activated and deactivated and when the site has a full cache. In general, the further the location is from the server and the larger number of files sent to jsDelivr, the bigger the performance improvement will be.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Sep 2018 20:19:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Gutenstats Blog Is Live, Tracking Gutenberg Beta Testing Data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84153\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/gutenstats-blog-is-live-tracking-gutenberg-beta-testing-data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1455:\"<p>Matt Mullenweg <a href=\"https://twitter.com/photomatt/status/1042901193679241216\" rel=\"noopener noreferrer\" target=\"_blank\">tweeted</a> out a link to <a href=\"https://gutenstats.blog/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenstats.blog</a> this evening, a new site dedicated to tracking Gutenberg beta testing data. The site shows there are currently more than 420,000 active installations of Gutenberg, a slightly more precise number than reported on the WordPress.org plugin page (400K+).</p>\n<p>Gutenstats also tracked 213,000 posts written with the new editor and 8,142 posts written yesterday. These numbers were collected from posts made on WordPress.com and Jetpack sites since late August 2018 and a note on the site says the actual number is higher.</p>\n<p>In June, Mullenweg unveiled a <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\" rel=\"noopener noreferrer\" target=\"_blank\">roadmap for Gutenberg to land in WordPress 5.0</a>. At that time the plugin was active on just 14,000 sites. He proposed 100K+ sites having made 250K+ posts using Gutenberg as a threshold for adequate pre-5.0 testing.</p>\n<p>Gutenstats tracking shows testing has far exceeded the original goal for active installations and should reach the posts written goal in just a few days. Mullenweg said they plan to add some block stats to the tracking page in the future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Sep 2018 04:21:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: ACF 5.0 Released with Updated UI and Gutenberg Compatibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84105\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/acf-5-0-released-with-updated-ui-and-gutenberg-compatibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2771:\"<p><a href=\"https://www.advancedcustomfields.com/blog/acf-5-0-release/\" rel=\"noopener noreferrer\" target=\"_blank\">ACF version 5.0</a> landed on WordPress.org this week with Gutenberg compatibility now available for more than one million sites where the plugin is active. The release is a welcome update for developers who were concerned about what would happen in real world usage of Gutenberg on sites with ACF-powered customizations. ACF&#8217;s Gutenberg compatibility is arriving well ahead of WordPress 5.0&#8217;s TBD schedule for merging the new editor, giving developers time to get their clients&#8217; sites ready.</p>\n<p>&#8220;You can expect to see lots of Gutenberg related items in our changelogs over the coming months as we edge nearer to WordPress version 5.0,&#8221; the ACF announcement stated. &#8220;You’ll also want to take note that ACF 5 is the only version that will provide Gutenberg support. Previous versions will not be compatible.&#8221;</p>\n<p>The version numbers across ACF Pro and the free version on WordPress.org are somewhat confusing. This particular release is significant in that it brings several years of development from the Pro version into the plugin hosted on WordPress.org. Now both products are technically on v5.7.6.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Hi guys. This version 5 release is for our “free plugin” on <a href=\"https://t.co/V7oUQSI5Ei\">https://t.co/V7oUQSI5Ei</a> and does not affect ACF PRO. Now both ACF and ACF PRO are v5.7.6!</p>\n<p>&mdash; Advanced Custom Fields (@wp_acf) <a href=\"https://twitter.com/wp_acf/status/1041590825505849344?ref_src=twsrc%5Etfw\">September 17, 2018</a></p></blockquote>\n<p></p>\n<p>ACF 5.0 introduces a redesigned UI, performance improvements, and the plugin&#8217;s new <a href=\"https://www.advancedcustomfields.com/resources/local-json/\" rel=\"noopener noreferrer\" target=\"_blank\">Local JSON</a> feature, which saves field group and field settings as .json files within the user&#8217;s theme. This reduces database calls and allows for version control of field settings.</p>\n<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/acf-5-0-fresh-ui.jpg?ssl=1\"><img /></a>image credit: <a href=\"https://www.advancedcustomfields.com/blog/acf-5-0-release/\">ACF</a>\n<p>Version 5.0 adds six new fields, including a link, group, accordion, oEmbed, date time picker, and clone fields (an ACF pro feature). It also introduce a new Tools page where users can export and import field groups as JSON.</p>\n<p>For more information on items related to upgrading ACF and add-on compatibility, check out the official <a href=\"https://www.advancedcustomfields.com/blog/acf-5-0-release/\" rel=\"noopener noreferrer\" target=\"_blank\">5.0 release post</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 17:54:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WPForms Acquires Pirate Forms, Plugin to be Retired\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpforms-acquires-pirate-forms-plugin-to-be-retired\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3737:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/09/pirates.jpg?ssl=1\"><img /></a>photo credit: Reiterlied <a href=\"http://www.flickr.com/photos/126661502@N05/37773453702\">Plundering San Francisco Bay</a> &#8211; <a href=\"https://creativecommons.org/licenses/by-nc-sa/2.0/\">(license)</a>\n<p><a href=\"https://wpforms.com/wpforms-has-acquired-pirate-forms/\" rel=\"noopener noreferrer\" target=\"_blank\">WPForms has acquired Pirate Forms</a>, a popular WordPress contact form and SMTP plugin originally created by ThemeIsle in 2015. The announcement coincides with International Talk Like a Pirate Day but the pirate branding of the plugin is set to be retired and its users will be given the option to migrate to WPForms.</p>\n<p><a href=\"https://wordpress.org/plugins/pirate-forms/\" rel=\"noopener noreferrer\" target=\"_blank\">Pirate Forms</a> was purchased in what WPForms co-founder and CEO Syed Balkhi describes as &#8220;an all-cash deal.&#8221; Although the plugin currently has more than 300,000 users on WordPress.org, its features and capabilities are inferior to the more modern WPForms and its creators lacked the resources to bring it up to speed.</p>\n<p>Pirate Forms had gained popularity in its earlier days by providing a simple forms plugin (without all the builder functions) for sites that required just one contact form.</p>\n<p>&#8220;Where most of the other plugins aim at &#8216;mega functionality&#8217; with tons of customizations, add-ons and whatnots, Pirate Forms has made a bet on simplicity,&#8221; ThemeIsle representative Karol K said in the plugin&#8217;s <a href=\"https://themeisle.com/blog/pirate-forms-is-now-wpforms/\" rel=\"noopener noreferrer\" target=\"_blank\">farewell post</a>.</p>\n<p>&#8220;In other words, it just works(ed) right after the installation, with no particular setup required (other than adding your form to a contact page). This was a nice refreshment compared to the usual &#8216;get through tons of onboarding wizard screens before you can use the plugin&#8217; -approach.&#8221;</p>\n<p>Pirate Forms could no longer deliver what users expect from a forms plugin in 2018 and ThemeIsle opted to find a buyer in order to free up resources to focus on releasing the <a href=\"https://themeisle.com/blog/hestia-2-0/\" rel=\"noopener noreferrer\" target=\"_blank\">Hestia 2.0</a> theme.</p>\n<p>&#8220;This acquisition further strengthens WPForms&#8217; position in the WordPress ecosystem,&#8221; Balkhi said. The expectation is that a large number of users will migrate their forms to WPForms as the result of Pirate Forms discontinuing active development.</p>\n<p><a href=\"https://wpforms.com/docs/how-to-move-from-pirate-forms-to-wpforms/\" rel=\"noopener noreferrer\" target=\"_blank\">A migration path to WPForms</a> is built into the latest version of Pirate Forms and Balkhi describes the process as a seamless transition. Users are also free to select another forms plugin but they will not have the benefit of the migration tool, which also imports the notification email and confirmation settings from users&#8217; existing forms. Those who have purchased Pirate Forms Pro will receive a free one-year license to WPForms Pro.</p>\n<p><a href=\"https://wordpress.org/plugins/wpforms-lite/\" rel=\"noopener noreferrer\" target=\"_blank\">WPForms</a> has more than 1 million active installs and currently maintains a 4.9 out of 5 star average rating on WordPress.org. The drag-and-drop WordPress form builder is much more advanced than Pirate Forms and the free version allows users to create contact forms, subscription forms, payment forms, offline forms, multi-page forms, and many other types of customized feedback mechanisms. It is also compatible with all of ThemeIsle&#8217;s themes.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 02:50:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WPTavern: Big Bite Creative to Launch New Amnesty International Website based on Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84074\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/big-bite-creative-launches-new-amnesty-international-website-based-on-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4776:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-19-at-10.39.11-AM.png?ssl=1\"><img /></a></p>\n<p>The team at <a href=\"http://bigbitecreative.com\" rel=\"noopener noreferrer\" target=\"_blank\">Big Bite Creative</a> has developed a new website for Amnesty International using Gutenberg, soon to be launched at <a href=\"http://amnesty.eu\" rel=\"noopener noreferrer\" target=\"_blank\">amnesty.eu</a>. The agency worked in partnership with <a href=\"https://vip.wordpress.com\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.com VIP</a> to provide the London-based human rights organization with the tools to create multiple sites that could be uniquely customized for their editorial needs.</p>\n<p>After successfully using Gutenberg to launch a site for an international bank, Big Bite CTO Jason Agnew said his team gained confidence to use the new editor for the Amnesty site. The client approached Bite Bite around the time of WordCamp Europe when Matt Mullenweg unveiled a roadmap for getting a stable Gutenberg release before the end of the year.</p>\n<p>&#8220;On top of this the Amnesty project suited Gutenberg,&#8221; Agnew said. &#8220;Their brief mentioned 14 components which could be used to build out multiple sites. I honestly think it would have been difficult to build something that required this level of flexibility with a field manager like Fieldmanager, CMB2 or ACF. Perhaps it would have been possible with page builders like Visual Composer, but these platforms are still figuring out how they will work with the WordPress 5.0.&#8221;</p>\n<p>Through the use of a combination of prompts, custom blocks, nested blocks, and predefined styles, Big Bite made it possible for even non-technical editorial staff to create and arrange content to build out websites for various outreach locations.</p>\n<p>&#8220;It&#8217;s been fascinating to give the client full control over the site structure compared to the more traditional development of templates,&#8221; Agnew said. &#8220;We are still in the early stages of launching sites with the new platform, but the client has built up the EU site on their own without much support, which should be going live early October. Now they are in the process building out websites for Mali and Iran, with the goal to launch around 20 sites initially. We&#8217;ve had the editorial team describe the experience as fun &#8211; that&#8217;s from a team who have used WordPress with ACF in the past, which does offer an intuitive UI but still requires a level of training of what fields relate to what pieces of content on the front-end.&#8221;</p>\n<p>As many others have reported, one of the most challenging things Big Bite encountered in extending Gutenberg was the project&#8217;s incomplete documentation.</p>\n<p>&#8220;We&#8217;ve had our challenges, and particularly the Gutenberg documentation is not up to standard, which leads to a lot of time being wasted,&#8221; Agnew said. &#8220;But I have to say once our team get over the first block or two it wasn&#8217;t an issue. It&#8217;s important to say that the Gutenberg team Slack have been a great help when we did run into problems. We did discover IE11 support is still a work in progress, for example, copy &amp; paste didn&#8217;t work, meta boxes wouldn&#8217;t render causing saving issues with posts.&#8221;</p>\n<p>Agnew said for most issues there isn&#8217;t a lot one can do to resolve them apart from waiting for each update as the plugin improves, but it&#8217;s something agencies need to account for when working with clients. The Big Bite team also found that Gutenberg compatibility is still an issue for many of the plugins that they looked at using for the project.</p>\n<p>&#8220;Apart from using Yoast we&#8217;ve mainly custom built the theme due to many plugins still requiring UI changes to work well with Gutenberg,&#8221; Agnew said. &#8220;Probably the most significant feature we wrote was language syndication system.&#8221;</p>\n<p>Big Bite plans to open source Amnesty International&#8217;s full theme, which includes all of the custom blocks. Prior to that they are going to remove all the branding to avoid lots of new sites popping looking like the Amnesty brand. The agency is aiming for publishing the code the same day as WordPress 5.0 is released or earlier if the release is delayed beyond January.</p>\n<p>For a closer look at the Amnesty International project, check out Big Bite&#8217;s announcement <a href=\"https://bigbitecreative.com/investing-gutenberg-amnesty-international/\" rel=\"noopener noreferrer\" target=\"_blank\">post</a>. The video below was created in partnership with WordPress.com VIP and offers a tour of some of the custom Gutenberg blocks they created for Amnesty.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Sep 2018 19:12:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"HeroPress: The “India is cheap” Stereotype\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2627\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"https://heropress.com/the-india-is-cheap-stereotype/#utm_source=rss&utm_medium=rss&utm_campaign=the-india-is-cheap-stereotype\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3284:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/10/MeasureSuccess-HeroPress-2-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: Measure success in terms of the impact your work is making.\" /><p>In the early days of HeroPress there were quite a few Indian contributors, for a variety of reasons. India has long been a technology powerhouse, but the WordPress community was just beginning to get traction. I got to meet many Indians and even traveled there for <a href=\"https://heropress.com/going-to-wordcamp-pune/\">WordCamp Pune</a>. The stereotype that &#8220;India is cheap&#8221; is a difficult one for Indians to deal with. What does it mean? How should it be responded to?</p>\n<p>In October of 2015 Rahul Bansal, the owner of a world class WordPress agency named rtCamp, did a HeroPress essay where he talks about what it means to run an agency in India, charge properly, and turn our work that rivals any from anywhere else in the world.  Check out Rahul&#8217;s thoughts:</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-continues-inspire/\">WordPress Continues to Inspire</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The “India is cheap” Stereotype\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20%E2%80%9CIndia%20is%20cheap%E2%80%9D%20Stereotype&via=heropress&url=https%3A%2F%2Fheropress.com%2Fthe-india-is-cheap-stereotype%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The “India is cheap” Stereotype\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fthe-india-is-cheap-stereotype%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fthe-india-is-cheap-stereotype%2F&title=The+%E2%80%9CIndia+is+cheap%E2%80%9D+Stereotype\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The “India is cheap” Stereotype\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/the-india-is-cheap-stereotype/&media=https://heropress.com/wp-content/uploads/2015/10/MeasureSuccess-HeroPress-2-150x150.jpg&description=The “India is cheap” Stereotype\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The “India is cheap” Stereotype\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/the-india-is-cheap-stereotype/\" title=\"The “India is cheap” Stereotype\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/the-india-is-cheap-stereotype/\">The “India is cheap” Stereotype</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Sep 2018 14:59:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: Gutenberg Cloud: A Cross-Platform Community Library for Custom Gutenberg Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=84045\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wptavern.com/gutenberg-cloud-a-cross-platform-community-library-for-custom-gutenberg-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8949:\"<p>During their <a href=\"https://wptavern.com/drupal-gutenberg-project-receives-enthusiastic-reception-at-drupal-europe\" rel=\"noopener noreferrer\" target=\"_blank\">presentation at Drupal Europe</a>, the <a href=\"https://www.frontkom.no/\" rel=\"noopener noreferrer\" target=\"_blank\">Frontkom</a> team behind the Drupal Gutenberg project announced that they are working on a block management system called <a href=\"https://gutenbergcloud.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg Cloud</a>, a collective library of blocks online.</p>\n<p>The library will offer a content repository for custom Gutenberg blocks, such as forms, a call-to-action section, product grid, or even a web component. Since the blocks are JavaScript-only, they would work across both Drupal and WordPress alike, so developers can build for both platforms simultaneously. The Gutenberg Cloud creators are aiming to facilitate a new level of cross-platform sharing that few envisioned when the Gutenberg project began.</p>\n<p>&#8220;Gutenberg to us is much more than just another module,&#8221; Frontkom CIO Per André Rønsen said during their presentation at Drupal Europe. &#8220;We think of it as a platform for brand new features. We are very excited about the sharing/community aspect and the possibilities here. We want to make it easy to share and reuse custom blocks across pages, across projects, across companies, and even across publishing platforms. Drupal has always been great at sharing backend style of code. Now let&#8217;s make it great at sharing frontend code as well. This is why we&#8217;re working on a block managing system.&#8221;</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/gutenberg-cloud.png?ssl=1\"><img /></a></p>\n<p>Gutenberg Cloud would provide a plugin for WordPress and a module for Drupal (and eventually other applications) that would enable users to browse, filter, and discover blocks within the admin and download the ones they select. Early mockups I previewed show an interface similar to the theme and plugin browsers inside the WordPress admin.</p>\n<p>A cloud-based block service solves a few problems that Gutenberg early adopters are already experiencing when hunting for blocks. WordPress theme and plugin shops have have been releasing their own block collections bundled into a plugin, but it&#8217;s not easy to discover or browse the individual blocks. Having blocks available on Gutenberg Cloud would prevent developers from having to create a new module or plugin for each individual block. It also prevents users from having to download an entire collection of blocks in a plugin when they really only need one or two of them.</p>\n<h3>Gutenberg Cloud Will Launch as a Community Project, Developers Contribute by Publishing Packages to NPM</h3>\n<p>Rønsen said they plan to launch Gutenberg Cloud as a community project. Any developer can contribute blocks by creating an NPM package and tagging it with &#8220;gutenberg-cloud.&#8221; The description on the cloud service outlines their intentions: &#8220;Code once, use everywhere: As Gutenberg blocks are CMS-agnostic, we want to provide an ecosystem all systems can connect to.&#8221;</p>\n<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-18-at-3.39.54-PM.png?ssl=1\"><img /></a>An example Hero section block published to NPM\n<p>&#8220;We imagine everything from freelancers to big agencies and even community minded non-profits to contribute,&#8221; Rønsen said. &#8220;When people benefit from a better user experience, they tend to want to pay it forward. We have already talked to people in both communities wanting to contribute with code, so that is a great start for the platform.&#8221;</p>\n<p>I asked if his team envisions block creators being able to sell access to their blocks in the future. He said his team is open to finding a payment solution for commercial blocks but only if the community demands it.</p>\n<p>&#8220;Personally, I would be skeptical about committing to a community project that had a very commercial edge,&#8221; Rønsen said. &#8220;I think it&#8217;s important that the project stays focused on open source contributions, with a sharing-is-caring attitude. It&#8217;s the only language we know in Drupal. However, there is nothing wrong in providing high quality content and getting paid to do it. That&#8217;s why it&#8217;s on our roadmap to facilitate a payment solution for premium blocks – if the community wants it. It&#8217;s not central to the success of the platform, but I imagine it could be a great way to make some money for a skilled designer.&#8221;</p>\n<p>Rønsen said his team plans to launch Gutenberg Cloud sometime later this year after completing internal testing and an invitation-only closed beta with a different companies. One of the most challenging aspect of the project is creating a system that can handle updates.</p>\n<p>&#8220;By default users will get the latest stable release for the block from the author,&#8221; Rønsen said. &#8220;There will be a way to lock into a specific version and to version control that in Git, however. The plugin update system is a good analogy, but the infrastructure is completely outside of WordPress core. There are also some issues we haven’t solved yet regarding updates; it’s hard to make a system that doesn’t require a high maintenance effort for block developers.&#8221;</p>\n<p>The Gutenberg Cloud project is contingent upon Gutenberg development continuing on a path towards being a library that is decoupled from WordPress. Last week Rønsen <a href=\"https://wptavern.com/drupal-gutenberg-project-receives-enthusiastic-reception-at-drupal-europe\" rel=\"noopener noreferrer\" target=\"_blank\">told</a> the Tavern that his team hopes &#8220;that Gutenberg core devs will catch onto the vision of Gutenberg as the ‘editor for the open web’ — not just for WordPress.&#8221;</p>\n<p>Gutenberg team member Gary Pendergast indirectly acknowledged this in a recent blog <a href=\"https://pento.net/2018/09/16/the-mission-democratise-publishing/\" rel=\"noopener noreferrer\" target=\"_blank\">post</a> that affirmed the Drupal Gutenberg project and reiterated WordPress&#8217; mission to democratize publishing.</p>\n<p>&#8220;One of the primary philosophies of Gutenberg’s technical architecture is platform agnosticism, and we can see the practical effects of this practice coming to fruition across a variety of projects,&#8221; Pendergast said.</p>\n<p>&#8220;From early experiments in running the block editor as a standalone application, to being able to compile it into a native mobile component, and now seeing it running on Drupal, Gutenberg’s technical goals have always included a radical level of platform agnosticism.&#8221;</p>\n<p>If the Drupal community ends up adopting Gutenberg for its core editor, the shared library presents an unprecedented opportunity for deeper collaboration across the two publishing platforms. As an agency that has done client work for publishers on both CMSs, Frontkom saw the potential before many others and took it upon themselves to fork Gutenberg for Drupal. This is the beauty of open source software in action.</p>\n<p>&#8220;WordPress has many advantages that make it so popular, but hoarding those to ourselves doesn’t help the open web, it just creates more silos,&#8221; Pendergast said. &#8220;The open web is the only platform on which publishing can be democratized, so it makes sense for Gutenberg to work anywhere on the open web, not just inside WordPress. Drupal isn’t a competitor here, we’re all working towards the same goal, the different paths we’ve taken have made the open web stronger as a whole.&#8221;</p>\n<p>Rønsen said he could see other applications and e-commerce platforms like Magento benefitting from better page-building tools. His company has a special interest in publishers and plans to release a set of open source tools for building news front pages later in 2018. Rønsen said he is hopeful the Drupal Gutenberg project can evolve alongside WordPress as it enters into the site building and customization phase of the project.</p>\n<p>&#8220;I&#8217;m hopeful that the Gutenberg project will stay decoupled from WP one way or another,&#8221; Rønsen said. &#8220;This will leave room for Drupal to innovate on top of it. It could even be the case that the page building tools and customizer integration in WP will play nicely into the current architecture. In any case, I believe the basics of the editor and block concept will continue to be a good fit for Drupal. There is already some consensus out there on how to use Gutenberg for page building. A great example, is <a href=\"https://www.youtube.com/watch?v=OgF5ImDlCTw\" rel=\"noopener noreferrer\" target=\"_blank\">Big Bite&#8217;s work with Amnesty</a>. If the continued experience is anything like that, I think we have a perfect match.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 18 Sep 2018 22:38:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Matt: CEOs and the Real World\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48345\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ma.tt/2018/09/ceos-and-the-real-world/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4867:\"<blockquote class=\"wp-block-quote\"><p>The downside of Zuckerberg’s exalted status within his company is that it is difficult for him to get genuine, unexpurgated feedback. He has tried, at times, to puncture his own bubble. In 2013, as a New Year’s resolution, he pledged to meet someone new, outside Facebook, every day. In 2017, he travelled to more than thirty states on a “listening tour” that he hoped would better acquaint him with the outside world. David Plouffe, President Obama’s former campaign manager, who is now the head of policy and advocacy at the Chan Zuckerberg Initiative, the family’s philanthropic investment company, attended some events on the tour. He told me, “When a politician goes to one of those, it’s an hour, and they’re talking for fifty of those minutes. He would talk for, like, five, and just ask questions.”</p><p>But the exercise came off as stilted and tone-deaf. Zuckerberg travelled with a professional photographer, who documented him feeding a calf in Wisconsin, ordering barbecue, and working on an assembly line at a Ford plant in Michigan. Online, people joked that the photos made him look like an extraterrestrial exploring the human race for the first time. A former Facebook executive who was involved in the tour told a friend, “No one wanted to tell Mark, and no one did tell Mark, that this really looks just dumb.”</p></blockquote>\n\n<p>There seem to be three communication gaps outlined here in Evan Osnos&#8217;s <a href=\"https://www.newyorker.com/magazine/2018/09/17/can-mark-zuckerberg-fix-facebook-before-it-breaks-democracy\">revealing profile of Mark Zuckerberg</a>: one is getting unvarnished feedback from your employees. Speaking as a fellow CEO and founder, it&#8217;s certainly hard to pop that bubble &#8212; see <a href=\"https://www.youtube.com/watch?v=uAxAVusStCg\">&#8220;the bear is sticky with honey.&#8221;</a> There are a few techniques like skip-level 1:1 meetings, anonymous feedback forms, interviewing new hires, and 360 reviews you can do to try to counter this, but there&#8217;s no panacea and this one requires constant work as you scale.</p>\n\n<p>The second gap is getting the unvarnished truth from your users &#8212; much easier, as they&#8217;re quite happy to tell you what&#8217;s what. I&#8217;ve recently started cold-calling (yes, on the phone!) some of our Jetpack customers just to understand what they love and don&#8217;t love about the experience and about how we can help them solve their business challenges. There&#8217;s a casual intimacy to phone conversations that just can&#8217;t be replicated in other user feedback forums. Pair this with good instrumentation throughout your product so you see what people do and not just what they say and you&#8217;re golden.</p>\n\n<p>The third and last communication gap is the connection to the world as most people experience it. If your status, wealth, or celebrity reach a point that they are shutting you out from &#8220;real&#8221; experiences, take some risks and get outside of your comfort zone. As it turns out, <a href=\"https://www.gq.com/story/the-untold-stories-of-paul-mccartney\">this new GQ profile of Paul McCartney offered a tip on that: </a></p>\n\n<blockquote class=\"wp-block-quote\"><p>McCartney tells me a further such story of a time he took the Hampton Jitney, the slightly upmarket bus service that runs from the Hamptons into Manhattan, because he was deep into Charles Dickens&#8217;s Nicholas Nickleby and he wanted to finish it, and how he then took a local bus uptown, and when a woman blurted from across the bus, &#8220;Hey! Are you Paul McCartney?&#8221; he invited her to sit next to him and chatted all the way uptown. &#8220;It&#8217;s a way of not worrying about your fame,&#8221; he says. &#8220;It&#8217;s a way of not turning into the reclusive rock star. I often say to Nancy: I get in their faces before they get a chance to get in mine.&#8221;</p></blockquote>\n\n<p>Makes me wonder if <a href=\"https://techcrunch.com/2012/09/12/jack-dorsey-bus-bubble/\">Jack Dorsey still rides the bus to work every day</a>. I think this is what Zuckerberg was attempting with his 30-state tour, and hopefully it was helpful even if the optics didn&#8217;t appeal to everyone — the daily habit of his 2013 resolution to meet someone new every day feels more powerful than the touristic 30-state one. But for an entity as large as Facebook maybe it&#8217;s moot, as Casey Newton pointed out <a href=\"https://www.getrevue.co/profile/caseynewton/issues/the-trouble-with-mark-zuckerberg-profiles-133299\">in his newsletter last week</a> it can be quite hard to pin the answers to Facebook&#8217;s real problems, and our democracy&#8217;s real challenges <a href=\"https://ma.tt/2018/09/responsibility-of-technology/\">in the face of targeted online propaganda</a>, to just one person.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 18 Sep 2018 21:35:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WPTavern: Hybrid Core 5.0 Offers a More Modern, Modular Approach to WordPress Theme Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83987\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wptavern.com/hybrid-core-5-0-offers-a-more-modern-modular-approach-to-wordpress-development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3877:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/09/coffee-computer.jpg?ssl=1\"><img /></a>image credit: <a href=\"https://stocksnap.io/photo/JFPYO9HEZR\">Shopify</a>\n<p><a href=\"https://themehybrid.com/weblog/hybrid-core-version-5-0\" rel=\"noopener noreferrer\" target=\"_blank\">Version 5.0</a> of Hybrid Core, one of the longest-running WordPress theme frameworks, is now available. Justin Tadlock celebrated 10 years with his Theme Hybrid community last month and <a href=\"https://wptavern.com/mythic-a-wordpress-starter-theme-by-justin-tadlock-now-in-open-beta\" rel=\"noopener noreferrer\" target=\"_blank\">released his new Mythic starter theme into beta</a>. Mythic was built on top of Hybrid Core and developed in tandem with version 5.0.</p>\n<p>The framework has been rewritten almost entirely from scratch to be a leaner, more modern starting place for theme development. Tadlock describes it as &#8220;a fundamentally different framework, rewritten from the ground up, that supports more modern PHP practices.&#8221;</p>\n<p>&#8220;I started 5.0 with a goal of bringing the framework up to date with more modern PHP practices and code,&#8221; he said. &#8220;The first iteration of the framework was built in 2008, so it was time to get us ready for the next era of theme building.&#8221;</p>\n<p>In nearly a decade of supporting the framework, Tadlock found that users didn&#8217;t always know how to get started building something from scratch. Many copied one of his existing themes and would add and remove things from it based on their own needs.</p>\n<p>Version 5.0 doesn&#8217;t necessarily make it easier to build on top of Hybrid Core with its new, more complicated method of bootstrapping, new <a href=\"https://themehybrid.com/weblog/working-with-the-view-class\" rel=\"noopener noreferrer\" target=\"_blank\">view system for templating</a>, and requirement for using <a href=\"https://getcomposer.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Composer</a>. This is why Tadlock is officially recommending <a href=\"https://themehybrid.com/themes/mythic\" rel=\"noopener noreferrer\" target=\"_blank\">Mythic</a> as the path for building a theme with Hybrid Core in the future. Most of the documentation and tutorials he plans to create in the future will be centered around the Mythic starter theme, which is nearing a 1.0 release.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">We just closed all tickets on the 1.0.0 milestone for the Mythic starter theme! It feels pretty good.</p>\n<p>Barring any OMGBBQ issues between now and tomorrow, you should see an announcement post from me.<a href=\"https://t.co/J4CGLKa1y5\">https://t.co/J4CGLKa1y5</a></p>\n<p>&mdash; Justin Tadlock (@justintadlock) <a href=\"https://twitter.com/justintadlock/status/1041808697813598208?ref_src=twsrc%5Etfw\">September 17, 2018</a></p></blockquote>\n<p></p>\n<p>For many theme developers, Mythic&#8217;s use of the BEM (Block-Element-Modifier) CSS class-naming system is their first introduction to a system of non-hierarchal, component-based CSS. Because BEM doesn&#8217;t rely on nested selectors, it&#8217;s easier for users to overwrite CSS that they want to change. Tadlock explains the benefit for child themes in a recent post about <a href=\"https://themehybrid.com/weblog/why-mythic-uses-bem\" rel=\"noopener noreferrer\" target=\"_blank\">why Mythic uses BEM</a>.</p>\n<p>A handful of the Hybrid add-ons are now available as Composer packages, including one for breadcrumbs, customizer controls and settings, Google fonts, and a featured image script. Tadlock plans to split more parts of the framework off into packages in the future for an increasingly modular core.</p>\n<p>Hybrid Core 5.0 requires PHP 5.6+ (with 7.0+ recommended) and WordPress 4.9.6+. Tadlock will support Hybrid Core&#8217;s 4.x series for at least another year to give theme authors time to adapt.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 18 Sep 2018 04:07:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Yoast SEO 8.2 Adds How-To and FAQ Gutenberg Blocks with Structured Data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83822\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/yoast-seo-8-2-adds-how-to-and-faq-gutenberg-blocks-with-structured-data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2422:\"<p><a href=\"https://yoast.com/yoast-seo-8-2/\" rel=\"noopener noreferrer\" target=\"_blank\">Yoast SEO 8.2</a> was released last week with the plugin&#8217;s first tools designed specifically for Gutenberg. It includes two new How-To and FAQ structured data content blocks for early adopters of the new editor.</p>\n<p>Structured data is content that can be marked up with a shared vocabulary, such as the one provided by <a href=\"http://Schema.org\" rel=\"noopener noreferrer\" target=\"_blank\">Schema.org</a>. Content like products, books, reviews, podcasts, events, and recipes lend themselves well to this specific type of organization. Structured data helps search engines index the site more effectively and communicate results in more compelling ways, such as rich snippets, rich cards, or voice search.</p>\n<p>Structured data is not easy for most WordPress users to implement without the help of a plugin. Now that more content is being created in Gutenberg, users who want their content to display as enhanced search results will need to seek out plugins that make that an automatic part of the content creation process.</p>\n<p>The plugin outlines all the necessary data the users needs to add in order for the How-To and FAQ content blocks to appear as valid pieces of structured data.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/faq-structured-data-yoast-seo.png?ssl=1\"><img /></a></p>\n<p>Alongside this release, Yoast&#8217;s <a href=\"https://yoast.com/wordpress/plugins/local-seo/\" rel=\"noopener noreferrer\" target=\"_blank\">Local SEO</a> and the <a href=\"https://yoast.com/wordpress/plugins/local-seo-for-woocommerce/\" rel=\"noopener noreferrer\" target=\"_blank\">WooCommerce SEO</a> plugins have also added two new structured data Gutenberg blocks: an address block and a Google Maps block.</p>\n<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/local_seo_content_blocks.jpg?ssl=1\"><img /></a>image credit: <a href=\"https://yoast.com/yoast-seo-8-2/\">Yoast.com</a>\n<p>In the future the Yoast team plans to create many more structured data blocks.</p>\n<p>&#8220;We’ll work first on blocks which we can dogfood on Yoast.com, like Job posting and Event,&#8221; Yoast CTO Omar Reiss <a href=\"https://yoast.com/content-blocks-future-benefit-seo/\" rel=\"noopener noreferrer\" target=\"_blank\">said</a>. &#8220;After that, we’ll just go for the popular ones, like Recipe.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 17:43:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Gary: The Mission: Democratise Publishing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"https://pento.net/?p=1909\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pento.net/2018/09/16/the-mission-democratise-publishing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5406:\"<p>It&#8217;s exciting to see the <a href=\"https://drupalgutenberg.org/\">Drupal Gutenberg</a> project getting under way, it makes me proud of the work we&#8217;ve done ensuring the flexibility of the underlying Gutenberg architecture. One of the primary philosophies of Gutenberg&#8217;s technical architecture is platform agnosticism, and we can see the practical effects of this practice coming to fruition across a variety of projects.</p>\n\n<p>Yoast are <a href=\"https://yoast.com/yoast-seo-8-2/\">creating new features for the block editor</a>, as well as <a href=\"https://yoast.com/yoast-seo-8-0-introducing-the-yoast-seo-gutenberg-sidebar-a-revamped-meta-box/\">porting existing features</a>, which they&#8217;re able to <a href=\"https://twitter.com/aaronjorbin/status/1040988210682318848\">reuse in the classic editor</a>.</p>\n\n<p>Outside of WordPress Core, the Automattic teams who work on <a href=\"https://github.com/Automattic/wp-calypso\">Calypso</a> have been <a href=\"https://github.com/Automattic/wp-calypso/search?q=gutenberg\">busy</a> adding Gutenberg support, in order to make the block editor interface available on WordPress.com. Gutenberg and Calypso are large JavaScript applications, built with strong opinions on design direction and technical architecture, and having <a href=\"https://github.com/Automattic/wp-calypso/issues/27034\">significant component overlap</a>. That these two projects can function together at all is something of an obscure engineering feat that&#8217;s both difficult and overwhelming to appreciate.</p>\n\n<p>If we reached the limit of Gutenberg&#8217;s platform agnosticism here, it would still be a successful project.</p>\n\n<p>But that&#8217;s not where the ultimate goals of the Gutenberg project stand. From <a href=\"https://github.com/youknowriad/standalone-gutenberg\">early experiments</a> in running the block editor as a <a href=\"https://gutenberg-standalone.surge.sh/\">standalone application</a>, to being able to compile it into a <a href=\"https://github.com/wordpress-mobile/gutenberg-mobile\">native mobile component</a>, and now seeing it <a href=\"https://www.drupal.org/project/gutenberg\">running on Drupal</a>, Gutenberg&#8217;s technical goals have always included a radical level of platform agnosticism.</p>\n\n<h2>Better Together</h2>\n\n<p>Inside the WordPress world, significant effort and focus has been on ensuring backwards compatibility with existing WordPress sites, plugins, and practices. Given that WordPress is such a hugely popular platform, it&#8217;s exceedingly important to ensure this is done right. With Gutenberg expanding outside of the WordPress world, however, we&#8217;re seeing different focuses and priorities arise.</p>\n\n<p>The <a href=\"https://gutenbergcloud.org/\">Gutenberg Cloud</a> service is a fascinating extension being built as part of the Drupal Gutenberg project, for example. It provides a method for new blocks to be shared and discovered, the <a href=\"https://www.npmjs.com/package/@frontkom/g-hero-section\">sample hero block</a> sets a clear tone of providing practical components that can be rapidly put together into a full site. While we&#8217;ve certainly seen similar services appear for the various site builder plugins, this is the first one (that I&#8217;m aware of, at least) build specifically for Gutenberg.</p>\n\n<p>By making the Gutenberg experience available for everyone, regardless of their technical proficiency, experience, or even <em>preferred platform</em>, we pave the way for a better future for all.</p>\n\n<h2>Democratising Publishing</h2>\n\n<p>You might be able to guess where this is going. <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f609.png\" alt=\"😉\" class=\"wp-smiley\" /></p>\n\n<p>WordPress&#8217; mission is to &#8220;democratise publishing&#8221;. It isn&#8217;t to &#8220;be the most popular CMS&#8221;, or to &#8220;run on old versions of PHP&#8221;, though it&#8217;s easy to think that might be the case on the surface. That these statements are true is simply a side effect of the broader principle: All people, regardless of who they are or where they come from, should be able to publish their content as part of a free and open web.</p>\n\n<p>The WordPress mission is not to &#8220;democratise publishing with WordPress&#8221;.</p>\n\n<p>WordPress has many advantages that make it so popular, but hoarding those to ourselves doesn&#8217;t help the open web, it just creates more silos. The open web is the only platform on which publishing can be democratised, so it makes sense for Gutenberg to work anywhere on the open web, not just inside WordPress. Drupal isn&#8217;t a competitor here, we&#8217;re all working towards the same goal, the different paths we&#8217;ve taken have made the open web stronger as a whole.</p>\n\n<p>Much as the block editor has been the first practical implementation of the Gutenberg architecture, WordPress is simply the first practical integration of the block editor into a CMS. The Gutenberg project will expand into site customisation and theming next, and while there&#8217;s no requirement that Drupal make use of these, I&#8217;d be very interested to see what they came up with if they did. Bringing together our many years of experience in tackling these complex problems can only make the end result better.</p>\n\n<p>I know I&#8217;m looking forward to all of us working together for the betterment of the open web.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 16 Sep 2018 04:48:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Gary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: Gutenberg 3.8 Released, Adds Full Screen Mode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83861\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wptavern.com/gutenberg-3-8-released-adds-full-screen-mode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2254:\"<p>Gutenberg 3.8 is <a href=\"https://wordpress.org/plugins/gutenberg/\">available for download</a>. This release features a full screen mode that hides both the admin bar and the menu. Unlike previous versions of Distraction-Free-Writing mode where things would fade in and out of view, these two items stay hidden until full-screen mode is disabled.</p>\n\n<p>User Interface elements have been added to manage reusable blocks in bulk. Theme authors are now able to <a href=\"https://github.com/WordPress/gutenberg/pull/9008\">register editor styles</a> for blocks by targeting the blocks themselves. This avoids combating CSS specificity and doesn&#8217;t require knowledge of the internal DOM structure for the editor. </p>\n\n<p>The block settings icon has been moved from the right side of blocks to the toolbar. This change sets the foundation for refactoring the toolbar and it reduces clutter by keeping the icons together.<br /></p>\n\n<img />Block Settings Moved to The Right Side of The Toolbar\n\n<p>Gutenberg 3.8 also contains a significant increase in performance thanks to a new <a href=\"https://github.com/WordPress/gutenberg/pull/8083\">hand-coded default</a> block parser. </p>\n\n<blockquote class=\"wp-block-quote\"><p>Having a formal specification of the Gutenberg block grammar has allowed us both to maintain a stable core during the almost 40 releases of the plugin and lately to allow competing parser implementation to evolve and be compared in terms of performance and correctness. </p><p>In concrete terms, we are shipping <a href=\"https://github.com/WordPress/gutenberg/pull/8083\">a new default implementation</a> that is hundreds of times faster than the spec and has been stress tested with really long posts (including Moby Dick). These tests are also available for anyone to run against. Memory consumption has also gone down dramatically for server side operations. I’d like to specially thank Dennis Snell and Ivan Enderlin for their great work improving this area.</p><cite>Matias Ventura </cite></blockquote>\n\n<p>To see a complete list of changes along with links to their corresponding pull requests, check out <a href=\"https://make.wordpress.org/core/2018/09/12/whats-new-in-gutenberg-12th-september/\">the release post.</a> </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 15 Sep 2018 00:08:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Gutenberg is Slowly Rolling Out to WordPress.com Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83331\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/gutenberg-is-slowly-rolling-out-to-wordpress-com-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1483:\"<p>As part of <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">the roadmap</a> unveiled at WordCamp EU earlier this year, WordPress.com has started rolling out Gutenberg to a subset of users. </p>\n\n<div class=\"wp-block-image\"><img />Try Gutenberg Call-out on WordPress.com</div>\n\n<p>According to a <a href=\"https://en.forums.wordpress.com/topic/information-on-gutenberg-implementation/#post-3173840\">WordPress.com Happiness Engineer</a>, the team is testing the implementation to determine the best way and time to enable it. Users will not be able to use Gutenberg unless their theme is updated to support blocks and the various alignment options. </p>\n\n<p>Theme Wranglers are already in the process of adding support to WordPress.com&#8217;s nearly 100 free themes.</p>\n\n<p>A <a href=\"https://en.forums.wordpress.com/search/gutenberg/\">quick search</a> of the WordPress.com support forums for Gutenberg provides some insight into what users think about the new editor. For example, <a href=\"https://en.forums.wordpress.com/topic/new-gutenberg-editing/\">this user provided feedback</a> on the use of so many icons without displaying their textual equivalent. </p>\n\n<p>For now, Gutenberg is opt-in but eventually will be opt-out. Once Gutenberg is made available to a wider audience, support documents and official blog posts will be published to inform users about the new editor. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 23:24:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Drupal Gutenberg Project Receives Enthusiastic Reception at Drupal Europe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83854\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/drupal-gutenberg-project-receives-enthusiastic-reception-at-drupal-europe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6188:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-14-at-2.59.59-PM.png?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://wptavern.com/first-look-at-live-demo-of-the-gutenberg-content-editor-for-drupal-8\" rel=\"noopener noreferrer\" target=\"_blank\">Drupal Gutenberg</a> project is gaining momentum after Per André Rønsen and Marco Fernandes gave a presentation at Drupal Europe this week titled &#8220;Introducing the Gutenberg content editor for Drupal 8.&#8221; Rønsen and Fernandes are representatives of Frontkom, a digital services agency based in Norway that has ported WordPress&#8217; Gutenberg editor over to Drupal for use with client projects. They also created the <a href=\"https://drupalgutenberg.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Drupal Gutenberg</a> project, which aims to bring this new publishing experience to Drupal core.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Building landing pages in <a href=\"https://twitter.com/hashtag/Drupal?src=hash&ref_src=twsrc%5Etfw\">#Drupal</a> has never been easier. Coming soon to a Drupal site near you! <a href=\"https://twitter.com/hashtag/drupaleurope?src=hash&ref_src=twsrc%5Etfw\">#drupaleurope</a> <a href=\"https://t.co/LLpH91AY9n\">pic.twitter.com/LLpH91AY9n</a></p>\n<p>&mdash; drupalgutenberg (@drupalgutenberg) <a href=\"https://twitter.com/drupalgutenberg/status/1040203765452820480?ref_src=twsrc%5Etfw\">September 13, 2018</a></p></blockquote>\n<p></p>\n<p>The Frontkom team gave a live demo of the Gutenberg module added to the page content type and showed how a few of the core blocks work. They concluded the presentation by hailing Gutenberg as an exciting new tool that will bring companies new business, make happier clients, and inspire more code reuse and sharing among developers.</p>\n<p>&#8220;The reception has been amazing,&#8221; Rønsen said. &#8220;A lot of different speakers have referred to Gutenberg both before and after the session. Bigger organizations and companies have expressed interest in implementation and contributing. I was told the session was one of the most well visited (after the keynotes) in the whole conference.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Gutenberg for Drupal looks good <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f4a5.png\" alt=\"💥\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f4a5.png\" alt=\"💥\" class=\"wp-smiley\" /> GoGo <a href=\"https://twitter.com/frontkom?ref_src=twsrc%5Etfw\">@frontkom</a> <a href=\"https://twitter.com/hashtag/DrupalEurope?src=hash&ref_src=twsrc%5Etfw\">#DrupalEurope</a> <a href=\"https://t.co/rV6dRT76Rk\">pic.twitter.com/rV6dRT76Rk</a></p>\n<p>&mdash; Daniel Andersson (@moppedanne) <a href=\"https://twitter.com/moppedanne/status/1039852251173543936?ref_src=twsrc%5Etfw\">September 12, 2018</a></p></blockquote>\n<p></p>\n<p>Overall, the Drupal community gave the Gutenberg editor a positive reception. However, Rønsen said he received feedback from some who are concerned about how it stores data. He said the general consensus was that &#8220;the UI is awesome,&#8221; but that the Drupal Gutenberg project would need to make sure data is stored in way that is as structured and portable as possible.</p>\n<p>&#8220;Some developers are skeptical about storing too much data unstructured like Gutenberg does,&#8221; Rønsen said. &#8220;This also means we might integrate Gutenberg closer to some key Drupal modules used for structured page building today. Gutenberg can serve as a UI for embedding existing structured content, and that is something we are looking into.&#8221;</p>\n<p>Rønsen said the next steps are centered around getting a stable release that will handle the core Gutenberg blocks and the core D8 blocks in a way that is future proof. In order to do this, they are waiting for the project to be merged into WordPress core.</p>\n<p>&#8220;We will delay a stable release until Gutenberg is in WP core,&#8221; Rønsen said. &#8220;Things are moving very fast still with Gutenberg – and that’s a good thing. As soon as we have a stable release, we will introduce tools we have built in top of Gutenberg for publishers. These will be available to WordPress, too.&#8221;</p>\n<h3>Gutenberg as the “editor for the open web” — not just for WordPress</h3>\n<p>One of the most exciting aspects of the Frontkom team&#8217;s presentation was the idea of sharing a project across publishing platforms.</p>\n<p>&#8220;It is key for us that Gutenberg stays decoupled from both CMSs as a library, and our hope is that Gutenberg core devs will catch onto the vision of Gutenberg as the &#8216;editor for the open web&#8217; — not just for WordPress,&#8221; Rønsen said.</p>\n<p>&#8220;Drupal core developers are however planning a React-based revamp of the Drupal admin UI, too. It will take at least two years to release it, and even then, I’m of the opinion that the content edit UI and page building features should be done last, and rather leave room for third party solutions like Gutenberg. This is an open question, but at least the key decisions makers for the new UI will consider how Gutenberg works and learn from it.&#8221;</p>\n<p>Drupal decision makers are also taking interest in Gutenberg and seem open to considering it as viable option for improving the CMS&#8217;s editing experience.</p>\n<p>&#8220;When the Drupal project owner was asked directly in a Q&amp;A what he thought about solutions like Gutenberg coming into Drupal, he said he liked it, and that it’s a good thing for Drupal,&#8221; Rønsen said. &#8220;Dries is very open minded and not afraid of the concept of &#8216;Proudly built elsewhere.\'&#8221;</p>\n<p>Rønsen and Fernandes have <a href=\"https://docs.google.com/presentation/d/1Rm1tiXR9sAVqasT8L8SZCg1LBVuTTuG3otNj_3Sj2r8/edit#slide=id.g321e3b1fbe_0_57\" rel=\"noopener noreferrer\" target=\"_blank\">published the slides</a> for those who want to view them, although most of the session was devoted to the live demo. The official recording has not yet been posted but should be available shortly.</p>\n<p>Update: The official recording has been published:</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 22:31:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"BuddyPress: BuddyPress 3.2.0 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=276415\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://buddypress.org/2018/09/buddypress-3-2-0-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"<p>BuddyPress 3.2.0 is now available. This is a maintenance release that fixes 25 bugs and is a recommended upgrade for all BuddyPress installations.</p>\n<p>Update to BuddyPress 3.2.0 today in your WordPress Dashboard, or by <a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the wordpress.org plugin repository</a>. For details on the changes, read the <a href=\"https://codex.buddypress.org/releases/version-3-2-0/\">3.2.0 release notes</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 15:14:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Gibbs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WPWeekly Episode 330 – WPShout, Community, and Burnout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=83932&preview=true&preview_id=83932\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpweekly-episode-330-wpshout-community-and-burnout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2001:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by Fred Meyer, David Hayes, and Alex Denning of <a href=\"https://wpshout.com/\">WPShout</a> to learn about <a href=\"https://wpshout.com/announcing-pro-community/\">WPShout&#8217;s Pro Community</a>. This community aims to bring people together to learn from each other and provide one-to-one mentorship opportunities with David and Fred.</p>\n<p>Later in the show, John and I discuss why it&#8217;s a matter of when and not if, Dark Mode will be added to WordPress. We round out the show by discussing burnout and some other personal things.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/dark-mode-is-possibly-coming-to-a-wordpress-dashboard-near-you\">Dark Mode is Possibly Coming to a WordPress Dashboard Near You</a></p>\n<p><a href=\"https://wptavern.com/wordpress-coding-standards-1-1-0-released\">WordPress Coding Standards 1.1.0 Released</a></p>\n<p><a href=\"https://wptavern.com/meetup-group-organizers-can-now-earn-a-wordpress-org-user-profile-badge\">Meetup Group Organizers Can Now Earn A WordPress.org User Profile Badge</a></p>\n<p><a href=\"https://wptavern.com/marcel-bootsman-is-walking-700km-to-wordcamp-europe-to-raise-funds-for-donatewc\">Marcel Bootsman is Walking 700km to WordCamp Europe to Raise Funds for DonateWC</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, September 26th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #330:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 22:24:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"WPTavern: WordPress 4.9.9 Release Focus Items Include Site Health Project and Gutenberg Preparation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83892\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://wptavern.com/wordpress-4-9-9-release-focus-items-include-site-health-project-and-gutenberg-preparation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2819:\"<p>The WordPress 4.9.9 release leads published a <a href=\"https://make.wordpress.org/core/2018/09/12/wordpress-4-9-9-minor-release-roadmap/\" rel=\"noopener noreferrer\" target=\"_blank\">roadmap for the release</a> this week. The minor release will be led by Anthony Burchell and Alain Schlesser. It is targeted for November 5 with the first beta arriving near the end of October.</p>\n<p>The leads identified four key focus areas for the upcoming release: accessibility, internationalization, the Site Health Project, and Gutenberg preparation. The internationalization focus is aimed at improving translations and RTL support, as well as ensuring that date/time values work. The roadmap doesn&#8217;t identify any specific accessibility items but Burchell said the leads see lots of ways they can &#8220;drastically improve the experience for a lot of people with minimal effort.&#8221;</p>\n<p>Contributors to the Site Health Project, previously known by the &#8220;Servehappy&#8221; code name, will be working on resolving issues that will allow users to stay on WordPress 4.9.9 while they prepare for 5.0 and still have access to the important information about how to update their PHP versions.</p>\n<p>&#8220;It will be crucial to get the Servehappy components included: WSOD protection, update dashboard notice, plugin version requirements,&#8221; Burchell said. &#8220;The reason for this focus is because, when 5.0 ships, users who decide not to upgrade will be on 4.9.9 for a potentially extended time period. If we don’t have these Servehappy components included in 4.9.9, getting rid of old PHP versions will only happen after 5.0.&#8221;</p>\n<p>Another major part of WordPress 4.9.9 will be landing items that lay the groundwork for anything necessary for Gutenberg&#8217;s merge into 5.0. Two items identified include <a href=\"https://core.trac.wordpress.org/ticket/44758\" rel=\"noopener noreferrer\" target=\"_blank\">user locale support in REST API endpoints</a> and <a href=\"https://core.trac.wordpress.org/ticket/44862\" rel=\"noopener noreferrer\" target=\"_blank\">endpoints to lock/unlock and release posts</a>.</p>\n<p>With an unusually quick turnaround, WordPress 5.0 could arrive before the end of 2018. Development will kick off in mid-November, one week ahead of the U.S. Thanksgiving holiday.</p>\n<p><strong>UPDATE 9/13/2018 &#8211; 8:13PM:</strong> The wording on the roadmap document has been updated to more accurately reflect the intentions of contributors regarding the work outlined for the Site Health Project. The roadmap now reads:</p>\n<p><em>&#8220;We will investigate the work remaining for the Servehappy project and determine how to get it in people’s hands as soon as possible. WSOD protection, update dashboard notice, plugin version requirements are the hot items pending.&#8221;</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 17:58:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: Diversity of Thought\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2623\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://heropress.com/diversity-of-thought/#utm_source=rss&utm_medium=rss&utm_campaign=diversity-of-thought\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3237:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/09/092017-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I became completely inspired by the mission of WordPress. I had become a part of something bigger than myself.\" /><p>About a year ago, Christie Chirinos wrote the essay &#8220;<a href=\"https://heropress.com/essays/what-i-do-does-not-define-who-i-am/\">What I Do Does Not Define Who I Am</a>&#8220;. It felt like a big deal at the time, and it was, but like most big deals, it slowly faded from memory. That&#8217;s one of the reasons I do these replays, for the benefit of my own memory as much as anything else.</p>\n<p>As I&#8217;ve mentioned, part of the goal of HeroPress is to speak to those with less privilege and show how WordPress can help overcome that. That message shouldn&#8217;t come from me, a white American male. I simply don&#8217;t have the experience. I can read about it, but I&#8217;ll never actually have the experiences.</p>\n<p>The story really needs to come from someone with experience. Christie has some of that experience, and she does a wonderful job talking about how WordPress helped a little bit. I hope her story helps.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/what-i-do-does-not-define-who-i-am/\">What I Do Does Not Define Who I Am</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Diversity of Thought\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Diversity%20of%20Thought&via=heropress&url=https%3A%2F%2Fheropress.com%2Fdiversity-of-thought%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Diversity of Thought\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fdiversity-of-thought%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fdiversity-of-thought%2F&title=Diversity+of+Thought\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Diversity of Thought\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/diversity-of-thought/&media=https://heropress.com/wp-content/uploads/2018/09/092017-150x150.jpg&description=Diversity of Thought\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Diversity of Thought\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/diversity-of-thought/\" title=\"Diversity of Thought\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/diversity-of-thought/\">Diversity of Thought</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 16:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: Official WooCommerce Android App Now in Beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83859\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wptavern.com/official-woocommerce-android-app-now-in-beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3827:\"<p>The first official <a href=\"https://woocommerce.com/mobile/\" rel=\"noopener noreferrer\" target=\"_blank\">WooCommerce Android app</a> is now in open beta. The companion mobile app allows users to manage their WooCommerce stores on the go. Store owners who want to test the unreleased version of the mobile app can <a href=\"https://play.google.com/apps/testing/com.woocommerce.android\" rel=\"noopener noreferrer\" target=\"_blank\">sign up with the Google Play Store</a>. The WooCommerce app <a href=\"https://woocommercehalo.wordpress.com/faq/\" rel=\"noopener noreferrer\" target=\"_blank\">requires Jetpack</a> to connect stores to the app.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Manage-Orders@2x.jpg?ssl=1\"><img /></a></p>\n<p>The beta introduces a basic set of features for managing orders, viewing store stats, and receiving sales notifications, including the following:</p>\n<ul>\n<li>Check basic orders and revenue statistics with time period selection.</li>\n<li>View orders list in chronological order, with status and total value.</li>\n<li>Review individual orders with all the standard details, and contact customers.</li>\n<li>Perform basic order fulfillment.</li>\n<li>Get notifications about orders and reviews, and the ability to moderate them.</li>\n<li>View a list of the top-selling products on your store.</li>\n</ul>\n<p>The app&#8217;s real-time order alerts even include an optional &#8220;cha-ching&#8221; sounds for new orders.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Push-Notifications@2x.jpg?ssl=1\"><img /></a></p>\n<p>Over the past few years, the WooCommerce community has demonstrated a demand for mobile apps on both platforms. A <a href=\"http://ideas.woocommerce.com/forums/133476-woocommerce/suggestions/6172593-android-equivalent-of-woocommerce-ios-app\" rel=\"noopener noreferrer\" target=\"_blank\">suggestion for an Android app</a> received 533 upvotes on the WooCommerce ideas board. There is also a motley assortment of unofficial WooCommerce store management apps available on the Google Play Store. Some of the more popular ones include <a href=\"https://play.google.com/store/apps/details?id=com.woostore.wooforce\" rel=\"noopener noreferrer\" target=\"_blank\">StorePep WooCommerce App</a>, <a href=\"https://play.google.com/store/apps/details?id=com.pinta.woocommerce.woocommercemobileadmin\" rel=\"noopener noreferrer\" target=\"_blank\">WooCommerce Mobile Admin</a>, <a href=\"https://play.google.com/store/apps/details?id=com.mstoreapp.wooadmin03\" rel=\"noopener noreferrer\" target=\"_blank\">Admin app for WooCommerce</a>, and <a href=\"https://play.google.com/store/apps/details?id=com.lxrmarketplace.woocommerce\" rel=\"noopener noreferrer\" target=\"_blank\">Dashly &#8211; WooCommerce Dashboard</a>.</p>\n<p>None of the third-party mobile apps seem to be very highly rated, nor are they consistent with the WooCommerce branding. A cursory glance at the reviews for these apps shows that most of them are slow, buggy, and not very well supported. However, they have temporarily fulfilled a need in the absence of an official app from WooCommerce.</p>\n<p>Considering the options currently available, an official WooCommerce app will be a welcome addition to the tools available for store owners. An iOS app is also in the works. At the end of July, the WooCommerce development team put out a <a href=\"https://woocommercehalo.wordpress.com/2018/07/31/call-for-testing-first-ios-beta/\" rel=\"noopener noreferrer\" target=\"_blank\">call for testing the first iOS Beta</a>. Anyone interested to test the apps can check out the <a href=\"https://woocommercehalo.wordpress.com\" rel=\"noopener noreferrer\" target=\"_blank\">Woo Halo</a> site and <a href=\"http://eepurl.com/dv-oo1\" rel=\"noopener noreferrer\" target=\"_blank\">register</a> to be part of the testing group.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 16:19:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Post Status: WordPress and Blockchain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=47409\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://poststatus.com/wordpress-and-blockchain/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5235:\"<p>WordPress is one of the driving forces and great success stories of the open web to date. As an open source platform, it&#8217;s become a dominant CMS used by 30% of the web to publish content — on websites large and small.</p>\n<p>WordPress has grown up in an era of evolving challenges: ushering in web standards, adapting for publishing and viewing on all device sizes; building for accessibility by all; establishing its place in the era of expansive and centralized social media platforms; and more.</p>\n<p>Today, we’re faced with a new generation of technologies coming down the pipe, ready to disrupt the current ecosystem. These technologies include blockchain, artificial intelligence, augmented reality, the internet of things, and more I&#8217;m sure. It’s the first of these that is the focus of this post and the following conversation.</p>\n<p>I was approached by David Lockie of <a href=\"https://pragmatic.agency/\">Pragmatic</a> to discuss how WordPress and blockchain technology may fit together, and how they may not. David and I have both been interested in the cryptocurrency and blockchain space over the past couple of years, and have over time encountered a lot of projects that aim to disrupt or enhance various elements of the web: from DNS to CMS.</p>\n<p>David gathered a group of people for an initial online, open, honest conversation about how WordPress could be impacted, disrupted or take advantage of distributed ledger and blockchain technologies.</p>\n<p>Examples include:</p>\n<ul>\n<li>Blockchain platforms impacting people’s choice to use WordPress e.g. <a href=\"https://steemit.com/\">Steemit</a></li>\n<li>Blockchain projects impacting people already using WordPress e.g. <a href=\"https://www.basicattentiontoken.org/\">Basic Attention Token</a> or <a href=\"https://www.po.et/\">Po.et</a>, <a href=\"https://vip.wordpress.com/2018/07/11/client-spotlight-civil/\">Civil</a></li>\n<li>Cryptocurrencies’ impact on eCommerce and the wider ecosystem, e.g. the Coinbase Commerce merchant gateway</li>\n<li>What we can learn from blockchain projects’ governance systems and lessons learned</li>\n<li>Ideas for improving security, integrations, etc</li>\n<li>Various identity-based projects</li>\n<li>New environments which may be used to run WordPress, such as decentralized web technologies e.g. <a href=\"https://substratum.net/\">Substratum </a> or <a href=\"https://www.maidsafe.net/\">MaidSafe</a>.</li>\n<li>Impact on the talent pool for WordPress professionals</li>\n<li>General <a href=\"https://speakerdeck.com/dcent/wordpress-and-blockchain-threats-and-opportunities\">threats and opportunities</a></li>\n<li>Discussion of anything new, interesting and relevant in the blockchain/cryptocurrency space</li>\n<li>All of the above as it relates to open source and the web generally, outside of WordPress</li>\n</ul>\n<p>Our aim for the initial conversation, as well as future conversations, <strong>is not</strong> to advocate specifically for any existing project or to necessarily endorse blockchain as appropriate for WordPress to somehow integrate in any way. It&#8217;s to explore what&#8217;s out there now, how it could impact WordPress today and in the future, and down the road perhaps how WordPress may take advantage of potential opportunities. We are approaching this like a discovery phase — not to get overly excited, but to be informed. And we welcome participants in this conversation.</p>\n<p>This first conversation included the following participants:</p>\n<ul>\n<li>David Lockie, <a href=\"https://pragmatic.agency/\">Pragmatic</a></li>\n<li>Brian Krogsgard, Post Status</li>\n<li>Bradford Campeau-Laurion, <a href=\"https://alley.co/\">Alley Interactive</a></li>\n<li>Zac Gordon, <a href=\"https://zacgordon.com/\">Deeply</a></li>\n<li>Christie Chirinos, <a href=\"https://calderalabs.org/\">Caldera Labs</a></li>\n<li>Josh Pollock, <a href=\"https://calderalabs.org/\">Caldera Labs</a></li>\n<li>Brad Williams, <a href=\"https://webdevstudios.com/\">WebDevStudios</a></li>\n</ul>\n<p>I attempted to reiterate it in the call, but I believe it&#8217;s important to address this topic with a skeptic&#8217;s hat on. By no means do any of us think that it&#8217;s a great idea to just go head first in trying to integrate blockchain technology to WordPress. The jury is still very much out in terms of where, how, and even if blockchain brings significant advantages to web applications.</p>\n<p></p>\n<p>If you are interested in future discussions, we welcome you! There is currently a channel (#blockchain) in Post Status Slack where people can discuss, and we&#8217;ll also announce future video-conference discussions. We may make a more independent place to discuss, blog, etc, in the future depending on how these early conversations go.</p>\n<p>We don&#8217;t know exactly where this conversation will go. It may fizzle out, or it could evolve into a much broader community effort. The first thing to do, if you are interested to continue this conversation, is just follow along with future conversations, which will be posted here. If you would like to be on the next video call, please <a href=\"https://pragmatic.agency/contact/\">contact David</a> or <a href=\"https://poststatus.com/contact\">me</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Sep 2018 22:58:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordCamp Wilmington Cancelled Due to Hurricane Florence\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83851\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wordcamp-wilmington-cancelled-due-to-hurricane-florence\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2572:\"<p>Hurricane Florence <a href=\"https://www.nhc.noaa.gov/graphics_at1.shtml?cone#contents\">is forecast</a> to make landfall as a major hurricane near Wilmington, North Carolina bringing potentially catastrophic flooding and strong winds to the region. </p>\n\n<img />Hurricane Florence Forecast Track From the National Hurricane Center\n\n<p>Because of the hurricane, <a href=\"https://2018.wilmington.wordcamp.org\">WordCamp Wilmington</a> which was scheduled to take place September 22nd and 23rd <a href=\"https://2018.wilmington.wordcamp.org/2018/09/11/canceled-2018-wordcamp-wilmington/\">has been cancelled</a>. </p>\n\n<p>&#8220;We wish all of our WordCamp Wilmington enthusiasts a minimum of impact from Hurricane Florence,&#8221; Helen Rittersporn, one of the event&#8217;s organizers said. <br /></p>\n\n<p>&#8220;On behalf of my fellow Organizers for 2018 WordCamp Wilmington, we are looking forward to seeing everyone in 2019!&#8221;</p>\n\n<h2>Safety of Attendees, Speakers, and Sponsors Takes Priority<br /></h2>\n\n<p>Peter La Fond, one of the event&#8217;s lead organizers, says the decision to cancel the event has been mentally taxing to him and the team.</p>\n\n<p>&#8220;From the beginning, the decision making was really hard,&#8221; he said. &#8220;How we made the decision about this was very fluid. The entire team has been texting back and forth every several hours on various decisions over many days.</p>\n\n<p>&#8220;We ended up having to set thresholds in advance for canceling.  Then on Monday morning, we started to get inquiries and cancellations of attendees, vendors and speakers so we had to make a call.&#8221; </p>\n\n<p>Although a lot hours were spent by volunteers to organize the event, speaker, attendee, and sponsor safety took priority. <br /></p>\n\n<p>&#8220;The organizing team is totally bummed about canceling the event considering the amount of effort we put into organizing it,&#8221; La Fond said. &#8220;However, we’re more concerned about the safety and security of our family and friends. Especially those who chose to stay.&#8221;</p>\n\n<p>Those who purchased tickets are eligible for a refund. But due to evacuations and the length of time the storm is expected wreak havoc in the area, organizers will not be able to fulfill refund requests until after the storm has passed. <br /></p>\n\n<p>This is the second time a tropical weather system has postponed or cancelled a WordCamp in the US. In 2016, <a href=\"https://wptavern.com/wordcamp-orlando-cancelled-due-to-hurricane\">WordCamp Orlando was postponed</a> due to Hurricane Matthew. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Sep 2018 22:05:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: MetaSlider Plugin Adds Gutenberg Block for Inserting Sliders\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83865\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/metaslider-plugin-adds-gutenberg-block-for-inserting-sliders\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4203:\"<p>If you <a href=\"https://wordpress.org/plugins/search/slider/\" rel=\"noopener noreferrer\" target=\"_blank\">search for &#8220;slider&#8221;</a> in the WordPress plugins directory, <a href=\"https://wordpress.org/plugins/ml-slider/\" rel=\"noopener noreferrer\" target=\"_blank\">MetaSlider</a> is the first result that comes up. The plugin, created by the team at <a href=\"https://updraftplus.com\" rel=\"noopener noreferrer\" target=\"_blank\">UpdraftPlus</a>, is active on more than 900,000 sites, more than any other free slider plugin, and averages a 4.7-star review. It includes four different types of sliders: Flex 2, Nivo Slider, Responsive Slides, and Coin Slider.</p>\n<p>An update released today introduces Gutenberg support with a block for inserting sliders. Users can access their sliders via the block insertion tool.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/metaslider-gutenberg-block.png?ssl=1\"><img /></a></p>\n<p>Clicking on the MetaSlider block allows users to select from among the sliders that they have already created in the admin.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-12-at-12.46.10-PM.png?ssl=1\"><img /></a></p>\n<p>After the user selects a slider, a preview will appear instantly in the Gutenberg editor.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/metaslider-in-gutenberg.jpg?ssl=1\"><img /></a></p>\n<p>Previously, the process of inserting a slider into content involved copying and pasting a shortcode. Joe Miles, director of Business Strategy at UpdraftPlus, said the team sees the Gutenberg editor as a major improvement especially for those who are new to WordPress.</p>\n<p>&#8220;I think Gutenberg makes it much easier for novices to web design to make changes and insert sliders,&#8221; Miles said. &#8220;I know people who&#8217;d be comfortable using a Gutenberg block but not comfortable using a shortcode as it looks scary.&#8221;</p>\n<p>Miles said the company is currently working on adding the ability for users to create and edit sliders within Gutenberg and hope to include it in the plugin before WordPress 5.0 lands. The UpdraftPlus team includes 13 developers who are devoted to the company&#8217;s WP-Optimize and MetaSlider products. Miles said adapting to Gutenberg was fairly simple relative to some of the other projects the team is working on.</p>\n<p>UpdraftPlus plans to continue to maintain and improve the shortcode-based slider insertion method, as demonstrated in the changelog. Users who opt to stick with the Classic Editor will still be able to keep their same workflow. Meanwhile, the product&#8217;s development team will be working on integrating all of the pro version&#8217;s front-end features with Gutenberg.</p>\n<p>In addition to Gutenberg support, the team is also going to be <a href=\"https://updraftplus.com/metasliders-bringing-out-new-slider-themes-and-theyre-completely-free/\" rel=\"noopener noreferrer\" target=\"_blank\">adding the concept of themes to sliders</a> so users can build a slider and change its theme in a couple of clicks. They plan to release free and commercial themes and all will be built to be compatible with Gutenberg.</p>\n<p><a href=\"https://wordpress.org/plugins/smart-slider-3/\" rel=\"noopener noreferrer\" target=\"_blank\">Smart Slider 3</a>, MetaSlider&#8217;s next closest competitor with 300,000 installs, is <a href=\"https://smartslider3.com/blog/gutenberg-and-smart-slider-3-how-to-add-sliders-to-wordpress/\" rel=\"noopener noreferrer\" target=\"_blank\">also compatible with Gutenberg</a> with a similar workflow for inserting sliders. Both slider plugins are not yet capable of providing the slider creation and editing process inside the Gutenberg interface but the capabilities should evolve as WordPress gets closer to the 5.0 release.</p>\n<p>&#8220;I personally love the idea of Gutenberg since Matt Mullenweg announced it at WordCamp EU 2017,&#8221; Miles said. &#8220;I understand why experienced developers don&#8217;t want the change, but too many people are going for inferior website solutions like WIX because they&#8217;re used to WYSIWYG. So adapting MetaSlider was a no-brainer.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Sep 2018 20:59:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: Marcel Bootsman is Walking 700km to WordCamp Europe to Raise Funds for DonateWC\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83797\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/marcel-bootsman-is-walking-700km-to-wordcamp-europe-to-raise-funds-for-donatewc\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3272:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-11-at-3.37.12-PM.png?ssl=1\"><img /></a></p>\n<p>In May 2019, <a href=\"https://twitter.com/mbootsman\" rel=\"noopener noreferrer\" target=\"_blank\">Marcel Bootsman</a> will be lacing up a pair of hiking boots and walking 700km (435 miles) from his home in Rotterdam to WordCamp Europe in Berlin. Bootsman, a WordPress consultant and WordCamp organizer, is walking to raise funds and awareness for the <a href=\"https://donatewc.org/\" rel=\"noopener noreferrer\" target=\"_blank\">DonateWC</a> organization.</p>\n<p>The DonateWC initiative provides a global fund for helping people in need of financial assistance to attend a big WordCamp. Donations go towards individually-tailored sponsorships that help selected attendees purchase a WordCamp ticket, door-to-door transportation, food and drink, and internet access.</p>\n<p>&#8220;Imagine for a moment that you are not backed by a company that will pay for you to go to a community event,&#8221; DonateWC founder Ines van Essen said. &#8220;You work hard at being a valuable community member but are never able to actually meet the others in your team. This means you are less likely to get a job, less likely to get recognized as a worthwhile member, you’re unlikely to be at the front-end of changes that impact your work significantly.&#8221;</p>\n<p>DonateWC aims to keep the larger WordCamps from being unintentionally exclusive of those with lesser financial means. Bootsman said he believes in the organization because it is community-driven and enables the greater WordPress community to do something for their fellow community members.</p>\n<p>So far, Bootsman&#8217;s walking journey has raised €116.57. He set up a <a href=\"https://walktowc.eu\" rel=\"noopener noreferrer\" target=\"_blank\">walktowc.eu</a> website to track his progress and the <a href=\"https://walktowc.eu/donate/\" rel=\"noopener noreferrer\" target=\"_blank\">donation page</a> displays a live update of donated funds. Contributors have the option to designate their donations for DonateWC or for Bootsman&#8217;s personal needs on the trek. He plans to deliver all of the funds raised for the organization when he arrives in Berlin. In the coming weeks he will also open up sponsor packages to better motivate companies to donate.</p>\n<p>Bootsman does not plan to work during his trek. He will be on the road for approximately 30 days and plans to walk 30km per day. He is traveling light with just a backpack and is looking for places where he can sleep along the way. Bootsman will update the <a href=\"https://walktowc.eu/route/\" rel=\"noopener noreferrer\" target=\"_blank\">Route page</a> on his website with the places where people volunteer a bed for him to spend the night.</p>\n<p>If you want to keep track of his progress, follow the hashtag <a href=\"https://twitter.com/hashtag/walktowceu?src=hash\" rel=\"noopener noreferrer\" target=\"_blank\">#walktwceu</a> on Twitter. Bootsman has published his first vlog about his training sessions (see video below) where you can hear in his own words why his making the long journey on foot. When I asked him if he&#8217;ll be walking home after WordCamp Europe, he said, &#8220;You&#8217;re kidding, right?&#8221;</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 22:25:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Matt: WP Dev on Chromebook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48342\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://ma.tt/2018/09/wp-dev-on-chromebook/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:256:\"<p>Dan Walmsley has an interesting <a href=\"https://developer.wordpress.com/2018/09/11/developing-wordpress-jetpack-and-calypso-on-chromeos/\">walkthrough on getting set up for WordPress and Calypso development on the new Linux mode on a Chromebook</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 18:29:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WPTavern: Hemingway Theme Adds Gutenberg Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83790\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wptavern.com/hemingway-theme-adds-gutenberg-support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4178:\"<p>Anders Norén has <a href=\"http://www.andersnoren.se/hemingway-meet-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">added Gutenberg support</a> to his popular <a href=\"https://wordpress.org/themes/hemingway/\" rel=\"noopener noreferrer\" target=\"_blank\">Hemingway</a> theme in the latest update, version 1.66. The theme has a simple, timeless design that appeals to both bloggers and business owners alike. It is active on more than 30,000 websites and some of those site administrators are using Gutenberg.</p>\n<p>What does Gutenberg support look like for Hemingway? Norén styled the editor to match the front-end design, with the same colors and fonts. He also added support for specific Gutenberg blocks, such as cover images, full-width elements, and pull quotes.</p>\n<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/hemingway-gutenberg-e1536683158337.jpg?ssl=1\"><img /></a>image credit: Anders Norén\n<p>Norén said he knew since Gutenberg was announced that he would need to add support to all 17 of his themes in a substantial update at some point but had put it off because developing for the new editor felt &#8220;like aiming for a moving target.&#8221;</p>\n<p>&#8220;I don’t think it was any single thing that made me realize that I needed to get going with Gutenberg, but rather that the Gutenberg volume knob in the community has been turned up at a steady pace,&#8221; Norén said. &#8220;After the &#8216;Try Gutenberg&#8217; prompt in 4.9.8, I also started to receive a lot more support requests regarding Gutenberg. When regular WordPress users – not developers – started to ask when they can expect Gutenberg support in my themes, I knew that I couldn’t push it ahead of me much further.&#8221;</p>\n<p>Hemingway is the first of his themes to support the new editor and Norén is aiming to have his entire collection Gutenberg-ready by the time WordPress 5.0 is released. (This does not include the <a href=\"https://wordpress.com/theme/hemingway-rewritten\" rel=\"noopener noreferrer\" target=\"_blank\">Hemingway Rewritten</a> version, which was created by Automattic and is available on WordPress.com.)</p>\n<p>Norén sees the new editor as a significant improvement over the current editor and said he thinks it is the right way forward for WordPress.</p>\n<p>&#8220;It’s always easy to speculate about the road not travelled, but the Visual Editor needs replacement, and Gutenberg will be a good replacement for it,&#8221; he said. &#8220;It’s better at everything the old editor can do (except editing raw HTML, perhaps), and it also brings with it new possibilities for WordPress developers and users. There are a lot of issues in Gutenberg still to be worked out, but when they are, I think Gutenberg will be a big step forward for the WordPress community.&#8221;</p>\n<p>Norén said his chief concern is not about the editor itself but about how WordPress will handle the transition period for users, especially for those who would benefit from continuing on with the Classic Editor.</p>\n<p>&#8220;I hope that the upgrade notice for 5.0 will be accompanied by clear messaging around the changes included in 5.0, along with the option to install the Classic Editor in Gutenberg&#8217;s stead,&#8221; Norén said. &#8220;Similar to the &#8216;Try Gutenberg&#8217; prompt, but presented more clearly as an either-or option before the user actually updates to 5.0. It was encouraging to see Matt Mullenweg say that the Classic Editor will be maintained for many years to come.&#8221;</p>\n<p>Norén&#8217;s 17 free WordPress.org-hosted themes have an estimated 100,000 active installs. Those using his products can be confident that the author behind the themes has Gutenberg-support among his immediate priorities for updates. Users who opt to move forward using the Classic Editor should not notice a difference in how the themes work.</p>\n<p>&#8220;I hope that Gutenberg is received with excitement and widespread support when 5.0 is finally released,&#8221; Noren said. &#8220;I also hope that the WordPress team does whatever it can to make sure that end-users don’t feel ambushed by the new editing experience.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 18:04:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Meetup Group Organizers Can Now Earn A WordPress.org User Profile Badge\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83806\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/meetup-group-organizers-can-now-earn-a-wordpress-org-user-profile-badge\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2241:\"<p>The WordPress Community team <a href=\"https://make.wordpress.org/community/2018/09/10/new-tool-for-community-deputies-meetup-tracker/\">has unveiled</a> a new tool called Meetup Tracker. This tool replaces the Meetup Status Document and will enable Global Community Team members to more easily track all Meetup.com groups.</p>\n\n<p>There&#8217;s also a <a href=\"https://central.wordcamp.org/meetup-organizer-application/\">new application form</a> available for organizers looking to join the <a href=\"https://make.wordpress.org/community/handbook/community-deputy/meetup-program-basics/\">WordPress Meetup Chapter Program</a>. Groups that are part of the program have their Meetup.com fees paid for by WordPress Community Support PBC.<br /></p>\n\n<p>Thanks to the new system that is hosted on the backend of <a href=\"https://central.wordcamp.org/\">WordCamp Central</a>, the community team is able to award badges to meetup organizers which will be displayed on their WordPress.org user profiles.</p>\n\n<div class=\"wp-block-image\"><img />Example of Contribution Badges Displayed on WordPress.org User Profiles</div>\n\n<p>In order to receive a badge and to fill the new system with updated information, organizers with meetups that are part of the chapter program are required to add the following information to this <a href=\"https://docs.google.com/spreadsheets/d/1LYnNDDpBQC7przZyufG4W5mdO67BcTTy_yz8eHY24lc/edit#gid=0\">Google Document</a>.</p>\n\n<ul><li> <strong>WordPress.org username for main contact</strong> <br /></li><li><strong>WordPress.org usernames of all organizers</strong> <br /></li><li><strong>Whether or not the contact’s WordPress.org email address is still valid</strong> <br /></li></ul>\n\n<p>Badges were added to WordPress.org <a href=\"https://wptavern.com/wordpress-org-profile-redesign-is-live\">user profiles as part of a redesign in 2014</a> and are a quick way to gauge a person&#8217;s activity and or interests across the WordPress project. </p>\n\n<p>The meetup organizer&#8217;s badge design has yet to be determined. For more information or if you have questions, please leave a comment on the <a href=\"https://make.wordpress.org/community/2018/09/10/calling-all-meetup-group-orgnisers/\">announcement post</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 02:52:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: WordPress Coding Standards 1.1.0 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83804\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wordpress-coding-standards-1-1-0-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:688:\"<p>The WordPress Coding Standards version 1.1.0 has <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.1.0\">been released</a> on GitHub. This release includes more stringent function call formatting checks which are <a href=\"https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#multiline-function-calls\">explained</a> in the handbook. There&#8217;s also stricter checks for overrides of WordPress global variables. </p>\n\n<p>To see a full list of what was changed, fixed, and added, check out the <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.1.0\">changelog</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 01:16:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"Matt: Seth Godin on Customer Service\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48340\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://ma.tt/2018/09/seth-godin-on-customer-service/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:236:\"<p>This morning <a href=\"https://seths.blog/2015/03/what-is-customer-service-for/\">I&#8217;m enjoying Seth Godin&#8217;s classic on Customer Service</a>. <cite>Hat tip: <a href=\"https://andrewspittle.com/\">Andrew Spittle</a>.</cite></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 10 Sep 2018 16:39:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Matt: Responsibility of Technology\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48337\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://ma.tt/2018/09/responsibility-of-technology/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:834:\"<p>There&#8217;s <a href=\"https://www.buzzfeednews.com/article/daveyalba/facebook-philippines-dutertes-drug-war\">fascinating and terrifying feature article about Facebook, Duterte, and the drug war in the Philippines</a>, written <a href=\"https://twitter.com/daveyalba/status/1036917302061608960\">by Davey Alba</a>. My first trip there was actually to Davao, and having been to the country several times and met so many bloggers there it&#8217;s hard to imagine what&#8217;s described. There are definitely echoes of <a href=\"https://www.wired.com/story/how-facebooks-rise-fueled-chaos-and-confusion-in-myanmar/\">the Wired feature on Facebook and ethnic cleansing in Myanmar</a>. Both are good reminders that as technologists the tools we create can be used and leveraged in ways we wouldn&#8217;t imagine in our worst nightmares.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 09 Sep 2018 17:46:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: Biratnagar, Nepal to Host Its First WordCamp – December 22, 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83719\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/biratnagar-nepal-to-host-its-first-wordcamp-december-22-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2614:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/09/wordcamp-biratnagar.png?ssl=1\"><img /></a></p>\n<p>Biratnagar, one of the oldest cities in Nepal, is gearing up to <a href=\"https://2018.biratnagar.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">host its first WordCamp</a> on December 22, 2018. The local community organized its first meetup in 2011 with 40 participants. Since that time the community has grown and recently hosted 250 members for <a href=\"http://wp.tecnepal.com/\" rel=\"noopener noreferrer\" target=\"_blank\">a two-day meetup</a> in January 2018.</p>\n<p>&#8220;WordPress Biratnagar has a remarkably large number of enthusiastic participants in local WordPress meetups, more than any other meetups in Nepal,&#8221; lead organizer Ganga Kafle said. Kafle is a developer and WordPress.org theme reviewer. He said his local community is full of energetic youth who are excited to make the WordCamp happen.</p>\n<p>&#8220;From an 8th grade student in a government school to a 56-year-old passionate retired army soldier, all are members of the WordPress Biratnagar community. This community is diverse, open, and has the ability to have fun together. They help each other out a lot, sharing tips and tricks, and solve problems together.&#8221;</p>\n<p>Kafle said the topics of most interest to the local community include WordPress SEO, blogging, and WordPress theme development, as the majority of community members are students, developers, freelancers, and designers. He expects the WordCamp will attract attendees from different cities inside Nepal and from nearby countries, including India, Bangladesh, Pakistan, and other South Asian countries. Sessions will be conducted in both English and Nepali.</p>\n<p>WordCamp Biratnagar will be the seventh WordCamp held in Nepal, following WordCamp Pokhara which is scheduled one month earlier on November 24. Pokhara is 11 hours away by car so the two WordPress communities are quite a distance away from each other. WordCamp Biratnagar is the last camp on the global WordCamp calendar for 2018.</p>\n<p>Kafle said he hopes the event will bring the Biratnagar WordPress community opportunities that will lead to more entrepreneurship and contribution to the greater tech community in the region. The event has <a href=\"https://2018.biratnagar.wordcamp.org/wordcamp-biratnagar-tickets/\" rel=\"noopener noreferrer\" target=\"_blank\">200 tickets available</a> and the capacity to expand if there is a greater demand. Early Bird Tickets are now on sale at Rs 1000. Once those are sold, Regular Tickets will be available for Rs 1500.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 08 Sep 2018 01:40:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: Dark Mode is Possibly Coming to a WordPress Dashboard Near You\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83660\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wptavern.com/dark-mode-is-possibly-coming-to-a-wordpress-dashboard-near-you\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4514:\"<p>For the past year, <a href=\"https://profiles.wordpress.org/danieltj\">Daniel James</a> has been developing the <a href=\"https://wordpress.org/plugins/dark-mode/\">Dark Mode</a> plugin for WordPress. The plugin is actively installed on more than 1K sites. Dark Mode replaces the white and grey colors in the backend with darker colors that are easier on the eyes.</p>\n\n<div class=\"wp-block-image\"><img />Dark Mode for WordPress</div>\n\n<p>James has published <a href=\"https://make.wordpress.org/core/2018/08/30/merge-proposal-dark-mode/\">a proposal</a> to merge the plugin into core. There are three things to know about Dark Mode up front. It does not have a high contrast mode to meet accessibility needs, is not a new admin color scheme for the backend, and is not a tool that helps people with vision issues. </p>\n\n<p>By default, WordPress ships with eight admin color schemes. However, color schemes are only applied to the WordPress sidebar and Admin toolbar. Dark Mode is applied to the main content area of the dashboard. This gives users the ability to use Dark Mode and an Admin Color Scheme in tandem. </p>\n\n<img />Admin Color Schemes\n\n<p>Dark Mode is not compatible with Gutenberg but is compatible with TinyMCE. Because of the speed at which Gutenberg is being developed as a plugin, James decided that a merge proposal without Gutenberg support is the best way forward. Compatibility with Gutenberg will likely arrive once it is merged into core.</p>\n\n<p>Because Dark Mode affects the content area of the WordPress Dashboard, if it&#8217;s merged into core, plugins will need to support two different color schemes. </p>\n\n<p>There is no easy way for Dark Mode to support every plugin, especially when many of them use custom user interface elements. <a href=\"https://github.com/danieltj27/Dark-Mode/wiki/Help:-Plugin-Compatibility-Guide\">This guide</a> on the <a href=\"https://github.com/danieltj27/Dark-Mode\">plugin&#8217;s GitHub page</a> explains how developers can add support for Dark Mode.</p>\n\n<h2>Proposal Hits a Snag</h2>\n\n<p>Within the comments on the proposal, members of the core and accessibility teams weighed in. Gary Pendergast, a WordPress core developer, <a href=\"https://make.wordpress.org/core/2018/08/30/merge-proposal-dark-mode/#comment-33913\">outlined</a> a list of requirements from the <a href=\"https://make.wordpress.org/core/handbook/about/release-cycle/features-as-plugins/#feature-plugin-merge-criteria\">Core Handbook</a> that the plugin has yet to achieve. </p>\n\n<p>James <a href=\"https://make.wordpress.org/core/2018/08/30/merge-proposal-dark-mode/#comment-33928\">responded</a> by explaining the process of merging a feature plugin into core as outlined in the Core Handbook does not lend itself to all projects. </p>\n\n<p>&#8220;For example, weekly meetings, or kick-off posts etc,&#8221; James said. &#8220;I understand that Gutenberg is probably a top priority right now but it’d be great if I could have some help on what to do to push this forward. I think an introduction of Gutenberg <strong>and</strong> Dark Mode would be a great addition to shout about in 5.0.&#8221;</p>\n\n<h2>Some of the Benefits of Dark Mode</h2>\n\n<p>One of the obvious benefits is that Dark Mode is aesthetically pleasing, especially after sunset. Depending on the <a href=\"https://www.quora.com/Does-a-white-background-use-more-energy-on-an-LCD-than-if-it-was-set-to-black\">screen technology</a>, darker colors are more energy efficient. It&#8217;s also a mode that&#8217;s gaining in popularity. For example, earlier this year, <a href=\"https://developer.apple.com/videos/play/wwdc2018/210/\">Apple announced</a> Dark Mode will be available in macOS Mojave.<br /></p>\n\n<p>I find myself using Dark Mode on Reddit, the Twitter app on my iPhone, and now WordPress. I like to browse the web on my phone while laying in bed and my partner enjoys not seeing a bright screen shining in her direction.<br /></p>\n\n<p>Based on <a href=\"https://make.wordpress.org/core/2018/08/30/merge-proposal-dark-mode/#comment-33929\">comments made</a> to the proposal and on <a href=\"https://twitter.com/mikelikethebike/status/1035513986836570112\">social media</a>, there is a definitive interest in having a Dark Mode option in WordPress. Is Dark Mode something you&#8217;d like to see be part of core? Also, I&#8217;m curious as to which Admin Color scheme you use. Please vote in the poll below. </p>\n\nNote: There is a poll embedded within this post, please visit the site to participate in this post\'s poll.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 08 Sep 2018 00:14:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: The State of JavaScript 2018 Survey is Now Open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83749\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/the-state-of-javascript-2018-survey-is-now-open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3004:\"<p>The annual <a href=\"https://stateofjs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">State of JavaScript 2018 Survey</a> is in its third year running and is now open for participants. <a href=\"http://sachagreif.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Sacha Greif</a>, an Osaka-based web designer and developer, said he created the survey to get more data about recent trends after hearing all the online discussion about “JavaScript fatigue.”</p>\n<p>Last year&#8217;s survey had more than 20,000 participants, a 115% increase over the previous year&#8217;s 9,300 responses. In the popular front-end frameworks category, React won out again as the framework with the greatest number of respondents indicating that they had used it and would use it again.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-07-at-12.35.08-PM.png?ssl=1\"><img /></a></p>\n<p>The 2017 survey participants were asked to rate their happiness with the current state of front-end tools on a scale of 1-5. The results averaged a 3.8, so there is room in the front-end tools category for things to shift quite a bit over a year.</p>\n<p>The salary ranges data is particularly useful for job seekers or those new to JavaScript who are trying to decide what libraries to learn. Backbone and Ember commanded the highest salaries for participants, with Vue and Angular 2 coming in at the lower end.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-07-at-12.53.47-PM.png?ssl=1\"><img /></a></p>\n<p>Check out the full <a href=\"https://2017.stateofjs.com/2017/introduction/\" rel=\"noopener noreferrer\" target=\"_blank\">2017 results</a> for more data on participants&#8217; opinions on state management tools, back-end frameworks, build tools, and more.</p>\n<p>&#8220;The main change this year is that we added some extra logic to the survey: if you mention having used a given library, we’ll ask a follow-up question to find out what you like (or disliked) about it,&#8221; Greif said in announcing the 2018 survey. &#8220;We’re hoping that this helps us get more granular data about why some technologies are popular.&#8221;</p>\n<p>The 2018 survey has also dropped the CSS libraries category this year, in favor of keeping it from getting too long. Greif hinted that CSS may get its own survey one day, but that section will no longer by included in the JavaScript survey.</p>\n<p>Greif is aiming to publish the results by mid-November and will also give a preview at the <a href=\"https://www.dotjs.io/\" rel=\"noopener noreferrer\" target=\"_blank\">Dot JS</a> conference in Paris on November 9th. Your participation in the 2018 survey will help it to more accurately present the trends in the JavaScript ecosystem and help other developers see which tools have the highest satisfaction ratings and best salaries. Visit <a href=\"https://stateofjs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">stateofjs.com</a> to take the survey now.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 07 Sep 2018 19:07:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Pootlepress Previews Upcoming Storefront Blocks Plugin for WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83538\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/pootlepress-previews-upcoming-storefront-blocks-plugin-for-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6098:\"<p>At the end of 2017, WooCommerce <a href=\"https://wptavern.com/woocommerce-explores-the-possibilities-and-challenges-for-e-commerce-in-the-gutenberg-era\">published some of their &#8220;Wootenberg experiments&#8221;</a>, one of the first previews of what e-commerce might look like in the Gutenberg era. Gutenberg&#8217;s handling of meta boxes has greatly evolved since that time and the <a href=\"https://wordpress.org/plugins/woo-gutenberg-products-block/\" rel=\"noopener noreferrer\" target=\"_blank\">WooCommerce Gutenberg Products Block</a> feature plugin is now active on more than 20,000 sites. The plugin provides a basic custom products area for featuring products.</p>\n<p>Pootlepress has expanded on this idea of offering a configurable product display and is currently previewing its upcoming <a href=\"https://www.pootlepress.com/storefront-blocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Storefront Blocks</a> plugin, created specifically for use with the WooCommerce <a href=\"https://wordpress.org/themes/storefront/\" rel=\"noopener noreferrer\" target=\"_blank\">Storefront theme</a>. The plugin allows users to easily customize more advanced layouts for various product displays that can be used anywhere in their content.</p>\n<div class=\"embed-vimeo\"></div>\n<p>Storefront Blocks includes the following custom blocks:</p>\n<ul>\n<li>Product Masonry Grid block</li>\n<li>Category Masonry block</li>\n<li>Square Product Grid block</li>\n<li>Slider block</li>\n<li>WooCommerce default product</li>\n<li>Carousel block</li>\n</ul>\n<p>Storefront Blocks lets store owners easily customize font, colors, label positioning and alignment, grid gap, product grid rows, and columns. The blocks can be expanded to be full-width. They can also be transformed and reused. One example shown in the video above demonstrates converting a product grid into a slider.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-09-05-at-4.04.37-PM.png?ssl=1\"><img /></a></p>\n<p>Check out the live frontend demo at <a href=\"https://storefrontblocks.com/\" rel=\"noopener noreferrer\" target=\"_blank\">storefrontblocks.com</a>.</p>\n<p>The team at Pootlepress was aiming to release the plugin in first week of September but have pushed it back to the week of the September 17th, due to issues caused by Gutenberg 3.7.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Gutenberg 3.7 dropped today and broke some stuff. Trying to develop in prep for <a href=\"https://twitter.com/hashtag/gutenberg?src=hash&ref_src=twsrc%5Etfw\">#gutenberg</a> is like shooting at a fast moving target atm. Makes me agree  more and more with <a href=\"https://twitter.com/mor10?ref_src=twsrc%5Etfw\">@mor10</a> that we need a 6 month freeze once the code base is stable to prepare properly.</p>\n<p>&mdash; pootlepress (@pootlepress) <a href=\"https://twitter.com/pootlepress/status/1035574622840938496?ref_src=twsrc%5Etfw\">August 31, 2018</a></p></blockquote>\n<p></p>\n<p>Pootlepress founder Jamie Marsland said they plan to sell Storefront Blocks at several price points: $75 (single site license), $125 for 5 sites, $149 for 25 sites, and $199 for an unlimited license. The product is a natural extension of their current offerings, which include a page builder plugin used on more than 10,000 websites and a Storefront Pro plugin used on 5,000+ stores.</p>\n<p>Marsland said he was previously a skeptic about Gutenberg but is convinced that a unified interface is going to be the chief benefit of Gutenberg in the long term.</p>\n<p>&#8220;My skepticism was really based on how it was being rolled out to the WP community, rather than the technical approach of Gutenberg,&#8221; Marsland said. &#8220;I still feel that way actually. But from a end user point of view I’m convinced users are going to love it. 50% of our business is focused on running WordPress training courses for beginners, so we see first hand the issues that WordPress users have with the existing editor. The layout limitations of the current editor is the number complaint that users have with WordPress (from our experience of having trained thousands of end users over the past 7 years).&#8221;</p>\n<p>Marsland&#8217;s team at Pootlepress has gone all-in on developing for Gutenberg. So far their greatest challenge in extending the new editor has been keeping pace with its rapid development.</p>\n<p>&#8220;It feels a bit like developing for a moving target at times,&#8221; Marsland said. &#8220;The Gutenberg documentation is getting better but there are still gaps in it. The Slack channel has been really helpful though and the team have been great and responding to specific questions we have.&#8221;</p>\n<p>Marsland doesn&#8217;t see Gutenberg impacting Pootlepress&#8217; WooCommerce page builder product, at least not until Gutenberg evolves further on its journey into site customization capabilities.</p>\n<p>&#8220;At the moment Gutenberg is quite limited in what’s possible from a layout and design perspective,&#8221; Marsland said. &#8220;For example, our WooCommerce page builder plugin lets users change the design and layout of individual WooCommerce products. This isn’t possible with Gutenberg and may not be for quite some time. It feels like Gutenberg will stay more of a content editor than become a true page builder, especially given the current feedback from the community. That said, the ease of adding blocks within a unified interface like Gutenberg is perfect for a block approach like we are building for Storefront Blocks.&#8221;</p>\n<p>If you&#8217;ve been wondering what Gutenberg will look like in a WooCommerce context, Pootlepress&#8217; upcoming Storefront Blocks plugin gives you an idea of the customization possibilities the new editor will bring. The plugin makes it easy for non-technical store owners to showcase their products in a compelling way and enables them to create and customize product layouts. Storefront Blocks is an impressive example of how Gutenberg-powered products can replace clunky shortcodes with a more user-friendly interface for building store pages.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Sep 2018 21:27:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"HeroPress: The Deaf World May Await, But It’s Not Silent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2616\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:160:\"https://heropress.com/essays/the-deaf-world-may-await-but-its-not-silent/#utm_source=rss&utm_medium=rss&utm_campaign=the-deaf-world-may-await-but-its-not-silent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:15627:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/09/090518-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The handicap of deafness is no in the ear, it is in the mind. -- Marlee Matlin\" /><p>Have you ever wondered what it would be like if the world you lived in completely changed, turning your life upside down?</p>\n<p>And for those who have gone through an experience like this, can you remember how it felt to wake up in a world you were not used to?</p>\n<p>Even though life can throw many curve balls your way, the way you tackle them can redefine you as a person.</p>\n<h3>From One World to Another</h3>\n<p>I was just a toddler when I was diagnosed with a hearing impairment. My parents noticed my speaking skills lagged behind other toddlers of a similar age. I was diagnosed with a hearing loss at the age of 2 or 3.</p>\n<p>Even though it’s something I’ve lived with my entire life, it has been (and still is) a long and confusing journey for me as I try to figure out how best to live with it.</p>\n<p>You see, I’m not profoundly deaf. I can hear relatively well for now (I’ll get to that part in a minute), which means that I was brought up in a mainstream hearing environment.</p>\n<p>This didn’t come without its challenges though as I experience inaccessibility issues regularly. For example, noisy environments such as bars and restaurants, bad audio at conferences and mumbling voices when listening to podcasts.</p>\n<p>As a young child who didn’t know any better and acted naive about life, I just accepted it. But then as I got older and learned more about the world around me, well, that’s when things started to change.</p>\n<p>Because I am part of the hearing world but also have one “ear” in the non-hearing world, it has been a confusing position to be in. I already know what it’s “supposed to” be like if I had normal hearing. But that’s the thing, I don’t have normal hearing and I’m not profoundly deaf either.</p>\n<p>So where do I stand?</p>\n<p>Well there was always the possibility that my hearing would get worse, which was something my audiologist told me as a teenager. I figured maybe that will give me a better idea of where I stand.</p>\n<blockquote><p>But come on, as a teenager, I acted like a teenager – I was in denial about my situation and just wanted to fit in, like we all do as human beings.</p></blockquote>\n<p>Nothing was going to stop me from playing football, playing the guitar, socialising with friends, going to restaurants (plenty of head nodding happens there) and going to the cinema (even if I had to pretend to enjoy the latter and act as if I could hear everything, which was awkward when everyone talks about it afterwards).</p>\n<p>Over time, I learned to develop tricks to help me get by, living in both worlds. For example, when playing the guitar, I’m not able to fine-tune my music without the help of technology or someone else who can assist me. Or when I go to the cinema, I only focus on action movies so I don’t REALLY have to talk about the story line, so I talk about the graphics, car chases and explosions instead.</p>\n<p>On top of that I was learning English, which is my second language (but now my main language), and I was having speech therapy sessions and attended countless audiology appointments.</p>\n<p>But you keep going, right? You don’t let anything stop you. I made it through two universities, a number of jobs and navigated life in general throughout my twenties relatively unscathed.</p>\n<p>Then one day, a few years ago, I realised my hearing had declined even further. Unexpectedly, I found myself in a much quieter world than the one I was used to.</p>\n<p>Remember that warning from the audiologist? Well things got very real, very fast.</p>\n<p>I realised there was no turning back. And so began a whole new unfamiliar journey over what to do next.</p>\n<h3>Silent with a Loud Voice</h3>\n<p>It’s quite common to see online creators documenting their lives using whatever platform is available, such as social media and personal websites. The same applies for those who are going through certain struggles and share them with the world. And I used to find that strange. For something so personal, why would you share this with strangers?</p>\n<p>Many years ago, it’s not something that I would have thought of doing. And there was definitely no intention of writing about being partially deaf. Like I said, I was trying to fit in, so I told myself to keep going to the cinema and pretend that I enjoyed it.</p>\n<p>But there comes a time where you have to stop pretending and start being real, like I did by creating a video to publicly declare my intention to do so (and I’ll talk more about that later).</p>\n<p>I’m lucky to have a job that revolves around the internet. As someone who works in the digital marketing industry, it was natural for me to <a href=\"https://iamahmedkhalifa.com\" target=\"_blank\" rel=\"noopener\">have my own website</a>. I remember there were a lot of experimenting and trying to work out how to start one, as well as trying to figure out what it should be about.</p>\n<p>Having your own website sounds like a cool thing to have, but it wasn’t something I made a lot of use of in the early days. My priority was always on my clients’ or employers’ websites.</p>\n<p>But over the past few years, I’ve grown more and more involved with WordPress and have a deeper appreciation for those who use the platform to find their voice.</p>\n<p>And that made me curious.</p>\n<blockquote><p>It wasn’t until I started my own business in 2016 that I took WordPress more seriously, both for me personally and for my clients.</p></blockquote>\n<p>That is when I started to get more involved with the WordPress community. Because of my continued desire to contribute to the community and also how much I enjoyed helping others to make the most out of their WordPress sites. This inevitably led me to being one of the co-organisers of the WordPress meet-up group in Edinburgh as well as the current lead organiser for WordCamp Edinburgh.</p>\n<p>My main WordPress site is my business site. It’s where I predominantly focus on the subjects of SEO, Google Analytics, WordPress (of course), online business, etc. You know, anything to help others use their WordPress site to grow their online visibility, engagement and conversion.</p>\n<p>There is another side to being part of WordPress, and that is the community – it means you’re involved with a wide variety of people, mixing with different personalities and opening your mind to more experiences. It is where you can share valuable insights that can impact not just your life but the lives of those around you who are using WordPress in some shape or form.</p>\n<p>And that includes the subjects of inclusivity and accessibility, two areas which have a direct effect on me. But with regards to accessibility, I do depend on subtitles/closed captions in certain situations. I’m thankful that TV is getting better at it, but outside the house, it’s not that simple.</p>\n<blockquote><p>Having been to many meet-ups and WordCamps, the code of conduct is clear – it’s about making the environment welcoming and comfortable for everyone.</p></blockquote>\n<p>The subject of online accessibility is becoming more important. Even though we are still behind in terms of understanding accessibility and making it a standard approach on websites, I’m starting to see people taking it more seriously, and rightly so.</p>\n<p>So I should feel comfortable about the online world, right? Well, not exactly. Accessibility is still trying to catch up online and offline for everyone, not just for deaf people. For example, there are still campaigns going on to have subtitled screenings at cinemas as they tend to be limited and are often used during impossible hours like Monday mornings.</p>\n<p>Because apparently, deaf people don’t have day jobs.</p>\n<p>The combined effect of a lack of accessibility and various challenges means there is a nagging feeling that being deaf means my abilities are limited in an online world.</p>\n<p>It’s a stupid thing, right? But imposter syndrome is a powerful thing. If you don’t have a firm hold on it, it can be beat the hell out of you.</p>\n<p>Until one day&#8230;</p>\n<p>“Enough! I’ve had enough.”</p>\n<p>There came a point where I decided to let go of the very thing (my hearing impairment) that I felt was holding me back in life and to use that as the catalyst to move forward. I was reading a book called “Let Go” by Pat Flynn of Smart Passive Income. He is someone I’ve admired from afar and I have learnt a lot from him, even before reading that book.</p>\n<p>But that book was the first “soft” trigger for me in accepting the present and the future. Little did I realise how doing this would pave the way for a whole new world of possibilities and opportunities. And that’s when the second trigger happened. I had the opportunity of spending a day with Pat in San Diego – it was an experience I’ll never forget.</p>\n<p>But just as importantly and for the final trigger, it allowed me remove those chains that shackled me and gave me the freedom to move forward and to take advantage of whatever life had to offer me, even if it meant things were “limited” because of my gradual hearing loss.</p>\n<p>It’s amazing what can happen when you share your vulnerabilities and experiences with others. We can always learn from each other and sharing this experience has ended up helping many others. I have received private messages from strangers thanking me for creating videos that help spread awareness.</p>\n<p>And I’m not stopping there either.</p>\n<h3>The World Got Quieter</h3>\n<p>If I am going deeper into the deaf world, it doesn’t mean it’s going to be silent, at least not in an online sense. I have created a dedicated website called <a href=\"https://hearmeoutcc.com\" target=\"_blank\" rel=\"noopener\">Hear Me Out! [CC]</a> to document my hearing journey. It’s a place to share other people’s stories and to provide advice on managing in the deaf world – whether you are deaf or not.</p>\n<p>See, that’s the great thing about putting websites together. It’s about giving you the platform you never had before. It’s also the ethos of WordPress &#8220;to democratise publishing through Open Source, GPL Software”.</p>\n<p>It’s a funny thing when you start documenting and talking about your life online. Many people use social media as a platform to help with that and to create a voice, but I prefer to use my WordPress site for that voice. And then I use social media to help elevate it.</p>\n<h3>Your Voice Can Influence Others</h3>\n<p>Since I’ve been using WordPress and been involved in digital marketing for almost 10 years, it made sense to use that experience to my advantage. I’m lucky that my business allows me to use my expertise to help other people with their sites.</p>\n<p>But sometimes you have to be a little selfish and think about your own journey too, not just those of your clients or customers (as well as your friends and family).</p>\n<p>Not only are you allowed to do that, but you should do that. Because if you don’t help yourself first, you can’t help anyone else around you.</p>\n<p>Several years ago, I wouldn’t have thought of doing that. I mean, who the hell would want to listen to me? But I truly believe in the motto “your vibe attracts your tribe” – it doesn’t matter who you are, you’ve got something worth sharing online that your tribe, whoever they are, would love.</p>\n<p>And it’s never too late to start.</p>\n<hr />\n<p>There is a quote I really like by American actress, Marlee Matlin:</p>\n<blockquote><p>“The handicap of deafness is not in the ear; it is in the mind.”</p></blockquote>\n<p>That quote applies to me perfectly, but you can also apply it to your own circumstances if deafness doesn’t apply to you.</p>\n<p>It’s like that old saying we all heard as children: “You can do anything if you put your mind to it.”</p>\n<p>It is kind of true in a way, but it has taken me a long time to realise it. Even though I wish I had started earlier, it’s about starting today rather than thinking about yesterday.</p>\n<p>And I think that can apply to any situation.</p>\n<p>I’m not just talking about creating a website. It’s also about finding the right time for you to let go of whatever is holding you back, and for you to understand what your next steps are.</p>\n<p>That was my challenge. I had to redefine myself if I wanted to move forward. I see no reason why you can’t do that too.</p>\n<p>So here is my message to you: if you have something that is holding you back, I urge you to write down what you are going to do about it. You need to stick it somewhere where you can see it all the time.</p>\n<p>And if you are feeling REALLY brave, you can let me know in the comment section below what is holding you back in your life – and what you are doing to let it go.</p>\n<p>My way of doing that was to create another WordPress site to share my stories and document my journey.</p>\n<p>Because take it from me, once you do that, the world awaits you… online and offline.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Deaf World May Await, But It&#8217;s Not Silent\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Deaf%20World%20May%20Await%2C%20But%20It%27s%20Not%20Silent&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-deaf-world-may-await-but-its-not-silent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Deaf World May Await, But It&#8217;s Not Silent\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-deaf-world-may-await-but-its-not-silent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-deaf-world-may-await-but-its-not-silent%2F&title=The+Deaf+World+May+Await%2C+But+It%26%238217%3Bs+Not+Silent\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Deaf World May Await, But It&#8217;s Not Silent\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/the-deaf-world-may-await-but-its-not-silent/&media=https://heropress.com/wp-content/uploads/2019/09/090518-min-150x150.jpg&description=The Deaf World May Await, But It\'s Not Silent\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Deaf World May Await, But It&#8217;s Not Silent\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/the-deaf-world-may-await-but-its-not-silent/\" title=\"The Deaf World May Await, But It&#8217;s Not Silent\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/the-deaf-world-may-await-but-its-not-silent/\">The Deaf World May Await, But It&#8217;s Not Silent</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Sep 2018 08:00:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Ahmed Khalifa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: AMP for WordPress Plugin to Introduce User-Friendly Theme Support Settings in Upcoming 1.0 Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83671\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wptavern.com/amp-for-wordpress-plugin-to-introduce-user-friendly-theme-support-settings-in-upcoming-1-0-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14488:\"<p>In October, Google&#8217;s open source <a href=\"https://www.ampproject.org/\" rel=\"noopener noreferrer\" target=\"_blank\">AMP project</a> (Accelerated Mobile Pages) will be heading into its third year. The initiative aims to improve performance on the mobile web and currently boasts usage on 25 million domains across publishing, advertising, e-commerce, and business websites.</p>\n<p>WordPress had a rocky beginning with its <a href=\"https://wordpress.org/plugins/amp/\" rel=\"noopener noreferrer\" target=\"_blank\">official AMP plugin</a>, which was originally developed by Automattic, one of the earliest publishing partners on the project. The first versions of the plugin were not easy to use, especially for heavily customized installations. It required site owners to invest considerable effort into optimizing AMP pages and fine tuning them for their needs. AMP for WordPress <a href=\"https://wptavern.com/amp-project-turns-2-automattic-partners-with-google-to-improve-wordpress-plugin\" rel=\"noopener noreferrer\" target=\"_blank\">went without updates for 10 months in 2017</a>, was fraught with errors, and incompatible with many other plugins.</p>\n<p>XWP began leading development of the plugin last year in partnership with Google, beginning with the 0.6 release. Weston Ruter is the tech lead with several XWP engineers contributing to development, design, and testing. Alberto Medina, Developer Advocate at Google, and his team have been leading the product management and outreach efforts.</p>\n<p>&#8220;Around May last year, my team at Google started a long-term effort with a bigger scope than just AMP, which included significantly investing engineering resources on the development of the plugin,&#8221; Medina said. &#8220;We started investing development resources, and then teamed up with XWP to expand the engineering scope. During this phase of the project Google and XWP have driven all the execution of the project and the development efforts.&#8221;</p>\n<p>Ruter said his team went through six months of the plugin&#8217;s support topics on WordPress.org and categorized them to figure out what issues users were struggling with most. They used that information to guide the focus for their first release and have been keeping a pulse on the support forum ever since.</p>\n<p>The plugin has incorporated many changes since XWP began spearheading its development, putting AMP&#8217;s newer features to use within the context of WordPress. Earlier versions of the plugin only allowed posts to be served as AMP but the 0.6 release added pages to its capabilities. Version 0.7 introduced the ability for all URLS on a site to served as AMP (“Native AMP”) but lacked the ability for users to customize which types of content should be excluded from this format. The upcoming 1.0 release will allow users to have a native AMP site that excludes certain templates, such as a shopping cart or a category archive, from being served as AMP.</p>\n<p>&#8220;AMP initially was limited in functionality,&#8221; Ruter said. &#8220;The AMP plugin was created when AMP was young. In the beginning it was focused on Accelerated <em>Mobile</em> Pages and it wasn&#8217;t able to recreate full responsive experiences that site owners expect. This has changed and AMP is able to do a lot. So that is what we have been focused on with the AMP plugin, is to bring it up to speed with the AMP project itself so that WordPress sites can take advantage of all the features and functionality that are now available.&#8221;</p>\n<p>The team at XWP is aiming to release version 1.0 of AMP for WordPress in mid-September. The <a href=\"https://make.xwp.co/2018/06/09/amp-plugin-release-v1-0-alpha1/\" rel=\"noopener noreferrer\" target=\"_blank\">1.0 alpha release</a> introduced extended AMP theme support with a more user-oriented approach to the settings. Previous versions of the plugin were more developer-centric, requiring edits to a theme or child theme to configure template support. Users can now enable Native AMP or Paired mode on the AMP settings screen and the <a href=\"https://make.xwp.co/2018/07/06/amp-plugin-release-v1-0-beta1/\" rel=\"noopener noreferrer\" target=\"_blank\">beta release</a> adds granular controls for selecting supported templates.</p>\n<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/amp-1-0-beta.png?ssl=1\"><img /></a>image credit: <a href=\"https://make.xwp.co/2018/07/06/amp-plugin-release-v1-0-beta1/\">XWP</a>\n<p>Other notable updates in the alpha and beta releases include:</p>\n<ul>\n<li>Enhanced UI for handling AMP validation errors</li>\n<li>Expanded Gutenberg support to surface AMP validation errors at a block level</li>\n<li>Addition of AMP-specific functionality to core blocks</li>\n<li>Redirection to non-AMP URL when unaccepted validation errors present</li>\n<li>Beta brings back WP Admin Bar AMP menu with AMP error highlighting</li>\n</ul>\n<p>AMP for WordPress <a href=\"https://make.xwp.co/2018/08/06/amp-plugin-release-v1-0-beta2/\" rel=\"noopener noreferrer\" target=\"_blank\">v1.0-beta2</a> was released in August and is not yet ready for production use. The good news for those who want to use AMP is that the plugin is becoming more of a plug-and-play solution as development progresses.</p>\n<p>&#8220;There is only one setting that the user needs to change to take advantage of the new theme support: switching from legacy to paired or native,&#8221; Ruter said. &#8220;Everything else is optional and just customizes the behavior. There will be a new admin pointer in 1.0 that will call out this updated admin screen.&#8221;</p>\n<p>Ruter also said his team is considering implementing a wizard-type experience to minimize the number of tweaks users need to make. They are discussing automating the compatibility check of the various templates prior to enabling theme support so users can get a high level view of the areas of the site that would be best-suited for AMP.</p>\n<h3>AMP Remains a Controversial Solution to Web Page Performance</h3>\n<p>Many users encountered insurmountable difficulties in their first attempts at using the AMP plugin with highly customized sites, relegating AMP usage to sites with dedicated engineering teams. Early versions of the AMP project did not have the flexibility that many publishers required.</p>\n<p>Brian Boyer, VP of Product and People at Spirited Media, home of The Incline, Billy Penn, and Denverite publications, gave a presentation at WordCamp for Publishers titled &#8220;<a href=\"https://wordpress.tv/2018/08/22/brian-boyer-why-we-ditched-amp-and-other-ux-choices-we-made-for-launching-membership/\" rel=\"noopener noreferrer\" target=\"_blank\">Why we ditched AMP, and other UX choices we made for launching membership</a>.&#8221;</p>\n<p>&#8220;We need more control over our user experience than AMP allows &#8211; to build an unshitty, persuasive, native feeling, highly effective membership experience, I need a little more JavaScript,&#8221; Boyer said. &#8220;I need a little bit more control over the page and to be fair, we could probably make some of this stuff but we cannot afford to design, build, and most crucially, test multiple versions of our website.&#8221;</p>\n<p>Boyer cited the expense of of building and testing multiple codebases as one of the primary reasons his team ditched AMP. The complication of maintaining a second user experience was &#8220;far too much to ask&#8221; for his development team, who had already produced a fast, lightweight WordPress setup with proper caching.</p>\n<p>&#8220;An AMP page might load a little faster but our other needs far outweigh that minor performance improvement,&#8221; Boyer said. &#8220;We got over our FOMP (Fear of Missing Pageviews). If I can be better at making conversions, I&#8217;ll take the hit with pageviews.&#8221;</p>\n<p>Recent <a href=\"https://xwp.co/an-introduction-to-native-amp/\" rel=\"noopener noreferrer\" target=\"_blank\">Enhancements to the AMP project and the plugin</a>, including the addition of components allowing for the creation of rich interactive experiences, continue to narrow the gap between the custom JavaScript many websites require and AMP&#8217;s limitations. This may be encouraging for those who have chosen to embrace AMP, but ultimately will not make a difference for those who fundamentally oppose the initiative as an affront to the open web.</p>\n<p>Beyond the technical investment in fine-tuning an AMP setup to meet the needs of his publications, Boyer concluded the presentation by outlining his broader objections to the AMP project:</p>\n<blockquote><p>By policing slow websites, Google has turned the big publishers&#8217; problem into my problem, but that fix comes at a high cost to me, a small publisher,&#8221; Boyer said. &#8220;AMP is not the Open Web &#8211; it&#8217;s a short term fix for bad choices. If you build a slow and terrible website that supports a creepy business model, like tracking the shit out of your users, then yes, AMP is one path to a better user experience. It is an escape hatch from your legacy code and the bad choices of your predecessors. I understand why that would be tempting, but it is also a deal with the devil. AMP and its cousin Instant Articles put even more control in the hands of companies that already have too much control, and I for one cannot abide by that. I just ask you, do the work, fix your websites, make them fast, friendly, and respectful.</p></blockquote>\n<p>Other vocal critics are not comfortable with how Google is positioning AMP as a long-term solution, instead of addressing the root issues of web page performance. Jeremy Keith articulated this stance in his article titled &#8220;<a href=\"https://adactio.com/journal/13964\" rel=\"noopener noreferrer\" target=\"_blank\">AMPstinction</a>.&#8221;</p>\n<p>&#8220;If the AMP project existed in order to create a web where AMP was no longer needed, I think I could get behind it,&#8221; Keith said. &#8220;But the more it’s positioned as the only viable solution to solving performance, the more uncomfortable I am with it.</p>\n<p>&#8220;Which, by the way, brings me to one of the most pernicious ideas around Google AMP—positioning anyone opposed to it as not caring about web performance. Nothing could be further from the truth. It’s precisely because performance on the web is so important that it deserves a long-term solution, co-created by all of us: not some commandants delivered to us from on-high by one organization, enforced by preferential treatment by that organization’s monopoly in search.&#8221;</p>\n<p>However, decoupling AMP from Google&#8217;s influence would also mean separating the project from the leadership and resources that have so far driven its adoption across millions of websites. There may be other approaches to addressing performance but Alberto Medina and his team see AMP as serving a practical purpose for users and developers who wouldn&#8217;t otherwise be capable of optimizing their sites to the same degree. What he described is in a sense &#8220;democratizing performance.&#8221;</p>\n<p>&#8220;The root causes of web performance problems are well known and there are tools, techniques, and web APIs, that allow developers to achieve awesome UX close to what AMP provides,&#8221; Medina said. &#8220;However, the reality is that doing so is very hard for most developers. Usually achieving it requires having solid engineering teams and enough financial resources. That is not fair for most developers and organizations that do not have the resources.&#8221;</p>\n<p>Medina sees AMP as an answer to what he describes as the <a href=\"https://medinathoughts.com/2018/05/17/progressive-wordpress/\" rel=\"noopener noreferrer\" target=\"_blank\">Capability/Usage gap</a>: the difference between what can be achieved in the web and what is actually done in the web.</p>\n<p>&#8220;The problem is that as the power and complexity of the web increases, that gap has increased as well,&#8221; Medina said. &#8220;The problem is that as long as that gap exists, achieving the best UX is not possible. So, the goal is to close that gap. There are two options: developers do the right thing all the time, or we provide tooling/libraries that enable them to do the right thing in an easy and effective way. AMP served the latter purpose.&#8221;</p>\n<p>Medina also emphasized that AMP is fully built on open web technologies. &#8220;Basically, it provides what developers could do by themselves but it is hard to do,&#8221; he said.</p>\n<p>In a recent <a href=\"https://art19.com/shows/recode-decode/episodes/3d56208e-a4b9-4c74-861e-8fec105a4ee8\" rel=\"noopener noreferrer\" target=\"_blank\">Recode Decode podcast interview</a> with Kara Swisher, Matt Mullenweg also weighed in on the AMP project.</p>\n<p>&#8220;It gets a bad rap because Google kind of botched the rollout a little bit,&#8221; Mullenweg said. &#8220;The underlying tech is open source and it&#8217;s actually quite good. Because for you as an independent publisher to have a future, we need you to load just as fast as something that&#8217;s embedded in an app. Facebook has done the bait and switch so many times that we need an independent alternative and I think AMP can be that.&#8221;</p>\n<p>Google&#8217;s investment in the AMP plugin through its partnership with Automattic and XWP has made AMP more approachable for the average user, especially with the updates coming in version 1.0. Medina said Google chose to collaborate with WordPress because they share a similar goal of providing a better user experience for the platform.</p>\n<p>&#8220;AMP is not an end goal in itself; the real objective is enabling all WordPress developers and site owners to provide awesome user experiences powered by WordPress,&#8221; Medina said. &#8220;AMP is just a component in that overall story, together with PWA capabilities, coding and performance best practices, Tide, etc.&#8221; In architecting the latest version of the plugin, Medina said the team is aiming to &#8220;enable native AMP experiences in WordPress without compromising content fidelity or surrendering the flexibility of the WordPress platform.&#8221;</p>\n<p>Whatever your opinion of the AMP project, the user-friendly theme support options and better validation error handling are game changing improvements for the WordPress plugin. It is currently active on more than 300,000 sites. Updates coming in the 1.0 release will enable thousands of WordPress users to have a more successful experience with AMP.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Sep 2018 21:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: The Month in WordPress: August 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6191\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/09/the-month-in-wordpress-august-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5553:\"<p>Many of the WordPress contribution teams have been working hard on the new WordPress editor, and the tools, services, and documentation surrounding it. Read on to find out more about this ongoing project, as well as everything else that has been happening around the WordPress community in August.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.8 is Released</h2>\n\n<p><a href=\"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\">WordPress 4.9.8 was released</a> at the beginning of the month. While this was a maintenance release fixing 46 bugs, it was significant for Core development because it made a point of highlighting Gutenberg — the new WordPress editor that is currently in development (more on that below).<br /></p>\n\n<p>This release also included some important updates to the privacy tools that were added to Core earlier this year.<br /></p>\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>New WordPress Editor Development Continues</h2>\n\n<p>Active development continues on <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new editing experience for WordPress Core. <a href=\"https://make.wordpress.org/core/2018/08/31/whats-new-in-gutenberg-31st-august/\">The latest version</a> features a number of important user experience improvements, including a new unified toolbar and support for a more focussed writing mode.<br /></p>\n\n<p>Users can test Gutenberg right now by installing <a href=\"https://wordpress.org/plugins/gutenberg/\">the plugin</a>, which currently has nearly 300,000 active installs. Along with that, <a href=\"https://wordpress.org/gutenberg/handbook/reference/faq/\">the Gutenberg Handbook</a> has some very useful information about how to use and develop for the new editor.<br /></p>\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/tag/gutenberg/\">the #gutenberg tag on the Core team blog</a> and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Planning Begins for the Next Global WordPress Translation Day</h2>\n\n<p>The Global WordPress Translation Day is a 24-hour event held online and all across the world. It is designed to bring communities together to translate WordPress into their local languages, and to help them connect with other communities doing the same thing.<br /></p>\n\n<p>There have been three Translation Days since April 2016, and <a href=\"https://make.wordpress.org/polyglots/2018/08/29/global-wordpress-translation-day-4-preliminary-planning/\">the fourth edition is in the planning stages now</a>. The Polyglots team, who organizes these events, is currently looking for input on the date, format, and content for the event and would love some feedback from the community.<br /></p>\n\n<p>Want to get involved in translating WordPress into your own language? Follow <a href=\"https://make.wordpress.org/polyglots/\">the Polyglots team blog</a> and join the #polyglots channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.<br /></p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul><li><a href=\"https://wordpress.org/support/upgrade-php/\">The Update PHP page on WordPress.org</a> has been revised and improved to make the reasons for upgrading more clear.</li><li>The Mobile team is looking for people to help test the latest versions of the <a href=\"https://make.wordpress.org/mobile/2018/08/29/call-for-testing-wordpress-for-android-10-8/\">Android</a> and <a href=\"https://make.wordpress.org/mobile/2018/08/28/call-for-testing-wordpress-for-ios-10-8/\">iOS</a> apps for WordPress.</li><li><a href=\"https://wordbits.io/\">WordBits</a> is a innovative new platform for publishing WordPress-based code snippets with the ability to download each snippet as a working plugin.</li><li>The Community Team <a href=\"https://make.wordpress.org/community/2018/08/27/wordcamp-incubator-2018-update-thread-august-edition/\">has some updates</a> about how things are going with this year’s WordCamp Incubator program.</li><li>The WordPress Support Forums <a href=\"https://make.wordpress.org/support/2018/08/august-16th-support-team-meeting-summary/\">now include a feature</a> allowing forum volunteers to easily report a post to the moderators for a follow-up.</li><li>WordCamp Kochi, India <a href=\"https://2018.kochi.wordcamp.org/wordcamp-kochi-2018-is-postponed-to-november-3rd-2018-saturday/\">has unfortunately had to postpone their event</a> due to floods in the region.</li><li><a href=\"http://www.wpglossary.net/\">WP Glossary</a> is a new site that offers helpful definitions of words that you could encounter when using WordPress.</li><li>A few WordPress community members <a href=\"https://make.wordpress.org/community/2018/08/13/in-the-words-of-the/\">have started a working group</a> to tackle the idea of building diverse WordPress  communities all across the world.</li><li>A new <a href=\"https://editorblockswp.com/library/\">Gutenberg Block Library</a> is available, listing the details of the many blocks available for the new editor.</li></ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Sep 2018 11:00:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: Gutenberg 3.7 Released, Introduces Spotlight Mode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83662\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/gutenberg-3-7-released-introduces-spotlight-mode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1786:\"<p>Gutenberg 3.7 <a href=\"https://wordpress.org/plugins/gutenberg/\">is available</a> for download and contains a number of changes. The Fixed Toolbar has been renamed Unified Toolbar. This is an optional mode that fixes all of the toolbar icons to the top of the editor, similar to the Classic editor.</p>\n\n<p>The team discovered that experienced users who don&#8217;t mind the disconnect between blocks and the toolbar preferred this layout. <br /></p>\n\n<div class=\"wp-block-image\"><img />Unified Toolbar</div>\n\n<p>There&#8217;s now an animation and icon specifically tailored for the Block Converter action. Hovering the cursor over a block&#8217;s icon will display two arrows that represent the ability to change block types. <br /></p>\n\n<div class=\"wp-block-image\"><img />Change Bock Types Icon</div>\n\n<p>For those who want to focus on one block of content at a time, there&#8217;s a new mode called Spotlight. When enabled, the blocks that are not being edited partially fade away and the block outlines disappear. This is an experimental attempt at introducing a <a href=\"https://wptavern.com/gutenberg-contributors-considering-a-focus-mode-for-writing\">Distraction Free Writing mode</a>. </p>\n\n<p>The <a href=\"https://github.com/WordPress/gutenberg/pull/9152\">icons have been updated</a> for Paragraph, Heading, and Subheading blocks to add clarity. Previous to 3.7, the Paragraph block icon looked like an alignment option causing confusion. </p>\n\n<div class=\"wp-block-image\"><img />Updated Icons for Paragraph, Heading, and Subheading blocks</div>\n\n<p>You can find a complete list of changes and links to corresponding issues on GitHub by visiting the <a href=\"https://make.wordpress.org/core/2018/08/31/whats-new-in-gutenberg-31st-august/\">Gutenberg 3.7 release post</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 31 Aug 2018 21:34:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WPWeekly Episode 329 – Gutenberg, Forks, and WordPress Development Cycles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=83650&preview=true&preview_id=83650\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wpweekly-episode-329-gutenberg-forks-and-wordpress-development-cycles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3189:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the news of the week. We have a candid conversation about what it would be like if Gutenberg were merged into WordPress trunk earlier versus developed as a plugin. We also talk about Classic Editor install numbers, praising forks of WordPress, and some new tools that are available to search Gutenberg blocks. This might be the first episode since Jacoby took over as co-host that we ended the show in under an hour.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-block-library-provides-a-searchable-index-of-individual-blocks\">Gutenberg Block Library Provides a Searchable Index of Individual Blocks</a></p>\n<p><a href=\"https://wptavern.com/gutenberg-and-classic-editor-plugins-pass-200000-active-installations-wordpress-4-9-9-planning-underway\">Gutenberg and Classic Editor Plugins Pass 200,000 Active Installations, WordPress 4.9.9 Planning Underway</a></p>\n<p><a href=\"https://wptavern.com/wordpress-to-support-classic-editor-for-many-years-to-come-plugin-and-theme-markets-expected-to-drive-gutenberg-adoption\">WordPress to Support Classic Editor for “Many Years to Come,” Plugin and Theme Markets Expected to Drive Gutenberg Adoption</a></p>\n<p><a href=\"https://wptavern.com/gary-pendergast-praises-classicpress-extends-invitation-for-collaboration\">Gary Pendergast Praises ClassicPress, Extends Invitation for Collaboration</a></p>\n<p><a href=\"https://wptavern.com/wordcamp-for-publishers-2018-videos-now-available-on-wordpress-tv\">WordCamp for Publishers 2018 Videos Now Available on WordPress.tv</a></p>\n<p><a href=\"https://wptavern.com/wpcampus-2018-videos-are-now-available-to-watch\">WPCampus 2018 Videos Are Now Available to Watch</a></p>\n<p><a href=\"https://wptavern.com/new-network-media-library-plugin-creates-a-shared-library-on-a-multisite-network\">New Network Media Library Plugin Creates a Shared Library on a Multisite Network</a></p>\n<p><a href=\"https://wptavern.com/new-wp-glossary-site-translates-wordpress-techspeak-into-plain-english\">New WP Glossary Site Translates WordPress Techspeak into Plain English</a></p>\n<h2>Picks of the Week:</h2>\n<p>Jeff &#8211; <a href=\"https://www.youtube.com/channel/UCuhqf3xFlQcopapi4xHiTfA\">WP Minute</a> by Malcom Peralty over at <a href=\"https://www.presstitan.com/\">PressTitan</a> &#8211; A new video series by a longtime friend and former co-host, David Peralty that provides quick updates on stories making the rounds in the WordPress ecosystem.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday,September 5th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #329:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Aug 2018 09:11:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: Distributor Plugin Now Publicly Available, Adds Gutenberg Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83634\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/distributor-plugin-now-publicly-available-adds-gutenberg-support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2468:\"<p>10up&#8217;s Distributor plugin has exited beta and is <a href=\"https://10up.com/blog/2018/distributor-wordpress-syndication-reuse/\" rel=\"noopener noreferrer\" target=\"_blank\">now publicly available</a>. The free plugin syndicates content across WordPress multisite networks and the web. It <a href=\"https://wptavern.com/distributor-plugin-now-in-beta-a-new-wordpress-content-syndication-solution-from-10up\" rel=\"noopener noreferrer\" target=\"_blank\">went into beta</a> last year and 10up reports that more than 100 organizations and developers participated in the beta program.</p>\n<p>&#8220;We’ve already integrated many improvements contributed by beta testers, including 10up clients,&#8221;  10up President Jake Goldman said. &#8220;Distributor has been approved for use on WordPress.com VIP and is ready for enterprise implementations. We have a roadmap of planned enhancements, with ambitious plans including more advanced media distribution and sophisticated &#8216;take down&#8217; features for the forced removal of distributed content.&#8221;</p>\n<p>The public release of Distributor also introduces support for Gutenberg for the settings that are available in the edit screen. Users should be aware that this new feature is still in beta, as Gutenberg is still in active development and not has not yet been merged into WordPress core.</p>\n<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/distributor-gutenberg.png?ssl=1\"><img /></a>image credit: <a href=\"https://10up.com/blog/2018/distributor-wordpress-syndication-reuse/\">10up</a>\n<p>&#8220;We’ve even considered interoperability between the classic editor and Gutenberg, and instances where custom blocks are not registered on remote sites,&#8221; Goldman said. &#8220;All aspects of the user interface have been carried over to ensure a coherent and cohesive experience.&#8221;</p>\n<p>10up has also launched an Enterprise support package that offers faster response for issues, support for custom integrations, and white-labeling. Support packages fund ongoing development and customers have the opportunity to help shape the roadmap of the plugin.</p>\n<p>Distributor is available at <a href=\"http://distributorplugin.com\" rel=\"noopener noreferrer\" target=\"_blank\">distributorplugin.com</a> where users can register to get a free license key. The plugin is also <a href=\"https://github.com/10up/distributor\" rel=\"noopener noreferrer\" target=\"_blank\">available on GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Aug 2018 21:48:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: Gutenberg Contributors Considering a “Focus Mode” for Writing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83525\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/gutenberg-contributors-considering-a-focus-mode-for-writing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4462:\"<p>After overwhelming <a href=\"https://wordpress.org/support/plugin/gutenberg/reviews/\" rel=\"noopener noreferrer\" target=\"_blank\">feedback from testers</a> indicating that Gutenberg is not well suited for simply writing posts, the project&#8217;s contributors are considering a few options for improving the writing flow. These proposals are spread across several tickets on GitHub.</p>\n<p>Two weeks ago, Gutenberg technical lead Matias Ventura submitted a PR exploring the possibility of <a href=\"https://github.com/WordPress/gutenberg/pull/8920\" rel=\"noopener noreferrer\" target=\"_blank\">introducing a &#8220;Focus Mode&#8221; to the editor</a>. This mode would highlight the current selected block with all other blocks faded while the &#8220;fix toolbar to header&#8221; option is enabled. The video below shows an example of what that might look like:</p>\n<p></p>\n<p>&#8220;The aim is to provide a writing experience that can satisfy those that would prefer an environment with the least amount of distractions at the expense of tool clarity,&#8221; Ventura said. &#8220;I&#8217;ve been testing this and personally find it a very enjoyable mode to toggle when I just want to write for a bit. Paired with a robust set of keyboard shortcuts it could be quite nice to use. In this sense, it&#8217;d be important to provide an easy keyboard shortcut to toggle the mode on and off.&#8221;</p>\n<p>Automattic designer Kjell Reigstad opened another <a href=\"https://github.com/WordPress/gutenberg/issues/9334\" rel=\"noopener noreferrer\" target=\"_blank\">ticket</a> that proposes transforming the &#8220;Fix Toolbar to Top&#8221; setting into a &#8220;Focus Mode.&#8221;</p>\n<p>&#8220;A key feedback point we hear is that Gutenberg’s interface can be a little overwhelming,&#8221; Reigstad said. &#8220;This often comes from users who more commonly focus on &#8216;writing&#8217; versus &#8216;building&#8217; their posts. They find the contextual block controls and block hover states to be distracting: When they&#8217;re focused on writing, they don&#8217;t necessarily want to think about blocks — they just want to write.&#8221;</p>\n<p>Reigstad said this same subset of users also misses having the formatting toolbar at the top of the page, as it is in other applications like Google Docs, MS Word, and WordPress&#8217; classic editor. He proposed a solution that addresses these concerns by combining the &#8220;Fix Toolbar to Top&#8221; option with the following UI changes that would provide a more complete &#8220;Focus Mode:&#8221;</p>\n<ul>\n<li>The block toolbar would be pinned to the top of the screen.</li>\n<li>The editor would be full screen.</li>\n<li>Block outlines would be removed for both hover and selected states.</li>\n<li>The block label would appear on a delay, and be toned down visually.</li>\n<li>Block mover + block options would also appear on a delay.</li>\n</ul>\n<p>Reigstad also created a video demo of this concept:</p>\n<p></p>\n<p>This new &#8220;focus Mode&#8221; concept is also compatible with Ventura&#8217;s proposal for highlighting the current selected block and fading out the others. It could either be present in both modes or available as an add-on feature.</p>\n<p>A couple of well-written reviews on the Gutenberg plugin <a href=\"https://wordpress.org/support/topic/not-everyone-needs-everything-to-be-blocks-gutenberg-must-focus-on-writers/\" rel=\"noopener noreferrer\" target=\"_blank\">describe how the concept of blocks complicates the writing experience</a> and how Gutenberg&#8217;s current writing environment is <a href=\"https://wordpress.org/support/topic/gutenberg-gets-wordpress-wrong-and-is-a-terrible-writing-environment/\" rel=\"noopener noreferrer\" target=\"_blank\">visually distracting and disruptive</a>. This has been a major concern since the plugin was first released for testing, as there are many users who depend on WordPress for its writing features more than the page building aspects.</p>\n<p>The Gutenberg team&#8217;s new ideas go a long way towards decluttering the interface for writers. This is especially important for those who want to do their long-form writing inside WordPress, instead of beginning their work in an application that is dedicated to providing a distraction-free writing experience. Introducing a &#8220;focus mode&#8221; or &#8220;writing mode&#8221; will solve one of the most critical issues with the new editor and we&#8217;re looking forward to seeing how this develops.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Aug 2018 18:32:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: WordPress Is For You\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2610\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://heropress.com/wordpress-is-for-you/#utm_source=rss&utm_medium=rss&utm_campaign=wordpress-is-for-you\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3215:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/08/OpenUpDoors-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: This one simple attitude adjustment, changing “no” to “let me look into that”, opened up more doors and possibilities than I ever thought possible.\" /><p>When HeroPress started, a stated intention was to be a voice for people on the fringe of the Western WordPress culture. In my head I thought this geographical, and involved places like Africa and Asia. I quickly came to realize that everyone is on the fringe of something.</p>\n<p>This month&#8217;s HeroPress replay is titled &#8220;<a href=\"https://heropress.com/essays/doing-what-i-want/\">Doing What I Want</a>&#8221;  by Becky Davis. Becky&#8217;s an American, but she doesn&#8217;t fit the American IT worker mold of young white male. In fact, her gender and age were regular friction points in her attempts to get jobs. She&#8217;s not old by any means, but she&#8217;s not 19 either.</p>\n<p>WordPress became a place for her where things like age and gender don&#8217;t matter nearly as much as other jobs. Check out Becky&#8217;s essay and perhaps drop her a comment.</p>\n<p>&nbsp;</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/doing-what-i-want/\">Doing What I Want</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: WordPress Is For You\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=WordPress%20Is%20For%20You&via=heropress&url=https%3A%2F%2Fheropress.com%2Fwordpress-is-for-you%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: WordPress Is For You\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fwordpress-is-for-you%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fwordpress-is-for-you%2F&title=WordPress+Is+For+You\" rel=\"nofollow\" target=\"_blank\" title=\"Share: WordPress Is For You\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/wordpress-is-for-you/&media=https://heropress.com/wp-content/uploads/2015/08/OpenUpDoors-150x150.jpg&description=WordPress Is For You\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: WordPress Is For You\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/wordpress-is-for-you/\" title=\"WordPress Is For You\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/wordpress-is-for-you/\">WordPress Is For You</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Aug 2018 12:17:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 01 Oct 2018 08:28:01 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Mon, 01 Oct 2018 08:00:29 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(143, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1538425682', 'no'),
(144, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1538382482', 'no'),
(145, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1538425682', 'no'),
(146, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ru.wordpress.org/news/2018/09/meetup-moscow-1809/\'>Электронная коммерция с WordPress, как создать интернет-магазин?</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-tokyo-2018-highlights-recaps-aftermovie-and-more\'>WPTavern: WordCamp Tokyo 2018: Highlights, Recaps, Aftermovie, and More</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-theme-developers-begin-marketing-themes-as-gutenberg-compatible\'>WPTavern: WordPress Theme Developers Begin Marketing Themes as Gutenberg Compatible</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-331-status-update-on-gutenberg-with-gary-pendergast\'>WPTavern: WPWeekly Episode 331 – Status Update on Gutenberg With Gary Pendergast</a></li></ul></div>', 'no'),
(147, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1538393286', 'no'),
(148, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4510;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3026;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2591;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2449;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1681;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1673;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1460;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1403;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1400;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1334;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1246;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1116;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1076;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1043;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1040;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:925;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:894;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:835;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:817;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:809;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:736;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:705;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:686;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:660;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:659;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:648;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:618;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:617;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:599;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:555;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:547;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:544;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:533;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:523;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:517;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:511;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:497;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:489;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:483;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:459;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:454;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:448;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:444;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:416;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:390;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:378;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:367;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:366;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:364;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:362;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:354;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:350;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:348;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:343;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:339;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:330;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:293;}}', 'no'),
(156, 'woocommerce_store_address', 'jolly-fashion', 'yes'),
(157, 'woocommerce_store_address_2', '', 'yes'),
(158, 'woocommerce_store_city', 'Киев', 'yes'),
(159, 'woocommerce_default_country', 'UA', 'yes'),
(160, 'woocommerce_store_postcode', '12345', 'yes'),
(161, 'woocommerce_allowed_countries', 'all', 'yes'),
(162, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(163, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_ship_to_countries', '', 'yes'),
(165, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(166, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(167, 'woocommerce_calc_taxes', 'no', 'yes'),
(168, 'woocommerce_enable_coupons', 'yes', 'yes'),
(169, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(170, 'woocommerce_currency', 'UAH', 'yes'),
(171, 'woocommerce_currency_pos', 'right', 'yes'),
(172, 'woocommerce_price_thousand_sep', ',', 'yes'),
(173, 'woocommerce_price_decimal_sep', '.', 'yes'),
(174, 'woocommerce_price_num_decimals', '2', 'yes'),
(175, 'woocommerce_shop_page_id', '5', 'yes'),
(176, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(177, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(178, 'woocommerce_weight_unit', 'kg', 'yes'),
(179, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(181, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(182, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(183, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(184, 'woocommerce_review_rating_required', 'yes', 'no'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'onceagain@ua.fm', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', '', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'no', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(214, 'woocommerce_registration_generate_username', 'yes', 'no'),
(215, 'woocommerce_registration_generate_password', 'yes', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(219, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(220, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(221, 'woocommerce_trash_pending_orders', '', 'no'),
(222, 'woocommerce_trash_failed_orders', '', 'no'),
(223, 'woocommerce_trash_cancelled_orders', '', 'no'),
(224, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(225, 'woocommerce_email_from_name', 'Jolly-Fashion', 'no'),
(226, 'woocommerce_email_from_address', 'onceagain@ua.fm', 'no'),
(227, 'woocommerce_email_header_image', '', 'no'),
(228, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(229, 'woocommerce_email_base_color', '#96588a', 'no'),
(230, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(231, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(232, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(233, 'woocommerce_cart_page_id', '6', 'yes'),
(234, 'woocommerce_checkout_page_id', '7', 'yes'),
(235, 'woocommerce_myaccount_page_id', '8', 'yes'),
(236, 'woocommerce_terms_page_id', '', 'no'),
(237, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(238, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(240, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(241, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(242, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(243, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(244, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(245, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(246, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(247, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(248, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(249, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(250, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(251, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(252, 'woocommerce_api_enabled', 'no', 'yes'),
(253, 'woocommerce_single_image_width', '600', 'yes'),
(254, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(255, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(256, 'woocommerce_demo_store', 'no', 'no'),
(257, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(258, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(259, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(260, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(262, 'default_product_cat', '15', 'yes'),
(265, 'woocommerce_version', '3.4.5', 'yes'),
(266, 'woocommerce_db_version', '3.4.5', 'yes'),
(267, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(268, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(269, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(270, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(286, '_transient_timeout_external_ip_address_127.0.0.1', '1538987395', 'no'),
(287, '_transient_external_ip_address_127.0.0.1', '195.135.197.233', 'no'),
(291, 'woocommerce_product_type', 'physical', 'yes'),
(292, 'woocommerce_allow_tracking', 'no', 'yes'),
(293, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(294, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(295, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(296, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(298, '_transient_shipping-transient-version', '1538382929', 'yes'),
(299, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"50\";}', 'yes'),
(303, '_transient_timeout__woocommerce_helper_updates', '1538426159', 'no'),
(304, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1538382959;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(306, 'current_theme', 'Jolly Fashion', 'yes'),
(307, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538384234;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(308, 'theme_switched', '', 'yes'),
(310, 'woocommerce_catalog_rows', '4', 'yes'),
(311, 'woocommerce_catalog_columns', '3', 'yes'),
(312, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(313, 'storefront_nux_fresh_site', '0', 'yes'),
(314, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538383131;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(315, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538383131;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(316, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538384228;s:7:\"checked\";a:5:{s:13:\"jolly-fashion\";s:3:\"1.0\";s:10:\"storefront\";s:5:\"2.3.3\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(317, 'storefront_nux_dismissed', '1', 'yes'),
(318, 'storefront_nux_guided_tour', '1', 'yes'),
(322, '_transient_product_query-transient-version', '1538386430', 'yes'),
(324, 'product_cat_children', 'a:0:{}', 'yes'),
(327, '_transient_product-transient-version', '1538386430', 'yes'),
(358, 'theme_mods_jolly-fashion', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538386259;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(361, '_transient_timeout_wc_product_loop040c1538383444', '1540977218', 'no'),
(362, '_transient_wc_product_loop040c1538383444', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(363, '_transient_timeout_wc_product_loopa47f1538383444', '1540977218', 'no'),
(364, '_transient_wc_product_loopa47f1538383444', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(365, '_transient_timeout_wc_shipping_method_count_1_1538382929', '1540977307', 'no'),
(366, '_transient_wc_shipping_method_count_1_1538382929', '1', 'no'),
(369, '_site_transient_timeout_theme_roots', '1538388057', 'no'),
(370, '_site_transient_theme_roots', 'a:5:{s:13:\"jolly-fashion\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(453, '_transient_timeout_wc_term_counts', '1540978430', 'no'),
(454, '_transient_wc_term_counts', 'a:4:{i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:15;s:0:\"\";}', 'no'),
(455, '_transient_is_multi_author', '0', 'yes'),
(462, '_transient_timeout_wc_products_onsale', '1540978432', 'no'),
(463, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(468, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(469, '_transient_timeout_wc_report_sales_by_date', '1538476753', 'no'),
(470, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"5807fe25ff64865cf3ea1fab6a6cd126\";a:0:{}s:32:\"0471b58ec9ce16671bdee593ede4c35b\";a:0:{}s:32:\"39ea1e8d3113eff8dfa51be083ee5b18\";a:0:{}s:32:\"5fbd2098c6ca68984869747ee7cdc5dd\";N;s:32:\"61dbda90a0c9135ecb44bf1578d1bdde\";a:0:{}s:32:\"bf79cf72ad3739e3b7b384b7c6cabd07\";a:0:{}s:32:\"89a1b25d6f8e65b804412cd2530dec86\";a:0:{}s:32:\"248c80775af6ff1a3ac1cd9cc57114f5\";a:0:{}}', 'no'),
(471, '_transient_timeout_wc_admin_report', '1538476753', 'no'),
(472, '_transient_wc_admin_report', 'a:1:{s:32:\"0680ce3fd73ef97cf3064ca5d9946664\";a:0:{}}', 'no'),
(473, '_transient_timeout_wc_low_stock_count', '1540982353', 'no'),
(474, '_transient_wc_low_stock_count', '0', 'no'),
(475, '_transient_timeout_wc_outofstock_count', '1540982353', 'no'),
(476, '_transient_wc_outofstock_count', '0', 'no'),
(478, '_transient_timeout_wc_featured_products', '1540988828', 'no'),
(479, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(480, '_transient_timeout_wc_product_loop040c1538386430', '1540988828', 'no'),
(481, '_transient_wc_product_loop040c1538386430', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(482, '_transient_timeout_wc_product_loopa47f1538386430', '1540988828', 'no'),
(483, '_transient_wc_product_loopa47f1538386430', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wp_attached_file', '2018/10/beanie.jpg'),
(4, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/beanie.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"beanie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 9, '_starter_content_theme', 'storefront'),
(6, 9, '_customize_draft_post_name', 'beanie-image'),
(7, 10, '_wp_attached_file', '2018/10/belt.jpg'),
(8, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2018/10/belt.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"belt-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_starter_content_theme', 'storefront'),
(10, 10, '_customize_draft_post_name', 'belt-image'),
(11, 11, '_wp_attached_file', '2018/10/cap.jpg'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2018/10/cap.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"cap-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_starter_content_theme', 'storefront'),
(14, 11, '_customize_draft_post_name', 'cap-image'),
(15, 12, '_wp_attached_file', '2018/10/hoodie-with-logo.jpg'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2018/10/hoodie-with-logo.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"hoodie-with-logo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_starter_content_theme', 'storefront'),
(18, 12, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(19, 13, '_wp_attached_file', '2018/10/hoodie-with-pocket.jpg'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/10/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-pocket-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 13, '_starter_content_theme', 'storefront'),
(22, 13, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(23, 14, '_wp_attached_file', '2018/10/hoodie-with-zipper.jpg'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/10/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-zipper-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 14, '_starter_content_theme', 'storefront'),
(26, 14, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(27, 15, '_wp_attached_file', '2018/10/hoodie.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/hoodie.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"hoodie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 15, '_starter_content_theme', 'storefront'),
(30, 15, '_customize_draft_post_name', 'hoodie-image'),
(31, 16, '_wp_attached_file', '2018/10/long-sleeve-tee.jpg'),
(32, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2018/10/long-sleeve-tee.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"long-sleeve-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 16, '_starter_content_theme', 'storefront'),
(34, 16, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(35, 17, '_wp_attached_file', '2018/10/polo.jpg'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/10/polo.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"polo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"polo-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"polo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 17, '_starter_content_theme', 'storefront'),
(38, 17, '_customize_draft_post_name', 'polo-image'),
(39, 18, '_wp_attached_file', '2018/10/sunglasses.jpg'),
(40, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2018/10/sunglasses.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"sunglasses-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"sunglasses-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"sunglasses-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 18, '_starter_content_theme', 'storefront'),
(42, 18, '_customize_draft_post_name', 'sunglasses-image'),
(43, 19, '_wp_attached_file', '2018/10/tshirt.jpg'),
(44, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/tshirt.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"tshirt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"tshirt-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"tshirt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 19, '_starter_content_theme', 'storefront'),
(46, 19, '_customize_draft_post_name', 'tshirt-image'),
(47, 20, '_wp_attached_file', '2018/10/vneck-tee.jpg'),
(48, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/10/vneck-tee.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"vneck-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"vneck-tee-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"vneck-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 20, '_starter_content_theme', 'storefront'),
(50, 20, '_customize_draft_post_name', 'vneck-tee-image'),
(51, 21, '_wp_attached_file', '2018/10/hero.jpg'),
(52, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2018/10/hero.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"hero-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"hero-416x258.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 21, '_starter_content_theme', 'storefront'),
(54, 21, '_customize_draft_post_name', 'hero-image'),
(55, 22, '_wp_attached_file', '2018/10/accessories.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/10/accessories.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"accessories-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"accessories-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"accessories-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 22, '_starter_content_theme', 'storefront'),
(58, 22, '_customize_draft_post_name', 'accessories-image'),
(59, 23, '_wp_attached_file', '2018/10/tshirts.jpg'),
(60, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/10/tshirts.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"tshirts-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"tshirts-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 23, '_starter_content_theme', 'storefront'),
(62, 23, '_customize_draft_post_name', 'tshirts-image'),
(63, 24, '_wp_attached_file', '2018/10/hoodies.jpg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/10/hoodies.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"hoodies-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"hoodies-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:19:\"hoodies-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 24, '_starter_content_theme', 'storefront'),
(66, 24, '_customize_draft_post_name', 'hoodies-image'),
(67, 25, '_thumbnail_id', '21'),
(68, 25, '_wp_page_template', 'template-homepage.php'),
(69, 25, '_customize_draft_post_name', '%d0%b4%d0%be%d0%b1%d1%80%d0%be-%d0%bf%d0%be%d0%b6%d0%b0%d0%bb%d0%be%d0%b2%d0%b0%d1%82%d1%8c'),
(70, 25, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(71, 26, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(72, 26, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(73, 27, '_thumbnail_id', '9'),
(74, 27, '_customize_draft_post_name', 'beanie'),
(75, 27, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(76, 28, '_thumbnail_id', '10'),
(77, 28, '_customize_draft_post_name', 'belt'),
(78, 28, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(79, 29, '_thumbnail_id', '11'),
(80, 29, '_customize_draft_post_name', 'cap'),
(81, 29, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(82, 30, '_thumbnail_id', '18'),
(83, 30, '_customize_draft_post_name', 'sunglasses'),
(84, 30, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(85, 31, '_thumbnail_id', '12'),
(86, 31, '_customize_draft_post_name', 'hoodie-with-logo'),
(87, 31, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(88, 32, '_thumbnail_id', '13'),
(89, 32, '_customize_draft_post_name', 'hoodie-with-pocket'),
(90, 32, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(91, 33, '_thumbnail_id', '14'),
(92, 33, '_customize_draft_post_name', 'hoodie-with-zipper'),
(93, 33, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(94, 34, '_thumbnail_id', '15'),
(95, 34, '_customize_draft_post_name', 'hoodie'),
(96, 34, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(97, 35, '_thumbnail_id', '16'),
(98, 35, '_customize_draft_post_name', 'long-sleeve-tee'),
(99, 35, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(100, 36, '_thumbnail_id', '17'),
(101, 36, '_customize_draft_post_name', 'polo'),
(102, 36, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(103, 37, '_thumbnail_id', '19'),
(104, 37, '_customize_draft_post_name', 'tshirt'),
(105, 37, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(106, 38, '_thumbnail_id', '20'),
(107, 38, '_customize_draft_post_name', 'vneck-tee'),
(108, 38, '_customize_changeset_uuid', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6'),
(109, 27, '_wc_review_count', '0'),
(110, 27, '_wc_rating_count', 'a:0:{}'),
(111, 27, '_wc_average_rating', '0'),
(112, 27, '_sku', ''),
(113, 27, '_regular_price', '20'),
(114, 27, '_sale_price', '18'),
(115, 27, '_sale_price_dates_from', ''),
(116, 27, '_sale_price_dates_to', ''),
(117, 27, 'total_sales', '0'),
(118, 27, '_tax_status', 'taxable'),
(119, 27, '_tax_class', ''),
(120, 27, '_manage_stock', 'no'),
(121, 27, '_backorders', 'no'),
(122, 27, '_sold_individually', 'no'),
(123, 27, '_weight', ''),
(124, 27, '_length', ''),
(125, 27, '_width', ''),
(126, 27, '_height', ''),
(127, 27, '_upsell_ids', 'a:0:{}'),
(128, 27, '_crosssell_ids', 'a:0:{}'),
(129, 27, '_purchase_note', ''),
(130, 27, '_default_attributes', 'a:0:{}'),
(131, 27, '_virtual', 'no'),
(132, 27, '_downloadable', 'no'),
(133, 27, '_product_image_gallery', ''),
(134, 27, '_download_limit', '-1'),
(135, 27, '_download_expiry', '-1'),
(136, 27, '_stock', NULL),
(137, 27, '_stock_status', 'instock'),
(138, 27, '_product_version', '3.4.5'),
(139, 27, '_price', '18'),
(140, 28, '_wc_review_count', '0'),
(141, 28, '_wc_rating_count', 'a:0:{}'),
(142, 28, '_wc_average_rating', '0'),
(143, 28, '_sku', ''),
(144, 28, '_regular_price', '65'),
(145, 28, '_sale_price', '55'),
(146, 28, '_sale_price_dates_from', ''),
(147, 28, '_sale_price_dates_to', ''),
(148, 28, 'total_sales', '0'),
(149, 28, '_tax_status', 'taxable'),
(150, 28, '_tax_class', ''),
(151, 28, '_manage_stock', 'no'),
(152, 28, '_backorders', 'no'),
(153, 28, '_sold_individually', 'no'),
(154, 28, '_weight', ''),
(155, 28, '_length', ''),
(156, 28, '_width', ''),
(157, 28, '_height', ''),
(158, 28, '_upsell_ids', 'a:0:{}'),
(159, 28, '_crosssell_ids', 'a:0:{}'),
(160, 28, '_purchase_note', ''),
(161, 28, '_default_attributes', 'a:0:{}'),
(162, 28, '_virtual', 'no'),
(163, 28, '_downloadable', 'no'),
(164, 28, '_product_image_gallery', ''),
(165, 28, '_download_limit', '-1'),
(166, 28, '_download_expiry', '-1'),
(167, 28, '_stock', NULL),
(168, 28, '_stock_status', 'instock'),
(169, 28, '_product_version', '3.4.5'),
(170, 28, '_price', '55'),
(171, 29, '_wc_review_count', '0'),
(172, 29, '_wc_rating_count', 'a:0:{}'),
(173, 29, '_wc_average_rating', '0'),
(174, 29, '_sku', ''),
(175, 29, '_regular_price', '18'),
(176, 29, '_sale_price', '16'),
(177, 29, '_sale_price_dates_from', ''),
(178, 29, '_sale_price_dates_to', ''),
(179, 29, 'total_sales', '0'),
(180, 29, '_tax_status', 'taxable'),
(181, 29, '_tax_class', ''),
(182, 29, '_manage_stock', 'no'),
(183, 29, '_backorders', 'no'),
(184, 29, '_sold_individually', 'no'),
(185, 29, '_weight', ''),
(186, 29, '_length', ''),
(187, 29, '_width', ''),
(188, 29, '_height', ''),
(189, 29, '_upsell_ids', 'a:0:{}'),
(190, 29, '_crosssell_ids', 'a:0:{}'),
(191, 29, '_purchase_note', ''),
(192, 29, '_default_attributes', 'a:0:{}'),
(193, 29, '_virtual', 'no'),
(194, 29, '_downloadable', 'no'),
(195, 29, '_product_image_gallery', ''),
(196, 29, '_download_limit', '-1'),
(197, 29, '_download_expiry', '-1'),
(198, 29, '_stock', NULL),
(199, 29, '_stock_status', 'instock'),
(200, 29, '_product_version', '3.4.5'),
(201, 29, '_price', '16'),
(202, 30, '_wc_review_count', '0'),
(203, 30, '_wc_rating_count', 'a:0:{}'),
(204, 30, '_wc_average_rating', '0'),
(205, 30, '_sku', ''),
(206, 30, '_regular_price', '90'),
(207, 30, '_sale_price', ''),
(208, 30, '_sale_price_dates_from', ''),
(209, 30, '_sale_price_dates_to', ''),
(210, 30, 'total_sales', '0'),
(211, 30, '_tax_status', 'taxable'),
(212, 30, '_tax_class', ''),
(213, 30, '_manage_stock', 'no'),
(214, 30, '_backorders', 'no'),
(215, 30, '_sold_individually', 'no'),
(216, 30, '_weight', ''),
(217, 30, '_length', ''),
(218, 30, '_width', ''),
(219, 30, '_height', ''),
(220, 30, '_upsell_ids', 'a:0:{}'),
(221, 30, '_crosssell_ids', 'a:0:{}'),
(222, 30, '_purchase_note', ''),
(223, 30, '_default_attributes', 'a:0:{}'),
(224, 30, '_virtual', 'no'),
(225, 30, '_downloadable', 'no'),
(226, 30, '_product_image_gallery', ''),
(227, 30, '_download_limit', '-1'),
(228, 30, '_download_expiry', '-1'),
(229, 30, '_stock', NULL),
(230, 30, '_stock_status', 'instock'),
(231, 30, '_product_version', '3.4.5'),
(232, 30, '_price', '90'),
(233, 31, '_wc_review_count', '0'),
(234, 31, '_wc_rating_count', 'a:0:{}'),
(235, 31, '_wc_average_rating', '0'),
(236, 31, '_sku', ''),
(237, 31, '_regular_price', '45'),
(238, 31, '_sale_price', ''),
(239, 31, '_sale_price_dates_from', ''),
(240, 31, '_sale_price_dates_to', ''),
(241, 31, 'total_sales', '0'),
(242, 31, '_tax_status', 'taxable'),
(243, 31, '_tax_class', ''),
(244, 31, '_manage_stock', 'no'),
(245, 31, '_backorders', 'no'),
(246, 31, '_sold_individually', 'no'),
(247, 31, '_weight', ''),
(248, 31, '_length', ''),
(249, 31, '_width', ''),
(250, 31, '_height', ''),
(251, 31, '_upsell_ids', 'a:0:{}'),
(252, 31, '_crosssell_ids', 'a:0:{}'),
(253, 31, '_purchase_note', ''),
(254, 31, '_default_attributes', 'a:0:{}'),
(255, 31, '_virtual', 'no'),
(256, 31, '_downloadable', 'no'),
(257, 31, '_product_image_gallery', ''),
(258, 31, '_download_limit', '-1'),
(259, 31, '_download_expiry', '-1'),
(260, 31, '_stock', NULL),
(261, 31, '_stock_status', 'instock'),
(262, 31, '_product_version', '3.4.5'),
(263, 31, '_price', '45'),
(264, 32, '_wc_review_count', '0'),
(265, 32, '_wc_rating_count', 'a:0:{}'),
(266, 32, '_wc_average_rating', '0'),
(267, 32, '_sku', ''),
(268, 32, '_regular_price', '45'),
(269, 32, '_sale_price', '35'),
(270, 32, '_sale_price_dates_from', ''),
(271, 32, '_sale_price_dates_to', ''),
(272, 32, 'total_sales', '0'),
(273, 32, '_tax_status', 'taxable'),
(274, 32, '_tax_class', ''),
(275, 32, '_manage_stock', 'no'),
(276, 32, '_backorders', 'no'),
(277, 32, '_sold_individually', 'no'),
(278, 32, '_weight', ''),
(279, 32, '_length', ''),
(280, 32, '_width', ''),
(281, 32, '_height', ''),
(282, 32, '_upsell_ids', 'a:0:{}'),
(283, 32, '_crosssell_ids', 'a:0:{}'),
(284, 32, '_purchase_note', ''),
(285, 32, '_default_attributes', 'a:0:{}'),
(286, 32, '_virtual', 'no'),
(287, 32, '_downloadable', 'no'),
(288, 32, '_product_image_gallery', ''),
(289, 32, '_download_limit', '-1'),
(290, 32, '_download_expiry', '-1'),
(291, 32, '_stock', NULL),
(292, 32, '_stock_status', 'instock'),
(293, 32, '_product_version', '3.4.5'),
(294, 32, '_price', '35'),
(295, 33, '_wc_review_count', '0'),
(296, 33, '_wc_rating_count', 'a:0:{}'),
(297, 33, '_wc_average_rating', '0'),
(298, 33, '_sku', ''),
(299, 33, '_regular_price', '45'),
(300, 33, '_sale_price', ''),
(301, 33, '_sale_price_dates_from', ''),
(302, 33, '_sale_price_dates_to', ''),
(303, 33, 'total_sales', '0'),
(304, 33, '_tax_status', 'taxable'),
(305, 33, '_tax_class', ''),
(306, 33, '_manage_stock', 'no'),
(307, 33, '_backorders', 'no'),
(308, 33, '_sold_individually', 'no'),
(309, 33, '_weight', ''),
(310, 33, '_length', ''),
(311, 33, '_width', ''),
(312, 33, '_height', ''),
(313, 33, '_upsell_ids', 'a:0:{}'),
(314, 33, '_crosssell_ids', 'a:0:{}'),
(315, 33, '_purchase_note', ''),
(316, 33, '_default_attributes', 'a:0:{}'),
(317, 33, '_virtual', 'no'),
(318, 33, '_downloadable', 'no'),
(319, 33, '_product_image_gallery', ''),
(320, 33, '_download_limit', '-1'),
(321, 33, '_download_expiry', '-1'),
(322, 33, '_stock', NULL),
(323, 33, '_stock_status', 'instock'),
(324, 33, '_product_version', '3.4.5'),
(325, 33, '_price', '45'),
(326, 34, '_wc_review_count', '0'),
(327, 34, '_wc_rating_count', 'a:0:{}'),
(328, 34, '_wc_average_rating', '0'),
(329, 34, '_sku', ''),
(330, 34, '_regular_price', '45'),
(331, 34, '_sale_price', '42'),
(332, 34, '_sale_price_dates_from', ''),
(333, 34, '_sale_price_dates_to', ''),
(334, 34, 'total_sales', '0'),
(335, 34, '_tax_status', 'taxable'),
(336, 34, '_tax_class', ''),
(337, 34, '_manage_stock', 'no'),
(338, 34, '_backorders', 'no'),
(339, 34, '_sold_individually', 'no'),
(340, 34, '_weight', ''),
(341, 34, '_length', ''),
(342, 34, '_width', ''),
(343, 34, '_height', ''),
(344, 34, '_upsell_ids', 'a:0:{}'),
(345, 34, '_crosssell_ids', 'a:0:{}'),
(346, 34, '_purchase_note', ''),
(347, 34, '_default_attributes', 'a:0:{}'),
(348, 34, '_virtual', 'no'),
(349, 34, '_downloadable', 'no'),
(350, 34, '_product_image_gallery', ''),
(351, 34, '_download_limit', '-1'),
(352, 34, '_download_expiry', '-1'),
(353, 34, '_stock', NULL),
(354, 34, '_stock_status', 'instock'),
(355, 34, '_product_version', '3.4.5'),
(356, 34, '_price', '42'),
(357, 35, '_wc_review_count', '0'),
(358, 35, '_wc_rating_count', 'a:0:{}'),
(359, 35, '_wc_average_rating', '0'),
(360, 35, '_sku', ''),
(361, 35, '_regular_price', '25'),
(362, 35, '_sale_price', ''),
(363, 35, '_sale_price_dates_from', ''),
(364, 35, '_sale_price_dates_to', ''),
(365, 35, 'total_sales', '0'),
(366, 35, '_tax_status', 'taxable'),
(367, 35, '_tax_class', ''),
(368, 35, '_manage_stock', 'no'),
(369, 35, '_backorders', 'no'),
(370, 35, '_sold_individually', 'no'),
(371, 35, '_weight', ''),
(372, 35, '_length', ''),
(373, 35, '_width', ''),
(374, 35, '_height', ''),
(375, 35, '_upsell_ids', 'a:0:{}'),
(376, 35, '_crosssell_ids', 'a:0:{}'),
(377, 35, '_purchase_note', ''),
(378, 35, '_default_attributes', 'a:0:{}'),
(379, 35, '_virtual', 'no'),
(380, 35, '_downloadable', 'no'),
(381, 35, '_product_image_gallery', ''),
(382, 35, '_download_limit', '-1'),
(383, 35, '_download_expiry', '-1'),
(384, 35, '_stock', NULL),
(385, 35, '_stock_status', 'instock'),
(386, 35, '_product_version', '3.4.5'),
(387, 35, '_price', '25'),
(388, 36, '_wc_review_count', '0'),
(389, 36, '_wc_rating_count', 'a:0:{}'),
(390, 36, '_wc_average_rating', '0'),
(391, 36, '_sku', ''),
(392, 36, '_regular_price', '20'),
(393, 36, '_sale_price', ''),
(394, 36, '_sale_price_dates_from', ''),
(395, 36, '_sale_price_dates_to', ''),
(396, 36, 'total_sales', '0'),
(397, 36, '_tax_status', 'taxable'),
(398, 36, '_tax_class', ''),
(399, 36, '_manage_stock', 'no'),
(400, 36, '_backorders', 'no'),
(401, 36, '_sold_individually', 'no'),
(402, 36, '_weight', ''),
(403, 36, '_length', ''),
(404, 36, '_width', ''),
(405, 36, '_height', ''),
(406, 36, '_upsell_ids', 'a:0:{}'),
(407, 36, '_crosssell_ids', 'a:0:{}'),
(408, 36, '_purchase_note', ''),
(409, 36, '_default_attributes', 'a:0:{}'),
(410, 36, '_virtual', 'no'),
(411, 36, '_downloadable', 'no'),
(412, 36, '_product_image_gallery', ''),
(413, 36, '_download_limit', '-1'),
(414, 36, '_download_expiry', '-1'),
(415, 36, '_stock', NULL),
(416, 36, '_stock_status', 'instock'),
(417, 36, '_product_version', '3.4.5'),
(418, 36, '_price', '20'),
(419, 37, '_wc_review_count', '0'),
(420, 37, '_wc_rating_count', 'a:0:{}'),
(421, 37, '_wc_average_rating', '0'),
(422, 37, '_sku', ''),
(423, 37, '_regular_price', '18'),
(424, 37, '_sale_price', ''),
(425, 37, '_sale_price_dates_from', ''),
(426, 37, '_sale_price_dates_to', ''),
(427, 37, 'total_sales', '0'),
(428, 37, '_tax_status', 'taxable'),
(429, 37, '_tax_class', ''),
(430, 37, '_manage_stock', 'no'),
(431, 37, '_backorders', 'no'),
(432, 37, '_sold_individually', 'no'),
(433, 37, '_weight', ''),
(434, 37, '_length', ''),
(435, 37, '_width', ''),
(436, 37, '_height', ''),
(437, 37, '_upsell_ids', 'a:0:{}'),
(438, 37, '_crosssell_ids', 'a:0:{}'),
(439, 37, '_purchase_note', ''),
(440, 37, '_default_attributes', 'a:0:{}'),
(441, 37, '_virtual', 'no'),
(442, 37, '_downloadable', 'no'),
(443, 37, '_product_image_gallery', ''),
(444, 37, '_download_limit', '-1'),
(445, 37, '_download_expiry', '-1'),
(446, 37, '_stock', NULL),
(447, 37, '_stock_status', 'instock'),
(448, 37, '_product_version', '3.4.5'),
(449, 37, '_price', '18'),
(450, 38, '_wc_review_count', '0'),
(451, 38, '_wc_rating_count', 'a:0:{}'),
(452, 38, '_wc_average_rating', '0'),
(453, 38, '_sku', ''),
(454, 38, '_regular_price', '18'),
(455, 38, '_sale_price', ''),
(456, 38, '_sale_price_dates_from', ''),
(457, 38, '_sale_price_dates_to', ''),
(458, 38, 'total_sales', '0'),
(459, 38, '_tax_status', 'taxable'),
(460, 38, '_tax_class', ''),
(461, 38, '_manage_stock', 'no'),
(462, 38, '_backorders', 'no'),
(463, 38, '_sold_individually', 'no'),
(464, 38, '_weight', ''),
(465, 38, '_length', ''),
(466, 38, '_width', ''),
(467, 38, '_height', ''),
(468, 38, '_upsell_ids', 'a:0:{}'),
(469, 38, '_crosssell_ids', 'a:0:{}'),
(470, 38, '_purchase_note', ''),
(471, 38, '_default_attributes', 'a:0:{}'),
(472, 38, '_virtual', 'no'),
(473, 38, '_downloadable', 'no'),
(474, 38, '_product_image_gallery', ''),
(475, 38, '_download_limit', '-1'),
(476, 38, '_download_expiry', '-1'),
(477, 38, '_stock', NULL),
(478, 38, '_stock_status', 'instock'),
(479, 38, '_product_version', '3.4.5'),
(480, 38, '_price', '18'),
(481, 6, '_edit_lock', '1538385913:1'),
(482, 40, '_wp_attached_file', '2018/10/beanie-1.jpg'),
(483, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/beanie-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(484, 40, '_starter_content_theme', 'jolly-fashion'),
(485, 40, '_customize_draft_post_name', 'beanie-image'),
(486, 41, '_wp_attached_file', '2018/10/belt-1.jpg'),
(487, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/belt-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 41, '_starter_content_theme', 'jolly-fashion'),
(489, 41, '_customize_draft_post_name', 'belt-image'),
(490, 42, '_wp_attached_file', '2018/10/cap-1.jpg'),
(491, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2018/10/cap-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(492, 42, '_starter_content_theme', 'jolly-fashion'),
(493, 42, '_customize_draft_post_name', 'cap-image'),
(494, 43, '_wp_attached_file', '2018/10/hoodie-with-logo-1.jpg'),
(495, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/10/hoodie-with-logo-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(496, 43, '_starter_content_theme', 'jolly-fashion'),
(497, 43, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(498, 44, '_wp_attached_file', '2018/10/hoodie-with-pocket-1.jpg'),
(499, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2018/10/hoodie-with-pocket-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(500, 44, '_starter_content_theme', 'jolly-fashion'),
(501, 44, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(502, 45, '_wp_attached_file', '2018/10/hoodie-with-zipper-1.jpg'),
(503, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2018/10/hoodie-with-zipper-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(504, 45, '_starter_content_theme', 'jolly-fashion'),
(505, 45, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(506, 46, '_wp_attached_file', '2018/10/hoodie-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(507, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/hoodie-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(508, 46, '_starter_content_theme', 'jolly-fashion'),
(509, 46, '_customize_draft_post_name', 'hoodie-image'),
(510, 47, '_wp_attached_file', '2018/10/long-sleeve-tee-1.jpg'),
(511, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2018/10/long-sleeve-tee-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(512, 47, '_starter_content_theme', 'jolly-fashion'),
(513, 47, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(514, 48, '_wp_attached_file', '2018/10/polo-1.jpg'),
(515, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/10/polo-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 48, '_starter_content_theme', 'jolly-fashion'),
(517, 48, '_customize_draft_post_name', 'polo-image'),
(518, 49, '_wp_attached_file', '2018/10/sunglasses-1.jpg'),
(519, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2018/10/sunglasses-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(520, 49, '_starter_content_theme', 'jolly-fashion'),
(521, 49, '_customize_draft_post_name', 'sunglasses-image'),
(522, 50, '_wp_attached_file', '2018/10/tshirt-1.jpg'),
(523, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/tshirt-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(524, 50, '_starter_content_theme', 'jolly-fashion'),
(525, 50, '_customize_draft_post_name', 'tshirt-image'),
(526, 51, '_wp_attached_file', '2018/10/vneck-tee-1.jpg'),
(527, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2018/10/vneck-tee-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 51, '_starter_content_theme', 'jolly-fashion'),
(529, 51, '_customize_draft_post_name', 'vneck-tee-image'),
(530, 52, '_wp_attached_file', '2018/10/hero-1.jpg'),
(531, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:18:\"2018/10/hero-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero-1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero-1-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero-1-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(532, 52, '_starter_content_theme', 'jolly-fashion'),
(533, 52, '_customize_draft_post_name', 'hero-image'),
(534, 53, '_wp_attached_file', '2018/10/accessories-1.jpg'),
(535, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:25:\"2018/10/accessories-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"accessories-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"accessories-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"accessories-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(536, 53, '_starter_content_theme', 'jolly-fashion'),
(537, 53, '_customize_draft_post_name', 'accessories-image'),
(538, 54, '_wp_attached_file', '2018/10/tshirts-1.jpg'),
(539, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:21:\"2018/10/tshirts-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tshirts-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tshirts-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tshirts-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 54, '_starter_content_theme', 'jolly-fashion'),
(541, 54, '_customize_draft_post_name', 'tshirts-image'),
(542, 55, '_wp_attached_file', '2018/10/hoodies-1.jpg'),
(543, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/10/hoodies-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hoodies-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hoodies-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"hoodies-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 55, '_starter_content_theme', 'jolly-fashion'),
(545, 55, '_customize_draft_post_name', 'hoodies-image'),
(546, 56, '_thumbnail_id', '52'),
(547, 56, '_wp_page_template', 'template-homepage.php'),
(548, 56, '_customize_draft_post_name', '%d0%b4%d0%be%d0%b1%d1%80%d0%be-%d0%bf%d0%be%d0%b6%d0%b0%d0%bb%d0%be%d0%b2%d0%b0%d1%82%d1%8c'),
(549, 56, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(550, 57, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(551, 57, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(552, 58, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(553, 58, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(554, 59, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(555, 59, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(556, 60, '_thumbnail_id', '40'),
(557, 60, '_customize_draft_post_name', 'beanie'),
(558, 60, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(559, 61, '_thumbnail_id', '41'),
(560, 61, '_customize_draft_post_name', 'belt'),
(561, 61, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(562, 62, '_thumbnail_id', '42'),
(563, 62, '_customize_draft_post_name', 'cap'),
(564, 62, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(565, 63, '_thumbnail_id', '49'),
(566, 63, '_customize_draft_post_name', 'sunglasses'),
(567, 63, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(568, 64, '_thumbnail_id', '43'),
(569, 64, '_customize_draft_post_name', 'hoodie-with-logo'),
(570, 64, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(571, 65, '_thumbnail_id', '44'),
(572, 65, '_customize_draft_post_name', 'hoodie-with-pocket'),
(573, 65, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(574, 66, '_thumbnail_id', '45'),
(575, 66, '_customize_draft_post_name', 'hoodie-with-zipper'),
(576, 66, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(577, 67, '_thumbnail_id', '46'),
(578, 67, '_customize_draft_post_name', 'hoodie'),
(579, 67, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(580, 68, '_thumbnail_id', '47'),
(581, 68, '_customize_draft_post_name', 'long-sleeve-tee'),
(582, 68, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(583, 69, '_thumbnail_id', '48'),
(584, 69, '_customize_draft_post_name', 'polo'),
(585, 69, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(586, 70, '_thumbnail_id', '50'),
(587, 70, '_customize_draft_post_name', 'tshirt'),
(588, 70, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(589, 71, '_thumbnail_id', '51'),
(590, 71, '_customize_draft_post_name', 'vneck-tee'),
(591, 71, '_customize_changeset_uuid', 'f260556e-7b4f-44af-b6bd-bca54724b6e2'),
(592, 60, '_wc_review_count', '0'),
(593, 60, '_wc_rating_count', 'a:0:{}'),
(594, 60, '_wc_average_rating', '0'),
(595, 60, '_sku', ''),
(596, 60, '_regular_price', '20'),
(597, 60, '_sale_price', '18'),
(598, 60, '_sale_price_dates_from', ''),
(599, 60, '_sale_price_dates_to', ''),
(600, 60, 'total_sales', '0'),
(601, 60, '_tax_status', 'taxable'),
(602, 60, '_tax_class', ''),
(603, 60, '_manage_stock', 'no'),
(604, 60, '_backorders', 'no'),
(605, 60, '_sold_individually', 'no'),
(606, 60, '_weight', ''),
(607, 60, '_length', ''),
(608, 60, '_width', ''),
(609, 60, '_height', ''),
(610, 60, '_upsell_ids', 'a:0:{}'),
(611, 60, '_crosssell_ids', 'a:0:{}'),
(612, 60, '_purchase_note', ''),
(613, 60, '_default_attributes', 'a:0:{}'),
(614, 60, '_virtual', 'no'),
(615, 60, '_downloadable', 'no'),
(616, 60, '_product_image_gallery', ''),
(617, 60, '_download_limit', '-1'),
(618, 60, '_download_expiry', '-1'),
(619, 60, '_stock', NULL),
(620, 60, '_stock_status', 'instock'),
(621, 60, '_product_version', '3.4.5'),
(622, 60, '_price', '18'),
(623, 61, '_wc_review_count', '0'),
(624, 61, '_wc_rating_count', 'a:0:{}'),
(625, 61, '_wc_average_rating', '0'),
(626, 61, '_sku', ''),
(627, 61, '_regular_price', '65'),
(628, 61, '_sale_price', '55'),
(629, 61, '_sale_price_dates_from', ''),
(630, 61, '_sale_price_dates_to', ''),
(631, 61, 'total_sales', '0'),
(632, 61, '_tax_status', 'taxable'),
(633, 61, '_tax_class', ''),
(634, 61, '_manage_stock', 'no'),
(635, 61, '_backorders', 'no'),
(636, 61, '_sold_individually', 'no'),
(637, 61, '_weight', ''),
(638, 61, '_length', ''),
(639, 61, '_width', ''),
(640, 61, '_height', ''),
(641, 61, '_upsell_ids', 'a:0:{}'),
(642, 61, '_crosssell_ids', 'a:0:{}'),
(643, 61, '_purchase_note', ''),
(644, 61, '_default_attributes', 'a:0:{}'),
(645, 61, '_virtual', 'no'),
(646, 61, '_downloadable', 'no'),
(647, 61, '_product_image_gallery', ''),
(648, 61, '_download_limit', '-1'),
(649, 61, '_download_expiry', '-1'),
(650, 61, '_stock', NULL),
(651, 61, '_stock_status', 'instock'),
(652, 61, '_product_version', '3.4.5'),
(653, 61, '_price', '55'),
(654, 62, '_wc_review_count', '0'),
(655, 62, '_wc_rating_count', 'a:0:{}'),
(656, 62, '_wc_average_rating', '0'),
(657, 62, '_sku', ''),
(658, 62, '_regular_price', '18'),
(659, 62, '_sale_price', '16'),
(660, 62, '_sale_price_dates_from', ''),
(661, 62, '_sale_price_dates_to', ''),
(662, 62, 'total_sales', '0'),
(663, 62, '_tax_status', 'taxable'),
(664, 62, '_tax_class', ''),
(665, 62, '_manage_stock', 'no'),
(666, 62, '_backorders', 'no'),
(667, 62, '_sold_individually', 'no'),
(668, 62, '_weight', ''),
(669, 62, '_length', ''),
(670, 62, '_width', ''),
(671, 62, '_height', ''),
(672, 62, '_upsell_ids', 'a:0:{}'),
(673, 62, '_crosssell_ids', 'a:0:{}'),
(674, 62, '_purchase_note', ''),
(675, 62, '_default_attributes', 'a:0:{}'),
(676, 62, '_virtual', 'no'),
(677, 62, '_downloadable', 'no'),
(678, 62, '_product_image_gallery', ''),
(679, 62, '_download_limit', '-1'),
(680, 62, '_download_expiry', '-1'),
(681, 62, '_stock', NULL),
(682, 62, '_stock_status', 'instock'),
(683, 62, '_product_version', '3.4.5'),
(684, 62, '_price', '16'),
(685, 63, '_wc_review_count', '0'),
(686, 63, '_wc_rating_count', 'a:0:{}'),
(687, 63, '_wc_average_rating', '0'),
(688, 63, '_sku', ''),
(689, 63, '_regular_price', '90'),
(690, 63, '_sale_price', ''),
(691, 63, '_sale_price_dates_from', ''),
(692, 63, '_sale_price_dates_to', ''),
(693, 63, 'total_sales', '0'),
(694, 63, '_tax_status', 'taxable'),
(695, 63, '_tax_class', ''),
(696, 63, '_manage_stock', 'no'),
(697, 63, '_backorders', 'no'),
(698, 63, '_sold_individually', 'no'),
(699, 63, '_weight', ''),
(700, 63, '_length', ''),
(701, 63, '_width', ''),
(702, 63, '_height', ''),
(703, 63, '_upsell_ids', 'a:0:{}'),
(704, 63, '_crosssell_ids', 'a:0:{}'),
(705, 63, '_purchase_note', ''),
(706, 63, '_default_attributes', 'a:0:{}'),
(707, 63, '_virtual', 'no'),
(708, 63, '_downloadable', 'no'),
(709, 63, '_product_image_gallery', ''),
(710, 63, '_download_limit', '-1'),
(711, 63, '_download_expiry', '-1'),
(712, 63, '_stock', NULL),
(713, 63, '_stock_status', 'instock'),
(714, 63, '_product_version', '3.4.5'),
(715, 63, '_price', '90'),
(716, 64, '_wc_review_count', '0'),
(717, 64, '_wc_rating_count', 'a:0:{}'),
(718, 64, '_wc_average_rating', '0'),
(719, 64, '_sku', ''),
(720, 64, '_regular_price', '45'),
(721, 64, '_sale_price', ''),
(722, 64, '_sale_price_dates_from', ''),
(723, 64, '_sale_price_dates_to', ''),
(724, 64, 'total_sales', '0'),
(725, 64, '_tax_status', 'taxable'),
(726, 64, '_tax_class', ''),
(727, 64, '_manage_stock', 'no'),
(728, 64, '_backorders', 'no'),
(729, 64, '_sold_individually', 'no'),
(730, 64, '_weight', ''),
(731, 64, '_length', ''),
(732, 64, '_width', ''),
(733, 64, '_height', ''),
(734, 64, '_upsell_ids', 'a:0:{}'),
(735, 64, '_crosssell_ids', 'a:0:{}'),
(736, 64, '_purchase_note', ''),
(737, 64, '_default_attributes', 'a:0:{}'),
(738, 64, '_virtual', 'no'),
(739, 64, '_downloadable', 'no'),
(740, 64, '_product_image_gallery', ''),
(741, 64, '_download_limit', '-1'),
(742, 64, '_download_expiry', '-1'),
(743, 64, '_stock', NULL),
(744, 64, '_stock_status', 'instock'),
(745, 64, '_product_version', '3.4.5'),
(746, 64, '_price', '45'),
(747, 65, '_wc_review_count', '0'),
(748, 65, '_wc_rating_count', 'a:0:{}'),
(749, 65, '_wc_average_rating', '0'),
(750, 65, '_sku', ''),
(751, 65, '_regular_price', '45'),
(752, 65, '_sale_price', '35'),
(753, 65, '_sale_price_dates_from', ''),
(754, 65, '_sale_price_dates_to', ''),
(755, 65, 'total_sales', '0'),
(756, 65, '_tax_status', 'taxable'),
(757, 65, '_tax_class', ''),
(758, 65, '_manage_stock', 'no'),
(759, 65, '_backorders', 'no'),
(760, 65, '_sold_individually', 'no'),
(761, 65, '_weight', ''),
(762, 65, '_length', ''),
(763, 65, '_width', ''),
(764, 65, '_height', ''),
(765, 65, '_upsell_ids', 'a:0:{}'),
(766, 65, '_crosssell_ids', 'a:0:{}'),
(767, 65, '_purchase_note', ''),
(768, 65, '_default_attributes', 'a:0:{}'),
(769, 65, '_virtual', 'no'),
(770, 65, '_downloadable', 'no'),
(771, 65, '_product_image_gallery', ''),
(772, 65, '_download_limit', '-1'),
(773, 65, '_download_expiry', '-1'),
(774, 65, '_stock', NULL),
(775, 65, '_stock_status', 'instock'),
(776, 65, '_product_version', '3.4.5'),
(777, 65, '_price', '35'),
(778, 66, '_wc_review_count', '0'),
(779, 66, '_wc_rating_count', 'a:0:{}'),
(780, 66, '_wc_average_rating', '0'),
(781, 66, '_sku', ''),
(782, 66, '_regular_price', '45'),
(783, 66, '_sale_price', ''),
(784, 66, '_sale_price_dates_from', ''),
(785, 66, '_sale_price_dates_to', ''),
(786, 66, 'total_sales', '0'),
(787, 66, '_tax_status', 'taxable'),
(788, 66, '_tax_class', ''),
(789, 66, '_manage_stock', 'no'),
(790, 66, '_backorders', 'no'),
(791, 66, '_sold_individually', 'no'),
(792, 66, '_weight', ''),
(793, 66, '_length', ''),
(794, 66, '_width', ''),
(795, 66, '_height', ''),
(796, 66, '_upsell_ids', 'a:0:{}'),
(797, 66, '_crosssell_ids', 'a:0:{}'),
(798, 66, '_purchase_note', ''),
(799, 66, '_default_attributes', 'a:0:{}'),
(800, 66, '_virtual', 'no'),
(801, 66, '_downloadable', 'no'),
(802, 66, '_product_image_gallery', ''),
(803, 66, '_download_limit', '-1'),
(804, 66, '_download_expiry', '-1'),
(805, 66, '_stock', NULL),
(806, 66, '_stock_status', 'instock'),
(807, 66, '_product_version', '3.4.5'),
(808, 66, '_price', '45'),
(809, 67, '_wc_review_count', '0'),
(810, 67, '_wc_rating_count', 'a:0:{}'),
(811, 67, '_wc_average_rating', '0'),
(812, 67, '_sku', ''),
(813, 67, '_regular_price', '45'),
(814, 67, '_sale_price', '42'),
(815, 67, '_sale_price_dates_from', ''),
(816, 67, '_sale_price_dates_to', ''),
(817, 67, 'total_sales', '0'),
(818, 67, '_tax_status', 'taxable'),
(819, 67, '_tax_class', ''),
(820, 67, '_manage_stock', 'no'),
(821, 67, '_backorders', 'no'),
(822, 67, '_sold_individually', 'no'),
(823, 67, '_weight', ''),
(824, 67, '_length', ''),
(825, 67, '_width', ''),
(826, 67, '_height', ''),
(827, 67, '_upsell_ids', 'a:0:{}'),
(828, 67, '_crosssell_ids', 'a:0:{}'),
(829, 67, '_purchase_note', ''),
(830, 67, '_default_attributes', 'a:0:{}'),
(831, 67, '_virtual', 'no'),
(832, 67, '_downloadable', 'no'),
(833, 67, '_product_image_gallery', ''),
(834, 67, '_download_limit', '-1'),
(835, 67, '_download_expiry', '-1'),
(836, 67, '_stock', NULL),
(837, 67, '_stock_status', 'instock'),
(838, 67, '_product_version', '3.4.5'),
(839, 67, '_price', '42'),
(840, 68, '_wc_review_count', '0'),
(841, 68, '_wc_rating_count', 'a:0:{}'),
(842, 68, '_wc_average_rating', '0'),
(843, 68, '_sku', ''),
(844, 68, '_regular_price', '25'),
(845, 68, '_sale_price', ''),
(846, 68, '_sale_price_dates_from', ''),
(847, 68, '_sale_price_dates_to', ''),
(848, 68, 'total_sales', '0'),
(849, 68, '_tax_status', 'taxable'),
(850, 68, '_tax_class', ''),
(851, 68, '_manage_stock', 'no'),
(852, 68, '_backorders', 'no'),
(853, 68, '_sold_individually', 'no'),
(854, 68, '_weight', ''),
(855, 68, '_length', ''),
(856, 68, '_width', ''),
(857, 68, '_height', ''),
(858, 68, '_upsell_ids', 'a:0:{}'),
(859, 68, '_crosssell_ids', 'a:0:{}'),
(860, 68, '_purchase_note', ''),
(861, 68, '_default_attributes', 'a:0:{}'),
(862, 68, '_virtual', 'no'),
(863, 68, '_downloadable', 'no'),
(864, 68, '_product_image_gallery', ''),
(865, 68, '_download_limit', '-1'),
(866, 68, '_download_expiry', '-1'),
(867, 68, '_stock', NULL),
(868, 68, '_stock_status', 'instock'),
(869, 68, '_product_version', '3.4.5'),
(870, 68, '_price', '25'),
(871, 69, '_wc_review_count', '0'),
(872, 69, '_wc_rating_count', 'a:0:{}'),
(873, 69, '_wc_average_rating', '0'),
(874, 69, '_sku', ''),
(875, 69, '_regular_price', '20'),
(876, 69, '_sale_price', ''),
(877, 69, '_sale_price_dates_from', ''),
(878, 69, '_sale_price_dates_to', ''),
(879, 69, 'total_sales', '0'),
(880, 69, '_tax_status', 'taxable'),
(881, 69, '_tax_class', ''),
(882, 69, '_manage_stock', 'no'),
(883, 69, '_backorders', 'no'),
(884, 69, '_sold_individually', 'no'),
(885, 69, '_weight', ''),
(886, 69, '_length', ''),
(887, 69, '_width', ''),
(888, 69, '_height', ''),
(889, 69, '_upsell_ids', 'a:0:{}'),
(890, 69, '_crosssell_ids', 'a:0:{}'),
(891, 69, '_purchase_note', ''),
(892, 69, '_default_attributes', 'a:0:{}'),
(893, 69, '_virtual', 'no'),
(894, 69, '_downloadable', 'no'),
(895, 69, '_product_image_gallery', ''),
(896, 69, '_download_limit', '-1'),
(897, 69, '_download_expiry', '-1'),
(898, 69, '_stock', NULL),
(899, 69, '_stock_status', 'instock'),
(900, 69, '_product_version', '3.4.5'),
(901, 69, '_price', '20'),
(902, 70, '_wc_review_count', '0'),
(903, 70, '_wc_rating_count', 'a:0:{}'),
(904, 70, '_wc_average_rating', '0'),
(905, 70, '_sku', ''),
(906, 70, '_regular_price', '18'),
(907, 70, '_sale_price', ''),
(908, 70, '_sale_price_dates_from', ''),
(909, 70, '_sale_price_dates_to', ''),
(910, 70, 'total_sales', '0'),
(911, 70, '_tax_status', 'taxable'),
(912, 70, '_tax_class', ''),
(913, 70, '_manage_stock', 'no'),
(914, 70, '_backorders', 'no'),
(915, 70, '_sold_individually', 'no'),
(916, 70, '_weight', ''),
(917, 70, '_length', ''),
(918, 70, '_width', ''),
(919, 70, '_height', ''),
(920, 70, '_upsell_ids', 'a:0:{}'),
(921, 70, '_crosssell_ids', 'a:0:{}'),
(922, 70, '_purchase_note', ''),
(923, 70, '_default_attributes', 'a:0:{}'),
(924, 70, '_virtual', 'no'),
(925, 70, '_downloadable', 'no'),
(926, 70, '_product_image_gallery', ''),
(927, 70, '_download_limit', '-1'),
(928, 70, '_download_expiry', '-1'),
(929, 70, '_stock', NULL),
(930, 70, '_stock_status', 'instock'),
(931, 70, '_product_version', '3.4.5'),
(932, 70, '_price', '18'),
(933, 71, '_wc_review_count', '0'),
(934, 71, '_wc_rating_count', 'a:0:{}'),
(935, 71, '_wc_average_rating', '0'),
(936, 71, '_sku', ''),
(937, 71, '_regular_price', '18'),
(938, 71, '_sale_price', ''),
(939, 71, '_sale_price_dates_from', ''),
(940, 71, '_sale_price_dates_to', ''),
(941, 71, 'total_sales', '0'),
(942, 71, '_tax_status', 'taxable'),
(943, 71, '_tax_class', ''),
(944, 71, '_manage_stock', 'no'),
(945, 71, '_backorders', 'no'),
(946, 71, '_sold_individually', 'no'),
(947, 71, '_weight', ''),
(948, 71, '_length', ''),
(949, 71, '_width', ''),
(950, 71, '_height', ''),
(951, 71, '_upsell_ids', 'a:0:{}'),
(952, 71, '_crosssell_ids', 'a:0:{}'),
(953, 71, '_purchase_note', ''),
(954, 71, '_default_attributes', 'a:0:{}'),
(955, 71, '_virtual', 'no'),
(956, 71, '_downloadable', 'no'),
(957, 71, '_product_image_gallery', ''),
(958, 71, '_download_limit', '-1'),
(959, 71, '_download_expiry', '-1'),
(960, 71, '_stock', NULL),
(961, 71, '_stock_status', 'instock'),
(962, 71, '_product_version', '3.4.5'),
(963, 71, '_price', '18'),
(964, 73, '_wp_attached_file', '2018/10/beanie-2.jpg'),
(965, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/beanie-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"beanie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(966, 73, '_starter_content_theme', 'jolly-fashion'),
(967, 73, '_customize_draft_post_name', 'beanie-image'),
(968, 74, '_wp_attached_file', '2018/10/belt-2.jpg'),
(969, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/belt-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"belt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(970, 74, '_starter_content_theme', 'jolly-fashion'),
(971, 74, '_customize_draft_post_name', 'belt-image'),
(972, 75, '_wp_attached_file', '2018/10/cap-2.jpg'),
(973, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2018/10/cap-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(974, 75, '_starter_content_theme', 'jolly-fashion'),
(975, 75, '_customize_draft_post_name', 'cap-image'),
(976, 76, '_wp_attached_file', '2018/10/hoodie-with-logo-2.jpg'),
(977, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/10/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(978, 76, '_starter_content_theme', 'jolly-fashion'),
(979, 76, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(980, 77, '_wp_attached_file', '2018/10/hoodie-with-pocket-2.jpg'),
(981, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2018/10/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(982, 77, '_starter_content_theme', 'jolly-fashion'),
(983, 77, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(984, 78, '_wp_attached_file', '2018/10/hoodie-with-zipper-2.jpg'),
(985, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2018/10/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(986, 78, '_starter_content_theme', 'jolly-fashion'),
(987, 78, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(988, 79, '_wp_attached_file', '2018/10/hoodie-2.jpg'),
(989, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/hoodie-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"hoodie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(990, 79, '_starter_content_theme', 'jolly-fashion'),
(991, 79, '_customize_draft_post_name', 'hoodie-image'),
(992, 80, '_wp_attached_file', '2018/10/long-sleeve-tee-2.jpg'),
(993, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2018/10/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(994, 80, '_starter_content_theme', 'jolly-fashion'),
(995, 80, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(996, 81, '_wp_attached_file', '2018/10/polo-2.jpg'),
(997, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/10/polo-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"polo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(998, 81, '_starter_content_theme', 'jolly-fashion'),
(999, 81, '_customize_draft_post_name', 'polo-image'),
(1000, 82, '_wp_attached_file', '2018/10/sunglasses-2.jpg'),
(1001, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2018/10/sunglasses-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1002, 82, '_starter_content_theme', 'jolly-fashion'),
(1003, 82, '_customize_draft_post_name', 'sunglasses-image'),
(1004, 83, '_wp_attached_file', '2018/10/tshirt-2.jpg'),
(1005, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/10/tshirt-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"tshirt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1006, 83, '_starter_content_theme', 'jolly-fashion'),
(1007, 83, '_customize_draft_post_name', 'tshirt-image'),
(1008, 84, '_wp_attached_file', '2018/10/vneck-tee-2.jpg'),
(1009, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2018/10/vneck-tee-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1010, 84, '_starter_content_theme', 'jolly-fashion'),
(1011, 84, '_customize_draft_post_name', 'vneck-tee-image'),
(1012, 85, '_wp_attached_file', '2018/10/hero-2.jpg'),
(1013, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:18:\"2018/10/hero-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero-2-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero-2-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero-2-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1014, 85, '_starter_content_theme', 'jolly-fashion'),
(1015, 85, '_customize_draft_post_name', 'hero-image'),
(1016, 86, '_wp_attached_file', '2018/10/accessories-2.jpg'),
(1017, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:25:\"2018/10/accessories-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"accessories-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"accessories-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"accessories-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 86, '_starter_content_theme', 'jolly-fashion'),
(1019, 86, '_customize_draft_post_name', 'accessories-image'),
(1020, 87, '_wp_attached_file', '2018/10/tshirts-2.jpg'),
(1021, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:21:\"2018/10/tshirts-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tshirts-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tshirts-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tshirts-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1022, 87, '_starter_content_theme', 'jolly-fashion'),
(1023, 87, '_customize_draft_post_name', 'tshirts-image'),
(1024, 88, '_wp_attached_file', '2018/10/hoodies-2.jpg'),
(1025, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/10/hoodies-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hoodies-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hoodies-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"hoodies-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1026, 88, '_starter_content_theme', 'jolly-fashion'),
(1027, 88, '_customize_draft_post_name', 'hoodies-image'),
(1028, 89, '_thumbnail_id', '85'),
(1029, 89, '_wp_page_template', 'template-homepage.php'),
(1030, 89, '_customize_draft_post_name', '%d0%b4%d0%be%d0%b1%d1%80%d0%be-%d0%bf%d0%be%d0%b6%d0%b0%d0%bb%d0%be%d0%b2%d0%b0%d1%82%d1%8c'),
(1031, 89, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1032, 90, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(1033, 90, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1034, 91, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(1035, 91, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1036, 92, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(1037, 92, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1038, 93, '_thumbnail_id', '73'),
(1039, 93, '_customize_draft_post_name', 'beanie'),
(1040, 93, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1041, 94, '_thumbnail_id', '74'),
(1042, 94, '_customize_draft_post_name', 'belt'),
(1043, 94, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1044, 95, '_thumbnail_id', '75'),
(1045, 95, '_customize_draft_post_name', 'cap'),
(1046, 95, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1047, 96, '_thumbnail_id', '82'),
(1048, 96, '_customize_draft_post_name', 'sunglasses'),
(1049, 96, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1050, 97, '_thumbnail_id', '76'),
(1051, 97, '_customize_draft_post_name', 'hoodie-with-logo'),
(1052, 97, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1053, 98, '_thumbnail_id', '77'),
(1054, 98, '_customize_draft_post_name', 'hoodie-with-pocket'),
(1055, 98, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1056, 99, '_thumbnail_id', '78'),
(1057, 99, '_customize_draft_post_name', 'hoodie-with-zipper'),
(1058, 99, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1059, 100, '_thumbnail_id', '79'),
(1060, 100, '_customize_draft_post_name', 'hoodie'),
(1061, 100, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1062, 101, '_thumbnail_id', '80'),
(1063, 101, '_customize_draft_post_name', 'long-sleeve-tee'),
(1064, 101, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1065, 102, '_thumbnail_id', '81'),
(1066, 102, '_customize_draft_post_name', 'polo'),
(1067, 102, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1068, 103, '_thumbnail_id', '83'),
(1069, 103, '_customize_draft_post_name', 'tshirt'),
(1070, 103, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1071, 104, '_thumbnail_id', '84'),
(1072, 104, '_customize_draft_post_name', 'vneck-tee'),
(1073, 104, '_customize_changeset_uuid', '861e33a6-4417-4b9d-89e9-3cde60201dc4'),
(1074, 93, '_wc_review_count', '0'),
(1075, 93, '_wc_rating_count', 'a:0:{}'),
(1076, 93, '_wc_average_rating', '0'),
(1077, 93, '_sku', ''),
(1078, 93, '_regular_price', '20'),
(1079, 93, '_sale_price', '18'),
(1080, 93, '_sale_price_dates_from', ''),
(1081, 93, '_sale_price_dates_to', ''),
(1082, 93, 'total_sales', '0'),
(1083, 93, '_tax_status', 'taxable'),
(1084, 93, '_tax_class', ''),
(1085, 93, '_manage_stock', 'no'),
(1086, 93, '_backorders', 'no'),
(1087, 93, '_sold_individually', 'no'),
(1088, 93, '_weight', ''),
(1089, 93, '_length', ''),
(1090, 93, '_width', ''),
(1091, 93, '_height', ''),
(1092, 93, '_upsell_ids', 'a:0:{}'),
(1093, 93, '_crosssell_ids', 'a:0:{}'),
(1094, 93, '_purchase_note', ''),
(1095, 93, '_default_attributes', 'a:0:{}'),
(1096, 93, '_virtual', 'no'),
(1097, 93, '_downloadable', 'no'),
(1098, 93, '_product_image_gallery', ''),
(1099, 93, '_download_limit', '-1'),
(1100, 93, '_download_expiry', '-1'),
(1101, 93, '_stock', NULL),
(1102, 93, '_stock_status', 'instock'),
(1103, 93, '_product_version', '3.4.5'),
(1104, 93, '_price', '18'),
(1105, 94, '_wc_review_count', '0'),
(1106, 94, '_wc_rating_count', 'a:0:{}'),
(1107, 94, '_wc_average_rating', '0'),
(1108, 94, '_sku', ''),
(1109, 94, '_regular_price', '65'),
(1110, 94, '_sale_price', '55'),
(1111, 94, '_sale_price_dates_from', ''),
(1112, 94, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1113, 94, 'total_sales', '0'),
(1114, 94, '_tax_status', 'taxable'),
(1115, 94, '_tax_class', ''),
(1116, 94, '_manage_stock', 'no'),
(1117, 94, '_backorders', 'no'),
(1118, 94, '_sold_individually', 'no'),
(1119, 94, '_weight', ''),
(1120, 94, '_length', ''),
(1121, 94, '_width', ''),
(1122, 94, '_height', ''),
(1123, 94, '_upsell_ids', 'a:0:{}'),
(1124, 94, '_crosssell_ids', 'a:0:{}'),
(1125, 94, '_purchase_note', ''),
(1126, 94, '_default_attributes', 'a:0:{}'),
(1127, 94, '_virtual', 'no'),
(1128, 94, '_downloadable', 'no'),
(1129, 94, '_product_image_gallery', ''),
(1130, 94, '_download_limit', '-1'),
(1131, 94, '_download_expiry', '-1'),
(1132, 94, '_stock', NULL),
(1133, 94, '_stock_status', 'instock'),
(1134, 94, '_product_version', '3.4.5'),
(1135, 94, '_price', '55'),
(1136, 95, '_wc_review_count', '0'),
(1137, 95, '_wc_rating_count', 'a:0:{}'),
(1138, 95, '_wc_average_rating', '0'),
(1139, 95, '_sku', ''),
(1140, 95, '_regular_price', '18'),
(1141, 95, '_sale_price', '16'),
(1142, 95, '_sale_price_dates_from', ''),
(1143, 95, '_sale_price_dates_to', ''),
(1144, 95, 'total_sales', '0'),
(1145, 95, '_tax_status', 'taxable'),
(1146, 95, '_tax_class', ''),
(1147, 95, '_manage_stock', 'no'),
(1148, 95, '_backorders', 'no'),
(1149, 95, '_sold_individually', 'no'),
(1150, 95, '_weight', ''),
(1151, 95, '_length', ''),
(1152, 95, '_width', ''),
(1153, 95, '_height', ''),
(1154, 95, '_upsell_ids', 'a:0:{}'),
(1155, 95, '_crosssell_ids', 'a:0:{}'),
(1156, 95, '_purchase_note', ''),
(1157, 95, '_default_attributes', 'a:0:{}'),
(1158, 95, '_virtual', 'no'),
(1159, 95, '_downloadable', 'no'),
(1160, 95, '_product_image_gallery', ''),
(1161, 95, '_download_limit', '-1'),
(1162, 95, '_download_expiry', '-1'),
(1163, 95, '_stock', NULL),
(1164, 95, '_stock_status', 'instock'),
(1165, 95, '_product_version', '3.4.5'),
(1166, 95, '_price', '16'),
(1167, 96, '_wc_review_count', '0'),
(1168, 96, '_wc_rating_count', 'a:0:{}'),
(1169, 96, '_wc_average_rating', '0'),
(1170, 96, '_sku', ''),
(1171, 96, '_regular_price', '90'),
(1172, 96, '_sale_price', ''),
(1173, 96, '_sale_price_dates_from', ''),
(1174, 96, '_sale_price_dates_to', ''),
(1175, 96, 'total_sales', '0'),
(1176, 96, '_tax_status', 'taxable'),
(1177, 96, '_tax_class', ''),
(1178, 96, '_manage_stock', 'no'),
(1179, 96, '_backorders', 'no'),
(1180, 96, '_sold_individually', 'no'),
(1181, 96, '_weight', ''),
(1182, 96, '_length', ''),
(1183, 96, '_width', ''),
(1184, 96, '_height', ''),
(1185, 96, '_upsell_ids', 'a:0:{}'),
(1186, 96, '_crosssell_ids', 'a:0:{}'),
(1187, 96, '_purchase_note', ''),
(1188, 96, '_default_attributes', 'a:0:{}'),
(1189, 96, '_virtual', 'no'),
(1190, 96, '_downloadable', 'no'),
(1191, 96, '_product_image_gallery', ''),
(1192, 96, '_download_limit', '-1'),
(1193, 96, '_download_expiry', '-1'),
(1194, 96, '_stock', NULL),
(1195, 96, '_stock_status', 'instock'),
(1196, 96, '_product_version', '3.4.5'),
(1197, 96, '_price', '90'),
(1198, 97, '_wc_review_count', '0'),
(1199, 97, '_wc_rating_count', 'a:0:{}'),
(1200, 97, '_wc_average_rating', '0'),
(1201, 97, '_sku', ''),
(1202, 97, '_regular_price', '45'),
(1203, 97, '_sale_price', ''),
(1204, 97, '_sale_price_dates_from', ''),
(1205, 97, '_sale_price_dates_to', ''),
(1206, 97, 'total_sales', '0'),
(1207, 97, '_tax_status', 'taxable'),
(1208, 97, '_tax_class', ''),
(1209, 97, '_manage_stock', 'no'),
(1210, 97, '_backorders', 'no'),
(1211, 97, '_sold_individually', 'no'),
(1212, 97, '_weight', ''),
(1213, 97, '_length', ''),
(1214, 97, '_width', ''),
(1215, 97, '_height', ''),
(1216, 97, '_upsell_ids', 'a:0:{}'),
(1217, 97, '_crosssell_ids', 'a:0:{}'),
(1218, 97, '_purchase_note', ''),
(1219, 97, '_default_attributes', 'a:0:{}'),
(1220, 97, '_virtual', 'no'),
(1221, 97, '_downloadable', 'no'),
(1222, 97, '_product_image_gallery', ''),
(1223, 97, '_download_limit', '-1'),
(1224, 97, '_download_expiry', '-1'),
(1225, 97, '_stock', NULL),
(1226, 97, '_stock_status', 'instock'),
(1227, 97, '_product_version', '3.4.5'),
(1228, 97, '_price', '45'),
(1229, 98, '_wc_review_count', '0'),
(1230, 98, '_wc_rating_count', 'a:0:{}'),
(1231, 98, '_wc_average_rating', '0'),
(1232, 98, '_sku', ''),
(1233, 98, '_regular_price', '45'),
(1234, 98, '_sale_price', '35'),
(1235, 98, '_sale_price_dates_from', ''),
(1236, 98, '_sale_price_dates_to', ''),
(1237, 98, 'total_sales', '0'),
(1238, 98, '_tax_status', 'taxable'),
(1239, 98, '_tax_class', ''),
(1240, 98, '_manage_stock', 'no'),
(1241, 98, '_backorders', 'no'),
(1242, 98, '_sold_individually', 'no'),
(1243, 98, '_weight', ''),
(1244, 98, '_length', ''),
(1245, 98, '_width', ''),
(1246, 98, '_height', ''),
(1247, 98, '_upsell_ids', 'a:0:{}'),
(1248, 98, '_crosssell_ids', 'a:0:{}'),
(1249, 98, '_purchase_note', ''),
(1250, 98, '_default_attributes', 'a:0:{}'),
(1251, 98, '_virtual', 'no'),
(1252, 98, '_downloadable', 'no'),
(1253, 98, '_product_image_gallery', ''),
(1254, 98, '_download_limit', '-1'),
(1255, 98, '_download_expiry', '-1'),
(1256, 98, '_stock', NULL),
(1257, 98, '_stock_status', 'instock'),
(1258, 98, '_product_version', '3.4.5'),
(1259, 98, '_price', '35'),
(1260, 99, '_wc_review_count', '0'),
(1261, 99, '_wc_rating_count', 'a:0:{}'),
(1262, 99, '_wc_average_rating', '0'),
(1263, 99, '_sku', ''),
(1264, 99, '_regular_price', '45'),
(1265, 99, '_sale_price', ''),
(1266, 99, '_sale_price_dates_from', ''),
(1267, 99, '_sale_price_dates_to', ''),
(1268, 99, 'total_sales', '0'),
(1269, 99, '_tax_status', 'taxable'),
(1270, 99, '_tax_class', ''),
(1271, 99, '_manage_stock', 'no'),
(1272, 99, '_backorders', 'no'),
(1273, 99, '_sold_individually', 'no'),
(1274, 99, '_weight', ''),
(1275, 99, '_length', ''),
(1276, 99, '_width', ''),
(1277, 99, '_height', ''),
(1278, 99, '_upsell_ids', 'a:0:{}'),
(1279, 99, '_crosssell_ids', 'a:0:{}'),
(1280, 99, '_purchase_note', ''),
(1281, 99, '_default_attributes', 'a:0:{}'),
(1282, 99, '_virtual', 'no'),
(1283, 99, '_downloadable', 'no'),
(1284, 99, '_product_image_gallery', ''),
(1285, 99, '_download_limit', '-1'),
(1286, 99, '_download_expiry', '-1'),
(1287, 99, '_stock', NULL),
(1288, 99, '_stock_status', 'instock'),
(1289, 99, '_product_version', '3.4.5'),
(1290, 99, '_price', '45'),
(1291, 100, '_wc_review_count', '0'),
(1292, 100, '_wc_rating_count', 'a:0:{}'),
(1293, 100, '_wc_average_rating', '0'),
(1294, 100, '_sku', ''),
(1295, 100, '_regular_price', '45'),
(1296, 100, '_sale_price', '42'),
(1297, 100, '_sale_price_dates_from', ''),
(1298, 100, '_sale_price_dates_to', ''),
(1299, 100, 'total_sales', '0'),
(1300, 100, '_tax_status', 'taxable'),
(1301, 100, '_tax_class', ''),
(1302, 100, '_manage_stock', 'no'),
(1303, 100, '_backorders', 'no'),
(1304, 100, '_sold_individually', 'no'),
(1305, 100, '_weight', ''),
(1306, 100, '_length', ''),
(1307, 100, '_width', ''),
(1308, 100, '_height', ''),
(1309, 100, '_upsell_ids', 'a:0:{}'),
(1310, 100, '_crosssell_ids', 'a:0:{}'),
(1311, 100, '_purchase_note', ''),
(1312, 100, '_default_attributes', 'a:0:{}'),
(1313, 100, '_virtual', 'no'),
(1314, 100, '_downloadable', 'no'),
(1315, 100, '_product_image_gallery', ''),
(1316, 100, '_download_limit', '-1'),
(1317, 100, '_download_expiry', '-1'),
(1318, 100, '_stock', NULL),
(1319, 100, '_stock_status', 'instock'),
(1320, 100, '_product_version', '3.4.5'),
(1321, 100, '_price', '42'),
(1322, 101, '_wc_review_count', '0'),
(1323, 101, '_wc_rating_count', 'a:0:{}'),
(1324, 101, '_wc_average_rating', '0'),
(1325, 101, '_sku', ''),
(1326, 101, '_regular_price', '25'),
(1327, 101, '_sale_price', ''),
(1328, 101, '_sale_price_dates_from', ''),
(1329, 101, '_sale_price_dates_to', ''),
(1330, 101, 'total_sales', '0'),
(1331, 101, '_tax_status', 'taxable'),
(1332, 101, '_tax_class', ''),
(1333, 101, '_manage_stock', 'no'),
(1334, 101, '_backorders', 'no'),
(1335, 101, '_sold_individually', 'no'),
(1336, 101, '_weight', ''),
(1337, 101, '_length', ''),
(1338, 101, '_width', ''),
(1339, 101, '_height', ''),
(1340, 101, '_upsell_ids', 'a:0:{}'),
(1341, 101, '_crosssell_ids', 'a:0:{}'),
(1342, 101, '_purchase_note', ''),
(1343, 101, '_default_attributes', 'a:0:{}'),
(1344, 101, '_virtual', 'no'),
(1345, 101, '_downloadable', 'no'),
(1346, 101, '_product_image_gallery', ''),
(1347, 101, '_download_limit', '-1'),
(1348, 101, '_download_expiry', '-1'),
(1349, 101, '_stock', NULL),
(1350, 101, '_stock_status', 'instock'),
(1351, 101, '_product_version', '3.4.5'),
(1352, 101, '_price', '25'),
(1353, 102, '_wc_review_count', '0'),
(1354, 102, '_wc_rating_count', 'a:0:{}'),
(1355, 102, '_wc_average_rating', '0'),
(1356, 102, '_sku', ''),
(1357, 102, '_regular_price', '20'),
(1358, 102, '_sale_price', ''),
(1359, 102, '_sale_price_dates_from', ''),
(1360, 102, '_sale_price_dates_to', ''),
(1361, 102, 'total_sales', '0'),
(1362, 102, '_tax_status', 'taxable'),
(1363, 102, '_tax_class', ''),
(1364, 102, '_manage_stock', 'no'),
(1365, 102, '_backorders', 'no'),
(1366, 102, '_sold_individually', 'no'),
(1367, 102, '_weight', ''),
(1368, 102, '_length', ''),
(1369, 102, '_width', ''),
(1370, 102, '_height', ''),
(1371, 102, '_upsell_ids', 'a:0:{}'),
(1372, 102, '_crosssell_ids', 'a:0:{}'),
(1373, 102, '_purchase_note', ''),
(1374, 102, '_default_attributes', 'a:0:{}'),
(1375, 102, '_virtual', 'no'),
(1376, 102, '_downloadable', 'no'),
(1377, 102, '_product_image_gallery', ''),
(1378, 102, '_download_limit', '-1'),
(1379, 102, '_download_expiry', '-1'),
(1380, 102, '_stock', NULL),
(1381, 102, '_stock_status', 'instock'),
(1382, 102, '_product_version', '3.4.5'),
(1383, 102, '_price', '20'),
(1384, 103, '_wc_review_count', '0'),
(1385, 103, '_wc_rating_count', 'a:0:{}'),
(1386, 103, '_wc_average_rating', '0'),
(1387, 103, '_sku', ''),
(1388, 103, '_regular_price', '18'),
(1389, 103, '_sale_price', ''),
(1390, 103, '_sale_price_dates_from', ''),
(1391, 103, '_sale_price_dates_to', ''),
(1392, 103, 'total_sales', '0'),
(1393, 103, '_tax_status', 'taxable'),
(1394, 103, '_tax_class', ''),
(1395, 103, '_manage_stock', 'no'),
(1396, 103, '_backorders', 'no'),
(1397, 103, '_sold_individually', 'no'),
(1398, 103, '_weight', ''),
(1399, 103, '_length', ''),
(1400, 103, '_width', ''),
(1401, 103, '_height', ''),
(1402, 103, '_upsell_ids', 'a:0:{}'),
(1403, 103, '_crosssell_ids', 'a:0:{}'),
(1404, 103, '_purchase_note', ''),
(1405, 103, '_default_attributes', 'a:0:{}'),
(1406, 103, '_virtual', 'no'),
(1407, 103, '_downloadable', 'no'),
(1408, 103, '_product_image_gallery', ''),
(1409, 103, '_download_limit', '-1'),
(1410, 103, '_download_expiry', '-1'),
(1411, 103, '_stock', NULL),
(1412, 103, '_stock_status', 'instock'),
(1413, 103, '_product_version', '3.4.5'),
(1414, 103, '_price', '18'),
(1415, 104, '_wc_review_count', '0'),
(1416, 104, '_wc_rating_count', 'a:0:{}'),
(1417, 104, '_wc_average_rating', '0'),
(1418, 104, '_sku', ''),
(1419, 104, '_regular_price', '18'),
(1420, 104, '_sale_price', ''),
(1421, 104, '_sale_price_dates_from', ''),
(1422, 104, '_sale_price_dates_to', ''),
(1423, 104, 'total_sales', '0'),
(1424, 104, '_tax_status', 'taxable'),
(1425, 104, '_tax_class', ''),
(1426, 104, '_manage_stock', 'no'),
(1427, 104, '_backorders', 'no'),
(1428, 104, '_sold_individually', 'no'),
(1429, 104, '_weight', ''),
(1430, 104, '_length', ''),
(1431, 104, '_width', ''),
(1432, 104, '_height', ''),
(1433, 104, '_upsell_ids', 'a:0:{}'),
(1434, 104, '_crosssell_ids', 'a:0:{}'),
(1435, 104, '_purchase_note', ''),
(1436, 104, '_default_attributes', 'a:0:{}'),
(1437, 104, '_virtual', 'no'),
(1438, 104, '_downloadable', 'no'),
(1439, 104, '_product_image_gallery', ''),
(1440, 104, '_download_limit', '-1'),
(1441, 104, '_download_expiry', '-1'),
(1442, 104, '_stock', NULL),
(1443, 104, '_stock_status', 'instock'),
(1444, 104, '_product_version', '3.4.5'),
(1445, 104, '_price', '18'),
(1446, 72, '_customize_restore_dismissed', '1'),
(1447, 39, '_customize_restore_dismissed', '1'),
(1448, 5, '_edit_lock', '1538402797:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-01 11:27:46', '2018-10-01 08:27:46', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-10-01 11:27:46', '2018-10-01 08:27:46', '', 0, 'http://jolly-fashion/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-01 11:27:46', '2018-10-01 08:27:46', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://jolly-fashion/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-01 11:27:46', '2018-10-01 08:27:46', '', 0, 'http://jolly-fashion/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-01 11:27:46', '2018-10-01 08:27:46', '<h2>Кто мы</h2><p>Наш адрес сайта: http://jolly-fashion.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-01 11:27:46', '2018-10-01 08:27:46', '', 0, 'http://jolly-fashion/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-01 11:27:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-01 11:27:59', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?p=4', 0, 'post', '', 0),
(5, 1, '2018-10-01 11:31:44', '2018-10-01 08:31:44', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-10-01 11:31:44', '2018-10-01 08:31:44', '', 0, 'http://jolly-fashion/shop/', 0, 'page', '', 0),
(6, 1, '2018-10-01 11:31:44', '2018-10-01 08:31:44', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-10-01 11:31:44', '2018-10-01 08:31:44', '', 0, 'http://jolly-fashion/cart/', 0, 'page', '', 0),
(7, 1, '2018-10-01 11:31:44', '2018-10-01 08:31:44', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-10-01 11:31:44', '2018-10-01 08:31:44', '', 0, 'http://jolly-fashion/checkout/', 0, 'page', '', 0),
(8, 1, '2018-10-01 11:31:44', '2018-10-01 08:31:44', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-10-01 11:31:44', '2018-10-01 08:31:44', '', 0, 'http://jolly-fashion/my-account/', 0, 'page', '', 0),
(9, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:39', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:40', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:40', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:42', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:42', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:42', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:43', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:43', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:44', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:44', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:47', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:47', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:39:48', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Это ваша главная страница,  большинство посетителей увидит именно ее, когда они впервые посещают ваш магазин.\r\n\r\nВы можете изменить этот текст, отредактировав страницу через меню «Страницы» на панели управления.', 'Добро пожаловать', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 11:39:48', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 11:39:48', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=27', 0, 'product', '', 0),
(28, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=28', 0, 'product', '', 0),
(29, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=29', 0, 'product', '', 0),
(30, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=30', 0, 'product', '', 0),
(31, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=31', 0, 'product', '', 0),
(32, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=32', 0, 'product', '', 0),
(33, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=33', 0, 'product', '', 0),
(34, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=34', 0, 'product', '', 0),
(35, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=35', 0, 'product', '', 0),
(36, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=36', 0, 'product', '', 0),
(37, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=37', 0, 'product', '', 0),
(38, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 11:44:04', '2018-10-01 08:44:04', '', 0, 'http://jolly-fashion/?p=38', 0, 'product', '', 0),
(39, 1, '2018-10-01 11:39:49', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            9,\n            10,\n            11,\n            12,\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38,\n            6,\n            7,\n            8,\n            5\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 08:39:49\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 08:39:49\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 08:39:49\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 08:39:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'fceebb18-85cd-48d6-b0d4-d5b0dfd1aef6', '', '', '2018-10-01 11:39:49', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:09', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/beanie-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:10', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/belt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:10', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/cap-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:11', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:11', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-pocket-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:11', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-zipper-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:12', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:12', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/long-sleeve-tee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:13', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/polo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:13', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/sunglasses-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:14', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:14', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/vneck-tee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:14', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hero-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:17', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/accessories-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:18', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirts-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:18', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodies-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Это ваша главная страница,  большинство посетителей увидит именно ее, когда они впервые посещают ваш магазин.\r\n\r\nВы можете изменить этот текст, отредактировав страницу через меню «Страницы» на панели управления.', 'Добро пожаловать', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Вы можете быть художником, который хотел бы представить себя и свою работу здесь или, если вы бизнесмен, можете описать свою миссию.', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Это страница с основными контактными данными, такими как адрес и номер телефона. Вы также можете попробовать плагин, чтобы добавить контактную форму.', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:24', '2018-10-01 09:33:24', '', 0, 'http://jolly-fashion/?p=60', 0, 'product', '', 0),
(61, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:24', '2018-10-01 09:33:24', '', 0, 'http://jolly-fashion/?p=61', 0, 'product', '', 0),
(62, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:24', '2018-10-01 09:33:24', '', 0, 'http://jolly-fashion/?p=62', 0, 'product', '', 0),
(63, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:25', '2018-10-01 09:33:25', '', 0, 'http://jolly-fashion/?p=63', 0, 'product', '', 0),
(64, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:25', '2018-10-01 09:33:25', '', 0, 'http://jolly-fashion/?p=64', 0, 'product', '', 0),
(65, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:26', '2018-10-01 09:33:26', '', 0, 'http://jolly-fashion/?p=65', 0, 'product', '', 0),
(66, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:26', '2018-10-01 09:33:26', '', 0, 'http://jolly-fashion/?p=66', 0, 'product', '', 0),
(67, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:27', '2018-10-01 09:33:27', '', 0, 'http://jolly-fashion/?p=67', 0, 'product', '', 0),
(68, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:27', '2018-10-01 09:33:27', '', 0, 'http://jolly-fashion/?p=68', 0, 'product', '', 0),
(69, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:27', '2018-10-01 09:33:27', '', 0, 'http://jolly-fashion/?p=69', 0, 'product', '', 0),
(70, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:28', '2018-10-01 09:33:28', '', 0, 'http://jolly-fashion/?p=70', 0, 'product', '', 0),
(71, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:28', '2018-10-01 09:33:28', '', 0, 'http://jolly-fashion/?p=71', 0, 'product', '', 0),
(72, 1, '2018-10-01 12:33:19', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"36756871087fe00bfcd26bfec4919941\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"sidebars_widgets[footer-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"13408940f659071e30d94a3e3d0970ae\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"sidebars_widgets[footer-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            40,\n            41,\n            42,\n            43,\n            44,\n            45,\n            46,\n            47,\n            48,\n            49,\n            50,\n            51,\n            52,\n            53,\n            54,\n            55,\n            56,\n            57,\n            58,\n            59,\n            60,\n            61,\n            62,\n            63,\n            64,\n            65,\n            66,\n            67,\n            68,\n            69,\n            70,\n            71,\n            6,\n            7,\n            8,\n            5\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 57,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 58,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"jolly-fashion::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 0,\n            \"nav_menu_term_id\": -4,\n            \"title\": \"\\u041c\\u043e\\u0439 \\u0430\\u043a\\u043a\\u0430\\u0443\\u043d\\u0442\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"jolly-fashion::nav_menu_locations[secondary]\": {\n        \"starter_content\": true,\n        \"value\": -4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"jolly-fashion::nav_menu_locations[handheld]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 56,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 59,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:19\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f260556e-7b4f-44af-b6bd-bca54724b6e2', '', '', '2018-10-01 12:33:19', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:32', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:32', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:32', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:33', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:33', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:34', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:34', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:34', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:35', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:35', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:36', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:36', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:37', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hero-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:39', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/accessories-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:40', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/tshirts-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:40', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/wp-content/uploads/2018/10/hoodies-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Это ваша главная страница,  большинство посетителей увидит именно ее, когда они впервые посещают ваш магазин.\r\n\r\nВы можете изменить этот текст, отредактировав страницу через меню «Страницы» на панели управления.', 'Добро пожаловать', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Вы можете быть художником, который хотел бы представить себя и свою работу здесь или, если вы бизнесмен, можете описать свою миссию.', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=90', 0, 'page', '', 0),
(91, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Это страница с основными контактными данными, такими как адрес и номер телефона. Вы также можете попробовать плагин, чтобы добавить контактную форму.', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=91', 0, 'page', '', 0),
(92, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?page_id=92', 0, 'page', '', 0),
(93, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:45', '2018-10-01 09:33:45', '', 0, 'http://jolly-fashion/?p=93', 0, 'product', '', 0),
(94, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:46', '2018-10-01 09:33:46', '', 0, 'http://jolly-fashion/?p=94', 0, 'product', '', 0),
(95, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:46', '2018-10-01 09:33:46', '', 0, 'http://jolly-fashion/?p=95', 0, 'product', '', 0),
(96, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:46', '2018-10-01 09:33:46', '', 0, 'http://jolly-fashion/?p=96', 0, 'product', '', 0),
(97, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:47', '2018-10-01 09:33:47', '', 0, 'http://jolly-fashion/?p=97', 0, 'product', '', 0),
(98, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:47', '2018-10-01 09:33:47', '', 0, 'http://jolly-fashion/?p=98', 0, 'product', '', 0),
(99, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:48', '2018-10-01 09:33:48', '', 0, 'http://jolly-fashion/?p=99', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(100, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:48', '2018-10-01 09:33:48', '', 0, 'http://jolly-fashion/?p=100', 0, 'product', '', 0),
(101, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:48', '2018-10-01 09:33:48', '', 0, 'http://jolly-fashion/?p=101', 0, 'product', '', 0),
(102, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:49', '2018-10-01 09:33:49', '', 0, 'http://jolly-fashion/?p=102', 0, 'product', '', 0),
(103, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:49', '2018-10-01 09:33:49', '', 0, 'http://jolly-fashion/?p=103', 0, 'product', '', 0),
(104, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-01 12:33:50', '2018-10-01 09:33:50', '', 0, 'http://jolly-fashion/?p=104', 0, 'product', '', 0),
(105, 1, '2018-10-01 12:33:41', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"36756871087fe00bfcd26bfec4919941\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"sidebars_widgets[footer-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"13408940f659071e30d94a3e3d0970ae\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"sidebars_widgets[footer-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            73,\n            74,\n            75,\n            76,\n            77,\n            78,\n            79,\n            80,\n            81,\n            82,\n            83,\n            84,\n            85,\n            86,\n            87,\n            88,\n            89,\n            90,\n            91,\n            92,\n            93,\n            94,\n            95,\n            96,\n            97,\n            98,\n            99,\n            100,\n            101,\n            102,\n            103,\n            104,\n            6,\n            7,\n            8,\n            5\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 90,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 91,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"jolly-fashion::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 0,\n            \"nav_menu_term_id\": -4,\n            \"title\": \"\\u041c\\u043e\\u0439 \\u0430\\u043a\\u043a\\u0430\\u0443\\u043d\\u0442\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"jolly-fashion::nav_menu_locations[secondary]\": {\n        \"starter_content\": true,\n        \"value\": -4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"jolly-fashion::nav_menu_locations[handheld]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 89,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 92,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 09:33:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '861e33a6-4417-4b9d-89e9-3cde60201dc4', '', '', '2018-10-01 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://jolly-fashion/?p=105', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'thumbnail_id', '22'),
(2, 16, 'product_count_product_cat', '0'),
(3, 17, 'thumbnail_id', '24'),
(4, 17, 'product_count_product_cat', '0'),
(5, 18, 'thumbnail_id', '23'),
(6, 18, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Аксессуары', 'accessories', 0),
(17, 'Толстовки', 'hoodies', 0),
(18, 'Футболки', 'tshirts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(27, 16, 0),
(28, 2, 0),
(28, 16, 0),
(29, 2, 0),
(29, 16, 0),
(30, 2, 0),
(30, 8, 0),
(30, 16, 0),
(31, 2, 0),
(31, 17, 0),
(32, 2, 0),
(32, 8, 0),
(32, 17, 0),
(33, 2, 0),
(33, 8, 0),
(33, 17, 0),
(34, 2, 0),
(34, 8, 0),
(34, 17, 0),
(35, 2, 0),
(35, 18, 0),
(36, 2, 0),
(36, 18, 0),
(37, 2, 0),
(37, 18, 0),
(38, 2, 0),
(38, 18, 0),
(60, 2, 0),
(60, 16, 0),
(61, 2, 0),
(61, 16, 0),
(62, 2, 0),
(62, 16, 0),
(63, 2, 0),
(63, 8, 0),
(63, 16, 0),
(64, 2, 0),
(64, 17, 0),
(65, 2, 0),
(65, 8, 0),
(65, 17, 0),
(66, 2, 0),
(66, 8, 0),
(66, 17, 0),
(67, 2, 0),
(67, 8, 0),
(67, 17, 0),
(68, 2, 0),
(68, 18, 0),
(69, 2, 0),
(69, 18, 0),
(70, 2, 0),
(70, 18, 0),
(71, 2, 0),
(71, 18, 0),
(93, 2, 0),
(93, 16, 0),
(94, 2, 0),
(94, 16, 0),
(95, 2, 0),
(95, 16, 0),
(96, 2, 0),
(96, 8, 0),
(96, 16, 0),
(97, 2, 0),
(97, 17, 0),
(98, 2, 0),
(98, 8, 0),
(98, 17, 0),
(99, 2, 0),
(99, 8, 0),
(99, 17, 0),
(100, 2, 0),
(100, 8, 0),
(100, 17, 0),
(101, 2, 0),
(101, 18, 0),
(102, 2, 0),
(102, 18, 0),
(103, 2, 0),
(103, 18, 0),
(104, 2, 0),
(104, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', 'Краткое описание категории', 0, 0),
(17, 17, 'product_cat', 'Краткое описание категории', 0, 0),
(18, 18, 'product_cat', 'Краткое описание категории', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"d47343c8c6c75b8b796f86518a8f94932213be45257dd2dc2b9f1d93731e3e72\";a:4:{s:10:\"expiration\";i:1539592078;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538382478;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(20, 1, 'wc_last_active', '1538352000');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8LLaSxxiP7s4MchEjFvuXqUe8HKvy/', 'admin', 'onceagain@ua.fm', '', '2018-10-01 08:27:46', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(5, '1', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:703:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"onceagain@ua.fm\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1538558633);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Украина', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1449;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

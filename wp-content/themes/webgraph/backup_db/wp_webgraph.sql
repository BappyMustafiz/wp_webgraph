-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 09:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_webgraph`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-10 05:04:05', '2018-09-10 05:04:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 40, 'admin', 'mustafizur120133@gmail.com', '', '::1', '2018-09-11 07:16:19', '2018-09-11 07:16:19', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(3, 38, 'admin', 'mustafizur120133@gmail.com', '', '::1', '2018-09-15 11:17:36', '2018-09-15 11:17:36', 'test comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1),
(4, 38, 'admin', 'mustafizur120133@gmail.com', '', '::1', '2018-09-15 11:35:02', '2018-09-15 11:35:02', 'another comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 3, 1);

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
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-09-21 23:51:15', '2018-09-22 05:51:15'),
(2, '', '', 'email', 1, 1, '2018-09-21 23:51:16', '2018-09-22 05:51:16'),
(3, '', '', 'email', 1, 1, '2018-09-21 23:51:17', '2018-09-22 05:51:17'),
(4, '', '', 'successmessage', 1, 1, '2018-09-21 23:51:17', '2018-09-22 05:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', '0'),
(8, 1, 'tag', ''),
(9, 1, 'to', '{wp:admin_email}'),
(10, 1, 'email_subject', 'Ninja Forms Submission'),
(11, 1, 'email_message', '{fields_table}'),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', '0'),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', '0'),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', '0'),
(69, 4, 'tag', ''),
(70, 4, 'to', '{wp:admin_email}'),
(71, 4, 'email_subject', 'Ninja Forms Submission'),
(72, 4, 'email_message', '{fields_table}'),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', ''),
(83, 1, 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(84, 1, 'submitter_email', ''),
(85, 1, 'fields-save-toggle', 'save_all'),
(86, 1, 'exception_fields', 'a:0:{}'),
(87, 1, 'set_subs_to_expire', '0'),
(88, 1, 'subs_expire_time', '90'),
(89, 3, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(90, 4, 'submitter_email', ''),
(91, 4, 'fields-save-toggle', 'save_all'),
(92, 4, 'exception_fields', 'a:0:{}'),
(93, 4, 'set_subs_to_expire', '0'),
(94, 4, 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2018-09-22 05:53:24', '2018-09-22 05:51:14'),
(2, 'Email', 'email', 'email', 1, '2018-09-22 05:53:24', '2018-09-22 05:51:14'),
(3, 'Message', 'message', 'textarea', 1, '2018-09-22 05:53:24', '2018-09-22 05:51:14'),
(4, 'Submit', 'submit', 'submit', 1, '2018-09-22 05:53:24', '2018-09-22 05:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'editActive', ''),
(2, 1, 'order', '1'),
(3, 1, 'label', 'Name'),
(4, 1, 'key', 'name'),
(5, 1, 'type', 'textbox'),
(6, 1, 'created_at', '2018-09-22 05:51:14'),
(7, 1, 'label_pos', 'above'),
(8, 1, 'required', '1'),
(9, 1, 'placeholder', ''),
(10, 1, 'default', ''),
(11, 1, 'wrapper_class', ''),
(12, 1, 'element_class', ''),
(13, 1, 'container_class', ''),
(14, 1, 'input_limit', ''),
(15, 1, 'input_limit_type', 'characters'),
(16, 1, 'input_limit_msg', 'Character(s) left'),
(17, 1, 'manual_key', ''),
(18, 1, 'disable_input', ''),
(19, 1, 'admin_label', ''),
(20, 1, 'help_text', ''),
(21, 1, 'desc_text', ''),
(22, 1, 'disable_browser_autocomplete', ''),
(23, 1, 'mask', ''),
(24, 1, 'custom_mask', ''),
(25, 1, 'wrap_styles_background-color', ''),
(26, 1, 'wrap_styles_border', ''),
(27, 1, 'wrap_styles_border-style', ''),
(28, 1, 'wrap_styles_border-color', ''),
(29, 1, 'wrap_styles_color', ''),
(30, 1, 'wrap_styles_height', ''),
(31, 1, 'wrap_styles_width', ''),
(32, 1, 'wrap_styles_font-size', ''),
(33, 1, 'wrap_styles_margin', ''),
(34, 1, 'wrap_styles_padding', ''),
(35, 1, 'wrap_styles_display', ''),
(36, 1, 'wrap_styles_float', ''),
(37, 1, 'wrap_styles_show_advanced_css', '0'),
(38, 1, 'wrap_styles_advanced', ''),
(39, 1, 'label_styles_background-color', ''),
(40, 1, 'label_styles_border', ''),
(41, 1, 'label_styles_border-style', ''),
(42, 1, 'label_styles_border-color', ''),
(43, 1, 'label_styles_color', ''),
(44, 1, 'label_styles_height', ''),
(45, 1, 'label_styles_width', ''),
(46, 1, 'label_styles_font-size', ''),
(47, 1, 'label_styles_margin', ''),
(48, 1, 'label_styles_padding', ''),
(49, 1, 'label_styles_display', ''),
(50, 1, 'label_styles_float', ''),
(51, 1, 'label_styles_show_advanced_css', '0'),
(52, 1, 'label_styles_advanced', ''),
(53, 1, 'element_styles_background-color', ''),
(54, 1, 'element_styles_border', ''),
(55, 1, 'element_styles_border-style', ''),
(56, 1, 'element_styles_border-color', ''),
(57, 1, 'element_styles_color', ''),
(58, 1, 'element_styles_height', ''),
(59, 1, 'element_styles_width', ''),
(60, 1, 'element_styles_font-size', ''),
(61, 1, 'element_styles_margin', ''),
(62, 1, 'element_styles_padding', ''),
(63, 1, 'element_styles_display', ''),
(64, 1, 'element_styles_float', ''),
(65, 1, 'element_styles_show_advanced_css', '0'),
(66, 1, 'element_styles_advanced', ''),
(67, 1, 'cellcid', 'c3277'),
(68, 1, 'custom_name_attribute', ''),
(69, 1, 'personally_identifiable', ''),
(70, 1, 'drawerDisabled', ''),
(71, 2, 'editActive', ''),
(72, 2, 'order', '2'),
(73, 2, 'label', 'Email'),
(74, 2, 'key', 'email'),
(75, 2, 'type', 'email'),
(76, 2, 'created_at', '2018-09-22 05:51:14'),
(77, 2, 'label_pos', 'above'),
(78, 2, 'required', '1'),
(79, 2, 'placeholder', ''),
(80, 2, 'default', ''),
(81, 2, 'wrapper_class', ''),
(82, 2, 'element_class', ''),
(83, 2, 'container_class', ''),
(84, 2, 'admin_label', ''),
(85, 2, 'help_text', ''),
(86, 2, 'desc_text', ''),
(87, 2, 'wrap_styles_background-color', ''),
(88, 2, 'wrap_styles_border', ''),
(89, 2, 'wrap_styles_border-style', ''),
(90, 2, 'wrap_styles_border-color', ''),
(91, 2, 'wrap_styles_color', ''),
(92, 2, 'wrap_styles_height', ''),
(93, 2, 'wrap_styles_width', ''),
(94, 2, 'wrap_styles_font-size', ''),
(95, 2, 'wrap_styles_margin', ''),
(96, 2, 'wrap_styles_padding', ''),
(97, 2, 'wrap_styles_display', ''),
(98, 2, 'wrap_styles_float', ''),
(99, 2, 'wrap_styles_show_advanced_css', '0'),
(100, 2, 'wrap_styles_advanced', ''),
(101, 2, 'label_styles_background-color', ''),
(102, 2, 'label_styles_border', ''),
(103, 2, 'label_styles_border-style', ''),
(104, 2, 'label_styles_border-color', ''),
(105, 2, 'label_styles_color', ''),
(106, 2, 'label_styles_height', ''),
(107, 2, 'label_styles_width', ''),
(108, 2, 'label_styles_font-size', ''),
(109, 2, 'label_styles_margin', ''),
(110, 2, 'label_styles_padding', ''),
(111, 2, 'label_styles_display', ''),
(112, 2, 'label_styles_float', ''),
(113, 2, 'label_styles_show_advanced_css', '0'),
(114, 2, 'label_styles_advanced', ''),
(115, 2, 'element_styles_background-color', ''),
(116, 2, 'element_styles_border', ''),
(117, 2, 'element_styles_border-style', ''),
(118, 2, 'element_styles_border-color', ''),
(119, 2, 'element_styles_color', ''),
(120, 2, 'element_styles_height', ''),
(121, 2, 'element_styles_width', ''),
(122, 2, 'element_styles_font-size', ''),
(123, 2, 'element_styles_margin', ''),
(124, 2, 'element_styles_padding', ''),
(125, 2, 'element_styles_display', ''),
(126, 2, 'element_styles_float', ''),
(127, 2, 'element_styles_show_advanced_css', '0'),
(128, 2, 'element_styles_advanced', ''),
(129, 2, 'cellcid', 'c3281'),
(130, 2, 'custom_name_attribute', 'email'),
(131, 2, 'personally_identifiable', '1'),
(132, 3, 'editActive', ''),
(133, 3, 'order', '3'),
(134, 3, 'label', 'Message'),
(135, 3, 'key', 'message'),
(136, 3, 'type', 'textarea'),
(137, 3, 'created_at', '2018-09-22 05:51:14'),
(138, 3, 'label_pos', 'above'),
(139, 3, 'required', '1'),
(140, 3, 'placeholder', ''),
(141, 3, 'default', ''),
(142, 3, 'wrapper_class', ''),
(143, 3, 'element_class', ''),
(144, 3, 'container_class', ''),
(145, 3, 'input_limit', ''),
(146, 3, 'input_limit_type', 'characters'),
(147, 3, 'input_limit_msg', 'Character(s) left'),
(148, 3, 'manual_key', ''),
(149, 3, 'disable_input', ''),
(150, 3, 'admin_label', ''),
(151, 3, 'help_text', ''),
(152, 3, 'desc_text', ''),
(153, 3, 'disable_browser_autocomplete', ''),
(154, 3, 'textarea_rte', ''),
(155, 3, 'disable_rte_mobile', ''),
(156, 3, 'textarea_media', ''),
(157, 3, 'wrap_styles_background-color', ''),
(158, 3, 'wrap_styles_border', ''),
(159, 3, 'wrap_styles_border-style', ''),
(160, 3, 'wrap_styles_border-color', ''),
(161, 3, 'wrap_styles_color', ''),
(162, 3, 'wrap_styles_height', ''),
(163, 3, 'wrap_styles_width', ''),
(164, 3, 'wrap_styles_font-size', ''),
(165, 3, 'wrap_styles_margin', ''),
(166, 3, 'wrap_styles_padding', ''),
(167, 3, 'wrap_styles_display', ''),
(168, 3, 'wrap_styles_float', ''),
(169, 3, 'wrap_styles_show_advanced_css', '0'),
(170, 3, 'wrap_styles_advanced', ''),
(171, 3, 'label_styles_background-color', ''),
(172, 3, 'label_styles_border', ''),
(173, 3, 'label_styles_border-style', ''),
(174, 3, 'label_styles_border-color', ''),
(175, 3, 'label_styles_color', ''),
(176, 3, 'label_styles_height', ''),
(177, 3, 'label_styles_width', ''),
(178, 3, 'label_styles_font-size', ''),
(179, 3, 'label_styles_margin', ''),
(180, 3, 'label_styles_padding', ''),
(181, 3, 'label_styles_display', ''),
(182, 3, 'label_styles_float', ''),
(183, 3, 'label_styles_show_advanced_css', '0'),
(184, 3, 'label_styles_advanced', ''),
(185, 3, 'element_styles_background-color', ''),
(186, 3, 'element_styles_border', ''),
(187, 3, 'element_styles_border-style', ''),
(188, 3, 'element_styles_border-color', ''),
(189, 3, 'element_styles_color', ''),
(190, 3, 'element_styles_height', ''),
(191, 3, 'element_styles_width', ''),
(192, 3, 'element_styles_font-size', ''),
(193, 3, 'element_styles_margin', ''),
(194, 3, 'element_styles_padding', ''),
(195, 3, 'element_styles_display', ''),
(196, 3, 'element_styles_float', ''),
(197, 3, 'element_styles_show_advanced_css', '0'),
(198, 3, 'element_styles_advanced', ''),
(199, 3, 'cellcid', 'c3284'),
(200, 4, 'editActive', ''),
(201, 4, 'order', '5'),
(202, 4, 'label', 'Submit'),
(203, 4, 'key', 'submit'),
(204, 4, 'type', 'submit'),
(205, 4, 'created_at', '2018-09-22 05:51:14'),
(206, 4, 'processing_label', 'Processing'),
(207, 4, 'container_class', ''),
(208, 4, 'element_class', ''),
(209, 4, 'wrap_styles_background-color', ''),
(210, 4, 'wrap_styles_border', ''),
(211, 4, 'wrap_styles_border-style', ''),
(212, 4, 'wrap_styles_border-color', ''),
(213, 4, 'wrap_styles_color', ''),
(214, 4, 'wrap_styles_height', ''),
(215, 4, 'wrap_styles_width', ''),
(216, 4, 'wrap_styles_font-size', ''),
(217, 4, 'wrap_styles_margin', ''),
(218, 4, 'wrap_styles_padding', ''),
(219, 4, 'wrap_styles_display', ''),
(220, 4, 'wrap_styles_float', ''),
(221, 4, 'wrap_styles_show_advanced_css', '0'),
(222, 4, 'wrap_styles_advanced', ''),
(223, 4, 'label_styles_background-color', ''),
(224, 4, 'label_styles_border', ''),
(225, 4, 'label_styles_border-style', ''),
(226, 4, 'label_styles_border-color', ''),
(227, 4, 'label_styles_color', ''),
(228, 4, 'label_styles_height', ''),
(229, 4, 'label_styles_width', ''),
(230, 4, 'label_styles_font-size', ''),
(231, 4, 'label_styles_margin', ''),
(232, 4, 'label_styles_padding', ''),
(233, 4, 'label_styles_display', ''),
(234, 4, 'label_styles_float', ''),
(235, 4, 'label_styles_show_advanced_css', '0'),
(236, 4, 'label_styles_advanced', ''),
(237, 4, 'element_styles_background-color', ''),
(238, 4, 'element_styles_border', ''),
(239, 4, 'element_styles_border-style', ''),
(240, 4, 'element_styles_border-color', ''),
(241, 4, 'element_styles_color', ''),
(242, 4, 'element_styles_height', ''),
(243, 4, 'element_styles_width', ''),
(244, 4, 'element_styles_font-size', ''),
(245, 4, 'element_styles_margin', ''),
(246, 4, 'element_styles_padding', ''),
(247, 4, 'element_styles_display', ''),
(248, 4, 'element_styles_float', ''),
(249, 4, 'element_styles_show_advanced_css', '0'),
(250, 4, 'element_styles_advanced', ''),
(251, 4, 'submit_element_hover_styles_background-color', ''),
(252, 4, 'submit_element_hover_styles_border', ''),
(253, 4, 'submit_element_hover_styles_border-style', ''),
(254, 4, 'submit_element_hover_styles_border-color', ''),
(255, 4, 'submit_element_hover_styles_color', ''),
(256, 4, 'submit_element_hover_styles_height', ''),
(257, 4, 'submit_element_hover_styles_width', ''),
(258, 4, 'submit_element_hover_styles_font-size', ''),
(259, 4, 'submit_element_hover_styles_margin', ''),
(260, 4, 'submit_element_hover_styles_padding', ''),
(261, 4, 'submit_element_hover_styles_display', ''),
(262, 4, 'submit_element_hover_styles_float', ''),
(263, 4, 'submit_element_hover_styles_show_advanced_css', '0'),
(264, 4, 'submit_element_hover_styles_advanced', ''),
(265, 4, 'cellcid', 'c3287');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Feel free to contact with us', NULL, '2018-09-21 23:51:10', '2018-09-22 05:51:10', NULL, NULL, 'Feel free to contact with us', 'above', b'1', b'1', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2018-09-22 05:51:10', 'created_at', '2018-09-22 05:51:10'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '1', 'editActive', '1'),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}', 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 1, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(100, 1, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(101, 1, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(102, 1, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(103, 1, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(104, 1, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(105, 1, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(106, 1, 'validateRequiredField', '', 'validateRequiredField', ''),
(107, 1, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(108, 1, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(109, 1, 'currency', '', 'currency', ''),
(110, 1, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(111, 1, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`) VALUES
(1, 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:72:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"1\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:63:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"2\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:70:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"3\";s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:68:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"5\";s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:15\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:16\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:17\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:17\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:112:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:28:\"Feel free to contact with us\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:10\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 1);

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
(1, 'siteurl', 'http://localhost/wp_webgraph', 'yes'),
(2, 'home', 'http://localhost/wp_webgraph', 'yes'),
(3, 'blogname', 'Versatile Training Center', 'yes'),
(4, 'blogdescription', 'The best training center ever', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'mustafizur120133@gmail.com', 'yes'),
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
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:196:{s:41:\"um-api/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_page=api&um_action=$matches[1]&um_resource=$matches[2]&um_method=$matches[3]&um_verify=$matches[4]\";s:15:\"user/([^/]+)/?$\";s:47:\"index.php?page_id=176&um_user=$matches[1]&lang=\";s:17:\"account/([^/]+)?$\";s:46:\"index.php?page_id=186&um_tab=$matches[1]&lang=\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"slider-item/?$\";s:32:\"index.php?post_type=slider-items\";s:44:\"slider-item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:39:\"slider-item/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:31:\"slider-item/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=slider-items&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/um-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&um-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/um-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&um-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"um_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"um_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"um_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"um_form/([^/]+)/embed/?$\";s:40:\"index.php?um_form=$matches[1]&embed=true\";s:28:\"um_form/([^/]+)/trackback/?$\";s:34:\"index.php?um_form=$matches[1]&tb=1\";s:36:\"um_form/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&paged=$matches[2]\";s:43:\"um_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&cpage=$matches[2]\";s:33:\"um_form/([^/]+)/um-api(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&um-api=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:32:\"um_form/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?um_form=$matches[1]&page=$matches[2]\";s:24:\"um_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"um_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"um_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"um_directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"um_directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"um_directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"um_directory/([^/]+)/embed/?$\";s:45:\"index.php?um_directory=$matches[1]&embed=true\";s:33:\"um_directory/([^/]+)/trackback/?$\";s:39:\"index.php?um_directory=$matches[1]&tb=1\";s:41:\"um_directory/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&paged=$matches[2]\";s:48:\"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&cpage=$matches[2]\";s:38:\"um_directory/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&um-api=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"um_directory/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?um_directory=$matches[1]&page=$matches[2]\";s:29:\"um_directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"um_directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"um_directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:32:\"nf_sub/([^/]+)/um-api(/(.*))?/?$\";s:47:\"index.php?nf_sub=$matches[1]&um-api=$matches[3]\";s:38:\"nf_sub/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:49:\"nf_sub/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"slider-item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"slider-item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"slider-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"slider-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"slider-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"slider-item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"slider-item/([^/]+)/embed/?$\";s:45:\"index.php?slider-items=$matches[1]&embed=true\";s:32:\"slider-item/([^/]+)/trackback/?$\";s:39:\"index.php?slider-items=$matches[1]&tb=1\";s:52:\"slider-item/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?slider-items=$matches[1]&feed=$matches[2]\";s:47:\"slider-item/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?slider-items=$matches[1]&feed=$matches[2]\";s:40:\"slider-item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?slider-items=$matches[1]&paged=$matches[2]\";s:47:\"slider-item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?slider-items=$matches[1]&cpage=$matches[2]\";s:37:\"slider-item/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?slider-items=$matches[1]&um-api=$matches[3]\";s:43:\"slider-item/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:54:\"slider-item/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:36:\"slider-item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?slider-items=$matches[1]&page=$matches[2]\";s:28:\"slider-item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"slider-item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"slider-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"slider-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"slider-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"slider-item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?slider_cat=$matches[1]&feed=$matches[2]\";s:51:\"slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?slider_cat=$matches[1]&feed=$matches[2]\";s:32:\"slider-category/([^/]+)/embed/?$\";s:43:\"index.php?slider_cat=$matches[1]&embed=true\";s:44:\"slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?slider_cat=$matches[1]&paged=$matches[2]\";s:26:\"slider-category/([^/]+)/?$\";s:32:\"index.php?slider_cat=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:17:\"um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/um-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&um-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/um-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&um-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/um-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&um-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/um-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&um-api=$matches[3]\";s:31:\".?.+?/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/um-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&um-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:1;s:27:\"ninja-forms/ninja-forms.php\";i:2;s:35:\"ultimate-member/ultimate-member.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:64:\"D:\\xampp\\htdocs\\wp_webgraph/wp-content/themes/webgraph/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'webgraph', 'yes'),
(41, 'stylesheet', 'webgraph', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '80', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"widget-home-one\";a:1:{i:0;s:10:\"calendar-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:11:{i:1537617467;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1537617846;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1537635846;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1537642667;a:1:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1537679150;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537685127;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537685796;a:1:{s:28:\"um_check_extensions_licenses\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537685867;a:1:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537858667;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1540274020;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536824500;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1537595445;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Webgraph', 'yes'),
(144, 'theme_mods_webgraph', 'a:22:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:15:\"header_top_menu\";i:2;s:11:\"footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:4:\"logo\";s:0:\"\";s:7:\"favicon\";s:0:\"\";s:15:\"header_facebook\";s:0:\"\";s:15:\"header_linkedin\";s:0:\"\";s:14:\"header_twitter\";s:0:\"\";s:13:\"header_google\";s:0:\"\";s:12:\"header_skype\";s:16:\"http://skype.com\";s:14:\"header_youtube\";s:0:\"\";s:12:\"header_phone\";s:0:\"\";s:12:\"header_email\";s:0:\"\";s:19:\"header_navbar_color\";s:0:\"\";s:15:\"footer_location\";s:0:\"\";s:12:\"footer_phone\";s:0:\"\";s:12:\"footer_email\";s:0:\"\";s:11:\"footer_logo\";s:0:\"\";s:16:\"footer_developer\";s:0:\"\";s:16:\"footer_copyright\";s:0:\"\";s:20:\"footer_developer_url\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536824460;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"widget-home-one\";a:0:{}s:13:\"footer-widget\";a:0:{}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, 'redux_version_upgraded_from', '3.6.11', 'yes'),
(181, 'redux_demo', 'a:28:{s:8:\"last_tab\";s:1:\"1\";s:13:\"opt-site-logo\";a:9:{s:3:\"url\";s:64:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\";s:2:\"id\";s:2:\"29\";s:6:\"height\";s:2:\"23\";s:5:\"width\";s:3:\"138\";s:9:\"thumbnail\";s:64:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:28:\"opt-site-logo-enable-disable\";s:1:\"1\";s:16:\"opt-site-favicon\";a:9:{s:3:\"url\";s:78:\"http://localhost/wp_webgraph/wp-content/themes/webgraph/assets/img/favicon.ico\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:31:\"opt-site-favicon-enable-disable\";s:1:\"1\";s:16:\"opt-topbar-phone\";s:13:\"+88 01xxxxxxx\";s:16:\"opt-topbar-email\";s:18:\"yourname@email.com\";s:24:\"header-navbar-background\";s:7:\"#5b9cdf\";s:24:\"opt-site-social-facebook\";s:23:\"http://www.facebook.com\";s:24:\"opt-site-social-linkedin\";s:23:\"http://www.linkedin.com\";s:23:\"opt-site-social-twitter\";s:22:\"http://www.twitter.com\";s:22:\"opt-site-social-google\";s:23:\"http://plus.google.com/\";s:21:\"opt-site-social-skype\";s:17:\"http://skype.com/\";s:23:\"opt-site-social-youtube\";s:19:\"http://youtube.com/\";s:10:\"opt-slides\";a:2:{i:0;a:9:{s:5:\"title\";s:19:\"2 Lorem ipsum dolor\";s:11:\"description\";s:52:\"Lorem ipsum dolor sit amet, consetetur sadipscing...\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:3:\"126\";s:5:\"image\";s:82:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/basic-computer-courses.jpg\";s:6:\"height\";s:3:\"400\";s:5:\"width\";s:3:\"920\";s:5:\"thumb\";s:90:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/basic-computer-courses-150x150.jpg\";}i:1;a:9:{s:5:\"title\";s:52:\"Lorem ipsum dolor sit amet, consetetur sadipscing...\";s:11:\"description\";s:52:\"Lorem ipsum dolor sit amet, consetetur sadipscing...\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:13:\"attachment_id\";s:3:\"127\";s:5:\"image\";s:66:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/images.jpg\";s:6:\"height\";s:3:\"140\";s:5:\"width\";s:3:\"360\";s:5:\"thumb\";s:74:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/images-150x140.jpg\";}}s:18:\"opt-footer-address\";s:25:\"44/1, adam road, westham.\";s:16:\"opt-footer-phone\";s:13:\"+88 01xxxxxxx\";s:16:\"opt-footer-email\";s:18:\"yourname@email.com\";s:15:\"opt-footer-logo\";a:9:{s:3:\"url\";s:64:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\";s:2:\"id\";s:2:\"29\";s:6:\"height\";s:2:\"23\";s:5:\"width\";s:3:\"138\";s:9:\"thumbnail\";s:64:\"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:30:\"opt-footer-logo-enable-disable\";s:1:\"1\";s:18:\"opt-site-copyright\";s:25:\"@ All Right Reserved 2018\";s:27:\"opt-copyright-developer-url\";s:26:\"https://versatileitbd.com/\";s:28:\"opt-copyright-developer-name\";s:20:\"Versatile IT Limited\";s:34:\"opt-copyright-developer-link-color\";a:3:{s:7:\"regular\";s:7:\"#5b9cdf\";s:5:\"hover\";s:7:\"#ee3c3c\";s:6:\"active\";s:7:\"#eeee22\";}s:21:\"footer-top-background\";s:7:\"#2f3135\";s:24:\"footer-bottom-background\";s:7:\"#252628\";s:24:\"footer-top-switch-button\";s:1:\"1\";s:27:\"footer-bottom-switch-button\";s:1:\"1\";}', 'yes'),
(182, 'redux_demo-transients', 'a:3:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1537012455;s:13:\"last_compiler\";i:1536750756;}', 'yes'),
(226, '_transient_twentyseventeen_categories', '1', 'yes'),
(317, 'slider_cat_children', 'a:0:{}', 'yes'),
(323, '_cs_options', 'a:31:{s:19:\"first_section_title\";s:11:\"How we work\";s:25:\"first_section_title_color\";s:7:\"#323232\";s:25:\"how_we_work_section_group\";a:3:{i:1;a:3:{s:17:\"section_left_icon\";s:3:\"159\";s:18:\"section_left_title\";s:15:\"Accountabillity\";s:24:\"section_left_description\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";}i:2;a:3:{s:17:\"section_left_icon\";s:3:\"160\";s:18:\"section_left_title\";s:8:\"Expetize\";s:24:\"section_left_description\";s:116:\"It is a long established fact that a reader will be distracted by the rcontent of a page when looking at its layout.\";}i:3;a:3:{s:17:\"section_left_icon\";s:3:\"161\";s:18:\"section_left_title\";s:6:\" Speed\";s:24:\"section_left_description\";s:77:\"Contrary to popular belief, Lorem Ipsum is not text. It has roots in a piece.\";}}s:25:\"first_section_right_image\";s:3:\"158\";s:24:\"first_section_controller\";b:1;s:11:\"owner_image\";s:3:\"162\";s:10:\"owner_name\";s:8:\"John Doe\";s:17:\"owner_designation\";s:11:\"Founder/CEO\";s:19:\"owner_comment_title\";s:38:\"I Think Webgraph Is Best Traing Center\";s:25:\"owner_comment_title_color\";s:7:\"#5b9cdf\";s:25:\"owner_comment_description\";s:252:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.\";s:24:\"owner_section_controller\";b:1;s:25:\"our_courses_section_title\";s:11:\"Our Courses\";s:25:\"our_courses_section_group\";a:4:{i:1;a:3:{s:12:\"course_image\";s:3:\"207\";s:12:\"course_title\";s:14:\"Graphic Design\";s:12:\"course_price\";s:4:\"$350\";}i:2;a:3:{s:12:\"course_image\";s:3:\"208\";s:12:\"course_title\";s:10:\"Web Design\";s:12:\"course_price\";s:4:\"$530\";}i:3;a:3:{s:12:\"course_image\";s:3:\"209\";s:12:\"course_title\";s:15:\"Web Development\";s:12:\"course_price\";s:4:\"$650\";}i:4;a:3:{s:12:\"course_image\";s:3:\"214\";s:12:\"course_title\";s:10:\"App Design\";s:12:\"course_price\";s:4:\"$530\";}}s:30:\"our_courses_section_controller\";b:1;s:29:\"details_counter_section_group\";a:4:{i:1;a:3:{s:20:\"counter_details_name\";s:16:\"Running students\";s:21:\"counter_details_image\";s:3:\"230\";s:15:\"counter_nummber\";s:3:\"150\";}i:2;a:3:{s:20:\"counter_details_name\";s:17:\"Graduates Student\";s:21:\"counter_details_image\";s:3:\"231\";s:15:\"counter_nummber\";s:2:\"80\";}i:3;a:3:{s:20:\"counter_details_name\";s:7:\"Courses\";s:21:\"counter_details_image\";s:3:\"232\";s:15:\"counter_nummber\";s:2:\"15\";}i:4;a:3:{s:20:\"counter_details_name\";s:7:\"Trainer\";s:21:\"counter_details_image\";s:3:\"233\";s:15:\"counter_nummber\";s:2:\"20\";}}s:34:\"details_counter_section_controller\";b:1;s:25:\"our_trainer_section_title\";s:15:\"Popular Trainer\";s:25:\"our_trainer_section_group\";a:5:{i:1;a:9:{s:13:\"trainer_image\";s:3:\"222\";s:12:\"trainer_name\";s:12:\"Mr. John Doe\";s:19:\"trainer_designation\";s:14:\"UI/UX DESIGNER\";s:16:\"trainer_facebook\";s:23:\"http://www.facebook.com\";s:15:\"trainer_twitter\";s:22:\"http://www.twitter.com\";s:17:\"trainer_instagram\";s:24:\"http://www.instagram.com\";s:16:\"Trainer_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"Trainer_skype\";s:20:\"http://www.skype.com\";s:19:\"trainer_description\";s:233:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos est expedita quidem, quo rem repellat reprehenderit sint suscipit temporibus. Commodi corporis est explicabo molestias mollitia numquam odit officia quod sapiente.\";}i:2;a:9:{s:13:\"trainer_image\";s:3:\"223\";s:12:\"trainer_name\";s:12:\"Mr. Antionio\";s:19:\"trainer_designation\";s:13:\"WEB DEVELOPER\";s:16:\"trainer_facebook\";s:23:\"http://www.facebook.com\";s:15:\"trainer_twitter\";s:22:\"http://www.twitter.com\";s:17:\"trainer_instagram\";s:24:\"http://www.instagram.com\";s:16:\"Trainer_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"Trainer_skype\";s:20:\"http://www.skype.com\";s:19:\"trainer_description\";s:233:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos est expedita quidem, quo rem repellat reprehenderit sint suscipit temporibus. Commodi corporis est explicabo molestias mollitia numquam odit officia quod sapiente.\";}i:3;a:9:{s:13:\"trainer_image\";s:3:\"224\";s:12:\"trainer_name\";s:15:\"Mr. John Donald\";s:19:\"trainer_designation\";s:18:\"PHOTOGRAPHY EXPERT\";s:16:\"trainer_facebook\";s:23:\"http://www.facebook.com\";s:15:\"trainer_twitter\";s:22:\"http://www.twitter.com\";s:17:\"trainer_instagram\";s:24:\"http://www.instagram.com\";s:16:\"Trainer_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"Trainer_skype\";s:20:\"http://www.skype.com\";s:19:\"trainer_description\";s:233:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos est expedita quidem, quo rem repellat reprehenderit sint suscipit temporibus. Commodi corporis est explicabo molestias mollitia numquam odit officia quod sapiente.\";}i:4;a:9:{s:13:\"trainer_image\";s:3:\"225\";s:12:\"trainer_name\";s:9:\"Mr. James\";s:19:\"trainer_designation\";s:16:\"MARKETING EXPERT\";s:16:\"trainer_facebook\";s:23:\"http://www.facebook.com\";s:15:\"trainer_twitter\";s:22:\"http://www.twitter.com\";s:17:\"trainer_instagram\";s:24:\"http://www.instagram.com\";s:16:\"Trainer_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"Trainer_skype\";s:20:\"http://www.skype.com\";s:19:\"trainer_description\";s:233:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos est expedita quidem, quo rem repellat reprehenderit sint suscipit temporibus. Commodi corporis est explicabo molestias mollitia numquam odit officia quod sapiente.\";}i:5;a:9:{s:13:\"trainer_image\";s:3:\"225\";s:12:\"trainer_name\";s:11:\"Amy jackson\";s:19:\"trainer_designation\";s:14:\"UI/UX DESIGNER\";s:16:\"trainer_facebook\";s:23:\"http://www.facebook.com\";s:15:\"trainer_twitter\";s:22:\"http://www.twitter.com\";s:17:\"trainer_instagram\";s:24:\"http://www.instagram.com\";s:16:\"Trainer_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"Trainer_skype\";s:20:\"http://www.skype.com\";s:19:\"trainer_description\";s:233:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos est expedita quidem, quo rem repellat reprehenderit sint suscipit temporibus. Commodi corporis est explicabo molestias mollitia numquam odit officia quod sapiente.\";}}s:30:\"our_trainer_section_controller\";b:1;s:29:\"student_opinion_section_title\";s:20:\"What Our Student Say\";s:29:\"student_opinion_section_group\";a:5:{i:1;a:8:{s:13:\"student_image\";s:3:\"163\";s:12:\"student_name\";s:12:\"Antonio Mark\";s:16:\"student_facebook\";s:23:\"http://www.facebook.com\";s:15:\"student_twitter\";s:22:\"http://www.twitter.com\";s:17:\"student_instagram\";s:24:\"http://www.instagram.com\";s:16:\"student_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"student_skype\";s:20:\"http://www.skype.com\";s:19:\"student_description\";s:118:\"There are many variations of passages of Lorem Ipsum available, but the majority have humour, or randomised Lanything.\";}i:2;a:8:{s:13:\"student_image\";s:3:\"164\";s:12:\"student_name\";s:11:\"Julia Vines\";s:16:\"student_facebook\";s:23:\"http://www.facebook.com\";s:15:\"student_twitter\";s:22:\"http://www.twitter.com\";s:17:\"student_instagram\";s:24:\"http://www.instagram.com\";s:16:\"student_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"student_skype\";s:20:\"http://www.skype.com\";s:19:\"student_description\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";}i:3;a:8:{s:13:\"student_image\";s:3:\"165\";s:12:\"student_name\";s:8:\"Jonathan\";s:16:\"student_facebook\";s:23:\"http://www.facebook.com\";s:15:\"student_twitter\";s:22:\"http://www.twitter.com\";s:17:\"student_instagram\";s:24:\"http://www.instagram.com\";s:16:\"student_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"student_skype\";s:20:\"http://www.skype.com\";s:19:\"student_description\";s:117:\"There are many variations of passages of Lorem Ipsum available, but the majority have humour or randomised Lanything.\";}i:4;a:8:{s:13:\"student_image\";s:3:\"162\";s:12:\"student_name\";s:8:\"John Doe\";s:16:\"student_facebook\";s:23:\"http://www.facebook.com\";s:15:\"student_twitter\";s:22:\"http://www.twitter.com\";s:17:\"student_instagram\";s:24:\"http://www.instagram.com\";s:16:\"student_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"student_skype\";s:20:\"http://www.skype.com\";s:19:\"student_description\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";}i:5;a:8:{s:13:\"student_image\";s:3:\"164\";s:12:\"student_name\";s:10:\"Lara Craft\";s:16:\"student_facebook\";s:23:\"http://www.facebook.com\";s:15:\"student_twitter\";s:22:\"http://www.twitter.com\";s:17:\"student_instagram\";s:24:\"http://www.instagram.com\";s:16:\"student_linkedin\";s:23:\"http://www.linkedin.com\";s:13:\"student_skype\";s:20:\"http://www.skype.com\";s:19:\"student_description\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";}}s:34:\"student_opinion_section_controller\";b:1;s:15:\"about_who_image\";s:2:\"96\";s:15:\"about_who_title\";s:10:\"WHO WE ARE\";s:21:\"about_who_description\";s:522:\"you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\";s:28:\"about_who_section_controller\";b:1;s:29:\"wroking_process_section_title\";s:11:\"How we work\";s:29:\"wroking_process_section_group\";a:3:{i:1;a:3:{s:25:\"wroking_process_left_icon\";s:3:\"159\";s:26:\"wroking_process_left_title\";s:15:\"Accountabillity\";s:32:\"wroking_process_left_description\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";}i:2;a:3:{s:25:\"wroking_process_left_icon\";s:3:\"160\";s:26:\"wroking_process_left_title\";s:9:\" Expetize\";s:32:\"wroking_process_left_description\";s:116:\"It is a long established fact that a reader will be distracted by the rcontent of a page when looking at its layout.\";}i:3;a:3:{s:25:\"wroking_process_left_icon\";s:3:\"161\";s:26:\"wroking_process_left_title\";s:5:\"Speed\";s:32:\"wroking_process_left_description\";s:77:\"Contrary to popular belief, Lorem Ipsum is not text. It has roots in a piece.\";}}s:35:\"wroking_process_section_right_image\";s:0:\"\";s:34:\"wroking_process_section_controller\";b:1;}', 'yes'),
(347, 'category_children', 'a:0:{}', 'yes'),
(353, '_site_transient_timeout_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', '1537771048', 'no'),
(354, '_site_transient_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(425, 'recently_activated', 'a:1:{s:65:\"forget-about-shortcode-buttons/forget-about-shortcode-buttons.php\";i:1537595499;}', 'yes'),
(432, 'um_last_version_upgrade', '2.0.25', 'yes'),
(433, 'um_first_activation_date', '1537253796', 'yes'),
(434, 'um_version', '2.0.25', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(435, '__ultimatemember_sitekey', 'localhost/wp_webgraph-Ccq53CNfHGwj7a5HWZwl', 'yes'),
(436, 'um_is_installed', '1', 'yes'),
(437, 'um_core_forms', 'a:3:{i:172;i:172;i:173;i:173;i:174;i:174;}', 'yes'),
(438, 'um_core_directories', 'a:1:{i:175;i:175;}', 'yes'),
(439, 'um_options', 'a:151:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:24:\"reset_require_strongpass\";i:0;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:150:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:25:\"account_hide_in_directory\";i:1;s:26:\"account_require_strongpass\";i:0;s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:26:\"mustafizur120133@gmail.com\";s:9:\"mail_from\";s:25:\"Versatile Training Center\";s:14:\"mail_from_addr\";s:26:\"mustafizur120133@gmail.com\";s:10:\"email_html\";i:1;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";i:176;s:10:\"core_login\";i:178;s:13:\"core_register\";i:180;s:12:\"core_members\";i:182;s:11:\"core_logout\";i:184;s:12:\"core_account\";i:186;s:19:\"core_password-reset\";i:188;s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:21:\"profile_show_html_bio\";i:0;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:21:\"profile_cover_enabled\";i:1;s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:17:\"profile_photosize\";s:5:\"190px\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:5:\"Login\";s:22:\"login_forgot_pass_link\";i:1;s:21:\"login_show_rememberme\";i:1;s:19:\"login_secondary_btn\";i:1;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";}', 'yes'),
(440, 'um_role_subscriber_meta', 'a:34:{s:13:\"_um_is_custom\";s:1:\"0\";s:4:\"name\";s:10:\"Subscriber\";s:12:\"_um_priority\";s:0:\"\";s:22:\"_um_can_access_wpadmin\";s:1:\"1\";s:24:\"_um_can_not_see_adminbar\";s:1:\"1\";s:21:\"_um_can_edit_everyone\";s:1:\"0\";s:18:\"_um_can_edit_roles\";s:0:\"\";s:23:\"_um_can_delete_everyone\";s:1:\"0\";s:20:\"_um_can_delete_roles\";s:0:\"\";s:20:\"_um_can_edit_profile\";s:1:\"1\";s:22:\"_um_can_delete_profile\";s:1:\"1\";s:16:\"_um_can_view_all\";s:1:\"1\";s:18:\"_um_can_view_roles\";a:1:{i:0;s:10:\"subscriber\";}s:28:\"_um_can_make_private_profile\";s:1:\"0\";s:30:\"_um_can_access_private_profile\";s:1:\"0\";s:20:\"_um_default_homepage\";s:1:\"1\";s:21:\"_um_redirect_homepage\";s:0:\"\";s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";s:20:\"_um_auto_approve_url\";s:0:\"\";s:24:\"_um_login_email_activate\";s:1:\"0\";s:20:\"_um_checkmail_action\";s:12:\"show_message\";s:21:\"_um_checkmail_message\";s:147:\"Thank you for registering. Before you can login we need you to activate your account by clicking the activation link in the email we just sent you.\";s:17:\"_um_checkmail_url\";s:0:\"\";s:22:\"_um_url_email_activate\";s:0:\"\";s:18:\"_um_pending_action\";s:12:\"show_message\";s:19:\"_um_pending_message\";s:170:\"Thank you for applying for membership to our site. We will review your details and send you an email letting you know whether your application has been successful or not.\";s:15:\"_um_pending_url\";s:0:\"\";s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:22:\"_um_login_redirect_url\";s:0:\"\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:23:\"_um_logout_redirect_url\";s:0:\"\";s:16:\"_um_after_delete\";s:13:\"redirect_home\";s:23:\"_um_delete_redirect_url\";s:0:\"\";}', 'yes'),
(441, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(442, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(443, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(444, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(445, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(454, 'um_cache_fonticons', 'a:1218:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:15:\"um-faicon-glass\";i:734;s:15:\"um-faicon-music\";i:735;s:16:\"um-faicon-search\";i:736;s:20:\"um-faicon-envelope-o\";i:737;s:15:\"um-faicon-heart\";i:738;s:14:\"um-faicon-star\";i:739;s:16:\"um-faicon-star-o\";i:740;s:14:\"um-faicon-user\";i:741;s:14:\"um-faicon-film\";i:742;s:18:\"um-faicon-th-large\";i:743;s:12:\"um-faicon-th\";i:744;s:17:\"um-faicon-th-list\";i:745;s:15:\"um-faicon-check\";i:746;s:15:\"um-faicon-times\";i:747;s:21:\"um-faicon-search-plus\";i:748;s:22:\"um-faicon-search-minus\";i:749;s:19:\"um-faicon-power-off\";i:750;s:16:\"um-faicon-signal\";i:751;s:13:\"um-faicon-cog\";i:752;s:17:\"um-faicon-trash-o\";i:753;s:14:\"um-faicon-home\";i:754;s:16:\"um-faicon-file-o\";i:755;s:17:\"um-faicon-clock-o\";i:756;s:14:\"um-faicon-road\";i:757;s:18:\"um-faicon-download\";i:758;s:29:\"um-faicon-arrow-circle-o-down\";i:759;s:27:\"um-faicon-arrow-circle-o-up\";i:760;s:15:\"um-faicon-inbox\";i:761;s:23:\"um-faicon-play-circle-o\";i:762;s:16:\"um-faicon-repeat\";i:763;s:17:\"um-faicon-refresh\";i:764;s:18:\"um-faicon-list-alt\";i:765;s:14:\"um-faicon-lock\";i:766;s:14:\"um-faicon-flag\";i:767;s:20:\"um-faicon-headphones\";i:768;s:20:\"um-faicon-volume-off\";i:769;s:21:\"um-faicon-volume-down\";i:770;s:19:\"um-faicon-volume-up\";i:771;s:16:\"um-faicon-qrcode\";i:772;s:17:\"um-faicon-barcode\";i:773;s:13:\"um-faicon-tag\";i:774;s:14:\"um-faicon-tags\";i:775;s:14:\"um-faicon-book\";i:776;s:18:\"um-faicon-bookmark\";i:777;s:15:\"um-faicon-print\";i:778;s:16:\"um-faicon-camera\";i:779;s:14:\"um-faicon-font\";i:780;s:14:\"um-faicon-bold\";i:781;s:16:\"um-faicon-italic\";i:782;s:21:\"um-faicon-text-height\";i:783;s:20:\"um-faicon-text-width\";i:784;s:20:\"um-faicon-align-left\";i:785;s:22:\"um-faicon-align-center\";i:786;s:21:\"um-faicon-align-right\";i:787;s:23:\"um-faicon-align-justify\";i:788;s:14:\"um-faicon-list\";i:789;s:17:\"um-faicon-outdent\";i:790;s:16:\"um-faicon-indent\";i:791;s:22:\"um-faicon-video-camera\";i:792;s:19:\"um-faicon-picture-o\";i:793;s:16:\"um-faicon-pencil\";i:794;s:20:\"um-faicon-map-marker\";i:795;s:16:\"um-faicon-adjust\";i:796;s:14:\"um-faicon-tint\";i:797;s:25:\"um-faicon-pencil-square-o\";i:798;s:24:\"um-faicon-share-square-o\";i:799;s:24:\"um-faicon-check-square-o\";i:800;s:16:\"um-faicon-arrows\";i:801;s:23:\"um-faicon-step-backward\";i:802;s:23:\"um-faicon-fast-backward\";i:803;s:18:\"um-faicon-backward\";i:804;s:14:\"um-faicon-play\";i:805;s:15:\"um-faicon-pause\";i:806;s:14:\"um-faicon-stop\";i:807;s:17:\"um-faicon-forward\";i:808;s:22:\"um-faicon-fast-forward\";i:809;s:22:\"um-faicon-step-forward\";i:810;s:15:\"um-faicon-eject\";i:811;s:22:\"um-faicon-chevron-left\";i:812;s:23:\"um-faicon-chevron-right\";i:813;s:21:\"um-faicon-plus-circle\";i:814;s:22:\"um-faicon-minus-circle\";i:815;s:22:\"um-faicon-times-circle\";i:816;s:22:\"um-faicon-check-circle\";i:817;s:25:\"um-faicon-question-circle\";i:818;s:21:\"um-faicon-info-circle\";i:819;s:20:\"um-faicon-crosshairs\";i:820;s:24:\"um-faicon-times-circle-o\";i:821;s:24:\"um-faicon-check-circle-o\";i:822;s:13:\"um-faicon-ban\";i:823;s:20:\"um-faicon-arrow-left\";i:824;s:21:\"um-faicon-arrow-right\";i:825;s:18:\"um-faicon-arrow-up\";i:826;s:20:\"um-faicon-arrow-down\";i:827;s:15:\"um-faicon-share\";i:828;s:16:\"um-faicon-expand\";i:829;s:18:\"um-faicon-compress\";i:830;s:14:\"um-faicon-plus\";i:831;s:15:\"um-faicon-minus\";i:832;s:18:\"um-faicon-asterisk\";i:833;s:28:\"um-faicon-exclamation-circle\";i:834;s:14:\"um-faicon-gift\";i:835;s:14:\"um-faicon-leaf\";i:836;s:14:\"um-faicon-fire\";i:837;s:13:\"um-faicon-eye\";i:838;s:19:\"um-faicon-eye-slash\";i:839;s:30:\"um-faicon-exclamation-triangle\";i:840;s:15:\"um-faicon-plane\";i:841;s:18:\"um-faicon-calendar\";i:842;s:16:\"um-faicon-random\";i:843;s:17:\"um-faicon-comment\";i:844;s:16:\"um-faicon-magnet\";i:845;s:20:\"um-faicon-chevron-up\";i:846;s:22:\"um-faicon-chevron-down\";i:847;s:17:\"um-faicon-retweet\";i:848;s:23:\"um-faicon-shopping-cart\";i:849;s:16:\"um-faicon-folder\";i:850;s:21:\"um-faicon-folder-open\";i:851;s:18:\"um-faicon-arrows-v\";i:852;s:18:\"um-faicon-arrows-h\";i:853;s:19:\"um-faicon-bar-chart\";i:854;s:24:\"um-faicon-twitter-square\";i:855;s:25:\"um-faicon-facebook-square\";i:856;s:22:\"um-faicon-camera-retro\";i:857;s:13:\"um-faicon-key\";i:858;s:14:\"um-faicon-cogs\";i:859;s:18:\"um-faicon-comments\";i:860;s:21:\"um-faicon-thumbs-o-up\";i:861;s:23:\"um-faicon-thumbs-o-down\";i:862;s:19:\"um-faicon-star-half\";i:863;s:17:\"um-faicon-heart-o\";i:864;s:18:\"um-faicon-sign-out\";i:865;s:25:\"um-faicon-linkedin-square\";i:866;s:20:\"um-faicon-thumb-tack\";i:867;s:23:\"um-faicon-external-link\";i:868;s:17:\"um-faicon-sign-in\";i:869;s:16:\"um-faicon-trophy\";i:870;s:23:\"um-faicon-github-square\";i:871;s:16:\"um-faicon-upload\";i:872;s:17:\"um-faicon-lemon-o\";i:873;s:15:\"um-faicon-phone\";i:874;s:18:\"um-faicon-square-o\";i:875;s:20:\"um-faicon-bookmark-o\";i:876;s:22:\"um-faicon-phone-square\";i:877;s:17:\"um-faicon-twitter\";i:878;s:18:\"um-faicon-facebook\";i:879;s:16:\"um-faicon-github\";i:880;s:16:\"um-faicon-unlock\";i:881;s:21:\"um-faicon-credit-card\";i:882;s:13:\"um-faicon-rss\";i:883;s:15:\"um-faicon-hdd-o\";i:884;s:18:\"um-faicon-bullhorn\";i:885;s:14:\"um-faicon-bell\";i:886;s:21:\"um-faicon-certificate\";i:887;s:22:\"um-faicon-hand-o-right\";i:888;s:21:\"um-faicon-hand-o-left\";i:889;s:19:\"um-faicon-hand-o-up\";i:890;s:21:\"um-faicon-hand-o-down\";i:891;s:27:\"um-faicon-arrow-circle-left\";i:892;s:28:\"um-faicon-arrow-circle-right\";i:893;s:25:\"um-faicon-arrow-circle-up\";i:894;s:27:\"um-faicon-arrow-circle-down\";i:895;s:15:\"um-faicon-globe\";i:896;s:16:\"um-faicon-wrench\";i:897;s:15:\"um-faicon-tasks\";i:898;s:16:\"um-faicon-filter\";i:899;s:19:\"um-faicon-briefcase\";i:900;s:20:\"um-faicon-arrows-alt\";i:901;s:15:\"um-faicon-users\";i:902;s:14:\"um-faicon-link\";i:903;s:15:\"um-faicon-cloud\";i:904;s:15:\"um-faicon-flask\";i:905;s:18:\"um-faicon-scissors\";i:906;s:17:\"um-faicon-files-o\";i:907;s:19:\"um-faicon-paperclip\";i:908;s:18:\"um-faicon-floppy-o\";i:909;s:16:\"um-faicon-square\";i:910;s:14:\"um-faicon-bars\";i:911;s:17:\"um-faicon-list-ul\";i:912;s:17:\"um-faicon-list-ol\";i:913;s:23:\"um-faicon-strikethrough\";i:914;s:19:\"um-faicon-underline\";i:915;s:15:\"um-faicon-table\";i:916;s:15:\"um-faicon-magic\";i:917;s:15:\"um-faicon-truck\";i:918;s:19:\"um-faicon-pinterest\";i:919;s:26:\"um-faicon-pinterest-square\";i:920;s:28:\"um-faicon-google-plus-square\";i:921;s:21:\"um-faicon-google-plus\";i:922;s:15:\"um-faicon-money\";i:923;s:20:\"um-faicon-caret-down\";i:924;s:18:\"um-faicon-caret-up\";i:925;s:20:\"um-faicon-caret-left\";i:926;s:21:\"um-faicon-caret-right\";i:927;s:17:\"um-faicon-columns\";i:928;s:14:\"um-faicon-sort\";i:929;s:19:\"um-faicon-sort-desc\";i:930;s:18:\"um-faicon-sort-asc\";i:931;s:18:\"um-faicon-envelope\";i:932;s:18:\"um-faicon-linkedin\";i:933;s:14:\"um-faicon-undo\";i:934;s:15:\"um-faicon-gavel\";i:935;s:20:\"um-faicon-tachometer\";i:936;s:19:\"um-faicon-comment-o\";i:937;s:20:\"um-faicon-comments-o\";i:938;s:14:\"um-faicon-bolt\";i:939;s:17:\"um-faicon-sitemap\";i:940;s:18:\"um-faicon-umbrella\";i:941;s:19:\"um-faicon-clipboard\";i:942;s:21:\"um-faicon-lightbulb-o\";i:943;s:18:\"um-faicon-exchange\";i:944;s:24:\"um-faicon-cloud-download\";i:945;s:22:\"um-faicon-cloud-upload\";i:946;s:17:\"um-faicon-user-md\";i:947;s:21:\"um-faicon-stethoscope\";i:948;s:18:\"um-faicon-suitcase\";i:949;s:16:\"um-faicon-bell-o\";i:950;s:16:\"um-faicon-coffee\";i:951;s:17:\"um-faicon-cutlery\";i:952;s:21:\"um-faicon-file-text-o\";i:953;s:20:\"um-faicon-building-o\";i:954;s:20:\"um-faicon-hospital-o\";i:955;s:19:\"um-faicon-ambulance\";i:956;s:16:\"um-faicon-medkit\";i:957;s:21:\"um-faicon-fighter-jet\";i:958;s:14:\"um-faicon-beer\";i:959;s:18:\"um-faicon-h-square\";i:960;s:21:\"um-faicon-plus-square\";i:961;s:27:\"um-faicon-angle-double-left\";i:962;s:28:\"um-faicon-angle-double-right\";i:963;s:25:\"um-faicon-angle-double-up\";i:964;s:27:\"um-faicon-angle-double-down\";i:965;s:20:\"um-faicon-angle-left\";i:966;s:21:\"um-faicon-angle-right\";i:967;s:18:\"um-faicon-angle-up\";i:968;s:20:\"um-faicon-angle-down\";i:969;s:17:\"um-faicon-desktop\";i:970;s:16:\"um-faicon-laptop\";i:971;s:16:\"um-faicon-tablet\";i:972;s:16:\"um-faicon-mobile\";i:973;s:18:\"um-faicon-circle-o\";i:974;s:20:\"um-faicon-quote-left\";i:975;s:21:\"um-faicon-quote-right\";i:976;s:17:\"um-faicon-spinner\";i:977;s:14:\"um-faicon-spin\";i:978;s:16:\"um-faicon-circle\";i:979;s:15:\"um-faicon-reply\";i:980;s:20:\"um-faicon-github-alt\";i:981;s:18:\"um-faicon-folder-o\";i:982;s:23:\"um-faicon-folder-open-o\";i:983;s:17:\"um-faicon-smile-o\";i:984;s:17:\"um-faicon-frown-o\";i:985;s:15:\"um-faicon-meh-o\";i:986;s:17:\"um-faicon-gamepad\";i:987;s:20:\"um-faicon-keyboard-o\";i:988;s:16:\"um-faicon-flag-o\";i:989;s:24:\"um-faicon-flag-checkered\";i:990;s:18:\"um-faicon-terminal\";i:991;s:14:\"um-faicon-code\";i:992;s:19:\"um-faicon-reply-all\";i:993;s:21:\"um-faicon-star-half-o\";i:994;s:24:\"um-faicon-location-arrow\";i:995;s:14:\"um-faicon-crop\";i:996;s:19:\"um-faicon-code-fork\";i:997;s:22:\"um-faicon-chain-broken\";i:998;s:18:\"um-faicon-question\";i:999;s:14:\"um-faicon-info\";i:1000;s:21:\"um-faicon-exclamation\";i:1001;s:21:\"um-faicon-superscript\";i:1002;s:19:\"um-faicon-subscript\";i:1003;s:16:\"um-faicon-eraser\";i:1004;s:22:\"um-faicon-puzzle-piece\";i:1005;s:20:\"um-faicon-microphone\";i:1006;s:26:\"um-faicon-microphone-slash\";i:1007;s:16:\"um-faicon-shield\";i:1008;s:20:\"um-faicon-calendar-o\";i:1009;s:27:\"um-faicon-fire-extinguisher\";i:1010;s:16:\"um-faicon-rocket\";i:1011;s:16:\"um-faicon-maxcdn\";i:1012;s:29:\"um-faicon-chevron-circle-left\";i:1013;s:30:\"um-faicon-chevron-circle-right\";i:1014;s:27:\"um-faicon-chevron-circle-up\";i:1015;s:29:\"um-faicon-chevron-circle-down\";i:1016;s:15:\"um-faicon-html5\";i:1017;s:14:\"um-faicon-css3\";i:1018;s:16:\"um-faicon-anchor\";i:1019;s:20:\"um-faicon-unlock-alt\";i:1020;s:18:\"um-faicon-bullseye\";i:1021;s:20:\"um-faicon-ellipsis-h\";i:1022;s:20:\"um-faicon-ellipsis-v\";i:1023;s:20:\"um-faicon-rss-square\";i:1024;s:21:\"um-faicon-play-circle\";i:1025;s:16:\"um-faicon-ticket\";i:1026;s:22:\"um-faicon-minus-square\";i:1027;s:24:\"um-faicon-minus-square-o\";i:1028;s:18:\"um-faicon-level-up\";i:1029;s:20:\"um-faicon-level-down\";i:1030;s:22:\"um-faicon-check-square\";i:1031;s:23:\"um-faicon-pencil-square\";i:1032;s:30:\"um-faicon-external-link-square\";i:1033;s:22:\"um-faicon-share-square\";i:1034;s:17:\"um-faicon-compass\";i:1035;s:29:\"um-faicon-caret-square-o-down\";i:1036;s:27:\"um-faicon-caret-square-o-up\";i:1037;s:30:\"um-faicon-caret-square-o-right\";i:1038;s:13:\"um-faicon-eur\";i:1039;s:13:\"um-faicon-gbp\";i:1040;s:13:\"um-faicon-usd\";i:1041;s:13:\"um-faicon-inr\";i:1042;s:13:\"um-faicon-jpy\";i:1043;s:13:\"um-faicon-rub\";i:1044;s:13:\"um-faicon-krw\";i:1045;s:13:\"um-faicon-btc\";i:1046;s:14:\"um-faicon-file\";i:1047;s:19:\"um-faicon-file-text\";i:1048;s:24:\"um-faicon-sort-alpha-asc\";i:1049;s:25:\"um-faicon-sort-alpha-desc\";i:1050;s:25:\"um-faicon-sort-amount-asc\";i:1051;s:26:\"um-faicon-sort-amount-desc\";i:1052;s:26:\"um-faicon-sort-numeric-asc\";i:1053;s:27:\"um-faicon-sort-numeric-desc\";i:1054;s:19:\"um-faicon-thumbs-up\";i:1055;s:21:\"um-faicon-thumbs-down\";i:1056;s:24:\"um-faicon-youtube-square\";i:1057;s:17:\"um-faicon-youtube\";i:1058;s:14:\"um-faicon-xing\";i:1059;s:21:\"um-faicon-xing-square\";i:1060;s:22:\"um-faicon-youtube-play\";i:1061;s:17:\"um-faicon-dropbox\";i:1062;s:24:\"um-faicon-stack-overflow\";i:1063;s:19:\"um-faicon-instagram\";i:1064;s:16:\"um-faicon-flickr\";i:1065;s:13:\"um-faicon-adn\";i:1066;s:19:\"um-faicon-bitbucket\";i:1067;s:26:\"um-faicon-bitbucket-square\";i:1068;s:16:\"um-faicon-tumblr\";i:1069;s:23:\"um-faicon-tumblr-square\";i:1070;s:25:\"um-faicon-long-arrow-down\";i:1071;s:23:\"um-faicon-long-arrow-up\";i:1072;s:25:\"um-faicon-long-arrow-left\";i:1073;s:26:\"um-faicon-long-arrow-right\";i:1074;s:15:\"um-faicon-apple\";i:1075;s:17:\"um-faicon-windows\";i:1076;s:17:\"um-faicon-android\";i:1077;s:15:\"um-faicon-linux\";i:1078;s:18:\"um-faicon-dribbble\";i:1079;s:15:\"um-faicon-skype\";i:1080;s:20:\"um-faicon-foursquare\";i:1081;s:16:\"um-faicon-trello\";i:1082;s:16:\"um-faicon-female\";i:1083;s:14:\"um-faicon-male\";i:1084;s:16:\"um-faicon-gittip\";i:1085;s:15:\"um-faicon-sun-o\";i:1086;s:16:\"um-faicon-moon-o\";i:1087;s:17:\"um-faicon-archive\";i:1088;s:13:\"um-faicon-bug\";i:1089;s:12:\"um-faicon-vk\";i:1090;s:15:\"um-faicon-weibo\";i:1091;s:16:\"um-faicon-renren\";i:1092;s:19:\"um-faicon-pagelines\";i:1093;s:24:\"um-faicon-stack-exchange\";i:1094;s:30:\"um-faicon-arrow-circle-o-right\";i:1095;s:29:\"um-faicon-arrow-circle-o-left\";i:1096;s:29:\"um-faicon-caret-square-o-left\";i:1097;s:22:\"um-faicon-dot-circle-o\";i:1098;s:20:\"um-faicon-wheelchair\";i:1099;s:22:\"um-faicon-vimeo-square\";i:1100;s:13:\"um-faicon-try\";i:1101;s:23:\"um-faicon-plus-square-o\";i:1102;s:23:\"um-faicon-space-shuttle\";i:1103;s:15:\"um-faicon-slack\";i:1104;s:25:\"um-faicon-envelope-square\";i:1105;s:19:\"um-faicon-wordpress\";i:1106;s:16:\"um-faicon-openid\";i:1107;s:20:\"um-faicon-university\";i:1108;s:24:\"um-faicon-graduation-cap\";i:1109;s:15:\"um-faicon-yahoo\";i:1110;s:16:\"um-faicon-google\";i:1111;s:16:\"um-faicon-reddit\";i:1112;s:23:\"um-faicon-reddit-square\";i:1113;s:28:\"um-faicon-stumbleupon-circle\";i:1114;s:21:\"um-faicon-stumbleupon\";i:1115;s:19:\"um-faicon-delicious\";i:1116;s:14:\"um-faicon-digg\";i:1117;s:20:\"um-faicon-pied-piper\";i:1118;s:24:\"um-faicon-pied-piper-alt\";i:1119;s:16:\"um-faicon-drupal\";i:1120;s:16:\"um-faicon-joomla\";i:1121;s:18:\"um-faicon-language\";i:1122;s:13:\"um-faicon-fax\";i:1123;s:18:\"um-faicon-building\";i:1124;s:15:\"um-faicon-child\";i:1125;s:13:\"um-faicon-paw\";i:1126;s:15:\"um-faicon-spoon\";i:1127;s:14:\"um-faicon-cube\";i:1128;s:15:\"um-faicon-cubes\";i:1129;s:17:\"um-faicon-behance\";i:1130;s:24:\"um-faicon-behance-square\";i:1131;s:15:\"um-faicon-steam\";i:1132;s:22:\"um-faicon-steam-square\";i:1133;s:17:\"um-faicon-recycle\";i:1134;s:13:\"um-faicon-car\";i:1135;s:14:\"um-faicon-taxi\";i:1136;s:14:\"um-faicon-tree\";i:1137;s:17:\"um-faicon-spotify\";i:1138;s:20:\"um-faicon-deviantart\";i:1139;s:20:\"um-faicon-soundcloud\";i:1140;s:18:\"um-faicon-database\";i:1141;s:20:\"um-faicon-file-pdf-o\";i:1142;s:21:\"um-faicon-file-word-o\";i:1143;s:22:\"um-faicon-file-excel-o\";i:1144;s:27:\"um-faicon-file-powerpoint-o\";i:1145;s:22:\"um-faicon-file-image-o\";i:1146;s:24:\"um-faicon-file-archive-o\";i:1147;s:22:\"um-faicon-file-audio-o\";i:1148;s:22:\"um-faicon-file-video-o\";i:1149;s:21:\"um-faicon-file-code-o\";i:1150;s:14:\"um-faicon-vine\";i:1151;s:17:\"um-faicon-codepen\";i:1152;s:18:\"um-faicon-jsfiddle\";i:1153;s:19:\"um-faicon-life-ring\";i:1154;s:24:\"um-faicon-circle-o-notch\";i:1155;s:15:\"um-faicon-rebel\";i:1156;s:16:\"um-faicon-empire\";i:1157;s:20:\"um-faicon-git-square\";i:1158;s:13:\"um-faicon-git\";i:1159;s:21:\"um-faicon-hacker-news\";i:1160;s:23:\"um-faicon-tencent-weibo\";i:1161;s:12:\"um-faicon-qq\";i:1162;s:16:\"um-faicon-weixin\";i:1163;s:21:\"um-faicon-paper-plane\";i:1164;s:23:\"um-faicon-paper-plane-o\";i:1165;s:17:\"um-faicon-history\";i:1166;s:21:\"um-faicon-circle-thin\";i:1167;s:16:\"um-faicon-header\";i:1168;s:19:\"um-faicon-paragraph\";i:1169;s:17:\"um-faicon-sliders\";i:1170;s:19:\"um-faicon-share-alt\";i:1171;s:26:\"um-faicon-share-alt-square\";i:1172;s:14:\"um-faicon-bomb\";i:1173;s:18:\"um-faicon-futbol-o\";i:1174;s:13:\"um-faicon-tty\";i:1175;s:20:\"um-faicon-binoculars\";i:1176;s:14:\"um-faicon-plug\";i:1177;s:20:\"um-faicon-slideshare\";i:1178;s:16:\"um-faicon-twitch\";i:1179;s:14:\"um-faicon-yelp\";i:1180;s:21:\"um-faicon-newspaper-o\";i:1181;s:14:\"um-faicon-wifi\";i:1182;s:20:\"um-faicon-calculator\";i:1183;s:16:\"um-faicon-paypal\";i:1184;s:23:\"um-faicon-google-wallet\";i:1185;s:17:\"um-faicon-cc-visa\";i:1186;s:23:\"um-faicon-cc-mastercard\";i:1187;s:21:\"um-faicon-cc-discover\";i:1188;s:17:\"um-faicon-cc-amex\";i:1189;s:19:\"um-faicon-cc-paypal\";i:1190;s:19:\"um-faicon-cc-stripe\";i:1191;s:20:\"um-faicon-bell-slash\";i:1192;s:22:\"um-faicon-bell-slash-o\";i:1193;s:15:\"um-faicon-trash\";i:1194;s:19:\"um-faicon-copyright\";i:1195;s:12:\"um-faicon-at\";i:1196;s:20:\"um-faicon-eyedropper\";i:1197;s:21:\"um-faicon-paint-brush\";i:1198;s:23:\"um-faicon-birthday-cake\";i:1199;s:20:\"um-faicon-area-chart\";i:1200;s:19:\"um-faicon-pie-chart\";i:1201;s:20:\"um-faicon-line-chart\";i:1202;s:16:\"um-faicon-lastfm\";i:1203;s:23:\"um-faicon-lastfm-square\";i:1204;s:20:\"um-faicon-toggle-off\";i:1205;s:19:\"um-faicon-toggle-on\";i:1206;s:17:\"um-faicon-bicycle\";i:1207;s:13:\"um-faicon-bus\";i:1208;s:17:\"um-faicon-ioxhost\";i:1209;s:19:\"um-faicon-angellist\";i:1210;s:12:\"um-faicon-cc\";i:1211;s:13:\"um-faicon-ils\";i:1212;s:18:\"um-faicon-meanpath\";i:1213;s:14:\"um-faicon-spin\";i:1214;s:14:\"um-faicon-spin\";i:1215;s:14:\"um-faicon-spin\";i:1216;s:14:\"um-faicon-spin\";i:1217;s:14:\"um-faicon-spin\";}', 'yes'),
(474, 'WPLANG', '', 'yes'),
(475, 'new_admin_email', 'mustafizur120133@gmail.com', 'yes'),
(480, 'um_hidden_admin_notices', 'a:1:{i:0;s:13:\"opt_in_notice\";}', 'yes'),
(518, 'um_cache_userdata_1', 'a:103:{s:2:\"ID\";i:1;s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$Bj7upUlPeLjOD03bUFxxf9CwHcU/Bt.\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:26:\"mustafizur120133@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2018-09-10 05:04:05\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:202:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:5:\"false\";s:6:\"locale\";s:0:\"\";s:18:\"show_welcome_panel\";s:1:\"1\";s:37:\"wp_dashboard_quick_press_last_post_id\";s:3:\"171\";s:8:\"facebook\";s:38:\" http://www.facebook.com/BappyMustafiz\";s:5:\"skype\";s:36:\" http://www.skype .com/BappyMustafiz\";s:9:\"instagram\";s:40:\" http://www.instagram .com/BappyMustafiz\";s:8:\"linkedin\";s:38:\" http://www.linkedin.com/BappyMustafiz\";s:7:\"twitter\";s:37:\" http://www.twitter.com/BappyMustafiz\";s:14:\"account_status\";s:8:\"approved\";s:35:\"um_user_profile_url_slug_user_login\";s:5:\"admin\";s:24:\"um_account_secure_fields\";s:6:\"a:0:{}\";s:14:\"_um_last_login\";s:10:\"1537255787\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(547, 'um_cache_userdata_4', 'a:76:{s:2:\"ID\";i:4;s:10:\"user_login\";s:4:\"asif\";s:9:\"user_pass\";s:34:\"$P$B8UBl/10cmidADC6FddUgGYNJK/j6G/\";s:13:\"user_nicename\";s:4:\"asif\";s:10:\"user_email\";s:12:\"asif@dev.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2018-09-18 07:28:16\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"Hayder Asif\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:4:\"asif\";s:10:\"first_name\";s:6:\"Hayder\";s:9:\"last_name\";s:4:\"Asif\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:25:\"synced_gravatar_hashed_id\";s:32:\"0cf95b0d6dbb803dac513c095d0056fa\";s:9:\"submitted\";s:297:\"a:9:{s:7:\"form_id\";s:3:\"172\";s:9:\"timestamp\";s:10:\"1537255673\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"25d6dbe910\";s:16:\"_wp_http_referer\";s:22:\"/wp_webgraph/register/\";s:10:\"user_login\";s:4:\"asif\";s:10:\"first_name\";s:6:\"Hayder\";s:9:\"last_name\";s:4:\"Asif\";s:10:\"user_email\";s:12:\"asif@dev.com\";}\";s:7:\"form_id\";s:3:\"172\";s:9:\"timestamp\";s:10:\"1537255673\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"25d6dbe910\";s:16:\"_wp_http_referer\";s:22:\"/wp_webgraph/register/\";s:35:\"um_user_profile_url_slug_user_login\";s:4:\"asif\";s:9:\"full_name\";s:4:\"asif\";s:15:\"reset_pass_hash\";s:40:\"hza3XcdFsfpC6RbtP8Qe67EUM7aEKqI64fB38ySt\";s:14:\"account_status\";s:8:\"approved\";s:14:\"_um_last_login\";s:10:\"1537255875\";s:24:\"um_account_secure_fields\";s:6:\"a:0:{}\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:9:\"is_custom\";s:1:\"0\";s:4:\"name\";s:10:\"Subscriber\";s:8:\"priority\";s:0:\"\";s:18:\"can_access_wpadmin\";s:1:\"1\";s:20:\"can_not_see_adminbar\";s:1:\"1\";s:17:\"can_edit_everyone\";s:1:\"0\";s:14:\"can_edit_roles\";s:0:\"\";s:19:\"can_delete_everyone\";s:1:\"0\";s:16:\"can_delete_roles\";s:0:\"\";s:16:\"can_edit_profile\";s:1:\"1\";s:18:\"can_delete_profile\";s:1:\"1\";s:12:\"can_view_all\";s:1:\"1\";s:14:\"can_view_roles\";a:1:{i:0;s:10:\"subscriber\";}s:24:\"can_make_private_profile\";s:1:\"0\";s:26:\"can_access_private_profile\";s:1:\"0\";s:16:\"default_homepage\";s:1:\"1\";s:17:\"redirect_homepage\";s:0:\"\";s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:16:\"auto_approve_url\";s:0:\"\";s:20:\"login_email_activate\";s:1:\"0\";s:16:\"checkmail_action\";s:12:\"show_message\";s:17:\"checkmail_message\";s:147:\"Thank you for registering. Before you can login we need you to activate your account by clicking the activation link in the email we just sent you.\";s:13:\"checkmail_url\";s:0:\"\";s:18:\"url_email_activate\";s:0:\"\";s:14:\"pending_action\";s:12:\"show_message\";s:15:\"pending_message\";s:170:\"Thank you for applying for membership to our site. We will review your details and send you an email letting you know whether your application has been successful or not.\";s:11:\"pending_url\";s:0:\"\";s:11:\"after_login\";s:16:\"redirect_profile\";s:18:\"login_redirect_url\";s:0:\"\";s:12:\"after_logout\";s:13:\"redirect_home\";s:19:\"logout_redirect_url\";s:0:\"\";s:12:\"after_delete\";s:13:\"redirect_home\";s:19:\"delete_redirect_url\";s:0:\"\";s:11:\"super_admin\";i:0;}', 'no'),
(690, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1537595448;s:7:\"checked\";a:5:{s:9:\"charitize\";s:5:\"1.1.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:8:\"webgraph\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(710, '_site_transient_timeout_theme_roots', '1537597003', 'no'),
(711, '_site_transient_theme_roots', 'a:5:{s:9:\"charitize\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:8:\"webgraph\";s:7:\"/themes\";}', 'no'),
(714, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1537606212', 'no'),
(715, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4506;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2999;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2588;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2449;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1680;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1673;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1459;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1403;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1397;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1334;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1245;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1115;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1073;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1044;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1037;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:924;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:894;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:834;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:816;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:808;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:734;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:704;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:683;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:660;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:659;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:648;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:619;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:617;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:606;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:598;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:553;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:542;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:532;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:519;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:516;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:511;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:501;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:496;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:487;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:481;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:458;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:454;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:446;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:443;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:438;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:420;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:415;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:375;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:366;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:365;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:362;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:361;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:353;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:348;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:348;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:343;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:339;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:308;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:300;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:294;}}', 'no'),
(717, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1537595466;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:65:\"forget-about-shortcode-buttons/forget-about-shortcode-buttons.php\";s:5:\"2.1.1\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"ninja-forms/ninja-forms.php\";s:6:\"3.3.16\";s:35:\"ultimate-member/ultimate-member.php\";s:6:\"2.0.25\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:65:\"forget-about-shortcode-buttons/forget-about-shortcode-buttons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/forget-about-shortcode-buttons\";s:4:\"slug\";s:30:\"forget-about-shortcode-buttons\";s:6:\"plugin\";s:65:\"forget-about-shortcode-buttons/forget-about-shortcode-buttons.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/forget-about-shortcode-buttons/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/forget-about-shortcode-buttons.2.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:81:\"https://s.w.org/plugins/geopattern-icon/forget-about-shortcode-buttons_ffffff.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/forget-about-shortcode-buttons/assets/banner-772x250.png?rev=887655\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.3.16\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.3.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:6:\"2.0.25\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ultimate-member.2.0.25.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=1667029\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=1667029\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=1667029\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=1667029\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(718, 'ninja_forms_oauth_client_secret', 'KekyKOT3heAXeiUoHOu6jM27b2pPpB6n2aDrJ9Cd', 'yes'),
(719, 'ninja_forms_data_is_clean', 'true', 'yes'),
(720, 'ninja_forms_version', '3.3.16', 'yes'),
(721, 'ninja_forms_db_version', '1.1', 'no'),
(722, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(723, 'wp_nf_update_fields_batch_6ac0cfae102892afc7900cb3aa5382b6', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-09-22 05:51:14\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(725, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(726, '_transient_timeout_plugin_slugs', '1537681900', 'no'),
(727, '_transient_plugin_slugs', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:65:\"forget-about-shortcode-buttons/forget-about-shortcode-buttons.php\";i:2;s:9:\"hello.php\";i:3;s:27:\"ninja-forms/ninja-forms.php\";i:4;s:35:\"ultimate-member/ultimate-member.php\";}', 'no'),
(729, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"9/29/2018\";s:3:\"int\";i:7;}}', 'yes'),
(732, 'nf_form_tel_data', '1', 'no'),
(733, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(734, 'ninja_forms_optin_reported', '1', 'yes'),
(736, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(738, 'nf_form_tel_sent', 'true', 'no'),
(760, '_transient_timeout_settings_errors', '1537612957', 'no'),
(761, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"updated\";}}', 'no'),
(812, '_transient_timeout_cs-metabox-transient', '1537610441', 'no'),
(813, '_transient_cs-metabox-transient', 'a:2:{s:3:\"ids\";a:2:{s:20:\"_custom_page_options\";s:0:\"\";s:25:\"_custom_page_side_options\";s:0:\"\";}s:6:\"errors\";a:0:{}}', 'no'),
(833, '_transient_timeout_cs-framework-transient', '1537612937', 'no'),
(834, '_transient_cs-framework-transient', 'a:2:{s:6:\"errors\";a:0:{}s:10:\"section_id\";s:23:\"wroking_process_section\";}', 'no'),
(871, 'um_cached_users_queue', '0', 'no');

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
(3, 1, '_edit_lock', '1536837676:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1537257622:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1537610672:1'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1536563727:1'),
(19, 12, '_menu_item_type', 'post_type'),
(20, 12, '_menu_item_menu_item_parent', '0'),
(21, 12, '_menu_item_object_id', '7'),
(22, 12, '_menu_item_object', 'page'),
(23, 12, '_menu_item_target', ''),
(24, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 12, '_menu_item_xfn', ''),
(26, 12, '_menu_item_url', ''),
(28, 13, '_menu_item_type', 'post_type'),
(29, 13, '_menu_item_menu_item_parent', '0'),
(30, 13, '_menu_item_object_id', '5'),
(31, 13, '_menu_item_object', 'page'),
(32, 13, '_menu_item_target', ''),
(33, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 13, '_menu_item_xfn', ''),
(35, 13, '_menu_item_url', ''),
(46, 16, '_menu_item_type', 'post_type'),
(47, 16, '_menu_item_menu_item_parent', '0'),
(48, 16, '_menu_item_object_id', '9'),
(49, 16, '_menu_item_object', 'page'),
(50, 16, '_menu_item_target', ''),
(51, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 16, '_menu_item_xfn', ''),
(53, 16, '_menu_item_url', ''),
(55, 17, '_menu_item_type', 'post_type'),
(56, 17, '_menu_item_menu_item_parent', '0'),
(57, 17, '_menu_item_object_id', '7'),
(58, 17, '_menu_item_object', 'page'),
(59, 17, '_menu_item_target', ''),
(60, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 17, '_menu_item_xfn', ''),
(62, 17, '_menu_item_url', ''),
(64, 18, '_menu_item_type', 'post_type'),
(65, 18, '_menu_item_menu_item_parent', '0'),
(66, 18, '_menu_item_object_id', '5'),
(67, 18, '_menu_item_object', 'page'),
(68, 18, '_menu_item_target', ''),
(69, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 18, '_menu_item_xfn', ''),
(71, 18, '_menu_item_url', ''),
(82, 20, '_wp_attached_file', '2018/09/v2logo.png'),
(83, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:119;s:6:\"height\";i:18;s:4:\"file\";s:18:\"2018/09/v2logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 21, '_wp_trash_meta_status', 'publish'),
(85, 21, '_wp_trash_meta_time', '1536572477'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1536573588'),
(88, 23, '_wp_attached_file', '2018/09/favicon.ico'),
(89, 24, '_wp_trash_meta_status', 'publish'),
(90, 24, '_wp_trash_meta_time', '1536573637'),
(91, 25, '_edit_lock', '1536574071:1'),
(92, 25, '_wp_trash_meta_status', 'publish'),
(93, 25, '_wp_trash_meta_time', '1536574071'),
(94, 26, '_wp_trash_meta_status', 'publish'),
(95, 26, '_wp_trash_meta_time', '1536574558'),
(96, 27, '_wp_trash_meta_status', 'publish'),
(97, 27, '_wp_trash_meta_time', '1536575738'),
(98, 28, '_wp_trash_meta_status', 'publish'),
(99, 28, '_wp_trash_meta_time', '1536575772'),
(100, 29, '_wp_attached_file', '2018/09/logo.png'),
(101, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:138;s:6:\"height\";i:23;s:4:\"file\";s:16:\"2018/09/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 30, '_wp_trash_meta_status', 'publish'),
(103, 30, '_wp_trash_meta_time', '1536575799'),
(104, 31, '_edit_lock', '1536577180:1'),
(105, 31, '_wp_trash_meta_status', 'publish'),
(106, 31, '_wp_trash_meta_time', '1536577210'),
(107, 32, '_wp_trash_meta_status', 'publish'),
(108, 32, '_wp_trash_meta_time', '1536577513'),
(109, 33, '_wp_trash_meta_status', 'publish'),
(110, 33, '_wp_trash_meta_time', '1536578280'),
(111, 34, '_wp_trash_meta_status', 'publish'),
(112, 34, '_wp_trash_meta_time', '1536578291'),
(113, 35, '_wp_trash_meta_status', 'publish'),
(114, 35, '_wp_trash_meta_time', '1536578819'),
(115, 36, '_wp_trash_meta_status', 'publish'),
(116, 36, '_wp_trash_meta_time', '1536579050'),
(117, 37, '_wp_trash_meta_status', 'publish'),
(118, 37, '_wp_trash_meta_time', '1536579095'),
(119, 38, '_edit_last', '1'),
(122, 38, '_edit_lock', '1536992291:1'),
(123, 40, '_edit_last', '1'),
(126, 40, '_edit_lock', '1536993799:1'),
(129, 43, '_wp_trash_meta_status', 'publish'),
(130, 43, '_wp_trash_meta_time', '1536653190'),
(131, 44, '_wp_trash_meta_status', 'publish'),
(132, 44, '_wp_trash_meta_time', '1536740660'),
(133, 45, '_wp_trash_meta_status', 'publish'),
(134, 45, '_wp_trash_meta_time', '1536741332'),
(135, 46, '_wp_trash_meta_status', 'publish'),
(136, 46, '_wp_trash_meta_time', '1536742061'),
(137, 47, '_wp_trash_meta_status', 'publish'),
(138, 47, '_wp_trash_meta_time', '1536742178'),
(139, 48, '_wp_trash_meta_status', 'publish'),
(140, 48, '_wp_trash_meta_time', '1536742225'),
(141, 49, '_wp_trash_meta_status', 'publish'),
(142, 49, '_wp_trash_meta_time', '1536742284'),
(143, 50, '_wp_trash_meta_status', 'publish'),
(144, 50, '_wp_trash_meta_time', '1536742359'),
(145, 51, '_wp_trash_meta_status', 'publish'),
(146, 51, '_wp_trash_meta_time', '1536742910'),
(147, 52, '_wp_trash_meta_status', 'publish'),
(148, 52, '_wp_trash_meta_time', '1536742937'),
(149, 53, '_wp_trash_meta_status', 'publish'),
(150, 53, '_wp_trash_meta_time', '1536743048'),
(151, 54, '_wp_trash_meta_status', 'publish'),
(152, 54, '_wp_trash_meta_time', '1536743166'),
(153, 55, '_wp_trash_meta_status', 'publish'),
(154, 55, '_wp_trash_meta_time', '1536743318'),
(155, 56, '_wp_trash_meta_status', 'publish'),
(156, 56, '_wp_trash_meta_time', '1536743337'),
(157, 57, '_wp_trash_meta_status', 'publish'),
(158, 57, '_wp_trash_meta_time', '1536743348'),
(159, 58, '_wp_trash_meta_status', 'publish'),
(160, 58, '_wp_trash_meta_time', '1536743426'),
(165, 61, '_wp_trash_meta_status', 'publish'),
(166, 61, '_wp_trash_meta_time', '1536743524'),
(167, 62, '_edit_lock', '1536743581:1'),
(168, 62, '_wp_trash_meta_status', 'publish'),
(169, 62, '_wp_trash_meta_time', '1536743602'),
(170, 63, '_wp_trash_meta_status', 'publish'),
(171, 63, '_wp_trash_meta_time', '1536743658'),
(172, 64, '_wp_trash_meta_status', 'publish'),
(173, 64, '_wp_trash_meta_time', '1536743677'),
(174, 65, '_wp_trash_meta_status', 'publish'),
(175, 65, '_wp_trash_meta_time', '1536743693'),
(176, 66, '_wp_trash_meta_status', 'publish'),
(177, 66, '_wp_trash_meta_time', '1536743700'),
(178, 67, '_wp_trash_meta_status', 'publish'),
(179, 67, '_wp_trash_meta_time', '1536743737'),
(180, 68, '_wp_trash_meta_status', 'publish'),
(181, 68, '_wp_trash_meta_time', '1536743988'),
(182, 69, '_wp_trash_meta_status', 'publish'),
(183, 69, '_wp_trash_meta_time', '1536744012'),
(184, 70, '_wp_trash_meta_status', 'publish'),
(185, 70, '_wp_trash_meta_time', '1536744040'),
(186, 71, '_wp_trash_meta_status', 'publish'),
(187, 71, '_wp_trash_meta_time', '1536744336'),
(188, 72, '_wp_trash_meta_status', 'publish'),
(189, 72, '_wp_trash_meta_time', '1536744348'),
(190, 73, '_wp_trash_meta_status', 'publish'),
(191, 73, '_wp_trash_meta_time', '1536745253'),
(192, 74, '_wp_trash_meta_status', 'publish'),
(193, 74, '_wp_trash_meta_time', '1536745264'),
(194, 75, '_wp_trash_meta_status', 'publish'),
(195, 75, '_wp_trash_meta_time', '1536745792'),
(196, 76, '_wp_trash_meta_status', 'publish'),
(197, 76, '_wp_trash_meta_time', '1536745803'),
(198, 77, '_wp_trash_meta_status', 'publish'),
(199, 77, '_wp_trash_meta_time', '1536749233'),
(200, 78, '_wp_trash_meta_status', 'publish'),
(201, 78, '_wp_trash_meta_time', '1536749277'),
(202, 79, '_wp_trash_meta_status', 'publish'),
(203, 79, '_wp_trash_meta_time', '1536749393'),
(204, 80, '_edit_last', '1'),
(205, 80, '_edit_lock', '1536823627:1'),
(206, 80, '_wp_page_template', 'default'),
(207, 82, '_menu_item_type', 'post_type'),
(208, 82, '_menu_item_menu_item_parent', '0'),
(209, 82, '_menu_item_object_id', '80'),
(210, 82, '_menu_item_object', 'page'),
(211, 82, '_menu_item_target', ''),
(212, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 82, '_menu_item_xfn', ''),
(214, 82, '_menu_item_url', ''),
(216, 83, '_menu_item_type', 'post_type'),
(217, 83, '_menu_item_menu_item_parent', '239'),
(218, 83, '_menu_item_object_id', '80'),
(219, 83, '_menu_item_object', 'page'),
(220, 83, '_menu_item_target', ''),
(221, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 83, '_menu_item_xfn', ''),
(223, 83, '_menu_item_url', ''),
(225, 2, '_wp_trash_meta_status', 'publish'),
(226, 2, '_wp_trash_meta_time', '1536823864'),
(227, 2, '_wp_desired_post_slug', 'sample-page'),
(228, 9, '_wp_trash_meta_status', 'publish'),
(229, 9, '_wp_trash_meta_time', '1536823867'),
(230, 9, '_wp_desired_post_slug', 'pages'),
(231, 3, '_wp_trash_meta_status', 'draft'),
(232, 3, '_wp_trash_meta_time', '1536823871'),
(233, 3, '_wp_desired_post_slug', 'privacy-policy'),
(234, 86, '_wp_attached_file', '2018/09/blog_title_01.png'),
(235, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:311;s:6:\"height\";i:181;s:4:\"file\";s:25:\"2018/09/blog_title_01.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog_title_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog_title_01-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"blog_title_01-200x181.png\";s:5:\"width\";i:200;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:25:\"blog_title_01-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 88, '_wp_attached_file', '2018/09/student_02.png'),
(240, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:158;s:4:\"file\";s:22:\"2018/09/student_02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"student_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 40, '_wp_old_slug', 'test-post-two__trashed'),
(270, 38, '_wp_old_slug', 'test-post-1__trashed'),
(273, 1, '_wp_old_slug', 'hello-world__trashed'),
(282, 96, '_wp_attached_file', '2018/09/how_we_work_image.png'),
(283, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:439;s:4:\"file\";s:29:\"2018/09/how_we_work_image.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"how_we_work_image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"how_we_work_image-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"how_we_work_image-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"custom-image\";a:4:{s:4:\"file\";s:29:\"how_we_work_image-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:27:\"how_we_work_image-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 1, '_edit_last', '1'),
(294, 98, '_wp_attached_file', '2018/09/our_courses_image_01.png'),
(295, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:219;s:4:\"file\";s:32:\"2018/09/our_courses_image_01.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"our_courses_image_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"our_courses_image_01-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"our_courses_image_01-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:32:\"our_courses_image_01-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:30:\"our_courses_image_01-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 40, '_thumbnail_id', '98'),
(299, 99, '_wp_attached_file', '2018/09/blog_title_01-1.png'),
(300, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:311;s:6:\"height\";i:181;s:4:\"file\";s:27:\"2018/09/blog_title_01-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"blog_title_01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"blog_title_01-1-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"blog_title_01-1-200x181.png\";s:5:\"width\";i:200;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"blog_title_01-1-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 38, '_thumbnail_id', '99'),
(304, 100, '_wp_attached_file', '2018/09/photo_gallery_02.png'),
(305, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:78;s:4:\"file\";s:28:\"2018/09/photo_gallery_02.png\";s:5:\"sizes\";a:1:{s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"photo_gallery_02-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 1, '_thumbnail_id', '102'),
(311, 102, '_wp_attached_file', '2018/09/our_courses_image_02.png'),
(312, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:219;s:4:\"file\";s:32:\"2018/09/our_courses_image_02.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"our_courses_image_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"our_courses_image_02-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"our_courses_image_02-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:32:\"our_courses_image_02-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:30:\"our_courses_image_02-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 104, '_edit_last', '1'),
(322, 104, '_edit_lock', '1537268380:1'),
(323, 106, '_edit_last', '1'),
(324, 106, '_edit_lock', '1537166658:1'),
(325, 108, '_edit_last', '1'),
(326, 108, '_edit_lock', '1536995562:1'),
(327, 108, '_wp_trash_meta_status', 'publish'),
(328, 108, '_wp_trash_meta_time', '1536995714'),
(329, 108, '_wp_desired_post_slug', 'blog-2'),
(330, 110, '_edit_last', '1'),
(331, 110, '_edit_lock', '1536995590:1'),
(332, 110, '_wp_trash_meta_status', 'publish'),
(333, 110, '_wp_trash_meta_time', '1536995744'),
(334, 110, '_wp_desired_post_slug', 'portfolio-2'),
(335, 112, '_edit_last', '1'),
(336, 112, '_edit_lock', '1537269942:1'),
(337, 114, '_edit_last', '1'),
(338, 114, '_edit_lock', '1537255807:1'),
(339, 116, '_edit_last', '1'),
(340, 116, '_edit_lock', '1537596874:1'),
(341, 118, '_menu_item_type', 'post_type'),
(342, 118, '_menu_item_menu_item_parent', '239'),
(343, 118, '_menu_item_object_id', '116'),
(344, 118, '_menu_item_object', 'page'),
(345, 118, '_menu_item_target', ''),
(346, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(347, 118, '_menu_item_xfn', ''),
(348, 118, '_menu_item_url', ''),
(359, 120, '_menu_item_type', 'post_type'),
(360, 120, '_menu_item_menu_item_parent', '0'),
(361, 120, '_menu_item_object_id', '112'),
(362, 120, '_menu_item_object', 'page'),
(363, 120, '_menu_item_target', ''),
(364, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 120, '_menu_item_xfn', ''),
(366, 120, '_menu_item_url', ''),
(386, 5, '_wp_page_template', 'home-template.php'),
(387, 124, '_edit_last', '1'),
(388, 124, '_edit_lock', '1537078142:1'),
(391, 124, '_thumbnail_id', '98'),
(394, 126, '_wp_attached_file', '2018/09/basic-computer-courses.jpg'),
(395, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:400;s:4:\"file\";s:34:\"2018/09/basic-computer-courses.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"basic-computer-courses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"basic-computer-courses-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"basic-computer-courses-768x334.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"basic-computer-courses-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:34:\"basic-computer-courses-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:32:\"basic-computer-courses-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(396, 127, '_wp_attached_file', '2018/09/images.jpg'),
(397, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:140;s:4:\"file\";s:18:\"2018/09/images.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x140.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"images-300x117.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:18:\"images-311x140.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:16:\"images-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 128, '_edit_last', '1'),
(401, 128, '_edit_lock', '1537078900:1'),
(402, 128, '_thumbnail_id', '127'),
(405, 130, '_edit_last', '1'),
(406, 130, '_edit_lock', '1537613307:1'),
(407, 131, '_wp_attached_file', '2018/09/slider2.jpg'),
(408, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2018/09/slider2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:19:\"slider2-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:17:\"slider2-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 130, '_thumbnail_id', '237'),
(410, 130, 'meta-subtitle-slider', 'Training for web development'),
(411, 130, 'meta-url-slider', ''),
(412, 132, '_edit_last', '1'),
(413, 132, '_edit_lock', '1537613236:1'),
(414, 133, '_wp_attached_file', '2018/09/gender-slider2.png'),
(415, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2018/09/gender-slider2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"gender-slider2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gender-slider2-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"gender-slider2-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"gender-slider2-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"gender-slider2-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:26:\"gender-slider2-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:24:\"gender-slider2-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 132, '_thumbnail_id', '236'),
(417, 132, 'meta-subtitle-slider', 'Training for web design'),
(418, 132, 'meta-url-slider', ''),
(419, 134, '_edit_last', '1'),
(420, 134, '_edit_lock', '1537614512:1'),
(421, 135, '_wp_attached_file', '2018/09/slider1-1.jpg'),
(422, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/09/slider1-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider1-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider1-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider1-1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"slider1-1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:21:\"slider1-1-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:19:\"slider1-1-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 134, '_thumbnail_id', '235'),
(424, 134, 'meta-subtitle-slider', 'Learn Anything To Anyone From Anywhere'),
(425, 134, 'meta-url-slider', ''),
(426, 136, '_edit_last', '1'),
(427, 136, '_edit_lock', '1537157638:1'),
(428, 137, '_wp_attached_file', '2018/09/Partners-1900x500.jpg'),
(429, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2018/09/Partners-1900x500.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Partners-1900x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Partners-1900x500-300x79.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:79;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Partners-1900x500-768x202.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Partners-1900x500-1024x269.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"Partners-1900x500-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:29:\"Partners-1900x500-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:27:\"Partners-1900x500-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 136, '_thumbnail_id', '137'),
(431, 136, 'meta-subtitle-slider', 'Consultant training slider description'),
(432, 136, 'meta-url-slider', ''),
(436, 140, '_edit_last', '1'),
(437, 140, '_edit_lock', '1537164671:1'),
(438, 141, '_wp_attached_file', '2018/09/node-js-736399_960_720-400x200.png'),
(439, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:200;s:4:\"file\";s:42:\"2018/09/node-js-736399_960_720-400x200.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:42:\"node-js-736399_960_720-400x200-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:40:\"node-js-736399_960_720-400x200-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 140, '_thumbnail_id', '143'),
(443, 140, '_custom_post_options', 'a:4:{s:14:\"section_4_text\";s:0:\"\";s:18:\"section_4_textarea\";s:0:\"\";s:16:\"section_4_upload\";s:0:\"\";s:18:\"section_4_switcher\";b:0;}'),
(444, 143, '_wp_attached_file', '2018/09/gender-slider2-1.png'),
(445, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:28:\"2018/09/gender-slider2-1.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"gender-slider2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"gender-slider2-1-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"gender-slider2-1-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"gender-slider2-1-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"gender-slider2-1-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:28:\"gender-slider2-1-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"gender-slider2-1-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"gender-slider2-1-1600x249.png\";s:5:\"width\";i:1600;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:28:\"gender-slider2-1-710x400.png\";s:5:\"width\";i:710;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 144, '_wp_attached_file', '2018/09/Banner-About-us.jpg'),
(449, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1946;s:6:\"height\";i:569;s:4:\"file\";s:27:\"2018/09/Banner-About-us.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Banner-About-us-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Banner-About-us-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Banner-About-us-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Banner-About-us-1024x299.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:299;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"Banner-About-us-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:27:\"Banner-About-us-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:28:\"Banner-About-us-1920x569.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"Banner-About-us-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:28:\"Banner-About-us-1920x249.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:27:\"Banner-About-us-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 7, '_thumbnail_id', '144'),
(451, 7, '_wp_page_template', 'about-us-template.php'),
(452, 7, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(453, 7, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(454, 145, '_wp_attached_file', '2018/09/Cloud-Services-Banner.jpg'),
(455, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1386;s:6:\"height\";i:301;s:4:\"file\";s:33:\"2018/09/Cloud-Services-Banner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Cloud-Services-Banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Cloud-Services-Banner-300x65.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Cloud-Services-Banner-768x167.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Cloud-Services-Banner-1024x222.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"Cloud-Services-Banner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:33:\"Cloud-Services-Banner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:31:\"Cloud-Services-Banner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:34:\"Cloud-Services-Banner-1386x249.jpg\";s:5:\"width\";i:1386;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:33:\"Cloud-Services-Banner-710x301.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(456, 104, '_thumbnail_id', '153'),
(457, 104, '_wp_page_template', 'default'),
(458, 104, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(459, 104, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(460, 146, '_wp_attached_file', '2018/09/ClientPedia-online-business.jpg'),
(461, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:600;s:4:\"file\";s:39:\"2018/09/ClientPedia-online-business.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"ClientPedia-online-business-1024x384.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:37:\"ClientPedia-online-business-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:40:\"ClientPedia-online-business-1600x249.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:39:\"ClientPedia-online-business-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:21:\"pressmaster - Fotolia\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1391671601\";s:9:\"copyright\";s:21:\"pressmaster - Fotolia\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:19:\"Concluding contract\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:13:\"www.daimg.com\";}}}'),
(462, 114, '_thumbnail_id', '154'),
(463, 114, '_wp_page_template', 'default'),
(464, 114, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(465, 114, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(466, 147, '_wp_attached_file', '2018/09/contact-banner.jpg'),
(467, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1599;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2018/09/contact-banner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"contact-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"contact-banner-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"contact-banner-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"contact-banner-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"contact-banner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:26:\"contact-banner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:24:\"contact-banner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:27:\"contact-banner-1599x249.jpg\";s:5:\"width\";i:1599;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:26:\"contact-banner-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(468, 116, '_thumbnail_id', '156'),
(469, 116, '_wp_page_template', 'default'),
(470, 116, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(471, 116, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(472, 148, '_wp_attached_file', '2018/09/portfolio-banner.jpg'),
(473, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1580;s:6:\"height\";i:320;s:4:\"file\";s:28:\"2018/09/portfolio-banner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"portfolio-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"portfolio-banner-300x61.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"portfolio-banner-768x156.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"portfolio-banner-1024x207.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"portfolio-banner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:28:\"portfolio-banner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"portfolio-banner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"portfolio-banner-1580x249.jpg\";s:5:\"width\";i:1580;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:28:\"portfolio-banner-710x320.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 106, '_thumbnail_id', '148'),
(475, 106, '_wp_page_template', 'default'),
(476, 106, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(477, 106, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(478, 149, '_wp_attached_file', '2018/09/Training-centre-slider-1024x320.png'),
(479, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:320;s:4:\"file\";s:43:\"2018/09/Training-centre-slider-1024x320.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Training-centre-slider-1024x320-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Training-centre-slider-1024x320-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"Training-centre-slider-1024x320-768x240.png\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Training-centre-slider-1024x320-1024x320.png\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:43:\"Training-centre-slider-1024x320-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:43:\"Training-centre-slider-1024x320-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:41:\"Training-centre-slider-1024x320-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:44:\"Training-centre-slider-1024x320-1024x249.png\";s:5:\"width\";i:1024;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:43:\"Training-centre-slider-1024x320-710x320.png\";s:5:\"width\";i:710;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(480, 150, '_wp_attached_file', '2018/09/download.jpg'),
(481, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:393;s:6:\"height\";i:128;s:4:\"file\";s:20:\"2018/09/download.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x128.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"download-300x98.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:98;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-200x128.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:20:\"download-311x128.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:18:\"download-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(482, 112, '_thumbnail_id', '151'),
(483, 112, '_wp_page_template', 'testimonial-page.php');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(484, 112, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(485, 112, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(486, 151, '_wp_attached_file', '2018/09/testimonial-banner.jpg'),
(487, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1199;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2018/09/testimonial-banner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"testimonial-banner-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:28:\"testimonial-banner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:31:\"testimonial-banner-1199x249.jpg\";s:5:\"width\";i:1199;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:30:\"testimonial-banner-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 152, '_wp_attached_file', '2018/09/banner-support-services1.jpg'),
(489, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2018/09/banner-support-services1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"banner-support-services1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"banner-support-services1-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"banner-support-services1-768x162.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"banner-support-services1-1024x216.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"banner-support-services1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:36:\"banner-support-services1-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:34:\"banner-support-services1-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:37:\"banner-support-services1-1900x249.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:36:\"banner-support-services1-710x400.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(490, 153, '_wp_attached_file', '2018/09/service-banner.jpg'),
(491, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:542;s:4:\"file\";s:26:\"2018/09/service-banner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"service-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"service-banner-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"service-banner-768x219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"service-banner-1024x292.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"service-banner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:26:\"service-banner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:24:\"service-banner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:27:\"service-banner-1900x249.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:26:\"service-banner-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(492, 154, '_wp_attached_file', '2018/09/banner_recommend-a01a5ec3.jpg'),
(493, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:976;s:6:\"height\";i:230;s:4:\"file\";s:37:\"2018/09/banner_recommend-a01a5ec3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"banner_recommend-a01a5ec3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"banner_recommend-a01a5ec3-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"banner_recommend-a01a5ec3-768x181.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:37:\"banner_recommend-a01a5ec3-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:37:\"banner_recommend-a01a5ec3-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:35:\"banner_recommend-a01a5ec3-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:37:\"banner_recommend-a01a5ec3-710x230.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(494, 155, '_wp_attached_file', '2018/09/contactbanner.jpg'),
(495, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2018/09/contactbanner.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"contactbanner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"contactbanner-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"contactbanner-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"contactbanner-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"contactbanner-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:25:\"contactbanner-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:23:\"contactbanner-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:26:\"contactbanner-1250x249.jpg\";s:5:\"width\";i:1250;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:25:\"contactbanner-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(496, 156, '_wp_attached_file', '2018/09/contact-banner-1.jpg'),
(497, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1680;s:6:\"height\";i:359;s:4:\"file\";s:28:\"2018/09/contact-banner-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"contact-banner-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"contact-banner-1-300x64.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"contact-banner-1-768x164.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"contact-banner-1-1024x219.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"contact-banner-1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:28:\"contact-banner-1-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"contact-banner-1-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"contact-banner-1-1680x249.jpg\";s:5:\"width\";i:1680;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:28:\"contact-banner-1-710x359.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(498, 157, '_wp_attached_file', '2018/09/slider_webdesign1.jpg'),
(499, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:250;s:4:\"file\";s:29:\"2018/09/slider_webdesign1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"slider_webdesign1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"slider_webdesign1-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"slider_webdesign1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:29:\"slider_webdesign1-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:27:\"slider_webdesign1-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"slider_webdesign1-650x249.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(500, 158, '_wp_attached_file', '2018/09/how_we_work_image-1.png'),
(501, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:439;s:4:\"file\";s:31:\"2018/09/how_we_work_image-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:29:\"how_we_work_image-1-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-570x249.png\";s:5:\"width\";i:570;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:31:\"how_we_work_image-1-570x413.png\";s:5:\"width\";i:570;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 159, '_wp_attached_file', '2018/09/accountabillity_icon.png'),
(503, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:31;s:6:\"height\";i:38;s:4:\"file\";s:32:\"2018/09/accountabillity_icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(504, 160, '_wp_attached_file', '2018/09/expetize_icon.png'),
(505, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:30;s:4:\"file\";s:25:\"2018/09/expetize_icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(506, 161, '_wp_attached_file', '2018/09/speed_icon.png'),
(507, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:34;s:6:\"height\";i:35;s:4:\"file\";s:22:\"2018/09/speed_icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(508, 162, '_wp_attached_file', '2018/09/john_doe_image.png'),
(509, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:417;s:4:\"file\";s:26:\"2018/09/john_doe_image.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"john_doe_image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"john_doe_image-266x300.png\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"john_doe_image-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:26:\"john_doe_image-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:24:\"john_doe_image-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:26:\"john_doe_image-370x249.png\";s:5:\"width\";i:370;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:26:\"john_doe_image-370x413.png\";s:5:\"width\";i:370;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(510, 163, '_wp_attached_file', '2018/09/student_01.png'),
(511, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:158;s:4:\"file\";s:22:\"2018/09/student_01.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"student_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"student_01-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(512, 164, '_wp_attached_file', '2018/09/student_02-1.png'),
(513, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:158;s:4:\"file\";s:24:\"2018/09/student_02-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"student_02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:22:\"student_02-1-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(514, 165, '_wp_attached_file', '2018/09/student_03.png'),
(515, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:158;s:4:\"file\";s:22:\"2018/09/student_03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"student_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"student_03-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 166, '_edit_last', '1'),
(517, 166, '_edit_lock', '1537254047:1'),
(518, 167, '_wp_attached_file', '2018/09/banner-register.jpg'),
(519, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:902;s:6:\"height\";i:187;s:4:\"file\";s:27:\"2018/09/banner-register.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-register-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-register-300x62.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"banner-register-768x159.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-register-200x187.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:27:\"banner-register-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"banner-register-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:27:\"banner-register-710x187.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(520, 166, '_thumbnail_id', '170'),
(521, 166, '_wp_page_template', 'registration-template.php'),
(522, 166, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(523, 166, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(533, 170, '_wp_attached_file', '2018/09/O-tix_LandingPage_Banner_Registration.jpg'),
(534, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:49:\"2018/09/O-tix_LandingPage_Banner_Registration.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"O-tix_LandingPage_Banner_Registration-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"O-tix_LandingPage_Banner_Registration-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"O-tix_LandingPage_Banner_Registration-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"O-tix_LandingPage_Banner_Registration-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:49:\"O-tix_LandingPage_Banner_Registration-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:49:\"O-tix_LandingPage_Banner_Registration-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:50:\"O-tix_LandingPage_Banner_Registration-1920x600.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:47:\"O-tix_LandingPage_Banner_Registration-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:50:\"O-tix_LandingPage_Banner_Registration-1920x249.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:49:\"O-tix_LandingPage_Banner_Registration-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(535, 172, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(536, 172, '_um_mode', 'register'),
(537, 172, '_um_core', 'register'),
(538, 172, '_um_register_use_custom_settings', '0'),
(539, 173, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(540, 173, '_um_mode', 'login'),
(541, 173, '_um_core', 'login'),
(542, 173, '_um_login_use_custom_settings', '0'),
(543, 174, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(544, 174, '_um_mode', 'profile'),
(545, 174, '_um_core', 'profile'),
(546, 174, '_um_profile_use_custom_settings', '0'),
(547, 175, '_um_template', 'members'),
(548, 175, '_um_mode', 'directory'),
(549, 175, '_um_has_profile_photo', '0'),
(550, 175, '_um_has_cover_photo', '0'),
(551, 175, '_um_show_social', '0'),
(552, 175, '_um_show_userinfo', '0'),
(553, 175, '_um_show_tagline', '0'),
(554, 175, '_um_search', '0'),
(555, 175, '_um_userinfo_animate', '1'),
(556, 175, '_um_sortby', 'user_registered_desc'),
(557, 175, '_um_profile_photo', '1'),
(558, 175, '_um_cover_photos', '1'),
(559, 175, '_um_show_name', '1'),
(560, 175, '_um_directory_header', '{total_users} Members'),
(561, 175, '_um_directory_header_single', '{total_users} Member'),
(562, 175, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(563, 175, '_um_profiles_per_page', '12'),
(564, 175, '_um_profiles_per_page_mobile', '6'),
(565, 175, '_um_core', 'members'),
(568, 176, '_um_core', 'user'),
(571, 178, '_um_core', 'login'),
(574, 180, '_um_core', 'register'),
(577, 182, '_um_core', 'members'),
(580, 184, '_um_core', 'logout'),
(583, 186, '_um_core', 'account'),
(586, 188, '_um_core', 'password-reset'),
(587, 180, '_edit_lock', '1537254901:1'),
(588, 178, '_edit_lock', '1537254867:1'),
(589, 190, '_menu_item_type', 'custom'),
(590, 190, '_menu_item_menu_item_parent', '0'),
(591, 190, '_menu_item_object_id', '190'),
(592, 190, '_menu_item_object', 'custom'),
(593, 190, '_menu_item_target', ''),
(594, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(595, 190, '_menu_item_xfn', ''),
(596, 190, '_menu_item_url', '#'),
(607, 192, '_menu_item_type', 'post_type'),
(608, 192, '_menu_item_menu_item_parent', '190'),
(609, 192, '_menu_item_object_id', '178'),
(610, 192, '_menu_item_object', 'page'),
(611, 192, '_menu_item_target', ''),
(612, 192, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 192, '_menu_item_xfn', ''),
(614, 192, '_menu_item_url', ''),
(616, 193, '_menu_item_type', 'post_type'),
(617, 193, '_menu_item_menu_item_parent', '190'),
(618, 193, '_menu_item_object_id', '184'),
(619, 193, '_menu_item_object', 'page'),
(620, 193, '_menu_item_target', ''),
(621, 193, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 193, '_menu_item_xfn', ''),
(623, 193, '_menu_item_url', ''),
(625, 194, '_menu_item_type', 'post_type'),
(626, 194, '_menu_item_menu_item_parent', '190'),
(627, 194, '_menu_item_object_id', '180'),
(628, 194, '_menu_item_object', 'page'),
(629, 194, '_menu_item_target', ''),
(630, 194, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(631, 194, '_menu_item_xfn', ''),
(632, 194, '_menu_item_url', ''),
(634, 192, 'menu-item-um_nav_public', '1'),
(636, 193, 'menu-item-um_nav_public', '2'),
(637, 194, 'menu-item-um_nav_public', '1'),
(638, 178, '_edit_last', '1'),
(639, 178, '_thumbnail_id', '170'),
(640, 178, '_wp_page_template', 'default'),
(641, 178, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(642, 178, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(643, 178, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(644, 184, '_edit_lock', '1537254884:1'),
(645, 184, '_edit_last', '1'),
(646, 184, '_thumbnail_id', '170'),
(647, 184, '_wp_page_template', 'default'),
(648, 184, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(649, 184, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(650, 184, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(651, 180, '_edit_last', '1'),
(652, 180, '_thumbnail_id', '170'),
(653, 180, '_wp_page_template', 'default'),
(654, 180, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(655, 180, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(656, 180, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(657, 186, '_edit_lock', '1537255061:1'),
(658, 186, '_edit_last', '1'),
(659, 186, '_thumbnail_id', '170'),
(660, 186, '_wp_page_template', 'default'),
(661, 186, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(662, 186, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(663, 186, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(664, 182, '_edit_lock', '1537255832:1'),
(665, 182, '_edit_last', '1'),
(666, 182, '_thumbnail_id', '144'),
(667, 182, '_wp_page_template', 'default'),
(668, 182, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(669, 182, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(670, 182, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(671, 188, '_edit_lock', '1537255864:1'),
(672, 188, '_edit_last', '1'),
(673, 188, '_thumbnail_id', '150'),
(674, 188, '_wp_page_template', 'default'),
(675, 188, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(676, 188, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(677, 188, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(678, 176, '_edit_lock', '1537255976:1'),
(679, 176, '_edit_last', '1'),
(680, 176, '_thumbnail_id', '143'),
(681, 176, '_wp_page_template', 'default'),
(682, 176, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(683, 176, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(684, 176, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(685, 7, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(686, 5, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(687, 5, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(688, 5, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(689, 104, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(690, 207, '_wp_attached_file', '2018/09/single-course-1.png'),
(691, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:135;s:4:\"file\";s:27:\"2018/09/single-course-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-1-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-1-200x135.png\";s:5:\"width\";i:200;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"single-course-1-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(692, 208, '_wp_attached_file', '2018/09/single-course-2.png'),
(693, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:135;s:4:\"file\";s:27:\"2018/09/single-course-2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-2-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-2-200x135.png\";s:5:\"width\";i:200;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"single-course-2-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 209, '_wp_attached_file', '2018/09/single-course-3.png'),
(695, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:135;s:4:\"file\";s:27:\"2018/09/single-course-3.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-3-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-3-200x135.png\";s:5:\"width\";i:200;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"single-course-3-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(696, 104, '_wp_trash_meta_status', 'publish'),
(697, 104, '_wp_trash_meta_time', '1537268535'),
(698, 104, '_wp_desired_post_slug', 'services'),
(699, 106, '_wp_trash_meta_status', 'publish'),
(700, 106, '_wp_trash_meta_time', '1537268568'),
(701, 106, '_wp_desired_post_slug', 'portfolio'),
(702, 210, '_edit_lock', '1537442445:1'),
(703, 210, '_edit_last', '1'),
(704, 210, '_thumbnail_id', '148'),
(705, 210, '_wp_page_template', 'courses-template.php'),
(706, 210, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(707, 210, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(708, 210, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(709, 212, '_menu_item_type', 'post_type'),
(710, 212, '_menu_item_menu_item_parent', '0'),
(711, 212, '_menu_item_object_id', '210'),
(712, 212, '_menu_item_object', 'page'),
(713, 212, '_menu_item_target', ''),
(714, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(715, 212, '_menu_item_xfn', ''),
(716, 212, '_menu_item_url', ''),
(718, 112, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(719, 114, '_wp_trash_meta_status', 'publish'),
(720, 114, '_wp_trash_meta_time', '1537270091'),
(721, 114, '_wp_desired_post_slug', 'client'),
(722, 214, '_wp_attached_file', '2018/09/single-course-4.png'),
(723, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:135;s:4:\"file\";s:27:\"2018/09/single-course-4.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-4-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"single-course-4-200x135.png\";s:5:\"width\";i:200;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:25:\"single-course-4-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 116, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(725, 219, '_edit_lock', '1537600199:1'),
(726, 219, '_edit_last', '1'),
(727, 219, '_wp_page_template', 'default'),
(728, 219, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(729, 219, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(730, 219, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(731, 221, '_wp_attached_file', '2018/09/all-course-details-banner-1.jpg'),
(732, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:492;s:4:\"file\";s:39:\"2018/09/all-course-details-banner-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-300x109.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-768x280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"all-course-details-banner-1-1024x373.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:37:\"all-course-details-banner-1-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:40:\"all-course-details-banner-1-1350x249.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:39:\"all-course-details-banner-1-710x413.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(733, 219, '_thumbnail_id', '221'),
(734, 222, '_wp_attached_file', '2018/09/trainer_01.png'),
(735, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:315;s:4:\"file\";s:22:\"2018/09/trainer_01.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"trainer_01-257x300.png\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_01-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:22:\"trainer_01-270x181.png\";s:5:\"width\";i:270;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"trainer_01-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:22:\"trainer_01-270x249.png\";s:5:\"width\";i:270;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(736, 223, '_wp_attached_file', '2018/09/trainer_02.png'),
(737, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:315;s:4:\"file\";s:22:\"2018/09/trainer_02.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"trainer_02-257x300.png\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_02-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:22:\"trainer_02-270x181.png\";s:5:\"width\";i:270;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"trainer_02-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:22:\"trainer_02-270x249.png\";s:5:\"width\";i:270;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(738, 224, '_wp_attached_file', '2018/09/trainer_03.png'),
(739, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:315;s:4:\"file\";s:22:\"2018/09/trainer_03.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"trainer_03-257x300.png\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_03-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:22:\"trainer_03-270x181.png\";s:5:\"width\";i:270;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"trainer_03-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:22:\"trainer_03-270x249.png\";s:5:\"width\";i:270;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 225, '_wp_attached_file', '2018/09/trainer_04.png'),
(741, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:315;s:4:\"file\";s:22:\"2018/09/trainer_04.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"trainer_04-257x300.png\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"trainer_04-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:22:\"trainer_04-270x181.png\";s:5:\"width\";i:270;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:20:\"trainer_04-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:22:\"trainer_04-270x249.png\";s:5:\"width\";i:270;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(742, 226, '_edit_lock', '1537606583:1'),
(743, 226, '_edit_last', '1'),
(744, 227, '_wp_attached_file', '2018/09/OUR-TRAINERS.jpg'),
(745, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1423;s:6:\"height\";i:292;s:4:\"file\";s:24:\"2018/09/OUR-TRAINERS.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"OUR-TRAINERS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"OUR-TRAINERS-300x62.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"OUR-TRAINERS-768x158.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"OUR-TRAINERS-1024x210.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"OUR-TRAINERS-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:24:\"OUR-TRAINERS-311x181.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:22:\"OUR-TRAINERS-69x47.jpg\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:25:\"OUR-TRAINERS-1423x249.jpg\";s:5:\"width\";i:1423;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:24:\"OUR-TRAINERS-710x292.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(746, 226, '_thumbnail_id', '227'),
(747, 226, '_wp_page_template', 'trainers-template.php'),
(748, 226, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(749, 226, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(750, 226, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(751, 229, '_menu_item_type', 'post_type'),
(752, 229, '_menu_item_menu_item_parent', '239'),
(753, 229, '_menu_item_object_id', '226'),
(754, 229, '_menu_item_object', 'page'),
(755, 229, '_menu_item_target', ''),
(756, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(757, 229, '_menu_item_xfn', ''),
(758, 229, '_menu_item_url', ''),
(760, 230, '_wp_attached_file', '2018/09/running_student_icon.png'),
(761, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:47;s:4:\"file\";s:32:\"2018/09/running_student_icon.png\";s:5:\"sizes\";a:1:{s:11:\"recent-post\";a:4:{s:4:\"file\";s:30:\"running_student_icon-50x47.png\";s:5:\"width\";i:50;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(762, 231, '_wp_attached_file', '2018/09/graduates_student.png'),
(763, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:47;s:4:\"file\";s:29:\"2018/09/graduates_student.png\";s:5:\"sizes\";a:1:{s:11:\"recent-post\";a:4:{s:4:\"file\";s:27:\"graduates_student-50x47.png\";s:5:\"width\";i:50;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(764, 232, '_wp_attached_file', '2018/09/courses_icon.png'),
(765, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:47;s:4:\"file\";s:24:\"2018/09/courses_icon.png\";s:5:\"sizes\";a:1:{s:11:\"recent-post\";a:4:{s:4:\"file\";s:22:\"courses_icon-50x47.png\";s:5:\"width\";i:50;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(766, 233, '_wp_attached_file', '2018/09/trainer_icon.png'),
(767, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:47;s:4:\"file\";s:24:\"2018/09/trainer_icon.png\";s:5:\"sizes\";a:1:{s:11:\"recent-post\";a:4:{s:4:\"file\";s:22:\"trainer_icon-50x47.png\";s:5:\"width\";i:50;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(768, 234, '_wp_attached_file', '2018/09/Banner-Slider.png'),
(769, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:452;s:4:\"file\";s:25:\"2018/09/Banner-Slider.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Banner-Slider-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Banner-Slider-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Banner-Slider-768x181.png\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Banner-Slider-1024x241.png\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"Banner-Slider-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:25:\"Banner-Slider-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:26:\"Banner-Slider-1920x452.png\";s:5:\"width\";i:1920;s:6:\"height\";i:452;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:23:\"Banner-Slider-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:26:\"Banner-Slider-1920x249.png\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:25:\"Banner-Slider-710x413.png\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 235, '_wp_attached_file', '2018/09/Banner-Slide01.png'),
(771, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:452;s:4:\"file\";s:26:\"2018/09/Banner-Slide01.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Banner-Slide01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Banner-Slide01-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Banner-Slide01-768x181.png\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Banner-Slide01-1024x241.png\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Banner-Slide01-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:26:\"Banner-Slide01-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:27:\"Banner-Slide01-1920x452.png\";s:5:\"width\";i:1920;s:6:\"height\";i:452;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:24:\"Banner-Slide01-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:27:\"Banner-Slide01-1920x249.png\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:26:\"Banner-Slide01-710x413.png\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(772, 236, '_wp_attached_file', '2018/09/Banner-Slider-02.png'),
(773, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:452;s:4:\"file\";s:28:\"2018/09/Banner-Slider-02.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Banner-Slider-02-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-02-768x181.png\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-02-1024x241.png\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-02-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-02-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-02-1920x452.png\";s:5:\"width\";i:1920;s:6:\"height\";i:452;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"Banner-Slider-02-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-02-1920x249.png\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-02-710x413.png\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(774, 237, '_wp_attached_file', '2018/09/Banner-Slider-03.png'),
(775, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:452;s:4:\"file\";s:28:\"2018/09/Banner-Slider-03.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Banner-Slider-03-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-03-768x181.png\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-03-1024x241.png\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-03-200x200.png\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-image\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-03-311x181.png\";s:5:\"width\";i:311;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-03-1920x452.png\";s:5:\"width\";i:1920;s:6:\"height\";i:452;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"recent-post\";a:4:{s:4:\"file\";s:26:\"Banner-Slider-03-69x47.png\";s:5:\"width\";i:69;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:29:\"Banner-Slider-03-1920x249.png\";s:5:\"width\";i:1920;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"blog-details-image\";a:4:{s:4:\"file\";s:28:\"Banner-Slider-03-710x413.png\";s:5:\"width\";i:710;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 136, '_wp_old_slug', 'consultant-training__trashed'),
(783, 130, '_wp_old_slug', 'web-development-training__trashed'),
(784, 132, '_wp_old_slug', 'web-design-training__trashed'),
(785, 136, '_wp_trash_meta_status', 'publish'),
(786, 136, '_wp_trash_meta_time', '1537614691'),
(787, 136, '_wp_desired_post_slug', 'consultant-training'),
(788, 239, '_menu_item_type', 'custom'),
(789, 239, '_menu_item_menu_item_parent', '0'),
(790, 239, '_menu_item_object_id', '239'),
(791, 239, '_menu_item_object', 'custom'),
(792, 239, '_menu_item_target', ''),
(793, 239, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(794, 239, '_menu_item_xfn', ''),
(795, 239, '_menu_item_url', '#');

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
(1, 1, '2018-09-10 05:04:05', '2018-09-10 05:04:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-13 11:20:03', '2018-09-13 11:20:03', '', 0, 'http://localhost/wp_webgraph/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-10 05:04:05', '2018-09-10 05:04:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp_webgraph/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-09-13 07:31:04', '2018-09-13 07:31:04', '', 0, 'http://localhost/wp_webgraph/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-10 05:04:05', '2018-09-10 05:04:05', '<h2>Who we are</h2><p>Our website address is: http://localhost/wp_webgraph.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-09-13 07:31:11', '2018-09-13 07:31:11', '', 0, 'http://localhost/wp_webgraph/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-10 07:17:13', '2018-09-10 07:17:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-18 08:02:37', '2018-09-18 08:02:37', '', 0, 'http://localhost/wp_webgraph/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-09-10 07:17:13', '2018-09-10 07:17:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-10 07:17:13', '2018-09-10 07:17:13', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-10 07:17:22', '2018-09-10 07:17:22', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-09-22 10:00:31', '2018-09-22 10:00:31', '', 0, 'http://localhost/wp_webgraph/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-09-10 07:17:22', '2018-09-10 07:17:22', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-10 07:17:22', '2018-09-10 07:17:22', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-10 07:17:46', '2018-09-10 07:17:46', '', 'pages', '', 'trash', 'closed', 'closed', '', 'pages__trashed', '', '', '2018-09-13 07:31:08', '2018-09-13 07:31:08', '', 0, 'http://localhost/wp_webgraph/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-09-10 07:17:28', '2018-09-10 07:17:28', '', 'pages', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-10 07:17:28', '2018-09-10 07:17:28', '', 9, 'http://localhost/wp_webgraph/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-09-10 07:18:18', '2018-09-10 07:18:18', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-09-22 11:16:37', '2018-09-22 11:16:37', '', 0, 'http://localhost/wp_webgraph/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2018-09-10 07:18:17', '2018-09-10 07:18:17', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-09-22 11:16:37', '2018-09-22 11:16:37', '', 0, 'http://localhost/wp_webgraph/?p=13', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-09-10 08:51:35', '2018-09-10 08:51:35', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-09-13 07:22:55', '2018-09-13 07:22:55', '', 0, 'http://localhost/wp_webgraph/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2018-09-10 08:51:35', '2018-09-10 08:51:35', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-09-13 07:22:55', '2018-09-13 07:22:55', '', 0, 'http://localhost/wp_webgraph/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2018-09-10 08:51:34', '2018-09-10 08:51:34', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-09-13 07:22:55', '2018-09-13 07:22:55', '', 0, 'http://localhost/wp_webgraph/?p=18', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-09-10 09:41:08', '2018-09-10 09:41:08', '', 'v2logo', '', 'inherit', 'open', 'closed', '', 'v2logo', '', '', '2018-09-10 09:41:08', '2018-09-10 09:41:08', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/v2logo.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-09-10 09:41:16', '2018-09-10 09:41:16', '{\n    \"webgraph::logo\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/v2logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 09:41:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04f5a9d5-29d4-4ec5-a890-d6dbbb1bb268', '', '', '2018-09-10 09:41:16', '2018-09-10 09:41:16', '', 0, 'http://localhost/wp_webgraph/04f5a9d5-29d4-4ec5-a890-d6dbbb1bb268/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-09-10 09:59:48', '2018-09-10 09:59:48', '{\n    \"webgraph::favicon\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/v2logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 09:59:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '20242e3e-75c6-45fa-be19-876244913bfc', '', '', '2018-09-10 09:59:48', '2018-09-10 09:59:48', '', 0, 'http://localhost/wp_webgraph/20242e3e-75c6-45fa-be19-876244913bfc/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-09-10 10:00:33', '2018-09-10 10:00:33', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-09-10 10:00:33', '2018-09-10 10:00:33', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(24, 1, '2018-09-10 10:00:36', '2018-09-10 10:00:36', '{\n    \"webgraph::favicon\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/favicon.ico\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:00:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d222c76-48bd-4834-9d99-39e2722ab61f', '', '', '2018-09-10 10:00:36', '2018-09-10 10:00:36', '', 0, 'http://localhost/wp_webgraph/0d222c76-48bd-4834-9d99-39e2722ab61f/', 0, 'customize_changeset', '', 0),
(25, 1, '2018-09-10 10:07:51', '2018-09-10 10:07:51', '{\n    \"webgraph::header_facebook\": {\n        \"value\": \"http://www.facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:38\"\n    },\n    \"webgraph::header_linkedin\": {\n        \"value\": \"http://www.linkedin.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:38\"\n    },\n    \"webgraph::header_twitter\": {\n        \"value\": \"http://www.twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:38\"\n    },\n    \"webgraph::header_google\": {\n        \"value\": \"http://www.google.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:51\"\n    },\n    \"webgraph::header_skype\": {\n        \"value\": \"http://www.skype.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:51\"\n    },\n    \"webgraph::header_youtube\": {\n        \"value\": \"http://www.youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:07:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd06ac77c-4e3f-45dd-96cd-eda8af76defe', '', '', '2018-09-10 10:07:51', '2018-09-10 10:07:51', '', 0, 'http://localhost/wp_webgraph/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2018-09-10 10:15:58', '2018-09-10 10:15:58', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"+88 02 8415188\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:15:58\"\n    },\n    \"webgraph::header_email\": {\n        \"value\": \"info@versatileitbd.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:15:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0d98336-3a0d-4d71-894e-dfb31424cb3a', '', '', '2018-09-10 10:15:58', '2018-09-10 10:15:58', '', 0, 'http://localhost/wp_webgraph/a0d98336-3a0d-4d71-894e-dfb31424cb3a/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-09-10 10:35:38', '2018-09-10 10:35:38', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:35:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e2db33d-4b5d-44e4-b6d8-f4978d827ff1', '', '', '2018-09-10 10:35:38', '2018-09-10 10:35:38', '', 0, 'http://localhost/wp_webgraph/9e2db33d-4b5d-44e4-b6d8-f4978d827ff1/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-09-10 10:36:11', '2018-09-10 10:36:11', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"#5b9cdf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:36:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a1f8207-6957-4d6d-8377-21dc61aceda1', '', '', '2018-09-10 10:36:11', '2018-09-10 10:36:11', '', 0, 'http://localhost/wp_webgraph/4a1f8207-6957-4d6d-8377-21dc61aceda1/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-09-10 10:36:35', '2018-09-10 10:36:35', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-09-10 10:36:35', '2018-09-10 10:36:35', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-09-10 10:36:39', '2018-09-10 10:36:39', '{\n    \"webgraph::logo\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:36:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c26b269a-a24b-4ab4-b593-de5515c4c074', '', '', '2018-09-10 10:36:39', '2018-09-10 10:36:39', '', 0, 'http://localhost/wp_webgraph/c26b269a-a24b-4ab4-b593-de5515c4c074/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-09-10 11:00:10', '2018-09-10 11:00:10', '{\n    \"webgraph::footer_location\": {\n        \"value\": \"Ka-54/1,(&th floor) Progati Sarani, Baridhara-Nadda, Dhaka-1212.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 10:59:40\"\n    },\n    \"webgraph::footer_phone\": {\n        \"value\": \"+88 01863 222 483\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:00:10\"\n    },\n    \"webgraph::footer_email\": {\n        \"value\": \"info@versatileitbd.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:00:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1598c96-01aa-4098-a7de-a507afa527ae', '', '', '2018-09-10 11:00:10', '2018-09-10 11:00:10', '', 0, 'http://localhost/wp_webgraph/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2018-09-10 11:05:13', '2018-09-10 11:05:13', '{\n    \"webgraph::footer_logo\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/v2logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:05:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56436f76-9a11-44b8-a43d-3de0d6deec05', '', '', '2018-09-10 11:05:13', '2018-09-10 11:05:13', '', 0, 'http://localhost/wp_webgraph/56436f76-9a11-44b8-a43d-3de0d6deec05/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-09-10 11:18:00', '2018-09-10 11:18:00', '{\n    \"webgraph::footer_developer\": {\n        \"value\": \"Versatile IT Limited\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:18:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ffa9e6c-d8dd-4acb-8e16-62d73d2fffb4', '', '', '2018-09-10 11:18:00', '2018-09-10 11:18:00', '', 0, 'http://localhost/wp_webgraph/8ffa9e6c-d8dd-4acb-8e16-62d73d2fffb4/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-09-10 11:18:10', '2018-09-10 11:18:10', '{\n    \"webgraph::footer_copyright\": {\n        \"value\": \"@ All Right Reserved 2018\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:18:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c570a9e-0d73-40dd-8cf9-9502f8d1caf3', '', '', '2018-09-10 11:18:10', '2018-09-10 11:18:10', '', 0, 'http://localhost/wp_webgraph/0c570a9e-0d73-40dd-8cf9-9502f8d1caf3/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-09-10 11:26:59', '2018-09-10 11:26:59', '{\n    \"webgraph::footer_developer_url\": {\n        \"value\": \"https://versatileitbd.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:26:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e088a62-5de2-485c-9e5b-51229ca6b959', '', '', '2018-09-10 11:26:59', '2018-09-10 11:26:59', '', 0, 'http://localhost/wp_webgraph/6e088a62-5de2-485c-9e5b-51229ca6b959/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-09-10 11:30:50', '2018-09-10 11:30:50', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"#8224e3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:30:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c666137e-30ba-4f20-91c2-477071c702ff', '', '', '2018-09-10 11:30:50', '2018-09-10 11:30:50', '', 0, 'http://localhost/wp_webgraph/c666137e-30ba-4f20-91c2-477071c702ff/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-09-10 11:31:35', '2018-09-10 11:31:35', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"#5b9cdf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 11:31:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '098eb752-c8cb-4555-9669-def83ba653ae', '', '', '2018-09-10 11:31:35', '2018-09-10 11:31:35', '', 0, 'http://localhost/wp_webgraph/098eb752-c8cb-4555-9669-def83ba653ae/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-09-11 07:01:36', '2018-09-11 07:01:36', '<p style=\"text-align: left;\">Pharetra xxxs libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.</p>', 'test post 1', '', 'publish', 'open', 'open', '', 'test-post-1', '', '', '2018-09-15 06:16:57', '2018-09-15 06:16:57', '', 0, 'http://localhost/wp_webgraph/?p=38', 0, 'post', '', 2),
(39, 1, '2018-09-11 07:01:36', '2018-09-11 07:01:36', '', 'test post 1', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-09-11 07:01:36', '2018-09-11 07:01:36', '', 38, 'http://localhost/wp_webgraph/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-09-11 07:01:50', '2018-09-11 07:01:50', '<pre class=\"default prettyprint prettyprinted\">Pharetra xxxs libero non facilisis imperdiet mi augue feugiat nisl sit\r\n amet mollis enim velit Vestibulum fringilla nulla ultricies sem \r\nimperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi.\r\n Aenean at mi.</pre>', 'test post two', '', 'publish', 'open', 'open', '', 'test-post-two', '', '', '2018-09-15 06:20:50', '2018-09-15 06:20:50', '', 0, 'http://localhost/wp_webgraph/?p=40', 0, 'post', '', 1),
(41, 1, '2018-09-11 07:01:50', '2018-09-11 07:01:50', '', 'test post two', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-11 07:01:50', '2018-09-11 07:01:50', '', 40, 'http://localhost/wp_webgraph/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-09-11 08:06:30', '2018-09-11 08:06:30', '{\n    \"blogname\": {\n        \"value\": \"Versatile Training Center\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-11 08:06:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7eb74264-892e-4b74-a257-2c4c13684b40', '', '', '2018-09-11 08:06:30', '2018-09-11 08:06:30', '', 0, 'http://localhost/wp_webgraph/7eb74264-892e-4b74-a257-2c4c13684b40/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-09-12 08:24:19', '2018-09-12 08:24:19', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:24:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b3ed2e28-047d-4d4e-bfc0-8b5c5160e11a', '', '', '2018-09-12 08:24:19', '2018-09-12 08:24:19', '', 0, 'http://localhost/wp_webgraph/b3ed2e28-047d-4d4e-bfc0-8b5c5160e11a/', 0, 'customize_changeset', '', 0),
(45, 1, '2018-09-12 08:35:32', '2018-09-12 08:35:32', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"+88 0124 255\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:35:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bf6d677-0b48-4427-803c-c4ee6f969a89', '', '', '2018-09-12 08:35:32', '2018-09-12 08:35:32', '', 0, 'http://localhost/wp_webgraph/2bf6d677-0b48-4427-803c-c4ee6f969a89/', 0, 'customize_changeset', '', 0),
(46, 1, '2018-09-12 08:47:41', '2018-09-12 08:47:41', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:47:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c25359e5-14f0-482d-8642-9a52a7d10ebf', '', '', '2018-09-12 08:47:41', '2018-09-12 08:47:41', '', 0, 'http://localhost/wp_webgraph/c25359e5-14f0-482d-8642-9a52a7d10ebf/', 0, 'customize_changeset', '', 0),
(47, 1, '2018-09-12 08:49:38', '2018-09-12 08:49:38', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"get_theme_mod(\'header_email\')\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:49:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2510c744-881e-4a4f-8548-75dc330d379f', '', '', '2018-09-12 08:49:38', '2018-09-12 08:49:38', '', 0, 'http://localhost/wp_webgraph/2510c744-881e-4a4f-8548-75dc330d379f/', 0, 'customize_changeset', '', 0),
(48, 1, '2018-09-12 08:50:25', '2018-09-12 08:50:25', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"+88 0157 5555\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:50:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dc101344-cba0-4968-a2a9-e025b079ba6a', '', '', '2018-09-12 08:50:25', '2018-09-12 08:50:25', '', 0, 'http://localhost/wp_webgraph/dc101344-cba0-4968-a2a9-e025b079ba6a/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-09-12 08:51:24', '2018-09-12 08:51:24', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:51:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3e6e988f-41ae-4b02-bf53-f4f8eee15a5f', '', '', '2018-09-12 08:51:24', '2018-09-12 08:51:24', '', 0, 'http://localhost/wp_webgraph/3e6e988f-41ae-4b02-bf53-f4f8eee15a5f/', 0, 'customize_changeset', '', 0),
(50, 1, '2018-09-12 08:52:38', '2018-09-12 08:52:38', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"+88 0157 5555\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 08:52:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '94945962-e68d-4fb5-96d4-67a69f83893e', '', '', '2018-09-12 08:52:38', '2018-09-12 08:52:38', '', 0, 'http://localhost/wp_webgraph/94945962-e68d-4fb5-96d4-67a69f83893e/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-09-12 09:01:50', '2018-09-12 09:01:50', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:01:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '311d32dd-5c06-4670-9307-83252e1dfd43', '', '', '2018-09-12 09:01:50', '2018-09-12 09:01:50', '', 0, 'http://localhost/wp_webgraph/311d32dd-5c06-4670-9307-83252e1dfd43/', 0, 'customize_changeset', '', 0),
(52, 1, '2018-09-12 09:02:17', '2018-09-12 09:02:17', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"+88 0157 5555\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:02:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9d0372c-a7a3-4594-8baf-25f694578962', '', '', '2018-09-12 09:02:17', '2018-09-12 09:02:17', '', 0, 'http://localhost/wp_webgraph/c9d0372c-a7a3-4594-8baf-25f694578962/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-09-12 09:04:08', '2018-09-12 09:04:08', '{\n    \"webgraph::header_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:04:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61394ac0-1a06-45bf-ba3d-250715da2251', '', '', '2018-09-12 09:04:08', '2018-09-12 09:04:08', '', 0, 'http://localhost/wp_webgraph/61394ac0-1a06-45bf-ba3d-250715da2251/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-09-12 09:06:05', '2018-09-12 09:06:05', '{\n    \"webgraph::header_email\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:06:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '50ac2cad-fe6f-41f2-b809-bbd6f4cebff8', '', '', '2018-09-12 09:06:05', '2018-09-12 09:06:05', '', 0, 'http://localhost/wp_webgraph/50ac2cad-fe6f-41f2-b809-bbd6f4cebff8/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-09-12 09:08:38', '2018-09-12 09:08:38', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:08:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dee2b600-a8e8-41f7-9ed3-dededcf05bd5', '', '', '2018-09-12 09:08:38', '2018-09-12 09:08:38', '', 0, 'http://localhost/wp_webgraph/dee2b600-a8e8-41f7-9ed3-dededcf05bd5/', 0, 'customize_changeset', '', 0),
(56, 1, '2018-09-12 09:08:57', '2018-09-12 09:08:57', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:08:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '92b8f385-f105-47cd-80a2-d07a9ce448e7', '', '', '2018-09-12 09:08:57', '2018-09-12 09:08:57', '', 0, 'http://localhost/wp_webgraph/92b8f385-f105-47cd-80a2-d07a9ce448e7/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-09-12 09:09:08', '2018-09-12 09:09:08', '{\n    \"webgraph::header_navbar_color\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:09:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93003a56-f847-4c30-86a8-bf5aff9426a6', '', '', '2018-09-12 09:09:08', '2018-09-12 09:09:08', '', 0, 'http://localhost/wp_webgraph/93003a56-f847-4c30-86a8-bf5aff9426a6/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-09-12 09:10:26', '2018-09-12 09:10:26', '{\n    \"webgraph::logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:10:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '65805167-db26-4357-898d-4538167b6638', '', '', '2018-09-12 09:10:26', '2018-09-12 09:10:26', '', 0, 'http://localhost/wp_webgraph/65805167-db26-4357-898d-4538167b6638/', 0, 'customize_changeset', '', 0),
(61, 1, '2018-09-12 09:12:04', '2018-09-12 09:12:04', '{\n    \"webgraph::favicon\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:12:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fde82d4e-2d72-46dc-85ca-f6e86b94765f', '', '', '2018-09-12 09:12:04', '2018-09-12 09:12:04', '', 0, 'http://localhost/wp_webgraph/fde82d4e-2d72-46dc-85ca-f6e86b94765f/', 0, 'customize_changeset', '', 0),
(62, 1, '2018-09-12 09:13:22', '2018-09-12 09:13:22', '{\n    \"webgraph::header_facebook\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    },\n    \"webgraph::header_linkedin\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    },\n    \"webgraph::header_twitter\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    },\n    \"webgraph::header_google\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    },\n    \"webgraph::header_skype\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    },\n    \"webgraph::header_youtube\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:13:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c837510f-0a4d-4f25-b007-b00248c87458', '', '', '2018-09-12 09:13:22', '2018-09-12 09:13:22', '', 0, 'http://localhost/wp_webgraph/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2018-09-12 09:14:18', '2018-09-12 09:14:18', '{\n    \"webgraph::footer_location\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:14:18\"\n    },\n    \"webgraph::footer_phone\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:14:18\"\n    },\n    \"webgraph::footer_email\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:14:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb63c83a-8df6-4650-8111-84a380597785', '', '', '2018-09-12 09:14:18', '2018-09-12 09:14:18', '', 0, 'http://localhost/wp_webgraph/bb63c83a-8df6-4650-8111-84a380597785/', 0, 'customize_changeset', '', 0),
(64, 1, '2018-09-12 09:14:37', '2018-09-12 09:14:37', '{\n    \"webgraph::footer_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:14:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'de68246a-c78c-496b-9b97-52c63d0b94cd', '', '', '2018-09-12 09:14:37', '2018-09-12 09:14:37', '', 0, 'http://localhost/wp_webgraph/de68246a-c78c-496b-9b97-52c63d0b94cd/', 0, 'customize_changeset', '', 0),
(65, 1, '2018-09-12 09:14:53', '2018-09-12 09:14:53', '{\n    \"webgraph::footer_copyright\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:14:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c23209d9-dfe4-4eeb-895e-7d96f44b0eff', '', '', '2018-09-12 09:14:53', '2018-09-12 09:14:53', '', 0, 'http://localhost/wp_webgraph/c23209d9-dfe4-4eeb-895e-7d96f44b0eff/', 0, 'customize_changeset', '', 0),
(66, 1, '2018-09-12 09:15:00', '2018-09-12 09:15:00', '{\n    \"webgraph::footer_developer\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:15:00\"\n    },\n    \"webgraph::footer_developer_url\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:15:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d1ce230-164f-41a5-8ce0-120f7d3139c3', '', '', '2018-09-12 09:15:00', '2018-09-12 09:15:00', '', 0, 'http://localhost/wp_webgraph/0d1ce230-164f-41a5-8ce0-120f7d3139c3/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-09-12 09:15:37', '2018-09-12 09:15:37', '{\n    \"blogdescription\": {\n        \"value\": \"The best training center ever\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:15:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '653c8c85-dfdb-461f-ba88-3d6620eb8837', '', '', '2018-09-12 09:15:37', '2018-09-12 09:15:37', '', 0, 'http://localhost/wp_webgraph/653c8c85-dfdb-461f-ba88-3d6620eb8837/', 0, 'customize_changeset', '', 0),
(68, 1, '2018-09-12 09:19:48', '2018-09-12 09:19:48', '{\n    \"webgraph::logo\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:19:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24d217c3-1fa6-429c-b79e-22b01e96f059', '', '', '2018-09-12 09:19:48', '2018-09-12 09:19:48', '', 0, 'http://localhost/wp_webgraph/24d217c3-1fa6-429c-b79e-22b01e96f059/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-09-12 09:20:12', '2018-09-12 09:20:12', '{\n    \"webgraph::logo\": {\n        \"value\": \"http://localhost/wp_webgraph/wp-content/uploads/2018/09/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:20:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9b1f64f-3a10-4a24-b897-a5bd31092a2e', '', '', '2018-09-12 09:20:12', '2018-09-12 09:20:12', '', 0, 'http://localhost/wp_webgraph/d9b1f64f-3a10-4a24-b897-a5bd31092a2e/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-09-12 09:20:40', '2018-09-12 09:20:40', '{\n    \"webgraph::logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:20:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '71a352ef-a6cb-4487-8556-d319222695fe', '', '', '2018-09-12 09:20:40', '2018-09-12 09:20:40', '', 0, 'http://localhost/wp_webgraph/71a352ef-a6cb-4487-8556-d319222695fe/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-09-12 09:25:36', '2018-09-12 09:25:36', '{\n    \"webgraph::header_facebook\": {\n        \"value\": \"http://www.linkedin.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:25:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2646c430-450e-4ab7-b76f-6e36e390b356', '', '', '2018-09-12 09:25:36', '2018-09-12 09:25:36', '', 0, 'http://localhost/wp_webgraph/2646c430-450e-4ab7-b76f-6e36e390b356/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-09-12 09:25:48', '2018-09-12 09:25:48', '{\n    \"webgraph::header_facebook\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:25:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10e3fbc3-503f-49bb-9de5-92a622cce01b', '', '', '2018-09-12 09:25:48', '2018-09-12 09:25:48', '', 0, 'http://localhost/wp_webgraph/10e3fbc3-503f-49bb-9de5-92a622cce01b/', 0, 'customize_changeset', '', 0),
(73, 1, '2018-09-12 09:40:53', '2018-09-12 09:40:53', '{\n    \"webgraph::footer_location\": {\n        \"value\": \"test\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:40:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '79f8b2c3-a36c-409e-a3b6-c91b44323bda', '', '', '2018-09-12 09:40:53', '2018-09-12 09:40:53', '', 0, 'http://localhost/wp_webgraph/79f8b2c3-a36c-409e-a3b6-c91b44323bda/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-09-12 09:41:04', '2018-09-12 09:41:04', '{\n    \"webgraph::footer_location\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:41:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9eab42c2-c45c-4f49-91b0-4d7e438e9668', '', '', '2018-09-12 09:41:04', '2018-09-12 09:41:04', '', 0, 'http://localhost/wp_webgraph/9eab42c2-c45c-4f49-91b0-4d7e438e9668/', 0, 'customize_changeset', '', 0),
(75, 1, '2018-09-12 09:49:52', '2018-09-12 09:49:52', '{\n    \"webgraph::footer_developer\": {\n        \"value\": \"test\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:49:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6153ee32-33fd-403f-9791-8670da23b383', '', '', '2018-09-12 09:49:52', '2018-09-12 09:49:52', '', 0, 'http://localhost/wp_webgraph/6153ee32-33fd-403f-9791-8670da23b383/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-09-12 09:50:02', '2018-09-12 09:50:02', '{\n    \"webgraph::footer_developer\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 09:50:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9044cace-7405-4fa5-a509-8113b9645679', '', '', '2018-09-12 09:50:02', '2018-09-12 09:50:02', '', 0, 'http://localhost/wp_webgraph/9044cace-7405-4fa5-a509-8113b9645679/', 0, 'customize_changeset', '', 0),
(77, 1, '2018-09-12 10:47:12', '2018-09-12 10:47:12', '{\n    \"webgraph::header_skype\": {\n        \"value\": \"http://skype.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 10:47:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '100641a2-043c-40fd-b9d4-99ad70effd2c', '', '', '2018-09-12 10:47:12', '2018-09-12 10:47:12', '', 0, 'http://localhost/wp_webgraph/100641a2-043c-40fd-b9d4-99ad70effd2c/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-09-12 10:47:57', '2018-09-12 10:47:57', '{\n    \"webgraph::header_skype\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 10:47:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '462c044f-713d-4f4f-892e-a6119cbc2bda', '', '', '2018-09-12 10:47:57', '2018-09-12 10:47:57', '', 0, 'http://localhost/wp_webgraph/462c044f-713d-4f4f-892e-a6119cbc2bda/', 0, 'customize_changeset', '', 0),
(79, 1, '2018-09-12 10:49:52', '2018-09-12 10:49:52', '{\n    \"webgraph::header_skype\": {\n        \"value\": \"http://skype.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 10:49:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '171f2a63-bb95-4998-9651-d716ca9564d4', '', '', '2018-09-12 10:49:52', '2018-09-12 10:49:52', '', 0, 'http://localhost/wp_webgraph/171f2a63-bb95-4998-9651-d716ca9564d4/', 0, 'customize_changeset', '', 0),
(80, 1, '2018-09-13 07:22:32', '2018-09-13 07:22:32', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-13 07:29:22', '2018-09-13 07:29:22', '', 0, 'http://localhost/wp_webgraph/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-09-13 07:22:32', '2018-09-13 07:22:32', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-09-13 07:22:32', '2018-09-13 07:22:32', '', 80, 'http://localhost/wp_webgraph/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-09-13 07:22:45', '2018-09-13 07:22:45', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-09-13 07:22:55', '2018-09-13 07:22:55', '', 0, 'http://localhost/wp_webgraph/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2018-09-13 07:30:34', '2018-09-13 07:30:34', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=83', 7, 'nav_menu_item', '', 0),
(84, 1, '2018-09-13 07:31:04', '2018-09-13 07:31:04', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp_webgraph/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-13 07:31:04', '2018-09-13 07:31:04', '', 2, 'http://localhost/wp_webgraph/2-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-09-13 07:31:11', '2018-09-13 07:31:11', '<h2>Who we are</h2><p>Our website address is: http://localhost/wp_webgraph.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-09-13 07:31:11', '2018-09-13 07:31:11', '', 3, 'http://localhost/wp_webgraph/3-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-09-13 09:06:02', '2018-09-13 09:06:02', '', 'blog_title_01', '', 'inherit', 'open', 'closed', '', 'blog_title_01', '', '', '2018-09-13 09:06:02', '2018-09-13 09:06:02', '', 38, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/blog_title_01.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-09-13 09:06:39', '2018-09-13 09:06:39', '', 'student_02', '', 'inherit', 'open', 'closed', '', 'student_02', '', '', '2018-09-13 09:06:39', '2018-09-13 09:06:39', '', 40, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/student_02.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2018-09-13 09:09:08', '2018-09-13 09:09:08', '<pre class=\"default prettyprint prettyprinted\"><code><span class=\"tag\">&lt;div</span> <span class=\"atn\">class</span><span class=\"pun\">=</span><span class=\"atv\">\"input-group col-md-4\"</span><span class=\"tag\">&gt;</span>\r\n            <span class=\"tag\">&lt;input</span> <span class=\"atn\">class</span><span class=\"pun\">=</span><span class=\"atv\">\"form-control py-2 border-right-0 border\"</span> <span class=\"atn\">type</span><span class=\"pun\">=</span><span class=\"atv\">\"search\"</span> <span class=\"atn\">value</span><span class=\"pun\">=</span><span class=\"atv\">\"search\"</span> <span class=\"atn\">id</span><span class=\"pun\">=</span><span class=\"atv\">\"example-search-input\"</span><span class=\"tag\">&gt;</span>\r\n            <span class=\"tag\">&lt;span</span> <span class=\"atn\">class</span><span class=\"pun\">=</span><span class=\"atv\">\"input-group-append\"</span><span class=\"tag\">&gt;</span>\r\n                <span class=\"tag\">&lt;button</span> <span class=\"atn\">class</span><span class=\"pun\">=</span><span class=\"atv\">\"btn btn-outline-secondary border-left-0 border\"</span> <span class=\"atn\">type</span><span class=\"pun\">=</span><span class=\"atv\">\"button\"</span><span class=\"tag\">&gt;</span>\r\n                    <span class=\"tag\">&lt;i</span> <span class=\"atn\">class</span><span class=\"pun\">=</span><span class=\"atv\">\"fa fa-search\"</span><span class=\"tag\">&gt;&lt;/i&gt;</span>\r\n                <span class=\"tag\">&lt;/button&gt;</span>\r\n              <span class=\"tag\">&lt;/span&gt;</span>\r\n        <span class=\"tag\">&lt;/div&gt;</span></code></pre>', 'test post two', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-13 09:09:08', '2018-09-13 09:09:08', '', 40, 'http://localhost/wp_webgraph/40-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-09-13 09:11:34', '2018-09-13 09:11:34', '<pre class=\"default prettyprint prettyprinted\">Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.</pre>', 'test post two', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-13 09:11:34', '2018-09-13 09:11:34', '', 40, 'http://localhost/wp_webgraph/40-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-09-13 09:11:49', '2018-09-13 09:11:49', '<pre class=\"default prettyprint prettyprinted\">Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit\r\n amet mollis enim velit Vestibulum fringilla nulla ultricies sem \r\nimperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi.\r\n Aenean at mi.</pre>', 'test post two', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-13 09:11:49', '2018-09-13 09:11:49', '', 40, 'http://localhost/wp_webgraph/40-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2018-09-13 09:36:39', '2018-09-13 09:36:39', 'Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.', 'test post 1', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-09-13 09:36:39', '2018-09-13 09:36:39', '', 38, 'http://localhost/wp_webgraph/38-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-09-13 10:07:37', '2018-09-13 10:07:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-13 10:07:37', '2018-09-13 10:07:37', '', 1, 'http://localhost/wp_webgraph/1-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-09-13 10:15:28', '2018-09-13 10:15:28', '<pre class=\"default prettyprint prettyprinted\">Pharetra xxxs libero non facilisis imperdiet mi augue feugiat nisl sit\r\n amet mollis enim velit Vestibulum fringilla nulla ultricies sem \r\nimperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi.\r\n Aenean at mi.</pre>', 'test post two', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-13 10:15:28', '2018-09-13 10:15:28', '', 40, 'http://localhost/wp_webgraph/40-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-09-13 10:54:03', '2018-09-13 10:54:03', '', 'how_we_work_image', '', 'inherit', 'open', 'closed', '', 'how_we_work_image', '', '', '2018-09-13 10:54:03', '2018-09-13 10:54:03', '', 1, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/how_we_work_image.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-09-13 11:16:45', '2018-09-13 11:16:45', '', 'our_courses_image_01', '', 'inherit', 'open', 'closed', '', 'our_courses_image_01', '', '', '2018-09-13 11:16:45', '2018-09-13 11:16:45', '', 40, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/our_courses_image_01.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-09-13 11:17:08', '2018-09-13 11:17:08', '', 'blog_title_01', '', 'inherit', 'open', 'closed', '', 'blog_title_01-2', '', '', '2018-09-13 11:17:08', '2018-09-13 11:17:08', '', 38, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/blog_title_01-1.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-09-13 11:17:28', '2018-09-13 11:17:28', '', 'photo_gallery_02', '', 'inherit', 'open', 'closed', '', 'photo_gallery_02', '', '', '2018-09-13 11:17:28', '2018-09-13 11:17:28', '', 1, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/photo_gallery_02.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2018-09-13 11:19:34', '2018-09-13 11:19:34', '<p style=\"text-align: left;\">Pharetra libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.</p>', 'test post 1', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-09-13 11:19:34', '2018-09-13 11:19:34', '', 38, 'http://localhost/wp_webgraph/38-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-09-13 11:20:00', '2018-09-13 11:20:00', '', 'our_courses_image_02', '', 'inherit', 'open', 'closed', '', 'our_courses_image_02', '', '', '2018-09-13 11:20:00', '2018-09-13 11:20:00', '', 1, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/our_courses_image_02.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-09-15 06:03:02', '2018-09-15 06:03:02', '<p style=\"text-align: left;\">Pharetra xxxs libero non facilisis imperdiet mi augue feugiat nisl sit amet mollis enim velit Vestibulum fringilla nulla ultricies sem imperdiet semper. Maecenas tincidunt. Proin porttitor lacus eget mi. Aenean at mi.</p>', 'test post 1', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-09-15 06:03:02', '2018-09-15 06:03:02', '', 38, 'http://localhost/wp_webgraph/38-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-09-15 07:14:42', '2018-09-15 07:14:42', '', 'Courses', '', 'trash', 'closed', 'closed', '', 'services__trashed', '', '', '2018-09-18 11:02:15', '2018-09-18 11:02:15', '', 0, 'http://localhost/wp_webgraph/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-09-15 07:14:42', '2018-09-15 07:14:42', '', 'Services', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-09-15 07:14:42', '2018-09-15 07:14:42', '', 104, 'http://localhost/wp_webgraph/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-09-15 07:14:53', '2018-09-15 07:14:53', '', 'Portfolio', '', 'trash', 'closed', 'closed', '', 'portfolio__trashed', '', '', '2018-09-18 11:02:48', '2018-09-18 11:02:48', '', 0, 'http://localhost/wp_webgraph/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-09-15 07:14:53', '2018-09-15 07:14:53', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-09-15 07:14:53', '2018-09-15 07:14:53', '', 106, 'http://localhost/wp_webgraph/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-09-15 07:15:01', '2018-09-15 07:15:01', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog-2__trashed', '', '', '2018-09-15 07:15:14', '2018-09-15 07:15:14', '', 0, 'http://localhost/wp_webgraph/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-09-15 07:15:01', '2018-09-15 07:15:01', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-09-15 07:15:01', '2018-09-15 07:15:01', '', 108, 'http://localhost/wp_webgraph/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-09-15 07:15:28', '2018-09-15 07:15:28', '', 'Portfolio', '', 'trash', 'closed', 'closed', '', 'portfolio-2__trashed', '', '', '2018-09-15 07:15:44', '2018-09-15 07:15:44', '', 0, 'http://localhost/wp_webgraph/?page_id=110', 0, 'page', '', 0),
(111, 1, '2018-09-15 07:15:28', '2018-09-15 07:15:28', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-09-15 07:15:28', '2018-09-15 07:15:28', '', 110, 'http://localhost/wp_webgraph/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-09-15 07:16:03', '2018-09-15 07:16:03', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2018-09-18 11:22:20', '2018-09-18 11:22:20', '', 0, 'http://localhost/wp_webgraph/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-09-15 07:16:03', '2018-09-15 07:16:03', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-15 07:16:03', '2018-09-15 07:16:03', '', 112, 'http://localhost/wp_webgraph/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-09-15 07:16:11', '2018-09-15 07:16:11', '', 'Client', '', 'trash', 'closed', 'closed', '', 'client__trashed', '', '', '2018-09-18 11:28:11', '2018-09-18 11:28:11', '', 0, 'http://localhost/wp_webgraph/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-09-15 07:16:11', '2018-09-15 07:16:11', '', 'Client', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-09-15 07:16:11', '2018-09-15 07:16:11', '', 114, 'http://localhost/wp_webgraph/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-09-15 07:16:28', '2018-09-15 07:16:28', '[ninja_form id=1]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-22 05:53:57', '2018-09-22 05:53:57', '', 0, 'http://localhost/wp_webgraph/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-09-15 07:16:28', '2018-09-15 07:16:28', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-09-15 07:16:28', '2018-09-15 07:16:28', '', 116, 'http://localhost/wp_webgraph/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-09-15 07:18:44', '2018-09-15 07:18:44', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=118', 8, 'nav_menu_item', '', 0),
(120, 1, '2018-09-15 07:18:43', '2018-09-15 07:18:43', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-09-22 11:16:37', '2018-09-22 11:16:37', '', 0, 'http://localhost/wp_webgraph/?p=120', 4, 'nav_menu_item', '', 0),
(123, 1, '2018-09-15 07:27:21', '2018-09-15 07:27:21', 'Dealer obcaecati adipisci vero lorem ipsum dolor sit amet, consectetur adipisicing elit. dolorum pariatur aut consectetur. Sit quisquam rerum corporis neque atque inventore nulla, quibusdam, ipsa suscipit aperiam reiciendis, ea odio?', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-15 07:27:21', '2018-09-15 07:27:21', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-09-15 10:26:41', '2018-09-15 10:26:41', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators On the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Awesome post', '', 'publish', 'open', 'open', '', 'awesome-post', '', '', '2018-09-16 05:51:10', '2018-09-16 05:51:10', '', 0, 'http://localhost/wp_webgraph/?p=124', 0, 'post', '', 0),
(125, 1, '2018-09-15 10:26:41', '2018-09-15 10:26:41', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators On the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Awesome post', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-09-15 10:26:41', '2018-09-15 10:26:41', '', 124, 'http://localhost/wp_webgraph/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-09-15 11:53:36', '2018-09-15 11:53:36', '', 'basic-computer-courses', '', 'inherit', 'open', 'closed', '', 'basic-computer-courses', '', '', '2018-09-15 11:53:36', '2018-09-15 11:53:36', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/basic-computer-courses.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2018-09-15 11:54:03', '2018-09-15 11:54:03', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-09-15 11:54:03', '2018-09-15 11:54:03', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-09-16 06:12:54', '2018-09-16 06:12:54', 'You can take Gutenberg for a spin (and share your feedback, if you’d like) before we officially release it, by installing it as a plugin. You can help by <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">testing</a>, <a href=\"https://github.com/WordPress/gutenberg/issues\">filing bugs</a>, or contributing on the <a href=\"https://github.com/WordPress/gutenberg/blob/master/CONTRIBUTING.md\">GitHub repository</a>.', 'Web design & development', '', 'publish', 'open', 'open', '', 'web-design-development', '', '', '2018-09-16 06:12:54', '2018-09-16 06:12:54', '', 0, 'http://localhost/wp_webgraph/?p=128', 0, 'post', '', 0),
(129, 1, '2018-09-16 06:12:54', '2018-09-16 06:12:54', 'You can take Gutenberg for a spin (and share your feedback, if you’d like) before we officially release it, by installing it as a plugin. You can help by <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">testing</a>, <a href=\"https://github.com/WordPress/gutenberg/issues\">filing bugs</a>, or contributing on the <a href=\"https://github.com/WordPress/gutenberg/blob/master/CONTRIBUTING.md\">GitHub repository</a>.', 'Web design & development', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-09-16 06:12:54', '2018-09-16 06:12:54', '', 128, 'http://localhost/wp_webgraph/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-09-16 07:29:56', '2018-09-16 07:29:56', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.', 'Web development training', '', 'publish', 'closed', 'closed', '', 'web-development-training', '', '', '2018-09-22 11:11:06', '2018-09-22 11:11:06', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&#038;p=130', 0, 'slider-items', '', 0),
(131, 1, '2018-09-16 07:29:43', '2018-09-16 07:29:43', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2018-09-16 07:29:43', '2018-09-16 07:29:43', '', 130, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-09-16 07:30:31', '2018-09-16 07:30:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.', 'Web design training', '', 'publish', 'closed', 'closed', '', 'web-design-training', '', '', '2018-09-22 11:11:24', '2018-09-22 11:11:24', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&#038;p=132', 0, 'slider-items', '', 0),
(133, 1, '2018-09-16 07:30:26', '2018-09-16 07:30:26', '', 'gender-slider2', '', 'inherit', 'open', 'closed', '', 'gender-slider2', '', '', '2018-09-16 07:30:26', '2018-09-16 07:30:26', '', 132, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/gender-slider2.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2018-09-16 07:31:45', '2018-09-16 07:31:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.', 'Welcome To Webgraph', '', 'publish', 'closed', 'closed', '', 'android-app-development', '', '', '2018-09-22 10:58:12', '2018-09-22 10:58:12', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&#038;p=134', 0, 'slider-items', '', 0),
(135, 1, '2018-09-16 07:31:41', '2018-09-16 07:31:41', '', 'slider1-1', '', 'inherit', 'open', 'closed', '', 'slider1-1', '', '', '2018-09-16 07:31:41', '2018-09-16 07:31:41', '', 134, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/slider1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-09-16 09:05:28', '2018-09-16 09:05:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, qui, excepturi? Illum consequuntur saepe esse magni voluptates vel ratione earum minima numquam, quaerat, tenetur ullam id assumenda atque quidem aliquam velit dolorum, in quis. Cumque reiciendis, cupiditate dolor neque id dolore nesciunt adipisci, vitae assumenda provident harum aliquid.', 'Consultant training', '', 'trash', 'closed', 'closed', '', 'consultant-training__trashed', '', '', '2018-09-22 11:11:31', '2018-09-22 11:11:31', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&#038;p=136', 0, 'slider-items', '', 0),
(137, 1, '2018-09-16 09:05:26', '2018-09-16 09:05:26', '', 'Partners-1900x500', '', 'inherit', 'open', 'closed', '', 'partners-1900x500', '', '', '2018-09-16 09:05:26', '2018-09-16 09:05:26', '', 136, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Partners-1900x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-09-16 09:22:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-16 09:22:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&p=138', 0, 'slider-items', '', 0),
(139, 1, '2018-09-16 09:34:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-16 09:34:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&p=139', 0, 'slider-items', '', 0),
(140, 1, '2018-09-17 06:01:42', '2018-09-17 06:01:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima voluptatibus, non culpa impedit incidunt voluptas vel ipsum, animi labore omnis laboriosam ipsa veniam at nihil vero a eveniet cum nulla ex sit. Nemo deleniti eligendi recusandae eius impedit cum, repellendus?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Minima voluptatibus, non culpa impedit incidunt voluptas vel ipsum, animi labore omnis laboriosam ipsa veniam at nihil vero a eveniet cum nulla ex sit. Nemo deleniti eligendi recusandae eius impedit cum, repellendus?', 'Node Js course', '', 'publish', 'open', 'open', '', 'node-js-course', '', '', '2018-09-17 06:11:10', '2018-09-17 06:11:10', '', 0, 'http://localhost/wp_webgraph/?p=140', 0, 'post', '', 0),
(141, 1, '2018-09-17 06:01:35', '2018-09-17 06:01:35', '', 'node-js-736399_960_720-400x200', '', 'inherit', 'open', 'closed', '', 'node-js-736399_960_720-400x200', '', '', '2018-09-17 06:01:35', '2018-09-17 06:01:35', '', 140, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/node-js-736399_960_720-400x200.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2018-09-17 06:01:42', '2018-09-17 06:01:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima voluptatibus, non culpa impedit incidunt voluptas vel ipsum, animi labore omnis laboriosam ipsa veniam at nihil vero a eveniet cum nulla ex sit. Nemo deleniti eligendi recusandae eius impedit cum, repellendus?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Minima voluptatibus, non culpa impedit incidunt voluptas vel ipsum, animi labore omnis laboriosam ipsa veniam at nihil vero a eveniet cum nulla ex sit. Nemo deleniti eligendi recusandae eius impedit cum, repellendus?', 'Node Js course', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-09-17 06:01:42', '2018-09-17 06:01:42', '', 140, 'http://localhost/wp_webgraph/140-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-09-17 06:11:03', '2018-09-17 06:11:03', '', 'gender-slider2', '', 'inherit', 'open', 'closed', '', 'gender-slider2-2', '', '', '2018-09-17 06:11:03', '2018-09-17 06:11:03', '', 140, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/gender-slider2-1.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2018-09-17 06:40:44', '2018-09-17 06:40:44', '', 'Banner-About-us', '', 'inherit', 'open', 'closed', '', 'banner-about-us', '', '', '2018-09-17 06:40:44', '2018-09-17 06:40:44', '', 7, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Banner-About-us.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-09-17 06:45:29', '2018-09-17 06:45:29', '', 'Cloud-Services-Banner', '', 'inherit', 'open', 'closed', '', 'cloud-services-banner', '', '', '2018-09-17 06:45:29', '2018-09-17 06:45:29', '', 104, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Cloud-Services-Banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-09-17 06:45:54', '2018-09-17 06:45:54', '', 'Concluding contract', '', 'inherit', 'open', 'closed', '', 'concluding-contract', '', '', '2018-09-17 06:45:54', '2018-09-17 06:45:54', '', 114, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/ClientPedia-online-business.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-09-17 06:46:14', '2018-09-17 06:46:14', '', 'contact-banner', '', 'inherit', 'open', 'closed', '', 'contact-banner', '', '', '2018-09-17 06:46:14', '2018-09-17 06:46:14', '', 116, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/contact-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-09-17 06:46:36', '2018-09-17 06:46:36', '', 'portfolio-banner', '', 'inherit', 'open', 'closed', '', 'portfolio-banner', '', '', '2018-09-17 06:46:36', '2018-09-17 06:46:36', '', 106, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/portfolio-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-09-17 06:47:12', '2018-09-17 06:47:12', '', 'Training-centre-slider-1024x320', '', 'inherit', 'open', 'closed', '', 'training-centre-slider-1024x320', '', '', '2018-09-17 06:47:12', '2018-09-17 06:47:12', '', 112, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Training-centre-slider-1024x320.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2018-09-17 06:47:41', '2018-09-17 06:47:41', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-09-17 06:47:41', '2018-09-17 06:47:41', '', 112, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-09-17 06:49:21', '2018-09-17 06:49:21', '', 'testimonial-banner', '', 'inherit', 'open', 'closed', '', 'testimonial-banner', '', '', '2018-09-17 06:49:21', '2018-09-17 06:49:21', '', 112, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/testimonial-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-09-17 06:50:21', '2018-09-17 06:50:21', '', 'banner-support-services1', '', 'inherit', 'open', 'closed', '', 'banner-support-services1', '', '', '2018-09-17 06:50:21', '2018-09-17 06:50:21', '', 104, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/banner-support-services1.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2018-09-17 06:51:06', '2018-09-17 06:51:06', '', 'service-banner', '', 'inherit', 'open', 'closed', '', 'service-banner', '', '', '2018-09-17 06:51:06', '2018-09-17 06:51:06', '', 104, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/service-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2018-09-17 06:53:06', '2018-09-17 06:53:06', '', 'banner_recommend-a01a5ec3', '', 'inherit', 'open', 'closed', '', 'banner_recommend-a01a5ec3', '', '', '2018-09-17 06:53:06', '2018-09-17 06:53:06', '', 114, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/banner_recommend-a01a5ec3.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2018-09-17 06:54:08', '2018-09-17 06:54:08', '', 'contactbanner', '', 'inherit', 'open', 'closed', '', 'contactbanner', '', '', '2018-09-17 06:54:08', '2018-09-17 06:54:08', '', 116, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/contactbanner.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-09-17 06:54:52', '2018-09-17 06:54:52', '', 'contact-banner (1)', '', 'inherit', 'open', 'closed', '', 'contact-banner-1', '', '', '2018-09-17 06:54:52', '2018-09-17 06:54:52', '', 116, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/contact-banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2018-09-17 07:11:12', '2018-09-17 07:11:12', '', 'slider_webdesign1', '', 'inherit', 'open', 'closed', '', 'slider_webdesign1', '', '', '2018-09-17 07:11:12', '2018-09-17 07:11:12', '', 132, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/slider_webdesign1.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-09-17 07:28:48', '2018-09-17 07:28:48', '', 'how_we_work_image', '', 'inherit', 'open', 'closed', '', 'how_we_work_image-2', '', '', '2018-09-17 07:28:48', '2018-09-17 07:28:48', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/how_we_work_image-1.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2018-09-17 07:52:52', '2018-09-17 07:52:52', '', 'accountabillity_icon', '', 'inherit', 'open', 'closed', '', 'accountabillity_icon', '', '', '2018-09-17 07:52:52', '2018-09-17 07:52:52', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/accountabillity_icon.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2018-09-17 08:10:24', '2018-09-17 08:10:24', '', 'expetize_icon', '', 'inherit', 'open', 'closed', '', 'expetize_icon', '', '', '2018-09-17 08:10:24', '2018-09-17 08:10:24', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/expetize_icon.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2018-09-17 08:10:42', '2018-09-17 08:10:42', '', 'speed_icon', '', 'inherit', 'open', 'closed', '', 'speed_icon', '', '', '2018-09-17 08:10:42', '2018-09-17 08:10:42', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/speed_icon.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2018-09-17 09:11:10', '2018-09-17 09:11:10', '', 'john_doe_image', '', 'inherit', 'open', 'closed', '', 'john_doe_image', '', '', '2018-09-17 09:11:10', '2018-09-17 09:11:10', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/john_doe_image.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2018-09-17 12:05:09', '2018-09-17 12:05:09', '', 'student_01', '', 'inherit', 'open', 'closed', '', 'student_01', '', '', '2018-09-17 12:05:09', '2018-09-17 12:05:09', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/student_01.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2018-09-17 12:18:11', '2018-09-17 12:18:11', '', 'student_02', '', 'inherit', 'open', 'closed', '', 'student_02-2', '', '', '2018-09-17 12:18:11', '2018-09-17 12:18:11', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/student_02-1.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2018-09-17 12:18:41', '2018-09-17 12:18:41', '', 'student_03', '', 'inherit', 'open', 'closed', '', 'student_03', '', '', '2018-09-17 12:18:41', '2018-09-17 12:18:41', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/student_03.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2018-09-18 05:15:43', '2018-09-18 05:15:43', '', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2018-09-18 05:32:09', '2018-09-18 05:32:09', '', 0, 'http://localhost/wp_webgraph/?page_id=166', 0, 'page', '', 0),
(167, 1, '2018-09-18 05:15:39', '2018-09-18 05:15:39', '', 'banner-register', '', 'inherit', 'open', 'closed', '', 'banner-register', '', '', '2018-09-18 05:15:39', '2018-09-18 05:15:39', '', 166, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/banner-register.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2018-09-18 05:15:43', '2018-09-18 05:15:43', '', 'Registration', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-09-18 05:15:43', '2018-09-18 05:15:43', '', 166, 'http://localhost/wp_webgraph/166-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-09-18 05:32:05', '2018-09-18 05:32:05', '', 'O-tix_LandingPage_Banner_Registration', '', 'inherit', 'open', 'closed', '', 'o-tix_landingpage_banner_registration', '', '', '2018-09-18 05:32:05', '2018-09-18 05:32:05', '', 166, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/O-tix_LandingPage_Banner_Registration.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-09-18 06:55:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-18 06:55:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_webgraph/?p=171', 0, 'post', '', 0),
(172, 1, '2018-09-18 06:56:36', '2018-09-18 06:56:36', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2018-09-18 06:56:36', '2018-09-18 06:56:36', '', 0, 'http://localhost/wp_webgraph/um_form/default-registration/', 0, 'um_form', '', 0),
(173, 1, '2018-09-18 06:56:36', '2018-09-18 06:56:36', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2018-09-18 06:56:36', '2018-09-18 06:56:36', '', 0, 'http://localhost/wp_webgraph/um_form/default-login/', 0, 'um_form', '', 0),
(174, 1, '2018-09-18 06:56:37', '2018-09-18 06:56:37', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2018-09-18 06:56:37', '2018-09-18 06:56:37', '', 0, 'http://localhost/wp_webgraph/um_form/default-profile/', 0, 'um_form', '', 0),
(175, 1, '2018-09-18 06:56:37', '2018-09-18 06:56:37', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2018-09-18 06:56:37', '2018-09-18 06:56:37', '', 0, 'http://localhost/wp_webgraph/um_directory/members/', 0, 'um_directory', '', 0),
(176, 1, '2018-09-18 06:56:38', '2018-09-18 06:56:38', '[ultimatemember form_id=174]', 'User', '', 'publish', 'closed', 'open', '', 'user', '', '', '2018-09-18 07:33:51', '2018-09-18 07:33:51', '', 0, 'http://localhost/wp_webgraph/user/', 0, 'page', '', 0),
(177, 1, '2018-09-18 06:56:38', '2018-09-18 06:56:38', '[ultimatemember form_id=174]', 'User', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2018-09-18 06:56:38', '2018-09-18 06:56:38', '', 176, 'http://localhost/wp_webgraph/176-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-09-18 06:56:38', '2018-09-18 06:56:38', '[ultimatemember form_id=173]', 'Login', '', 'publish', 'closed', 'open', '', 'login', '', '', '2018-09-18 07:16:48', '2018-09-18 07:16:48', '', 0, 'http://localhost/wp_webgraph/login/', 0, 'page', '', 0),
(179, 1, '2018-09-18 06:56:38', '2018-09-18 06:56:38', '[ultimatemember form_id=173]', 'Login', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-09-18 06:56:38', '2018-09-18 06:56:38', '', 178, 'http://localhost/wp_webgraph/178-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2018-09-18 06:56:39', '2018-09-18 06:56:39', '[ultimatemember form_id=172]', 'Register', '', 'publish', 'closed', 'open', '', 'register', '', '', '2018-09-18 07:17:22', '2018-09-18 07:17:22', '', 0, 'http://localhost/wp_webgraph/register/', 0, 'page', '', 0),
(181, 1, '2018-09-18 06:56:39', '2018-09-18 06:56:39', '[ultimatemember form_id=172]', 'Register', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-09-18 06:56:39', '2018-09-18 06:56:39', '', 180, 'http://localhost/wp_webgraph/180-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-09-18 06:56:39', '2018-09-18 06:56:39', '[ultimatemember form_id=175]', 'Members', '', 'publish', 'closed', 'open', '', 'members', '', '', '2018-09-18 07:32:53', '2018-09-18 07:32:53', '', 0, 'http://localhost/wp_webgraph/members/', 0, 'page', '', 0),
(183, 1, '2018-09-18 06:56:40', '2018-09-18 06:56:40', '[ultimatemember form_id=175]', 'Members', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-09-18 06:56:40', '2018-09-18 06:56:40', '', 182, 'http://localhost/wp_webgraph/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-09-18 06:56:40', '2018-09-18 06:56:40', '', 'Logout', '', 'publish', 'closed', 'open', '', 'logout', '', '', '2018-09-18 07:17:05', '2018-09-18 07:17:05', '', 0, 'http://localhost/wp_webgraph/logout/', 0, 'page', '', 0),
(185, 1, '2018-09-18 06:56:40', '2018-09-18 06:56:40', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-09-18 06:56:40', '2018-09-18 06:56:40', '', 184, 'http://localhost/wp_webgraph/184-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-09-18 06:56:40', '2018-09-18 06:56:40', '[ultimatemember_account]', 'Account', '', 'publish', 'closed', 'open', '', 'account', '', '', '2018-09-18 07:17:40', '2018-09-18 07:17:40', '', 0, 'http://localhost/wp_webgraph/account/', 0, 'page', '', 0),
(187, 1, '2018-09-18 06:56:41', '2018-09-18 06:56:41', '[ultimatemember_account]', 'Account', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2018-09-18 06:56:41', '2018-09-18 06:56:41', '', 186, 'http://localhost/wp_webgraph/186-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-09-18 06:56:41', '2018-09-18 06:56:41', '[ultimatemember_password]', 'Password Reset', '', 'publish', 'closed', 'open', '', 'password-reset', '', '', '2018-09-18 07:33:25', '2018-09-18 07:33:25', '', 0, 'http://localhost/wp_webgraph/password-reset/', 0, 'page', '', 0),
(189, 1, '2018-09-18 06:56:41', '2018-09-18 06:56:41', '[ultimatemember_password]', 'Password Reset', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-09-18 06:56:41', '2018-09-18 06:56:41', '', 188, 'http://localhost/wp_webgraph/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-09-18 07:08:37', '2018-09-18 07:08:37', '', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=190', 9, 'nav_menu_item', '', 0),
(192, 1, '2018-09-18 07:08:38', '2018-09-18 07:08:38', ' ', '', '', 'publish', 'closed', 'closed', '', '192', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=192', 10, 'nav_menu_item', '', 0),
(193, 1, '2018-09-18 07:08:38', '2018-09-18 07:08:38', ' ', '', '', 'publish', 'closed', 'closed', '', '193', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=193', 11, 'nav_menu_item', '', 0),
(194, 1, '2018-09-18 07:08:38', '2018-09-18 07:08:38', ' ', '', '', 'publish', 'closed', 'closed', '', '194', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=194', 12, 'nav_menu_item', '', 0),
(195, 1, '2018-09-18 07:48:51', '2018-09-18 07:48:51', 'asdass', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-18 07:48:51', '2018-09-18 07:48:51', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-09-18 07:58:51', '2018-09-18 07:58:51', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #5b9cdf; color: #ffffff;\" target=\"_blank\" href=\"#\">View profile</a>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-09-18 07:58:51', '2018-09-18 07:58:51', '', 5, 'http://localhost/wp_webgraph/5-autosave-v1/', 0, 'revision', '', 0),
(197, 1, '2018-09-18 07:58:59', '2018-09-18 07:58:59', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #5b9cdf; color: #ffffff;\" target=\"_blank\" href=\"#\">View profile</a>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 07:58:59', '2018-09-18 07:58:59', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2018-09-18 07:59:45', '2018-09-18 07:59:45', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #5b9cdf; color: #ffffff;\" target=\"_blank\" rel=\"noopener\" href=\"#\">View profile</a>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 07:59:45', '2018-09-18 07:59:45', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2018-09-18 08:00:13', '2018-09-18 08:00:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 08:00:13', '2018-09-18 08:00:13', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-09-18 08:01:53', '2018-09-18 08:01:53', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #33809e; color: #ffffff;\" href=\"#\">test</a>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 08:01:53', '2018-09-18 08:01:53', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2018-09-18 08:02:16', '2018-09-18 08:02:16', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #33809e; color: #ffffff;\" href=\"#\">test</a>&nbsp; gh', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 08:02:16', '2018-09-18 08:02:16', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-09-18 08:02:37', '2018-09-18 08:02:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-18 08:02:37', '2018-09-18 08:02:37', '', 5, 'http://localhost/wp_webgraph/5-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-09-18 08:02:56', '2018-09-18 08:02:56', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-18 08:02:56', '2018-09-18 08:02:56', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-09-18 08:03:37', '2018-09-18 08:03:37', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #58b2d6; color: #ffffff;\" target=\"_blank\" href=\"#\">Profile</a>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-18 08:03:37', '2018-09-18 08:03:37', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-09-18 08:04:10', '2018-09-18 08:04:10', '<a class=\"fasc-button fasc-size-medium fasc-type-flat\" style=\"background-color: #58b2d6; color: #ffffff;\" target=\"_blank\" href=\"login\">Profile</a>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-18 08:04:10', '2018-09-18 08:04:10', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-09-18 08:57:17', '2018-09-18 08:57:17', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-09-18 08:57:17', '2018-09-18 08:57:17', '', 104, 'http://localhost/wp_webgraph/104-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-09-18 10:51:06', '2018-09-18 10:51:06', '', 'single-course-1', '', 'inherit', 'open', 'closed', '', 'single-course-1', '', '', '2018-09-18 10:51:06', '2018-09-18 10:51:06', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/single-course-1.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2018-09-18 10:52:08', '2018-09-18 10:52:08', '', 'single-course-2', '', 'inherit', 'open', 'closed', '', 'single-course-2', '', '', '2018-09-18 10:52:08', '2018-09-18 10:52:08', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/single-course-2.png', 0, 'attachment', 'image/png', 0),
(209, 1, '2018-09-18 10:52:18', '2018-09-18 10:52:18', '', 'single-course-3', '', 'inherit', 'open', 'closed', '', 'single-course-3', '', '', '2018-09-18 10:52:18', '2018-09-18 10:52:18', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/single-course-3.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2018-09-18 11:03:52', '2018-09-18 11:03:52', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2018-09-20 10:47:48', '2018-09-20 10:47:48', '', 0, 'http://localhost/wp_webgraph/?page_id=210', 0, 'page', '', 0),
(211, 1, '2018-09-18 11:03:52', '2018-09-18 11:03:52', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-09-18 11:03:52', '2018-09-18 11:03:52', '', 210, 'http://localhost/wp_webgraph/210-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2018-09-18 11:04:17', '2018-09-18 11:04:17', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2018-09-22 11:16:37', '2018-09-22 11:16:37', '', 0, 'http://localhost/wp_webgraph/?p=212', 3, 'nav_menu_item', '', 0),
(213, 1, '2018-09-18 11:19:59', '2018-09-18 11:19:59', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-18 11:19:59', '2018-09-18 11:19:59', '', 7, 'http://localhost/wp_webgraph/7-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-09-18 11:44:40', '2018-09-18 11:44:40', '', 'single-course-4', '', 'inherit', 'open', 'closed', '', 'single-course-4', '', '', '2018-09-18 11:44:40', '2018-09-18 11:44:40', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/single-course-4.png', 0, 'attachment', 'image/png', 0),
(215, 1, '2018-09-20 10:45:33', '2018-09-20 10:45:33', 'szd6yhgxdzrtfg', 'Courses', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-09-20 10:45:33', '2018-09-20 10:45:33', '', 210, 'http://localhost/wp_webgraph/210-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2018-09-20 10:46:42', '2018-09-20 10:46:42', 'lorem', 'Courses', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-09-20 10:46:42', '2018-09-20 10:46:42', '', 210, 'http://localhost/wp_webgraph/210-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-09-20 10:47:48', '2018-09-20 10:47:48', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-09-20 10:47:48', '2018-09-20 10:47:48', '', 210, 'http://localhost/wp_webgraph/210-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2018-09-22 05:53:57', '2018-09-22 05:53:57', '[ninja_form id=1]', 'Contact', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-09-22 05:53:57', '2018-09-22 05:53:57', '', 116, 'http://localhost/wp_webgraph/116-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2018-09-22 06:17:22', '2018-09-22 06:17:22', '', 'Course-details', '', 'publish', 'closed', 'closed', '', 'course-details', '', '', '2018-09-22 06:18:51', '2018-09-22 06:18:51', '', 0, 'http://localhost/wp_webgraph/?page_id=219', 0, 'page', '', 0),
(220, 1, '2018-09-22 06:17:22', '2018-09-22 06:17:22', '', 'Course-details', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2018-09-22 06:17:22', '2018-09-22 06:17:22', '', 219, 'http://localhost/wp_webgraph/219-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-09-22 06:18:46', '2018-09-22 06:18:46', '', 'all-course-details-banner-1', '', 'inherit', 'open', 'closed', '', 'all-course-details-banner-1', '', '', '2018-09-22 06:18:46', '2018-09-22 06:18:46', '', 219, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/all-course-details-banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-09-22 08:03:37', '2018-09-22 08:03:37', '', 'trainer_01', '', 'inherit', 'open', 'closed', '', 'trainer_01', '', '', '2018-09-22 08:03:37', '2018-09-22 08:03:37', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/trainer_01.png', 0, 'attachment', 'image/png', 0),
(223, 1, '2018-09-22 08:04:20', '2018-09-22 08:04:20', '', 'trainer_02', '', 'inherit', 'open', 'closed', '', 'trainer_02', '', '', '2018-09-22 08:04:20', '2018-09-22 08:04:20', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/trainer_02.png', 0, 'attachment', 'image/png', 0),
(224, 1, '2018-09-22 08:06:32', '2018-09-22 08:06:32', '', 'trainer_03', '', 'inherit', 'open', 'closed', '', 'trainer_03', '', '', '2018-09-22 08:06:32', '2018-09-22 08:06:32', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/trainer_03.png', 0, 'attachment', 'image/png', 0),
(225, 1, '2018-09-22 08:07:13', '2018-09-22 08:07:13', '', 'trainer_04', '', 'inherit', 'open', 'closed', '', 'trainer_04', '', '', '2018-09-22 08:07:13', '2018-09-22 08:07:13', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/trainer_04.png', 0, 'attachment', 'image/png', 0),
(226, 1, '2018-09-22 08:19:15', '2018-09-22 08:19:15', '', 'Trainers', '', 'publish', 'closed', 'closed', '', 'trainers', '', '', '2018-09-22 08:24:28', '2018-09-22 08:24:28', '', 0, 'http://localhost/wp_webgraph/?page_id=226', 0, 'page', '', 0),
(227, 1, '2018-09-22 08:19:09', '2018-09-22 08:19:09', '', 'OUR TRAINERS', '', 'inherit', 'open', 'closed', '', 'our-trainers', '', '', '2018-09-22 08:19:09', '2018-09-22 08:19:09', '', 226, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/OUR-TRAINERS.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2018-09-22 08:19:15', '2018-09-22 08:19:15', '', 'Trainers', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2018-09-22 08:19:15', '2018-09-22 08:19:15', '', 226, 'http://localhost/wp_webgraph/226-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-09-22 08:19:51', '2018-09-22 08:19:51', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2018-09-22 11:16:38', '2018-09-22 11:16:38', '', 0, 'http://localhost/wp_webgraph/?p=229', 6, 'nav_menu_item', '', 0),
(230, 1, '2018-09-22 08:59:40', '2018-09-22 08:59:40', '', 'running_student_icon', '', 'inherit', 'open', 'closed', '', 'running_student_icon', '', '', '2018-09-22 08:59:40', '2018-09-22 08:59:40', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/running_student_icon.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2018-09-22 09:00:14', '2018-09-22 09:00:14', '', 'graduates_student', '', 'inherit', 'open', 'closed', '', 'graduates_student', '', '', '2018-09-22 09:00:14', '2018-09-22 09:00:14', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/graduates_student.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2018-09-22 09:00:38', '2018-09-22 09:00:38', '', 'courses_icon', '', 'inherit', 'open', 'closed', '', 'courses_icon', '', '', '2018-09-22 09:00:38', '2018-09-22 09:00:38', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/courses_icon.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2018-09-22 09:01:00', '2018-09-22 09:01:00', '', 'trainer_icon', '', 'inherit', 'open', 'closed', '', 'trainer_icon', '', '', '2018-09-22 09:01:00', '2018-09-22 09:01:00', '', 0, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/trainer_icon.png', 0, 'attachment', 'image/png', 0),
(234, 1, '2018-09-22 10:21:28', '2018-09-22 10:21:28', '', 'Banner-Slider', '', 'inherit', 'open', 'closed', '', 'banner-slider', '', '', '2018-09-22 10:21:28', '2018-09-22 10:21:28', '', 134, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Banner-Slider.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2018-09-22 10:48:59', '2018-09-22 10:48:59', '', 'Banner-Slide01', '', 'inherit', 'open', 'closed', '', 'banner-slide01', '', '', '2018-09-22 10:48:59', '2018-09-22 10:48:59', '', 134, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Banner-Slide01.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2018-09-22 10:49:31', '2018-09-22 10:49:31', '', 'Banner-Slider-02', '', 'inherit', 'open', 'closed', '', 'banner-slider-02', '', '', '2018-09-22 10:49:31', '2018-09-22 10:49:31', '', 132, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Banner-Slider-02.png', 0, 'attachment', 'image/png', 0),
(237, 1, '2018-09-22 10:49:52', '2018-09-22 10:49:52', '', 'Banner-Slider-03', '', 'inherit', 'open', 'closed', '', 'banner-slider-03', '', '', '2018-09-22 10:49:52', '2018-09-22 10:49:52', '', 130, 'http://localhost/wp_webgraph/wp-content/uploads/2018/09/Banner-Slider-03.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2018-09-22 11:10:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-22 11:10:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_webgraph/?post_type=slider-items&p=238', 0, 'slider-items', '', 0),
(239, 1, '2018-09-22 11:16:18', '2018-09-22 11:16:18', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2018-09-22 11:16:37', '2018-09-22 11:16:37', '', 0, 'http://localhost/wp_webgraph/?p=239', 5, 'nav_menu_item', '', 0);

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
(2, 'Header Menu', 'header-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Web development', 'web-development', 0),
(5, 'test1', 'test1', 0),
(6, 'test2', 'test2', 0),
(7, 'test3', 'test3', 0),
(8, 'tags', 'tags', 0),
(9, 'tags2', 'tags2', 0),
(10, 'design', 'design', 0),
(11, 'development', 'development', 0),
(12, 'web', 'web', 0),
(13, 'Advance Course', 'advance-course', 0),
(14, 'advance', 'advance', 0),
(15, 'nodeJs', 'nodejs', 0);

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
(12, 2, 0),
(13, 2, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(38, 1, 0),
(38, 5, 0),
(38, 6, 0),
(38, 7, 0),
(40, 1, 0),
(40, 4, 0),
(40, 8, 0),
(40, 9, 0),
(82, 3, 0),
(83, 2, 0),
(118, 2, 0),
(120, 2, 0),
(124, 4, 0),
(124, 5, 0),
(124, 6, 0),
(124, 7, 0),
(128, 4, 0),
(128, 10, 0),
(128, 11, 0),
(128, 12, 0),
(140, 12, 0),
(140, 13, 0),
(140, 14, 0),
(140, 15, 0),
(176, 1, 0),
(178, 1, 0),
(180, 1, 0),
(182, 1, 0),
(184, 1, 0),
(186, 1, 0),
(188, 1, 0),
(190, 2, 0),
(192, 2, 0),
(193, 2, 0),
(194, 2, 0),
(212, 2, 0),
(229, 2, 0),
(239, 2, 0);

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
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 3),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 2),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 2),
(13, 13, 'category', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1);

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
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '171'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o'),
(22, 1, 'wp_user-settings-time', '1537611761'),
(23, 1, 'facebook', ' http://www.facebook.com/BappyMustafiz'),
(24, 1, 'skype', ' http://www.skype .com/BappyMustafiz'),
(25, 1, 'instagram', ' http://www.instagram .com/BappyMustafiz'),
(26, 1, 'linkedin', ' http://www.linkedin.com/BappyMustafiz'),
(27, 1, 'twitter', ' http://www.twitter.com/BappyMustafiz'),
(30, 1, 'session_tokens', 'a:2:{s:64:\"14a2f70053afa2cd30ad355d6b1b5ba40bffa37d5c73e82b796cc2af4f845bec\";a:4:{s:10:\"expiration\";i:1537596032;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1537423232;}s:64:\"d2922c175c0e56a9ac5b6ec2c12b498b30cdc3e2f888e666d3c59ec9c80440a5\";a:4:{s:10:\"expiration\";i:1537768040;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537595240;}}'),
(31, 1, 'closedpostboxes_post', 'a:1:{i:0;s:20:\"_custom_post_options\";}'),
(32, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(33, 2, 'nickname', 'Bappy'),
(34, 2, 'first_name', ''),
(35, 2, 'last_name', ''),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'true'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(45, 2, 'wp_user_level', '0'),
(46, 3, 'nickname', 'rumpa'),
(47, 3, 'first_name', ''),
(48, 3, 'last_name', ''),
(49, 3, 'description', ''),
(50, 3, 'rich_editing', 'true'),
(51, 3, 'syntax_highlighting', 'true'),
(52, 3, 'comment_shortcuts', 'false'),
(53, 3, 'admin_color', 'fresh'),
(54, 3, 'use_ssl', '0'),
(55, 3, 'show_admin_bar_front', 'true'),
(56, 3, 'locale', ''),
(57, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(58, 3, 'wp_user_level', '0'),
(59, 1, 'account_status', 'approved'),
(60, 2, 'account_status', 'approved'),
(61, 3, 'account_status', 'approved'),
(62, 3, 'um_user_profile_url_slug_user_login', 'rumpa'),
(63, 2, 'um_user_profile_url_slug_user_login', 'bappy'),
(64, 1, 'um_user_profile_url_slug_user_login', 'admin'),
(65, 1, 'um_account_secure_fields', 'a:0:{}'),
(66, 1, '_um_last_login', '1537595240'),
(67, 4, 'nickname', 'asif'),
(68, 4, 'first_name', 'Hayder'),
(69, 4, 'last_name', 'Asif'),
(70, 4, 'description', ''),
(71, 4, 'rich_editing', 'true'),
(72, 4, 'syntax_highlighting', 'true'),
(73, 4, 'comment_shortcuts', 'false'),
(74, 4, 'admin_color', 'fresh'),
(75, 4, 'use_ssl', '0'),
(76, 4, 'show_admin_bar_front', 'true'),
(77, 4, 'locale', ''),
(78, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(79, 4, 'wp_user_level', '0'),
(80, 4, 'synced_gravatar_hashed_id', '0cf95b0d6dbb803dac513c095d0056fa'),
(82, 4, 'submitted', 'a:9:{s:7:\"form_id\";s:3:\"172\";s:9:\"timestamp\";s:10:\"1537255673\";s:7:\"request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"25d6dbe910\";s:16:\"_wp_http_referer\";s:22:\"/wp_webgraph/register/\";s:10:\"user_login\";s:4:\"asif\";s:10:\"first_name\";s:6:\"Hayder\";s:9:\"last_name\";s:4:\"Asif\";s:10:\"user_email\";s:12:\"asif@dev.com\";}'),
(83, 4, 'form_id', '172'),
(84, 4, 'timestamp', '1537255673'),
(85, 4, 'request', ''),
(86, 4, '_wpnonce', '25d6dbe910'),
(87, 4, '_wp_http_referer', '/wp_webgraph/register/'),
(88, 4, 'user_login', 'asif'),
(89, 4, 'um_user_profile_url_slug_user_login', 'asif'),
(90, 4, 'full_name', 'asif'),
(91, 4, 'reset_pass_hash', 'hza3XcdFsfpC6RbtP8Qe67EUM7aEKqI64fB38ySt'),
(92, 4, 'account_status', 'approved'),
(93, 4, 'session_tokens', 'a:1:{s:64:\"005cd7d9cafbfa40cffd5d6dfb6beb4b3876a9b37f8ea9c748b67d1e8dd7da73\";a:4:{s:10:\"expiration\";i:1537428499;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1537255699;}}'),
(94, 4, '_um_last_login', '1537255875'),
(95, 4, 'um_account_secure_fields', 'a:0:{}'),
(96, 4, 'wp_user-settings', 'mfold=o'),
(97, 4, 'wp_user-settings-time', '1537255882'),
(99, 1, 'closedpostboxes_page', 'a:2:{i:0;s:25:\"um-admin-restrict-content\";i:1;s:20:\"_custom_page_options\";}'),
(100, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

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
(1, 'admin', '$P$Bj7upUlPeLjOD03bUFxxf9CwHcU/Bt.', 'admin', 'mustafizur120133@gmail.com', '', '2018-09-10 05:04:05', '', 0, 'admin'),
(2, 'Bappy', '$P$BAAPmjzpwnV.yb03Ev4lz9PWRLRbJE1', 'bappy', '', '', '2018-09-18 06:36:04', '', 0, 'Bappy'),
(3, 'rumpa', '$P$BldhZAANv3L63I9F.BdyU1nOKrarYy0', 'rumpa', '', '', '2018-09-18 06:51:40', '', 0, 'rumpa'),
(4, 'asif', '$P$B8UBl/10cmidADC6FddUgGYNJK/j6G/', 'asif', 'asif@dev.com', '', '2018-09-18 07:28:16', '', 0, 'Hayder Asif');

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
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=872;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

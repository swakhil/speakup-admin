-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2020 at 04:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speakup`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, '88df1d15df', 'Language', 0, 'language', 1604098800, 1604098800, 'fas fa-chess', 'category-thumbnail.png'),
(2, 'e3fe4bf23e', 'English to Kannada', 1, 'english-to-kannada', 1604098800, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcomes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `visibility`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`) VALUES
(1, 'Beginner&#039;s Course for English to Kannada Translation', '', '', '[]', 'english', 1, 2, '[1,2]', '[]', 0, NULL, 0, 'beginner', 1, NULL, '', 1604098800, NULL, NULL, 1, 1, 'active', '', '', '', 1),
(2, 'test course', '', '', '[]', 'english', 1, 2, '[]', '[]', 0, NULL, 0, 'beginner', 1, NULL, '', 1604358000, NULL, NULL, NULL, 1, 'active', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Learn on your schedule'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2>This is about us</h2><p><span xss=\"removed\" xss=removed>Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<h2>Privacy Policy</h2>This is the Privacy Policy page for your companys'),
(13, 'theme', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'manage_profile', NULL),
(140, 'category_code', NULL),
(3, 'dashboard', NULL),
(4, 'categories', NULL),
(5, 'courses', NULL),
(6, 'students', NULL),
(7, 'enroll_history', NULL),
(8, 'message', NULL),
(9, 'settings', NULL),
(10, 'system_settings', NULL),
(11, 'frontend_settings', NULL),
(12, 'payment_settings', NULL),
(13, 'manage_language', NULL),
(14, 'edit_profile', NULL),
(15, 'log_out', NULL),
(16, 'first_name', NULL),
(17, 'last_name', NULL),
(18, 'email', NULL),
(19, 'facebook_link', NULL),
(20, 'twitter_link', NULL),
(21, 'linkedin_link', NULL),
(22, 'a_short_title_about_yourself', NULL),
(23, 'biography', NULL),
(24, 'photo', NULL),
(25, 'select_image', NULL),
(26, 'change', NULL),
(27, 'remove', NULL),
(28, 'update_profile', NULL),
(29, 'change_password', NULL),
(30, 'current_password', NULL),
(31, 'new_password', NULL),
(32, 'confirm_new_password', NULL),
(33, 'delete', NULL),
(34, 'cancel', NULL),
(35, 'are_you_sure_to_update_this_information', NULL),
(36, 'yes', NULL),
(37, 'no', NULL),
(38, 'system settings', NULL),
(39, 'system_name', NULL),
(40, 'system_title', NULL),
(41, 'slogan', NULL),
(42, 'system_email', NULL),
(43, 'address', NULL),
(44, 'phone', NULL),
(45, 'youtube_api_key', NULL),
(46, 'get_youtube_api_key', NULL),
(47, 'vimeo_api_key', NULL),
(48, 'purchase_code', NULL),
(49, 'language', NULL),
(50, 'text-align', NULL),
(51, 'update_system_settings', NULL),
(52, 'update_product', NULL),
(53, 'file', NULL),
(54, 'install_update', NULL),
(55, 'system_logo', NULL),
(56, 'update_logo', NULL),
(57, 'get_vimeo_api_key', NULL),
(58, 'add_category', NULL),
(59, 'category_title', NULL),
(60, 'sub_categories', NULL),
(61, 'actions', NULL),
(62, 'action', NULL),
(63, 'manage_sub_categories', NULL),
(64, 'edit', NULL),
(65, 'add_course', NULL),
(66, 'select_category', NULL),
(67, 'title', NULL),
(68, 'category', NULL),
(69, '#_section', NULL),
(70, '#_lesson', NULL),
(71, '#_enrolled_user', NULL),
(72, 'view_course_details', NULL),
(73, 'manage_section', NULL),
(74, 'manage_lesson', NULL),
(75, 'student', NULL),
(76, 'add_student', NULL),
(77, 'name', NULL),
(78, 'date_added', NULL),
(79, 'enrolled_courses', NULL),
(80, 'view_profile', NULL),
(81, 'admin_dashboard', NULL),
(82, 'total_courses', NULL),
(83, 'number_of_courses', NULL),
(84, 'total_lessons', NULL),
(85, 'number_of_lessons', NULL),
(86, 'total_enrollment', NULL),
(87, 'number_of_enrollment', NULL),
(88, 'total_student', NULL),
(89, 'number_of_student', NULL),
(90, 'manage_sections', NULL),
(91, 'manage sections', NULL),
(92, 'course', NULL),
(93, 'add_section', NULL),
(94, 'lessons', NULL),
(95, 'serialize_sections', NULL),
(96, 'add_lesson', NULL),
(97, 'edit_section', NULL),
(98, 'delete_section', NULL),
(99, 'course_details', NULL),
(100, 'course details', NULL),
(101, 'details', NULL),
(102, 'instructor', NULL),
(103, 'sub_category', NULL),
(104, 'enrolled_user', NULL),
(105, 'last_modified', NULL),
(106, 'manage language', NULL),
(107, 'language_list', NULL),
(108, 'add_phrase', NULL),
(109, 'add_language', NULL),
(110, 'option', NULL),
(111, 'edit_phrase', NULL),
(112, 'delete_language', NULL),
(113, 'phrase', NULL),
(114, 'value_required', NULL),
(115, 'frontend settings', NULL),
(116, 'banner_title', NULL),
(117, 'banner_sub_title', NULL),
(118, 'about_us', NULL),
(119, 'blog', NULL),
(120, 'update_frontend_settings', NULL),
(121, 'update_banner', NULL),
(122, 'banner_image', NULL),
(123, 'update_banner_image', NULL),
(124, 'payment settings', NULL),
(125, 'paypal_settings', NULL),
(126, 'client_id', NULL),
(127, 'sandbox', NULL),
(128, 'production', NULL),
(129, 'active', NULL),
(130, 'mode', NULL),
(131, 'stripe_settings', NULL),
(132, 'testmode', NULL),
(133, 'on', NULL),
(134, 'off', NULL),
(135, 'test_secret_key', NULL),
(136, 'test_public_key', NULL),
(137, 'live_secret_key', NULL),
(138, 'live_public_key', NULL),
(139, 'save_changes', NULL),
(141, 'update_phrase', NULL),
(142, 'check', NULL),
(143, 'settings_updated', NULL),
(144, 'checking', NULL),
(145, 'phrase_added', NULL),
(146, 'language_added', NULL),
(147, 'language_deleted', NULL),
(148, 'add course', NULL),
(149, 'add_courses', NULL),
(150, 'add_course_form', NULL),
(151, 'basic_info', NULL),
(152, 'short_description', NULL),
(153, 'description', NULL),
(154, 'level', NULL),
(155, 'beginner', NULL),
(156, 'advanced', NULL),
(157, 'intermediate', NULL),
(158, 'language_made_in', NULL),
(159, 'is_top_course', NULL),
(160, 'outcomes', NULL),
(161, 'category_and_sub_category', NULL),
(162, 'select_a_category', NULL),
(163, 'select_a_category_first', NULL),
(164, 'requirements', NULL),
(165, 'price_and_discount', NULL),
(166, 'price', NULL),
(167, 'has_discount', NULL),
(168, 'discounted_price', NULL),
(169, 'course_thumbnail', NULL),
(170, 'note', NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL),
(172, 'course_overview_url', NULL),
(173, '0%', NULL),
(174, 'manage profile', NULL),
(175, 'edit_course', NULL),
(176, 'edit course', NULL),
(177, 'edit_courses', NULL),
(178, 'edit_course_form', NULL),
(179, 'update_course', NULL),
(180, 'course_updated', NULL),
(181, 'number_of_sections', NULL),
(182, 'number_of_enrolled_users', NULL),
(183, 'add section', NULL),
(184, 'section', NULL),
(185, 'add_section_form', NULL),
(186, 'update', NULL),
(187, 'serialize_section', NULL),
(188, 'serialize section', NULL),
(189, 'submit', NULL),
(190, 'sections_have_been_serialized', NULL),
(191, 'select_course', NULL),
(192, 'search', NULL),
(193, 'thumbnail', NULL),
(194, 'duration', NULL),
(195, 'provider', NULL),
(196, 'add lesson', NULL),
(197, 'add_lesson_form', NULL),
(198, 'video_type', NULL),
(199, 'select_a_course', NULL),
(200, 'select_a_course_first', NULL),
(201, 'video_url', NULL),
(202, 'invalid_url', NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL),
(204, 'for', NULL),
(205, 'of', NULL),
(206, 'edit_lesson', NULL),
(207, 'edit lesson', NULL),
(208, 'edit_lesson_form', NULL),
(209, 'login', NULL),
(210, 'password', NULL),
(211, 'forgot_password', NULL),
(212, 'back_to_website', NULL),
(213, 'send_mail', NULL),
(214, 'back_to_login', NULL),
(215, 'student_add', NULL),
(216, 'student add', NULL),
(217, 'add_students', NULL),
(218, 'student_add_form', NULL),
(219, 'login_credentials', NULL),
(220, 'social_information', NULL),
(221, 'facebook', NULL),
(222, 'twitter', NULL),
(223, 'linkedin', NULL),
(224, 'user_image', NULL),
(225, 'add_user', NULL),
(226, 'user_update_successfully', NULL),
(227, 'user_added_successfully', NULL),
(228, 'student_edit', NULL),
(229, 'student edit', NULL),
(230, 'edit_students', NULL),
(231, 'student_edit_form', NULL),
(232, 'update_user', NULL),
(233, 'enroll history', NULL),
(234, 'filter', NULL),
(235, 'user_name', NULL),
(236, 'enrolled_course', NULL),
(237, 'enrollment_date', NULL),
(238, 'biography2', NULL),
(239, 'home', NULL),
(240, 'search_for_courses', NULL),
(241, 'total', NULL),
(242, 'go_to_cart', NULL),
(243, 'your_cart_is_empty', NULL),
(244, 'log_in', NULL),
(245, 'sign_up', NULL),
(246, 'what_do_you_want_to_learn', NULL),
(247, 'online_courses', NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL),
(249, 'expert_instruction', NULL),
(250, 'find_the_right_course_for_you', NULL),
(251, 'lifetime_access', NULL),
(252, 'learn_on_your_schedule', NULL),
(253, 'top_courses', NULL),
(254, 'last_updater', NULL),
(255, 'hours', NULL),
(256, 'add_to_cart', NULL),
(257, 'top', NULL),
(258, 'latest_courses', NULL),
(259, 'added_to_cart', NULL),
(260, 'admin', NULL),
(261, 'log_in_to_your_udemy_account', NULL),
(262, 'by_signing_up_you_agree_to_our', NULL),
(263, 'terms_of_use', NULL),
(264, 'and', NULL),
(265, 'privacy_policy', NULL),
(266, 'do_not_have_an_account', NULL),
(267, 'sign_up_and_start_learning', NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL),
(269, 'already_have_an_account', NULL),
(270, 'checkout', NULL),
(271, 'paypal', NULL),
(272, 'stripe', NULL),
(273, 'step', NULL),
(274, 'how_would_you_rate_this_course_overall', NULL),
(275, 'write_a_public_review', NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL),
(278, 'next', NULL),
(279, 'previous', NULL),
(280, 'publish', NULL),
(281, 'search_results', NULL),
(282, 'ratings', NULL),
(283, 'search_results_for', NULL),
(284, 'category_page', NULL),
(285, 'all', NULL),
(286, 'category_list', NULL),
(287, 'by', NULL),
(288, 'go_to_wishlist', NULL),
(289, 'hi', NULL),
(290, 'my_courses', NULL),
(291, 'my_wishlist', NULL),
(292, 'my_messages', NULL),
(293, 'purchase_history', NULL),
(294, 'user_profile', NULL),
(295, 'already_purchased', NULL),
(296, 'all_courses', NULL),
(297, 'wishlists', NULL),
(298, 'search_my_courses', NULL),
(299, 'students_enrolled', NULL),
(300, 'created_by', NULL),
(301, 'last_updated', NULL),
(302, 'what_will_i_learn', NULL),
(303, 'view_more', NULL),
(304, 'other_related_courses', NULL),
(305, 'updated', NULL),
(306, 'curriculum_for_this_course', NULL),
(307, 'about_the_instructor', NULL),
(308, 'reviews', NULL),
(309, 'student_feedback', NULL),
(310, 'average_rating', NULL),
(311, 'preview_this_course', NULL),
(312, 'includes', NULL),
(313, 'on_demand_videos', NULL),
(314, 'full_lifetime_access', NULL),
(315, 'access_on_mobile_and_tv', NULL),
(316, 'course_preview', NULL),
(317, 'instructor_page', NULL),
(318, 'buy_now', NULL),
(319, 'shopping_cart', NULL),
(320, 'courses_in_cart', NULL),
(321, 'student_name', NULL),
(322, 'amount_to_pay', NULL),
(323, 'payment_successfully_done', NULL),
(324, 'filter_by', NULL),
(325, 'instructors', NULL),
(326, 'reset', NULL),
(327, 'your', NULL),
(328, 'rating', NULL),
(329, 'course_detail', NULL),
(330, 'start_lesson', NULL),
(331, 'show_full_biography', NULL),
(332, 'terms_and_condition', NULL),
(333, 'about', NULL),
(334, 'terms_&_condition', NULL),
(335, 'sub categories', NULL),
(336, 'add_sub_category', NULL),
(337, 'sub_category_title', NULL),
(338, 'add sub category', NULL),
(339, 'add_sub_category_form', NULL),
(340, 'sub_category_code', NULL),
(341, 'data_deleted', NULL),
(342, 'edit_category', NULL),
(343, 'edit category', NULL),
(344, 'edit_category_form', NULL),
(345, 'font', NULL),
(346, 'awesome class', NULL),
(347, 'update_category', NULL),
(348, 'data_updated_successfully', NULL),
(349, 'edit_sub_category', NULL),
(350, 'edit sub category', NULL),
(351, 'sub_category_edit', NULL),
(352, 'update_sub_category', NULL),
(353, 'course_added', NULL),
(354, 'user_deleted_successfully', NULL),
(355, 'private_messaging', NULL),
(356, 'private messaging', NULL),
(357, 'messages', NULL),
(358, 'select_message_to_read', NULL),
(359, 'new_message', NULL),
(360, 'email_duplication', NULL),
(361, 'your_registration_has_been_successfully_done', NULL),
(362, 'profile', NULL),
(363, 'account', NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL),
(365, 'basics', NULL),
(366, 'add_your_twitter_link', NULL),
(367, 'add_your_facebook_link', NULL),
(368, 'add_your_linkedin_link', NULL),
(369, 'credentials', NULL),
(370, 'edit_your_account_settings', NULL),
(371, 'enter_current_password', NULL),
(372, 'enter_new_password', NULL),
(373, 're-type_your_password', NULL),
(374, 'save', NULL),
(375, 'update_user_photo', NULL),
(376, 'update_your_photo', NULL),
(377, 'upload_image', NULL),
(378, 'updated_successfully', NULL),
(379, 'invalid_login_credentials', NULL),
(380, 'blank_page', NULL),
(381, 'no_section_found', NULL),
(382, 'select_a_message_thread_to_read_it_here', NULL),
(383, 'send', NULL),
(384, 'type_your_message', NULL),
(385, 'date', NULL),
(386, 'total_price', NULL),
(387, 'payment_type', NULL),
(388, 'edit section', NULL),
(389, 'edit_section_form', NULL),
(390, 'reply_message', NULL),
(391, 'reply', NULL),
(392, 'log_in_to_your_account', NULL),
(393, 'no_result_found', NULL),
(394, 'enrollment', NULL),
(395, 'enroll_a_student', NULL),
(396, 'report', NULL),
(397, 'admin_revenue', NULL),
(398, 'instructor_revenue', NULL),
(399, 'instructor_settings', NULL),
(400, 'view_frontend', NULL),
(401, 'number_of_active_courses', NULL),
(402, 'number_of_pending_courses', NULL),
(403, 'all_instructor', NULL),
(404, 'active_courses', NULL),
(405, 'pending_courses', NULL),
(406, 'no_data_found', NULL),
(407, 'view_course_on_frontend', NULL),
(408, 'mark_as_pending', NULL),
(409, 'add category', NULL),
(410, 'add_categories', NULL),
(411, 'category_add_form', NULL),
(412, 'icon_picker', NULL),
(413, 'enroll a student', NULL),
(414, 'enrollment_form', NULL),
(415, 'admin revenue', NULL),
(416, 'total_amount', NULL),
(417, 'instructor revenue', NULL),
(418, 'status', NULL),
(419, 'instructor settings', NULL),
(420, 'allow_public_instructor', NULL),
(421, 'instructor_revenue_percentage', NULL),
(422, 'admin_revenue_percentage', NULL),
(423, 'update_instructor_settings', NULL),
(424, 'payment_info', NULL),
(425, 'required_for_instructors', NULL),
(426, 'paypal_client_id', NULL),
(427, 'stripe_public_key', NULL),
(428, 'stripe_secret_key', NULL),
(429, 'mark_as_active', NULL),
(430, 'mail_subject', NULL),
(431, 'mail_body', NULL),
(432, 'paid', NULL),
(433, 'pending', NULL),
(434, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL),
(435, 'pay_with_paypal', NULL),
(436, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL),
(437, 'pay_with_stripe', NULL),
(438, 'create_course', NULL),
(439, 'payment_report', NULL),
(440, 'instructor_dashboard', NULL),
(441, 'draft', NULL),
(442, 'view_lessons', NULL),
(443, 'course_title', NULL),
(444, 'update_your_payment_settings', NULL),
(445, 'edit_course_detail', NULL),
(446, 'edit_basic_informations', NULL),
(447, 'publish_this_course', NULL),
(448, 'save_to_draft', NULL),
(449, 'update_section', NULL),
(450, 'analyzing_given_url', NULL),
(451, 'select_a_section', NULL),
(452, 'update_lesson', NULL),
(453, 'website_name', NULL),
(454, 'website_title', NULL),
(455, 'website_keywords', NULL),
(456, 'website_description', NULL),
(457, 'author', NULL),
(458, 'footer_text', NULL),
(459, 'footer_link', NULL),
(460, 'update_backend_logo', NULL),
(461, 'update_favicon', NULL),
(462, 'favicon', NULL),
(463, 'active courses', NULL),
(464, 'product_updated_successfully', NULL),
(465, 'course_overview_provider', NULL),
(466, 'youtube', NULL),
(467, 'vimeo', NULL),
(468, 'html5', NULL),
(469, 'meta_keywords', NULL),
(470, 'meta_description', NULL),
(471, 'lesson_type', NULL),
(472, 'video', NULL),
(473, 'select_type_of_lesson', NULL),
(474, 'text_file', NULL),
(475, 'pdf_file', NULL),
(476, 'document_file', NULL),
(477, 'image_file', NULL),
(478, 'lesson_provider', NULL),
(479, 'select_lesson_provider', NULL),
(480, 'analyzing_the_url', NULL),
(481, 'attachment', NULL),
(482, 'summary', NULL),
(483, 'download', NULL),
(484, 'system_settings_updated', NULL),
(485, 'course_updated_successfully', NULL),
(486, 'please_wait_untill_admin_approves_it', NULL),
(487, 'pending courses', NULL),
(488, 'course_status_updated', NULL),
(489, 'smtp_settings', NULL),
(490, 'free_course', NULL),
(491, 'free', NULL),
(492, 'get_enrolled', NULL),
(493, 'course_added_successfully', NULL),
(494, 'update_frontend_logo', NULL),
(495, 'system_currency_settings', NULL),
(496, 'select_system_currency', NULL),
(497, 'currency_position', NULL),
(498, 'left', NULL),
(499, 'right', NULL),
(500, 'left_with_a_space', NULL),
(501, 'right_with_a_space', NULL),
(502, 'paypal_currency', NULL),
(503, 'select_paypal_currency', NULL),
(504, 'stripe_currency', NULL),
(505, 'select_stripe_currency', NULL),
(506, 'heads_up', NULL),
(507, 'please_make_sure_that', NULL),
(508, 'system_currency', NULL),
(509, 'are_same', NULL),
(510, 'smtp settings', NULL),
(511, 'protocol', NULL),
(512, 'smtp_host', NULL),
(513, 'smtp_port', NULL),
(514, 'smtp_user', NULL),
(515, 'smtp_pass', NULL),
(516, 'update_smtp_settings', NULL),
(517, 'phrase_updated', NULL),
(518, 'registered_user', NULL),
(519, 'provide_your_valid_login_credentials', NULL),
(520, 'registration_form', NULL),
(521, 'provide_your_email_address_to_get_password', NULL),
(522, 'reset_password', NULL),
(523, 'want_to_go_back', NULL),
(524, 'message_sent!', NULL),
(525, 'selected_icon', NULL),
(526, 'pick_another_icon_picker', NULL),
(527, 'show_more', NULL),
(528, 'show_less', NULL),
(529, 'all_category', NULL),
(530, 'price_range', NULL),
(531, 'price_range_withing', NULL),
(532, 'all_categories', NULL),
(533, 'all_sub_category', NULL),
(534, 'number_of_results', NULL),
(535, 'showing_on_this_page', NULL),
(536, 'welcome', NULL),
(537, 'my_account', NULL),
(538, 'logout', NULL),
(539, 'visit_website', NULL),
(540, 'navigation', NULL),
(541, 'add_new_category', NULL),
(542, 'enrolment', NULL),
(543, 'enrol_history', NULL),
(544, 'enrol_a_student', NULL),
(545, 'language_settings', NULL),
(546, 'congratulations', NULL),
(547, 'oh_snap', NULL),
(548, 'close', NULL),
(549, 'parent', NULL),
(550, 'none', NULL),
(551, 'category_thumbnail', NULL),
(552, 'the_image_size_should_be', NULL),
(553, 'choose_thumbnail', NULL),
(554, 'data_added_successfully', NULL),
(555, '', NULL),
(556, 'update_category_form', NULL),
(557, 'student_list', NULL),
(558, 'choose_user_image', NULL),
(559, 'finish', NULL),
(560, 'thank_you', NULL),
(561, 'you_are_almost_there', NULL),
(562, 'you_are_just_one_click_away', NULL),
(563, 'country', NULL),
(564, 'website_settings', NULL),
(565, 'write_down_facebook_url', NULL),
(566, 'write_down_twitter_url', NULL),
(567, 'write_down_linkedin_url', NULL),
(568, 'google_link', NULL),
(569, 'write_down_google_url', NULL),
(570, 'instagram_link', NULL),
(571, 'write_down_instagram_url', NULL),
(572, 'pinterest_link', NULL),
(573, 'write_down_pinterest_url', NULL),
(574, 'update_settings', NULL),
(575, 'upload_banner_image', NULL),
(576, 'update_light_logo', NULL),
(577, 'upload_light_logo', NULL),
(578, 'update_dark_logo', NULL),
(579, 'upload_dark_logo', NULL),
(580, 'update_small_logo', NULL),
(581, 'upload_small_logo', NULL),
(582, 'upload_favicon', NULL),
(583, 'logo_updated', NULL),
(584, 'favicon_updated', NULL),
(585, 'banner_image_update', NULL),
(586, 'frontend_settings_updated', NULL),
(587, 'setup_payment_informations', NULL),
(588, 'update_system_currency', NULL),
(589, 'setup_paypal_settings', NULL),
(590, 'update_paypal_keys', NULL),
(591, 'setup_stripe_settings', NULL),
(592, 'test_mode', NULL),
(593, 'update_stripe_keys', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translator_sentence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translated_sentence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `translator_sentence`, `translated_sentence`, `attachment`, `attachment_type`, `summary`, `order`) VALUES
(1, 'Day 1 Quiz', '00:00:00', 1, 1, NULL, NULL, 1604358000, NULL, 'quiz', '', '', NULL, NULL, '', 4),
(2, 'Lesson 1', '00:00:00', 1, 1, 'html5', 'https://festech.in/assets/learning-videos/meeting-recordings/MR1W1.mp4', 1604358000, NULL, 'video', '', '', NULL, 'url', '', 1),
(3, 'Sample testing', NULL, 1, 1, NULL, NULL, 1604358000, NULL, 'text', 'sample test', 'sample test', NULL, 'field', '', 2),
(4, 'Sample testing2', NULL, 1, 2, NULL, NULL, 1604358000, NULL, 'text', 'sample', 'sample test', NULL, 'field', '', 1),
(5, 'Sample testing3', '00:00:00', 1, 2, NULL, NULL, 1604358000, NULL, 'text', 'This is a test', 'sample test', NULL, 'field', '', 2),
(6, 'sample testing3', '00:00:00', 1, 1, NULL, NULL, 1604358000, 1604358000, 'text', 'This is a test', 'this is a test', NULL, 'field', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--
-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES
(1, 1, 'This is a test question', 'multiple_choice', 2, '[\"True\",\"False\"]', '[\"1\"]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(1, 'Kannada Kali - Day 1', 1, 0),
(2, 'Day 2', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Admin Portal'),
(3, 'system_title', 'SpeakUp Station'),
(4, 'system_email', 'info@festech.in'),
(5, 'address', ''),
(6, 'phone', ''),
(7, 'slogan', 'Learning Management System'),
(8, 'text_align', NULL),
(9, 'system_currency', 'USD'),
(10, 'currency_position', 'left'),
(11, 'website_description', 'Nice application'),
(12, 'website_keywords', ''),
(13, 'footer_text', NULL),
(14, 'footer_link', ''),
(15, 'protocol', 'smtp'),
(16, 'smtp_host', 'ssl://smtp.googlemail.com'),
(17, 'smtp_port', '465'),
(18, 'smtp_user', ''),
(19, 'smtp_pass', ''),
(20, 'version', 'v1'),
(21, 'student_email_verification', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `verification_code`, `status`) VALUES
(1, 'swakhil', 'rao', 'mswakhilrao@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, 1604158354, NULL, '[]', '[]', NULL, '9648748c4c6959e8318470b14badc22f', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

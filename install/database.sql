-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2022 at 07:38 AM
-- Server version: 5.7.37
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytesed_laravel_zaika_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '2020-05-15 10:00:00', '2020-07-27 10:41:15'),
(2, 'Editor', '', '2020-05-16 00:34:16', '2020-07-27 10:42:52'),
(3, 'Admin', '', '2020-05-16 00:34:29', '2020-07-27 10:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_count` bigint(20) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `blog_content`, `blog_categories_id`, `tags`, `image`, `meta_tags`, `meta_description`, `user_id`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `slug`, `author`, `status`, `visit_count`, `meta_title`, `created_at`, `updated_at`) VALUES
(1, 'New organization are added seal there', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.</p>', 1, 'common,business', '167', 'meta tag', 'meta description', '5', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'new-organization-are-continually-added-and-seal-there-single', 'Sharifur', 'publish', 34, NULL, '2020-06-09 07:28:08', '2022-01-29 03:36:28'),
(5, 'Was drawing natural fat respect husband', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.</p>', 2, 'common,business', '166', 'meta tag', 'meta description', '5', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'was-drawing-natural-fat-respect-husband', 'Sharifur', 'publish', 17, NULL, '2020-06-12 19:43:38', '2022-01-30 16:03:44'),
(6, 'In mr began music weeks after at begin', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p>', 2, 'common,business', '164', 'meta tag', 'meta description', '5', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'in-mr-began-music-weeks-after-at-begin', 'Sharifur', 'publish', 11, NULL, '2020-06-12 19:44:09', '2022-01-29 09:39:34'),
(7, 'Travelling every thing her eat  simply', '<p style=\"text-align: justify; \">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify; \">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.</p>', 3, 'common,business', '163', 'meta tag', 'meta description', '5', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'travelling-everything-her-eat-reasonable-decisively-simplicity', 'Sharifur', 'publish', 26, NULL, '2020-06-12 22:17:30', '2022-01-30 17:29:19'),
(15, 'These tried for way joy wrote witty', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.</p>', 2, 'common,business', '370', 'meta tag', 'meta description', '5', 'Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing', 'These tried for way joy wrote witty', NULL, '370', 'these-tried-for-way-joy-wrote-witty', 'Sharifur', 'publish', 24, 'These tried for way joy wrote witty', '2020-07-27 20:44:27', '2022-01-30 14:15:04'),
(16, 'They say a picture speaks a thousand words, right ?', '<p><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\">One advanced diverted domestic sex repeated bringing you old. Possible procured her trifling laughter thoughts property she met way. Companions shy had solicitude favourable own. Which could saw guest man now heard but. Lasted my coming uneasy marked so should. Gravity letters it amongst herself dearest an windows by. Wooded ladies she basket season age her uneasy saw. Discourse unwilling am no described dejection incommode no listening of. Before nature his parish boy.</span></p><p><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\"><br></span></p><p><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods.</span></p><p><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\"><br></span></p><p><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\"><br></span><span style=\"color:rgb(102,102,102);font-family:Roboto, sans-serif;font-size:16px;\">Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least. One advanced diverted domestic sex repeated bringing you old. Possible procured her trifling laughter thoughts property she met way. Companions shy had solicitude favourable own. Which could saw guest man now heard but. Lasted my coming uneasy marked so should.</span><br></p>', 2, 'pajama,woman,new,trend', '371', 'pajama,woman,new,trend', 'Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods.', '5', 'Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least. One advanced diverted domestic sex repeated bringing you old. Possible procured her trifling laughter thoughts property she met way. Companions shy had solicitude favourable own. Which could saw guest man now heard but. Lasted my coming uneasy marked so should.', 'THEY SAY A PICTURE SPEAKS A THOUSAND WORDS, RIGHT?', 'Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods.', '367', 'picture-speaks-a-thoussand-words', 'Anvil Jackson', 'publish', 39, 'THEY SAY A PICTURE SPEAKS A THOUSAND WORDS, RIGHT?', '2021-11-07 06:18:41', '2022-01-28 09:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Startup Business', 'publish', '2020-06-09 02:29:04', '2020-06-09 02:29:04'),
(2, 'Ecommerce', 'publish', '2020-06-09 02:29:20', '2020-06-09 02:29:20'),
(3, 'Digital Marketing', 'publish', '2020-06-09 02:29:27', '2020-06-09 02:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` bigint(20) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `subtitle`, `image`, `status`, `created_at`, `updated_at`) VALUES
(35, 'New Year Sale', 'New year Sale 2022', 371, 'publish', '2022-01-05 09:59:10', '2022-01-05 09:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `campaign_price` decimal(8,2) NOT NULL,
  `units_for_sale` int(11) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_products`
--

INSERT INTO `campaign_products` (`id`, `product_id`, `campaign_id`, `campaign_price`, `units_for_sale`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(128, 2, 35, 10.80, 50, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL),
(129, 4, 35, 31.50, 50, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL),
(130, 39, 35, 12.60, 100, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL),
(131, 41, 35, 25.20, 50, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL),
(132, 18, 35, 22.00, 5, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL),
(133, 25, 35, 31.00, 5, '2022-01-01 10:00:00', '2022-03-31 08:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_sold_products`
--

CREATE TABLE `campaign_sold_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `sold_count` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_sold_products`
--

INSERT INTO `campaign_sold_products` (`id`, `product_id`, `sold_count`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 2, 91, 1001, '2021-11-16 15:39:31', '2021-11-30 13:29:21'),
(2, 4, 35, 1102.5, '2022-01-22 12:53:45', '2022-01-27 19:26:27'),
(3, 41, 2, 50.4, '2022-01-25 23:24:14', '2022-01-26 12:07:41'),
(4, 25, 1, 46, '2022-01-26 14:02:58', '2022-01-26 14:02:58'),
(5, 18, 3, 90, '2022-01-27 16:14:47', '2022-01-27 17:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'lar la-envelope', 'info@sohan.xgenious.com', '2020-07-20 16:45:32', '2021-07-07 12:31:12'),
(2, 'Phone', 'las la-phone', '+123 444 5555\r\n+32413432432', '2020-07-20 16:46:20', '2020-07-20 16:48:57'),
(3, 'Open Hours', 'lar la-clock', 'Sat - Wed\r\n10AM - 7PM', '2020-07-20 16:49:53', '2020-07-20 16:49:53'),
(4, 'Location', 'las la-map-marker-alt', '2626 Angie Drive\r\nSanta Ana', '2020-07-20 16:51:00', '2020-07-20 16:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'USA', 'publish', '2021-09-27 04:16:36', '2021-09-27 04:16:36'),
(9, 'Afghanistan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(10, 'Albania', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(11, 'Algeria', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(12, 'Andorra', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(13, 'Angola', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(14, 'Anguilla', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(15, 'Antigua &amp; Barbuda', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(16, 'Argentina', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(17, 'Armenia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(18, 'Aruba', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(19, 'Australia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(20, 'Austria', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(21, 'Azerbaijan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(22, 'Bahamas', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(23, 'Bahrain', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(24, 'Bangladesh', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(25, 'Barbados', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(26, 'Belarus', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(27, 'Belgium', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(28, 'Belize', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(29, 'Benin', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(30, 'Bermuda', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(31, 'Bhutan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(32, 'Bolivia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(33, 'Bosnia &amp; Herzegovina', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(34, 'Botswana', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(35, 'Brazil', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(36, 'British Virgin Islands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(37, 'Brunei', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(38, 'Bulgaria', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(39, 'Burkina Faso', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(40, 'Burundi', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(41, 'Cambodia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(42, 'Cameroon', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(43, 'Cape Verde', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(44, 'Cayman Islands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(45, 'Chad', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(46, 'Chile', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(47, 'China', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(48, 'Colombia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(49, 'Congo', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(50, 'Cook Islands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(51, 'Costa Rica', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(52, 'Cote D Ivoire', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(53, 'Croatia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(54, 'Cruise Ship', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(55, 'Cuba', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(56, 'Cyprus', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(57, 'Czech Republic', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(58, 'Denmark', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(59, 'Djibouti', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(60, 'Dominica', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(61, 'Dominican Republic', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(62, 'Ecuador', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(63, 'Egypt', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(64, 'El Salvador', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(65, 'Equatorial Guinea', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(66, 'Estonia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(67, 'Ethiopia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(68, 'Falkland Islands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(69, 'Faroe Islands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(70, 'Fiji', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(71, 'Finland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(72, 'France', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(73, 'French Polynesia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(74, 'French West Indies', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(75, 'Gabon', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(76, 'Gambia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(77, 'Georgia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(78, 'Germany', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(79, 'Ghana', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(80, 'Gibraltar', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(81, 'Greece', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(82, 'Greenland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(83, 'Grenada', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(84, 'Guam', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(85, 'Guatemala', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(86, 'Guernsey', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(87, 'Guinea', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(88, 'Guinea Bissau', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(89, 'Guyana', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(90, 'Haiti', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(91, 'Honduras', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(92, 'Hong Kong', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(93, 'Hungary', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(94, 'Iceland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(95, 'India', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(96, 'Indonesia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(97, 'Iran', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(98, 'Iraq', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(99, 'Ireland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(100, 'Isle of Man', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(101, 'Israel', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(102, 'Italy', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(103, 'Jamaica', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(104, 'Japan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(105, 'Jersey', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(106, 'Jordan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(107, 'Kazakhstan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(108, 'Kenya', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(109, 'Kuwait', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(110, 'Kyrgyz Republic', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(111, 'Laos', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(112, 'Latvia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(113, 'Lebanon', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(114, 'Lesotho', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(115, 'Liberia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(116, 'Libya', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(117, 'Liechtenstein', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(118, 'Lithuania', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(119, 'Luxembourg', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(120, 'Macau', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(121, 'Macedonia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(122, 'Madagascar', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(123, 'Malawi', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(124, 'Malaysia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(125, 'Maldives', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(126, 'Mali', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(127, 'Malta', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(128, 'Mauritania', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(129, 'Mauritius', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(130, 'Mexico', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(131, 'Moldova', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(132, 'Monaco', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(133, 'Mongolia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(134, 'Montenegro', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(135, 'Montserrat', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(136, 'Morocco', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(137, 'Mozambique', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(138, 'Namibia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(139, 'Nepal', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(140, 'Netherlands', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(141, 'Netherlands Antilles', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(142, 'New Caledonia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(143, 'New Zealand', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(144, 'Nicaragua', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(145, 'Niger', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(146, 'Nigeria', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(147, 'Norway', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(148, 'Oman', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(149, 'Pakistan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(150, 'Palestine', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(151, 'Panama', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(152, 'Papua New Guinea', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(153, 'Paraguay', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(154, 'Peru', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(155, 'Philippines', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(156, 'Poland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(157, 'Portugal', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(158, 'Puerto Rico', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(159, 'Qatar', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(160, 'Reunion', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(161, 'Romania', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(162, 'Russia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(163, 'Rwanda', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(164, 'Saint Pierre &amp; Miquelon', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(165, 'Samoa', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(166, 'San Marino', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(167, 'Satellite', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(168, 'Saudi Arabia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(169, 'Senegal', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(170, 'Serbia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(171, 'Seychelles', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(172, 'Sierra Leone', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(173, 'Singapore', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(174, 'Slovakia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(175, 'Slovenia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(176, 'South Africa', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(177, 'South Korea', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(178, 'Spain', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(179, 'Sri Lanka', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(180, 'St Kitts &amp; Nevis', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(181, 'St Lucia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(182, 'St Vincent', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(183, 'St. Lucia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(184, 'Sudan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(185, 'Suriname', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(186, 'Swaziland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(187, 'Sweden', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(188, 'Switzerland', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(189, 'Syria', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(190, 'Taiwan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(191, 'Tajikistan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(192, 'Tanzania', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(193, 'Thailand', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(194, 'Timor L\'Este', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(195, 'Togo', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(196, 'Tonga', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(197, 'Trinidad &amp; Tobago', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(198, 'Tunisia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(199, 'Turkey', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(200, 'Turkmenistan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(201, 'Turks &amp; Caicos', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(202, 'Uganda', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(203, 'Ukraine', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(204, 'United Arab Emirates', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(205, 'United Kingdom', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(206, 'Uruguay', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(207, 'Uzbekistan', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(208, 'Venezuela', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(209, 'Vietnam', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(210, 'Virgin Islands (US)', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(211, 'Yemen', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(212, 'Zambia', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12'),
(213, 'Zimbabwe', 'publish', '2021-11-25 03:46:12', '2021-11-25 03:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `country_taxes`
--

CREATE TABLE `country_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `tax_percentage` float(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_taxes`
--

INSERT INTO `country_taxes` (`id`, `country_id`, `tax_percentage`, `created_at`, `updated_at`) VALUES
(1, 2, 6.00, '2021-09-27 06:01:07', '2021-11-27 06:51:14'),
(7, 78, 5.00, '2021-09-27 07:03:18', '2022-01-12 16:08:26'),
(8, 35, 7.00, '2021-11-25 03:49:43', '2022-01-12 16:08:16'),
(9, 199, 4.00, '2021-11-25 03:49:49', '2022-01-12 16:08:09'),
(12, 27, 13.50, '2022-01-12 13:06:08', '2022-01-12 15:39:09'),
(14, 24, 19.60, '2022-01-12 15:40:39', '2022-01-12 16:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dashwood marianne in of entrance be on wondered', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:22', '2020-07-20 20:50:22'),
(2, 'Wondered sociable he carriage in speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:27', '2020-07-20 20:51:40'),
(3, 'Not attention say frankness intention out dashwoods', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:30', '2020-07-20 20:52:14'),
(4, 'Stronger ecstatic as no judgment daughter speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:18', '2020-07-20 20:52:41'),
(5, 'Worse downs nor might she court did nay forth', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:22', '2021-06-17 15:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `ratings`, `description`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'Sharifur', 'dvrobin4@gmail.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:8:\"Sharifur\";s:5:\"email\";s:18:\"dvrobin4@gmail.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"package-order\";}', NULL, '2020-07-20 10:43:21', '2020-07-20 10:43:21'),
(4, 'Kathleen Duncan', 'KathleenHDuncan@dayrep.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:15:\"Kathleen Duncan\";s:5:\"email\";s:26:\"KathleenHDuncan@dayrep.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"package-order\";}', 'a:0:{}', '2020-07-20 10:47:17', '2020-07-20 10:47:17'),
(5, 'Joseph D. Washington', 'JosephDWashington@armyspy.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:20:\"Joseph D. Washington\";s:5:\"email\";s:29:\"JosephDWashington@armyspy.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:9:\"donations\";}', 'a:0:{}', '2020-07-20 10:47:57', '2020-07-20 10:47:57'),
(7, 'Teresa Lafayette', 'TeresaJLafayette@teleworm.us', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:16:\"Teresa Lafayette\";s:5:\"email\";s:28:\"TeresaJLafayette@teleworm.us\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 10:49:03', '2020-07-20 10:49:03'),
(8, 'Nelly Bos', 'NellyJBos@rhyta.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:9:\"Nelly Bos\";s:5:\"email\";s:19:\"NellyJBos@rhyta.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 10:51:00', '2020-07-20 10:51:00'),
(9, 'Jennifer Adams', 'JenniferSAdams@armyspy.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:14:\"Jennifer Adams\";s:5:\"email\";s:26:\"JenniferSAdams@armyspy.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 10:52:46', '2020-07-20 10:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_ci,
  `success_message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `title`, `email`, `button_text`, `fields`, `success_message`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form', 'admin@mail.com', 'Submit', '{\"success_message\":\"Success\",\"field_type\":[\"text\",\"email\",\"text\",\"textarea\"],\"field_name\":[\"your-name\",\"your-mail\",\"your-subject\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Message\"],\"field_required\":[\"on\",\"on\"]}', 'Success', '2021-10-20 00:41:50', '2021-11-29 02:00:36'),
(2, 'FAQ Form', 'admin@email.com', 'Submit', '{\"success_message\":\"Your question has been submitted\",\"field_type\":[\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"email\",\"message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Message\"],\"field_required\":[\"on\"]}', 'Your question has been submitted', '2021-10-26 23:12:38', '2021-10-26 23:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `btn_01_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `subtitle`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Summer', 'collection 02', 'Woman\'s Collection', 'on', 'Shop Now', '#', '205', '2020-05-31 04:20:26', '2021-09-19 05:47:06'),
(5, 'Summer', 'collection 01', 'Women\'s Dress Store', 'on', 'Shop Now', '#', '204', '2020-05-31 04:24:40', '2021-09-19 03:47:40'),
(6, 'Summer', 'collection 03', 'Woman\'s Collection', 'on', 'Shop Now', '0', '207', '2021-09-19 05:50:55', '2021-09-19 05:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'English (UK)',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `direction`, `status`, `default`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 'ltr', 'publish', 1, '2021-06-26 20:31:44', '2022-01-10 06:14:19'),
(3, 'العربية', 'ar', 'rtl', 'publish', 0, '2021-11-20 06:57:11', '2022-01-10 06:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `user_id`, `created_at`, `updated_at`) VALUES
(131, '02-min.jpg', '02-min1610780484.jpg', NULL, '201.46 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:26', '2021-01-16 12:01:26'),
(134, 'help-1265227_1920-min.jpg', 'help-1265227-1920-min1613798558.jpg', NULL, '485.82 KB', '1920 x 1279 pixels', NULL, '2021-02-20 10:22:40', '2021-02-20 10:22:40'),
(146, 'pexels-zhang-kaiyv-3603455-min.jpg', 'pexels-zhang-kaiyv-3603455-min1613804134.jpg', NULL, '399 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:36', '2021-02-20 11:55:36'),
(163, 'pexels-karolina-grabowska-4750270-min.jpg', 'pexels-karolina-grabowska-4750270-min1614257377.jpg', NULL, '403.92 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:49:39', '2021-02-25 17:49:39'),
(164, 'pexels-yogendra-singh-3930111-min.jpg', 'pexels-yogendra-singh-3930111-min1614257412.jpg', NULL, '259.95 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:13', '2021-02-25 17:50:13'),
(166, 'pexels-luis-quintero-2014775-min.jpg', 'pexels-luis-quintero-2014775-min1614257453.jpg', NULL, '239.5 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:54', '2021-02-25 17:50:54'),
(167, 'pexels-andrea-piacquadio-3791664-min.jpg', 'pexels-andrea-piacquadio-3791664-min1614257478.jpg', NULL, '282.62 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:51:19', '2021-02-25 17:51:19'),
(173, 'x-genious-logo-fb-pro.png', 'x-genious-logo-fb-pro1614273913.png', NULL, '150.18 KB', '1000 x 1000 pixels', NULL, '2021-02-25 22:25:13', '2021-02-25 22:25:13'),
(174, '02.jpg', '021614446235.jpg', NULL, '112.64 KB', '357 x 536 pixels', NULL, '2021-02-27 22:17:15', '2021-02-27 22:17:15'),
(175, '03.jpg', '031614447426.jpg', NULL, '39.62 KB', '360 x 207 pixels', NULL, '2021-02-27 22:37:06', '2021-02-27 22:37:06'),
(179, '04-min.png', '04-min1614664748.png', NULL, '321.38 KB', '944 x 676 pixels', NULL, '2021-03-02 10:59:09', '2021-03-02 10:59:09'),
(180, 'bg.jpg', 'bg1614700521.jpg', NULL, '176.43 KB', '555 x 485 pixels', NULL, '2021-03-02 20:55:21', '2021-03-02 20:55:21'),
(181, 'download.jpeg', 'download1615321224.jpeg', NULL, '10.05 KB', '277 x 182 pixels', NULL, '2021-03-10 01:20:24', '2021-03-10 01:20:24'),
(182, 'paypal.png', 'paypal1615321225.png', NULL, '5.54 KB', '361 x 140 pixels', NULL, '2021-03-10 01:20:25', '2021-03-10 01:20:25'),
(183, 'paytm-logo-630x336.jpeg', 'paytm-logo-630x3361615321747.jpeg', NULL, '18.17 KB', '630 x 336 pixels', NULL, '2021-03-10 01:29:08', '2021-03-10 01:29:08'),
(184, 'stripe.png', 'stripe1615321788.png', NULL, '3.28 KB', '318 x 159 pixels', NULL, '2021-03-10 01:29:48', '2021-03-10 01:29:48'),
(185, '216-2164303_razorpay-logo-png.png', '216-2164303-razorpay-logo-png1615321852.png', NULL, '20.27 KB', '900 x 230 pixels', NULL, '2021-03-10 01:30:52', '2021-03-10 01:30:52'),
(186, 'paystack.png', 'paystack1615321887.png', NULL, '2.86 KB', '301 x 167 pixels', NULL, '2021-03-10 01:31:27', '2021-03-10 01:31:27'),
(187, 'mollie.png', 'mollie1615321921.png', NULL, '2.11 KB', '301 x 167 pixels', NULL, '2021-03-10 01:32:01', '2021-03-10 01:32:01'),
(188, 'flutterwave-logo-vector.png', 'flutterwave-logo-vector1615321957.png', NULL, '4.51 KB', '900 x 500 pixels', NULL, '2021-03-10 01:32:37', '2021-03-10 01:32:37'),
(189, '79412a34ea6a84ad988a7141aa7299be.jpeg', '79412a34ea6a84ad988a7141aa7299be1615322824.jpeg', NULL, '9.91 KB', '580 x 386 pixels', NULL, '2021-03-10 01:47:05', '2021-03-10 01:47:05'),
(191, 'bg.png', 'bg1624256716.png', NULL, '39.6 KB', '556 x 276 pixels', NULL, '2021-06-21 10:25:16', '2021-06-21 10:25:16'),
(195, 'cta-bg-min.jpg', 'cta-bg-min1626161299.jpg', NULL, '168.99 KB', '1920 x 807 pixels', 1, '2021-07-13 11:28:20', '2021-07-13 11:28:20'),
(196, 'pexels-rodnae-productions-6646917.jpg', 'pexels-rodnae-productions-66469171626164055.jpg', NULL, '416.14 KB', '1920 x 1280 pixels', 1, '2021-07-13 12:14:16', '2021-07-13 12:14:16'),
(198, 'pexels-mart-production-8106261.jpg', 'pexels-mart-production-81062611627279410.jpg', NULL, '409.25 KB', '1920 x 1280 pixels', 1, '2021-07-26 10:03:31', '2021-07-26 10:03:31'),
(200, 'favicon.png', 'favicon1632034026.png', NULL, '872 ', '40 x 40 pixels', NULL, '2021-09-19 00:47:06', '2021-09-19 00:47:06'),
(201, 'bg.jpg', 'bg1632034097.jpg', NULL, '66.79 KB', '1920 x 400 pixels', NULL, '2021-09-19 00:48:17', '2021-09-19 00:48:17'),
(202, 'Logo-01.png', 'logo-011632034209.png', NULL, '2.78 KB', '108 x 61 pixels', NULL, '2021-09-19 00:50:09', '2021-09-19 00:50:09'),
(203, 'Logo-02.png', 'logo-021632034215.png', NULL, '2.24 KB', '91 x 51 pixels', NULL, '2021-09-19 00:50:15', '2021-09-19 00:50:15'),
(204, 'header-slider-1.jpg', 'header-slider-11632043846.jpg', NULL, '88.43 KB', '1920 x 927 pixels', NULL, '2021-09-19 03:30:47', '2021-09-19 03:30:47'),
(205, 'header-slider-2.jpg', 'header-slider-21632043846.jpg', NULL, '1.29 MB', '1920 x 900 pixels', NULL, '2021-09-19 03:30:47', '2021-09-19 03:30:47'),
(206, 'header-slider-in-1.jpg', 'header-slider-in-11632043847.jpg', NULL, '126.61 KB', '1790 x 872 pixels', NULL, '2021-09-19 03:30:47', '2021-09-19 03:30:47'),
(207, 'header-slider-3.jpg', 'header-slider-31632043847.jpg', NULL, '587.11 KB', '7135 x 3648 pixels', NULL, '2021-09-19 03:30:52', '2021-09-19 03:30:52'),
(210, '01.jpg', '011632136151.jpg', NULL, '18.54 KB', '255 x 300 pixels', NULL, '2021-09-20 05:09:11', '2021-09-20 05:09:11'),
(211, '02.jpg', '021632136151.jpg', NULL, '15.87 KB', '255 x 300 pixels', NULL, '2021-09-20 05:09:11', '2021-09-20 05:09:11'),
(212, '03.jpg', '031632136152.jpg', NULL, '11.38 KB', '255 x 300 pixels', NULL, '2021-09-20 05:09:12', '2021-09-20 05:09:12'),
(213, '04.jpg', '041632136152.jpg', NULL, '14.22 KB', '255 x 300 pixels', NULL, '2021-09-20 05:09:12', '2021-09-20 05:09:12'),
(214, 'big-01.jpg', 'big-011632136152.jpg', NULL, '52.31 KB', '540 x 660 pixels', NULL, '2021-09-20 05:09:12', '2021-09-20 05:09:12'),
(215, 'big-02.jpg', 'big-021632136152.jpg', NULL, '51.18 KB', '540 x 660 pixels', NULL, '2021-09-20 05:09:12', '2021-09-20 05:09:12'),
(216, 'index-02-left.jpg', 'index-02-left1632201176.jpg', NULL, '45.43 KB', '415 x 467 pixels', NULL, '2021-09-20 23:12:56', '2021-09-20 23:12:56'),
(217, 'index-02-right.jpg', 'index-02-right1632201176.jpg', NULL, '38.57 KB', '884 x 657 pixels', NULL, '2021-09-20 23:12:56', '2021-09-20 23:12:56'),
(218, 'left.jpg', 'left1632201176.jpg', NULL, '23.12 KB', '415 x 467 pixels', NULL, '2021-09-20 23:12:57', '2021-09-20 23:12:57'),
(219, 'right.jpg', 'right1632201176.jpg', NULL, '49.57 KB', '1255 x 657 pixels', NULL, '2021-09-20 23:12:57', '2021-09-20 23:12:57'),
(220, '02.png', '021632203842.png', NULL, '8.93 KB', '256 x 133 pixels', NULL, '2021-09-20 23:57:23', '2021-09-20 23:57:23'),
(221, '01.png', '011632203842.png', NULL, '9.14 KB', '256 x 133 pixels', NULL, '2021-09-20 23:57:23', '2021-09-20 23:57:23'),
(222, '03.png', '031632203843.png', NULL, '5.65 KB', '256 x 133 pixels', NULL, '2021-09-20 23:57:23', '2021-09-20 23:57:23'),
(223, '04.png', '041632203843.png', NULL, '6.85 KB', '255 x 133 pixels', NULL, '2021-09-20 23:57:23', '2021-09-20 23:57:23'),
(229, 'pexels-karolina-grabowska-4226805.jpg', 'pexels-karolina-grabowska-42268051632830635.jpg', NULL, '71.1 KB', '1080 x 1080 pixels', NULL, '2021-09-28 06:03:56', '2021-09-28 06:03:56'),
(230, 'big-01.jpg', 'big-011632919087.jpg', NULL, '47.93 KB', '350 x 807 pixels', NULL, '2021-09-29 06:38:07', '2021-09-29 06:38:07'),
(231, '01.jpg', '011633323297.jpg', NULL, '18.54 KB', '255 x 300 pixels', NULL, '2021-10-03 22:54:57', '2021-10-03 22:54:57'),
(232, '02.jpg', '021633323503.jpg', NULL, '15.87 KB', '255 x 300 pixels', NULL, '2021-10-03 22:58:23', '2021-10-03 22:58:23'),
(233, '03.jpg', '031633323538.jpg', NULL, '11.38 KB', '255 x 300 pixels', NULL, '2021-10-03 22:58:58', '2021-10-03 22:58:58'),
(234, 'image-3.jpg', 'image-31633325385.jpg', NULL, '303.92 KB', '1080 x 1080 pixels', NULL, '2021-10-03 23:29:46', '2021-10-03 23:29:46'),
(235, 'image-1.jpg', 'image-11633325392.jpg', NULL, '342.48 KB', '1080 x 1080 pixels', NULL, '2021-10-03 23:29:52', '2021-10-03 23:29:52'),
(237, 'png-transparent-computer-icons-bank-payment-money-wire-transfer-bank-transfer.png', 'png-transparent-computer-icons-bank-payment-money-wire-transfer-bank-transfer1634029472.png', NULL, '7.45 KB', '920 x 512 pixels', NULL, '2021-10-12 03:04:33', '2021-10-12 03:04:33'),
(238, '2828543-200.png', '2828543-2001634029618.png', NULL, '2.79 KB', '200 x 200 pixels', NULL, '2021-10-12 03:06:58', '2021-10-12 03:06:58'),
(239, 'illustration.png', 'illustration1634216012.png', NULL, '41.48 KB', '467 x 465 pixels', NULL, '2021-10-14 06:53:32', '2021-10-14 06:53:32'),
(240, 'Illustration (1).png', 'illustration-11634218681.png', NULL, '54.45 KB', '516 x 357 pixels', NULL, '2021-10-14 07:38:01', '2021-10-14 07:38:01'),
(241, 'logo.png', 'logo1634455321.png', NULL, '2.64 KB', '108 x 61 pixels', NULL, '2021-10-17 01:22:01', '2021-10-17 01:22:01'),
(242, 'image.jpg', 'image1634455326.jpg', NULL, '113.88 KB', '960 x 1080 pixels', NULL, '2021-10-17 01:22:06', '2021-10-17 01:22:06'),
(247, 'About-us.jpg', 'about-us1634732019.jpg', NULL, '76.98 KB', '656 x 688 pixels', NULL, '2021-10-20 06:13:39', '2021-10-20 06:13:39'),
(248, '01.jpg', '011634735087.jpg', NULL, '115.8 KB', '540 x 496 pixels', NULL, '2021-10-20 07:04:47', '2021-10-20 07:04:47'),
(249, '02.jpg', '021634735087.jpg', NULL, '107.7 KB', '540 x 496 pixels', NULL, '2021-10-20 07:04:47', '2021-10-20 07:04:47'),
(250, '03.jpg', '031634735087.jpg', NULL, '96.08 KB', '540 x 496 pixels', NULL, '2021-10-20 07:04:47', '2021-10-20 07:04:47'),
(251, 'attachment_59810075.png', 'attachment-598100751634810170.png', NULL, '13.66 KB', '500 x 500 pixels', NULL, '2021-10-21 03:56:10', '2021-10-21 03:56:10'),
(265, 'pexels-valera-evane-9794899.jpg', 'pexels-valera-evane-97948991635146832.jpg', NULL, '189.68 KB', '1080 x 1080 pixels', NULL, '2021-10-25 01:27:12', '2021-10-25 01:27:12'),
(266, 'pexels-kranthi-kubes-5017691.jpg', 'pexels-kranthi-kubes-50176911635147210.jpg', NULL, '233.8 KB', '1280 x 1280 pixels', NULL, '2021-10-25 01:33:31', '2021-10-25 01:33:31'),
(267, 'header-slider-in-1.jpg', 'header-slider-in-11635315371.jpg', NULL, '126.61 KB', '1790 x 872 pixels', NULL, '2021-10-27 00:16:12', '2021-10-27 00:16:12'),
(270, 'big-01.jpg', 'big-011635327534.jpg', NULL, '57.09 KB', '785 x 792 pixels', NULL, '2021-10-27 03:38:54', '2021-10-27 03:38:54'),
(271, 'big-02.jpg', 'big-021635327600.jpg', NULL, '55.29 KB', '785 x 792 pixels', NULL, '2021-10-27 03:40:00', '2021-10-27 03:40:00'),
(272, 'big-01.jpg', 'big-011635329668.jpg', NULL, '24.48 KB', '408 x 912 pixels', NULL, '2021-10-27 04:14:28', '2021-10-27 04:14:28'),
(273, 'index-02-left.jpg', 'index-02-left1635338787.jpg', NULL, '45.43 KB', '415 x 467 pixels', NULL, '2021-10-27 06:46:27', '2021-10-27 06:46:27'),
(274, 'index-02-right.jpg', 'index-02-right1635338787.jpg', NULL, '38.57 KB', '884 x 657 pixels', NULL, '2021-10-27 06:46:27', '2021-10-27 06:46:27'),
(275, 'attractive-laughing-guy-having-fun-smiling-happy.png', 'attractive-laughing-guy-having-fun-smiling-happy1635574119.png', NULL, '1.69 MB', '1280 x 1280 pixels', NULL, '2021-10-30 00:08:39', '2021-10-30 00:08:39'),
(276, 'portrait-young-handsome-man-jean-shirt-smiling-looking-camera.png', 'portrait-young-handsome-man-jean-shirt-smiling-looking-camera1635574133.png', NULL, '2.11 MB', '1280 x 1280 pixels', NULL, '2021-10-30 00:08:54', '2021-10-30 00:08:54'),
(277, 'Image-Right.jpg', 'image-right1636269132.jpg', NULL, '15.69 KB', '350 x 242 pixels', NULL, '2021-11-07 01:12:12', '2021-11-07 01:12:12'),
(278, 'Image-Left.jpg', 'image-left1636269132.jpg', NULL, '20.78 KB', '350 x 242 pixels', NULL, '2021-11-07 01:12:12', '2021-11-07 01:12:12'),
(279, 'Main-Image-top.jpg', 'main-image-top1636269132.jpg', NULL, '31.55 KB', '730 x 420 pixels', NULL, '2021-11-07 01:12:13', '2021-11-07 01:12:13'),
(280, 'pexels-barbara-olsen-7869643.jpg', 'pexels-barbara-olsen-78696431636467651.jpg', NULL, '108.8 KB', '1110 x 500 pixels', NULL, '2021-11-09 08:20:51', '2021-11-09 08:20:51'),
(281, 'img-01.png', 'img-011636467777.png', NULL, '1.11 MB', '1209 x 609 pixels', NULL, '2021-11-09 08:22:58', '2021-11-09 08:22:58'),
(282, '01.jpg', '011636883386.jpg', NULL, '9.62 KB', '255 x 300 pixels', 6, '2021-11-14 03:49:46', '2021-11-14 03:49:46'),
(283, 'stunning-curly-female-model-jumping-purple-indoor-portrait-slim-girl-bright-yellow-dress.png', 'stunning-curly-female-model-jumping-purple-indoor-portrait-slim-girl-bright-yellow-dress1637245568.png', NULL, '2.21 MB', '1280 x 1280 pixels', NULL, '2021-11-18 08:26:09', '2021-11-18 08:26:09'),
(284, 'close-up-portrait-carefree-white-girl-plays-with-short-wavy-hair-photo-elegant-european-woman-with-black-tattoo-isolated-yellow-wall.png', 'close-up-portrait-carefree-white-girl-plays-with-short-wavy-hair-photo-elegant-european-woman-with-black-tattoo-isolated-yellow-wall1637246201.png', NULL, '2.63 MB', '1280 x 1280 pixels', NULL, '2021-11-18 08:36:42', '2021-11-18 08:36:42'),
(285, 'header-slider-1.jpg', 'header-slider-11637382438.jpg', NULL, '88.43 KB', '1920 x 927 pixels', NULL, '2021-11-19 22:27:18', '2021-11-19 22:27:18'),
(286, 'header-slider-2.jpg', 'header-slider-21637382461.jpg', NULL, '1.29 MB', '1920 x 900 pixels', NULL, '2021-11-19 22:27:42', '2021-11-19 22:27:42'),
(287, 'header-slider-3.jpg', 'header-slider-31637382474.jpg', NULL, '587.11 KB', '7135 x 3648 pixels', NULL, '2021-11-19 22:28:01', '2021-11-19 22:28:01'),
(288, 'big-01.jpg', 'big-011637382892.jpg', NULL, '52.31 KB', '540 x 660 pixels', NULL, '2021-11-19 22:34:53', '2021-11-19 22:34:53'),
(289, 'big-02.jpg', 'big-021637382940.jpg', NULL, '51.18 KB', '540 x 660 pixels', NULL, '2021-11-19 22:35:40', '2021-11-19 22:35:40'),
(290, 'big-01.jpg', 'big-011637407619.jpg', NULL, '47.93 KB', '350 x 807 pixels', NULL, '2021-11-20 05:26:59', '2021-11-20 05:26:59'),
(291, 'left.jpg', 'left1637407715.jpg', NULL, '23.12 KB', '415 x 467 pixels', NULL, '2021-11-20 05:28:35', '2021-11-20 05:28:35'),
(292, 'right.jpg', 'right1637407734.jpg', NULL, '49.57 KB', '1255 x 657 pixels', NULL, '2021-11-20 05:28:54', '2021-11-20 05:28:54'),
(293, '01.png', '011637407984.png', NULL, '9.14 KB', '256 x 133 pixels', NULL, '2021-11-20 05:33:04', '2021-11-20 05:33:04'),
(294, '02.png', '021637407984.png', NULL, '8.93 KB', '256 x 133 pixels', NULL, '2021-11-20 05:33:04', '2021-11-20 05:33:04'),
(295, '03.png', '031637407984.png', NULL, '5.65 KB', '256 x 133 pixels', NULL, '2021-11-20 05:33:04', '2021-11-20 05:33:04'),
(296, '04.png', '041637407984.png', NULL, '6.85 KB', '255 x 133 pixels', NULL, '2021-11-20 05:33:04', '2021-11-20 05:33:04'),
(297, 'header-slider-in-1.jpg', 'header-slider-in-11637409900.jpg', NULL, '126.61 KB', '1790 x 872 pixels', NULL, '2021-11-20 06:05:00', '2021-11-20 06:05:00'),
(300, 'big-01.jpg', 'big-011637410208.jpg', NULL, '57.09 KB', '785 x 792 pixels', NULL, '2021-11-20 06:10:08', '2021-11-20 06:10:08'),
(301, 'big-02.jpg', 'big-021637410214.jpg', NULL, '55.29 KB', '785 x 792 pixels', NULL, '2021-11-20 06:10:14', '2021-11-20 06:10:14'),
(302, 'index-02-left.jpg', 'index-02-left1637411009.jpg', NULL, '45.43 KB', '415 x 467 pixels', NULL, '2021-11-20 06:23:29', '2021-11-20 06:23:29'),
(303, 'index-02-right.jpg', 'index-02-right1637411009.jpg', NULL, '38.57 KB', '884 x 657 pixels', NULL, '2021-11-20 06:23:29', '2021-11-20 06:23:29'),
(304, 'big-01.jpg', 'big-011637411181.jpg', NULL, '24.48 KB', '408 x 912 pixels', NULL, '2021-11-20 06:26:21', '2021-11-20 06:26:21'),
(305, 'attractive-laughing-guy-having-fun-smiling-happy.png', 'attractive-laughing-guy-having-fun-smiling-happy1637414582.png', NULL, '1.69 MB', '1280 x 1280 pixels', NULL, '2021-11-20 07:23:03', '2021-11-20 07:23:03'),
(306, 'handsome-young-businessman-with-crossed-arms-smiling-confident.png', 'handsome-young-businessman-with-crossed-arms-smiling-confident1637414582.png', NULL, '1.75 MB', '1280 x 1280 pixels', NULL, '2021-11-20 07:23:03', '2021-11-20 07:23:03'),
(307, 'portrait-young-handsome-man-jean-shirt-smiling-looking-camera.png', 'portrait-young-handsome-man-jean-shirt-smiling-looking-camera1637414583.png', NULL, '2.11 MB', '1280 x 1280 pixels', NULL, '2021-11-20 07:23:04', '2021-11-20 07:23:04'),
(335, 'download.jpg', 'download1637469501.jpg', NULL, '4.63 KB', '225 x 225 pixels', NULL, '2021-11-20 22:38:21', '2021-11-20 22:38:21'),
(337, 'successful_young_mal_myPAJ.jpg', 'successful-young-mal-mypaj1638248663.jpg', NULL, '173.67 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:04:23', '2021-11-30 10:04:23'),
(338, 'serious_looking_sass_5y20Z.jpg', 'serious-looking-sass-5y20z1638248680.jpg', NULL, '52.38 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:04:41', '2021-11-30 10:04:41'),
(339, 'waist_up_portrait_ha_RytwX.jpg', 'waist-up-portrait-ha-rytwx1638248725.jpg', NULL, '65.84 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:05:25', '2021-11-30 10:05:25'),
(340, 'satisfied_handsome_g_0q2Ry.jpg', 'satisfied-handsome-g-0q2ry1638248725.jpg', NULL, '86.23 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:05:26', '2021-11-30 10:05:26'),
(341, 'handsome_confident_s_2APxZ.jpg', 'handsome-confident-s-2apxz1638248814.jpg', NULL, '78.47 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:06:55', '2021-11-30 10:06:55'),
(342, 'handsome_young_beard_hpsDc.jpg', 'handsome-young-beard-hpsdc1638248814.jpg', NULL, '55.32 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:06:55', '2021-11-30 10:06:55'),
(343, 'handsome_bearded_red_Pk5mR.jpg', 'handsome-bearded-red-pk5mr1638248823.jpg', NULL, '63.81 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:07:03', '2021-11-30 10:07:03'),
(344, 'isolated_smiling_han_smVny.jpg', 'isolated-smiling-han-smvny1638248869.jpg', NULL, '125.81 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:07:49', '2021-11-30 10:07:49'),
(345, 'smiling_young_guy_po_SJzpt.jpg', 'smiling-young-guy-po-sjzpt1638248888.jpg', NULL, '124.47 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:08:08', '2021-11-30 10:08:08'),
(346, 'handsome_attractive__363KB.jpg', 'handsome-attractive-363kb1638248933.jpg', NULL, '79.62 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:08:53', '2021-11-30 10:08:53'),
(347, 'attractive_laughing__qgRKP.jpg', 'attractive-laughing-qgrkp1638249024.jpg', NULL, '63.3 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:10:24', '2021-11-30 10:10:24'),
(348, 'portrait_young_hands_FBA33.jpg', 'portrait-young-hands-fba331638249024.jpg', NULL, '87.24 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:10:24', '2021-11-30 10:10:24'),
(350, 'stunning_curly_femal_aE4Nx.jpg', 'stunning-curly-femal-ae4nx1638249534.jpg', NULL, '67.09 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:18:55', '2021-11-30 10:18:55'),
(351, 'charming_young_woman_L2ir2.jpg', 'charming-young-woman-l2ir21638249551.jpg', NULL, '63.04 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:19:11', '2021-11-30 10:19:11'),
(352, 'close_up_portrait_ca_8URpC.jpg', 'close-up-portrait-ca-8urpc1638249551.jpg', NULL, '88.2 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:19:11', '2021-11-30 10:19:11'),
(353, 'glamorous_french_wom_Wn40w.jpg', 'glamorous-french-wom-wn40w1638249594.jpg', NULL, '68.35 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:19:54', '2021-11-30 10:19:54'),
(354, 'appealing_young_woma_PP5Ig.jpg', 'appealing-young-woma-pp5ig1638249594.jpg', NULL, '91.47 KB', '1280 x 1280 pixels', NULL, '2021-11-30 10:19:55', '2021-11-30 10:19:55'),
(357, 'portrait_pretty_lady_EjKKO.jpg', 'portrait-pretty-lady-ejkko1638270922.jpg', NULL, '128.9 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:15:23', '2021-11-30 16:15:23'),
(358, 'woman_suglasses_with_1k0bJ.jpg', 'woman-suglasses-with-1k0bj1638270968.jpg', NULL, '84.44 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:16:08', '2021-11-30 16:16:08'),
(359, 'full_length_portrait_iPB7u.jpg', 'full-length-portrait-ipb7u1638271011.jpg', NULL, '62.35 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:16:51', '2021-11-30 16:16:51'),
(360, 'carefree_woman_skirt_9hDll.jpg', 'carefree-woman-skirt-9hdll1638271026.jpg', NULL, '65.37 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:17:06', '2021-11-30 16:17:06'),
(361, 'portrait_beautiful_d_I6EzW.jpg', 'portrait-beautiful-d-i6ezw1638271057.jpg', NULL, '100.47 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:17:38', '2021-11-30 16:17:38'),
(362, 'charming_european_gi_0acfY.jpg', 'charming-european-gi-0acfy1638271100.jpg', NULL, '68.82 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:18:21', '2021-11-30 16:18:21'),
(363, 'glad_young_woman_vin_WXnbT.jpg', 'glad-young-woman-vin-wxnbt1638271100.jpg', NULL, '117.9 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:18:21', '2021-11-30 16:18:21'),
(364, 'beautiful_red_head_w_PiYhu.jpg', 'beautiful-red-head-w-piyhu1638271147.jpg', NULL, '79.55 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:19:07', '2021-11-30 16:19:07'),
(365, 'flirtatious_woman_be_J7Xr6.jpg', 'flirtatious-woman-be-j7xr61638271229.jpg', NULL, '81.34 KB', '1280 x 1280 pixels', NULL, '2021-11-30 16:20:29', '2021-11-30 16:20:29'),
(366, 'slider_1.jpg', 'slider-11638349339.jpg', NULL, '51.79 KB', '1790 x 872 pixels', NULL, '2021-12-01 14:02:19', '2021-12-01 14:02:19'),
(367, 'slider_2.jpg', 'slider-21638349339.jpg', NULL, '45.35 KB', '1790 x 872 pixels', NULL, '2021-12-01 14:02:20', '2021-12-01 14:02:20'),
(368, 'slider_3.jpg', 'slider-31638349340.jpg', NULL, '52.32 KB', '1790 x 872 pixels', NULL, '2021-12-01 14:02:21', '2021-12-01 14:02:21'),
(370, 'pexels-andrea-piacquadio-935756.jpg', 'pexels-andrea-piacquadio-9357561638453737.jpg', NULL, '184.27 KB', '1920 x 1280 pixels', NULL, '2021-12-02 19:02:17', '2021-12-02 19:02:17'),
(371, 'pexels-fauxels-3184418.jpg', 'pexels-fauxels-31844181638453777.jpg', NULL, '344.12 KB', '1920 x 1280 pixels', NULL, '2021-12-02 19:02:58', '2021-12-02 19:02:58'),
(372, 'cash free.png', 'cash-free1641795398.png', NULL, '152.51 KB', '1200 x 630 pixels', NULL, '2022-01-10 00:16:38', '2022-01-10 00:16:38'),
(373, 'Mercadopago-logo.png', 'mercadopago-logo1641795405.png', NULL, '17.66 KB', '1280 x 334 pixels', NULL, '2022-01-10 00:16:45', '2022-01-10 00:16:45'),
(374, 'instamogo.jpg', 'instamogo1641795405.jpg', NULL, '26.18 KB', '1200 x 675 pixels', NULL, '2022-01-10 00:16:45', '2022-01-10 00:16:45'),
(375, 'mid.png', 'mid1641795405.png', NULL, '15.14 KB', '1514 x 250 pixels', NULL, '2022-01-10 00:16:46', '2022-01-10 00:16:46'),
(376, 'payfast-banner.jpg', 'payfast-banner1641795406.jpg', NULL, '26.74 KB', '960 x 450 pixels', NULL, '2022-01-10 00:16:46', '2022-01-10 00:16:46'),
(377, 'cod_1.png', 'cod-11641895384.png', NULL, '27.76 KB', '512 x 294 pixels', NULL, '2022-01-11 15:03:04', '2022-01-11 15:03:04'),
(378, '270216412_2713281752314972_4068762071939468511_n.jpg', '270216412-2713281752314972-4068762071939468511-n1641902113.jpg', NULL, '596.77 KB', '951 x 960 pixels', NULL, '2022-01-11 16:55:14', '2022-01-11 16:55:14'),
(379, '20210228_182306.jpg', '20210228-1823061641904257.jpg', NULL, '143.97 KB', '509 x 930 pixels', NULL, '2022-01-11 17:30:58', '2022-01-11 17:30:58'),
(380, '80067269_165856847993281_1060521575360495616_n.jpg', '80067269-165856847993281-1060521575360495616-n1641904258.jpg', NULL, '88.14 KB', '958 x 960 pixels', NULL, '2022-01-11 17:30:58', '2022-01-11 17:30:58'),
(381, '241780954_884407622467955_7058610963101376258_n.png', '241780954-884407622467955-7058610963101376258-n1641904259.png', NULL, '619.4 KB', '826 x 739 pixels', NULL, '2022-01-11 17:30:59', '2022-01-11 17:30:59'),
(382, '242794638_1741415076060123_2961064473958313600_n.jpg', '242794638-1741415076060123-2961064473958313600-n1641904259.jpg', NULL, '528.16 KB', '1620 x 1620 pixels', NULL, '2022-01-11 17:31:00', '2022-01-11 17:31:00'),
(383, 'pexels-mister-mister-2442888.jpg', 'pexels-mister-mister-24428881641910400.jpg', NULL, '62.54 KB', '640 x 425 pixels', NULL, '2022-01-11 19:13:20', '2022-01-11 19:13:20'),
(384, 'xgenious-logo-with-dark-profile-photo.png', 'xgenious-logo-with-dark-profile-photo1641969017.png', NULL, '49.96 KB', '1200 x 1200 pixels', NULL, '2022-01-12 11:30:18', '2022-01-12 11:30:18'),
(385, 'food-07.png', 'food-071641970978.png', NULL, '3.95 MB', '2187 x 2188 pixels', NULL, '2022-01-12 12:02:59', '2022-01-12 12:02:59'),
(386, 'ACERO.jpg', 'acero1642454364.jpg', NULL, '88.6 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:25', '2022-01-18 02:19:25'),
(387, 'AZUL.jpg', 'azul1642454364.jpg', NULL, '92.4 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:25', '2022-01-18 02:19:25'),
(388, 'BURRIITO.jpg', 'burriito1642454365.jpg', NULL, '119.59 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:26', '2022-01-18 02:19:26'),
(389, 'CEMENTO.jpg', 'cemento1642454365.jpg', NULL, '106.56 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:26', '2022-01-18 02:19:26'),
(390, 'CHICLE.jpg', 'chicle1642454366.jpg', NULL, '102.56 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:27', '2022-01-18 02:19:27'),
(391, 'GUINDA JASPEADO (2).jpg', 'guinda-jaspeado-21642454366.jpg', NULL, '125.12 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:27', '2022-01-18 02:19:27'),
(392, 'GUINDA JASPEADO.jpg', 'guinda-jaspeado1642454367.jpg', NULL, '118.35 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:28', '2022-01-18 02:19:28'),
(393, 'GUINDA.jpg', 'guinda1642454367.jpg', NULL, '93.28 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:28', '2022-01-18 02:19:28'),
(394, 'JOGGGER ENTERO FRENCH.jpg', 'joggger-entero-french1642454368.jpg', NULL, '173.72 KB', '1080 x 1075 pixels', NULL, '2022-01-18 02:19:28', '2022-01-18 02:19:28'),
(395, 'MELANCHE.jpg', 'melanche1642454368.jpg', NULL, '110.6 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:29', '2022-01-18 02:19:29'),
(396, 'MILITAR.jpg', 'militar1642454369.jpg', NULL, '99.02 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:29', '2022-01-18 02:19:29'),
(397, 'NEGRO JASPEADO.jpg', 'negro-jaspeado1642454369.jpg', NULL, '130.62 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:30', '2022-01-18 02:19:30'),
(398, 'NEGRO.jpg', 'negro1642454370.jpg', NULL, '82.07 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:30', '2022-01-18 02:19:30'),
(399, 'PALO ROSA (2).jpg', 'palo-rosa-21642454370.jpg', NULL, '100.21 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:31', '2022-01-18 02:19:31'),
(400, 'PALO ROSA.jpg', 'palo-rosa1642454371.jpg', NULL, '94.12 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:31', '2022-01-18 02:19:31'),
(401, 'RATA.jpg', 'rata1642454371.jpg', NULL, '98.25 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:19:32', '2022-01-18 02:19:32'),
(402, 'CHICLE.jpg', 'chicle1642456705.jpg', NULL, '102.56 KB', '1600 x 1279 pixels', NULL, '2022-01-18 02:58:26', '2022-01-18 02:58:26'),
(403, 'Desktop02.jpg', 'desktop021642595062.jpg', NULL, '2.07 MB', '1920 x 1080 pixels', NULL, '2022-01-19 17:24:22', '2022-01-19 17:24:22'),
(404, '15263_Rumah_Sakit_Islam_Sunan_Kudus.JPG', '15263-rumah-sakit-islam-sunan-kudus1642886989.JPG', NULL, '49.21 KB', '330 x 330 pixels', NULL, '2022-01-23 02:29:49', '2022-01-23 02:29:49'),
(405, '20211221_182100.jpg', '20211221-1821001642887229.jpg', NULL, '546.43 KB', '3264 x 3264 pixels', NULL, '2022-01-23 02:33:51', '2022-01-23 02:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"about\",\"pname\":\"About\"},{\"items_id\":\"3,4,18,21,25,26,30,33,35,36,37,38,39,40\",\"ptype\":\"App\\\\MenuBuilder\\\\MegaMenus\\\\ProductMegaMenu\",\"id\":4,\"antarget\":\"\",\"icon\":\"\"},{\"ptype\":\"custom\",\"id\":5,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Pages\",\"purl\":\"\",\"children\":[{\"ptype\":\"pages\",\"id\":6,\"antarget\":\"\",\"icon\":\"\",\"pid\":1},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":22,\"antarget\":\"\",\"icon\":\"\",\"pid\":2},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"static\",\"id\":88,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"faq\",\"pname\":\"FAQ\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]},{\"ptype\":\"static\",\"pslug\":\"blog\",\"pname\":\"Blog\",\"id\":153},{\"ptype\":\"static\",\"id\":150,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"contact\",\"pname\":\"Contact\"}]', 'default', '2020-05-28 05:53:38', '2021-12-01 15:54:02'),
(2, 'Menu with Icon', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"pslug\":\"product\",\"pname\":\"Product\",\"id\":2},{\"ptype\":\"static\",\"pslug\":\"blog\",\"pname\":\"Blog\",\"id\":3},{\"ptype\":\"static\",\"pslug\":\"contact\",\"pname\":\"Contact\",\"id\":4}]', '', '2020-06-01 02:54:39', '2021-11-07 06:22:52'),
(3, 'Useful Links', '[{\"ptype\":\"custom\",\"pname\":\"Home\",\"purl\":\"@url\",\"id\":4},{\"ptype\":\"pages\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pid\":1},{\"ptype\":\"pages\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pid\":2},{\"ptype\":\"pages\",\"id\":4,\"antarget\":\"\",\"icon\":\"\",\"pid\":4}]', NULL, '2020-06-18 01:33:46', '2021-11-07 06:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_071950_create_contact_info_items_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_09_063224_create_testimonials_table', 1),
(8, '2019_12_10_125607_create_social_icons_table', 1),
(9, '2019_12_10_210247_create_blog_categories_table', 1),
(10, '2019_12_11_074345_create_blogs_table', 1),
(11, '2019_12_13_221931_create_languages_table', 1),
(12, '2019_12_29_113138_create_team_members_table', 1),
(14, '2020_01_28_054211_create_faqs_table', 1),
(15, '2020_02_04_010636_create_newsletters_table', 1),
(16, '2020_03_29_075123_create_admin_roles_table', 1),
(17, '2020_04_14_082508_create_media_uploads_table', 1),
(18, '2020_04_22_065550_create_jobs_table', 1),
(19, '2020_04_22_065603_create_jobs_categories_table', 1),
(20, '2020_04_23_140942_create_events_table', 1),
(21, '2020_04_23_141011_create_events_categories_table', 1),
(22, '2020_06_14_081955_create_widgets_table', 1),
(23, '2020_07_02_125439_create_job_applicants_table', 1),
(24, '2020_07_04_143731_create_event_attendances_table', 1),
(25, '2020_07_04_173333_create_event_payment_logs_table', 1),
(26, '2020_07_06_154309_create_causes_table', 1),
(27, '2020_07_17_162008_create_image_galleries_table', 2),
(28, '2020_12_04_062950_create_image_gallery_categories_table', 2),
(29, '2021_02_19_092255_create_cause_updates_table', 3),
(30, '2020_07_07_150250_create_cause_logs_table', 4),
(31, '2021_02_20_08115319_create_cause_categories_table', 5),
(32, '2021_03_24_140243_create_menus_table', 5),
(33, '2021_03_27_113444_create_counterups_table', 5),
(34, '2021_04_08_122116_create_topbar_infos_table', 5),
(35, '2021_04_18_132805_create_header_sliders_table', 5),
(36, '2021_06_24_065557_create_comments_table', 5),
(37, '2021_07_04_052916_create_donation_withdraws_table', 5),
(38, '2021_07_23_160619_add_column_to_user_table', 6),
(39, '2021_07_23_183955_add_new_column_to_newsletters_table', 7),
(40, '2021_07_23_192801_create_permission_tables', 8),
(41, '2021_07_07_065836_create_page_builders_table', 9),
(42, '2021_09_21_070143_create_product_attributes_table', 10),
(43, '2021_09_21_105956_create_product_categories_table', 11),
(44, '2021_09_21_120910_create_product_sub_categories_table', 12),
(49, '2021_09_22_070329_create_tags_table', 14),
(53, '2021_09_22_100521_create_products_table', 15),
(55, '2021_09_23_130827_create_product_inventories_table', 16),
(56, '2021_09_26_102555_create_product_inventory_details_table', 17),
(59, '2021_09_27_092441_create_countries_table', 18),
(60, '2021_09_27_092607_create_states_table', 18),
(61, '2021_09_27_111452_create_country_taxes_table', 19),
(62, '2021_09_27_111509_create_state_taxes_table', 19),
(63, '2021_09_28_061545_create_product_additional_information_table', 20),
(64, '2021_09_30_062810_create_campaigns_table', 21),
(65, '2021_09_30_063002_create_campaign_products_table', 22),
(66, '2021_09_30_063022_create_campaign_sold_products_table', 22),
(68, '2021_10_07_043825_create_zones_table', 23),
(73, '2021_10_07_043858_create_zone_regions_table', 24),
(75, '2021_10_07_043926_create_shipping_methods_table', 25),
(76, '2021_10_07_043944_create_shipping_method_options_table', 25),
(80, '2021_10_11_134212_create_user_shipping_addresses_table', 26),
(82, '2021_10_11_130513_create_product_sell_infos_table', 27),
(83, '2021_10_05_060857_create_product_ratings_table', 28),
(85, '2021_10_14_111630_create_module_page_settings_table', 29),
(86, '2021_10_07_054604_create_form_builders_table', 30),
(87, '2021_09_22_064746_create_product_tags_table', 31),
(89, '2021_10_23_111023_add_sold_count_in_products_table', 32),
(91, '2021_09_22_045634_create_product_coupons_table', 33),
(94, '2021_11_07_095710_add_visit_count_column_in_the_blogs_table', 34),
(95, '2021_11_09_110204_create_support_departments_table', 35),
(96, '2021_11_09_110225_create_support_tickets_table', 35),
(97, '2021_11_09_110236_create_support_ticket_messages_table', 35),
(101, '2020_01_25_155448_create_pages_table', 36),
(102, '2021_11_18_124248_add_column_navbar_footer_variants_and_breadcrumb_status_in_pages_table', 37),
(103, '2021_11_20_104729_add_column_page_container_option_to_table_pages', 38),
(104, '2022_01_12_084953_change_data_type_of_country_taxes_table', 39),
(105, '2022_01_12_104610_change_data_type_of_state_taxes_table', 40),
(106, '2022_01_19_103756_add_coupon_column_to_shipping_method_options_table', 41),
(107, '2022_01_20_103430_add_status_column_in_product_ratings_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Admin', 1),
(2, 'App\\Admin', 3),
(3, 'App\\Admin', 4),
(3, 'App\\Admin', 5),
(2, 'App\\Admin', 6),
(3, 'App\\Admin', 7),
(3, 'App\\Admin', 17),
(3, 'App\\Admin', 24);

-- --------------------------------------------------------

--
-- Table structure for table `module_page_settings`
--

CREATE TABLE `module_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`, `token`, `verified`) VALUES
(30, 'dvrobin4@gmail.com', '2022-01-16 16:40:28', '2022-01-16 16:40:28', NULL, '0'),
(31, 'admin@admin.com', '2022-01-18 11:24:28', '2022-01-18 11:24:28', NULL, '0'),
(32, 'rsharifur824@gmail.com', '2022-01-25 20:24:55', '2022-01-25 20:24:55', NULL, '0'),
(33, 'xgenious51@gmail.com', '2022-01-26 11:52:52', '2022-01-26 11:52:52', NULL, '0'),
(35, 'haulakaula@gmail.com', '2022-01-26 19:41:05', '2022-01-26 21:02:59', 'DR7OqGJoI6hUoGruBcyx0HDcmj4WV9z6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_builder_status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `navbar_variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_container_option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `meta_tags`, `meta_description`, `content`, `status`, `visibility`, `page_builder_status`, `created_at`, `updated_at`, `navbar_variant`, `footer_variant`, `breadcrumb_status`, `page_container_option`) VALUES
(1, 'Terms & Conditions', 'terms-and-conditions', 'terms,conditions', 'Zaika - Terms & Conditions', '<p>Welcome to <b>Zaika</b>!</p><p><br></p><p>These terms and conditions outline the rules and regulations for the use of fundorex\'s Website, located at http://xgenious.com/laravel/fundorex.</p><p><br></p><p>By accessing this website we assume you accept these terms and conditions. Do not continue to use fundorex if you do not agree to take all of the terms and conditions stated on this page.</p><p><br></p><p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><p><br></p><p>Cookies</p><p>We employ the use of cookies. By accessing fundorex, you agreed to use cookies in agreement with the fundorex\'s Privacy Policy.</p><p><br></p><p>Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><p><br></p><p>License</p><p>Unless otherwise stated, fundorex and/or its licensors own the intellectual property rights for all material on fundorex. All intellectual property rights are reserved. You may access this from fundorex for your own personal use subjected to restrictions set in these terms and conditions.</p><p><br></p><p>You must not:</p><p><br></p><p>Republish material from fundorex</p><p>Sell, rent or sub-license material from fundorex</p><p>Reproduce, duplicate or copy material from fundorex</p><p>Redistribute content from fundorex</p><p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Generator.</p><p><br></p><p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. fundorex does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of fundorex,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, fundorex shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p><br></p><p>fundorex reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p><br></p><p>You warrant and represent that:</p><p><br></p><p>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</p><p>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</p><p>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</p><p>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</p><p>You hereby grant fundorex a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><p><br></p><p>Hyperlinking to our Content</p><p>The following organizations may link to our Website without prior written approval:</p><p><br></p><p>Government agencies;</p><p>Search engines;</p><p>News organizations;</p><p>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</p><p>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</p><p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p><p><br></p><p>We may consider and approve other link requests from the following types of organizations:</p><p><br></p><p>commonly-known consumer and/or business information sources;</p><p>dot.com community sites;</p><p>associations or other groups representing charities;</p><p>online directory distributors;</p><p>internet portals;</p><p>accounting, law and consulting firms; and</p><p>educational institutions and trade associations.</p><p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of fundorex; and (d) the link is in the context of general resource information.</p><p><br></p><p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p><p><br></p><p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to fundorex. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p><br></p><p>Approved organizations may hyperlink to our Website as follows:</p><p><br></p><p>By use of our corporate name; or</p><p>By use of the uniform resource locator being linked to; or</p><p>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</p><p>No use of fundorex\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><p><br></p><p>iFrames</p><p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><p><br></p><p>Content Liability</p><p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><p><br></p><p>Your Privacy</p><p>Please read Privacy Policy</p><p><br></p><p>Reservation of Rights</p><p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><p><br></p><p>Removal of links from our website</p><p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p><br></p><p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><p><br></p><p>Disclaimer</p><p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><p><br></p><p>limit or exclude our or your liability for death or personal injury;</p><p>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</p><p>limit any of our or your liabilities in any way that is not permitted under applicable law; or</p><p>exclude any of our or your liabilities that may not be excluded under applicable law.</p><p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p><br></p><p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', 'publish', 'all', 1, '2021-11-15 06:44:29', '2021-11-21 06:57:36', '1', '1', '1', '0'),
(2, 'Privacy Policy', 'privacy-policy', 'privacy, policy', 'Zaika Privacy Policy Page', NULL, 'publish', 'all', 1, '2021-11-16 05:16:13', '2021-11-21 06:55:35', '1', '1', '1', '0'),
(3, 'Home Style 01', 'home-style-01', 'home,style', 'Home Page Style 01', NULL, 'publish', 'all', 1, '2021-11-18 05:23:14', '2021-11-20 05:02:46', '2', '2', '0', '1'),
(4, 'Blog Grid Style', 'blog-grid-style', 'blog,style,grid', 'Blog page with grid style', NULL, 'publish', 'all', 1, '2021-11-20 00:09:31', '2021-11-20 00:12:49', '1', '1', '1', NULL),
(5, 'Blog List Style', 'blog-list-style', 'blog,style,list', 'Blog page with list style', NULL, 'publish', 'all', 1, '2021-11-20 00:09:58', '2021-11-20 00:47:28', '1', '1', '1', NULL),
(6, 'Blog New Update Style', 'blog-new-style-style', 'blog,style,news,update', 'Blog page with news style style', NULL, 'publish', 'all', 1, '2021-11-20 00:10:33', '2021-11-20 01:22:16', '1', '1', '1', NULL),
(7, 'Home Style 02', 'home-style-02', 'home,page,style', 'Home Page Style 02', NULL, 'publish', 'all', 1, '2021-11-20 05:44:31', '2021-11-20 05:45:09', '2', '2', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `page_builders`
--

CREATE TABLE `page_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_order` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_page_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_settings` longtext COLLATE utf8mb4_unicode_ci,
  `addon_namespace` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_builders`
--

INSERT INTO `page_builders` (`id`, `addon_name`, `addon_type`, `addon_location`, `addon_order`, `addon_page_id`, `addon_page_type`, `addon_settings`, `addon_namespace`, `created_at`, `updated_at`) VALUES
(1, 'HeaderSliderOne', 'update', 'homepage', 1, NULL, 'static', 'a:12:{s:2:\"id\";s:1:\"1\";s:10:\"addon_name\";s:15:\"HeaderSliderOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU2xpZGVyT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:16:\"header_style_one\";a:5:{s:6:\"title_\";a:2:{i:0;s:29:\"[bld]Winter [/bld] Collection\";i:1;s:29:\"[bld]Summer [/bld] Collection\";}s:12:\"description_\";a:2:{i:0;s:13:\"Monthly Offer\";i:1;s:13:\"Amazing Deals\";}s:12:\"button_text_\";a:2:{i:0;s:8:\"Shop Now\";i:1;s:8:\"Shop Now\";}s:11:\"button_url_\";a:2:{i:0;s:19:\"product/campaign/35\";i:1;s:19:\"product/campaign/35\";}s:17:\"background_image_\";a:2:{i:0;s:3:\"205\";i:1;s:3:\"207\";}}s:11:\"title_color\";s:18:\"rgb(255, 255, 255)\";s:11:\"padding_top\";s:3:\"228\";s:14:\"padding_bottom\";s:3:\"234\";}', 'App\\PageBuilder\\Addons\\Header\\HeaderSliderOne', '2021-09-20 00:36:35', '2022-01-12 09:29:54'),
(2, 'IconBoxStyleOne', 'update', 'homepage', 2, NULL, 'static', 'a:11:{s:2:\"id\";s:1:\"2\";s:10:\"addon_name\";s:15:\"IconBoxStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xJY29uQm94XEljb25Cb3hTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"header_eleven\";a:4:{s:6:\"title_\";a:5:{i:0;s:13:\"Free Shipping\";i:1;s:12:\"24/7 Support\";i:2;s:14:\"90 Days Return\";i:3;s:15:\"100% Money Back\";i:4;s:14:\"Secure Payment\";}s:12:\"description_\";a:5:{i:0;s:33:\"Free shipping on all online order\";i:1;s:19:\"Contact us 24 hours\";i:2;s:27:\"If goods have damage issues\";i:3;s:26:\"You have 15 days to Return\";i:4;s:28:\"We Ensure Secure Transaction\";}s:4:\"url_\";a:5:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";}s:12:\"button_icon_\";a:5:{i:0;s:20:\"las la-shipping-fast\";i:1;s:14:\"las la-headset\";i:2;s:13:\"las la-rocket\";i:3;s:13:\"las la-wallet\";i:4;s:17:\"las la-shield-alt\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\IconBox\\IconBoxStyleOne', '2021-09-20 04:16:39', '2021-12-01 20:15:06'),
(3, 'BannerStyleOne', 'update', 'homepage', 4, NULL, 'static', 'a:22:{s:2:\"id\";s:1:\"3\";s:10:\"addon_name\";s:14:\"BannerStyleOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:14:\"left_top_title\";s:8:\"Hot Item\";s:15:\"left_main_title\";s:13:\"BUY ONE GET 1\";s:10:\"left_image\";s:3:\"214\";s:14:\"left_image_url\";s:19:\"product/campaign/35\";s:16:\"left_button_text\";s:8:\"SHOP NOW\";s:15:\"left_button_url\";s:19:\"product/campaign/35\";s:15:\"right_top_title\";s:9:\"Sale Item\";s:16:\"right_main_title\";s:13:\"UP TO 70% OFF\";s:11:\"right_image\";s:3:\"215\";s:15:\"right_image_url\";s:19:\"product/campaign/35\";s:17:\"right_button_text\";s:8:\"SHOP NOW\";s:16:\"right_button_url\";s:19:\"product/campaign/35\";s:11:\"padding_top\";s:2:\"30\";s:14:\"padding_bottom\";s:1:\"1\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleOne', '2021-09-20 05:09:27', '2022-01-12 09:30:17'),
(4, 'BannerStyleTwo', 'update', 'homepage', 6, NULL, 'static', 'a:17:{s:2:\"id\";s:1:\"4\";s:10:\"addon_name\";s:14:\"BannerStyleTwo\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:9:\"title_one\";s:7:\"BUY ONE\";s:9:\"title_two\";s:5:\"GET 1\";s:8:\"subtitle\";s:15:\"ON ORDER ONLINE\";s:10:\"left_image\";s:3:\"218\";s:11:\"button_text\";s:8:\"SHOP NOW\";s:10:\"button_url\";s:19:\"product/campaign/35\";s:11:\"right_image\";s:3:\"219\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleTwo', '2021-09-20 23:13:37', '2022-01-12 17:22:57'),
(5, 'BrandLogoStyleOne', 'update', 'homepage', 9, NULL, 'static', 'a:11:{s:2:\"id\";s:1:\"5\";s:10:\"addon_name\";s:17:\"BrandLogoStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcmFuZFxCcmFuZExvZ29TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"9\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:16:\"header_style_one\";a:2:{s:11:\"logo_image_\";a:4:{i:0;s:3:\"221\";i:1;s:3:\"220\";i:2;s:3:\"222\";i:3;s:3:\"223\";}s:9:\"logo_url_\";a:4:{i:0;s:19:\"product/campaign/35\";i:1;s:19:\"product/campaign/35\";i:2;s:19:\"product/campaign/35\";i:3;s:19:\"product/campaign/35\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Brand\\BrandLogoStyleOne', '2021-09-20 23:58:36', '2022-01-12 09:30:45'),
(6, 'ProductSliderStyleOne', 'update', 'homepage', 3, NULL, 'static', 'a:14:{s:2:\"id\";s:1:\"6\";s:10:\"addon_name\";s:21:\"ProductSliderStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTbGlkZXJTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:25:\"NEW [lgt]COLLECTION[/lgt]\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"8\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"70\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSliderStyleOne', '2021-09-29 03:11:12', '2021-12-29 04:28:42'),
(7, 'ProductGridStyleOne', 'update', 'homepage', 5, NULL, 'static', 'a:22:{s:2:\"id\";s:1:\"7\";s:10:\"addon_name\";s:19:\"ProductGridStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RHcmlkU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:22:\"TRENDY [lgt]ITEM[/lgt]\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:18:\"left_side_subtitle\";s:12:\"MONDAY OFFER\";s:15:\"left_side_title\";s:7:\"70% OFF\";s:18:\"left_side_btn_text\";s:8:\"SHOP NOW\";s:17:\"left_side_btn_url\";s:19:\"product/campaign/35\";s:10:\"left_image\";s:3:\"230\";s:14:\"left_image_url\";s:19:\"product/campaign/35\";s:8:\"products\";a:7:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:2:\"18\";i:4;s:2:\"25\";i:5;s:2:\"26\";i:6;s:2:\"30\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Product\\ProductGridStyleOne', '2021-09-29 06:38:26', '2022-01-12 17:22:59'),
(9, 'ProductColumnStyleOne', 'update', 'homepage', 8, NULL, 'static', 'a:22:{s:2:\"id\";s:1:\"9\";s:10:\"addon_name\";s:21:\"ProductColumnStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RDb2x1bW5TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:15:\"section_title_1\";s:19:\"TOP [lgt]SALE[/lgt]\";s:10:\"products_1\";a:3:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:2:\"25\";}s:10:\"order_by_1\";s:2:\"id\";s:7:\"order_1\";s:3:\"asc\";s:15:\"section_title_2\";s:20:\"BEST [lgt]SALE[/lgt]\";s:10:\"products_2\";a:3:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:2:\"25\";}s:10:\"order_by_2\";s:2:\"id\";s:7:\"order_2\";s:3:\"asc\";s:15:\"section_title_3\";s:19:\"OFF [lgt]SALE[/lgt]\";s:10:\"products_3\";a:3:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:2:\"25\";}s:10:\"order_by_3\";s:2:\"id\";s:7:\"order_3\";s:3:\"asc\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"102\";}', 'App\\PageBuilder\\Addons\\Product\\ProductColumnStyleOne', '2021-09-29 07:46:36', '2021-12-29 04:39:22'),
(10, 'ProductSaleStyleOne', 'update', 'homepage', 7, NULL, 'static', 'a:12:{s:2:\"id\";s:2:\"10\";s:10:\"addon_name\";s:19:\"ProductSaleStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTYWxlU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"homepage\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:21:\"Flash [lgt]Sale[/lgt]\";s:8:\"campaign\";s:2:\"35\";s:11:\"padding_top\";s:3:\"105\";s:14:\"padding_bottom\";s:2:\"44\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSaleStyleOne', '2021-10-03 00:30:08', '2022-01-09 04:16:41'),
(13, 'ContactAreaStyleOne', 'update', 'contactpage', 1, NULL, 'static', 'a:13:{s:2:\"id\";s:2:\"13\";s:10:\"addon_name\";s:19:\"ContactAreaStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb250YWN0QXJlYVxDb250YWN0QXJlYVN0eWxlT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"contactpage\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:5:\"title\";s:12:\"Get in Touch\";s:28:\"contact_page_contact_info_01\";a:3:{s:6:\"title_\";a:4:{i:0;s:7:\"Address\";i:1;s:5:\"Phone\";i:2;s:5:\"Email\";i:3;s:13:\"BUSINESS HOUR\";}s:12:\"description_\";a:4:{i:0;s:44:\"2779 Rubaiyat Road, Traverse City,\r\nMI 49684\";i:1;s:32:\"+012 789654321\r\n\r\n+969 123456789\";i:2;s:36:\"company@mail.com\r\n\r\ncontact@mail.com\";i:3;s:34:\"10.00 am - 08.00 pm\r\n\r\nOnline 24/7\";}s:5:\"icon_\";a:4:{i:0;s:11:\"las la-home\";i:1;s:13:\"las la-mobile\";i:2;s:15:\"lar la-envelope\";i:3;s:12:\"las la-clock\";}}s:14:\"custom_form_id\";s:1:\"1\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\ContactArea\\ContactAreaStyleOne', '2021-10-19 23:46:34', '2021-11-14 06:11:46'),
(14, 'MapAreaStyleOne', 'update', 'contactpage', 2, NULL, 'static', 'a:11:{s:2:\"id\";s:2:\"14\";s:10:\"addon_name\";s:15:\"MapAreaStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb250YWN0QXJlYVxNYXBBcmVhU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"contactpage\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:8:\"location\";s:8:\"xgenious\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\ContactArea\\MapAreaStyleOne', '2021-10-20 03:53:54', '2022-01-03 09:45:32'),
(15, 'AboutSectionStyleOne', 'update', 'aboutpage', 1, NULL, 'static', 'a:17:{s:2:\"id\";s:2:\"15\";s:10:\"addon_name\";s:20:\"AboutSectionStyleOne\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xBYm91dFNlY3Rpb25cQWJvdXRTZWN0aW9uU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:9:\"aboutpage\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:8:\"subtitle\";s:8:\"About Us\";s:5:\"title\";s:39:\"WE PROVIDE LUXURY & COMFORTABLE DRESSES\";s:11:\"button_text\";s:10:\"Contact Us\";s:10:\"button_url\";s:1:\"#\";s:11:\"description\";s:386:\"<p><span style=\"font-weight: 400;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text.</span></p>\";s:17:\"summer_note_image\";N;s:10:\"left_image\";s:3:\"247\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\AboutSection\\AboutSectionStyleOne', '2021-10-20 06:13:43', '2021-12-01 19:04:45'),
(16, 'CustomerFeedbackStyleOne', 'update', 'aboutpage', 2, NULL, 'static', 'a:14:{s:2:\"id\";s:2:\"16\";s:10:\"addon_name\";s:24:\"CustomerFeedbackStyleOne\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGZWVkYmFja1xDdXN0b21lckZlZWRiYWNrU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:9:\"aboutpage\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:5:\"title\";s:28:\"Customer [lgt]Feedback[/lgt]\";s:11:\"description\";s:145:\"<p><span style=\"font-weight: normal;\">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring</span></p>\";s:17:\"summer_note_image\";N;s:16:\"header_style_one\";a:3:{s:11:\"user_image_\";a:3:{i:0;s:3:\"250\";i:1;s:3:\"249\";i:2;s:3:\"248\";}s:17:\"testimonial_text_\";a:3:{i:0;s:119:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.\";i:1;s:119:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.\";i:2;s:119:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.\";}s:10:\"user_name_\";a:3:{i:0;s:8:\"John Doe\";i:1;s:8:\"John Doe\";i:2;s:8:\"John Doe\";}}s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Feedback\\CustomerFeedbackStyleOne', '2021-10-20 07:05:11', '2021-11-21 05:09:55'),
(17, 'NewsUpdateStyleOne', 'update', 'aboutpage', 3, NULL, 'static', 'a:15:{s:2:\"id\";s:2:\"17\";s:10:\"addon_name\";s:18:\"NewsUpdateStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXE5ld3NVcGRhdGVTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:9:\"aboutpage\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:5:\"title\";s:23:\"News [lgt]Updates[/lgt]\";s:11:\"description\";s:145:\"<p><span style=\"font-weight: normal;\">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring</span></p>\";s:17:\"summer_note_image\";N;s:11:\"blog_post_1\";s:1:\"1\";s:11:\"blog_post_2\";s:1:\"5\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Blog\\NewsUpdateStyleOne', '2021-10-20 08:02:08', '2021-11-21 05:10:40'),
(19, 'QuoteStyleOne', 'update', 'faqpage', NULL, NULL, 'static', 'a:13:{s:2:\"id\";s:2:\"19\";s:10:\"addon_name\";s:13:\"QuoteStyleOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cUXVvdGVTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:7:\"faqpage\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:7:\"faq_ids\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}s:23:\"ask_question_form_title\";s:15:\"Have Questions?\";s:14:\"custom_form_id\";s:1:\"2\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Common\\QuoteStyleOne', '2021-10-25 06:57:24', '2021-10-26 23:16:20'),
(20, 'BrandLogoStyleOne', 'update', 'homepage_02', 8, NULL, 'static', 'a:11:{s:2:\"id\";s:2:\"20\";s:10:\"addon_name\";s:17:\"BrandLogoStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcmFuZFxCcmFuZExvZ29TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:16:\"header_style_one\";a:2:{s:11:\"logo_image_\";a:4:{i:0;s:3:\"221\";i:1;s:3:\"220\";i:2;s:3:\"222\";i:3;s:3:\"223\";}s:9:\"logo_url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:2:\"92\";}', 'App\\PageBuilder\\Addons\\Brand\\BrandLogoStyleOne', '2021-10-27 00:17:01', '2021-11-28 23:56:18'),
(21, 'IconBoxStyleOne', 'update', 'homepage_02', 9, NULL, 'static', 'a:11:{s:2:\"id\";s:2:\"21\";s:10:\"addon_name\";s:15:\"IconBoxStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xJY29uYm94XEljb25Cb3hTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"header_eleven\";a:4:{s:6:\"title_\";a:5:{i:0;s:13:\"Free Shipping\";i:1;s:12:\"24/7 Support\";i:2;s:14:\"90 Days Return\";i:3;s:15:\"100% Money Back\";i:4;s:14:\"Secure Payment\";}s:12:\"description_\";a:5:{i:0;s:33:\"Free Shipping on all online order\";i:1;s:19:\"Contact us 24 hours\";i:2;s:27:\"If goods have damage issues\";i:3;s:26:\"You have 15 days to Return\";i:4;s:28:\"We Ensure Secure Transaction\";}s:4:\"url_\";a:5:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";}s:12:\"button_icon_\";a:5:{i:0;s:20:\"las la-shipping-fast\";i:1;s:14:\"las la-headset\";i:2;s:13:\"las la-rocket\";i:3;s:13:\"las la-wallet\";i:4;s:17:\"las la-shield-alt\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\IconBox\\IconBoxStyleOne', '2021-10-27 00:23:09', '2021-11-28 23:56:18'),
(23, 'BannerStyleThree', 'update', 'homepage_02', 3, NULL, 'static', 'a:20:{s:2:\"id\";s:2:\"23\";s:10:\"addon_name\";s:16:\"BannerStyleThree\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlVGhyZWU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:15:\"left_main_title\";s:22:\"Buy 1 [clr]Get 1[/clr]\";s:10:\"left_image\";s:3:\"270\";s:14:\"left_image_url\";s:20:\"/product/campaign/22\";s:16:\"left_button_text\";s:8:\"Shop Now\";s:15:\"left_button_url\";s:20:\"/product/campaign/22\";s:16:\"right_main_title\";s:12:\"Upto 70% off\";s:11:\"right_image\";s:3:\"271\";s:15:\"right_image_url\";s:20:\"/product/campaign/22\";s:17:\"right_button_text\";s:8:\"Shop Now\";s:16:\"right_button_url\";s:20:\"/product/campaign/22\";s:11:\"padding_top\";s:1:\"5\";s:14:\"padding_bottom\";s:3:\"165\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleThree', '2021-10-27 03:40:34', '2021-12-01 13:59:36'),
(24, 'ProductGridStyleTwo', 'update', 'homepage_02', 6, NULL, 'static', 'a:22:{s:2:\"id\";s:2:\"24\";s:10:\"addon_name\";s:19:\"ProductGridStyleTwo\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RHcmlkU3R5bGVUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:12:\"SPECIAL SALE\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:19:\"right_side_subtitle\";s:12:\"Monday offer\";s:16:\"right_side_title\";s:7:\"70% Off\";s:19:\"right_side_btn_text\";s:8:\"Shop Now\";s:18:\"right_side_btn_url\";s:20:\"/product/campaign/22\";s:11:\"right_image\";s:3:\"272\";s:15:\"right_image_url\";s:20:\"/product/campaign/22\";s:8:\"products\";a:6:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\ProductGridStyleTwo', '2021-10-27 04:15:44', '2021-11-29 19:21:50'),
(25, 'HeaderSliderTwo', 'update', 'homepage_02', 1, NULL, 'static', 'a:12:{s:2:\"id\";s:2:\"25\";s:10:\"addon_name\";s:15:\"HeaderSliderTwo\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU2xpZGVyVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:16:\"header_style_one\";a:5:{s:9:\"subtitle_\";a:3:{i:0;s:11:\"Summer Sale\";i:1;s:11:\"Summer Sale\";i:2;s:11:\"Summer Sale\";}s:6:\"title_\";a:3:{i:0;s:7:\"70% Off\";i:1;s:7:\"70% Off\";i:2;s:7:\"70% Off\";}s:12:\"button_text_\";a:3:{i:0;s:8:\"Shop Now\";i:1;s:8:\"Shop Now\";i:2;s:8:\"Shop Now\";}s:11:\"button_url_\";a:3:{i:0;s:20:\"/product/campaign/22\";i:1;s:20:\"/product/campaign/22\";i:2;s:20:\"/product/campaign/22\";}s:17:\"background_image_\";a:3:{i:0;s:3:\"267\";i:1;s:3:\"367\";i:2;s:3:\"368\";}}s:11:\"title_color\";N;s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Header\\HeaderSliderTwo', '2021-10-27 05:11:46', '2021-12-01 15:10:45'),
(26, 'BannerStyleFour', 'update', 'homepage_02', 5, NULL, 'static', 'a:17:{s:2:\"id\";s:2:\"26\";s:10:\"addon_name\";s:15:\"BannerStyleFour\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlRm91cg==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:8:\"subtitle\";s:10:\"Flash Sale\";s:5:\"title\";s:8:\"70% Sale\";s:10:\"left_image\";s:3:\"273\";s:11:\"button_text\";s:11:\"Flash Store\";s:10:\"button_url\";s:20:\"/product/campaign/22\";s:14:\"countdown_time\";s:16:\"2022-01-31 12:00\";s:11:\"right_image\";s:3:\"274\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"101\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleFour', '2021-10-27 06:47:14', '2021-12-01 18:55:36'),
(27, 'NewsUpdateStyleTwo', 'update', 'homepage_02', 7, NULL, 'static', 'a:16:{s:2:\"id\";s:2:\"27\";s:10:\"addon_name\";s:18:\"NewsUpdateStyleTwo\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXE5ld3NVcGRhdGVTdHlsZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:5:\"title\";s:12:\"Fashion Blog\";s:11:\"description\";s:145:\"<p><span style=\"font-weight: normal;\">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring</span></p>\";s:17:\"summer_note_image\";N;s:5:\"blogs\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"5\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"15\";}s:5:\"items\";s:1:\"5\";s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Blog\\NewsUpdateStyleTwo', '2021-10-27 07:28:37', '2021-11-28 23:56:19'),
(30, 'NewsUpdatePageStyleOne', 'update', 'blogpage', NULL, NULL, 'static', 'a:12:{s:2:\"id\";s:2:\"30\";s:10:\"addon_name\";s:22:\"NewsUpdatePageStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXE5ld3NVcGRhdGVQYWdlU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:8:\"blogpage\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:5:\"items\";N;s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"40\";}', 'App\\PageBuilder\\Addons\\Blog\\NewsUpdatePageStyleOne', '2021-11-03 03:11:25', '2021-11-29 00:22:29'),
(35, 'TextSectionStyleOne', 'update', 'dynamic_page', 1, 1, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"35\";s:10:\"addon_name\";s:19:\"TextSectionStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cVGV4dFNlY3Rpb25TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"1\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:12:\"section_text\";s:15856:\"<p><span style=\"font-size: 36px; color: rgb(0, 0, 0);\">Terms and Conditions</span>\r\n</p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">Welcome to </span>Zaika<span style=\"font-weight: normal;\">!\r\n</span></p><p><span style=\"font-weight: normal;\">These terms and conditions outline the rules and regulations for the use of Zaika\'s Website, located at https://bytesed.com/laravel/zaika/.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use Zaika if you do not agree to take all of the terms and conditions stated on this page.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Cookies</span>\r\n</p><p><span style=\"font-weight: normal;\">We employ the use of cookies. By accessing Zaika, you agreed to use cookies in agreement with the Zaika\'s Privacy Policy.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">License</span>\r\n</p><p><span style=\"font-weight: normal;\">Unless otherwise stated, Zaika and/or its licensors own the intellectual property rights for all material on Zaika. All intellectual property rights are reserved. You may access this from Zaika for your own personal use subjected to restrictions set in these terms and conditions.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 18px;\">You must not:</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Republish material from Zaika\r\n</span></p><p><span style=\"font-weight: normal;\">Sell, rent or sub-license material from Zaika\r\n</span></p><p><span style=\"font-weight: normal;\">Reproduce, duplicate or copy material from Zaika\r\n</span></p><p><span style=\"font-weight: normal;\">Redistribute content from Zaika</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Generator.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Zaika does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Zaika,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Zaika shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Zaika reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p>You warrant and represent that:</p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">You hereby grant Zaika a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Hyperlinking to our Content</span>\r\n</p><p><span style=\"font-weight: normal;\">The following organizations may link to our Website without prior written approval:\r\n</span></p><p>Government agencies;\r\n</p><p><br></p><p><span style=\"font-weight: normal;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and\r\n</span></p><p><span style=\"font-weight: normal;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</span></p><p><br></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Zaika; and (d) the link is in the context of general resource information.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Zaika. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Approved organizations may hyperlink to our Website as follows:</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">By use of our corporate name; or\r\n</span></p><p><span style=\"font-weight: normal;\">By use of the uniform resource locator being linked to; or\r\n</span></p><p><span style=\"font-weight: normal;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.\r\n</span></p><p><span style=\"font-weight: normal;\">No use of Zaika\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">iFrames</span>\r\n</p><p><span style=\"font-weight: normal;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Content Liability</span>\r\n</p><p><span style=\"font-weight: normal;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Your Privacy</span>\r\n</p><p><span style=\"font-weight: normal;\">Please read Privacy Policy</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Reservation of Rights</span>\r\n</p><p><span style=\"font-weight: normal;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Removal of links from our website</span>\r\n</p><p><span style=\"font-weight: normal;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\"><br></span></p><p>\r\n</p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Disclaimer</span>\r\n</p><p><span style=\"font-weight: normal;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">limit or exclude our or your liability for death or personal injury;\r\n</span></p><p><span style=\"font-weight: normal;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;\r\n</span></p><p><span style=\"font-weight: normal;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or\r\n</span></p><p><span style=\"font-weight: normal;\">exclude any of our or your liabilities that may not be excluded under applicable law.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</span></p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>\";s:17:\"summer_note_image\";N;s:11:\"padding_top\";s:2:\"91\";s:14:\"padding_bottom\";s:2:\"99\";}', 'App\\PageBuilder\\Addons\\Common\\TextSectionStyleOne', '2021-11-15 07:24:37', '2022-01-06 08:08:29'),
(46, 'HeaderSliderOne', 'update', 'dynamic_page', 1, 3, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"46\";s:10:\"addon_name\";s:15:\"HeaderSliderOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU2xpZGVyT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"header_style_one\";a:5:{s:6:\"title_\";a:3:{i:0;s:36:\"[bld]Top New [/bld]Winter Collection\";i:1;s:30:\"[bld]Buy 1 [/bld] Get One Free\";i:2;s:29:\"[bld]Summer [/bld] Collection\";}s:12:\"description_\";a:3:{i:0;s:17:\"Grab 30% Sale off\";i:1;s:13:\"Monthly Offer\";i:2;s:13:\"Amazing Deals\";}s:12:\"button_text_\";a:3:{i:0;s:8:\"Shop Now\";i:1;s:8:\"Shop Now\";i:2;s:8:\"Shop Now\";}s:11:\"button_url_\";a:3:{i:0;s:19:\"product/campaign/22\";i:1;s:19:\"product/campaign/22\";i:2;s:19:\"product/campaign/22\";}s:17:\"background_image_\";a:3:{i:0;s:3:\"285\";i:1;s:3:\"286\";i:2;s:3:\"287\";}}s:11:\"title_color\";N;s:11:\"padding_top\";s:3:\"230\";s:14:\"padding_bottom\";s:3:\"230\";}', 'App\\PageBuilder\\Addons\\Header\\HeaderSliderOne', '2021-11-19 22:28:22', '2021-12-01 20:11:22'),
(47, 'IconBoxStyleOne', 'update', 'dynamic_page', 2, 3, 'dynamic_page', 'a:11:{s:2:\"id\";s:2:\"47\";s:10:\"addon_name\";s:15:\"IconBoxStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xJY29uQm94XEljb25Cb3hTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"header_eleven\";a:4:{s:6:\"title_\";a:5:{i:0;s:13:\"Free Shipping\";i:1;s:12:\"24/7 Support\";i:2;s:14:\"90 Days Return\";i:3;s:15:\"100% Money Back\";i:4;s:14:\"Secure Payment\";}s:12:\"description_\";a:5:{i:0;s:33:\"Free Shipping on all online order\";i:1;s:19:\"Contact us 24 hours\";i:2;s:27:\"If goods have damage issues\";i:3;s:26:\"You have 15 days to Return\";i:4;s:28:\"We Ensure Secure Transaction\";}s:4:\"url_\";a:5:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";}s:12:\"button_icon_\";a:5:{i:0;s:20:\"las la-shipping-fast\";i:1;s:14:\"las la-headset\";i:2;s:13:\"las la-rocket\";i:3;s:13:\"las la-wallet\";i:4;s:17:\"las la-shield-alt\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\IconBox\\IconBoxStyleOne', '2021-11-19 22:32:36', '2021-12-01 20:06:26'),
(48, 'ProductSliderStyleOne', 'update', 'dynamic_page', 3, 3, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"48\";s:10:\"addon_name\";s:21:\"ProductSliderStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTbGlkZXJTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:25:\"New [lgt]Collection[/lgt]\";s:5:\"items\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"87\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSliderStyleOne', '2021-11-19 22:33:33', '2021-11-30 10:50:04'),
(49, 'BannerStyleOne', 'update', 'dynamic_page', 4, 3, 'dynamic_page', 'a:22:{s:2:\"id\";s:2:\"49\";s:10:\"addon_name\";s:14:\"BannerStyleOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:14:\"left_top_title\";s:8:\"HOT ITEM\";s:15:\"left_main_title\";s:11:\"Buy 1 Get 1\";s:10:\"left_image\";s:3:\"288\";s:14:\"left_image_url\";s:19:\"product/campaign/22\";s:16:\"left_button_text\";s:8:\"Shop Now\";s:15:\"left_button_url\";s:19:\"product/campaign/22\";s:15:\"right_top_title\";s:9:\"Sale Item\";s:16:\"right_main_title\";s:13:\"UP TO 70% OFF\";s:11:\"right_image\";s:3:\"289\";s:15:\"right_image_url\";s:19:\"product/campaign/22\";s:17:\"right_button_text\";s:8:\"Shop Now\";s:16:\"right_button_url\";s:19:\"product/campaign/22\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleOne', '2021-11-19 22:36:11', '2021-12-01 20:07:33'),
(52, 'ListStyleOne', 'update', 'dynamic_page', NULL, 5, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"52\";s:10:\"addon_name\";s:12:\"ListStyleOne\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXExpc3RTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"5\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"items\";s:1:\"3\";s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:2:\"99\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Blog\\ListStyleOne', '2021-11-20 01:08:23', '2021-11-29 04:27:21'),
(53, 'NewsUpdatePageStyleOne', 'update', 'dynamic_page', NULL, 6, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"53\";s:10:\"addon_name\";s:22:\"NewsUpdatePageStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXE5ld3NVcGRhdGVQYWdlU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"6\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"items\";N;s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Blog\\NewsUpdatePageStyleOne', '2021-11-20 01:22:32', '2021-11-20 05:04:03'),
(54, 'ProductGridStyleOne', 'update', 'dynamic_page', 5, 3, 'dynamic_page', 'a:21:{s:2:\"id\";s:2:\"54\";s:10:\"addon_name\";s:19:\"ProductGridStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RHcmlkU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:22:\"Trendy [lgt]Item[/lgt]\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:18:\"left_side_subtitle\";s:12:\"Monday Offer\";s:15:\"left_side_title\";s:7:\"70% Off\";s:18:\"left_side_btn_text\";s:8:\"Shop Now\";s:17:\"left_side_btn_url\";s:19:\"product/campaign/22\";s:10:\"left_image\";s:3:\"290\";s:14:\"left_image_url\";s:19:\"product/campaign/22\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:2:\"90\";s:14:\"padding_bottom\";s:2:\"10\";}', 'App\\PageBuilder\\Addons\\Product\\ProductGridStyleOne', '2021-11-20 05:27:31', '2021-12-01 20:07:56'),
(55, 'BannerStyleTwo', 'update', 'dynamic_page', 6, 3, 'dynamic_page', 'a:17:{s:2:\"id\";s:2:\"55\";s:10:\"addon_name\";s:14:\"BannerStyleTwo\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:9:\"title_one\";s:7:\"Buy One\";s:9:\"title_two\";s:5:\"Get 1\";s:8:\"subtitle\";s:15:\"on order online\";s:10:\"left_image\";s:3:\"291\";s:11:\"button_text\";s:8:\"Shop Now\";s:10:\"button_url\";s:19:\"product/campaign/22\";s:11:\"right_image\";s:3:\"292\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:2:\"87\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleTwo', '2021-11-20 05:29:26', '2021-12-01 20:08:07'),
(56, 'ProductSaleStyleOne', 'update', 'dynamic_page', 7, 3, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"56\";s:10:\"addon_name\";s:19:\"ProductSaleStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTYWxlU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:21:\"Flash [lgt]Sale[/lgt]\";s:8:\"campaign\";s:2:\"22\";s:11:\"padding_top\";s:1:\"2\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSaleStyleOne', '2021-11-20 05:30:27', '2021-11-29 05:16:26');
INSERT INTO `page_builders` (`id`, `addon_name`, `addon_type`, `addon_location`, `addon_order`, `addon_page_id`, `addon_page_type`, `addon_settings`, `addon_namespace`, `created_at`, `updated_at`) VALUES
(57, 'ProductColumnStyleOne', 'update', 'dynamic_page', 8, 3, 'dynamic_page', 'a:22:{s:2:\"id\";s:2:\"57\";s:10:\"addon_name\";s:21:\"ProductColumnStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RDb2x1bW5TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:15:\"section_title_1\";s:19:\"Top [lgt]Sale[/lgt]\";s:10:\"products_1\";a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}s:10:\"order_by_1\";s:2:\"id\";s:7:\"order_1\";s:3:\"asc\";s:15:\"section_title_2\";s:20:\"Best [lgt]Sale[/lgt]\";s:10:\"products_2\";a:3:{i:0;s:2:\"18\";i:1;s:2:\"26\";i:2;s:2:\"30\";}s:10:\"order_by_2\";s:2:\"id\";s:7:\"order_2\";s:3:\"asc\";s:15:\"section_title_3\";s:21:\"Best [lgt]Offer[/lgt]\";s:10:\"products_3\";a:3:{i:0;s:1:\"3\";i:1;s:2:\"26\";i:2;s:2:\"30\";}s:10:\"order_by_3\";s:2:\"id\";s:7:\"order_3\";s:3:\"asc\";s:11:\"padding_top\";s:2:\"61\";s:14:\"padding_bottom\";s:2:\"94\";}', 'App\\PageBuilder\\Addons\\Product\\ProductColumnStyleOne', '2021-11-20 05:31:45', '2022-01-04 23:45:52'),
(58, 'BrandLogoStyleOne', 'update', 'dynamic_page', 9, 3, 'dynamic_page', 'a:11:{s:2:\"id\";s:2:\"58\";s:10:\"addon_name\";s:17:\"BrandLogoStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcmFuZFxCcmFuZExvZ29TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"3\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"header_style_one\";a:2:{s:11:\"logo_image_\";a:4:{i:0;s:3:\"293\";i:1;s:3:\"294\";i:2;s:3:\"295\";i:3;s:3:\"296\";}s:9:\"logo_url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;N;i:3;s:1:\"#\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:2:\"92\";}', 'App\\PageBuilder\\Addons\\Brand\\BrandLogoStyleOne', '2021-11-20 05:33:45', '2021-11-29 05:16:43'),
(59, 'HeaderSliderTwo', 'update', 'dynamic_page', 1, 7, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"59\";s:10:\"addon_name\";s:15:\"HeaderSliderTwo\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU2xpZGVyVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"header_style_one\";a:5:{s:9:\"subtitle_\";a:2:{i:0;s:11:\"Summer Sale\";i:1;s:11:\"Summer Sale\";}s:6:\"title_\";a:2:{i:0;s:7:\"70% Off\";i:1;s:7:\"70% Off\";}s:12:\"button_text_\";a:2:{i:0;s:8:\"Shop Now\";i:1;s:8:\"Shop Now\";}s:11:\"button_url_\";a:2:{i:0;s:19:\"product/campaign/22\";i:1;s:19:\"product/campaign/22\";}s:17:\"background_image_\";a:2:{i:0;s:3:\"297\";i:1;s:3:\"368\";}}s:11:\"title_color\";N;s:11:\"padding_top\";s:3:\"290\";s:14:\"padding_bottom\";s:3:\"303\";}', 'App\\PageBuilder\\Addons\\Header\\HeaderSliderTwo', '2021-11-20 06:06:08', '2021-12-02 11:28:37'),
(61, 'BannerStyleThree', 'update', 'dynamic_page', 3, 7, 'dynamic_page', 'a:20:{s:2:\"id\";s:2:\"61\";s:10:\"addon_name\";s:16:\"BannerStyleThree\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlVGhyZWU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:15:\"left_main_title\";s:21:\"Buy3 [clr]Get 5[/clr]\";s:10:\"left_image\";s:3:\"300\";s:14:\"left_image_url\";s:20:\"/product/campaign/22\";s:16:\"left_button_text\";s:8:\"Shop Now\";s:15:\"left_button_url\";s:20:\"/product/campaign/22\";s:16:\"right_main_title\";s:25:\"UP TO [clr] 70% OFF[/clr]\";s:11:\"right_image\";s:3:\"301\";s:15:\"right_image_url\";s:20:\"/product/campaign/22\";s:17:\"right_button_text\";s:8:\"Shop Now\";s:16:\"right_button_url\";s:20:\"/product/campaign/22\";s:11:\"padding_top\";s:1:\"1\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleThree', '2021-11-20 06:13:09', '2021-12-02 12:04:35'),
(63, 'ProductFilterStyleOne', 'update', 'homepage_02', 4, NULL, 'static', 'a:18:{s:2:\"id\";s:2:\"63\";s:10:\"addon_name\";s:21:\"ProductFilterStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RGaWx0ZXJTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:9:\"Our Store\";s:19:\"section_description\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:5:\"items\";a:8:{i:0;s:2:\"33\";i:1;s:2:\"35\";i:2;s:2:\"36\";i:3;s:2:\"37\";i:4;s:2:\"38\";i:5;s:2:\"39\";i:6;s:2:\"40\";i:7;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:11:\"items_count\";s:1:\"8\";s:17:\"shop_now_btn_text\";s:8:\"Shop Now\";s:16:\"shop_now_btn_url\";s:20:\"/product/campaign/22\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\ProductFilterStyleOne', '2021-11-20 06:20:50', '2021-11-29 19:20:35'),
(64, 'ProductFilterStyleOne', 'update', 'dynamic_page', 4, 7, 'dynamic_page', 'a:18:{s:2:\"id\";s:2:\"64\";s:10:\"addon_name\";s:21:\"ProductFilterStyleOne\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RGaWx0ZXJTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:9:\"Our Store\";s:19:\"section_description\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:5:\"items\";a:8:{i:0;s:2:\"33\";i:1;s:2:\"35\";i:2;s:2:\"36\";i:3;s:2:\"37\";i:4;s:2:\"38\";i:5;s:2:\"39\";i:6;s:2:\"40\";i:7;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:11:\"items_count\";s:1:\"8\";s:17:\"shop_now_btn_text\";s:8:\"Shop Now\";s:16:\"shop_now_btn_url\";s:20:\"/product/campaign/22\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\ProductFilterStyleOne', '2021-11-20 06:21:25', '2021-11-29 19:31:52'),
(65, 'BannerStyleFour', 'update', 'dynamic_page', 5, 7, 'dynamic_page', 'a:17:{s:2:\"id\";s:2:\"65\";s:10:\"addon_name\";s:15:\"BannerStyleFour\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XEJhbm5lclN0eWxlRm91cg==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"subtitle\";s:10:\"Flash Sale\";s:5:\"title\";s:8:\"70% Sale\";s:10:\"left_image\";s:3:\"302\";s:11:\"button_text\";s:8:\"Shop Now\";s:10:\"button_url\";s:20:\"/product/campaign/22\";s:14:\"countdown_time\";s:16:\"2022-03-12 00:00\";s:11:\"right_image\";s:3:\"303\";s:11:\"padding_top\";s:1:\"1\";s:14:\"padding_bottom\";s:2:\"31\";}', 'App\\PageBuilder\\Addons\\Product\\BannerStyleFour', '2021-11-20 06:24:41', '2021-11-29 19:30:09'),
(66, 'ProductGridStyleTwo', 'update', 'dynamic_page', 6, 7, 'dynamic_page', 'a:22:{s:2:\"id\";s:2:\"66\";s:10:\"addon_name\";s:19:\"ProductGridStyleTwo\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RHcmlkU3R5bGVUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:12:\"Special Sale\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:19:\"right_side_subtitle\";s:12:\"Monday Offer\";s:16:\"right_side_title\";s:7:\"70% Off\";s:19:\"right_side_btn_text\";s:8:\"Shop Now\";s:18:\"right_side_btn_url\";s:20:\"/product/campaign/22\";s:11:\"right_image\";s:3:\"304\";s:15:\"right_image_url\";s:20:\"/product/campaign/22\";s:8:\"products\";a:6:{i:0;s:2:\"35\";i:1;s:2:\"36\";i:2;s:2:\"37\";i:3;s:2:\"38\";i:4;s:2:\"39\";i:5;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"9\";s:11:\"padding_top\";s:2:\"69\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\ProductGridStyleTwo', '2021-11-20 06:27:01', '2021-11-29 19:35:44'),
(67, 'NewsUpdateStyleTwo', 'update', 'dynamic_page', 7, 7, 'dynamic_page', 'a:15:{s:2:\"id\";s:2:\"67\";s:10:\"addon_name\";s:18:\"NewsUpdateStyleTwo\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXE5ld3NVcGRhdGVTdHlsZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:12:\"Fashion Blog\";s:11:\"description\";s:145:\"<p><span style=\"font-weight: normal;\">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring</span></p>\";s:17:\"summer_note_image\";N;s:5:\"items\";s:1:\"4\";s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:1:\"1\";s:14:\"padding_bottom\";s:2:\"85\";}', 'App\\PageBuilder\\Addons\\Blog\\NewsUpdateStyleTwo', '2021-11-20 06:31:56', '2021-11-20 06:37:23'),
(68, 'BrandLogoStyleOne', 'update', 'dynamic_page', 8, 7, 'dynamic_page', 'a:11:{s:2:\"id\";s:2:\"68\";s:10:\"addon_name\";s:17:\"BrandLogoStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcmFuZFxCcmFuZExvZ29TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"header_style_one\";a:2:{s:11:\"logo_image_\";a:4:{i:0;s:3:\"293\";i:1;s:3:\"294\";i:2;s:3:\"295\";i:3;s:3:\"296\";}s:9:\"logo_url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}s:11:\"padding_top\";s:1:\"1\";s:14:\"padding_bottom\";s:2:\"92\";}', 'App\\PageBuilder\\Addons\\Brand\\BrandLogoStyleOne', '2021-11-20 06:37:15', '2021-11-20 06:42:20'),
(69, 'IconBoxStyleOne', 'update', 'dynamic_page', 9, 7, 'dynamic_page', 'a:11:{s:2:\"id\";s:2:\"69\";s:10:\"addon_name\";s:15:\"IconBoxStyleOne\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xJY29uQm94XEljb25Cb3hTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"header_eleven\";a:4:{s:6:\"title_\";a:5:{i:0;s:13:\"Free Shipping\";i:1;s:12:\"24/7 Support\";i:2;s:14:\"90 Days Return\";i:3;s:15:\"100% Money Back\";i:4;s:14:\"Secure Payment\";}s:12:\"description_\";a:5:{i:0;s:33:\"Free shipping on all online order\";i:1;s:19:\"Contact us 24 hours\";i:2;s:27:\"If goods have damage issues\";i:3;s:26:\"You have 15 days to Return\";i:4;s:28:\"We Ensure Secure Transaction\";}s:4:\"url_\";a:5:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";}s:12:\"button_icon_\";a:5:{i:0;s:20:\"las la-shipping-fast\";i:1;s:14:\"las la-headset\";i:2;s:13:\"las la-rocket\";i:3;s:13:\"las la-wallet\";i:4;s:17:\"las la-shield-alt\";}}s:11:\"padding_top\";s:1:\"3\";s:14:\"padding_bottom\";s:1:\"1\";}', 'App\\PageBuilder\\Addons\\IconBox\\IconBoxStyleOne', '2021-11-20 06:42:13', '2021-11-20 06:42:20'),
(70, 'TextSectionStyleOne', 'update', 'dynamic_page', NULL, 2, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"70\";s:10:\"addon_name\";s:19:\"TextSectionStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cVGV4dFNlY3Rpb25TdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"2\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:12:\"section_text\";s:12937:\"<p><span style=\"font-size: 36px; color: rgb(0, 0, 0);\">Privacy Policy for Zaika</span></p><p><br><span style=\"font-weight: normal;\">At </span>Zaika<span style=\"font-weight: normal;\">, accessible from zaika.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Zaika and how we use it.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p>\r\n</p><p><span style=\"font-weight: normal;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Zaika. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Consent</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\">Information we collect</span></span></p><p><span style=\"color: rgb(0, 0, 0);\">\r\n</span></p><p><span style=\"font-weight: normal;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">How we use your information</span></p><p>\r\n</p><p><span style=\"font-weight: normal;\">We use the information we collect in various ways, including to:</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Provide, operate, and maintain our website\r\n</span></p><p><span style=\"font-weight: normal;\">Improve, personalize, and expand our website\r\n</span></p><p><span style=\"font-weight: normal;\">Understand and analyze how you use our website\r\n</span></p><p><span style=\"font-weight: normal;\">Develop new products, services, features, and functionality\r\n</span></p><p><span style=\"font-weight: normal;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes\r\n</span></p><p><span style=\"font-weight: normal;\">Send you emails\r\n</span></p><p><span style=\"font-weight: normal;\">Find and prevent fraud</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Log Files</span></p><p>\r\n</p><p><span style=\"font-weight: normal;\">Zaika follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Cookies and Web Beacons</span></p><p>\r\n</p><p><span style=\"font-weight: normal;\">Like any other website, Zaika uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.\r\n</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">For more general information on cookies, please read more on the Cookie Consent website.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\">Advertising Partners Privacy Policies</span></span></p><p><span style=\"color: rgb(0, 0, 0);\">\r\n</span></p><p><span style=\"font-weight: normal;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Zaika.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Zaika, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Note that Zaika has no access to or control over these cookies that are used by third-party advertisers.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p style=\"\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">Third Party Privacy Policies</span></p><p><span style=\"font-weight: normal;\">Zaika\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span>\r\n</span></p><p><span style=\"font-weight: normal;\">Under the CCPA, among other rights, California consumers have the right to:</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Request that a business delete any personal data about the consumer that a business has collected.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">GDPR Data Protection Rights</span></p><p><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"font-weight: normal;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\">Children\'s Information</span></span></p><p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 24px;\"><br></span>\r\n</span></p><p><span style=\"font-weight: normal;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></p><p><span style=\"font-weight: normal;\"><br></span></p><p><span style=\"font-weight: normal;\">\r\n</span></p><p><span style=\"font-weight: normal;\">Zaika does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</span></p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>\";s:17:\"summer_note_image\";N;s:11:\"padding_top\";s:3:\"105\";s:14:\"padding_bottom\";s:2:\"96\";}', 'App\\PageBuilder\\Addons\\Common\\TextSectionStyleOne', '2021-11-21 06:56:15', '2022-01-12 16:19:24'),
(72, 'ProductSliderStyleTwo', 'update', 'homepage_02', 2, NULL, 'static', 'a:16:{s:2:\"id\";s:2:\"72\";s:10:\"addon_name\";s:21:\"ProductSliderStyleTwo\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTbGlkZXJTdHlsZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:11:\"homepage_02\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";N;s:15:\"addon_page_type\";s:6:\"static\";s:13:\"section_title\";s:10:\"New Design\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:5:\"items\";a:5:{i:0;s:2:\"37\";i:1;s:2:\"38\";i:2;s:2:\"39\";i:3;s:2:\"40\";i:4;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:11:\"items_count\";s:1:\"5\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:1:\"0\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSliderStyleTwo', '2021-11-28 23:55:39', '2021-12-01 18:48:17'),
(73, 'ProductSliderStyleTwo', 'update', 'dynamic_page', 2, 7, 'dynamic_page', 'a:16:{s:2:\"id\";s:2:\"73\";s:10:\"addon_name\";s:21:\"ProductSliderStyleTwo\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQcm9kdWN0XFByb2R1Y3RTbGlkZXJTdHlsZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:10:\"New Design\";s:16:\"section_subtitle\";s:96:\"A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring\";s:5:\"items\";a:5:{i:0;s:2:\"37\";i:1;s:2:\"38\";i:2;s:2:\"39\";i:3;s:2:\"40\";i:4;s:2:\"41\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:11:\"items_count\";s:1:\"5\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', 'App\\PageBuilder\\Addons\\Product\\ProductSliderStyleTwo', '2021-11-29 00:01:44', '2021-11-29 19:17:53'),
(75, 'GridStyleOne', 'update', 'dynamic_page', NULL, 4, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"75\";s:10:\"addon_name\";s:12:\"GridStyleOne\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEdyaWRTdHlsZU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:1:\"4\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"items\";N;s:18:\"read_more_btn_text\";s:9:\"Read More\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"64\";}', 'App\\PageBuilder\\Addons\\Blog\\GridStyleOne', '2021-11-29 00:04:39', '2021-11-29 00:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dvrobin4@gmail.com', 'tBrVsCSxrJA0eJsOSkpFyNgeXleI1p', NULL),
('rajivkissy@gmail.com', 'lgcF2ZVWyOOZTG6BiP3c7gUmchTKDA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'user-list', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(6, 'user-create', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(7, 'user-edit', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(8, 'user-delete', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(9, 'newsletter-list', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(10, 'newsletter-create', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(11, 'newsletter-mail-send', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(12, 'newsletter-delete', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(13, 'blog-list', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(14, 'blog-create', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(15, 'blog-edit', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(16, 'blog-delete', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(17, 'blog-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(18, 'blog-single-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(19, 'blog-category-list', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(20, 'blog-category-create', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(21, 'blog-category-edit', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(22, 'blog-category-delete', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(32, 'faq-list', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(33, 'faq-create', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(34, 'faq-edit', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(35, 'faq-delete', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(40, 'page-list', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(41, 'page-create', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(42, 'page-edit', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(43, 'page-delete', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(106, 'appearance-home-variant', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(107, 'appearance-menu-manage-list', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(108, 'appearance-menu-manage-edit', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(109, 'appearance-menu-manage-delete', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(110, 'appearance-widget-manage', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(111, 'appearance-form-builder', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(112, 'appearance-media-image', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(113, 'appearance-menu-manage-create', 'admin', '2021-07-25 22:21:13', '2021-07-25 22:21:13'),
(114, 'page-settings-home-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(115, 'page-settings-about-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(116, 'page-settings-event-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(117, 'page-settings-contact-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(118, 'page-settings-error-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(119, 'page-settings-maintain-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(120, 'general-settings-site-identity', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(121, 'general-settings-basic-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(122, 'general-settings-color-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(123, 'general-settings-typography', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(124, 'general-settings-seo-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(125, 'general-settings-third-party-script', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(126, 'general-settings-email-template', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(127, 'general-settings-smtp-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(128, 'general-settings-regenerate-media-image', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(129, 'general-settings-page-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(130, 'general-settings-payment-gateway', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(131, 'general-settings-custom-css', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(132, 'general-settings-custom-js', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(133, 'general-settings-cache-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(134, 'general-settings-gdpr-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(135, 'general-settings-sitemap', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(136, 'general-settings-rss-feed', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(137, 'general-settings-license', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(138, 'language-list', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(139, 'language-edit', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(140, 'language-create', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(141, 'language-delete', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(142, 'support-ticket-department-list', 'admin', '2021-11-10 06:49:15', '2021-11-10 06:49:15'),
(143, 'support-ticket-department-create', 'admin', '2021-11-10 06:49:15', '2021-11-10 06:49:15'),
(145, 'support-ticket-department-delete', 'admin', '2021-11-10 06:49:15', '2021-11-10 06:49:15'),
(146, 'support-ticket-page-settings', 'admin', '2021-11-10 06:49:15', '2021-11-10 06:49:15'),
(147, 'support-ticket-list', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(148, 'support-ticket-create', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(149, 'support-ticket-edit', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(150, 'support-ticket-delete', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(151, 'support-ticket-priority-change', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(152, 'support-ticket-status-change', 'admin', '2021-11-10 08:04:09', '2021-11-10 08:04:09'),
(153, 'support-ticket-send-message', 'admin', '2021-11-10 08:04:10', '2021-11-10 08:04:10'),
(154, 'support-ticket-view', 'admin', '2021-11-10 08:07:21', '2021-11-10 08:07:21'),
(155, 'support-ticket-department-edit', 'admin', '2021-11-10 08:32:20', '2021-11-10 08:32:20'),
(156, 'country-list', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(157, 'country-create', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(158, 'country-edit', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(159, 'country-delete', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(160, 'state-list', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(161, 'state-create', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(162, 'state-edit', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(163, 'state-delete', 'admin', '2021-11-10 22:44:14', '2021-11-10 22:44:14'),
(164, 'country-tax-list', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(165, 'country-tax-create', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(166, 'country-tax-edit', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(167, 'country-tax-delete', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(168, 'state-tax-list', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(169, 'state-tax-create', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(170, 'state-tax-edit', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(171, 'state-tax-delete', 'admin', '2021-11-10 23:24:38', '2021-11-10 23:24:38'),
(172, 'campaign-list', 'admin', '2021-11-10 23:35:05', '2021-11-10 23:35:05'),
(173, 'campaign-create', 'admin', '2021-11-10 23:35:05', '2021-11-10 23:35:05'),
(174, 'campaign-edit', 'admin', '2021-11-10 23:35:06', '2021-11-10 23:35:06'),
(175, 'campaign-delete', 'admin', '2021-11-10 23:35:06', '2021-11-10 23:35:06'),
(176, 'shipping-zone-list', 'admin', '2021-11-11 00:04:24', '2021-11-11 00:04:24'),
(177, 'shipping-zone-create', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(178, 'shipping-zone-edit', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(179, 'shipping-zone-delete', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(180, 'shipping-method-list', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(181, 'shipping-method-create', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(182, 'shipping-method-edit', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(183, 'shipping-method-delete', 'admin', '2021-11-11 00:04:25', '2021-11-11 00:04:25'),
(184, 'shipping-method-make-default', 'admin', '2021-11-11 00:38:23', '2021-11-11 00:38:23'),
(221, 'product-list', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(222, 'product-create', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(223, 'product-edit', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(224, 'product-delete', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(225, 'product-clone', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(226, 'product-view', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(227, 'deleted-product-list', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(230, 'deleted-product-delete', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(231, 'product-inventory-list', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(232, 'product-inventory-create', 'admin', '2021-11-11 03:54:29', '2021-11-11 03:54:29'),
(233, 'product-inventory-edit', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(234, 'product-inventory-delete', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(235, 'product-category-list', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(236, 'product-category-create', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(237, 'product-category-edit', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(238, 'product-category-delete', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(239, 'product-subcategory-list', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(240, 'product-subcategory-create', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(241, 'product-subcategory-edit', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(242, 'product-subcategory-delete', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(243, 'product-attribute-list', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(244, 'product-attribute-create', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(245, 'product-attribute-edit', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(246, 'product-attribute-delete', 'admin', '2021-11-11 03:54:30', '2021-11-11 03:54:30'),
(247, 'product-coupon-list', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(248, 'product-coupon-create', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(249, 'product-coupon-edit', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(250, 'product-coupon-delete', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(251, 'product-tag-list', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(252, 'product-tag-create', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(253, 'product-tag-edit', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(254, 'product-tag-delete', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(255, 'product-rating-list', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(256, 'product-rating-create', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(257, 'product-rating-edit', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(258, 'product-rating-delete', 'admin', '2021-11-11 03:54:31', '2021-11-11 03:54:31'),
(259, 'deleted-product-restore', 'admin', '2021-11-11 04:06:15', '2021-11-11 04:06:15'),
(260, 'product-order-list', 'admin', '2021-11-11 07:39:54', '2021-11-11 07:39:54'),
(261, 'product-order-view-details', 'admin', '2021-11-11 07:39:54', '2021-11-11 07:39:54'),
(262, 'product-order-update-status', 'admin', '2021-11-11 07:39:54', '2021-11-11 07:39:54'),
(263, 'product-order-send-alert-mail', 'admin', '2021-11-11 07:39:54', '2021-11-11 07:39:54'),
(264, 'product-order-generate-invoice', 'admin', '2021-11-11 07:39:54', '2021-11-11 07:39:54'),
(265, 'product-order-create', 'admin', '2021-11-11 07:44:38', '2021-11-11 07:44:38'),
(266, 'product-order-approve-payment', 'admin', '2021-11-11 07:53:22', '2021-11-11 07:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) DEFAULT NULL,
  `sub_category_id` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image_gallery` text COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `badge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` longtext COLLATE utf8mb4_unicode_ci,
  `sold_count` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `summary`, `description`, `category_id`, `sub_category_id`, `image`, `product_image_gallery`, `price`, `sale_price`, `badge`, `status`, `slug`, `attributes`, `sold_count`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Product Bundle 111', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story.', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny. If you’ve got a problem chum, think how it could be.', 1, '[\"3\",\"4\"]', '225', 'null', 40, 35, 'On Sale', 'status', 'Product-Bundle-111', NULL, NULL, '2021-09-26 02:30:38', '2021-09-23 10:54:28', '2021-09-26 02:30:38'),
(2, 'Blue Denim Ladies', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 3, '[null,null]', '354', 'null', 15, 12, 'On Sale', 'publish', 'blue-denim-ladies', '[]', 1, NULL, '2021-09-23 08:25:41', '2022-01-28 10:39:50'),
(3, 'Casual Shirt', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.\r\n\r\nMutley, you snickering, floppy eared hound. When courage is needed, you’re never around. Those medals you wear on your moth-eaten chest should be there for bungling at which you are best. So, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon. Howwww! Nab him, jab him, tab him, grab him, stop that pigeon now.', 3, '[\"3\",\"4\"]', '363', '[\"365\"]', 35, 30, 'On Sale', 'publish', 'casual-shirt', '[]', 3, NULL, '2021-09-23 08:30:44', '2021-11-30 21:20:43'),
(4, 'Black Tops', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story.', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny. If you’ve got a problem chum, think how it could be.', 3, '[null,null]', '358', '[\"364\"]', 0, 35, 'On Sale', 'publish', 'black-tops', '[]', 3, NULL, '2021-09-23 09:49:19', '2022-01-27 16:52:50'),
(18, 'Flowery Frock', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story.', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny. If you’ve got a problem chum, think how it could be.', 3, '[\"3\",\"4\"]', '361', '[\"363\",\"362\",\"350\"]', 0, 35, 'On Sale', 'publish', 'flowery-frock', '{\"2\":[{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"12\",\"attribute_image\":\"357\"},{\"type\":\"Size\",\"name\":\"XL\",\"additional_price\":\"11\",\"attribute_image\":\"360\"}]}', 1, NULL, '2021-09-23 11:07:26', '2022-01-12 12:10:37'),
(21, 'Red Tops', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story.', 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny. If you’ve got a problem chum, think how it could be.', 3, '[\"1\",\"3\",\"5\"]', '359', '[\"360\",\"353\"]', 40, 35, 'On Sale', 'publish', 'red-tops', '[]', 3, NULL, '2021-09-26 02:30:44', '2022-01-26 18:34:13'),
(25, 'Tinted Sunglass', 'Knight Rider, a shadowy flight into the dangerous world of a man who does not exist. Michael Knight, a young loner on a crusade to champion the cause of the innocent, the helpless in a world of criminals who operate above the law.', 'Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.', 3, '[null,null,null]', '357', '[\"358\",\"352\",\"350\"]', 42, 35, 'On Sale', 'publish', 'tinted-sunglass', '{\"1\":[{\"type\":\"Color\",\"name\":\"Blue\",\"additional_price\":\"10\",\"attribute_image\":\"354\"},{\"type\":\"Color\",\"name\":\"Red\",\"additional_price\":\"5\",\"attribute_image\":\"360\"}],\"2\":[{\"type\":\"Size\",\"name\":\"L\",\"additional_price\":\"5\",\"attribute_image\":\"362\"},{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"0\",\"attribute_image\":\"359\"}]}', 2, NULL, '2021-09-28 08:40:56', '2022-01-17 21:27:16'),
(26, 'Women\'s Sunglass', 'Knight Rider, a shadowy flight into the dangerous world of a man who does not exist. Michael Knight, a young loner on a crusade to champion the cause of the innocent, the helpless in a world of criminals who operate above the law.', 'Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.', 3, '[\"3\",\"4\",\"5\"]', '354', '[\"354\",\"353\"]', 42, 35, 'On Sale', 'publish', 'womens-sunglass', '[]', 1, NULL, '2021-09-28 09:41:26', '2021-12-01 22:20:41'),
(30, 'Stylish Glass For Women', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.\r\n\r\nBarnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.', 3, NULL, '350', '[\"352\",\"351\"]', 0, 29.99, 'Limited Offer', 'publish', 'stylish-glass-for-women', '[]', 6, NULL, '2021-10-12 11:19:13', '2022-01-27 16:23:55'),
(33, 'Blue Denim For Gents', 'Mutley, you snickering, floppy eared hound. When courage is needed, you’re never around. Those medals you wear on your moth-eaten chest should be there for bungling at which you are best.', 'Mutley, you snickering, floppy eared hound. When courage is needed, you’re never around. Those medals you wear on your moth-eaten chest should be there for bungling at which you are best. So, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon, stop that pigeon. Howwww! Nab him, jab him, tab him, grab him, stop that pigeon now.', 1, '[\"3\",\"4\"]', '347', '[\"348\",\"347\"]', 17, 15, 'Winter Sale', 'publish', 'blue-denim-for-gents', '{\"1\":[{\"type\":\"Color\",\"name\":\"Blue\",\"additional_price\":\"0\"},{\"type\":\"Color\",\"name\":\"Cyan\",\"additional_price\":\"3\"}],\"2\":[{\"type\":\"Size\",\"name\":\"S\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"L\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"XL\",\"additional_price\":\"2\"}]}', 1, NULL, '2021-10-30 08:07:10', '2021-11-30 15:10:36'),
(34, 'Blue Denim Ladies', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '312', 'null', 15, 12, 'On Sale', 'draft', 'blue-denim-ladies', '[]', 1, '2021-11-20 12:42:41', '2021-11-20 12:42:29', '2021-11-20 12:42:41'),
(35, 'Polo Shirt', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '341', '[\"342\"]', 15, 12, 'On Sale', 'publish', 'polo-shirt', '[]', 1, NULL, '2021-11-20 12:42:45', '2022-01-21 19:41:41'),
(36, 'Full Sleeve Hoodie', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '346', '[\"346\"]', 0, 12, 'On Sale', 'publish', 'full-sleeve-hoodie', '{\"1\":[{\"type\":\"Color\",\"name\":\"Blue\",\"additional_price\":\"0\",\"attribute_image\":\"\"}],\"2\":[{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"0\",\"attribute_image\":\"\"},{\"type\":\"Size\",\"name\":\"L\",\"additional_price\":\"0\",\"attribute_image\":\"\"},{\"type\":\"Size\",\"name\":\"XL\",\"additional_price\":\"2\",\"attribute_image\":\"\"},{\"type\":\"Size\",\"name\":\"XXL\",\"additional_price\":\"2\",\"attribute_image\":\"\"}]}', 1, NULL, '2021-11-20 12:44:31', '2022-01-12 12:10:22'),
(37, 'Vivid Checked Shirt', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '344', '[\"345\",\"344\"]', 15, 12, 'On Sale', 'publish', 'vivid-checked-shirt', '[]', 1, NULL, '2021-11-20 13:04:16', '2021-11-30 21:23:56'),
(38, 'Casual Blue Shirt For Summer', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '339', '[\"343\",\"342\",\"341\"]', 12, 10, 'On Sale', 'publish', 'casual-blue-shirt-for-summer', '{\"2\":[{\"type\":\"Size\",\"name\":\"S\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"L\",\"additional_price\":\"0\"},{\"type\":\"Size\",\"name\":\"XL\",\"additional_price\":\"5\"}]}', 1, NULL, '2021-11-20 13:04:18', '2022-01-19 15:34:10'),
(39, 'Casual Blue Shirt For Winter', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '340', '[\"339\"]', 17, 14, 'On Sale', 'publish', 'casual-blue-shirt-for-winter', '{\"2\":[{\"type\":\"Size\",\"name\":\"S\",\"additional_price\":\"0\",\"attribute_image\":\"348\"},{\"type\":\"Size\",\"name\":\"M\",\"additional_price\":\"0\",\"attribute_image\":\"348\"},{\"type\":\"Size\",\"name\":\"L\",\"additional_price\":\"0\",\"attribute_image\":\"\"},{\"type\":\"Size\",\"name\":\"XL\",\"additional_price\":\"5\",\"attribute_image\":\"348\"}]}', 1, NULL, '2021-11-20 13:11:47', '2022-01-08 05:58:51'),
(40, 'Navy Blue Suit For Gents', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '338', '[\"338\",\"337\"]', 35, 28, 'On Sale', 'publish', 'navy-blue-suit-for-gents', '[]', 1, NULL, '2021-11-21 03:07:24', '2021-11-30 21:26:00'),
(41, 'Tweed Jacket For Gents', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!', 'Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!\r\n\r\nHong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough, with a Hong Kong Phooey chop (Hi-Ya!). Hong Kong Phooey, number one super guy. Hong Kong Phooey, quicker than the human eye. Hong Kong Phooey, he’s fan-riffic!', 1, '[null,null]', '337', '[\"338\"]', 0, 28, 'On Sale', 'publish', 'tweed-jacket-for-gents', '[]', 1, NULL, '2021-11-21 03:10:15', '2022-01-12 12:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_additional_information`
--

CREATE TABLE `product_additional_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_additional_information`
--

INSERT INTO `product_additional_information` (`id`, `product_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(313, 37, 'Cloth Type', 'Pure Cotton', NULL, NULL),
(314, 37, 'Sleeve', 'Full Sleeve', NULL, NULL),
(315, 37, 'Collar Type', 'Tab, Cutaway', NULL, NULL),
(327, 39, 'Cloth Type', 'Wool', NULL, NULL),
(328, 38, 'Cloth Type', 'Cotton Mix', NULL, NULL),
(329, 38, 'Color', 'Navy Blue', NULL, NULL),
(332, 33, 'Multiple Color Available', 'Yes', NULL, NULL),
(333, 33, 'Available Colors', 'Green, Cyan, Blue', NULL, NULL),
(334, 33, 'Available Sizes', 'S, M, L,  XL, XXL', NULL, NULL),
(337, 25, 'Total Item', '9', NULL, NULL),
(338, 25, 'Expires At', '31 October 2021', NULL, NULL),
(339, 21, 'Total Item', '22', NULL, NULL),
(340, 21, 'Total Quantity', '5 KG', NULL, NULL),
(341, 21, 'Expires At', '31 October 2021', NULL, NULL),
(342, 26, 'Total Item', '9', NULL, NULL),
(343, 26, 'Expires At', '31 October 2021', NULL, NULL),
(344, 36, 'Cloth Type', 'Cotton Mix', NULL, NULL),
(345, 36, 'Sleeve', 'Full Sleeve', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `title`, `terms`, `created_at`, `updated_at`) VALUES
(1, 'Color', '[\"Red\",\"Green\",\"Blue\",\"Cyan\"]', '2021-09-21 04:18:49', '2021-09-21 04:28:24'),
(2, 'Size', '[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]', '2021-09-21 04:29:17', '2021-09-21 04:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s Fashion', 'publish', '335', '2021-09-21 06:01:04', '2021-11-20 22:38:27'),
(3, 'Women\'s Style', 'publish', '336', '2021-10-21 03:56:15', '2021-11-20 22:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_coupons`
--

CREATE TABLE `product_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on_details` longtext COLLATE utf8mb4_unicode_ci,
  `expire_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_coupons`
--

INSERT INTO `product_coupons` (`id`, `title`, `code`, `discount`, `discount_type`, `discount_on`, `discount_on_details`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'January Sale', 'Jan22', '10', 'percentage', 'all', '', '2022-01-31', 'publish', '2021-11-01 06:48:02', '2022-01-27 16:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_count` bigint(11) UNSIGNED DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `product_id`, `sku`, `stock_count`, `sold_count`, `created_at`, `updated_at`) VALUES
(5, 2, 'SKU-PBXYZ3', 1328, 104, '2021-09-26 05:13:47', '2022-01-27 19:26:27'),
(14, 3, 'SKU-PBXYZ2', 0, 64, '2021-09-26 05:18:06', '2021-11-27 05:12:06'),
(15, 33, 'SKU-BDM-asbjkas', 1085, NULL, '2021-11-02 09:05:48', '2022-01-11 21:06:31'),
(16, 30, 'WFY-002', 6841, 25, '2021-11-08 03:39:28', '2022-01-27 16:23:55'),
(17, 4, '2CGo6Qaf6U', 1614, 79, '2021-11-16 22:58:44', '2022-01-27 19:26:27'),
(18, 18, 'Mm2zc3ipUJ', 8681, 5, '2021-11-16 22:58:44', '2022-01-27 17:48:41'),
(19, 25, 'qKo3xSLF3b', 7677, 7, '2021-11-16 22:58:44', '2022-01-26 14:02:58'),
(20, 26, 'FSjPuWMIf1', 6847, 17, '2021-11-16 22:58:44', '2022-01-27 16:28:28'),
(21, 21, 'REDT-54581', 6825, 16, '2021-11-20 07:33:13', '2022-01-26 18:48:39'),
(22, 35, 'PLSH-521785', 2457, 2, '2021-11-20 07:44:19', '2022-01-12 13:03:11'),
(23, 36, 'FSH-635452', 3060, 0, '2021-11-20 08:04:07', '2022-01-11 21:06:01'),
(24, 37, 'VCS-464385', 0, 0, '2021-11-20 08:08:30', '2021-11-20 08:08:30'),
(25, 38, 'CBSS-613511', 3495, 2, '2021-11-20 08:10:47', '2022-01-24 11:20:24'),
(26, 39, 'CBWS-613517', 1653, 1, '2021-11-20 08:13:03', '2022-01-11 21:05:41'),
(27, 3, 'NBSG-1554374', 5950, 1, '2021-11-20 22:10:03', '2022-01-12 12:28:39'),
(28, 41, 'TJG-568946', 1247, 3, '2021-11-20 22:12:49', '2022-01-26 12:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_details`
--

CREATE TABLE `product_inventory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `attribute_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventory_details`
--

INSERT INTO `product_inventory_details` (`id`, `inventory_id`, `attribute_id`, `attribute_value`, `stock_count`, `created_at`, `updated_at`) VALUES
(17, 14, 2, 'S', 5, '2021-09-26 07:26:59', '2021-09-26 07:26:59'),
(18, 14, 1, 'Red', 3, '2021-09-26 07:26:59', '2021-09-26 07:26:59'),
(19, 14, 2, 'S', 3, '2021-09-26 07:26:59', '2021-09-26 07:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `rating` int(11) NOT NULL,
  `review_msg` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sell_infos`
--

CREATE TABLE `product_sell_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discounted` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details` longtext COLLATE utf8mb4_unicode_ci,
  `payment_meta` text COLLATE utf8mb4_unicode_ci,
  `shipping_address_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_shipping_option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_image_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

CREATE TABLE `product_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `title`, `status`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Fruits & Vegetables', 'publish', '225', 1, '2021-09-21 07:03:17', '2021-09-21 07:03:37'),
(3, 'Snacks', 'publish', '226', 1, '2021-09-22 07:43:41', '2021-09-22 07:43:41'),
(4, 'Beverages', 'publish', '227', 1, '2021-09-22 07:44:01', '2021-09-22 07:44:01'),
(5, 'Breakfast', 'publish', '228', 1, '2021-09-22 07:47:06', '2021-09-22 07:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag`, `created_at`, `updated_at`) VALUES
(251, 33, 'denim', '2022-01-11 21:06:31', '2022-01-11 21:06:31'),
(252, 33, 'shirt', '2022-01-11 21:06:31', '2022-01-11 21:06:31'),
(253, 33, 'winter', '2022-01-11 21:06:31', '2022-01-11 21:06:31'),
(254, 33, 'men', '2022-01-11 21:06:31', '2022-01-11 21:06:31'),
(255, 33, 'mens', '2022-01-11 21:06:31', '2022-01-11 21:06:31'),
(256, 25, 'yellow', '2022-01-11 21:06:54', '2022-01-11 21:06:54'),
(257, 25, 'comfortable', '2022-01-11 21:06:54', '2022-01-11 21:06:54'),
(258, 25, 'kameez', '2022-01-11 21:06:54', '2022-01-11 21:06:54'),
(271, 30, 'frock', '2022-01-16 10:30:09', '2022-01-16 10:30:09'),
(272, 30, 'yellow', '2022-01-16 10:30:09', '2022-01-16 10:30:09'),
(273, 30, 'comfortable', '2022-01-16 10:30:09', '2022-01-16 10:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 21:01:22'),
(3, 'Super Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 18:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 2),
(6, 2),
(7, 2),
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(14, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(32, 2),
(33, 2),
(40, 2),
(41, 2),
(42, 2),
(106, 2),
(107, 2),
(108, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(142, 2),
(143, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(230, 2),
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(243, 2),
(244, 2),
(245, 2),
(246, 2),
(247, 2),
(248, 2),
(249, 2),
(250, 2),
(251, 2),
(252, 2),
(253, 2),
(254, 2),
(255, 2),
(256, 2),
(257, 2),
(258, 2),
(259, 2),
(260, 2),
(261, 2),
(262, 2),
(263, 2),
(264, 2),
(265, 2),
(266, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `name`, `zone_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Flat Rates', 2, 0, '2021-10-08 23:01:35', '2021-11-30 17:10:53'),
(3, 'Free Shipping', 1, 1, '2021-10-08 23:12:38', '2021-11-30 17:10:53'),
(4, 'North America', 4, 0, '2022-01-22 12:47:05', '2022-01-22 12:47:05'),
(5, 'North America AndShip', 4, 0, '2022-01-22 12:49:10', '2022-01-22 12:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_options`
--

CREATE TABLE `shipping_method_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `tax_status` tinyint(1) NOT NULL DEFAULT '1',
  `setting_preset` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double(8,2) NOT NULL DEFAULT '0.00',
  `minimum_order_amount` double(8,2) DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_method_options`
--

INSERT INTO `shipping_method_options` (`id`, `title`, `shipping_method_id`, `status`, `tax_status`, `setting_preset`, `cost`, `minimum_order_amount`, `coupon`, `created_at`, `updated_at`) VALUES
(6, 'Flat Rates', 1, 1, 1, 'none', 9.00, 0.00, NULL, '2021-10-08 23:03:27', '2021-10-08 23:03:27'),
(8, 'Free Shipping', 3, 1, 0, 'none', 0.00, 0.00, NULL, '2021-10-08 23:12:38', '2021-10-08 23:12:38'),
(9, 'North America', 4, 1, 1, 'min_order_or_coupon', 10.00, 50.00, 'North22', '2022-01-22 12:47:05', '2022-01-22 12:47:05'),
(11, 'North America AndShip', 5, 1, 1, 'min_order_and_coupon', 10.00, 50.00, 'NorthAnd', '2022-01-22 12:50:18', '2022-01-22 12:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'lab la-twitter', 'https://twitter.com/xgenious1', '2020-06-19 23:55:51', '2020-06-20 00:09:12'),
(2, 'lab la-facebook-f', 'https://www.facebook.com/xgenious', '2020-06-19 23:56:17', '2021-02-27 13:28:11'),
(3, 'lab la-accessible-icon', 'lorem', '2020-06-20 00:10:18', '2021-11-21 00:54:23'),
(4, 'lab la-instagram', '#', '2020-06-20 00:10:35', '2020-06-20 00:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 24, 'publish', '2021-09-27 05:03:58', '2022-01-12 16:07:21'),
(2, 'Chittagong', 24, 'publish', '2021-09-27 05:05:47', '2022-01-12 16:07:13'),
(3, 'Sylhet', 24, 'publish', '2021-09-27 05:05:53', '2022-01-12 16:05:47'),
(4, 'New York', 2, 'publish', '2021-09-27 05:06:21', '2021-09-27 05:06:21'),
(9, 'Wellington', 143, 'publish', '2021-10-08 22:56:10', '2022-01-12 16:05:38'),
(10, 'Christchurch', 143, 'publish', '2021-10-08 22:56:58', '2022-01-12 16:06:10'),
(11, 'Canberra', 20, 'publish', '2021-10-08 22:57:38', '2022-01-12 16:06:53'),
(12, 'Perth', 19, 'publish', '2021-10-08 22:58:44', '2022-01-12 16:06:31'),
(13, 'Melbourne', 19, 'publish', '2021-10-08 22:59:32', '2022-01-12 16:06:43'),
(14, 'Iowa', 2, 'publish', '2021-11-25 03:33:55', '2021-11-25 03:33:55'),
(15, 'Connecticut', 2, 'publish', '2021-11-25 03:34:12', '2021-11-25 03:34:12'),
(16, 'Ohio', 2, 'publish', '2021-11-25 03:38:50', '2021-11-25 03:38:50'),
(17, 'Zurich', 19, 'publish', '2021-11-25 03:39:39', '2022-01-12 16:07:03'),
(20, 'Lauterbrunnen', 143, 'publish', '2021-11-25 03:41:26', '2022-01-12 16:05:59'),
(22, 'Istanbul', 199, 'publish', '2021-11-25 03:46:58', '2022-01-12 16:05:04'),
(23, 'Bursa', 199, 'publish', '2021-11-25 03:47:24', '2022-01-12 16:05:16'),
(24, 'Andhra Pradesh', 95, 'publish', '2022-01-24 10:22:27', '2022-01-24 10:22:27'),
(25, 'Kerala', 95, 'publish', '2022-01-24 10:23:03', '2022-01-24 10:23:03'),
(26, 'Assam', 95, 'publish', '2022-01-24 10:23:37', '2022-01-24 10:23:37'),
(27, 'Bihar', 95, 'publish', '2022-01-24 10:24:07', '2022-01-24 10:24:07'),
(28, 'Chhattisgarh', 95, 'publish', '2022-01-24 10:24:28', '2022-01-24 10:24:28'),
(29, 'Goa', 95, 'publish', '2022-01-24 10:24:41', '2022-01-24 10:24:41'),
(30, 'Gujarat', 95, 'publish', '2022-01-24 10:24:51', '2022-01-24 10:24:51'),
(31, 'Haryana', 95, 'publish', '2022-01-24 10:25:01', '2022-01-24 10:25:01'),
(32, 'Himachal Pradesh', 95, 'publish', '2022-01-24 10:25:10', '2022-01-24 10:25:10'),
(33, 'Maharashtra', 95, 'publish', '2022-01-24 10:25:23', '2022-01-24 10:25:23'),
(34, 'Punjab', 95, 'publish', '2022-01-24 10:25:39', '2022-01-24 10:25:39'),
(35, 'Rajasthan', 95, 'publish', '2022-01-24 10:25:48', '2022-01-24 10:25:48'),
(36, 'Sikkim', 95, 'publish', '2022-01-24 10:25:58', '2022-01-24 10:25:58'),
(37, 'Tamil Nadu', 95, 'publish', '2022-01-24 10:26:07', '2022-01-24 10:26:07'),
(38, 'Telangana', 95, 'publish', '2022-01-24 10:26:15', '2022-01-24 10:26:15'),
(39, 'Tripura', 95, 'publish', '2022-01-24 10:26:27', '2022-01-24 10:26:27'),
(40, 'Uttar Pradesh', 95, 'publish', '2022-01-24 10:26:40', '2022-01-24 10:26:40'),
(41, 'Uttarakhand', 95, 'publish', '2022-01-24 10:26:49', '2022-01-24 10:26:49'),
(42, 'West Bengal', 95, 'publish', '2022-01-24 10:26:59', '2022-01-24 10:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `state_taxes`
--

CREATE TABLE `state_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `tax_percentage` float(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state_taxes`
--

INSERT INTO `state_taxes` (`id`, `state_id`, `tax_percentage`, `created_at`, `updated_at`) VALUES
(4, 12, 7.00, '2021-11-15 22:59:12', '2021-11-15 22:59:12'),
(5, 13, 6.00, '2021-11-25 03:50:31', '2021-11-25 03:50:31'),
(6, 10, 6.00, '2021-11-25 03:50:56', '2021-11-25 03:50:56'),
(7, 9, 5.00, '2021-11-25 03:51:04', '2021-11-25 03:51:04'),
(8, 17, 7.00, '2021-11-25 03:51:26', '2021-11-25 03:51:26'),
(9, 2, 7.00, '2021-11-25 03:51:28', '2022-01-12 16:08:57'),
(10, 4, 5.00, '2021-11-25 03:51:33', '2022-01-12 16:09:04'),
(11, 20, 5.00, '2021-11-25 03:51:36', '2021-11-25 03:51:36'),
(13, 22, 2.00, '2021-11-25 03:52:06', '2021-11-25 03:52:06'),
(14, 23, 3.00, '2021-11-25 03:52:13', '2021-11-25 03:52:13'),
(16, 17, 3.00, '2021-11-25 03:52:21', '2022-01-12 16:08:51'),
(18, 1, 4.50, '2022-01-12 15:49:04', '2022-01-12 15:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1757, 'nullable|string', NULL, '2021-02-21 10:53:41', '2021-02-21 10:53:52'),
(2035, 'testimonial_page_meta_description', NULL, '2021-06-17 08:41:43', '2021-07-26 09:14:51'),
(2036, 'image_gallery_page_name', 'Image Gallery', '2021-06-17 08:41:44', '2021-10-20 23:18:09'),
(2037, 'image_gallery_page_meta_tags', NULL, '2021-06-17 08:41:44', '2021-10-20 23:18:09'),
(2038, 'image_gallery_page_meta_description', NULL, '2021-06-17 08:41:44', '2021-10-20 23:18:09'),
(2039, 'donor_page_name', 'Donor List', '2021-06-17 08:41:44', '2021-07-26 09:14:51'),
(2040, 'donor_page_meta_tags', NULL, '2021-06-17 08:41:44', '2021-07-26 09:14:51'),
(2041, 'donor_page_meta_description', NULL, '2021-06-17 08:41:44', '2021-07-26 09:14:51'),
(2042, 'about_page_about_section_title', 'We are {color}charity{/color} foundation with 20 years experience', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2043, 'about_page_about_section_subtitle', 'About Us', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2044, 'about_page_about_section_description', '<p style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px; color: rgb(97, 97, 97); outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\"><span style=\"outline: none; -webkit-font-smoothing: antialiased; font-size: 60px; line-height: 60px;\">W</span>e are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as</p><p style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px; color: rgb(97, 97, 97); outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional. consectetur adipiscing elit. Aenean egestas magna at porttitor vehicula nullam augue ipsum dolor.</p>', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2045, 'about_page_our_mission_title', 'Our Mission', '2021-06-17 09:28:55', '2021-06-27 10:19:07'),
(2046, 'about_page_our_mission_description', '<span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif; background-color: rgb(243, 240, 234);\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</span>', '2021-06-17 09:28:55', '2021-06-27 10:19:07'),
(2047, 'about_page_our_mission_list_section_title', 'a:4:{i:0;s:31:\"If you want to change the world\";i:1;s:31:\"If you want to change the world\";i:2;s:31:\"If you want to change the world\";i:3;s:31:\"If you want to change the world\";}', '2021-06-17 09:28:55', '2021-06-27 10:19:08'),
(2048, 'about_page_what_we_do_area_subtitle', 'What we do', '2021-06-17 09:38:40', '2021-06-27 10:20:54'),
(2049, 'about_page_what_we_do_area_title', 'We have selected the following {color}problems{/color}', '2021-06-17 09:38:40', '2021-06-27 10:20:54'),
(2050, 'about_page_what_we_do_section_title', 'a:3:{i:0;s:9:\"Education\";i:1;s:7:\"Helping\";i:2;s:9:\"Treatment\";}', '2021-06-17 09:38:40', '2021-06-27 10:20:55'),
(2051, 'about_page_what_we_do_section_description', 'a:3:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-17 09:38:40', '2021-06-27 10:20:55'),
(2052, 'about_page_testimonial_title', 'What {color}peoples{/color} say about us', '2021-06-17 09:41:16', '2021-06-27 10:21:07'),
(2053, 'about_page_testimonial_subtitle', 'Clients Testimonial', '2021-06-17 09:41:17', '2021-06-27 10:21:07'),
(2054, 'about_page_team_member_section_title', '{color}Volunteers{/color} who always support us', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2055, 'about_page_team_member_section_subtitle', 'Our Volunteer', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2056, 'contact_page_form_section_title', 'Keep In Touch', '2021-06-17 10:04:56', '2021-07-27 23:13:57'),
(2057, 'contact_page_form_submit_btn_text', 'Send Message', '2021-06-17 10:04:56', '2021-07-27 23:13:57'),
(2062, 'feedback_page_form_button_text', 'Submit Now', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2063, 'feedback_page_form_form_title', 'Leave Your Feedback', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2064, 'option_name', '191', '2021-06-21 10:25:22', '2021-06-21 10:25:22'),
(2065, 'event_page_bg_image', '191', '2021-06-21 10:27:02', '2021-06-27 10:23:16'),
(2066, 'home_page_variant', '01', '2021-06-26 13:48:43', '2021-12-01 19:48:31'),
(2067, 'site_logo', '202', '2021-06-26 14:46:58', '2021-09-19 00:50:34'),
(2068, 'site_favicon', '200', '2021-06-26 14:46:58', '2021-09-19 00:50:34'),
(2069, 'site_breadcrumb_bg', '201', '2021-06-26 14:46:58', '2021-09-19 00:50:34'),
(2070, 'site_white_logo', '203', '2021-06-26 14:46:58', '2021-09-19 00:50:34'),
(2071, 'site_title', 'Zaika', '2021-06-26 14:50:21', '2022-01-12 11:46:32'),
(2072, 'site_tag_line', 'Laravel Ecommerce System', '2021-06-26 14:50:21', '2022-01-12 11:46:32'),
(2073, 'site_footer_copyright', '{copy}  {year}  All right reserved by  <a href=\"https://xgenious.com\">Zaika</a>', '2021-06-26 14:50:21', '2022-01-12 11:46:32'),
(2074, 'site_admin_panel_nav_sticky', 'on', '2021-06-26 14:50:21', '2021-07-05 18:09:13'),
(2075, 'site_frontend_nav_sticky', NULL, '2021-06-26 14:50:21', '2022-01-12 11:46:32'),
(2076, 'og_meta_image_for_site', '384', '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2077, 'site_rtl_enabled', NULL, '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2078, 'site_maintenance_mode', NULL, '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2079, 'site_payment_gateway', 'on', '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2080, 'site_sticky_navbar_enabled', 'on', '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2081, 'disable_backend_preloader', 'on', '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2082, 'disable_user_email_verify', NULL, '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2083, 'site_force_ssl_redirection', NULL, '2021-06-26 14:50:22', '2022-01-12 11:46:32'),
(2084, 'site_color', '#FF6280', '2021-06-26 14:52:21', '2021-11-14 07:36:26'),
(2085, 'site_secondary_color', '#F2F3F5', '2021-06-26 14:52:21', '2021-11-14 07:36:26'),
(2086, 'site_main_color_two', '#FF695C', '2021-06-26 14:52:21', '2021-11-14 07:36:26'),
(2088, 'site_paragraph_color', '#666666', '2021-06-26 14:52:21', '2021-11-14 07:36:27'),
(2091, 'body_font_family', 'Roboto', '2021-06-26 14:55:07', '2021-09-20 01:06:47'),
(2092, 'heading_font_family', 'Jost', '2021-06-26 14:55:07', '2021-09-20 01:06:47'),
(2093, 'heading_font', 'on', '2021-06-26 14:55:07', '2021-09-20 01:06:47'),
(2094, 'body_font_variant', 'a:3:{i:0;s:5:\"0,400\";i:1;s:5:\"0,500\";i:2;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-09-20 01:06:47'),
(2095, 'heading_font_variant', 'a:5:{i:0;s:5:\"0,300\";i:1;s:5:\"0,400\";i:2;s:5:\"0,500\";i:3;s:5:\"0,600\";i:4;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-09-20 01:06:47'),
(2096, 'site_meta_tags', 'hello,meta,tag', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2097, 'site_meta_description', 'this is multilingual example meta tag for english', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2098, 'site_disqus_key', 'zaika-1', '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2099, 'site_google_analytics', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-173946136-1\"></script>\r\n<script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag(){dataLayer.push(arguments);}\r\n    gtag(\'js\', new Date());\r\n    gtag(\'config\', \"UA-173946136-1\");\r\n</script>', '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2100, 'tawk_api_key', NULL, '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2101, 'site_third_party_tracking_code', NULL, '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2102, 'site_google_captcha_v3_site_key', '6Le2mm4dAAAAAEUtOKLHFJS7wOEblj2o6WJqbcO2', '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2103, 'site_google_captcha_v3_secret_key', '6Le2mm4dAAAAADi-2pmKjQYF9qZaB3aodG7Oa78F', '2021-06-26 14:59:00', '2021-12-01 16:20:20'),
(2104, 'site_global_email', 'contact@xgenious.com', '2021-06-26 14:59:51', '2021-07-19 10:34:13'),
(2105, 'site_global_email_template', '<p>Hello @username,</p><p><br></p><p>@message</p><p><br></p><p>Regards</p><p>@company</p>', '2021-06-26 14:59:51', '2021-07-19 10:34:13'),
(2111, 'apply_job_success_message', 'Your Application Is Submitted Successfully!!', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2114, 'feedback_form_mail_success_message', 'Thanks for your feedback!!', '2021-06-26 15:04:04', '2021-06-26 15:04:04'),
(2115, 'site_smtp_mail_mailer', 'smtp', '2021-06-26 15:05:21', '2021-07-07 12:45:30'),
(2116, 'site_smtp_mail_host', 'test@fff', '2021-06-26 15:05:21', '2021-07-07 12:45:30'),
(2117, 'site_smtp_mail_port', '465', '2021-06-26 15:05:21', '2021-07-07 12:45:30'),
(2118, 'site_smtp_mail_username', 'fff@fff', '2021-06-26 15:05:21', '2021-07-07 12:45:30'),
(2119, 'site_smtp_mail_password', 'ddfdfdf', '2021-06-26 15:05:22', '2021-07-07 12:45:30'),
(2120, 'site_smtp_mail_encryption', 'ssl', '2021-06-26 15:05:22', '2021-07-07 12:45:30'),
(2121, 'site_gdpr_cookie_title', 'Cookies & Privacy', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2122, 'site_gdpr_cookie_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2123, 'site_gdpr_cookie_more_info_label', 'More information', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2124, 'site_gdpr_cookie_more_info_link', '{url}/p/privacy-policy/2', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2125, 'site_gdpr_cookie_accept_button_label', 'Accept Cookie', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2126, 'site_gdpr_cookie_decline_button_label', 'Decline Cookie', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2127, 'site_gdpr_cookie_delay', '5000', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2128, 'site_gdpr_cookie_enabled', 'on', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2129, 'site_gdpr_cookie_expire', '30', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2130, 'preloader_default', '6', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2131, 'preloader_status', 'on', '2021-06-26 15:26:19', '2022-01-12 11:46:32'),
(2132, 'preloader_custom', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2133, 'preloader_custom_image', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2134, 'preloader_cacncel_button', 'on', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2135, 'site_rss_feed_description', 'The description of the feed.', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2136, 'site_rss_feed_title', 'My feeds', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2137, 'site_rss_feed_url', '/feeds', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2138, 'job_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2139, 'events_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2141, 'item_purchase_key', 'ddd', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2142, 'item_license_status', 'not_verified', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2143, 'item_license_msg', 'Your Purchase Key Is Not Valid !!!', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2144, 'blog_page_read_more_btn_text', 'Read More', '2021-06-26 15:32:38', '2021-07-07 11:48:27'),
(2145, 'blog_page_item', '3', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2146, 'blog_page_recent_post_widget_items', '4', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2147, 'blog_single_page_related_post_title', 'Related Post', '2021-06-26 15:32:58', '2021-07-07 11:50:17'),
(2148, 'blog_single_page_share_title', 'Share', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2149, 'blog_single_page_category_title', 'Blog Categories', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2150, 'blog_single_page_recent_post_title', 'Related Posts', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2151, 'blog_single_page_tags_title', 'Tags', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2152, 'blog_single_page_recent_post_item', '3', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2153, 'site_image_gallery_post_items', '9', '2021-06-26 15:33:30', '2021-06-26 15:33:30'),
(2154, 'site_image_gallery_order', 'ASC', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2155, 'site_image_gallery_order_by', 'id', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2156, 'site_jobs_category_title', 'Job Category', '2021-06-26 15:35:37', '2021-07-07 11:55:14'),
(2157, 'site_job_post_items', '4', '2021-06-26 15:35:37', '2021-07-22 11:07:31'),
(2158, 'job_single_page_job_context_label', 'Job Context', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2159, 'job_single_page_job_responsibility_label', 'Job Responsibility', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2160, 'job_single_page_education_requirement_label', 'Educational Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2161, 'job_single_page_experience_requirement_label', 'Experience Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2162, 'job_single_page_additional_requirement_label', 'Additional Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2163, 'job_single_page_others_benefits_label', 'Others Benefits', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2164, 'job_single_page_apply_button_text', 'Apply To The Job', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2165, 'job_single_page_job_info_text', 'Jobs Information', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2166, 'job_single_page_company_name_text', 'Company Name', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2167, 'job_single_page_job_category_text', 'Job Category', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2168, 'job_single_page_job_position_text', 'Job Position', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2169, 'job_single_page_job_type_text', 'Job Type', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2170, 'job_single_page_salary_text', 'Salary', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2171, 'job_single_page_job_location_text', 'Job Location', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2172, 'job_single_page_job_deadline_text', 'Deadline', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2173, 'job_single_page_job_application_fee_text', 'Application Free', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2174, 'job_single_page_apply_form', 'on', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2175, 'job_single_page_applicant_mail', 'dvrobin4@gmail.com', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2176, 'job_success_page_title', 'Thank you', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2177, 'job_success_page_description', 'thanks, for choosing us.', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2178, 'job_cancel_page_title', 'Sorry!', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2179, 'job_cancel_page_description', 'your payment is not success', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2180, 'site_events_category_title', NULL, '2021-06-26 15:39:06', '2021-07-12 09:23:23'),
(2181, 'site_events_post_items', NULL, '2021-06-26 15:39:06', '2021-07-26 09:41:40'),
(2182, 'event_single_event_info_title', 'Event Info', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2183, 'event_single_date_title', 'Date', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2184, 'event_single_time_title', 'Time', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2185, 'event_single_cost_title', 'Cost', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2186, 'event_single_category_title', 'Category', '2021-06-26 15:39:39', '2021-06-26 15:39:40'),
(2187, 'event_single_organizer_title', 'Event Organizer', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2188, 'event_single_organizer_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2189, 'event_single_organizer_email_title', 'gg@fgf', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2190, 'event_single_organizer_phone_title', '01875484888', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2191, 'event_single_organizer_website_title', 'Website', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2192, 'event_single_venue_title', 'Event Venue', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2193, 'event_single_venue_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2194, 'event_single_venue_location_title', 'Locaiton', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2195, 'event_single_venue_phone_title', '+18274737136', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2196, 'event_single_available_ticket_text', 'Available Tickets', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2197, 'event_single_reserve_button_title', 'Reserve Your Seat', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2198, 'event_single_event_expire_text', 'Event Expired', '2021-06-26 15:39:41', '2021-06-26 15:39:41'),
(2199, 'donor_page_post_items', '6', '2021-06-26 15:41:18', '2021-07-13 22:55:09'),
(2200, 'donation_button_text', 'Donate Now', '2021-06-26 15:41:18', '2021-07-26 09:41:40'),
(2201, 'donation_goal_text', 'Goal', '2021-06-26 15:41:18', '2021-07-26 09:41:40'),
(2202, 'donation_raised_text', 'Raised', '2021-06-26 15:41:18', '2021-07-26 09:41:40'),
(2203, 'donation_notify_mail', 'test@sohan.xgenious.com', '2021-06-26 15:43:10', '2021-07-26 09:41:40'),
(2204, 'donation_custom_amount', '20,40,60,80,100,120', '2021-06-26 15:43:10', '2021-07-26 09:41:40'),
(2205, 'donation_default_amount', '20', '2021-06-26 15:43:10', '2021-07-26 09:41:40'),
(2206, 'donation_single_form_title', 'Donate for help', '2021-06-26 15:43:10', '2021-07-16 21:35:44'),
(2207, 'donation_single_form_button_text', 'Donate Now', '2021-06-26 15:43:10', '2021-07-26 09:41:40'),
(2208, 'donation_single_recent_donation_text', 'people have made a donation', '2021-06-26 15:43:10', '2021-07-26 09:41:40'),
(2209, 'donation_success_page_title', 'Thank You', '2021-06-26 15:43:26', '2021-07-26 09:41:40'),
(2210, 'donation_success_page_subtitle', NULL, '2021-06-26 15:43:26', '2021-06-26 15:43:26'),
(2211, 'donation_success_page_description', NULL, '2021-06-26 15:43:26', '2021-07-26 09:41:40'),
(2212, 'donation_cancel_page_title', 'Sorry', '2021-06-26 15:43:35', '2021-07-26 09:41:40'),
(2213, 'donation_cancel_page_subtitle', NULL, '2021-06-26 15:43:35', '2021-07-03 09:40:01'),
(2214, 'donation_cancel_page_description', NULL, '2021-06-26 15:43:35', '2021-07-26 09:41:40'),
(2215, 'event_success_page_title', 'Thank you', '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2216, 'event_success_page_description', NULL, '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2217, 'event_cancel_page_title', 'Sorry !!', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2218, 'event_cancel_page_subtitle', 'Payment Cancel For Event: {evname}', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2219, 'event_cancel_page_description', NULL, '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2220, 'home_page_01_topbar_info_list_text', 'a:2:{i:0;s:15:\"+920 330 330 33\";i:1;s:23:\"test@sohan.xgenious.com\";}', '2021-06-26 15:45:55', '2021-06-26 15:46:10'),
(2221, 'home_page_01_topbar_info_list_icon_icon', 'a:2:{i:0;s:19:\"flaticon-phone-call\";i:1;s:15:\"las la-envelope\";}', '2021-06-26 15:45:55', '2021-06-26 15:46:10'),
(2222, 'home_page_navbar_button_subtitle', 'Make your', '2021-06-26 15:48:01', '2021-07-07 12:24:02'),
(2223, 'home_page_navbar_button_title', 'Campaign', '2021-06-26 15:48:01', '2021-07-07 12:24:03'),
(2224, 'home_page_navbar_button_status', 'on', '2021-06-26 15:48:01', '2021-07-07 12:24:03'),
(2225, 'home_page_navbar_button_url', NULL, '2021-06-26 15:48:01', '2021-07-07 12:24:03'),
(2226, 'home_page_navbar_button_icon', 'lar la-heart', '2021-06-26 15:48:01', '2021-07-07 12:24:03'),
(2227, 'home_page_01_about_us_title', 'Your {color}support{/color} can help us a lot', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2228, 'home_page_01_about_us_subtitle', 'About Us', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2230, 'home_page_01_about_us_description', '<div>We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</div><div><br></div>', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2231, 'home_page_01_about_us_lists', 'If you want to change the world\r\nKeep the same cleaner for every visit\r\nOne-off, weekly or fortnightly visits', '2021-06-26 15:54:03', '2021-06-26 17:07:37'),
(2233, 'home_page_03_about_us_right_image', '180', '2021-06-26 15:54:03', '2021-06-26 15:54:03'),
(2234, 'homepage_01_feature_section_icon', '[\"las la-shipping-fast\",\"las la-headset\",\"las la-rocket\",\"las la-wallet\",\"las la-shield-alt\"]', '2021-06-26 15:55:12', '2021-09-19 06:58:41'),
(2235, 'homepage_01_feature_section_url', '[\"#\",\"#\",\"#\",\"#\",\"#\"]', '2021-06-26 15:55:12', '2021-09-19 06:58:41'),
(2236, 'homepage_01_feature_section_title', '[\"Free Shipping\",\"24\\/7 Support\",\"90 Days Return\",\"100% Money Back\",\"Secure Payment\"]', '2021-06-26 15:55:12', '2021-09-19 06:58:41'),
(2237, 'homepage_01_feature_section_description', '[\"Free Shipping on all online order\",\"Contact us 24 hours\",\"If goods have damage issues\",\"You have 15 days to Return\",\"We Ensure Secure Transaction\"]', '2021-06-26 15:55:12', '2021-09-19 06:58:41'),
(2243, 'home_page_01_cta_area_title', 'Works towards supporting underprivileged people', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2244, 'home_page_01_cta_area_video_url', 'https://www.youtube.com/watch?v=bdBG5VO01e0', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2245, 'home_page_01_cta_area_background_image', '149', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2269, 'home_page_01_latest_news_title', 'Check latest {color}blog & news{/color}', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2270, 'home_page_01_latest_news_subtitle', 'Latest Blog', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2271, 'home_page_01_latest_news_items', '6', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2272, 'home_page_call_to_action_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2273, 'home_page_about_us_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 17:50:38'),
(2275, 'home_page_latest_news_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2276, 'home_page_support_bar_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2278, 'home_page_contact_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2279, 'home_page_video_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 17:50:38'),
(2280, 'home_page_key_feature_section_status', 'on', '2021-06-26 16:31:21', '2021-06-26 17:50:38'),
(2287, 'home_page_latest_blog_section_status', 'on', '2021-06-26 16:31:22', '2021-06-26 17:50:38'),
(2288, 'home_page_header_slider_section_status', 'on', '2021-06-26 16:34:13', '2021-06-26 17:50:38'),
(2290, 'home_page_02_about_us_short_description', '<span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</span>', '2021-06-26 17:01:58', '2021-06-26 17:01:58'),
(2291, 'home_page_02_about_us_left_image', '174', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2292, 'home_page_02_about_us_right_bottom_image', '175', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2293, 'home_page_02_about_us_icon', 'flaticon-woman', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2294, 'home_page_01_about_us_right_image', '179', '2021-06-26 17:07:37', '2021-06-26 17:07:37'),
(2295, 'home_page_01_cta_area_signature_image', '148', '2021-06-26 17:09:27', '2021-06-26 17:09:27'),
(2296, 'about_page_slug', 'about', '2021-06-27 09:33:47', '2021-10-20 23:18:08'),
(2297, 'team_page_slug', 'team', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2298, 'faq_page_slug', 'faq', '2021-06-27 09:33:47', '2021-10-20 23:18:08'),
(2299, 'blog_page_slug', 'blog', '2021-06-27 09:33:47', '2021-10-20 23:18:08'),
(2300, 'contact_page_slug', 'contact', '2021-06-27 09:33:47', '2021-10-20 23:18:08'),
(2301, 'career_with_us_page_slug', 'career', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2302, 'events_page_slug', 'events', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2303, 'donation_page_slug', 'donation', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2304, 'testimonial_page_slug', 'testimonial', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2306, 'donor_page_slug', 'donor-list', '2021-06-27 09:33:47', '2021-07-26 09:14:51'),
(2307, 'about_page_name', 'About', '2021-06-27 09:33:47', '2021-10-20 23:18:09'),
(2308, 'about_page_meta_tags', NULL, '2021-06-27 09:33:47', '2021-10-20 23:18:09'),
(2309, 'about_page_meta_description', NULL, '2021-06-27 09:33:47', '2021-10-20 23:18:09'),
(2310, 'team_page_name', 'Team Member', '2021-06-27 09:33:48', '2021-07-26 09:14:51'),
(2311, 'team_page_meta_tags', NULL, '2021-06-27 09:33:48', '2021-07-26 09:14:51'),
(2312, 'team_page_meta_description', NULL, '2021-06-27 09:33:48', '2021-07-26 09:14:51'),
(2313, 'faq_page_name', 'FAQ', '2021-06-27 09:33:48', '2021-10-20 23:18:09'),
(2314, 'faq_page_meta_tags', NULL, '2021-06-27 09:33:48', '2021-10-20 23:18:09'),
(2315, 'faq_page_meta_description', NULL, '2021-06-27 09:33:48', '2021-10-20 23:18:09'),
(2316, 'blog_page_name', 'Blog', '2021-06-27 09:33:48', '2021-10-20 23:18:09'),
(2317, 'blog_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-10-20 23:18:09'),
(2318, 'blog_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-10-20 23:18:09'),
(2319, 'contact_page_name', 'Contact', '2021-06-27 09:33:49', '2021-10-20 23:18:09'),
(2320, 'contact_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-10-20 23:18:09'),
(2321, 'contact_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-10-20 23:18:09'),
(2322, 'career_with_us_page_name', 'Career With Us', '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2323, 'career_with_us_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2324, 'career_with_us_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2325, 'events_page_name', 'Events', '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2326, 'events_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2327, 'events_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2328, 'donation_page_name', 'Donations', '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2329, 'donation_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-07-26 09:14:51'),
(2330, 'donation_page_meta_description', NULL, '2021-06-27 09:33:50', '2021-07-26 09:14:51'),
(2331, 'testimonial_page_name', 'Testimonial', '2021-06-27 09:33:50', '2021-07-26 09:14:51'),
(2332, 'testimonial_page_meta_tags', NULL, '2021-06-27 09:33:50', '2021-07-26 09:14:51'),
(2333, 'about_page_about_us_section_status', 'on', '2021-06-27 10:17:10', '2021-06-27 10:17:10'),
(2334, 'about_page_our_mission_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2335, 'about_page_counterup_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2336, 'about_page_what_we_do_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2337, 'about_page_testimonial_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2338, 'about_page_team_member_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2339, 'about_page_our_mission_list_section_icon', 'a:4:{i:0;s:12:\"las la-check\";i:1;s:12:\"las la-check\";i:2;s:12:\"las la-check\";i:3;s:12:\"las la-check\";}', '2021-06-27 10:19:08', '2021-06-27 10:19:08'),
(2340, 'about_page_our_mission_left_image_image', '180', '2021-06-27 10:19:08', '2021-06-27 10:19:08'),
(2342, 'about_page_what_we_do_section_icon', 'a:3:{i:0;s:20:\"flaticon-transfusion\";i:1;s:14:\"flaticon-house\";i:2;s:19:\"flaticon-solidarity\";}', '2021-06-27 10:20:43', '2021-06-27 10:20:55'),
(2343, 'about_page_what_we_do_section_url', 'a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}', '2021-06-27 10:20:43', '2021-06-27 10:20:55'),
(2344, 'about_page_testimonial_item', '4', '2021-06-27 10:21:07', '2021-06-27 10:21:07'),
(2345, 'about_page_team_member_item', '6', '2021-06-27 10:21:23', '2021-06-27 10:21:23'),
(2346, 'contact_page_form_receiving_mail', 'dvrobin4@gmail.com', '2021-06-27 10:26:38', '2021-07-27 23:13:57'),
(2347, 'contact_page_map_section_location', '2626 Angie Drive Santa Ana, CA 92701', '2021-06-27 10:26:55', '2021-07-07 12:37:39'),
(2348, 'contact_page_map_section_zoom', '15', '2021-06-27 10:26:55', '2021-07-07 12:37:39'),
(2349, 'contact_page_contact_info_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2350, 'contact_page_contact_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2351, 'contact_page_contact_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"subject\",\"email\",\"message\"],\"field_placeholder\":[\"Your Name\",\"Subject\",\"Your Email\",\"Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\"}}', '2021-06-27 10:37:05', '2021-07-26 11:10:55'),
(2352, 'order_page_form_fields', '{\"field_type\":[\"textarea\",\"file\"],\"field_name\":[\"message\",\"file\"],\"field_placeholder\":[\"Your Message\",\"Document\"],\"mimes_type\":{\"2\":\"mimes:jpg,jpeg,png\"}}', '2021-06-27 10:41:23', '2021-06-27 10:41:23'),
(2353, 'apply_job_page_form_fields', '{\"field_type\":[\"text\",\"file\",\"textarea\"],\"field_name\":[\"expected-salary\",\"cv\",\"additional-info\"],\"field_placeholder\":[\"Your NameYour Expected Salary\",\"Your CV\",\"About Yourself\"],\"field_required\":{\"0\":\"on\",\"2\":\"on\"},\"mimes_type\":{\"1\":\"mimes:txt,pdf\"}}', '2021-06-27 10:43:55', '2021-06-27 10:43:55'),
(2355, 'error_404_page_title', '404', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2356, 'error_404_page_subtitle', 'Oops! This Page Could Not Be Found', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2357, 'error_404_page_paragraph', 'Sorry but the page you are looking for does not exist, have been removed. name changed or is temporarily unavailable', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2358, 'error_404_page_button_text', 'Go To Home Page', '2021-06-27 10:50:06', '2021-06-27 10:50:06'),
(2359, 'maintain_page_title', 'We are on Scheduled Maintenance', '2021-06-27 11:01:56', '2022-01-12 11:41:20'),
(2360, 'maintain_page_description', 'way off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited.', '2021-06-27 11:01:56', '2022-01-12 11:41:20'),
(2361, 'maintain_page_logo', '202', '2021-06-27 11:01:57', '2022-01-12 11:41:20'),
(2362, 'maintain_page_background_image', '367', '2021-06-27 11:01:57', '2022-01-12 11:40:35'),
(2363, 'cash_on_delivery_preview_logo', '377', '2021-06-27 11:21:47', '2022-01-11 15:03:41'),
(2364, 'stripe_preview_logo', '184', '2021-06-27 11:21:47', '2022-01-11 15:03:41'),
(2365, 'paystack_preview_logo', '186', '2021-06-27 11:21:47', '2022-01-11 15:03:41'),
(2366, 'paystack_public_key', 'pk_test_a7e58f850adce9a73750e61668d4f492f67abcd9', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2367, 'paystack_secret_key', 'sk_test_2a458001d806c878aba51955b962b3c8ed78f04b', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2368, 'paystack_merchant_email', 'sopnilsohan03@gmail.com', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2369, 'razorpay_preview_logo', '185', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2370, 'paypal_preview_logo', '182', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2371, 'paypal_app_client_id', 'ATx-SYQyPtXHw1bZaBDhJUZabxbutIqAqqZORgvgEoK_-9MrAkUzYkbt8pSnUyKNEdNN3aJt8tcpcY1I', '2021-06-27 11:21:48', '2021-11-21 03:56:55'),
(2372, 'paypal_app_secret', 'ELJCWPUabUnnMamfw5-ZxaUsvir3KAJrPnAcSeS11znsroi45HP0p7y7vGZcYsBsAAi7Ou6kelCpj69K', '2021-06-27 11:21:48', '2021-11-21 03:56:55'),
(2373, 'paytm_preview_logo', '183', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2374, 'paytm_merchant_key', 'dv0XtmsPYpewNag&', '2021-06-27 11:21:48', '2022-01-11 15:03:41'),
(2375, 'paytm_merchant_mid', 'Digita57697814558795', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2376, 'paytm_merchant_website', 'WEBSTAGING', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2377, 'site_global_currency', 'USD', '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2378, 'manual_payment_preview_logo', '189', '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2379, 'site_manual_payment_name', 'Manual Payment', '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2380, 'site_manual_payment_description', 'Manual payment gateway description', '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2381, 'razorpay_key', NULL, '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2382, 'razorpay_secret', NULL, '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2383, 'stripe_publishable_key', NULL, '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2384, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2385, 'site_global_payment_gateway', NULL, '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2386, 'site_usd_to_ngn_exchange_rate', '380', '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2387, 'site_euro_to_ngn_exchange_rate', NULL, '2021-06-27 11:21:49', '2022-01-11 15:03:42'),
(2388, 'mollie_public_key', 'test_SMWtwR6W48QN2UwFQBUqRDKWhaQEvw', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2389, 'mollie_preview_logo', '187', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2390, 'flutterwave_preview_logo', '188', '2021-06-27 11:21:49', '2022-01-11 15:03:41'),
(2391, 'flutterwave_secret_key', 'FLWSECK_TEST-eb4264e4d1d83c23e763c7958ffbaed0-X', '2021-06-27 11:21:49', '2021-11-21 03:56:55'),
(2392, 'flutterwave_public_key', 'FLWPUBK_TEST-08ef98a948ec3a25bf35d37292b2935e-X', '2021-06-27 11:21:49', '2021-11-21 03:56:55'),
(2393, 'site_currency_symbol_position', 'left', '2021-06-27 11:21:50', '2022-01-11 15:03:42'),
(2394, 'site_default_payment_gateway', 'paypal', '2021-06-27 11:21:50', '2022-01-11 15:03:42'),
(2395, 'manual_payment_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:42'),
(2396, 'paypal_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2397, 'paytm_test_mode', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2398, 'paypal_test_mode', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2399, 'paytm_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2400, 'razorpay_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2401, 'stripe_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2402, 'paystack_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2403, 'mollie_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2404, 'cash_on_delivery_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2405, 'flutterwave_gateway', 'on', '2021-06-27 11:21:50', '2022-01-11 15:03:41'),
(2406, 'site_usd_to_usd_exchange_rate', NULL, '2021-06-27 11:21:50', '2022-01-11 15:03:42'),
(2407, 'site_usd_to_inr_exchange_rate', '74', '2021-06-27 11:21:50', '2022-01-11 15:03:42'),
(2408, 'event_attendance_page_title', 'Confirm Your Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2409, 'event_attendance_page_form_button_title', 'Confirm Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2410, 'event_attendance_receiver_mail', 'info@sohan.xgenious.com', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2411, 'cause_single_payment_in_seperate_page', 'on', '2021-06-29 17:36:05', '2021-07-15 21:20:29'),
(2412, 'cause_single_donate_button_text', 'Donate Now', '2021-06-29 17:36:05', '2021-07-26 09:41:40'),
(2413, 'site_admin_dark_mode', 'off', '2021-07-02 06:00:00', '2021-11-09 07:11:58'),
(2414, 'donation_admin_charge', '10', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2415, 'donation_admin_withdraw_charge', '20', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2416, 'donation_charge_active_deactive_button', 'on', '2021-07-03 14:05:03', '2021-07-26 09:41:40'),
(2417, 'charge_amount_type', 'percentage', '2021-07-03 14:05:03', '2021-07-26 09:41:40'),
(2418, 'charge_amount', '10', '2021-07-03 14:05:03', '2021-07-26 09:41:40'),
(2419, 'site_script_version', '1.0.5', '2021-07-03 14:05:03', '2021-07-03 14:05:03'),
(2420, 'disable_guest_mode_for_event_module', 'on', '2021-07-12 09:26:20', '2021-07-12 19:25:52'),
(2421, 'event_page_button_text', 'Book Seat', '2021-07-12 19:24:36', '2021-07-12 19:25:52'),
(2422, 'donation_single_faq_title', 'General Question', '2021-07-16 21:37:14', '2021-07-26 09:41:40'),
(2423, 'cause_single_donate_sidebar_text', 'Your Donation Details', '2021-07-16 21:48:00', '2021-07-26 09:41:40'),
(2424, 'enable_facebook_login', 'on', '2021-07-23 17:56:50', '2021-12-01 16:20:20'),
(2425, 'facebook_client_id', NULL, '2021-07-23 17:56:50', '2021-12-01 16:20:20'),
(2426, 'facebook_client_secret', NULL, '2021-07-23 17:56:50', '2021-12-01 16:20:20'),
(2427, 'enable_google_login', 'on', '2021-07-23 19:43:16', '2021-12-01 16:20:20'),
(2428, 'google_client_id', NULL, '2021-07-23 21:36:12', '2021-12-01 16:20:20'),
(2429, 'google_client_secret', NULL, '2021-07-23 21:36:12', '2021-12-01 16:20:20'),
(2430, 'bank_transfer_gateway', 'on', '2021-10-12 03:05:02', '2021-11-21 03:56:55'),
(2431, 'bank_transfer_preview_logo', '237', '2021-10-12 03:05:02', '2021-11-21 03:56:55'),
(2432, 'site_bank_transfer_name', 'Bank Transfer', '2021-10-12 03:05:02', '2021-11-21 03:56:55'),
(2433, 'site_bank_transfer_description', 'Bank Transfer Description', '2021-10-12 03:05:02', '2021-11-21 03:56:55'),
(2434, 'cheque_payment_gateway', 'on', '2021-10-12 03:05:02', '2021-11-21 03:56:55'),
(2435, 'cheque_payment_preview_logo', '238', '2021-10-12 03:05:02', '2021-11-21 03:56:56'),
(2436, 'site_cheque_payment_name', 'Cheque Payment', '2021-10-12 03:05:02', '2021-11-21 03:56:56'),
(2437, 'site_cheque_payment_description', 'Cheque Payment Description', '2021-10-12 03:05:02', '2021-11-21 03:56:56'),
(2438, 'empty_wishlist_image', '239', '2021-10-14 06:57:06', '2021-10-14 07:00:50'),
(2439, 'empty_wishlist_text', 'No Products Added To The Wishlist', '2021-10-14 06:57:06', '2021-10-14 07:00:50'),
(2440, 'send_to_cart_text', 'Add All to Cart', '2021-10-14 06:57:06', '2021-10-14 07:00:50'),
(2441, 'clear_wishlist_text', 'Clear Wishlist', '2021-10-14 06:57:06', '2021-10-14 07:00:50'),
(2442, 'compare_title', NULL, '2021-10-14 07:34:55', '2021-10-19 01:01:54'),
(2443, 'compare_subtitle', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some.', '2021-10-14 07:34:55', '2021-10-14 07:35:11'),
(2444, 'compare_empty_image', '239', '2021-10-14 07:34:55', '2021-10-14 07:35:11'),
(2445, 'compare_empty_text', 'No Products Added To The Wishlist', '2021-10-14 07:34:55', '2021-10-14 07:35:11'),
(2446, 'empty_cart_text', 'No products in your cart!', '2021-10-14 07:38:07', '2021-12-27 05:31:02'),
(2447, 'back_to_home_text', 'Back to home', '2021-10-14 07:38:07', '2021-12-27 04:45:34'),
(2448, 'empty_cart_image', '', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2449, 'clear_cart_text', 'Clear Cart', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2450, 'update_cart_text', 'Update Cart', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2451, 'cart_continue_shopping_text', 'Continue Shopping', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2452, 'cart_coupon_discount_title', 'Coupon Discount', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2453, 'cart_coupon_discount_subtitle', 'No products in your cart!', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2454, 'cart_coupon_discount_placeholder', 'Enter your coupon code', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2455, 'cart_apply_coupon_text', 'Apply Coupon', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2456, 'cart_total_title', 'Cart Total', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2457, 'cart_proceed_to_checkout_text', 'Proceed to checkout', '2021-10-14 07:38:07', '2021-12-27 04:45:35'),
(2458, 'user_auth_page_logo', '241', '2021-10-17 01:22:40', '2021-11-25 06:37:42'),
(2459, 'toc_page_link', 'p/terms-and-conditions/1', '2021-10-17 01:22:40', '2021-11-25 06:37:42'),
(2460, 'privacy_policy_link', 'p/privacy-policy/2', '2021-10-17 01:22:40', '2021-11-25 06:37:42'),
(2461, 'user_auth_page_side_image', '242', '2021-10-17 01:22:40', '2021-11-25 06:37:42'),
(2462, 'user_auth_page_social_links', '[{\"icon\":\"lab la-facebook\",\"link\":\"facebook.com\"},{\"icon\":\"lab la-google-plus-square\",\"link\":\"google.com\"},{\"icon\":\"lab la-twitter-square\",\"link\":\"twitter.com\"}]', '2021-10-17 04:23:59', '2021-11-25 06:37:42'),
(2463, 'sidebar_visibility', 'on', '2021-10-19 01:02:32', '2022-01-12 09:11:36'),
(2464, 'sidebar_position', 'right', '2021-10-19 01:02:32', '2022-01-12 09:11:36'),
(2465, 'default_item_count', '10', '2021-10-19 04:09:44', '2022-01-12 09:11:36'),
(2466, 'shop_product_search', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2467, 'shop_filter_by_price', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2468, 'shop_filter_by_category', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2469, 'shop_filter_by_attributes', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2470, 'shop_filter_by_average_rating', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2471, 'shop_filter_by_tags', 'on', '2021-10-19 04:25:05', '2022-01-12 09:11:36'),
(2472, 'about_slug', 'about', '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2473, 'faq_slug', 'faq', '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2474, 'blog_slug', 'blog', '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2475, 'contact_slug', 'contact', '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2476, 'image_gallery_slug', 'slug', '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2477, 'about_name', NULL, '2021-10-20 22:53:42', '2021-10-20 22:53:42'),
(2478, 'about_meta_tags', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2479, 'about_meta_description', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2480, 'faq_name', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2481, 'faq_meta_tags', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2482, 'faq_meta_description', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2483, 'blog_name', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2484, 'blog_meta_tags', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2485, 'blog_meta_description', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2486, 'contact_name', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2487, 'contact_meta_tags', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2488, 'contact_meta_description', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2489, 'image_gallery_name', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2490, 'image_gallery_meta_tags', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2491, 'image_gallery_meta_description', NULL, '2021-10-20 22:53:43', '2021-10-20 22:53:43'),
(2492, 'product_page_slug', 'product', '2021-10-20 23:18:01', '2021-10-20 23:18:08'),
(2493, 'product_page_name', 'Product', '2021-10-20 23:18:01', '2021-10-20 23:18:09'),
(2494, 'product_page_meta_tags', NULL, '2021-10-20 23:18:01', '2021-10-20 23:18:09'),
(2495, 'product_page_meta_description', NULL, '2021-10-20 23:18:01', '2021-10-20 23:18:09'),
(2496, 'shop_column_count', '3', '2021-10-31 22:32:40', '2022-01-12 09:11:36'),
(2497, 'support_ticket_login_notice', 'Please login to create ticket', '2021-11-09 07:22:20', '2021-11-14 04:16:03'),
(2498, 'support_ticket_form_title', 'Create New Support Ticket', '2021-11-09 07:22:20', '2021-11-14 04:16:03'),
(2499, 'support_ticket_button_text', 'Submit Ticket', '2021-11-09 07:22:20', '2021-11-14 04:16:03'),
(2500, 'support_ticket_success_message', 'Support ticket submit success', '2021-11-09 07:22:20', '2021-11-14 04:16:03'),
(2501, 'site_heading_color', NULL, '2021-11-14 07:32:17', '2021-11-14 07:32:17'),
(2502, 'portfolio_home_color', NULL, '2021-11-14 07:32:17', '2021-11-14 07:32:17'),
(2503, 'logistics_home_color', NULL, '2021-11-14 07:32:17', '2021-11-14 07:32:17'),
(2504, 'site_heading_color_one', '#333333', '2021-11-14 07:36:26', '2021-11-14 07:36:26'),
(2505, 'site_heading_color_two', '#666666', '2021-11-14 07:36:26', '2021-11-14 07:36:26'),
(2506, 'site_hover_color_one', '#FF6280', '2021-11-14 07:36:27', '2021-11-14 07:36:27'),
(2507, 'site_hover_color_two', '#FF695C', '2021-11-14 07:36:27', '2021-11-14 07:36:27'),
(2508, 'navbar_right_text', 'Call Us', '2021-11-21 00:52:10', '2021-11-29 01:59:03'),
(2509, 'navbar_right_info', '+12365842215', '2021-11-21 00:52:10', '2021-11-29 01:59:03'),
(2510, 'checkout_page_terms_text', 'I have read and agree to the Website [lnk]terms & conditions[/lnk]', '2021-11-25 06:26:17', '2022-01-22 12:51:28'),
(2511, 'checkout_page_terms_link_url', '/p/terms-and-conditions/1', '2021-11-25 06:26:17', '2022-01-22 12:51:28'),
(2512, 'paypal_mode', NULL, '2022-01-09 08:45:19', '2022-01-11 15:03:41'),
(2513, 'paypal_sandbox_client_id', NULL, '2022-01-09 08:45:19', '2022-01-11 15:03:41'),
(2514, 'paypal_sandbox_client_secret', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2515, 'paypal_sandbox_app_id', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2516, 'paypal_live_app_id', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2517, 'paypal_payment_action', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2518, 'paypal_currency', 'USD', '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2519, 'paypal_notify_url', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2520, 'paypal_locale', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2521, 'paypal_validate_ssl', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2522, 'paypal_live_client_id', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2523, 'paypal_live_client_secret', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2524, 'razorpay_api_key', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2525, 'razorpay_api_secret', NULL, '2022-01-09 08:45:20', '2022-01-11 15:03:41'),
(2526, 'stripe_public_key', NULL, '2022-01-09 08:45:21', '2022-01-11 15:03:41'),
(2527, 'marcado_pagp_client_id', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2528, 'marcado_pago_client_secret', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2529, 'marcado_pago_test_mode', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2530, 'flw_public_key', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2531, 'flw_secret_key', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2532, 'flw_secret_hash', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2533, 'midtrans_preview_logo', '375', '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2534, 'midtrans_merchant_id', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2535, 'midtrans_server_key', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2536, 'midtrans_client_key', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2537, 'midtrans_environment', NULL, '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2538, 'midtrans_gateway', 'on', '2022-01-09 08:45:22', '2022-01-11 15:03:41'),
(2539, 'midtrans_test_mode', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2540, 'payfast_preview_logo', '376', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2541, 'payfast_merchant_id', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2542, 'payfast_merchant_key', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2543, 'payfast_passphrase', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2544, 'payfast_merchant_env', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2545, 'payfast_itn_url', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2546, 'payfast_gateway', 'on', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2547, 'cashfree_preview_logo', '372', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2548, 'cashfree_test_mode', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2549, 'cashfree_app_id', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2550, 'cashfree_secret_key', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2551, 'cashfree_gateway', 'on', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2552, 'instamojo_preview_logo', '374', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2553, 'instamojo_client_id', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2554, 'instamojo_client_secret', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2555, 'instamojo_username', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2556, 'instamojo_password', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2557, 'instamojo_test_mode', NULL, '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2558, 'instamojo_gateway', 'on', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2559, 'marcadopago_preview_logo', '373', '2022-01-09 08:45:23', '2022-01-11 15:03:41'),
(2560, 'marcado_pago_client_id', NULL, '2022-01-09 08:45:24', '2022-01-11 15:03:41'),
(2561, 'marcadopago_gateway', 'on', '2022-01-09 08:45:24', '2022-01-11 15:03:41'),
(2562, 'marcadopago_test_mode', NULL, '2022-01-09 08:45:24', '2022-01-11 15:03:42'),
(2563, 'site_usd_to_idr_exchange_rate', NULL, '2022-01-09 08:49:21', '2022-01-11 15:03:42'),
(2564, 'site_usd_to_zar_exchange_rate', NULL, '2022-01-09 08:49:21', '2022-01-11 15:03:42'),
(2565, 'site_usd_to_brl_exchange_rate', NULL, '2022-01-09 08:49:21', '2022-01-11 15:03:42'),
(2566, 'returning_customer_text', 'RETURNING CUSTOMER?', '2022-01-10 06:50:34', '2022-01-22 12:51:28'),
(2567, 'toggle_login_text', 'CLICK HERE TO LOGIN', '2022-01-10 06:50:34', '2022-01-22 12:51:28'),
(2568, 'signin_title', 'SIGN IN', '2022-01-10 06:50:34', '2022-01-22 12:51:28'),
(2569, 'signin_subtitle', 'Login to buy the product as user', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2570, 'remember_text', 'Remember me', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2571, 'remember_signin_btn_text', 'SIGN IN', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2572, 'coupon_prompt_text', NULL, '2022-01-10 06:50:35', '2022-01-10 06:50:35'),
(2573, 'coupon_toggle_text', NULL, '2022-01-10 06:50:35', '2022-01-10 06:50:35');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(2574, 'coupon_title', 'COUPON DISCOUNT', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2575, 'coupon_subtitle', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some.', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2576, 'coupon_placeholder', 'Enter your coupon code', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2577, 'apply_coupon_btn_text', 'Apply Coupon', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2578, 'checkout_page_title', 'BILLING DETAIL', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2579, 'create_account_text', 'Create An Account?', '2022-01-10 06:50:35', '2022-01-22 12:51:28'),
(2580, 'order_summary_title', 'YOUR ORDER', '2022-01-10 06:50:35', '2022-01-22 12:51:29'),
(2581, 'subtotal_text', 'SUB TOTAL', '2022-01-10 06:50:35', '2022-01-22 12:51:29'),
(2582, 'shipping_text', 'SHIPPING', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2583, 'vat_text', 'VAT', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2584, 'discount_text', 'DISCOUNT', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2585, 'coupon_text', 'COUPON', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2586, 'total_text', 'TOTAL', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2587, 'proceed_to_checkout_btn_text', 'Proceed to Checkout', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2588, 'return_to_cart_btn_text', 'Return to Cart', '2022-01-10 06:50:36', '2022-01-22 12:51:29'),
(2589, 'have_coupon_text', 'HAVE A COUPON?', '2022-01-10 06:55:44', '2022-01-22 12:51:28'),
(2590, 'enter_coupon_text', 'CLICK HERE TO ENTER YOUR CODE', '2022-01-10 06:55:44', '2022-01-22 12:51:28'),
(2591, 'ship_to_another_text', 'Ship to another address', '2022-01-10 07:25:51', '2022-01-22 12:51:29'),
(2592, 'checkout_page_no_product_text', 'No products in your cart!', '2022-01-10 07:25:51', '2022-01-22 12:51:29'),
(2593, 'back_to_home_btn_text', 'Back to home', '2022-01-10 07:25:51', '2022-01-22 12:51:29'),
(2594, 'maintain_page_countdown', '2022-09-30', '2022-01-12 11:33:32', '2022-01-12 11:41:20'),
(2595, 'shipping_option_invalid_msg', 'Cart amount did not reach minimum required amount for this shipping option.', '2022-01-22 12:51:29', '2022-01-22 12:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

CREATE TABLE `support_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product Delivery', 'publish', '2021-11-09 07:06:14', '2021-11-09 07:06:40'),
(2, 'Product Coupon', 'publish', '2021-11-09 07:06:27', '2021-11-09 07:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `via` text COLLATE utf8mb4_unicode_ci,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departments` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_text`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', '2021-09-22 03:29:21', '2021-09-22 03:29:21'),
(5, 'Healty', '2021-09-22 03:31:43', '2021-09-22 03:31:43'),
(6, 'comfortable', '2021-10-23 00:25:21', '2021-10-23 00:25:21'),
(7, 'yellow', '2021-10-23 00:25:21', '2021-10-23 00:25:21'),
(8, 'frock', '2021-10-23 00:34:31', '2021-10-23 00:34:31'),
(9, 'kameez', '2021-10-23 01:14:09', '2021-10-23 01:14:09'),
(13, 'denim', '2021-10-30 04:07:10', '2021-10-30 04:07:10'),
(14, 'shirt', '2021-10-30 04:07:10', '2021-10-30 04:07:10'),
(15, 'winter', '2021-10-30 04:07:10', '2021-10-30 04:07:10'),
(16, 'men', '2021-10-30 04:07:10', '2021-10-30 04:07:10'),
(18, 'mens', '2021-11-20 07:23:45', '2021-11-20 07:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_infos`
--

CREATE TABLE `topbar_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` text COLLATE utf8mb4_unicode_ci,
  `google_id` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping_addresses`
--

CREATE TABLE `user_shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_name` text COLLATE utf8mb4_unicode_ci,
  `widget_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `widget_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_name`, `widget_content`, `widget_order`, `widget_location`, `created_at`, `updated_at`) VALUES
(30, 'ContactInfoWidget', 'a:9:{s:2:\"id\";s:2:\"30\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:10:\"Store Info\";s:8:\"location\";s:17:\"Dhaka, Bangladesh\";s:5:\"phone\";s:11:\"01875484888\";s:5:\"email\";s:20:\"support@fundorex.com\";}', 3, 'footer', '2021-03-08 21:05:37', '2021-11-07 07:41:57'),
(35, 'RecentEventWidget', 'a:7:{s:2:\"id\";s:2:\"35\";s:11:\"widget_name\";s:17:\"RecentEventWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:13:\"Recent Events\";s:10:\"post_items\";s:1:\"5\";}', 3, 'event', '2021-03-09 16:00:03', '2021-07-27 20:35:15'),
(36, 'EventCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"36\";s:11:\"widget_name\";s:19:\"EventCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:14:\"Event Category\";s:10:\"post_items\";s:1:\"5\";}', 4, 'event', '2021-03-09 16:56:54', '2021-07-27 20:35:15'),
(37, 'EventSearchWidget', 'a:6:{s:2:\"id\";s:2:\"37\";s:11:\"widget_name\";s:17:\"EventSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 2, 'event', '2021-03-09 17:52:02', '2021-07-27 20:35:14'),
(38, 'RecentBlogPostWidget', 'a:7:{s:2:\"id\";s:2:\"38\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:12:\"Latest Posts\";s:10:\"post_items\";s:1:\"3\";}', 4, 'blog', '2021-03-09 17:59:18', '2021-11-07 06:58:51'),
(39, 'BlogSearchWidget', 'a:6:{s:2:\"id\";s:2:\"39\";s:11:\"widget_name\";s:16:\"BlogSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"1\";s:13:\"widget_title_\";s:6:\"Search\";}', 1, 'blog', '2021-03-09 18:00:22', '2021-06-17 15:34:19'),
(40, 'BlogCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"40\";s:11:\"widget_name\";s:18:\"BlogCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"6\";}', 3, 'blog', '2021-03-09 18:00:37', '2021-11-07 06:58:51'),
(41, 'JobSearchWidget', 'a:6:{s:2:\"id\";s:2:\"41\";s:11:\"widget_name\";s:15:\"JobSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 2, 'job', '2021-03-09 18:49:52', '2021-07-27 20:36:39'),
(42, 'JobCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"42\";s:11:\"widget_name\";s:17:\"JobCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"5\";}', 4, 'job', '2021-03-09 19:07:24', '2021-07-27 20:36:39'),
(43, 'RecentJobPostWidget', 'a:7:{s:2:\"id\";s:2:\"43\";s:11:\"widget_name\";s:19:\"RecentJobPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:11:\"Recent Jobs\";s:10:\"post_items\";s:1:\"4\";}', 3, 'job', '2021-03-09 19:18:52', '2021-07-27 20:36:39'),
(44, 'NewsletterWidget', 'a:7:{s:2:\"id\";s:2:\"44\";s:11:\"widget_name\";s:16:\"NewsletterWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"4\";s:12:\"widget_title\";s:12:\"GET IN TOUCH\";s:11:\"description\";s:32:\"Sign up to our mailing list now!\";}', 4, 'footer', '2021-06-21 11:30:03', '2021-11-07 07:41:57'),
(48, 'BlogTagWidget', 'a:7:{s:2:\"id\";s:2:\"48\";s:11:\"widget_name\";s:13:\"BlogTagWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"4\";s:12:\"widget_title\";s:4:\"Tags\";s:9:\"tag_items\";s:2:\"20\";}', 5, 'blog', '2021-11-07 00:21:43', '2021-11-07 06:58:51'),
(49, 'NavigationMenuWidget', 'a:7:{s:2:\"id\";s:2:\"49\";s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:11:\"Quick Links\";s:7:\"menu_id\";s:1:\"3\";}', 1, 'footer', '2021-11-07 06:09:50', '2021-11-29 01:59:35'),
(66, 'NavigationMenuWidget', 'a:6:{s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:13:\"Helpful Links\";s:7:\"menu_id\";s:1:\"2\";}', 2, 'footer', '2021-11-07 07:42:49', '2021-11-07 07:43:05'),
(67, 'NavigationMenuWidget', 'a:6:{s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:11:\"Quick Links\";s:7:\"menu_id\";s:1:\"3\";}', 1, 'footer_two', '2021-11-18 07:09:32', '2021-11-18 07:09:32'),
(68, 'NavigationMenuWidget', 'a:6:{s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:13:\"Helpful Links\";s:7:\"menu_id\";s:1:\"2\";}', 2, 'footer_two', '2021-11-18 07:10:09', '2021-11-18 07:10:09'),
(69, 'ContactInfoWidget', 'a:8:{s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Store Info\";s:8:\"location\";s:17:\"Dhaka, Bangladesh\";s:5:\"phone\";s:11:\"01875484888\";s:5:\"email\";s:20:\"support@fundorex.com\";}', 3, 'footer_two', '2021-11-18 07:10:46', '2021-11-18 07:10:46'),
(70, 'NewsletterWidget', 'a:6:{s:11:\"widget_name\";s:16:\"NewsletterWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"4\";s:12:\"widget_title\";s:12:\"GET IN TOUCH\";s:11:\"description\";s:32:\"Sign up to our mailing list now!\";}', 4, 'footer_two', '2021-11-18 07:11:13', '2021-11-18 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Southeast Asia', '2021-10-07 03:56:21', '2021-10-07 03:56:21'),
(2, 'Australia and Oceania', '2021-10-08 23:00:53', '2021-10-08 23:00:53'),
(3, 'Western Europe', '2021-11-25 03:53:37', '2021-11-25 03:53:37'),
(4, 'North America', '2021-11-25 03:54:39', '2021-11-25 03:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `zone_regions`
--

CREATE TABLE `zone_regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `country` longtext COLLATE utf8mb4_unicode_ci,
  `state` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zone_regions`
--

INSERT INTO `zone_regions` (`id`, `zone_id`, `country`, `state`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', '[\"1\",\"2\",\"3\"]', '2021-10-07 03:56:21', '2021-10-07 03:56:21'),
(2, 2, '[\"5\",\"6\"]', '[\"9\",\"10\",\"11\",\"12\",\"13\"]', '2021-10-08 23:00:53', '2021-10-08 23:00:53'),
(3, 3, '[\"7\",\"8\"]', '[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\"]', '2021-11-25 03:53:37', '2021-11-25 03:53:37'),
(4, 4, '[\"2\"]', '[\"4\",\"14\",\"15\",\"16\"]', '2021-11-25 03:54:39', '2021-11-25 03:54:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_sold_products`
--
ALTER TABLE `campaign_sold_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_taxes`
--
ALTER TABLE `country_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `module_page_settings`
--
ALTER TABLE `module_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_builders`
--
ALTER TABLE `page_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_additional_information`
--
ALTER TABLE `product_additional_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_coupons`
--
ALTER TABLE `product_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_coupons_code_unique` (`code`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventories_sku_unique` (`sku`);

--
-- Indexes for table `product_inventory_details`
--
ALTER TABLE `product_inventory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sell_infos`
--
ALTER TABLE `product_sell_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method_options`
--
ALTER TABLE `shipping_method_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_taxes`
--
ALTER TABLE `state_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_departments`
--
ALTER TABLE `support_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_shipping_addresses`
--
ALTER TABLE `user_shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_regions`
--
ALTER TABLE `zone_regions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `campaign_sold_products`
--
ALTER TABLE `campaign_sold_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `country_taxes`
--
ALTER TABLE `country_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `module_page_settings`
--
ALTER TABLE `module_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page_builders`
--
ALTER TABLE `page_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_additional_information`
--
ALTER TABLE `product_additional_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_coupons`
--
ALTER TABLE `product_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_inventory_details`
--
ALTER TABLE `product_inventory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_sell_infos`
--
ALTER TABLE `product_sell_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_method_options`
--
ALTER TABLE `shipping_method_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `state_taxes`
--
ALTER TABLE `state_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2596;

--
-- AUTO_INCREMENT for table `support_departments`
--
ALTER TABLE `support_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_shipping_addresses`
--
ALTER TABLE `user_shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zone_regions`
--
ALTER TABLE `zone_regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

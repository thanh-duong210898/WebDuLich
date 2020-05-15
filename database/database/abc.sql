-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2020 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `abc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><img data-filename=\"0Yuh-171856.jpg\" style=\"width: 25%;\" src=\"/upload/summer_note/15652521450.png\"><br><p>ertreterte</p><p></p><p></p></p>\n', '2019-08-08 07:31:08', '2019-08-08 08:15:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'BROWSE OUR PREMIUM PRODUCT  1', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><html><body><p>Us which over of signs divide dominion deep fill bring they\'re meat beho upon own earth without morning over third. Their male dry. They are great appear whose land fly grass.  1&nbsp;</p><ol><li>hj</li><li>jh\\</li></ol></body></html>\n', 'upload/images/1577605210_1577603332_1577603321_C59e-LJ1E-parallax-bg.png', NULL, '2019-12-29 07:40:10'),
(2, 'title', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><h3 style=\"margin-bottom: 25px; font-family: Oswald, sans-serif; line-height: 1.1; color: rgb(34, 34, 34); font-size: 50px; text-align: center;\">Up To 50% Off</h3><h4 style=\"font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(34, 34, 34); font-size: 30px; text-align: center;\">Winter Sale</h4><p style=\"color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 15px; text-align: center;\">Him she\'d let them sixth saw light</p><p><font color=\"#ffffff\" face=\"Roboto, sans-serif\"><span style=\"background: rgb(56, 74, 235); display: inline-block; border: 1px solid rgb(56, 74, 235); border-radius: 30px; padding: 12px 50px; transition-duration: 0.4s; transition-property: all; font-size: 15px; text-align: center;\">Shop Now</span></font><br></p></body></html>\n', 'upload/images/1577603332_1577603321_C59e-LJ1E-parallax-bg.png', '2019-08-12 01:47:02', '2019-12-29 07:08:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'anh thanh', 'anh-thanh', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `map` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `email`, `mission`, `map`, `created_at`, `updated_at`) VALUES
(1, '1234 Frankford ave Philadelphia, PA 12457', '123.645.87 / 028.299.024', 'Business@bluecadet.com / hello.domain.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'>8:00am - 11:30am</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'>2:00am - 5:30pm</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'>7:00pm - 10:00pm</p></body></html>\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15674.205695610324!2d106.66450094999999!3d10.8455998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1565248705233!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-08-08 07:16:43', '2019-12-31 02:54:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `financing`
--

CREATE TABLE `financing` (
  `id` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `financing`
--

INSERT INTO `financing` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p><img style=\"width: 100%;\" data-filename=\"1577599252_15658564000.png\" src=\"/upload/summer_note/15807909070.png\"></p><p>343</p><p>5</p><p>656</p><p><u>dsafsd</u></p></body></html>\n', '2020-02-04 11:35:07', '2020-02-04 11:44:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_services`
--

CREATE TABLE `home_services` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(110) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_services`
--

INSERT INTO `home_services` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, '22 update', '22 update', 'upload/images/1577677437_1577602747_1577601653_x42g-product2.png', 'https://github.com/', 1, '2019-12-11 17:00:00', '2019-12-30 03:43:57'),
(2, '11', '111', 'upload/images/1577601645_jlbF-product4.png', '22', 1, '2019-12-26 15:17:56', '2019-12-29 06:40:45'),
(3, '11 2222', '111  222', 'upload/images/1577601653_x42g-product2.png', '33333', 1, '2019-12-26 15:18:35', '2019-12-29 06:40:53'),
(4, '22', '22', '/tmp/php2QB2AY', NULL, 1, '2019-12-26 15:18:43', '2019-12-26 15:18:43'),
(5, '22', '22', '/tmp/php4mSnIY', NULL, 0, '2019-12-26 15:19:57', '2019-12-29 06:14:26'),
(6, '222222222222', '22', '/tmp/php3OMuEY', NULL, 0, '2019-12-26 15:20:15', '2019-12-29 06:14:21'),
(7, '11', '11', '/tmp/phpTwe222', NULL, 0, '2019-12-29 05:58:10', '2019-12-29 06:14:19'),
(8, '22', '22', '', NULL, 0, '2019-12-29 06:00:26', '2019-12-29 06:14:16'),
(9, 'eeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeeee', 'upload/images/1577600327_1577374928_1577372044_xuu.jpg', NULL, 1, '2019-12-29 06:14:50', '2019-12-29 06:18:47'),
(10, '22', '22222222', 'upload/images/1577600218_15658564000.png', '2222', 1, '2019-12-29 06:16:58', '2019-12-29 06:22:37'),
(11, '111111111', '111111111111', 'upload/images/1577600526_jlbF-product4.png', '111111111111111111', 1, '2019-12-29 06:22:06', '2019-12-29 06:22:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'ZEru-logo.png', '2019-08-08 08:24:51', '2019-08-08 08:25:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT 0,
  `order` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `url`, `target`, `class_icon`, `parent_id`, `order`, `created_at`, `updated_at`, `status`) VALUES
(2, 'Menu', '/admin/menu', NULL, 'fas fa-list', 0, 1, NULL, '2020-04-29 05:47:01', 1),
(19, 'User', '/admin/user', '_blank', 'fas fa-user', 0, 2, '2019-05-30 02:19:10', '2020-04-29 05:47:01', 1),
(41, 'Product', '/admin/products', NULL, NULL, 0, 5, '2019-08-06 09:42:37', '2020-04-29 05:47:15', 1),
(43, 'Category', '/admin/category', NULL, NULL, 0, 6, '2019-08-06 09:43:53', '2020-04-28 11:50:00', 1),
(50, 'Banner', '/banner', NULL, NULL, 0, 11, '2019-12-29 07:46:52', '2020-04-28 11:50:00', 1),
(51, 'Home Banner', '/admin/banner/edit/1', NULL, NULL, 50, 12, '2019-12-29 07:47:31', '2020-04-28 11:50:00', 1),
(52, 'Title', '/title', NULL, NULL, 0, 12, '2019-12-29 07:47:57', '2020-04-28 11:50:00', 1),
(53, 'Home Title', '/admin/title/edit/1', NULL, NULL, 52, 13, '2019-12-29 07:48:09', '2020-04-28 11:50:00', 1),
(54, 'Home Services', '/admin/home-services', NULL, NULL, 0, 7, '2019-12-29 07:49:03', '2020-04-28 11:50:00', 1),
(55, 'Slides', '/admin/slides', NULL, NULL, 0, 8, '2019-12-29 07:49:23', '2020-04-28 11:50:00', 1),
(56, 'Slide Title', '/admin/slide-title', NULL, NULL, 0, 9, '2019-12-29 07:49:47', '2020-04-28 11:50:00', 1),
(57, 'Our Team', '/admin/our-team', NULL, NULL, 0, 10, '2019-12-29 07:50:04', '2020-04-28 11:50:00', 1),
(58, 'Contact', '/admin/contact/edit', NULL, NULL, 0, 13, '2019-12-29 08:06:54', '2020-04-28 11:50:00', 1),
(60, 'Tour', '/admin/tour', NULL, NULL, 0, 3, '2020-04-27 12:13:01', '2020-04-29 05:47:15', 1),
(61, 'Type of Tour', '/admin/TypeOfTour', NULL, NULL, 0, 4, '2020-04-28 11:49:57', '2020-04-29 05:47:15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` int(11) NOT NULL,
  `type_name` varchar(110) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `our_team`
--

INSERT INTO `our_team` (`id`, `title`, `description`, `image`, `link`, `type_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'stream_socket_sendto(): A request to send or receive data was disallowed because the socket is not connected and (when sending on a datagram socket using a sendto call) no address was supplied.', 'upload/images/1577602747_1577601653_x42g-product2.png', 1, 'a', 1, '2019-12-29 06:58:23', '2019-12-29 07:03:40'),
(2, '111111111111111', '111111111111111', 'upload/images/1577602725_1577374367_xuu.jpg', 11111111, '1111111', 1, '2019-12-29 06:58:45', '2019-12-29 06:58:45'),
(3, '2222222222222222222', '22222222222222', 'upload/images/1577602758_1577599255_15658564000.png', 2, '2222222222', 1, '2019-12-29 06:59:18', '2019-12-29 06:59:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@dataeglobal.com', '$2y$10$pUKXaRkmo1Y62INh3erl2uZ8.jN7IcT/5zZwTXEKRvBfv.qpSM46i', '2019-05-27 01:19:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `id` int(10) NOT NULL,
  `position_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position_permission_status` int(1) NOT NULL DEFAULT 1,
  `position_delete_status` int(1) NOT NULL DEFAULT 1,
  `position_permission_list` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`id`, `position_name`, `position_permission_status`, `position_delete_status`, `position_permission_list`) VALUES
(1, 'supper admin', 1, 1, '{\"Position\":{\"read\":1,\"insert\":1,\"update\":\"1\",\"delete\":1},\"Dashboard\":{\"read\":\"1\",\"insert\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"Menu\":{\"read\":\"0\"},\"\":{\"\":\"1\"}}'),
(2, 'chuc vu 1 abc', 1, 1, '{\"Projects\":{\"read\":0,\"insert\":0,\"update\":0,\"delete\":0}}'),
(3, 'abc', 0, 1, '{\"Projects\":{\"read\":0,\"insert\":0,\"update\":0,\"delete\":0}}'),
(4, '123', 1, 1, NULL),
(5, '54', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `post_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `description`, `image`, `post_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '3333 55555555 3', '3333-55555555-3', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><a href=\"file:///D:/deg/demo33/blog-article1.html\" class=\"ro-title\" style=\'background-color: rgb(255, 255, 255); color: inherit; transition: all 0.4s ease 0s; outline: none; font-weight: 700; font-size: 36px; font-style: italic; font-family: \"Josefin Sans\", sans-serif;\'>Lose Weight &amp; Feel Great: 6 Expert Fitness Tips &amp; Tricks</a><span style=\'color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'></span><div class=\"ro-image\" style=\'position: relative; margin-top: 50px; margin-bottom: 50px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'><img src=\"file:///D:/deg/demo33/assets/images/blog2.jpg\" alt=\"blog image\" class=\"img-responsive\" style=\"border: 0px; display: block; max-width: 100%; height: auto;\"></div><div class=\"ro-content ro-ellipsis\" style=\'overflow: hidden; margin-bottom: 20px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600; overflow-wrap: break-word;\'><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Through various yoga modalities ranging from bikram and power yoga to ashtanga and vinyasa, yoga has many healthy benefits for the mind, body, and soul. Originating in ancient India, the word yoga means to unite or to join, and in yoga, we unite our minds and our bodies through breath. Most Western yoga derives from hatha, one of the six major branches of yoga. Traditional hatha yoga consists of asanas (physical yoga postures) and pranayamas (breathing exercises). With over 100 yoga poses, it&rsquo;s no wonder yogis never get bored. Like many calming spa treatments, yoga is a discipline that utilizes the mind-body connection to reduce stress, increase flexibility, and enhance wellbeing.In honor of International Yoga Day we&rsquo;re sharing this handy infographic to help you learn about the different styles and find the practice that&rsquo;s perfect for you. Learn more about yoga and find classes and studios near you with our Yoga Guide.</p></div></body></html>\n', 'upload/images/1577680499_1577374253_2-2-happy-girl-png-pic.png', 1, 1, '2019-12-30 04:34:59', '2019-12-30 06:26:26'),
(2, 'sssssssssssss', 'sssssssssssss', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><p><b>sssssssssssss</b></p><p><b>s</b></p><p><img data-filename=\"1577599252_15658564000.png\" style=\"width: 25%;\" src=\"/upload/summer_note/15776870480.png\"><b><br></b></p><p><b>yyuyu</b></p></body></html>\n', 'upload/images/1577680871_1577374253_2-2-happy-girl-png-pic.png', 1, 1, '2019-12-30 04:41:11', '2019-12-30 06:24:08'),
(3, 'fffffffffffffffffffff', 'fffffffffffffffffffff', '<p>ffffffffffff</p>', 'upload/images/1577681040_1577599252_15658564000.png', 1, 1, '2019-12-30 04:44:00', '2019-12-30 04:44:07'),
(4, 'ssssssssssssssssssss', 'ssssssssssssssssssss', '<p><span style=\"color: rgb(68, 68, 68); font-family: &quot;Josefin Sans&quot;, sans-serif; font-weight: 600;\">Through various yoga modalities ranging from bikram and power yoga to ashtanga and vinyasa, yoga has many healthy benefits for the mind, body, and soul. Originating in ancient India, the word yoga means to unite or to join, and in yoga, we unite our minds and our bodies through breath. Most Western yoga derives from hatha, one of the six major branches of yoga. Traditional hatha yoga consists of asanas (physical yoga postures) and pranayamas (breathing exercises). With over 100 yoga poses, it’s no wonder yogis never get bored. Like many calming spa treatments, yoga is a discipline that utilizes the mind-body connection to reduce stress, increase flexibility, and enhance wellbeing.In honor of International Yoga Day we’re sharing this handy infographic to help you learn about the different styles and find the practice that’s perfect for you. Learn more about yoga and find classes and studios near you with our Yoga Guide.</span><br></p>', 'upload/images/1577686877_1577600526_jlbF-product4.png', 1, 1, '2019-12-30 06:21:17', '2019-12-30 06:21:17'),
(5, '3333333333', '3333333333', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><p>3333333333333333333333333333333333</p></body></html>\n', 'upload/images/1577687201_1577599252_15658564000.png', 1, 1, '2019-12-30 06:26:41', '2019-12-30 06:26:41'),
(6, 'Xe máy va chạm xe cứu thương, 2 người nguy kịch', 'xe-may-va-cham-xe-cuu-thuong-2-nguoi-nguy-kich', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><br><h2 id=\"article_sapo\" class=\"ctTp\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.5; color: rgb(0, 0, 0);\">Hai thanh ni&ecirc;n c&oacute; d&#7845;u hi&#7879;u say x&#7881;n b&#259;ng ngang &#273;&#432;&#7901;ng khi&#7871;n t&agrave;i x&#7871; xe c&#7913;u th&#432;&#417;ng tr&#7903; tay kh&ocirc;ng k&#7883;p.</h2><div class=\"sbNws\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; margin-bottom: 20px;\">S&#7921; ki&#7879;n:&nbsp;<h3 style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; display: inline;\"><a class=\"sbevt clrGr fs12\" title=\"Tin n&oacute;ng\" href=\"https://www.24h.com.vn/tin-nong-c46e3908.html\" style=\"font-size: 15px; text-decoration-line: underline; color: rgb(55, 139, 54);\">Tin n&oacute;ng</a></h3>,&nbsp;<h3 style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; display: inline;\"><a class=\"sbevt clrGr\" title=\"B&igrave;nh D&#432;&#417;ng\" href=\"https://www.24h.com.vn/binh-duong-c46e4331.html\" style=\"font-size: 15px; text-decoration-line: underline; color: rgb(55, 139, 54);\">B&igrave;nh D&#432;&#417;ng</a></h3></div><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Kho&#7843;ng 14 gi&#7901; 30 ng&agrave;y 30-12 tr&ecirc;n Qu&#7889;c l&#7897; 13, &#273;o&#7841;n qua th&#7883; x&atilde; B&#7871;n C&aacute;t,&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/binh-duong-c46e4331.html\" title=\"t&#7881;nh B&igrave;nh D&#432;&#417;ng\" style=\"color: rgb(0, 0, 255); line-height: 1.6;\">t&#7881;nh B&igrave;nh D&#432;&#417;ng</a>, t&agrave;i x&#7871; Tr&#7847;n H&#7919;u L&acirc;m (40 tu&#7893;i, ng&#7909; TP Th&#7911; D&#7847;u M&#7897;t) &#273;i&#7873;u khi&#7875;n xe c&#7913;u th&#432;&#417;ng ch&#7903; m&#7897;t b&#7879;nh nh&acirc;n &#273;i c&#7845;p c&#7913;u, l&#432;u th&ocirc;ng theo h&#432;&#7899;ng t&#7915; th&#7883; x&atilde; B&#7871;n C&aacute;t &#273;i TP Th&#7911; D&#7847;u M&#7897;t.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Khi xe c&#7913;u th&#432;&#417;ng &#273;&#7871;n &#273;o&#7841;n ng&atilde; t&#432; giao &#273;&#432;&#7901;ng NA2, thu&#7897;c ph&#432;&#7901;ng Th&#7899;i H&ograve;a th&igrave; b&#7845;t ng&#7901; b&#7883; xe m&aacute;y do 2 thanh ni&ecirc;n c&oacute; d&#7845;u hi&#7879;u say x&#7881;n ch&#7841;y b&#259;ng qua &#273;&#432;&#7901;ng t&ocirc;ng tr&uacute;ng.</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center;\"><img class=\"news-image initial loading\" alt=\"Xe m&aacute;y va ch&#7841;m xe c&#7913;u th&#432;&#417;ng, 2 ng&#432;&#7901;i nguy k&#7883;ch - 1\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-12-31//1577750544-805267cd3d4f5cce31f618a189028a88.jpg\" width=\"660\" data-was-processed=\"true\" style=\"font-size: 12px; border: 0px; max-width: 660px;\"></p><p class=\"img_chu_thich_0407\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;\">Xe c&#7913;u th&#432;&#417;ng g&#7863;p n&#7841;n</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Do b&#7883; b&#7845;t ng&#7901;, t&agrave;i x&#7871; xe c&#7913;u th&#432;&#417;ng &#273;&aacute;nh l&aacute;i tr&aacute;nh n&ecirc;n &#273;&atilde; t&ocirc;ng v&agrave;o d&#7843;i ph&acirc;n c&aacute;ch b&ecirc; t&ocirc;ng l&agrave;m giao th&ocirc;ng t&#7841;i khu v&#7921;c h&#7895;n lo&#7841;n.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Sau tai n&#7841;n, t&agrave;i x&#7871; L&acirc;m nhanh ch&oacute;ng chuy&#7875;n b&#7879;nh nh&acirc;n tr&ecirc;n xe c&#7845;p c&#7913;u qua taxi &#273;&#7875; ti&#7871;p t&#7909;c &#273;&#7871;n b&#7879;nh vi&#7879;n. C&ograve;n 2 nam thanh ni&ecirc;n c&#361;ng &#273;&#432;&#7907;c t&agrave;i x&#7871; v&agrave; ng&#432;&#7901;i d&acirc;n &#273;&#432;a &#273;i b&#7879;nh vi&ecirc;n trong t&igrave;nh tr&#7841;ng nguy k&#7883;ch.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Nh&#7853;n &#273;&#432;&#7907;c tin b&aacute;o, l&#7921;c l&#432;&#7907;ng CSGT C&ocirc;ng an th&#7883; x&atilde; B&#7871;n C&aacute;t &#273;&atilde; c&oacute; m&#7863;t &#273;&#7875; ph&acirc;n lu&#7891;ng giao th&ocirc;ng, x&#7917; l&yacute; v&#7909; tai n&#7841;n</p><table class=\"picture\" align=\"center\" style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 22px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-size: 0.9em; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-spacing: 0px; width: 660px; font-family: sans-serif; line-height: 1.5;\"><tbody style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.84px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\"><tr style=\"background: transparent; font-size: 15.84px; color: rgb(51, 51, 51); text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-size-adjust: 100%;\"><td class=\"pic\" style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.84px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;\"></td></tr><tr style=\"background: transparent; font-size: 15.84px; color: rgb(51, 51, 51); text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-size-adjust: 100%;\"></tr></tbody></table></body></html>\n', 'upload/images/1577758504_1577374244_Download-Girl-Download-PNG.png', 2, 1, '2019-12-31 02:15:04', '2019-12-31 02:16:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_type`
--

CREATE TABLE `post_type` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post_type`
--

INSERT INTO `post_type` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2222222222 yodate', '2222222222-yodatew', 'upload/images/1577680087_1577602758_1577599255_15658564000.png', 1, '2019-12-30 04:26:25', '2019-12-30 04:28:36'),
(2, '44444444444444444', '44444444444444444', 'upload/images/1577681179_1577374232_2-2-happy-girl-png-pic.png', 1, '2019-12-30 04:46:19', '2019-12-30 04:46:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_category_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `check_home_page` int(1) NOT NULL DEFAULT 0,
  `check_trending` int(1) DEFAULT 0,
  `best_seller` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `image`, `description`, `created_at`, `updated_at`, `product_category_id`, `status`, `check_home_page`, `check_trending`, `best_seller`) VALUES
(1, 'product 1', 'product-1', 12323, 'nFmf-jlbF-product4.png', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p>123213</p></body></html>\n', '2019-08-07 02:42:40', '2020-04-29 07:15:35', 1, 1, 0, 0, 0),
(2, 'proud 1', 'proud-1', 1111, 'uEMj-product1.png', '111', '2019-08-07 02:52:21', '2020-05-05 07:50:50', 2, 0, 1, 1, 1),
(3, '1231', '1231', 1111, 'jlbF-product4.png', '111', '2019-08-07 03:39:14', '2019-08-09 09:42:25', 1, 1, 1, 0, 1),
(4, '1', '1', 1, 'Xlbj-product6.png', '1', '2019-08-07 08:17:57', '2019-08-09 09:42:59', 1, 1, 1, 0, 1),
(5, '1111@gmail.com', '1111-at-gmailcom', 11, NULL, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?>\n', '2019-12-26 08:57:25', '2019-12-26 08:57:25', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `duration` varchar(110) DEFAULT NULL,
  `service_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `title`, `slug`, `description`, `price`, `duration`, `service_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '555555 3', '555555-3', '55555555555555555 3', 555555553, '555555555555 3', 1, 1, '2019-12-31 04:01:26', '2019-12-31 04:05:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_type`
--

CREATE TABLE `service_type` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `service_type`
--

INSERT INTO `service_type` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '222222222 222222', '222222222-222222', 'upload/images/1577764681_1577374244_Download-Girl-Download-PNG.png', 1, '2019-12-31 03:58:01', '2019-12-31 03:58:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test1dasdsadsa', 'test asas as da we qwe213213213231231', NULL, '#', 1, '2019-12-10 17:00:00', '2019-12-26 09:49:48'),
(2, 'test 2', 'test 2 aad asdas das', NULL, 'ewqe', 1, '2019-12-09 17:00:00', NULL),
(3, 'test 3', 'wqewqewq', NULL, 'ewewqe', 1, '2019-12-09 17:00:00', NULL),
(4, 'sáđáa', 'đâssad', 'upload/images/1577374928_1577372044_xuu.jpg', 'ádâsd', 0, '2019-12-26 09:14:09', '2020-04-22 18:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_title`
--

CREATE TABLE `slide_title` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide_title`
--

INSERT INTO `slide_title` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '11', '11111', 1, NULL, NULL),
(2, '222', '222', 1, '2019-12-29 07:52:24', '2019-12-29 07:52:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `special_form`
--

CREATE TABLE `special_form` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(110) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `special_form`
--

INSERT INTO `special_form` (`id`, `name`, `phone`, `email`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:29:13', '2020-02-04 14:29:13'),
(2, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:29:55', '2020-02-04 14:29:55'),
(3, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:30:15', '2020-02-04 14:30:15'),
(4, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', 'ddddddddddddddddddddddd', '2020-02-04 14:31:06', '2020-02-04 14:31:06'),
(5, '7777', 99999, 'tuananh6596@gmail.com', '2020-02-13', '899879', '2020-02-04 14:31:48', '2020-02-04 14:31:48'),
(6, '777777', 7, 'tuananh6596@gmail.com', '2020-02-25', '7', '2020-02-04 14:33:01', '2020-02-04 14:33:01'),
(7, 'Happy New year', 666, 'tuananh6596@gmail.com', '2020-02-25', '666', '2020-02-04 14:33:46', '2020-02-04 14:33:46'),
(8, '11', 1, 'admin@gmail.com11', '2020-02-19', '11', '2020-02-04 14:34:24', '2020-02-04 14:34:24'),
(9, 'nameeeeeeeeeee', 1626832288, 'admin@gmail.com', '2020-02-17', 'Hai thanh niên có dấu hiệu say xỉn băng ngang đường khiến tài xế xe cứu thương trở tay không kịp.\r\nSự kiện: Tin nóng, Bình Dương\r\nKhoảng 14 giờ 30 ngày 30-12 trên Quốc lộ 13, đoạn qua thị xã Bến Cát, tỉnh Bình Dương, tài xế Trần Hữu Lâm (40 tuổi, ngụ TP Thủ Dầu Một) điều khiển xe cứu thương chở một bệnh nhân đi cấp cứu, lưu thông theo hướng từ thị xã Bến Cát đi TP Thủ Dầu Một. \r\n\r\nKhi xe cứu thương đến đoạn ngã tư giao đường NA2, thuộc phường Thới Hòa thì bất ngờ bị xe máy do 2 thanh niên có dấu hiệu say xỉn chạy băng qua đường tông trúng', '2020-02-04 14:44:04', '2020-02-04 14:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `title`
--

INSERT INTO `title` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '7\r\n\r\nFile can\'t be uploaded to the server and it is not the fault of laravel, but your server.\r\n\r\nI had the same problem with the same environment. The thing was the file was too large, so it couldn\'t be uploaded to the temporary location. Although the file wasn\'t uploaded to the server, laravel still was trying to read it so this is why you get \"no address was supplied\".\r\n\r\nIn my case file couldn\'t be uploaded, because of exceeding size limits, but perhaps in your case, it is another reason why the file cannot be uploaded.', '2019-08-16 07:55:57', '2019-12-29 07:30:37'),
(2, 'category title', '2019-08-16 07:59:01', '2019-08-16 07:59:01'),
(3, 'about title', '2019-08-16 07:59:14', '2019-08-16 07:59:14'),
(4, 'customer title', '2019-08-16 07:59:23', '2019-08-16 07:59:23'),
(5, 'contact title', '2019-08-16 07:59:31', '2019-08-16 07:59:31'),
(6, 'detail title', '2019-08-16 08:15:12', '2019-08-16 08:15:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id` int(10) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tour_TypeTour_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `check_home_page` int(1) NOT NULL DEFAULT 0,
  `check_trending` int(1) DEFAULT 0,
  `best_seller` int(1) NOT NULL DEFAULT 0,
  `tour_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id`, `name`, `slug`, `price`, `image`, `description`, `created_at`, `updated_at`, `tour_TypeTour_id`, `status`, `check_home_page`, `check_trending`, `best_seller`, `tour_date`) VALUES
(9, '\0\0\01\0\0\02\0\0\03', '123', 12321412, 'upload/images/1588146267_nen di tour hay tu tuc nhung trai nghiem rieng biet (1).jpg', '\0\0\0<\0\0\0!\0\0\0D\0\0\0O\0\0\0C\0\0\0T\0\0\0Y\0\0\0P\0\0\0E\0\0\0 \0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0 \0\0\0P\0\0\0U\0\0\0B\0\0\0L\0\0\0I\0\0\0C\0\0\0 \0\0\0\"\0\0\0-\0\0\0/\0\0\0/\0\0\0W\0\0\03\0\0\0C\0\0\0/\0\0\0/\0\0\0D\0\0\0T\0\0\0D\0\0\0 \0\0\0H\0\0\0T\0\0\0M\0\0\0L\0\0\0 \0\0\04\0\0\0.\0\0\00\0\0\0 \0\0\0T\0\0\0r\0\0\0a\0\0\0n\0\0\0s\0\0\0i\0\0\0t\0\0\0i\0\0\0o\0\0\0n\0\0\0a\0\0\0l\0\0\0/\0\0\0/\0\0\0E\0\0\0N\0\0\0\"\0\0\0 \0\0\0\"\0\0\0h\0\0\0t\0\0\0t\0\0\0p\0\0\0:\0\0\0/\0\0\0/\0\0\0w\0\0\0w\0\0\0w\0\0\0.\0\0\0w\0\0\03\0\0\0.\0\0\0o\0\0\0r\0\0\0g\0\0\0/\0\0\0T\0\0\0R\0\0\0/\0\0\0R\0\0\0E\0\0\0C\0\0\0-\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\04\0\0\00\0\0\0/\0\0\0l\0\0\0o\0\0\0o\0\0\0s\0\0\0e\0\0\0.\0\0\0d\0\0\0t\0\0\0d\0\0\0\"\0\0\0>\0\0\0\n\0\0\0<\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0>\0\0\0<\0\0\0!\0\0\0-\0\0\0-\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0-\0\0\0-\0\0\0>\0\0\0<\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0<\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0p\0\0\0>\0\0\0t\0\0\0e\0\0\0s\0\0\0t\0\0\0<\0\0\0/\0\0\0p\0\0\0>\0\0\0<\0\0\0p\0\0\0>\0\0\0<\0\0\0b\0\0\0r\0\0\0>\0\0\0<\0\0\0/\0\0\0p\0\0\0>\0\0\0<\0\0\0/\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0/\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0\n', '2020-04-29 07:44:27', '2020-05-05 15:00:45', 2, 1, 0, 0, 0, 5),
(10, 'Du lịch Miền Trung - Đà Nẵng - Hội An - Thánh Địa Lạ Vang - Động Phong Nha từ Sài Gòn 2020', 'du-lich-mien-trung-da-nang-hoi-an-thanh-dia-la-vang-dong-phong-nha-tu-sai-gon-2020', 6599000, 'upload/images/1588578686_du-lich-con-dao-1.JPG.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><div class=\"boxTour\" id=\"flag1\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-size: 14px;\"><div class=\"title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px 0px 10px; font-size: 20px; line-height: 30px; font-weight: 700; color: rgb(102, 102, 102); border-bottom: 1px solid rgba(0, 0, 0, 0.15);\"><span class=\"fa-info-circle\" style=\"box-sizing: border-box; padding-left: 30px; position: relative;\">&#272;i&#7875;m nh&#7845;n h&agrave;nh tr&igrave;nh</span></div><div class=\"content\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\"><table align=\"left\" cellpadding=\"10\" cellspacing=\"10\" style=\"box-sizing: border-box; border-spacing: 0px; max-width: 100%; width: 773px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px; width: 154px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">H&agrave;nh tr&igrave;nh:</span></span></td><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">&#272;&agrave; N&#7861;ng - B&agrave; N&agrave; - H&#7897;i An - Hu&#7871; - Th&aacute;nh &#272;&#7883;a La Vang - &#272;&#7897;ng Phong Nha</span></span></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">L&#7883;ch tr&igrave;nh:</span></span></td><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">5 ng&agrave;y 4 &#273;&ecirc;m</span></span></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Ng&agrave;y kh&#7903;i h&agrave;nh:</span></span></td><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">08,09,16/01; 06,12,13,20,26,27/02; 05,11,12,19,26/03/2020</span></span></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">V&#7853;n chuy&#7875;n:</span></span></td><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\"><span style=\"box-sizing: border-box; font-weight: 700;\">M&aacute;y bay kh&#7913; h&#7891;i &amp; xe du l&#7883;ch &#273;&#7901;i m&#7899;i</span></span></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\">&nbsp;</td><td style=\"box-sizing: border-box; padding: 0px; line-height: 18px;\">&nbsp;</td></tr></tbody></table><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\">Du l&#7883;ch Mi&#7873;n Trung - &#272;&agrave; N&#7861;ng - H&#7897;i An - Th&aacute;nh &#272;&#7883;a L&#7841; Vang - &#272;&#7897;ng Phong Nha t&#432;&#768; Sa&#768;i Go&#768;n 2020 - Kh&aacute;m ph&aacute; tr&#7885;n v&#7865;n v&#7867; &#273;&#7865;p t&#7841;o h&oacute;a ban t&#7863;ng cho d&#7843;i &#273;&#7845;t&nbsp;</span><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\">mi&#7873;n Trung&nbsp;</span><span style=\"box-sizing: border-box; color: rgb(85, 85, 85);\">ch&#7855;c ch&#7855;n s&#7869; mang &#273;&#7871;n cho du kh&aacute;ch m&#7897;t chuy&#7871;n &#273;i tr&#7885;n v&#7865;n nh&#7845;t!</span></em></div><div class=\"linkMore text-right\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><a id=\"xemthem\" data-id=\"15140\" data-table=\"tour\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); transition: all 0.3s linear 0s;\">Xem th&ecirc;m &raquo;</a></div></div></div><div class=\"boxTour\" id=\"flag2\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-size: 14px;\"><div class=\"title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px 0px 10px; font-size: 20px; line-height: 30px; font-weight: 700; color: rgb(102, 102, 102); border-bottom: 1px solid rgba(0, 0, 0, 0.15);\"><span class=\"fa-map-o\" style=\"box-sizing: border-box; padding-left: 30px; position: relative;\">L&#7883;ch tr&igrave;nh</span></div><div class=\"content\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div class=\"listDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 30px; position: relative;\"><div class=\"day active\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px;\"><div class=\"titDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; position: relative; cursor: pointer;\"><span style=\"box-sizing: border-box; color: rgb(237, 0, 128);\">NG&Agrave;Y 1 |</span>&nbsp;TP.HCM &ndash; HU&#7870; &ndash; &#272;&#7840;I N&#7896;I &ndash; CH&Ugrave;A THI&Ecirc;N M&#7908; (&#259;n tr&#432;a, chi&#7873;u)</div><div class=\"contDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div class=\"the-content desc\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"></p><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">S&aacute;ng:&nbsp;</span>Qu&yacute; kh&aacute;ch c&oacute; m&#7863;t t&#7841;i ga qu&#7889;c n&#7897;i, s&acirc;n bay T&acirc;n S&#417;n Nh&#7845;t tr&#432;&#7899;c gi&#7901; bay &iacute;t nh&#7845;t ba ti&#7871;ng<span style=\"box-sizing: border-box; font-weight: 700;\">.&nbsp;</span>&#272;&#7841;i di&#7879;n c&ocirc;ng ty&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">Du L&#7883;ch Vi&#7879;t</span>&nbsp;&#273;&oacute;n v&agrave; h&#7895; tr&#7907; Qu&yacute; Kh&aacute;ch l&agrave;m th&#7911; t&#7909;c &#273;&oacute;n chuy&#7871;n bay &#273;i&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">&#272;&agrave; N&#7861;ng.</span></div>&#272;&#7871;n s&acirc;n bay&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">&#272;&agrave; N&#7861;ng</span>, H&#432;&#7899;ng d&#7851;n vi&ecirc;n &#273;&oacute;n &#273;o&agrave;n kh&#7903;i h&agrave;nh t&#7899;i&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">Hu&#7871;.</span><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tham quan&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">L&#259;ng Kh&#7843;i &#272;&#7883;nh&nbsp;</span>(&#7912;ng L&#259;ng, l&#259;ng m&#7897; c&#7911;a vua Kh&#7843;i &#272;&#7883;nh, v&#7883; vua th&#7913; 12 c&#7911;a tri&#7873;u Nguy&#7877;n) v&#7899;i l&#7889;i ki&#7871;n tr&uacute;c &#273;&#7897;c &#273;&aacute;o b&#7903;i s&#7921; pha tr&#7897;n ki&#7871;n tr&uacute;c &#272;&ocirc;ng T&acirc;y Kim C&#7893; l&#7841; th&#432;&#7901;ng, v&#7899;i c&aacute;c t&aacute;c ph&#7849;m ngh&#7879; thu&#7853;t gh&eacute;p tranh s&agrave;nh s&#7913; &#273;&#7897;c &#273;&aacute;o.</div><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Tr&#432;a:</span>&nbsp;&#272;o&agrave;n d&ugrave;ng c&#417;m tr&#432;a.</p><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tham quan&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">&#272;&#7841;i N&#7897;i</span>&nbsp;&ndash; Ho&agrave;ng Th&agrave;nh c&#7911;a 13 v&#7883; vua tri&#7873;u Nguy&#7877;n, n&#417;i c&oacute; h&#417;n 100 c&ocirc;ng tr&igrave;nh ki&#7871;n tr&uacute;c &#273;&#7865;p: Ng&#7885; M&ocirc;n, &#272;i&#7879;n Th&aacute;i H&ograve;a, T&#7917; C&#7845;m Th&agrave;nh, Th&#7871; Mi&#7871;u, Hi&#7875;n L&acirc;m C&aacute;c, C&#7917;u &#272;&#7881;nh&hellip;</div>Tham quan&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">ch&ugrave;a Thi&ecirc;n M&#7909;</span>&nbsp;&ndash;&nbsp;&nbsp;<em style=\"box-sizing: border-box;\">ng&ocirc;i ch&ugrave;a c&#7893; nh&#7845;t C&#7889; &#273;&ocirc; Hu&#7871;.</em><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Chi&#7873;u:&nbsp;&nbsp;&nbsp;</span>D&ugrave;ng c&#417;m chi&#7873;u t&#7841;i nh&agrave; h&agrave;ng. Ngh&#7881; &#273;&ecirc;m t&#7841;i Hu&#7871;.</p><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Qu&yacute; kh&aacute;ch c&oacute; th&#7875; xu&ocirc;i theo d&ograve;ng s&ocirc;ng H&#432;&#417;ng&nbsp;<span style=\"box-sizing: border-box; font-weight: 700;\">nghe Ca Hu&#7871;</span>, l&#7855;ng nghe gi&#7885;ng ca ng&#7885;t ng&agrave;o m&#432;&#7907;t m&agrave; c&#7911;a nh&#7919;ng c&ocirc; g&aacute;i Hu&#7871;&nbsp;<em style=\"box-sizing: border-box;\">(chi ph&iacute; t&#7921; t&uacute;c).</em></div><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial;\"></p></div></div></div><div class=\"day \" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px;\"><div class=\"titDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; position: relative; cursor: pointer;\"><span style=\"box-sizing: border-box; color: rgb(237, 0, 128);\">NG&Agrave;Y 2 |</span>&nbsp;HU&#7870; &ndash; QU&#7842;NG B&Igrave;NH &ndash; &#272;&#7896;NG PHONG NHA (&#259;n s&aacute;ng, tr&#432;a, chi&#7873;u)</div></div><div class=\"day \" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px;\"><div class=\"titDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; position: relative; cursor: pointer;\"><span style=\"box-sizing: border-box; color: rgb(237, 0, 128);\">NG&Agrave;Y 3 |</span>&nbsp;B&Aacute;N &#272;&#7842;O S&#416;N TR&Agrave; &ndash; &#272;&Agrave; N&#7860;NG (&#259;n s&aacute;ng, tr&#432;a, chi&#7873;u)</div></div><div class=\"day \" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px;\"><div class=\"titDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; position: relative; cursor: pointer;\"><span style=\"box-sizing: border-box; color: rgb(237, 0, 128);\">NG&Agrave;Y 4 |</span>&nbsp;&#272;&Agrave; N&#7860;NG &ndash; NG&#360; H&Agrave;NH S&#416;N &ndash; H&#7896;I AN (&#259;n s&aacute;ng, tr&#432;a, chi&#7873;u)</div></div><div class=\"day \" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px;\"><div class=\"titDay\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; position: relative; cursor: pointer;\"><span style=\"box-sizing: border-box; color: rgb(237, 0, 128);\">NG&Agrave;Y 5 |</span>&nbsp;&#272;&Agrave; N&#7860;NG &ndash; B&Agrave; N&Agrave; &ndash; TP.HCM (&#259;n s&aacute;ng) (&#259;n tr&#432;a t&#7921; t&uacute;c)</div></div></div></div></div><div class=\"boxTour\" id=\"flag3\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-size: 14px;\"><div class=\"title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px 0px 10px; font-size: 20px; line-height: 30px; font-weight: 700; color: rgb(102, 102, 102); border-bottom: 1px solid rgba(0, 0, 0, 0.15);\"><span class=\"fa-paperclip\" style=\"box-sizing: border-box; padding-left: 30px; position: relative;\">D&#7883;ch v&#7909; bao g&#7891;m v&agrave; kh&ocirc;ng bao g&#7891;m</span></div><div class=\"content\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div class=\"the-content desc\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gi&aacute; tour bao g&#7891;m:</span></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">V&eacute; m&aacute;y bay kh&#7913; h&#7891;i TP.HCM &ndash; &#272;&Agrave; N&#7860;NG &ndash; TP.HCM (Vietjet Air, Jetstar Pacific).</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Xe tham quan (xe 16 ch&#7895;, 29 ch&#7895;, 35 ch&#7895;, 45 ch&#7895;) t&ugrave;y theo s&#7889; l&#432;&#7907;ng kh&aacute;ch th&#7921;c t&#7871; tr&ecirc;n chuy&#7871;n &#273;i.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Kh&aacute;ch s&#7841;n ti&ecirc;u chu&#7849;n &#273;&#7847;y &#273;&#7911; ti&#7879;n nghi 2 kh&aacute;ch ng&#432;&#7901;i l&#7899;n/ ph&ograve;ng. N&#7871;u l&#7867; ng&#432;&#7901;i th&#7913; 3, &#273;&oacute;ng ph&#7909; ph&iacute; ph&ograve;ng &#273;&#417;n ho&#7863;c ng&#7911; gh&eacute;p ph&ograve;ng 3 kh&aacute;ch.<ul style=\"box-sizing: border-box; margin-right: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style: disc;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Kh&aacute;ch s&#7841;n 3 sao t&#7841;i &#272;&agrave; N&#7861;ng: Ti&ecirc;n Sa, Ho&agrave;ng Sa, Ocean Heaven,&hellip;ho&#7863;c t&#432;&#417;ng &#273;&#432;&#417;ng.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Kh&aacute;ch s&#7841;n 3 sao t&#7841;i Hu&#7871;: Duy T&acirc;n, Thanh L&#7883;ch,&hellip;ho&#7863;c t&#432;&#417;ng &#273;&#432;&#417;ng.</li></ul></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">&#258;n u&#7889;ng theo ch&#432;&#417;ng tr&igrave;nh:<ul style=\"box-sizing: border-box; margin-right: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style: disc;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">&#258;n ph&#7909;: 4 b&#7919;a buffet s&aacute;ng t&#7841;i kh&aacute;ch s&#7841;n.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">&#258;n ch&iacute;nh: 08 b&#7919;a ch&iacute;nh ti&ecirc;u chu&#7849;n 100.000 &#273;&#7891;ng/b&#7919;a.</li></ul></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">V&eacute; tham quan theo ch&#432;&#417;ng tr&igrave;nh.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">H&#432;&#7899;ng d&#7851;n vi&ecirc;n ti&#7871;ng Vi&#7879;t vui v&#7867; nhi&#7879;t t&igrave;nh su&#7889;t chuy&#7871;n &#273;i.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">B&#7843;o hi&#7875;m v&#7899;i m&#7913;c b&#7891;i th&#432;&#7901;ng t&#7889;i &#273;a 100.000.000 &#273;&#7891;ng/tr&#432;&#7901;ng h&#7907;p. Kh&ocirc;ng &aacute;p d&#7909;ng cho kh&aacute;ch t&#7915; 80 tu&#7893;i tr&#7903; l&ecirc;n.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Qu&agrave; t&#7863;ng: n&oacute;n du l&#7883;ch Vi&#7879;t, n&#432;&#7899;c, kh&#259;n l&#7841;nh.</li></ul><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Kh&ocirc;ng bao g&#7891;m:</span></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Bia hay n&#432;&#7899;c ng&#7885;t trong c&aacute;c b&#7919;a &#259;n.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tham quan ngo&agrave;i ch&#432;&#417;ng tr&igrave;nh.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Chi ph&iacute; c&aacute; nh&acirc;n: &#273;i&#7879;n tho&#7841;i, gi&#7863;t &#7911;i&hellip;</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">V&eacute; c&aacute;p treo &#273;i B&agrave; N&agrave;, c&ocirc;ng vi&ecirc;n Ch&acirc;u &Aacute;,</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">01 b&#7919;a tr&#432;a ng&agrave;y th&#7913; 5 theo ch&#432;&#417;ng tr&igrave;nh.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Chi ph&iacute; b&atilde;i bi&#7875;n: d&ugrave;, v&otilde;ng, t&#7855;m n&#432;&#7899;c ng&#7885;t&hellip;</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Thu&#7871; VAT.</li></ul></div></div></div><div class=\"boxTour\" id=\"flag4\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-size: 14px;\"><div class=\"title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px 0px 10px; font-size: 20px; line-height: 30px; font-weight: 700; color: rgb(102, 102, 102); border-bottom: 1px solid rgba(0, 0, 0, 0.15);\"><span class=\"fa-calendar-check-o\" style=\"box-sizing: border-box; padding-left: 30px; position: relative;\">Ng&agrave;y kh&#7903;i h&agrave;nh kh&aacute;c</span></div><div class=\"content\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div id=\"mda-table-price\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div class=\"mda-list-price mda-tap ative table-responsive mCustomScrollbar _mCS_1 mCS_no_scrollbar\" style=\"box-sizing: border-box; width: 504.375px; margin: 0px; padding: 0px; touch-action: auto;\"><div id=\"mCSB_1\" class=\"mCustomScrollBox mCS-light mCSB_horizontal mCSB_inside\" tabindex=\"0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: relative; overflow: hidden; height: 58px; max-width: 100%; outline: 0px; direction: ltr; max-height: none;\"><div id=\"mCSB_1_container\" class=\"mCSB_container mCS_x_hidden mCS_no_scrollbar_x\" dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; overflow: hidden; width: 773.328px; height: auto; position: relative; top: 0px; left: 0px;\"><table class=\"table\" style=\"box-sizing: border-box; width: 773px; margin-bottom: 20px; border-spacing: 0px;\"><thead class=\"responsive\" style=\"box-sizing: border-box;\"><tr class=\"responsive\" style=\"box-sizing: border-box;\"><th class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857;\">STT</th><th width=\"85\" class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857; white-space: nowrap;\">Ng&agrave;y kh&#7903;i h&agrave;nh</th><th class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857;\">&#272;&#7863;c &#273;i&#7875;m</th><th width=\"100px\" class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857;\">Gi&aacute; t&#7915;</th><th width=\"90px\" class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857;\">S&#7889; Ch&#7895;</th><th width=\"125px\" class=\"responsive\" style=\"box-sizing: border-box; text-align: left; padding: 8px; border-top: 0px; border-bottom-color: rgb(221, 221, 221); line-height: 1.42857;\">Book tour</th></tr></thead><tbody class=\"responsive\" style=\"box-sizing: border-box;\"></tbody></table></div></div></div></div></div></div><div class=\"boxTour\" id=\"flag5\" style=\"box-sizing: border-box; margin: 0px 0px 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-size: 14px;\"><div class=\"title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px 0px 10px; font-size: 20px; line-height: 30px; font-weight: 700; color: rgb(102, 102, 102); border-bottom: 1px solid rgba(0, 0, 0, 0.15);\"><span class=\"fa-sticky-note-o\" style=\"box-sizing: border-box; padding-left: 30px; position: relative;\">Ghi ch&uacute;</span></div><div class=\"content\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><div class=\"the-content desc\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><em style=\"box-sizing: border-box;\">Gi&#7901; bay c&oacute; th&#7875; thay &#273;&#7893;i theo quy &#273;&#7883;nh c&#7911;a h&agrave;ng kh&ocirc;ng. Du L&#7883;ch Vi&#7879;t s&#7869; thay &#273;&#7893;i ch&#432;&#417;ng tr&igrave;nh cho ph&ugrave; h&#7907;p v&#7899;i gi&#7901; bay m&#7899;i nh&#432;ng s&#7869; kh&ocirc;ng ch&#7883;u tr&aacute;ch nhi&#7879;m v&#7873; c&aacute;c kho&#7843;n chi ph&iacute; ph&aacute;t sinh.</em></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"></ul><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gi&aacute; ve&#769; da&#768;nh cho tre&#777; em:</span><u style=\"box-sizing: border-box;\"></u></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tr&#7867; em d&#432;&#7899;i 02 tu&#7893;i: mi&#7877;n gi&aacute; tour, gi&aacute; v&eacute; m&aacute;y bay theo quy &#273;&#7883;nh c&#7911;a h&atilde;ng h&agrave;ng kh&ocirc;ng, Cha, M&#7865; ho&#7863;c ng&#432;&#7901;i th&acirc;n &#273;i k&egrave;m t&#7921; lo c&aacute;c chi ph&iacute; &#259;n, ng&#7911;, tham quan (n&#7871;u c&oacute;) cho b&eacute;.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tr&#7867; em t&#7915; 02 &ndash; d&#432;&#7899;i 05 tu&#7893;i: 90% gi&aacute; v&eacute; m&aacute;y bay; mi&#7877;n gi&aacute; tour. Cha, M&#7865; ho&#7863;c ng&#432;&#7901;i th&acirc;n &#273;i k&egrave;m t&#7921; lo c&aacute;c chi ph&iacute; &#259;n, ng&#7911;, tham quan (n&#7871;u c&oacute;) cho b&eacute;. Hai ng&#432;&#7901;i l&#7899;n ch&#7881; k&egrave;m 1 tr&#7867; em d&#432;&#7899;i 5 tu&#7893;i, tr&#7867; em th&#7913; 2 tr&#7903; l&ecirc;n ph&#7843;i mua &frac12; v&eacute; tour.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tr&#7867; em t&#7915; 05 &ndash; d&#432;&#7899;i 11 tu&#7893;i: 90% gi&aacute; v&eacute; m&aacute;y bay; 50% gi&aacute; tour. Bao g&#7891;m c&aacute;c d&#7883;ch v&#7909; &#259;n u&#7889;ng, gh&#7871; ng&#7891;i tr&ecirc;n xe v&agrave; ng&#7911; chung v&#7899;i gia &#273;&igrave;nh. Hai ng&#432;&#7901;i l&#7899;n ch&#7881; &#273;&#432;&#7907;c k&egrave;m 1 tr&#7867; em t&#7915; 5 &#273;&#7871;n d&#432;&#7899;i 11 tu&#7893;i, tr&#7867; em th&#7913; 2 tr&#7903; l&ecirc;n Cha, M&#7865; n&ecirc;n mua th&ecirc;m 1 su&#7845;t gi&#432;&#7901;ng &#273;&#417;n.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">T&#7915; 11 tu&#7893;i tr&#7903; l&ecirc;n: 100% gi&aacute; tour v&agrave; ti&ecirc;u chu&#7849;n nh&#432; ng&#432;&#7901;i l&#7899;n.</li></ul><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Quy &#273;&#7883;nh thanh to&aacute;n, h&#7911;y v&eacute;:</span></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Sau khi x&aacute;c nh&#7853;n v&agrave; thanh to&aacute;n (&iacute;t nh&#7845;t 50% ti&#7873;n c&#7885;c gi&#7919; ch&#7895; v&agrave; thanh to&aacute;n &#273;&#7911; 100% t&#7893;ng gi&aacute; tr&#7883; ti&#7873;n tour tr&#432;&#7899;c 15 ng&agrave;y kh&#7903;i h&agrave;nh).</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">&nbsp;Khi &#273;&#7871;n ng&agrave;y thanh to&aacute;n &#273;&#7911; 100% t&#7893;ng gi&aacute; tr&#7883; ti&#7873;n tour, n&#7871;u Qu&yacute; kh&aacute;ch kh&ocirc;ng thanh to&aacute;n &#273;&uacute;ng h&#7841;n v&agrave; &#273;&uacute;ng s&#7889; ti&#7873;n &#273;&#432;&#7907;c xem nh&#432; Qu&yacute; kh&aacute;ch t&#7921; &yacute; hu&#7927; tour v&agrave; m&#7845;t h&#7871;t s&#7889; ti&#7873;n &#273;&atilde; &#273;&#7863;t c&#7885;c gi&#7919; ch&#7895;.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">V&eacute; M&aacute;y Bay / v&eacute; xe l&#7917;a / v&eacute; t&agrave;u cao t&#7889;c &#273;&#432;&#7907;c xu&#7845;t ngay sau khi qu&yacute; kh&aacute;ch &#273;&oacute;ng ti&#7873;n v&agrave; c&oacute; x&aacute;c nh&#7853;n s&#7921; ch&iacute;nh x&aacute;c v&#7873; h&#7885;, t&ecirc;n (&#273;&uacute;ng t&#7915;ng k&yacute; t&#7921; ghi trong h&#7897; chi&#7871;u ho&#7863;c CMND), ng&agrave;y-th&aacute;ng-n&#259;m sinh &hellip; c&#7911;a h&agrave;nh kh&aacute;ch theo y&ecirc;u c&#7847;u c&#7911;a h&atilde;ng v&#7853;n chuy&#7875;n. M&#7885;i s&#7921; thay &#273;&#7893;i li&ecirc;n quan &#273;&#7871;n v&eacute; &#273;&atilde; xu&#7845;t: ng&agrave;y gi&#7901; &#273;i, t&ecirc;n h&agrave;nh kh&aacute;ch, h&#7911;y v&eacute;, qu&yacute; kh&aacute;ch vui l&ograve;ng ch&#7883;u chi ph&iacute; theo qui &#273;&#7883;nh sau:</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Ngay sau khi Qu&yacute; kh&aacute;ch &#273;&#259;ng k&yacute; tour n&#7871;u h&#7911;y s&#7869; b&#7883; ph&#7841;t ti&#7873;n tour v&agrave; v&eacute; m&aacute;y bay:&nbsp;</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Ngay sau khi &#273;&#7863;t c&#7885;c ho&#7863;c thanh to&aacute;n ho&#7863;c tr&#432;&#7899;c 15 ng&agrave;y: ph&iacute; h&#7911;y 35% ti&#7873;n tour+ 100% V&eacute; m&aacute;y bay.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">H&#7911;y 10 ng&agrave;y tr&#432;&#7899;c ng&agrave;y kh&#7903;i h&agrave;nh: ph&iacute; h&#7911;y 50% ti&#7873;n tour + 100% v&eacute; m&aacute;y bay.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">H&#7911;y 07 ng&agrave;y tr&#432;&#7899;c ng&agrave;y kh&#7903;i h&agrave;nh: ph&iacute; h&#7911;y 70% ti&#7873;n tour&nbsp; + 100% v&eacute; m&aacute;y bay.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">H&#7911;y&nbsp; 05 ng&agrave;y tr&#432;&#7899;c ng&agrave;y kh&#7903;i h&agrave;nh: ph&iacute; h&#7911;y 100% ti&#7873;n tour&nbsp; + 100% v&eacute; m&aacute;y bay.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tr&#432;&#7901;ng h&#7907;p qu&yacute; kh&aacute;ch &#273;&#7871;n tr&#7877; gi&#7901; kh&#7903;i h&agrave;nh &#273;&#432;&#7907;c t&iacute;nh l&agrave; h&#7911;y 5 ng&agrave;y tr&#432;&#7899;c ng&agrave;y kh&#7903;i h&agrave;nh.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Do t&iacute;nh ch&#7845;t l&agrave; &#273;o&agrave;n gh&eacute;p kh&aacute;ch l&#7867;, Du L&#7883;ch Vi&#7879;t s&#7869; c&oacute; tr&aacute;ch nhi&#7879;m nh&#7853;n kh&aacute;ch &#273;&#259;ng k&yacute; cho &#273;&#7911; &#273;o&agrave;n (10 kh&aacute;ch ng&#432;&#7901;i l&#7899;n tr&#7903; l&ecirc;n) th&igrave; &#273;o&agrave;n s&#7869; kh&#7903;i h&agrave;nh &#273;&uacute;ng l&#7883;ch tr&igrave;nh. N&#7871;u s&#7889; l&#432;&#7907;ng &#273;o&agrave;n d&#432;&#7899;i 10 kh&aacute;ch, c&ocirc;ng ty c&oacute; tr&aacute;ch nhi&#7879;m th&ocirc;ng b&aacute;o cho kh&aacute;ch tr&#432;&#7899;c ng&agrave;y kh&#7903;i h&agrave;nh 3 ng&agrave;y v&agrave; s&#7869; th&#7887;a thu&#7853;n l&#7841;i ng&agrave;y kh&#7903;i h&agrave;nh m&#7899;i ho&#7863;c ho&agrave;n tr&#7843; to&agrave;n b&#7897; s&#7889; ti&#7873;n &#273;&atilde; &#273;&#7863;t c&#7885;c tour.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Vi&#7879;c hu&#7927; b&#7887; chuy&#7871;n &#273;i ph&#7843;i &#273;&#432;&#7907;c th&ocirc;ng b&aacute;o tr&#7921;c ti&#7871;p v&#7899;i C&ocirc;ng ty ho&#7863;c qua fax, email, tin nh&#7855;n v&agrave; ph&#7843;i &#273;&#432;&#7907;c C&ocirc;ng ty x&aacute;c nh&#7853;n. Vi&#7879;c hu&#7927; b&#7887; b&#7857;ng &#273;i&#7879;n tho&#7841;i kh&ocirc;ng &#273;&#432;&#7907;c ch&#7845;p nh&#7853;n.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">C&aacute;c ng&agrave;y &#273;&#7863;t c&#7885;c, thanh to&aacute;n, hu&#7927; v&agrave; d&#7901;i tour: kh&ocirc;ng t&iacute;nh th&#7913; 7, Ch&#7911; Nh&#7853;t.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Trong nh&#7919;ng tr&#432;&#7901;ng h&#7907;p b&#7845;t kh&#7843; kh&aacute;ng nh&#432;: kh&#7911;ng b&#7889;, b&#7841;o &#273;&#7897;ng, thi&ecirc;n tai, l&#361; l&#7909;t&hellip; Tu&#7923; theo t&igrave;nh h&igrave;nh th&#7921;c t&#7871; v&agrave; s&#7921; thu&#7853;n ti&#7879;n, an to&agrave;n c&#7911;a kh&aacute;ch h&agrave;ng, c&ocirc;ng ty Du L&#7883;ch s&#7869; ch&#7911; &#273;&#7897;ng th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng s&#7921; thay &#273;&#7893;i nh&#432; sau: hu&#7927; ho&#7863;c thay th&#7871; b&#7857;ng m&#7897;t ch&#432;&#417;ng tr&igrave;nh m&#7899;i v&#7899;i chi ph&iacute; t&#432;&#417;ng &#273;&#432;&#417;ng ch&#432;&#417;ng tr&igrave;nh tham quan tr&#432;&#7899;c &#273;&oacute;. Trong tr&#432;&#7901;ng h&#7907;p ch&#432;&#417;ng tr&igrave;nh m&#7899;i c&oacute; ph&aacute;t sinh th&igrave; Kh&aacute;ch h&agrave;ng s&#7869; thanh to&aacute;n kho&#7843;n ph&aacute;t sinh n&agrave;y. Tuy nhi&ecirc;n, m&#7895;i b&ecirc;n c&oacute; tr&aacute;ch nhi&#7879;m c&#7889; g&#7855;ng t&#7889;i &#273;a, gi&uacute;p &#273;&#7905; b&ecirc;n b&#7883; thi&#7879;t h&#7841;i nh&#7857;m gi&#7843;m thi&#7875;u c&aacute;c t&#7893;n th&#7845;t g&acirc;y ra v&igrave; l&yacute; do b&#7845;t kh&#7843; kh&aacute;ng.&hellip;</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">&#272;&#7889;i v&#7899;i s&#7921; thay &#273;&#7893;i l&#7883;ch tr&igrave;nh, gi&#7901; bay do l&#7895;i c&#7911;a h&atilde;ng h&agrave;ng kh&ocirc;ng, t&agrave;u ho&#7843;, t&agrave;u thu&#7927;, Du L&#7883;ch Vi&#7879;t s&#7869; kh&ocirc;ng ch&#7883;u tr&aacute;ch nhi&#7879;m b&#7845;t k&#7923; ph&aacute;t sinh n&agrave;o do l&#7895;i tr&ecirc;n nh&#432;: ph&aacute;t sinh b&#7919;a &#259;n, nh&agrave; h&agrave;ng, kh&aacute;ch s&#7841;n, ph&#432;&#417;ng ti&#7879;n di chuy&#7875;n, h&#432;&#7899;ng d&#7851;n vi&ecirc;n, &hellip;.</li></ul><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 5px 0px; font-family: Arial; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">L&#432;u &yacute;:</span></p><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px 0px 0px 10px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Khi &#273;&#259;ng k&yacute; tour kh&aacute;ch h&agrave;ng b&#7855;t bu&#7897;c ph&#7843;i g&#7903;i gi&#7845;y t&#7901; t&ugrave;y th&acirc;n cho &#273;&#417;n v&#7883; du l&#7883;ch &#273;&#7875; v&agrave;o t&ecirc;n xu&#7845;t v&eacute; v&agrave; mua b&#7843;o hi&#7875;m du l&#7883;ch. Nh&#7919;ng gi&#7845;y t&#7901; c&aacute; nh&acirc;n c&#7911;a kh&aacute;ch h&agrave;ng (CMND ho&#7863;c Passport) thu&#7897;c v&#7873; tr&aacute;ch nhi&#7879;m c&#7911;a kh&aacute;ch h&agrave;ng. M&#7885;i v&#7845;n &#273;&#7873; nh&#432; h&igrave;nh &#7843;nh, th&ocirc;ng tin gi&#7845;y t&#7901; trong b&#7843;n g&#7889;c b&#7883; m&#7901;, kh&ocirc;ng r&otilde; r&agrave;ng; Passport, CMND h&#7871;t h&#7841;n,&hellip; kh&ocirc;ng &#273;&uacute;ng quy &#273;&#7883;nh c&#7911;a ph&aacute;p lu&#7853;t Vi&#7879;t Nam, Du L&#7883;ch Vi&#7879;t s&#7869; kh&ocirc;ng ch&#7883;u tr&aacute;ch nhi&#7879;m v&agrave; s&#7869; kh&ocirc;ng ho&agrave;n tr&#7843; b&#7845;t c&#7913; chi ph&iacute; ph&aacute;t sinh n&agrave;o.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">&#272;&#7889;i v&#7899;i kh&aacute;ch N&#432;&#7899;c ngo&agrave;i/Vi&#7879;t Ki&#7873;u: Khi &#273;i tour ph&#7843;i mang theo &#273;&#7847;y &#273;&#7911; Passport (H&#7897; Chi&#7871;u), Visa Vi&#7879;t Nam b&#7843;n ch&iacute;nh c&ograve;n h&#7841;n s&#7917; d&#7909;ng l&agrave;m th&#7911; t&#7909;c l&ecirc;n m&aacute;y bay theo qui &#273;&#7883;nh h&agrave;ng kh&ocirc;ng.&nbsp;</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Tr&#7867; em (d&#432;&#7899;i 12 tu&#7893;i) khi &#273;i du l&#7883;ch mang theo gi&#7845;y khai sinh (b&#7843;n ch&iacute;nh ho&#7863;c sao y c&oacute; th&#7883; th&#7921;c c&ograve;n h&#7841;n s&#7917; d&#7909;ng) &#273;&#7875;&nbsp; l&agrave;m th&#7911; t&#7909;c h&agrave;ng kh&ocirc;ng.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Qu&yacute; kh&aacute;ch t&#7915; 14 tu&#7893;i b&#7855;t bu&#7897;c ph&#7843;i c&oacute; CMND ho&#7863;c Passport (c&ograve;n h&#7841;n s&#7917; d&#7909;ng), KH&Ocirc;NG S&#7916; D&#7908;NG GI&#7844;Y KHAI SINH. N&#7871;u tr&#7867; em t&#7915; 14 tu&#7893;i ch&#432;a c&oacute; CMND ho&#7863;c Passport b&#7855;t bu&#7897;c ph&#7843;i c&oacute; Gi&#7845;y x&aacute;c nh&#7853;n nh&acirc;n th&acirc;n (C&oacute; x&aacute;c nh&#7853;n ch&iacute;nh quy&#7873;n (c&ograve;n h&#7841;n s&#7917; d&#7909;ng)) + Gi&#7845;y khai sinh.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">M&#7897;t s&#7889; th&#7913; t&#7921;, chi ti&#7871;t trong ch&#432;&#417;ng tr&igrave;nh; gi&#7901; bay; gi&#7901; xe l&#7917;a; gi&#7901; t&agrave;u cao t&#7889;c c&oacute; th&#7875; thay &#273;&#7893;i &#273;&#7875; ph&ugrave; h&#7907;p v&#7899;i t&igrave;nh h&igrave;nh th&#7921;c t&#7871; c&#7911;a chuy&#7871;n &#273;i (th&#7901;i ti&#7871;t, giao th&ocirc;ng&hellip;)</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">Qui &#273;&#7883;nh nh&#7853;n &amp; tr&#7843; ph&ograve;ng t&#7841;i c&aacute;c kh&aacute;ch s&#7841;n/resort: nh&#7853;n ph&ograve;ng sau 14H00 v&agrave; tr&#7843; ph&ograve;ng tr&#432;&#7899;c 12H00 .</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">H&agrave;nh l&yacute; v&agrave; t&#432; trang du kh&aacute;ch t&#7921; b&#7843;o qu&#7843;n trong qu&aacute; tr&igrave;nh du l&#7883;ch .</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; text-align: justify;\">V&igrave; l&yacute; do s&#7913;c kh&#7887;e v&agrave; an to&agrave;n v&#7879; sinh th&#7921;c ph&#7849;m, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang th&#7921;c ph&#7849;m t&#7915; b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch s&#7841;n. &#272;&#7889;i v&#7899;i th&#7913;c u&#7889;ng khi mang v&agrave;o ph&#7843;i c&oacute; s&#7921; &#273;&#7891;ng &yacute; c&#7911;a nh&agrave; h&agrave;ng, kh&aacute;ch s&#7841;n v&agrave; b&#7883; t&iacute;nh ph&iacute; n&#7871;u c&oacute;.</li></ul></div></div></div></body></html>\n', '2020-04-29 09:03:04', '2020-05-06 17:47:36', 1, 1, 0, 0, 0, 6),
(12, 'Vịnh Hạ Long', 'vinh-ha-long', 13000000, 'upload/images/1588579556_dulichtheotour-transviet00.jpg', '\0\0\0<\0\0\0!\0\0\0D\0\0\0O\0\0\0C\0\0\0T\0\0\0Y\0\0\0P\0\0\0E\0\0\0 \0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0 \0\0\0P\0\0\0U\0\0\0B\0\0\0L\0\0\0I\0\0\0C\0\0\0 \0\0\0\"\0\0\0-\0\0\0/\0\0\0/\0\0\0W\0\0\03\0\0\0C\0\0\0/\0\0\0/\0\0\0D\0\0\0T\0\0\0D\0\0\0 \0\0\0H\0\0\0T\0\0\0M\0\0\0L\0\0\0 \0\0\04\0\0\0.\0\0\00\0\0\0 \0\0\0T\0\0\0r\0\0\0a\0\0\0n\0\0\0s\0\0\0i\0\0\0t\0\0\0i\0\0\0o\0\0\0n\0\0\0a\0\0\0l\0\0\0/\0\0\0/\0\0\0E\0\0\0N\0\0\0\"\0\0\0 \0\0\0\"\0\0\0h\0\0\0t\0\0\0t\0\0\0p\0\0\0:\0\0\0/\0\0\0/\0\0\0w\0\0\0w\0\0\0w\0\0\0.\0\0\0w\0\0\03\0\0\0.\0\0\0o\0\0\0r\0\0\0g\0\0\0/\0\0\0T\0\0\0R\0\0\0/\0\0\0R\0\0\0E\0\0\0C\0\0\0-\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\04\0\0\00\0\0\0/\0\0\0l\0\0\0o\0\0\0o\0\0\0s\0\0\0e\0\0\0.\0\0\0d\0\0\0t\0\0\0d\0\0\0\"\0\0\0>\0\0\0\n\0\0\0<\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0>\0\0\0<\0\0\0!\0\0\0-\0\0\0-\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0-\0\0\0-\0\0\0>\0\0\0<\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0<\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0p\0\0\0>\0\0\0&\0\0\0#\0\0\07\0\0\08\0\0\04\0\0\01\0\0\0;\0\0\0d\0\0\0b\0\0\0k\0\0\0a\0\0\0g\0\0\0i\0\0\0u\0\0\0w\0\0\0f\0\0\0k\0\0\0b\0\0\0a\0\0\0k\0\0\0j\0\0\0s\0\0\0g\0\0\0d\0\0\0h\0\0\0a\0\0\0l\0\0\0w\0\0\0h\0\0\0k\0\0\0f\0\0\0b\0\0\0j\0\0\0k\0\0\0a\0\0\0s\0\0\0l\0\0\0k\0\0\0d\0\0\0h\0\0\0a\0\0\0s\0\0\0<\0\0\0/\0\0\0p\0\0\0>\0\0\0<\0\0\0/\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0/\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0\n', '2020-05-04 08:05:56', '2020-05-06 09:21:12', 23, 1, 0, 0, 0, 3),
(13, '\0\0\0a\0\0\0s\0\0\0d\0\0\0a\0\0\0s', 'asdas', 21321, 'upload/images/1588587126_images.jpg', '\0\0\0<\0\0\0!\0\0\0D\0\0\0O\0\0\0C\0\0\0T\0\0\0Y\0\0\0P\0\0\0E\0\0\0 \0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0 \0\0\0P\0\0\0U\0\0\0B\0\0\0L\0\0\0I\0\0\0C\0\0\0 \0\0\0\"\0\0\0-\0\0\0/\0\0\0/\0\0\0W\0\0\03\0\0\0C\0\0\0/\0\0\0/\0\0\0D\0\0\0T\0\0\0D\0\0\0 \0\0\0H\0\0\0T\0\0\0M\0\0\0L\0\0\0 \0\0\04\0\0\0.\0\0\00\0\0\0 \0\0\0T\0\0\0r\0\0\0a\0\0\0n\0\0\0s\0\0\0i\0\0\0t\0\0\0i\0\0\0o\0\0\0n\0\0\0a\0\0\0l\0\0\0/\0\0\0/\0\0\0E\0\0\0N\0\0\0\"\0\0\0 \0\0\0\"\0\0\0h\0\0\0t\0\0\0t\0\0\0p\0\0\0:\0\0\0/\0\0\0/\0\0\0w\0\0\0w\0\0\0w\0\0\0.\0\0\0w\0\0\03\0\0\0.\0\0\0o\0\0\0r\0\0\0g\0\0\0/\0\0\0T\0\0\0R\0\0\0/\0\0\0R\0\0\0E\0\0\0C\0\0\0-\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\04\0\0\00\0\0\0/\0\0\0l\0\0\0o\0\0\0o\0\0\0s\0\0\0e\0\0\0.\0\0\0d\0\0\0t\0\0\0d\0\0\0\"\0\0\0>\0\0\0\n\0\0\0<\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0>\0\0\0<\0\0\0!\0\0\0-\0\0\0-\0\0\0?\0\0\0x\0\0\0m\0\0\0l\0\0\0 \0\0\0e\0\0\0n\0\0\0c\0\0\0o\0\0\0d\0\0\0i\0\0\0n\0\0\0g\0\0\0=\0\0\0\"\0\0\0u\0\0\0t\0\0\0f\0\0\0-\0\0\08\0\0\0\"\0\0\0 \0\0\0?\0\0\0-\0\0\0-\0\0\0>\0\0\0<\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0<\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0p\0\0\0>\0\0\0a\0\0\0s\0\0\0c\0\0\0z\0\0\0x\0\0\0v\0\0\0c\0\0\0z\0\0\0x\0\0\0v\0\0\0<\0\0\0/\0\0\0p\0\0\0>\0\0\0<\0\0\0/\0\0\0b\0\0\0o\0\0\0d\0\0\0y\0\0\0>\0\0\0<\0\0\0/\0\0\0h\0\0\0t\0\0\0m\0\0\0l\0\0\0>\0\0\0\n', '2020-05-04 10:12:06', '2020-05-06 09:21:17', 27, 1, 0, 0, 0, 12312);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_tour`
--

CREATE TABLE `type_tour` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Đang đổ dữ liệu cho bảng `type_tour`
--

INSERT INTO `type_tour` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tour Trong Nước', 'upload/images/1588755144_du lich trong nuoc.jpg', 1, '2020-04-28 15:13:07', '2020-05-06 08:52:24'),
(23, 'Tour Đông Xuân', 'upload/images/1588755158_du-lich-con-dao-1.JPG.jpg', 1, '2020-05-05 07:50:42', '2020-05-06 08:52:38'),
(27, 'Tour Nước Ngoài', 'upload/images/1588761515_nen di tour hay tu tuc nhung trai nghiem rieng biet (1).jpg', 1, '2020-05-06 02:20:47', '2020-05-06 10:38:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `city_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'null',
  `phone` int(12) DEFAULT NULL,
  `user_position_id` int(10) DEFAULT NULL,
  `user_department_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `fullname`, `birthday`, `start_date`, `city_address`, `state_address`, `image`, `phone`, `user_position_id`, `user_department_id`, `created_at`, `updated_at`, `user_status`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$dX5.6dJWu8E5aVxXhEHB9u8qWPXcR/b5ZU88U.da30wgUIyT/Wck.', 'LHss5bdEXril4oICvT8thxjsoCCu5qFrDZjl1lDu78fseuFzKTQVwFfm4tVr', 'hieu admin1', '2019-05-23', '2019-05-31', '234234', '3123', 'fdbr-1577602725_1577374367_xuu.jpg', 0, 2, 2, NULL, '2019-12-29 07:10:06', 1),
(2, 'admin1', 'ejr96676@zwoho.com', NULL, '$2y$10$ZgslVSEW8hXgblxhSxqJF.pBSNc4p46BuRImy/ZfLnm1xcRkXjVi2', NULL, 'hieu 1', '2019-05-31', '2019-05-30', 'Select City', 'hieu', 'L55R-Untitled.jpg', 1626832288, 1, 1, '2019-05-31 02:25:17', '2019-06-03 19:37:19', 1),
(3, '123', '123@gmail.com', NULL, '$2y$10$pyoGo1g7uy7rlbd/YpTqfeRYSnnQjRTzJBuLCotaqqQ5s/wCBsCCK', NULL, 'hieu', '2019-05-24', '2019-05-24', 'Select City', 'hieu', 'BvIX-anh-bia-dep-ve-phong-canh-thien-nhien-30.jpg', 1626832288, 1, 0, '2019-05-31 02:34:02', '2019-06-06 01:55:19', 0),
(4, 'dsffsdf', 'test@test.com', NULL, '$2y$10$N9j1AP3G27Ek6nBVkkFsu.EMNExYfFSffI8KQ6p865idVuCHdtzPC', NULL, 'test', '2019-06-20', '2019-06-20', 'Select City', 'testt aa', 'null', 12121, 3, 1, '2019-06-03 21:47:29', '2019-06-04 00:38:28', 1),
(5, 'sss', 'ejr9667ss6@zwoho.com', NULL, '$2y$10$H4tABz/eeBmbrczHPxX7sOznA35GbwL9B2T99N7t2EFbya/7yi5oG', NULL, 'hieu', '2019-06-19', '2019-06-20', 'Select City', 'ktx a, ktx b', 'null', 1626832288, 3, 2, '2019-06-06 23:18:26', '2019-06-06 23:18:26', 1),
(6, '111111', 'gnb80216@bcaoo.com', NULL, '$2y$10$3TY0uNVG71mOzWtwy2Tr2umKKIiygse.gfQ2cIPPRKTzqAVKtzdrW', NULL, 'ihieeu', '2019-06-11', '2019-06-11', 'Hồ Chí Minh', 'ktx a, ktx b', 'null', 1626832288, 1, 2, '2019-06-11 09:32:23', '2019-06-11 09:32:23', 1),
(7, '1111111111', 'lequochieu284@gmail.com', NULL, '$2y$10$fVbIvkCZHFcoLesO/ZyYyOeWd3cAFaDnN.fQemuYVYjDCSrTKGsdK', NULL, '111111111111', '2019-06-11', '2019-06-11', 'Hồ Chí Minh', '11111111111', 'null', 111111, 1, 1, '2019-06-11 09:44:58', '2019-06-11 09:44:58', 1),
(8, '213123', 'qen19932@bcaoo.com', NULL, '$2y$10$2zTtta101r2biVzlu5nMeeBF2V6F0uJg53giwKZAd71nn.X0fitVK', NULL, 'sds', '2019-06-19', '2019-06-27', 'Đồng Nai', 'ktsx a', 'null', 3123, 2, 1, '2019-06-11 10:07:40', '2019-08-06 06:25:06', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `financing`
--
ALTER TABLE `financing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_type`
--
ALTER TABLE `post_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide_title`
--
ALTER TABLE `slide_title`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `special_form`
--
ALTER TABLE `special_form`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_tour`
--
ALTER TABLE `type_tour`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `financing`
--
ALTER TABLE `financing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `post_type`
--
ALTER TABLE `post_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide_title`
--
ALTER TABLE `slide_title`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `special_form`
--
ALTER TABLE `special_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `type_tour`
--
ALTER TABLE `type_tour`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

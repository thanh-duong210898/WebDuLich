-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2020 lúc 08:38 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacn`
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
(2, 'Menu', '/admin/menu', NULL, 'fas fa-list', 0, 1, NULL, '2019-12-16 09:32:54', 1),
(19, 'User', '/admin/user', '_blank', 'fas fa-user', 0, 2, '2019-05-30 02:19:10', '2019-12-16 09:32:54', 1),
(41, 'Product', '/admin/products', NULL, NULL, 0, 3, '2019-08-06 09:42:37', '2019-12-29 07:47:38', 1),
(43, 'Category', '/admin/category', NULL, NULL, 0, 4, '2019-08-06 09:43:53', '2019-12-29 07:47:38', 1),
(50, 'Banner', '/banner', NULL, NULL, 0, 9, '2019-12-29 07:46:52', '2019-12-29 07:50:23', 1),
(51, 'Home Banner', '/admin/banner/edit/1', NULL, NULL, 50, 10, '2019-12-29 07:47:31', '2019-12-29 07:50:23', 1),
(52, 'Title', '/title', NULL, NULL, 0, 10, '2019-12-29 07:47:57', '2019-12-29 07:50:23', 1),
(53, 'Home Title', '/admin/title/edit/1', NULL, NULL, 52, 11, '2019-12-29 07:48:09', '2019-12-29 07:50:23', 1),
(54, 'Home Services', '/admin/home-services', NULL, NULL, 0, 5, '2019-12-29 07:49:03', '2019-12-29 07:50:23', 1),
(55, 'Slides', '/admin/slides', NULL, NULL, 0, 6, '2019-12-29 07:49:23', '2019-12-29 07:50:23', 1),
(56, 'Slide Title', '/admin/slide-title', NULL, NULL, 0, 7, '2019-12-29 07:49:47', '2019-12-29 07:50:23', 1),
(57, 'Our Team', '/admin/our-team', NULL, NULL, 0, 8, '2019-12-29 07:50:04', '2019-12-29 07:50:23', 1),
(58, 'Contact', '/admin/contact/edit', NULL, NULL, 0, 11, '2019-12-29 08:06:54', '2019-12-29 08:06:59', 1);

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
(1, 'product 1', 'product-1', 12323, 'nFmf-jlbF-product4.png', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><html><body><p>123213</p></body></html>\n', '2019-08-07 02:42:40', '2019-12-27 16:33:21', 1, 1, 0, 0, 0),
(2, 'proud 1', 'proud-1', 1111, 'uEMj-product1.png', '111', '2019-08-07 02:52:21', '2019-08-09 09:42:24', 2, 1, 1, 1, 1),
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

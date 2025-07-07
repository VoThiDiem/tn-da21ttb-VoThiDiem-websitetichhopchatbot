-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 29, 2025 lúc 04:41 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_commerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `consignee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignee_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `ward_id` int DEFAULT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `user_id`, `consignee_name`, `consignee_phone`, `province_id`, `district_id`, `ward_id`, `province_name`, `district_name`, `ward_name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Võ Thị Diểm', '0364079923', 214, 2033, 580605, 'Trà Vinh', 'Huyện Trà Cú', 'Xã Định An', '42/3', 0, '2025-04-16 18:27:53', '2025-05-26 20:46:15'),
(2, 13, 'Chin chin', '0915569152', 214, 1911, 580514, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Thanh Mỹ', '29/7', 1, '2025-04-20 02:15:19', '2025-04-20 02:15:19'),
(3, 23, 'Nguyễn Văn A', '0916741252', 214, 1911, 58051, 'Trà Vinh', 'Huyện Châu Thành', 'Thị trấn Châu Thành', '23/4', 1, '2025-05-12 23:49:43', '2025-05-12 23:49:43'),
(5, 26, 'Nguyễn Văn B', '0949375396', 214, 1911, 580514, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Thanh Mỹ', '29/7 Ấp An Chay', 1, '2025-05-24 07:35:50', '2025-05-24 07:35:50'),
(6, 3, 'Võ Thị Diểm', '0364079923', 214, 2033, 580607, 'Trà Vinh', 'Huyện Trà Cú', 'Xã Hàm Tân', '45/6', 0, '2025-05-26 02:38:46', '2025-05-26 20:46:33'),
(7, 3, 'Nguyễn Văn B', '0917424535', 214, 1911, 580514, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Thanh Mỹ', '63/1', 1, '2025-05-26 05:34:47', '2025-05-26 20:29:32'),
(8, 3, 'Nguyễn Văn B', '0364079923', 214, 1911, 580514, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Thanh Mỹ', '35/6', 0, '2025-05-26 14:53:11', '2025-05-26 20:46:48'),
(9, 3, 'Nguyễn Văn B', '0915569152', 214, 1911, 580512, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Phước Hảo', '93/7', 0, '2025-05-26 15:01:26', '2025-05-26 20:47:00'),
(10, 2, 'Trần Thị Lan', '0916741252', 214, 1911, 580512, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Phước Hảo', 'Ấp Hòa Hão', 1, '2025-06-26 15:29:16', '2025-06-26 15:29:16'),
(11, 29, 'Nguyễn Minh Tuấn', '0915569153', 214, 1911, 580514, 'Trà Vinh', 'Huyện Châu Thành', 'Xã Thanh Mỹ', '29/7 Ấp An Chay', 1, '2025-06-26 21:09:40', '2025-06-26 21:09:40'),
(12, 31, 'Diệp Tú Như', '0916741252', 214, 2020, 580404, 'Trà Vinh', 'Huyện Tiểu Cần', 'Xã Hiếu Tử', 'Ấp Ô Đùng', 1, '2025-06-28 19:25:00', '2025-06-28 19:25:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thiên Long', NULL, '2025-04-28 08:22:53'),
(2, 'IK Copy', NULL, '2025-05-01 04:51:11'),
(3, 'Điểm 10', NULL, '2025-05-01 04:51:34'),
(4, 'Flexoffice', NULL, '2025-05-01 04:51:47'),
(7, 'Flexio', '2025-05-02 22:34:27', '2025-05-02 22:34:27'),
(8, 'Colokit', '2025-05-19 05:13:50', '2025-05-19 05:13:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(12, 'Giấy', 'faFileLines', '2025-05-01 03:25:07', '2025-05-18 20:27:59'),
(13, 'Bút viết', 'faPen', '2025-05-01 03:30:47', '2025-05-01 03:30:47'),
(14, 'File bìa hồ sơ', 'faEnvelope', '2025-05-01 04:02:20', '2025-05-01 04:29:46'),
(15, 'Dụng cụ học tập', 'faGraduationCap', '2025-05-01 04:02:34', '2025-05-01 04:24:13'),
(17, 'Dao - Kéo - Bấm kim', 'faToolbox', '2025-05-01 04:03:11', '2025-05-01 04:33:24'),
(18, 'Vật liệu dán', 'faTape', '2025-05-19 04:34:39', '2025-05-19 18:31:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Trắng', '#f5f5f5', NULL, '2025-04-17 19:29:42'),
(2, 'Đỏ', '#ff0000', NULL, NULL),
(3, 'Đen', '#000', NULL, NULL),
(5, 'Hồng', '#e628d6', '2025-05-01 09:49:31', '2025-05-01 09:49:31'),
(6, 'Xám', '#919191', '2025-05-01 09:49:47', '2025-05-01 09:49:47'),
(7, 'Cam', '#ec7d22', '2025-05-01 09:50:05', '2025-05-01 09:50:05'),
(8, 'Xanh dương', '#143de1', '2025-05-01 09:50:27', '2025-05-01 09:50:27'),
(9, 'Xanh lá', '#13c931', '2025-05-01 09:50:39', '2025-05-01 09:50:39'),
(10, 'Tím', '#8f2cc3', '2025-05-01 20:37:41', '2025-05-01 20:37:41'),
(11, 'Vàng', '#f1f538', '2025-05-01 20:38:05', '2025-05-01 20:38:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combos`
--

CREATE TABLE `combos` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `combos`
--

INSERT INTO `combos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'không combo', NULL, NULL),
(2, 'Có combo', NULL, NULL),
(4, 'combo 5', NULL, '2025-05-01 19:54:09'),
(5, 'combo 10', NULL, '2025-05-01 19:54:16'),
(7, 'combo 20', NULL, '2025-05-01 19:54:23'),
(8, '1 cuốn', '2025-05-19 07:00:19', '2025-05-19 07:00:19'),
(9, '10 cuốn', '2025-05-19 07:00:26', '2025-05-19 07:00:26'),
(10, '5 cuốn', '2025-05-19 07:00:32', '2025-05-19 07:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `quantity` int NOT NULL,
  `condition` int DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_condition` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `brand_id`, `name`, `start`, `end`, `quantity`, `condition`, `number`, `discount_condition`, `created_at`, `updated_at`) VALUES
(9, NULL, 'MG1', '2025-04-26', '2025-06-22', 10, 1, '10', 3000, '2025-04-28 02:51:50', '2025-06-18 07:05:57'),
(10, NULL, 'MG2', '2025-04-30', '2025-05-31', 10, 1, '20', 100000, '2025-04-28 03:08:14', '2025-06-18 07:06:09'),
(11, NULL, 'MG3', '2025-04-27', '2025-04-29', 10, 1, '20', 10000, '2025-04-28 03:42:45', '2025-04-28 05:35:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_model_id` int UNSIGNED NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `path`, `product_model_id`, `status`, `created_at`, `updated_at`) VALUES
(25, 'images/xw5IyBmPpngXA2eZd4QiH3CHtWBlmp3tByKESIuN.webp', 29, 0, '2025-05-01 06:44:07', '2025-05-01 06:44:07'),
(30, 'images/jBa8BBRYYfGNjco8ApIZMsRwpd5iD57DNR1L4FW3.webp', 32, 0, '2025-05-01 07:52:29', '2025-05-01 07:52:29'),
(31, 'images/u6ZD1nH1BrqzFPbusimc9iN6Ve4RFfU19xp62M9j.webp', 32, 0, '2025-05-01 07:52:29', '2025-05-01 07:52:29'),
(32, 'images/NDh6lqU3ciXngZejB7SeH87w8UbFTNVvn7MqdL6K.webp', 33, 0, '2025-05-01 08:36:11', '2025-05-01 08:36:11'),
(33, 'images/Vuc9qHtxWh4RQ54BPDpI272N301T21K8qjoLcj9U.webp', 33, 0, '2025-05-01 08:36:11', '2025-05-01 08:36:11'),
(34, 'images/NDh6lqU3ciXngZejB7SeH87w8UbFTNVvn7MqdL6K.webp', 34, 0, '2025-05-01 08:56:20', '2025-05-01 08:56:20'),
(35, 'images/u6ZD1nH1BrqzFPbusimc9iN6Ve4RFfU19xp62M9j.webp', 34, 0, '2025-05-01 08:56:20', '2025-05-01 08:56:20'),
(36, 'images/9HLm7vuuuqBM5CwJyFKk0yZgRbNtQrbqWDhq3ZPH.webp', 34, 0, '2025-05-01 08:56:20', '2025-05-01 08:56:20'),
(37, 'images/mXzR902UdQ89wXQit2tXNYOf1Eqn2kKLPMEn9pok.webp', 35, 0, '2025-05-01 09:02:14', '2025-05-01 09:02:14'),
(38, 'images/kOTjKkVWxckQxdYDXkfYfRhYhKIWkrQddyWHfJPC.webp', 35, 0, '2025-05-01 09:02:14', '2025-05-01 09:02:14'),
(39, 'images/qmpwmU5jFLXD1JTOwL6QyGcmUwGZZueMyKrsVBRi.webp', 35, 0, '2025-05-01 09:02:14', '2025-05-01 09:02:14'),
(40, 'images/wfJHHDZ82vJQC9AfNMj3yrnUyuXJHNDBDY8T8kT0.webp', 36, 0, '2025-05-01 09:04:34', '2025-05-01 09:04:34'),
(41, 'images/nsxqISJnW4usXaBwqDs44fDyTcnCcvsL6nvS00jj.webp', 36, 0, '2025-05-01 09:04:34', '2025-05-01 09:04:34'),
(42, 'images/aokeEHCYNbSIzyg9P4aMRJUmBaAmhY37Kqi5UJln.webp', 36, 0, '2025-05-01 09:04:34', '2025-05-01 09:04:34'),
(43, 'images/Z0yWIIIixKmxRavCjLjTzg4cwHq7I3xOoXkemfy9.webp', 37, 0, '2025-05-01 09:07:09', '2025-05-01 09:07:09'),
(44, 'images/j1tBYUP2UZ3JTJyCtpqDUQHb37JVYWFLsGNWZze0.webp', 37, 0, '2025-05-01 09:07:09', '2025-05-01 09:07:09'),
(45, 'images/YIO4T1aM69cZ492YXpUACVasIqxP6Sp5rgqr5eKj.webp', 37, 0, '2025-05-01 09:07:09', '2025-05-01 09:07:09'),
(47, 'images/w6Erlpe8VGAKc7CUGfFShYAYMNPq2mb0E6UKqk6u.webp', 39, 0, '2025-05-01 09:17:59', '2025-05-01 09:17:59'),
(48, 'images/nsxqISJnW4usXaBwqDs44fDyTcnCcvsL6nvS00jj.webp', 39, 0, '2025-05-01 09:17:59', '2025-05-01 09:17:59'),
(49, 'images/h37ha7Pk2mw1q4TZABEABAzB9xidOTx7VRjFPaFI.webp', 40, 0, '2025-05-01 09:28:14', '2025-05-01 09:28:14'),
(50, 'images/j1tBYUP2UZ3JTJyCtpqDUQHb37JVYWFLsGNWZze0.webp', 40, 0, '2025-05-01 09:28:14', '2025-05-01 09:28:14'),
(51, 'images/Odp7Sc4DlkFrUOzebHEO5W4a1cjPuwEno1EzPvDi.webp', 41, 0, '2025-05-01 09:30:45', '2025-05-01 09:30:45'),
(52, 'images/Oj7jpFBIPiZJnaXxSnn1XU3CqMG8JgtrPRZ929rq.webp', 41, 0, '2025-05-01 09:30:45', '2025-05-01 09:30:45'),
(53, 'images/DrKu8gUSt0QkCVPO5qlWdiVbSDOmweZXea8uYRLg.webp', 42, 0, '2025-05-01 09:32:51', '2025-05-01 09:32:51'),
(54, 'images/DMIyegR0eW9LQkZ3vdkTxSMofUsYIUMHDGfpTNTG.webp', 42, 0, '2025-05-01 09:32:51', '2025-05-01 09:32:51'),
(55, 'images/vSaHiz92Hmj2a0gQ9igi6CCmNeZCFeRnO2ZpZFnv.webp', 42, 0, '2025-05-01 09:32:51', '2025-05-01 09:32:51'),
(56, 'images/vSaHiz92Hmj2a0gQ9igi6CCmNeZCFeRnO2ZpZFnv.webp', 43, 0, '2025-05-01 09:34:37', '2025-05-01 09:34:37'),
(57, 'images/CPrZUFKe9JeWR5rLZd0OvrWbyDAwZ8B9Hdb9HYaZ.webp', 43, 0, '2025-05-01 09:34:38', '2025-05-01 09:34:38'),
(58, 'images/mR0sMNJv1bU651wrJnFX89AIozi8qKAPsT071SuN.webp', 44, 0, '2025-05-01 09:39:05', '2025-05-01 09:39:05'),
(59, 'images/l3jSyO5QYxJo5VJCnULEKXP7GLlM16oIBMVecYJK.webp', 45, 0, '2025-05-01 09:41:11', '2025-05-01 09:41:11'),
(60, 'images/WgNdjGx0zq6HOhBvYJdRRlMgo3w5rafEob2IxLzQ.webp', 46, 0, '2025-05-01 09:42:30', '2025-05-01 09:42:30'),
(61, 'images/88SNuOILSOpIHFuXFP4nOlITpHeVhicubzf1o5RB.webp', 47, 0, '2025-05-01 09:53:18', '2025-05-01 09:53:18'),
(62, 'images/czfLctCppvomlaorgM6GCzipUrwCkFLrFUijhoVq.webp', 48, 0, '2025-05-01 09:53:18', '2025-05-01 09:53:18'),
(63, 'images/knmoiIZ293Cu8HloiXBTkRmtsa02zAagnGuQispq.webp', 49, 0, '2025-05-01 19:42:09', '2025-05-01 19:42:09'),
(64, 'images/leJ4sDxIzgVXosQb7WV83oMOJSoO9LQMXymq4COc.webp', 50, 0, '2025-05-01 19:42:09', '2025-05-01 19:42:09'),
(65, 'images/6IMJr1Lr2sYAYXCbrnZYs9dRzfSQ3ytslrbjzpWz.webp', 51, 0, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(66, 'images/5v5vU4JJFRpV22ngcwKz8qpUAVXX1DNXrqH5fGiF.webp', 52, 0, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(67, 'images/sLkX1M2YsajRZAHenTgWq8SFnSzRhIfvjitLEWcv.webp', 53, 0, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(68, 'images/5v5vU4JJFRpV22ngcwKz8qpUAVXX1DNXrqH5fGiF.webp', 54, 0, '2025-05-01 20:59:46', '2025-05-01 20:59:46'),
(69, 'images/phaoP81kGrFKItVkuGrraVlXnoFlbfTEdHZvlX17.webp', 55, 0, '2025-05-01 20:59:46', '2025-05-01 20:59:46'),
(70, 'images/CfiSFvEyWOQzqAoZuX9tLLI1IZqbWJXOUX9SLv09.webp', 56, 0, '2025-05-01 21:03:18', '2025-05-01 21:03:18'),
(71, 'images/kTqEg0XlBjdLshYPQ3Ui8oc42XL75nJgV9MMouPE.webp', 57, 0, '2025-05-01 21:03:18', '2025-05-01 21:03:18'),
(72, 'images/yURXISdIOeg08yJWJgqNLtMlRytGhiMDFZFRdsQH.webp', 58, 0, '2025-05-01 21:07:44', '2025-05-01 21:07:44'),
(73, 'images/mFMWgyg8Me07ueZHNNCdv9TikC9rTSsF68JTr1gG.webp', 59, 0, '2025-05-01 21:11:17', '2025-05-01 21:11:17'),
(74, 'images/JeadUewMgmh6qljGug82dYrJVmk3M6BrHFuk6aoE.webp', 60, 0, '2025-05-01 21:11:17', '2025-05-01 21:11:17'),
(75, 'images/rmAQODZLLo4ifk0dCYSPAKG9XZK7lFPKxaR38LQN.webp', 61, 0, '2025-05-01 21:15:24', '2025-05-01 21:15:24'),
(76, 'images/ghPKtJTvIx5Whh7YX97wR83d8UaiGYaKIwPcnDAf.webp', 62, 0, '2025-05-01 21:15:24', '2025-05-01 21:15:24'),
(77, 'images/BY5SVCXaiyWswpuNwJXciq2zOMkDDd9A9nYsFYAw.webp', 63, 0, '2025-05-02 01:32:45', '2025-05-02 01:32:45'),
(78, 'images/QBjPtZgEw7DhQjV2gjFFslRNK3C3M82I6YtXzAE9.webp', 64, 0, '2025-05-02 01:32:45', '2025-05-02 01:32:45'),
(79, 'images/JxOz5gVkBRsbmKxYsKdDOEnkwSJzIy9CNkZP3t3M.webp', 65, 0, '2025-05-02 01:39:40', '2025-05-02 01:39:40'),
(80, 'images/VWPY7U6jnydWtsGagzin6fn3Zx6TK34PmoJqewEF.webp', 66, 0, '2025-05-02 01:39:40', '2025-05-02 01:39:40'),
(81, 'images/GGZ0VFZcPTdToTIdA5qbeMHRmYFp3kNJHqTjTdC4.webp', 67, 0, '2025-05-02 01:45:16', '2025-05-02 01:45:16'),
(82, 'images/UXMrvyAdxWhiwUGF9G5yQXvIfraRC9CcrGExs7Hm.webp', 68, 0, '2025-05-02 01:45:17', '2025-05-02 01:45:17'),
(83, 'images/PMmwlLehcF2Eg8kaRnTTYa3Mjv87mJ6MTod5kIrx.webp', 69, 0, '2025-05-02 01:50:21', '2025-05-02 01:50:21'),
(84, 'images/nhJU6mCAuCvjKAZJG7xiPFtoUZL9IrzU0u2Kfn10.webp', 69, 0, '2025-05-02 01:50:21', '2025-05-02 01:50:21'),
(85, 'images/HFiIooOmxtYcamyv0oDl6dCLRRpZr3TpC8Hdu7jw.webp', 69, 0, '2025-05-02 01:50:21', '2025-05-02 01:50:21'),
(86, 'images/QKTmmRKhbbvy2DL2CyIB0Pe8ZHwaGCg0ZmS5qTAY.webp', 70, 0, '2025-05-02 01:54:19', '2025-05-02 01:54:19'),
(87, 'images/MxzKYhzAfoPUAhLM2AVxdWlFas29WErQi4ZUwXMI.webp', 70, 0, '2025-05-02 01:54:19', '2025-05-02 01:54:19'),
(88, 'images/jFxwaMtt8rP01JTu4kocbpJu6FYe2bGrsEoN4O2H.webp', 70, 0, '2025-05-02 01:54:19', '2025-05-02 01:54:19'),
(89, 'images/BusICJvW25Pes9pbjY0TabXHZ8t6s0io0yVHFlo9.webp', 71, 0, '2025-05-02 01:57:27', '2025-05-02 01:57:27'),
(90, 'images/XDjyKtrlUTqOsSG3HIySWxUSn9ufvJVOf58V9g9W.webp', 71, 0, '2025-05-02 01:57:28', '2025-05-02 01:57:28'),
(91, 'images/qRIZNrXTRmRVQCbQaMNyKBhBUwkFWGCTIgmdIdml.webp', 71, 0, '2025-05-02 01:57:28', '2025-05-02 01:57:28'),
(92, 'images/V9ADIbM6PqoMhseJP0rwywBdVODWhK7Xecc0P0gG.webp', 72, 0, '2025-05-02 02:05:45', '2025-05-02 02:05:45'),
(93, 'images/I9vhWPb7bC0MfXxwPyI0iKBtXEmEz52tud0CQ1Sf.webp', 72, 0, '2025-05-02 02:05:45', '2025-05-02 02:05:45'),
(94, 'images/LdfHSWuyelPmIpaSVQlrTDXvbEF7AnLMkaDSl2nO.webp', 73, 0, '2025-05-02 02:20:42', '2025-05-02 02:20:42'),
(95, 'images/6G4GFLyxoH6ILejt4yRAi6eOvonbO9bo0jtpSNvw.webp', 73, 0, '2025-05-02 02:20:42', '2025-05-02 02:20:42'),
(96, 'images/4yorCctpQTkVq6Oitx70znwnwWIvFq18fHM6UkSb.webp', 73, 0, '2025-05-02 02:20:42', '2025-05-02 02:20:42'),
(97, 'images/euC9aqHe1spSESoGStZUT0Dxyyb3exZICveRfMP4.webp', 74, 0, '2025-05-02 02:24:11', '2025-05-02 02:24:11'),
(98, 'images/TlPAjzT66k2PHxk4YaYSGf35WbO9HuNqZ0B5a5VJ.webp', 74, 0, '2025-05-02 02:24:11', '2025-05-02 02:24:11'),
(99, 'images/3IXz4qplEY43ePBzF9W6ICSkvBcX4SWg3mJvZQk3.webp', 75, 0, '2025-05-02 02:29:57', '2025-05-02 02:29:57'),
(100, 'images/QjQnZb2Y9ngYF6i1jF9koCcC98ccr3PEGDr6RIsv.webp', 75, 0, '2025-05-02 02:29:57', '2025-05-02 02:29:57'),
(101, 'images/RUDZWmPCOb7uj1Lb0OAgMXcEt2mxmv5tmX0ZX52p.webp', 75, 0, '2025-05-02 02:29:57', '2025-05-02 02:29:57'),
(102, 'images/1VAOckkUCnTS9S6NBv30iDrke8fh0oq6QJndJVnm.webp', 76, 0, '2025-05-02 02:32:15', '2025-05-02 02:32:15'),
(103, 'images/Mb2vNcpZGF4Ve5Mok8QCyL5OUt5eMSBRYSzxcLbY.webp', 77, 0, '2025-05-02 02:34:34', '2025-05-02 02:34:34'),
(104, 'images/0EdXr5wDv1N10DiOhOBhbpAT8AjjNpGdHDU025e4.webp', 78, 0, '2025-05-02 02:37:03', '2025-05-02 02:37:03'),
(105, 'images/M5rtdLml5SBeOBAfxqsTtmFfT5y53M7yVELMQ4Bb.webp', 79, 0, '2025-05-02 03:19:34', '2025-05-02 03:19:34'),
(106, 'images/B8NYU5WzYhwIPDCbiYDfJxTBV5R5tifxTZHv6kUg.webp', 80, 0, '2025-05-02 03:19:34', '2025-05-02 03:19:34'),
(107, 'images/Hvtp15i0wZAdv8hDAwVKsfXUjtFYIlwwnlGuoZoU.webp', 81, 0, '2025-05-02 03:26:05', '2025-05-02 03:26:05'),
(108, 'images/ffSF14eQjEgN14yD1xx7uZjLRqfZcZ929gTuf4nx.webp', 82, 0, '2025-05-02 03:29:56', '2025-05-02 03:29:56'),
(109, 'images/YcWVuOaVXVKOlBJsqQGI8C3DS0KlMQCxVH8TNRFs.webp', 83, 0, '2025-05-02 03:29:56', '2025-05-02 03:29:56'),
(110, 'images/8mOeQSCWitTVNVBkQcJlS2Lt5pUoBbcUKX4wF4z2.webp', 84, 0, '2025-05-02 03:32:13', '2025-05-02 03:32:13'),
(111, 'images/1SpmmtKG718cGxk0tw7WKUwpBw3N56qBexKK8AUd.webp', 84, 0, '2025-05-02 03:32:13', '2025-05-02 03:32:13'),
(112, 'images/K3ZmTbT4cOfptNDZxSJRnTb35wbpUe4TpbXMTaNY.webp', 84, 0, '2025-05-02 03:32:13', '2025-05-02 03:32:13'),
(113, 'images/0XFQdJwwm0GsFncahgKbMeUCgBd2nkOuJYL2620j.webp', 85, 0, '2025-05-02 03:39:17', '2025-05-02 03:39:17'),
(114, 'images/C6cLcYrTOW0GrNrRlnsYetOzwe95zJz5Yfo4SMkb.webp', 86, 0, '2025-05-02 03:41:26', '2025-05-02 03:41:26'),
(115, 'images/iFLY6bnrHVwwaWJppCkX8YvrlS48lz92pXqhEvUE.webp', 87, 0, '2025-05-02 03:45:00', '2025-05-02 03:45:00'),
(116, 'images/cLjHmaHYifOlm6o3jGPDshAwIQuv3w1TeOsaCBuN.webp', 87, 0, '2025-05-02 03:45:00', '2025-05-02 03:45:00'),
(117, 'images/uMYw6lKAWiojA8nUH63VMPzjx4AMxr3O5qGNlPis.webp', 88, 0, '2025-05-02 03:48:09', '2025-05-02 03:48:09'),
(118, 'images/hQl2vhP8DhDzfpSv6Bh52fhGQJotMbb0aHjAMIFk.webp', 88, 0, '2025-05-02 03:48:09', '2025-05-02 03:48:09'),
(119, 'images/tbFbTd92mnicgQdy7XpV1NhQkcJ4YqcW6N9d0m6t.webp', 88, 0, '2025-05-02 03:48:09', '2025-05-02 03:48:09'),
(120, 'images/UIcw3yJ7xIuP802X9HNJYVHXeLWGCqo1taz5rXRs.webp', 89, 0, '2025-05-02 03:51:25', '2025-05-02 03:51:25'),
(121, 'images/d07q1uUK1ROc6nTdqBA52fnAtfIWOQm0abnhR6nf.webp', 90, 0, '2025-05-02 03:53:38', '2025-05-02 03:53:38'),
(122, 'images/rbioJdDYcS0T5TcT54LTbEtu8hFop7m9VxpAeM41.webp', 90, 0, '2025-05-02 03:53:38', '2025-05-02 03:53:38'),
(123, 'images/thiS2i1lffrlhPQGKtMsGuSF55EnJj5dWXwVpCIB.webp', 91, 0, '2025-05-02 03:57:40', '2025-05-02 03:57:40'),
(124, 'images/KXwyK6gjnw4PZIbzpwD8wCDi6xYdy5II62YTLsQ0.webp', 91, 0, '2025-05-02 03:57:40', '2025-05-02 03:57:40'),
(125, 'images/MWw9F1atAlQyCzFLyCPS9H6ZeWZXsRymZ9EjiolH.webp', 92, 0, '2025-05-02 08:28:17', '2025-05-02 08:28:17'),
(126, 'images/EX0QgF3hDJXazoAmb7101qNjJXjNaqnAPiZv3XeK.webp', 92, 0, '2025-05-02 08:28:17', '2025-05-02 08:28:17'),
(127, 'images/ehsRmIudVDO9QMIWyGHAmrr4NF9c3Zu4VgAyokcY.webp', 93, 0, '2025-05-02 08:31:50', '2025-05-02 08:31:50'),
(128, 'images/xeDvEQ6Fib5lYyOGOiKj9M1o32vQzuGaqUI4kypr.webp', 94, 0, '2025-05-02 08:35:11', '2025-05-02 08:35:11'),
(129, 'images/g76Az9oVxaBNrD2eSc3Lm1oqRLlbNdAFaiKSJ0T8.webp', 95, 0, '2025-05-02 08:43:03', '2025-05-02 08:43:03'),
(130, 'images/EqO3en8udjmdU8xeKV6ZaySE3DBKc2TFUDbFKmWy.webp', 96, 0, '2025-05-02 19:39:46', '2025-05-02 19:39:46'),
(131, 'images/31iafbtN8VJtsnOpMmXbTA6dsfBMlUngQSNZ51J7.webp', 96, 0, '2025-05-02 19:39:46', '2025-05-02 19:39:46'),
(132, 'images/d5i0f26janhYm47ppFPraUwsLuA9MiGzboh0HwUO.webp', 97, 0, '2025-05-02 19:43:24', '2025-05-02 19:43:24'),
(133, 'images/ljM9BHG9mOtZcS6fSyW0C5yWau8lUEkPbLQlYh8R.webp', 97, 0, '2025-05-02 19:43:24', '2025-05-02 19:43:24'),
(134, 'images/d8PsqIClZTsrB4rwQWTQCJBia2DFtU6a1KFmqUkH.webp', 98, 0, '2025-05-02 19:45:59', '2025-05-02 19:45:59'),
(135, 'images/2gmVltyKZNm9HR7on8UlFAYNNJnDDedAeFrQfV8n.webp', 98, 0, '2025-05-02 19:45:59', '2025-05-02 19:45:59'),
(136, 'images/ithB93RQsy4GYk8WKt4msssbOJZpxBuFzd9Z9Ymz.webp', 99, 0, '2025-05-02 19:54:18', '2025-05-02 19:54:18'),
(137, 'images/B6EeU3z3wckExBwAkzY18IskUvhSfr9lanGRCtXE.webp', 99, 0, '2025-05-02 19:54:18', '2025-05-02 19:54:18'),
(138, 'images/LoRJKund9USvmhErMlok3pyK8JO1TW43v9geo6vW.webp', 99, 0, '2025-05-02 19:54:18', '2025-05-02 19:54:18'),
(139, 'images/wkMNS4VgI4EaU4vzxmOmC7FWZ4eXCZy3HEZ0a90j.webp', 100, 0, '2025-05-02 19:57:48', '2025-05-02 19:57:48'),
(140, 'images/cUjTcBh0EUUzlhfzKcj2wg0A0dBFa3z8O5kJWEZo.webp', 100, 0, '2025-05-02 19:57:48', '2025-05-02 19:57:48'),
(141, 'images/1LK86rtFLQxKIly3GtIf3xJ1ouaxOI4bcnP9EMRL.webp', 100, 0, '2025-05-02 19:57:48', '2025-05-02 19:57:48'),
(142, 'images/SEaKRgrVs5hnH4p6uumzAqDIm1OhCUljzoaE2VqL.webp', 101, 0, '2025-05-02 20:01:45', '2025-05-02 20:01:45'),
(143, 'images/u13L5cF9ySAZjoiAJHKo57Gv8KlGyZOWXVELQ4Kh.webp', 101, 0, '2025-05-02 20:01:45', '2025-05-02 20:01:45'),
(144, 'images/Wm9sSmzq61g5BtV6QmWjaxXlan97WIcPiZsv6RIW.webp', 102, 0, '2025-05-02 20:03:51', '2025-05-02 20:03:51'),
(145, 'images/07isvLYAw3yh3KKy6kx4GGrYDrq3ZHdpFt067oZI.webp', 103, 0, '2025-05-02 20:10:31', '2025-05-02 20:10:31'),
(146, 'images/VnhtJf0zC9oXQUm4Mg9QscilaUohqk5TmIX5wD3a.jpg', 103, 0, '2025-05-02 20:10:31', '2025-05-02 20:10:31'),
(147, 'images/B1t6STRHJeH6eXUY9fverMayiFB0ZevyUpjPy5lp.webp', 104, 0, '2025-05-02 20:12:47', '2025-05-02 20:12:47'),
(148, 'images/yGYkmBoxMT9yk2cuRvg0jPQ6u7TzMUBTZ8jneLGc.webp', 104, 0, '2025-05-02 20:12:47', '2025-05-02 20:12:47'),
(149, 'images/FglLVvI5taQ24T2nQQAFBmtA2rIt1tB7dnDKkKEp.png', 105, 0, '2025-05-02 22:40:11', '2025-05-02 22:40:11'),
(150, 'images/3JsLQC7dTusuGf9NWLQ5eLrg1QHWuHHbUGM41C1l.webp', 106, 0, '2025-05-02 22:40:11', '2025-05-02 22:40:11'),
(151, 'images/zsEfxjcVJecv83FGlOFP2NZQ1PpZtKaGLre0w0vK.png', 107, 0, '2025-05-02 22:40:11', '2025-05-02 22:40:11'),
(152, 'images/PgWBmoBn0VSulZ3OWJO7N2pg8gUaB9OjUAEsPlVM.webp', 108, 0, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(153, 'images/r6oFLQZF5smfLxJAukdsgsvB2desQ9U752jfrYDd.webp', 109, 0, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(154, 'images/N4mE172bAJM6PSCzvDV9XSaMEr3q6NCvnATqvGYh.webp', 110, 0, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(155, 'images/MpOKJe1Otl1X4uEzY7H2PGQG380wsuGeLUUv1RaD.webp', 111, 0, '2025-05-02 22:54:47', '2025-05-02 22:54:47'),
(156, 'images/gXuxKqLInkTMAP0DMgnLugAPmhyWhokYTBKO1rbL.webp', 112, 0, '2025-05-02 22:54:47', '2025-05-02 22:54:47'),
(157, 'images/i2b3e3TTQs9UoBR6QFQuRSinumo0BdAz9b89SsFQ.webp', 113, 0, '2025-05-02 22:59:42', '2025-05-02 22:59:42'),
(158, 'images/fqQGMIXjnKqa9mOio3guEVGzx7t9UITE1Jfw3ZTo.webp', 114, 0, '2025-05-02 22:59:42', '2025-05-02 22:59:42'),
(159, 'images/pRe5QUledc2o7QNxApwIwyjlgrKdYrdP8uiOWl9J.webp', 115, 0, '2025-05-02 23:03:55', '2025-05-02 23:03:55'),
(160, 'images/MRUwbQSFAPHIEeB9HXieeYa513YRj9eXb2WOSqeP.jpg', 115, 0, '2025-05-02 23:03:55', '2025-05-02 23:03:55'),
(161, 'images/UR6Oq9pAoRwrcP6LRtHgHO6SkHJO9De0vaM1CZhX.webp', 115, 0, '2025-05-02 23:03:55', '2025-05-02 23:03:55'),
(162, 'images/yn16a1hJIoUTe9XZiG4v6nPAUCHzXRjh3iryqp6F.webp', 116, 0, '2025-05-02 23:07:18', '2025-05-02 23:07:18'),
(163, 'images/vPgadO6UQYLn7X5NYfetMdVSVsAKv0x4InxYhN2O.webp', 117, 0, '2025-05-02 23:07:18', '2025-05-02 23:07:18'),
(164, 'images/Du2YRC0Vd5Ijqfk9hvQNgiRvtYjS1oA0KoZFmfo0.webp', 118, 0, '2025-05-02 23:10:55', '2025-05-02 23:10:55'),
(165, 'images/SXbGbEtfWC36UzASNrW4ADL53oK8kvJB0nsTdKOX.webp', 119, 0, '2025-05-02 23:13:34', '2025-05-02 23:13:34'),
(166, 'images/jjHuH1FJji08WyKXpibP8t8AKTchZrYZyTCrLkfk.webp', 120, 0, '2025-05-02 23:13:34', '2025-05-02 23:13:34'),
(167, 'images/RruKi65w80CfbaRSekXZ5xThr9e3lQjYoUflOjFr.webp', 121, 0, '2025-05-03 08:37:35', '2025-05-03 08:37:35'),
(168, 'images/X2lgBZqGFESN03h8rIuwk6CbFdcNfqXVxQpfmzdV.webp', 122, 0, '2025-05-03 08:39:46', '2025-05-03 08:39:46'),
(169, 'images/L4YL73EM4vacyYgHkE4JLQjxbkwBQg6BidwsGEEw.webp', 123, 0, '2025-05-03 08:41:49', '2025-05-03 08:41:49'),
(170, 'images/UuPdaPGcX8bHcLrseQDApY5Ln8BPSxzhrVpo6HEz.webp', 124, 0, '2025-05-03 08:44:47', '2025-05-03 08:44:47'),
(171, 'images/I9nXL54kxYymo2aA4FR22aJbO2TcycuhxgrtIs9F.webp', 124, 0, '2025-05-03 08:44:47', '2025-05-03 08:44:47'),
(172, 'images/qevQLk4QWQQSLy9Ze56BTzsqfqfSBJ3vO079UWpy.webp', 125, 0, '2025-05-03 08:47:28', '2025-05-03 08:47:28'),
(173, 'images/A4xhXgmUqrOD0jEMByKix7zBjuMkOUBPbgMzKEFv.webp', 125, 0, '2025-05-03 08:47:28', '2025-05-03 08:47:28'),
(174, 'images/S61ZMLmyCtX2dcNdViTvC2t51QepZoOKUDfshp2N.webp', 126, 0, '2025-05-03 08:50:06', '2025-05-03 08:50:06'),
(175, 'images/4tL7Ioohqh9TkuKjbYtGBiw4xs2MQuopTyhUSLUM.webp', 126, 0, '2025-05-03 08:50:06', '2025-05-03 08:50:06'),
(176, 'images/4ftUKHfuz7JwCttdfcClTdWqMSyq6cgHlATh3oAq.webp', 126, 0, '2025-05-03 08:50:06', '2025-05-03 08:50:06'),
(177, 'images/ODfjij5Ic5K2FmY88oQ37v4fhfa0DuntBuxFy56e.webp', 127, 0, '2025-05-03 08:52:29', '2025-05-03 08:52:29'),
(178, 'images/wCV2LUVKIrcdGH58qdqAdAbA6hO8UMECYjDh4Rbe.webp', 128, 0, '2025-05-03 08:54:52', '2025-05-03 08:54:52'),
(179, 'images/8zFaGv3Kmvs98TNOnAsBCE02Cuaknw8xIeZbEzhb.webp', 128, 0, '2025-05-03 08:54:52', '2025-05-03 08:54:52'),
(180, 'images/Icf4UCED1Wsj0uzRK8QGORlIAx23ovprQxO6XAqv.webp', 129, 0, '2025-05-03 08:57:34', '2025-05-03 08:57:34'),
(181, 'images/DfXIKhXqbmkYY4qxiUBpMD1iKSuuNVZN8KFYOwTy.webp', 130, 0, '2025-05-03 08:59:39', '2025-05-03 08:59:39'),
(182, 'images/SLN67hjixp6YaKtuwFDoGZZFewG22eQmBmduTOe3.webp', 131, 0, '2025-05-03 09:01:21', '2025-05-03 09:01:21'),
(183, 'images/RxWP4cXvjFNpEOUkvSZaASMTWmcX8K9fKXYMDCsy.webp', 132, 0, '2025-05-19 04:42:14', '2025-05-19 04:42:14'),
(184, 'images/0t89Y6YKx6LFAqQka2pU02zItcGI6EP4maRR4HhR.webp', 133, 0, '2025-05-19 04:53:55', '2025-05-19 04:53:55'),
(185, 'images/oafytAZ6minLvDZwjTv14zSw0v35KQYz3TPXVqxg.webp', 134, 0, '2025-05-19 04:56:34', '2025-05-19 04:56:34'),
(186, 'images/RxWP4cXvjFNpEOUkvSZaASMTWmcX8K9fKXYMDCsy.webp', 135, 0, '2025-05-19 05:06:22', '2025-05-19 05:06:22'),
(187, 'images/2tAIoeBN3BOfm9bbml0I8mKJuFRczQcUFia1AlWW.webp', 136, 0, '2025-05-19 05:17:09', '2025-05-19 05:17:09'),
(188, 'images/jtX0uCL1lgF5XKzjMLmsqsGo4POxkkEEJ2BLSP8p.webp', 137, 0, '2025-05-19 05:19:10', '2025-05-19 05:19:10'),
(189, 'images/AxC6qudxgcjT43FU7VGNNSY5kb4MEK2Vw0hemMff.webp', 138, 0, '2025-05-19 05:29:27', '2025-05-19 05:29:27'),
(190, 'images/AksdIty6cpdldeZXh9sjxlfFfXFhn5qc8xGqPCzY.webp', 139, 0, '2025-05-19 05:33:15', '2025-05-19 05:33:15'),
(191, 'images/fQSKl3beFkKrVaHplH1ZHZDWhUtGHgXbeOx0Fsmg.webp', 140, 0, '2025-05-19 05:55:19', '2025-05-19 05:55:19'),
(192, 'images/4PI35MbRgkJ7NB8WCuzi5yarYETcVWeDU2fRLwUY.webp', 141, 0, '2025-05-19 06:08:29', '2025-05-19 06:08:29'),
(193, 'images/PpjBGgMNlpR2gXw70nJuWv0gloguzs7PIwavt3Ye.webp', 142, 0, '2025-05-19 06:13:45', '2025-05-19 06:13:45'),
(194, 'images/u0iLXT9dfrB1niYMwgf5vuVMDnUpbUvK8yM6CcNs.webp', 143, 0, '2025-05-19 06:13:45', '2025-05-19 06:13:45'),
(195, 'images/O55NienMgKb43f1lhOIY20b82jkblT5qJkWY1vNv.webp', 144, 0, '2025-05-19 06:13:45', '2025-05-19 06:13:45'),
(196, 'images/tt7LyS0szhysi04bAPG1dJsssk2RWYEyiVrLp6wm.webp', 145, 0, '2025-05-19 06:16:36', '2025-05-19 06:16:36'),
(197, 'images/QnnTT7EYXHrradi28b9uxbT7XeMRDu33hJpL7e7z.webp', 146, 0, '2025-05-19 06:34:05', '2025-05-19 06:34:05'),
(198, 'images/xthIBtmOBCMOjAfwW6wEY6Y1D9wj4ufUBvlMnxZr.webp', 147, 0, '2025-05-19 06:36:35', '2025-05-19 06:36:35'),
(199, 'images/xo7yyLQ9bblU2rLElYqksoUSV6XSLmeGeNbXbV33.webp', 148, 0, '2025-05-19 06:40:31', '2025-05-19 06:40:31'),
(200, 'images/l7koeiIhROpcjvw21b96HNmRQMdTiaPeJEQyic6g.webp', 149, 0, '2025-05-19 06:52:43', '2025-05-19 06:52:43'),
(201, 'images/uHCLslEUKwEWHNYtGp1l4BvTjtw4FXpAq9MBFOU4.webp', 150, 0, '2025-05-19 06:54:36', '2025-05-19 06:54:36'),
(202, 'images/wNl4a4Ngm2vyddg9cFGYjyjcHU4GPB96hCRiWU9k.webp', 151, 0, '2025-05-19 06:57:03', '2025-05-19 06:57:03'),
(203, 'images/BrQtA5VbKdnl4Z0rpSYeA9eGRfLJGUcbVfzLw03O.webp', 152, 0, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(204, 'images/CxqJS2L3xHmEnpdkUGclS9CAbCnO7sHMeVP868pb.webp', 153, 0, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(205, 'images/BrQtA5VbKdnl4Z0rpSYeA9eGRfLJGUcbVfzLw03O.webp', 154, 0, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(206, 'images/ya1uHFfo4kR66Dggev7M8MHHFeMhnZIxX58ugby3.webp', 155, 0, '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(207, 'images/6BZUuTV1G46l9T64QFoH5lOSn3jxPE1rdby1LC8s.webp', 156, 0, '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(208, 'images/TpUDLIMhfXD00bdA7PTr7qFiYlfXQMpFS3wMR7hZ.webp', 157, 0, '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(209, 'images/5WjaVkXtXPLXSbvuPBVxv6xWwsgwK9aB9GgHBc9S.webp', 158, 0, '2025-05-19 18:24:54', '2025-05-19 18:24:54'),
(210, 'images/SsUIQ7ydJfxSOepgynkJGgAY3LETIS5F1mQub7Ub.webp', 159, 0, '2025-05-19 18:24:54', '2025-05-19 18:24:54'),
(211, 'images/5WjaVkXtXPLXSbvuPBVxv6xWwsgwK9aB9GgHBc9S.webp', 160, 0, '2025-05-19 18:24:55', '2025-05-19 18:24:55'),
(212, 'images/YvkdfK7NEbVE4YGDkCKwHIkrkfjNXyLfjBGmHs6U.webp', 161, 0, '2025-05-19 18:41:03', '2025-05-19 18:41:03'),
(213, 'images/UqZpJ9R1brtzCEtntksEUpYUUK8eG69c026f9YYt.webp', 162, 0, '2025-05-19 18:41:04', '2025-05-19 18:41:04'),
(214, 'images/kfiB1jF24oB4Rbg1MRx8lzKjzG2W75lBfQKy4mNd.webp', 163, 0, '2025-05-19 18:41:04', '2025-05-19 18:41:04'),
(215, 'images/45byXeFOymA3YqHPXZr852Alwi21olXYiskUkqs1.webp', 164, 0, '2025-05-19 19:01:29', '2025-05-19 19:01:29'),
(216, 'images/D7sIqZXN8wbGBT4GAUWnhEY20STCv4ceeQfvPAyC.webp', 165, 0, '2025-05-19 19:04:25', '2025-05-19 19:04:25'),
(217, 'images/6NJvSsuD2xKjRi8jVa10xGNQdh9ox4zkKotYggSj.webp', 166, 0, '2025-05-19 19:04:26', '2025-05-19 19:04:26'),
(218, 'images/3ycf0ESSn0uF3kjMUTkGOsigH7iKXSkjcyJmywL0.webp', 167, 0, '2025-05-19 19:06:12', '2025-05-19 19:06:12'),
(219, 'images/arWxpB2uxwRavjf4orOFX9M9RWPLzXvSw1bGdJaF.webp', 168, 0, '2025-05-19 19:08:24', '2025-05-19 19:08:24'),
(220, 'images/XeVJozsd0oWL9nv1kXWphL0ywUdC69Sfo6DYlen4.webp', 169, 0, '2025-05-19 19:12:49', '2025-05-19 19:12:49'),
(221, 'images/c7x8xG5pFkOnFp95UFygqafbMFJONzjK53ojcQuJ.webp', 170, 0, '2025-05-19 19:14:32', '2025-05-19 19:14:32'),
(222, 'images/k83XZAo6GkJuSnCPP2Il9pi91TrtX2KMzIw8kPiD.webp', 171, 0, '2025-05-19 19:16:28', '2025-05-19 19:16:28'),
(223, 'images/BaqFhsvXt8dD94iTjbtQN0FmHN6phtusboJaFn2u.webp', 172, 0, '2025-05-19 19:18:41', '2025-05-19 19:18:41'),
(224, 'images/PSvOwEIRjzRuoSJil6OLBEy0cN42vklVcimjDcyW.webp', 173, 0, '2025-05-19 19:22:39', '2025-05-19 19:22:39'),
(225, 'images/FjCpk9kL2F9WFvZer8ChvwwfZ5PBI1l4OFxqSYWq.webp', 174, 0, '2025-05-19 19:25:11', '2025-05-19 19:25:11'),
(226, 'images/ZNh80A5tBuNUIgvrg4Qc8gI99pOZB5lPoluFmdBM.webp', 175, 0, '2025-05-20 01:25:39', '2025-05-20 01:25:39'),
(227, 'images/jXyuGEdUYMnMV2CsvWO5QF8aCG8hkXewpcNLy1lt.webp', 176, 0, '2025-05-20 01:48:31', '2025-05-20 01:48:31'),
(228, 'images/f5L7Ye1SoXgvuxjg9urDDmRzsa0iChx9ntNLVhbl.webp', 29, 0, '2025-05-25 21:50:14', '2025-05-25 21:50:14'),
(229, 'images/wrrXrQK2uZKQ1QgsCJgnjMIYuPILhJegUB8JyxfL.webp', 29, 0, '2025-05-25 21:50:15', '2025-05-25 21:50:15'),
(230, 'images/mR0sMNJv1bU651wrJnFX89AIozi8qKAPsT071SuN.webp', 44, 0, '2025-05-26 23:27:51', '2025-05-26 23:27:51'),
(231, 'images/xo7yyLQ9bblU2rLElYqksoUSV6XSLmeGeNbXbV33.webp', 146, 0, '2025-05-28 03:55:45', '2025-05-28 03:55:45'),
(235, 'images/HffVv03qt0R87ffSmQl5K99gr2ky55Of5Ida5ahj.webp', 146, 0, '2025-05-28 04:59:30', '2025-05-28 04:59:30'),
(236, 'images/uWYNf7n5lgPAF5BUSsSthQl0UUdNSNDlodC7jTwq.webp', 147, 0, '2025-05-28 05:11:48', '2025-05-28 05:11:48'),
(237, 'images/O5EfgjKGAnrCp8vs5fyCUGDCpPpDRD4rTKiohPNA.webp', 147, 0, '2025-05-28 05:11:48', '2025-05-28 05:11:48'),
(238, 'images/3fx16CjV1BDMgig6VlPrffsrvqebuuqCkrxjHs4x.webp', 148, 0, '2025-05-28 05:21:24', '2025-05-28 05:21:24'),
(239, 'images/uWYNf7n5lgPAF5BUSsSthQl0UUdNSNDlodC7jTwq.webp', 148, 0, '2025-05-28 05:21:24', '2025-05-28 05:21:24'),
(240, 'images/JfC4SEOA5qV3Vq44wTZ4t9H6OzowvaPrpqmvND1O.webp', 58, 0, '2025-05-28 05:44:29', '2025-05-28 05:44:29'),
(241, 'images/RbFH1kv27M1W6PPT5wwTJbuLQ09rI0762lrwl7iI.webp', 58, 0, '2025-05-28 05:44:29', '2025-05-28 05:44:29'),
(242, 'images/TJLIjhIJrdekyPrEeZTzU3kWUnJweumvAXtVWeoO.webp', 74, 0, '2025-05-28 05:47:40', '2025-05-28 05:47:40'),
(243, 'images/Bt83CfUwOFNmFKCj4ePFxWW1x7oaHnXJvuGc1iAa.webp', 175, 0, '2025-05-28 05:49:31', '2025-05-28 05:49:31'),
(244, 'images/JLySrNTEQXISwYh77EmYursoh7cwJT2dIuaIFO65.webp', 175, 0, '2025-05-28 05:49:32', '2025-05-28 05:49:32'),
(245, 'images/TUlgsdioLq3zmsyuAxep9ieWUoq5B9qMt7BJTgZL.webp', 176, 0, '2025-05-28 05:52:04', '2025-05-28 05:52:04'),
(246, 'images/CvH9l8rpB5I2wwwrTtkrgCfhxIeIbk89s9X6wYVx.webp', 76, 0, '2025-05-28 05:54:11', '2025-05-28 05:54:11'),
(247, 'images/DiCm9nag4v02V4vN7xQKt8zY7GFTlGRB2Vf2Enn8.webp', 76, 0, '2025-05-28 05:54:11', '2025-05-28 05:54:11'),
(248, 'images/3CpcA0juFuIY9YQfOUOXXpCN07ZpXY8AA9U8TutQ.webp', 76, 0, '2025-05-28 05:54:52', '2025-05-28 05:54:52'),
(249, 'images/d2wXUQ3yb9kiElPjyVelb8sO6O4EzYB29rJx9qaG.webp', 77, 0, '2025-05-28 05:56:20', '2025-05-28 05:56:20'),
(250, 'images/r5gbU8eMOTlJAKhTy2eozb3sMlLUffr4N61teFi5.webp', 77, 0, '2025-05-28 05:56:20', '2025-05-28 05:56:20'),
(251, 'images/B4Sl9a4guawcuyMuU3uzod5ViYFnnDbrEIcPnWb6.webp', 78, 0, '2025-05-28 05:57:51', '2025-05-28 05:57:51'),
(252, 'images/Z8NWVfOOCOetM6IOsqfevydwG2H8kKIJ5T6c5z9w.webp', 81, 0, '2025-05-28 06:00:04', '2025-05-28 06:00:04'),
(253, 'images/s6PZCPvuPHGV8nGg7CMcufNcNj9awnotNVKLmEDR.webp', 81, 0, '2025-05-28 06:00:05', '2025-05-28 06:00:05'),
(254, 'images/xAnXUxcMsNVVdBzqIKt1glX8V7YM9TBip40aFvwJ.webp', 121, 0, '2025-05-28 06:03:27', '2025-05-28 06:03:27'),
(255, 'images/66LqKOmQGh6IYCcWCL222rzIFyEtUCPWA8zoTQio.webp', 122, 0, '2025-05-28 06:04:16', '2025-05-28 06:04:16'),
(256, 'images/E683cXoBgpCZSLZEVtcAPTHyoU8qFfF6tRCTCJ31.webp', 123, 0, '2025-05-28 06:07:18', '2025-05-28 06:07:18'),
(257, 'images/8DtbQivNv5U30AjHMoDokAIcPoD7fqO21JIMp4Zp.webp', 123, 0, '2025-05-28 06:07:18', '2025-05-28 06:07:18'),
(258, 'images/Vol2P18YQXJnTyNzXMKGg8W3wCeWk6E6R53JWVYz.webp', 123, 0, '2025-05-28 06:07:18', '2025-05-28 06:07:18'),
(259, 'images/5krIAo1DQdr8hSsRawskTxdfxbmF1uZeP7slZLVq.webp', 124, 0, '2025-05-28 06:11:38', '2025-05-28 06:11:38'),
(260, 'images/HnZ4OxbPdklQax0Bipqx6aZBdTyo7kSrDZinRSqQ.webp', 125, 0, '2025-05-28 06:13:28', '2025-05-28 06:13:28'),
(261, 'images/Li4AbcraTlZi0S1UISxwaUrt4YVtVeKgn3L4lmAn.webp', 125, 0, '2025-05-28 06:13:28', '2025-05-28 06:13:28'),
(262, 'images/ntGqsr25Ju6VfjyErcjote1JA9p64SJU2AKu3dc1.webp', 127, 0, '2025-05-28 06:15:07', '2025-05-28 06:15:07'),
(263, 'images/XFNpfRHHyjpn57bwmaoCZFUrc7JLuIwuNNXuXor4.webp', 129, 0, '2025-05-28 06:16:22', '2025-05-28 06:16:22'),
(264, 'images/BA4FJMGP09VXBktCRYi5NOmInMNtunQlUhF7hW29.webp', 130, 0, '2025-05-28 06:18:15', '2025-05-28 06:18:15'),
(265, 'images/GzYYe3kAPG8D6gxjzc1vAnmnFdV4sW9Tf0RStkiL.webp', 131, 0, '2025-05-28 06:19:11', '2025-05-28 06:19:11'),
(266, 'images/QE0k5hHSV1qgkar8zE6zfwux0HRdXp9KGZLPMZuA.webp', 118, 0, '2025-05-28 06:20:42', '2025-05-28 06:20:42'),
(267, 'images/yOQJTIsA51G7MLdbJu3jg27qKSvg1gQLVG77NpE7.webp', 118, 0, '2025-05-28 06:20:42', '2025-05-28 06:20:42'),
(268, 'images/LzefY8zBVwJS7mpUKOSdIw9G4mvxHwl0WR7Dvqlu.webp', 118, 0, '2025-05-28 06:20:42', '2025-05-28 06:20:42'),
(269, 'images/l7koeiIhROpcjvw21b96HNmRQMdTiaPeJEQyic6g.webp', 149, 0, '2025-05-28 06:23:18', '2025-05-28 06:23:18'),
(270, 'images/VsodVdSdmLFMbluOUuCTMiNIGc5kWQlbwFoGPNHC.webp', 149, 0, '2025-05-28 06:23:18', '2025-05-28 06:23:18'),
(271, 'images/Bk9HMxV7O4LgTO7qOfypz6PzWXY4HZVOz782WcjY.webp', 149, 0, '2025-05-28 06:23:18', '2025-05-28 06:23:18'),
(272, 'images/orJ5kYMWyDUth6oAfKKP2ajsUy24W77iWBx8m8wW.webp', 150, 0, '2025-05-28 06:25:51', '2025-05-28 06:25:51'),
(273, 'images/3MDQC4udOysjwg5jqgQs48fK3eph7TFxuLC0d8uT.webp', 150, 0, '2025-05-28 06:25:51', '2025-05-28 06:25:51'),
(274, 'images/EnSvdn1bGPizWgOStdPfVleeenaEA9fHdylOxlHA.webp', 151, 0, '2025-05-28 06:44:33', '2025-05-28 06:44:33'),
(275, 'images/SRbkWUUz67r0zLh1ovt5jOwLWNusrRDMIRPUP7dH.webp', 151, 0, '2025-05-28 06:44:33', '2025-05-28 06:44:33'),
(276, 'images/85ZjcIcykPmqPEurfrfI9j4XT9lVW0prefuHl049.webp', 151, 0, '2025-05-28 06:44:33', '2025-05-28 06:44:33'),
(277, 'images/nYwdSGp3s1Beo954CW9mIsXqe2wNPqcmmmjFs8j0.webp', 164, 0, '2025-05-28 06:46:39', '2025-05-28 06:46:39'),
(278, 'images/jlKNdnhEedifmCLPxsD6Y6eX4ACIWG8XOZv3bEsW.webp', 164, 0, '2025-05-28 06:46:39', '2025-05-28 06:46:39'),
(279, 'images/9dYpqeXIGvNBxcFc5Ij3dLrgihTheuM0nt6QovJM.webp', 164, 0, '2025-05-28 06:46:39', '2025-05-28 06:46:39'),
(280, 'images/qkPifROxPZSS9jU4xLFKFAWOENoy3ECEBxzc3Kr3.webp', 167, 0, '2025-05-28 06:47:49', '2025-05-28 06:47:49'),
(281, 'images/gOCQV27MYn4vc4tJn6rw65Yvih6JHTbb4MIGCi9P.webp', 168, 0, '2025-05-28 06:49:20', '2025-05-28 06:49:20'),
(282, 'images/YR64bveFwrh4DXABKnhdkjtf9IQkmoJ2e3TMQ979.webp', 168, 0, '2025-05-28 06:49:20', '2025-05-28 06:49:20'),
(283, 'images/fpPs3yo49Hvq4546u4bSavpaPgN25kwG4ZrzZbzA.webp', 168, 0, '2025-05-28 06:49:20', '2025-05-28 06:49:20'),
(284, 'images/C0gjU9W3lLXYvKEpkpAIfZVmImlry3SbAQswNUt2.webp', 169, 0, '2025-05-28 06:50:56', '2025-05-28 06:50:56'),
(285, 'images/VuGPmtNfU2N3kmzWv2gjGsYChxkHOtXAXDlQoXx5.webp', 170, 0, '2025-05-28 06:52:17', '2025-05-28 06:52:17'),
(286, 'images/kZOIM8kApQVPSHlr2BawqR77nwgtIZFPuXqJzUCH.webp', 170, 0, '2025-05-28 06:52:17', '2025-05-28 06:52:17'),
(287, 'images/kqIctnK6fEm6FIXF8QcvHnTvXWfWR3HmaHglqoSp.webp', 171, 0, '2025-05-28 06:53:45', '2025-05-28 06:53:45'),
(288, 'images/POxjimjVs8u73k3ZxkJ3biX8OrmmpUFIOL7FXlsT.webp', 171, 0, '2025-05-28 06:53:45', '2025-05-28 06:53:45'),
(290, 'images/8fVbkuheJkeTZ2io9mlyBwwjtMHdidND2xLTyYbt.webp', 172, 0, '2025-05-28 06:55:04', '2025-05-28 06:55:04'),
(291, 'images/zAzrno5pXBTCuRVI7XlONv2rdbtuW5w3bWSwyQr6.webp', 172, 0, '2025-05-28 06:55:04', '2025-05-28 06:55:04'),
(292, 'images/Lzw4iDLxj3oH6BjGtA8vIVEyqmptq2X7QZYSqR5Q.webp', 172, 0, '2025-05-28 06:59:03', '2025-05-28 06:59:03'),
(293, 'images/gnIIRPhNKgXgd3gBD357OewOhxYkBWoWFMW06xni.webp', 173, 0, '2025-05-28 07:00:28', '2025-05-28 07:00:28'),
(294, 'images/t7iGnOOBVSYoz7AzP4S6EjRUCoL9FGA4hulJp3Wb.webp', 173, 0, '2025-05-28 07:00:29', '2025-05-28 07:00:29'),
(295, 'images/0nfIMYYfVPvzSuqVIS1bbbox2GgPjkSeWODRtB9g.webp', 173, 0, '2025-05-28 07:00:29', '2025-05-28 07:00:29'),
(296, 'images/uYUnHe3qLrZI00Vvkz3RoDFUzamxBFtmEVzIzttD.webp', 174, 0, '2025-05-28 07:01:18', '2025-05-28 07:01:18'),
(297, 'images/LNBFpYTEGh21w1zJgzywYaQxpQYhBiiEpuTDpkAt.webp', 92, 0, '2025-05-28 07:02:27', '2025-05-28 07:02:27'),
(298, 'images/br2GFbHJ5In2zsSIkE9BFK0let9BbHnpGZIBstzk.webp', 93, 0, '2025-05-28 07:03:30', '2025-05-28 07:03:30'),
(299, 'images/XhaCCfeYYRxARcWeoamdSzcApOUZ5TIXbQJVc7ig.webp', 94, 0, '2025-05-28 07:04:08', '2025-05-28 07:04:08'),
(300, 'images/4kpJpb47xU49XN2k2Hpx3XbZtj8qTD2PlTubFO9M.webp', 140, 0, '2025-05-28 07:05:11', '2025-05-28 07:05:11'),
(301, 'images/mNQT9OMUPL07RMOqulv7kcrhdBXqZ9AbkxTlK3no.webp', 140, 0, '2025-05-28 07:05:11', '2025-05-28 07:05:11'),
(302, 'images/Yagh7nSo3c4vdxELDgxCwnaNKewBTIbpqKUjWbwJ.webp', 140, 0, '2025-05-28 07:05:11', '2025-05-28 07:05:11'),
(303, 'images/RUKepDvXHgCiGNPNNS6k4b7An4aEQZwuabrV9mE8.webp', 141, 0, '2025-05-28 07:06:38', '2025-05-28 07:06:38'),
(304, 'images/FOXvfibkYSagEIOuP5JNklJIDvLV2Ttzl1Szjd7g.webp', 141, 0, '2025-05-28 07:06:39', '2025-05-28 07:06:39'),
(305, 'images/IXZ0lRQzAByAaMPi4KL5IBX4WOK4nZSoJZeenaf2.webp', 141, 0, '2025-05-28 07:06:39', '2025-05-28 07:06:39'),
(306, 'images/TL3ML28YKSCMvSSUGi2DlrPRPJNhmDrbJ8du7uXp.webp', 145, 0, '2025-05-28 07:08:02', '2025-05-28 07:08:02'),
(307, 'images/cuYUQvA3B8mDOzduKqYpFrxW4o6Cjs33oNDXlfYh.webp', 145, 0, '2025-05-28 07:08:03', '2025-05-28 07:08:03'),
(308, 'images/BWEatn8lrW3nCyED1AdFnyzozjnMzScvMgCcuUtq.webp', 145, 0, '2025-05-28 07:08:03', '2025-05-28 07:08:03'),
(309, 'images/eTXPhgXeqxJpzMxkoxkGkjv6MRrEMSeyk5VG2y3B.webp', 95, 0, '2025-05-28 07:09:19', '2025-05-28 07:09:19'),
(310, 'images/zE5fBdWWe9Ut5VElo68hZEn9CIvs049Y3DSBDYPW.webp', 95, 0, '2025-05-28 07:09:19', '2025-05-28 07:09:19'),
(311, 'images/sCCmsCQAuZ4TWJa8nUs0JFENf4sTb7MR7QAxrtgi.webp', 95, 0, '2025-05-28 07:09:19', '2025-05-28 07:09:19'),
(312, 'images/21nShvAKjDszt1wtDmspvluOc7pmnKTgmpIJyuIh.webp', 96, 0, '2025-05-28 07:11:24', '2025-05-28 07:11:24'),
(313, 'images/YuK1Lkmzvkh5qXZ9URefLOYj93Qm9NhKUbcOhatm.webp', 98, 0, '2025-05-28 07:13:06', '2025-05-28 07:13:06'),
(315, 'images/T4hhzhL9osEOidfCNUKUhQVSbJdHlkdwPGNVaKxD.webp', 102, 0, '2025-05-28 07:16:10', '2025-05-28 07:16:10'),
(316, 'images/gH8QLphBy3vDiZQrYMs5xPba5gS51pj9T66wQ9cN.webp', 102, 0, '2025-05-28 07:16:10', '2025-05-28 07:16:10'),
(317, 'images/iGkxOYuLo1SDhOvTCpQPRC1zdFAu4ml7q0nrbzZi.webp', 102, 0, '2025-05-28 07:16:10', '2025-05-28 07:16:10'),
(318, 'images/XIGid3cNud8jizQk7BBuybB7tvjFfADVikOY28VG.webp', 103, 0, '2025-05-28 07:17:48', '2025-05-28 07:17:48'),
(319, 'images/uEGxrnzH3KXRnMTWlvQCKdt9uyXxlLeH0K8ee0G1.webp', 103, 0, '2025-05-28 07:17:49', '2025-05-28 07:17:49'),
(320, 'images/ri2u00Org0T0CePWIewjlZ6fURjyj9rAwLEuka2v.webp', 104, 0, '2025-05-28 07:19:39', '2025-05-28 07:19:39'),
(321, 'images/VnhtJf0zC9oXQUm4Mg9QscilaUohqk5TmIX5wD3a.jpg', 104, 0, '2025-05-28 07:19:39', '2025-05-28 07:19:39'),
(323, 'images/qvXU761Crtuumnnq1L3tkHvfXhnNtD77qAGlxuTp.jpg', 85, 0, '2025-05-28 07:23:45', '2025-05-28 07:23:45'),
(324, 'images/C6cLcYrTOW0GrNrRlnsYetOzwe95zJz5Yfo4SMkb.webp', 85, 0, '2025-05-28 07:23:45', '2025-05-28 07:23:45'),
(325, 'images/0XFQdJwwm0GsFncahgKbMeUCgBd2nkOuJYL2620j.webp', 86, 0, '2025-05-28 07:24:21', '2025-05-28 07:24:21'),
(326, 'images/qvXU761Crtuumnnq1L3tkHvfXhnNtD77qAGlxuTp.jpg', 86, 0, '2025-05-28 07:24:21', '2025-05-28 07:24:21'),
(327, 'images/VVSBmnarEEjVDNPM3B7mZpMoz59mFak8YhZdIvCl.webp', 89, 0, '2025-05-28 07:26:20', '2025-05-28 07:26:20'),
(328, 'images/YHBfa5coQRidJ23Y9qMaI4TcSsl4JK4rlX3QTbgu.webp', 89, 0, '2025-05-28 07:26:20', '2025-05-28 07:26:20'),
(329, 'images/camvbQt5mUwHA9vBMTU35XK729TvPPWmYxRfCGJq.webp', 132, 0, '2025-05-28 07:28:32', '2025-05-28 07:28:32'),
(330, 'images/RUi4Xcd567BJRsRv69nIJCrQRRkdVesUw6ip6su6.webp', 132, 0, '2025-05-28 07:28:32', '2025-05-28 07:28:32'),
(331, 'images/JXnjnnsiLftOFZg0JQD9AYLpS61wjMHNYtVY3Ysa.webp', 133, 0, '2025-05-28 07:29:27', '2025-05-28 07:29:27'),
(332, 'images/UJPlrpSn1XblzCn6Y1Sd7SXbxiaNI1Qj92BumQpk.webp', 133, 0, '2025-05-28 07:29:27', '2025-05-28 07:29:27'),
(333, 'images/U3lUANAoDadmnlW63RtlaFnioc6iumuvgYEEes7C.webp', 134, 0, '2025-05-28 07:30:25', '2025-05-28 07:30:25'),
(334, 'images/m6yQdmEGJwakDCl0INL5g1YeHt4afAw8C7qIHHcc.webp', 134, 0, '2025-05-28 07:30:25', '2025-05-28 07:30:25'),
(335, 'images/XgswsuYEWyKfiaVQWmZR4Xo5j8uWECWTG8YC7Glx.webp', 135, 0, '2025-05-28 07:31:57', '2025-05-28 07:31:57'),
(336, 'images/EIWlLmsVnojA28btPgyalclhO9XOT1QtffgJVBXY.webp', 135, 0, '2025-05-28 07:31:57', '2025-05-28 07:31:57'),
(337, 'images/o39KRerXXRxNj88zhUa2p1PCT6jodyUUdPcRoCFt.webp', 135, 0, '2025-05-28 07:31:57', '2025-05-28 07:31:57'),
(338, 'images/D1gdL5Pn9PGZgYdEo94NJyNxaP81IGr2dzoNe6vS.webp', 136, 0, '2025-05-28 07:33:35', '2025-05-28 07:33:35'),
(339, 'images/u42mHeWymxBy4ktsDGvQnwrNau1oFToASC2OILLU.webp', 136, 0, '2025-05-28 07:33:35', '2025-05-28 07:33:35'),
(340, 'images/K8E1gc4tXQRX4byvA4SdNnyBBcqxKbHWx0UAUZqP.webp', 136, 0, '2025-05-28 07:33:35', '2025-05-28 07:33:35'),
(341, 'images/l4UVNjc0IsCUAPj4Bqv9XVn9zJxnOc6zcvwA2umb.webp', 137, 0, '2025-05-28 07:34:52', '2025-05-28 07:34:52'),
(342, 'images/Qg70pMhNbHkNikDMsmPJj2jsgbinYWwDWjrtdGyC.jpg', 137, 0, '2025-05-28 07:34:52', '2025-05-28 07:34:52'),
(343, 'images/WcbDXy9RUKHijWI1odJfa3UahR7iT6k9Eaw0vQEH.webp', 138, 0, '2025-05-28 07:36:05', '2025-05-28 07:36:05'),
(344, 'images/QRSMHANATqK3Ldfj516gA4HZZ5DOCfwY4FGOKysV.webp', 138, 0, '2025-05-28 07:36:05', '2025-05-28 07:36:05'),
(345, 'images/ckV2eEqbujcgnGBDwCunmJSNA4g2dlGRKKzPM32Y.webp', 139, 0, '2025-05-28 07:37:02', '2025-05-28 07:37:02'),
(346, 'images/AjEK2MRaA7XbboQHLlqTjqJxnCHtiUAk2NKfUieB.webp', 139, 0, '2025-05-28 07:37:02', '2025-05-28 07:37:02'),
(347, 'images/fdwLCCYwR9MrA9BNx5N3lbXYXxK96YuKHjCriS9l.webp', 177, 0, '2025-05-29 18:35:32', '2025-05-29 18:35:32'),
(348, 'images/7IroU5e5MbZSmvFu5MVQ9O8K5b7tAnkgR7xxB0Sp.webp', 177, 0, '2025-05-29 18:35:33', '2025-05-29 18:35:33'),
(349, 'images/i8xI8Qv8QsovLMaomaF3ASAmhZ7ojByWqiFa57Ve.webp', 177, 0, '2025-05-29 18:35:33', '2025-05-29 18:35:33'),
(350, 'images/CNd1xjvITxldAIWxuvHDGbeMOSL7ZF6XUg5srBuT.webp', 177, 0, '2025-05-29 18:35:33', '2025-05-29 18:35:33'),
(351, 'images/1y0mliU29jafoBIh7lsmoqxGS5tnC3zhOZMYmYoD.webp', 178, 0, '2025-05-29 18:48:27', '2025-05-29 18:48:27'),
(352, 'images/wb9N0aQoI8r77SPA0IGO581Y1zffUoNft36o1YvL.webp', 178, 0, '2025-05-29 18:48:28', '2025-05-29 18:48:28'),
(353, 'images/WZeTq1LV4K6zKzka5Jj1LxDOaRIKdiSdCWmZiQaE.webp', 178, 0, '2025-05-29 18:48:28', '2025-05-29 18:48:28'),
(354, 'images/rAAnXIoLzKw5ISaXUGQpKrcriFaIxhCBbtWTkOr9.webp', 178, 0, '2025-05-29 18:48:28', '2025-05-29 18:48:28'),
(355, 'images/3VXGY7amcDZA6iF7l6ArZNc6jh6M4Z0bIb5KIQLC.webp', 179, 0, '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(356, 'images/sLqPYFgNVuYJUrD8INVV1ujnl8kCGKAvvirja1t8.webp', 179, 0, '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(357, 'images/RSUlxxUPmfzsvdUUtR78nIgIJpVd6ifuZhIaYnn0.webp', 179, 0, '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(358, 'images/E6Vr7uaGyfJ0hT2Z6pmky2Ne72uyLvziNvnfHAq9.webp', 179, 0, '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(359, 'images/RtI9DCojX8aeSFct7FX3lJgbNqGNaiiZrQ9bXrp3.webp', 180, 0, '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(360, 'images/n01N6TKEJIh2ctIP7PSNzyNchtlVNZq9LqOHLnkD.webp', 180, 0, '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(361, 'images/0voeXvaidwk2CjY0W39oEh6QKepCK5dHRHmkuRWW.webp', 180, 0, '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(362, 'images/FiUmRXchL4HqWlXdaoMpKdx66mTdTrW01UN8zDsy.webp', 180, 0, '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(363, 'images/Thop9FLlZJdElVuQH9z5m6SiP5GpxGemhUXoi8hz.webp', 181, 0, '2025-05-29 19:20:33', '2025-05-29 19:20:33'),
(364, 'images/xfK3l5699VvHdjpqV66dwnh4XzytszTR6CbfFF4N.webp', 181, 0, '2025-05-29 19:20:33', '2025-05-29 19:20:33'),
(365, 'images/1H2YqxosTKb1P6U0LUfxbqV4Ypq6kxeuIOy1gvof.webp', 181, 0, '2025-05-29 19:20:34', '2025-05-29 19:20:34'),
(366, 'images/ae5W2DVTqCIFbKX3ZfJzcIQ5PxXVoPpK8XafA9hb.webp', 181, 0, '2025-05-29 19:20:34', '2025-05-29 19:20:34'),
(367, 'images/VgaBHcCh8u5WtQWfjqN2piDOvgipCiwB2BPGDiPn.webp', 182, 0, '2025-05-29 19:27:16', '2025-05-29 19:27:16'),
(368, 'images/XuCfl6DzJneTdkR6AeTfbfgf5otNeq3n9VHjik4B.webp', 182, 0, '2025-05-29 19:27:16', '2025-05-29 19:27:16'),
(369, 'images/COIph0FFAWM8cVRMfdxig4fzVkFV7YS5sHZ7hvtw.webp', 182, 0, '2025-05-29 19:27:16', '2025-05-29 19:27:16'),
(370, 'images/9id2kMBTi5aLkVRdayTN4974igPV1nJ7IHwS9adQ.webp', 182, 0, '2025-05-29 19:27:16', '2025-05-29 19:27:16'),
(371, 'images/kuU2gKGDV7AbyLhZzfrMGq9ObP1Ot7W48IsL3iqb.webp', 183, 0, '2025-05-29 19:33:26', '2025-05-29 19:33:26'),
(372, 'images/xgeVtSr6rX1xMUvillGIi6ypYZ6OmiWYEdyFnB1w.webp', 183, 0, '2025-05-29 19:33:26', '2025-05-29 19:33:26'),
(373, 'images/ZDkhlTwJ4eh1sknSHHlh81YkZcEgP6SM9eMCxV88.webp', 183, 0, '2025-05-29 19:33:27', '2025-05-29 19:33:27'),
(374, 'images/VuXfiRmIfNT6dxjhWuXZlOhcX9NaurnCdkBhG8sP.webp', 183, 0, '2025-05-29 19:33:27', '2025-05-29 19:33:27'),
(375, 'images/JLySrNTEQXISwYh77EmYursoh7cwJT2dIuaIFO65.webp', 184, 0, '2025-05-29 19:42:38', '2025-05-29 19:42:38'),
(376, 'images/bGfun9B1tQvcRW4dVFcyDVgpJTm0V7zrMVvjXibf.webp', 184, 0, '2025-05-29 19:42:38', '2025-05-29 19:42:38'),
(377, 'images/BaVTNObT7GJ2ICqLI2lMrR4E6INAQfVtH1RsUPYA.webp', 184, 0, '2025-05-29 19:42:39', '2025-05-29 19:42:39'),
(378, 'images/co67DredWhImAS6TeS4neNBtzkJg6vTE9pRGNYSi.webp', 184, 0, '2025-05-29 19:42:39', '2025-05-29 19:42:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_16_005111_create_roles_table', 2),
(6, '2025_04_16_011913_create_categories_table', 3),
(7, '2025_04_16_012043_create_sub_categories_table', 4),
(8, '2025_04_16_012852_create_sub_items_table', 5),
(9, '2025_04_16_013216_create_brands_table', 6),
(10, '2025_04_16_013522_create_combos_table', 7),
(11, '2025_04_16_013702_create_products_table', 8),
(12, '2025_04_16_025641_create_colors_table', 9),
(13, '2025_04_16_025742_create_product_combos_table', 10),
(14, '2025_04_16_030401_create_images_table', 11),
(15, '2025_04_16_031017_create_statistics_table', 12),
(16, '2025_04_16_031445_create_coupons_table', 13),
(17, '2025_04_16_032058_create_address_table', 14),
(18, '2025_04_16_032903_create_orders_table', 15),
(19, '2025_04_16_033300_create_order_details_table', 16),
(20, '2025_04_16_033550_create_news_types_table', 17),
(21, '2025_04_16_033621_create_news_table', 18),
(22, '2025_04_16_034126_create_product_comments_table', 19),
(23, '2025_05_09_011742_create_views_table', 20),
(24, '2025_06_03_085118_create_luck_spins_table', 21),
(25, '2025_06_03_101009_create_gifts_table', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_type_id` int UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_types`
--

CREATE TABLE `news_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `shipment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` int UNSIGNED DEFAULT NULL,
  `address_id` int UNSIGNED NOT NULL,
  `gift_id` int UNSIGNED DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `total` int NOT NULL,
  `status` int NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `shipment_id`, `coupon_id`, `address_id`, `gift_id`, `fee`, `total`, `status`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(8, 'LBP9X8', NULL, 1, 0, 22000, 56080, 1, 'COD', NULL, '2025-05-12 23:44:39', '2025-05-22 17:51:39'),
(9, 'LBP9A6', NULL, 1, 0, 22000, 95625, 1, 'COD', NULL, '2025-05-12 23:46:03', '2025-05-22 17:51:49'),
(10, 'LBP9AH', NULL, 1, 0, 22000, 1017220, 1, 'COD', NULL, '2025-05-12 23:47:02', '2025-05-22 17:51:58'),
(11, 'LBP9AY', NULL, 3, 0, 22000, 55180, 1, 'COD', NULL, '2025-05-12 23:49:43', '2025-05-22 17:52:07'),
(12, 'LBP98L', NULL, 3, 0, 22000, 87440, 1, 'COD', NULL, '2025-05-12 23:52:43', '2025-05-22 17:52:14'),
(13, 'LBE9UF', NULL, 3, 0, 22000, 57599, 1, 'COD', NULL, '2025-05-24 04:56:45', '2025-06-23 07:34:08'),
(14, 'LBE9UP', NULL, 3, 0, 22000, 46000, 1, 'COD', NULL, '2025-05-24 07:31:07', '2025-06-23 07:41:24'),
(15, NULL, NULL, 5, 0, 22000, 31000, 0, 'COD', NULL, '2025-05-24 07:35:50', '2025-05-26 20:26:41'),
(16, 'L3CUTU', NULL, 3, 0, 22000, 49280, 1, 'COD', NULL, '2025-05-25 05:54:17', '2025-06-28 19:56:01'),
(20, NULL, 9, 7, 0, 0, 21600, 1, 'COD', NULL, '2025-05-26 15:35:15', '2025-05-26 15:46:54'),
(21, 'LB3W4B', NULL, 7, 0, 22000, 42000, 1, 'COD', NULL, '2025-05-26 20:34:14', '2025-05-26 20:45:25'),
(22, NULL, NULL, 3, NULL, 0, 0, 0, 'COD', NULL, '2025-06-19 21:29:22', '2025-06-19 21:29:22'),
(23, NULL, NULL, 3, NULL, 22000, 72800, 0, 'COD', NULL, '2025-06-23 08:08:36', '2025-06-23 08:08:36'),
(24, NULL, NULL, 10, NULL, 22000, 143500, 0, 'COD', NULL, '2025-06-26 15:29:16', '2025-06-26 15:29:16'),
(25, NULL, NULL, 11, NULL, 22000, 49000, 0, 'COD', NULL, '2025-06-26 21:09:40', '2025-06-26 21:09:40'),
(26, 'L3CUTQ', NULL, 12, NULL, 22000, 131260, 1, 'VNPAY', NULL, '2025-06-28 19:25:00', '2025-06-28 19:55:31'),
(29, NULL, NULL, 12, NULL, 22000, 119110, 0, 'COD', NULL, '2025-06-28 19:53:18', '2025-06-28 19:53:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_combo_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_combo_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(12, 8, 130, 1, 20000, '2025-05-12 23:44:39', '2025-05-12 23:44:39'),
(13, 8, 56, 1, 10800, '2025-05-12 23:44:39', '2025-05-12 23:44:39'),
(14, 8, 125, 1, 3280, '2025-05-12 23:44:39', '2025-05-12 23:44:39'),
(15, 9, 126, 1, 9075, '2025-05-12 23:46:03', '2025-05-12 23:46:03'),
(16, 9, 56, 1, 12150, '2025-05-12 23:46:03', '2025-05-12 23:46:03'),
(17, 9, 116, 1, 52400, '2025-05-12 23:46:03', '2025-05-12 23:46:03'),
(18, 10, 77, 1, 30420, '2025-05-12 23:47:02', '2025-05-12 23:47:02'),
(19, 10, 29, 1, 964800, '2025-05-12 23:47:02', '2025-05-12 23:47:02'),
(20, 11, 127, 1, 9900, '2025-05-12 23:49:43', '2025-05-12 23:49:43'),
(21, 11, 125, 1, 3280, '2025-05-12 23:49:43', '2025-05-12 23:49:43'),
(22, 11, 130, 1, 20000, '2025-05-12 23:49:43', '2025-05-12 23:49:43'),
(23, 12, 101, 1, 23800, '2025-05-12 23:52:43', '2025-05-12 23:52:43'),
(24, 12, 104, 1, 5400, '2025-05-12 23:52:43', '2025-05-12 23:52:43'),
(25, 12, 97, 1, 20740, '2025-05-12 23:52:43', '2025-05-12 23:52:43'),
(26, 12, 88, 3, 15500, '2025-05-12 23:52:43', '2025-05-12 23:52:43'),
(27, 13, 175, 1, 1599, '2025-05-24 04:56:45', '2025-05-24 04:56:45'),
(28, 13, 150, 1, 23200, '2025-05-24 04:56:45', '2025-05-24 04:56:45'),
(29, 13, 49, 1, 10800, '2025-05-24 04:56:45', '2025-05-24 04:56:45'),
(30, 14, 131, 1, 24000, '2025-05-24 07:31:07', '2025-05-24 07:31:07'),
(31, 15, 129, 1, 9000, '2025-05-24 07:35:50', '2025-05-24 07:35:50'),
(32, 16, 131, 1, 24000, '2025-05-25 05:54:17', '2025-05-25 05:54:17'),
(33, 16, 125, 1, 3280, '2025-05-25 05:54:17', '2025-05-25 05:54:17'),
(37, 20, 131, 1, 24000, '2025-05-26 15:35:15', '2025-05-26 15:35:15'),
(38, 21, 130, 1, 20000, '2025-05-26 20:34:14', '2025-05-26 20:34:14'),
(39, 22, 129, 1, 9000, '2025-06-19 21:29:22', '2025-06-19 21:29:22'),
(40, 23, 158, 1, 8000, '2025-06-23 08:08:36', '2025-06-23 08:08:36'),
(41, 23, 155, 5, 8560, '2025-06-23 08:08:36', '2025-06-23 08:08:36'),
(42, 24, 140, 2, 24000, '2025-06-26 15:29:16', '2025-06-26 15:29:16'),
(43, 24, 141, 1, 73500, '2025-06-26 15:29:16', '2025-06-26 15:29:16'),
(44, 25, 129, 3, 9000, '2025-06-26 21:09:40', '2025-06-26 21:09:40'),
(45, 26, 129, 2, 9000, '2025-06-28 19:25:00', '2025-06-28 19:25:00'),
(46, 26, 77, 3, 30420, '2025-06-28 19:25:00', '2025-06-28 19:25:00'),
(51, 29, 121, 2, 4000, '2025-06-28 19:53:18', '2025-06-28 19:53:18'),
(52, 29, 161, 2, 25600, '2025-06-28 19:53:18', '2025-06-28 19:53:18'),
(53, 29, 96, 2, 18955, '2025-06-28 19:53:18', '2025-06-28 19:53:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '8b474d88c2ca9a83d36460a061961f3590fdb5eaf465d4e3fbacdbe0cc10b7ed', '[\"*\"]', NULL, NULL, '2025-04-16 04:04:44', '2025-04-16 04:04:44'),
(2, 'App\\Models\\User', 1, 'auth_token', 'c5ff107bb1b2a16f0b7b3e2a7a9e2a4969ccefa6e6407084eb782acb87781ef9', '[\"*\"]', NULL, NULL, '2025-04-16 04:26:06', '2025-04-16 04:26:06'),
(3, 'App\\Models\\User', 1, 'auth_token', 'c986c3cbc79064d4616a358a30f964941dec27febea4dd8725504a8b06f1b22b', '[\"*\"]', NULL, NULL, '2025-04-16 04:28:29', '2025-04-16 04:28:29'),
(4, 'App\\Models\\User', 1, 'auth_token', '70af2c3e171b6b890abb7f2fec396d4a9241f4f512a46b461b6471a5fbdeb84d', '[\"*\"]', NULL, NULL, '2025-04-16 04:30:55', '2025-04-16 04:30:55'),
(5, 'App\\Models\\User', 2, 'auth_token', '78d3fc5e4af28915e980fcdffd4c88c886d3d0391f4932808e9582036d61cdb8', '[\"*\"]', NULL, NULL, '2025-04-16 04:31:28', '2025-04-16 04:31:28'),
(6, 'App\\Models\\User', 1, 'auth_token', '4a2d60473afafbcd31968d8e43167a78766c58b5e3654e3dc28eec13898d459a', '[\"*\"]', NULL, NULL, '2025-04-16 06:35:41', '2025-04-16 06:35:41'),
(7, 'App\\Models\\User', 1, 'auth_token', 'db37cc76019a0588c232f6fd877d72cd85588351bcfe8f875572489d6a0e509a', '[\"*\"]', NULL, NULL, '2025-04-16 06:40:24', '2025-04-16 06:40:24'),
(8, 'App\\Models\\User', 1, 'auth_token', '0264e723ee6d4189ee26eb3921cf330dd52b7826d2c4ffe826a76192f8c4142c', '[\"*\"]', NULL, NULL, '2025-04-16 06:50:50', '2025-04-16 06:50:50'),
(9, 'App\\Models\\User', 1, 'auth_token', '602633fc3f169f22a0e089be9b904f407636b982ee184544e02361fd8b9aba88', '[\"*\"]', NULL, NULL, '2025-04-16 06:51:27', '2025-04-16 06:51:27'),
(10, 'App\\Models\\User', 3, 'auth_token', '23619d7f129fb683abc28a00719028ccb2c459338af77d82e72e3bd5bc86f3ee', '[\"*\"]', NULL, NULL, '2025-04-16 07:15:14', '2025-04-16 07:15:14'),
(11, 'App\\Models\\User', 3, 'auth_token', '8a085a866e6cdfe9960d40304f095bbbb61e71d646ccfbaf24d180e10887d0e3', '[\"*\"]', NULL, NULL, '2025-04-16 07:17:05', '2025-04-16 07:17:05'),
(12, 'App\\Models\\User', 3, 'auth_token', 'c6a9388827ec1f578120742341ad3ab8f537de488fd1a62d5a66b50812e81e63', '[\"*\"]', NULL, NULL, '2025-04-16 07:29:22', '2025-04-16 07:29:22'),
(13, 'App\\Models\\User', 3, 'auth_token', '66fffe31e5cc6c127f74694e8fb2801ea7240eae5b2dd8e216f238eaf58b8504', '[\"*\"]', NULL, NULL, '2025-04-16 07:33:37', '2025-04-16 07:33:37'),
(14, 'App\\Models\\User', 3, 'auth_token', '8ac17c9f8b3dea4c19014fc9eea757844d8b1466d0ab7ed2e4b398a015367077', '[\"*\"]', NULL, NULL, '2025-04-16 07:36:45', '2025-04-16 07:36:45'),
(15, 'App\\Models\\User', 3, 'auth_token', 'fa0a9a7144404d088ddb1525f5815f23f67f7952e52f942e48bc56f0fc47a7ee', '[\"*\"]', NULL, NULL, '2025-04-16 07:38:03', '2025-04-16 07:38:03'),
(16, 'App\\Models\\User', 3, 'auth_token', '17937c1b4d92b1368f628579e1f396680be5659f4cf2fe768f90a9fa5cfa2c5b', '[\"*\"]', NULL, NULL, '2025-04-16 07:53:03', '2025-04-16 07:53:03'),
(17, 'App\\Models\\User', 3, 'auth_token', '25e47879a60f35b3f6668f6752b39590932d69cef71fadbd4b99d9f304dc645f', '[\"*\"]', NULL, NULL, '2025-04-16 07:57:54', '2025-04-16 07:57:54'),
(18, 'App\\Models\\User', 1, 'auth_token', 'bb1fa399c110bd14be053045b091a64447b0e1dc741770620d51ffa682659df8', '[\"*\"]', NULL, NULL, '2025-04-16 07:59:10', '2025-04-16 07:59:10'),
(19, 'App\\Models\\User', 3, 'auth_token', '129b348e234f2d302a48725ac1a0ace1500da962b7b84d6db71745ec18a2a60c', '[\"*\"]', NULL, NULL, '2025-04-16 07:59:37', '2025-04-16 07:59:37'),
(20, 'App\\Models\\User', 1, 'auth_token', 'd0930250ce1a72dcaeca7cf5a8ce252b47762fecefedb1a32196a847531dc4f6', '[\"*\"]', NULL, NULL, '2025-04-16 08:11:16', '2025-04-16 08:11:16'),
(21, 'App\\Models\\User', 4, 'auth_token', '61da957e5410329d01fcee010a5e316f07fadc531a161e9dc1191e15e4325550', '[\"*\"]', NULL, NULL, '2025-04-16 08:24:37', '2025-04-16 08:24:37'),
(22, 'App\\Models\\User', 1, 'auth_token', 'a91e940581def8e0899e0d2f48ee851aca77ed827f4368dc0d86f5a904e994bf', '[\"*\"]', NULL, NULL, '2025-04-16 15:29:34', '2025-04-16 15:29:34'),
(23, 'App\\Models\\User', 3, 'auth_token', '8fcd5a09f97556fa71f79a4828c5b7ec12dca3afc62960fa2bed89bbea4da313', '[\"*\"]', NULL, NULL, '2025-04-16 15:30:06', '2025-04-16 15:30:06'),
(24, 'App\\Models\\User', 3, 'auth_token', '784387cbe3e8510015ba7dde9a499609dbba716729fe70f5c43532bf808de594', '[\"*\"]', NULL, NULL, '2025-04-16 15:30:24', '2025-04-16 15:30:24'),
(25, 'App\\Models\\User', 3, 'auth_token', '648ab94c7b0188983196022a67cb90b47d817d5afdf5421152e2f0e60b57d334', '[\"*\"]', NULL, NULL, '2025-04-16 15:52:26', '2025-04-16 15:52:26'),
(26, 'App\\Models\\User', 3, 'auth_token', '78ce39ec9b6fc509e2e0dd774a354f6cfe674fc3cbea70ec21f5a60d28e70e21', '[\"*\"]', NULL, NULL, '2025-04-16 15:54:33', '2025-04-16 15:54:33'),
(27, 'App\\Models\\User', 5, 'auth_token', 'e04ea7e243376f48607f84c73ba5e37590b561e9c94cda83d9fe1199015f4039', '[\"*\"]', NULL, NULL, '2025-04-16 16:05:00', '2025-04-16 16:05:00'),
(28, 'App\\Models\\User', 4, 'auth_token', '0ab27fa1b40f6d7572491f36f970a79ada3557ebe3bc5c6028d88cf3e11586ea', '[\"*\"]', NULL, NULL, '2025-04-16 16:09:06', '2025-04-16 16:09:06'),
(29, 'App\\Models\\User', 6, 'auth_token', 'ebbba5a76085f8bbf7bc920822d64fefac007c6ce99bd640f69c6e4932e3f112', '[\"*\"]', NULL, NULL, '2025-04-16 16:14:56', '2025-04-16 16:14:56'),
(30, 'App\\Models\\User', 7, 'auth_token', '9d3df01902e1318f639ed05abe4e8a95eb159fde7dd2e8b42dde529c16e8ced6', '[\"*\"]', NULL, NULL, '2025-04-16 16:17:10', '2025-04-16 16:17:10'),
(31, 'App\\Models\\User', 8, 'auth_token', '7d8a50211c9607d0174f69bace35213c7b15907b002f2537a3a7f446b26179e5', '[\"*\"]', NULL, NULL, '2025-04-16 16:18:18', '2025-04-16 16:18:18'),
(32, 'App\\Models\\User', 7, 'auth_token', 'a68ba514e54d741427da0fa4590f1e6d485f3367758b38a4894cb7955892bd75', '[\"*\"]', NULL, NULL, '2025-04-16 16:23:40', '2025-04-16 16:23:40'),
(33, 'App\\Models\\User', 7, 'auth_token', '7e3748890f1965e4e406c9e01b22eaf7e515ef93ccc911978b6fd328b73214f4', '[\"*\"]', NULL, NULL, '2025-04-16 16:24:32', '2025-04-16 16:24:32'),
(34, 'App\\Models\\User', 8, 'auth_token', '6c9d52b701589f114542fe931c7e36cfac524b0956d1459863e61406d5996692', '[\"*\"]', NULL, NULL, '2025-04-16 16:32:21', '2025-04-16 16:32:21'),
(35, 'App\\Models\\User', 9, 'auth_token', '87c5ddd7163da335c3fd9175d207a38493dbef61bc47007e7105d7b2e4f3eda0', '[\"*\"]', NULL, NULL, '2025-04-16 16:35:30', '2025-04-16 16:35:30'),
(36, 'App\\Models\\User', 10, 'auth_token', 'e28e336defeefc12b60da172522c90e990834bb09e5185c6009a727366336c91', '[\"*\"]', NULL, NULL, '2025-04-16 17:58:31', '2025-04-16 17:58:31'),
(37, 'App\\Models\\User', 3, 'auth_token', '3fb68b747bd940e90b526cebb257d1faa35af2f89e6e2a816545fc3715f848aa', '[\"*\"]', NULL, NULL, '2025-04-16 18:07:33', '2025-04-16 18:07:33'),
(38, 'App\\Models\\User', 3, 'auth_token', 'a978bcf47d0e6ebbfbc8191b07971a97369990750a5804d21b2f01d325a43b55', '[\"*\"]', NULL, NULL, '2025-04-16 18:09:40', '2025-04-16 18:09:40'),
(39, 'App\\Models\\User', 3, 'auth_token', 'd1dbae1f0aeaa0ab9494fa4c0c95e6bee9df0e7f10a326c2dd765992363918f6', '[\"*\"]', NULL, NULL, '2025-04-16 18:11:22', '2025-04-16 18:11:22'),
(40, 'App\\Models\\User', 1, 'auth_token', 'ff1dbbf88247eb3bddb0ad9aa93a1fa8dba7e447724d0afc5156ebabff4ced9c', '[\"*\"]', NULL, NULL, '2025-04-16 18:11:55', '2025-04-16 18:11:55'),
(41, 'App\\Models\\User', 11, 'auth_token', '5859353f1985b2b80da2e0f1235b57216c11d436874a49b7d32fd1a0cacb77fb', '[\"*\"]', NULL, NULL, '2025-04-16 18:12:26', '2025-04-16 18:12:26'),
(42, 'App\\Models\\User', 12, 'auth_token', 'f57280fe59a5f16add1b4e3c7d82bca40349d6508b59a02884c94a1beca732c8', '[\"*\"]', NULL, NULL, '2025-04-16 18:13:02', '2025-04-16 18:13:02'),
(43, 'App\\Models\\User', 3, 'auth_token', '56ffdc4b0e95c55f05960dd07e34fcab19333739efdb13242bc06ed1d6dbf6a5', '[\"*\"]', NULL, NULL, '2025-04-16 18:17:10', '2025-04-16 18:17:10'),
(44, 'App\\Models\\User', 3, 'auth_token', '9d1d3ba1eaacc24eb30356785fefe0821296a642e80f6a86b6b96977c49810ae', '[\"*\"]', NULL, NULL, '2025-04-16 18:23:30', '2025-04-16 18:23:30'),
(45, 'App\\Models\\User', 13, 'auth_token', 'e729f25226b3b328fc3b0ee537bee2725d66e495c5d20c3939523f9d16c3878e', '[\"*\"]', NULL, NULL, '2025-04-16 18:23:44', '2025-04-16 18:23:44'),
(46, 'App\\Models\\User', 3, 'auth_token', 'c7e25eae3b8df48f360baade0b82be231fc6085be8f16f9745d8beccaea9d7a3', '[\"*\"]', NULL, NULL, '2025-04-16 18:25:49', '2025-04-16 18:25:49'),
(47, 'App\\Models\\User', 3, 'auth_token', '1df7cdbc21f76c1eb806ab17f6e52524ed9b95f4dacf55f41c6840bfe3f1e615', '[\"*\"]', NULL, NULL, '2025-04-16 21:21:19', '2025-04-16 21:21:19'),
(48, 'App\\Models\\User', 13, 'auth_token', '112f94c1cc22017715dbf55b41df0fb6785903ef8cfe055815f6e3eebef0bea5', '[\"*\"]', NULL, NULL, '2025-04-16 21:24:46', '2025-04-16 21:24:46'),
(49, 'App\\Models\\User', 3, 'auth_token', '79d0628266a64260549ede14fc798f306e0537c2b9c909b2fd5973eb4ce5ed02', '[\"*\"]', NULL, NULL, '2025-04-16 21:26:03', '2025-04-16 21:26:03'),
(50, 'App\\Models\\User', 3, 'auth_token', '610a176d60430af40e057a6b0afc8316ff77a46b2e5cbf61c8b943e87d59c952', '[\"*\"]', NULL, NULL, '2025-04-17 01:33:21', '2025-04-17 01:33:21'),
(51, 'App\\Models\\User', 3, 'auth_token', '3480584bbd5b04513ea8c3a94024a277a4cc0b84f9c94c2011a1d6802a2f559c', '[\"*\"]', NULL, NULL, '2025-04-17 01:48:24', '2025-04-17 01:48:24'),
(52, 'App\\Models\\User', 3, 'auth_token', 'ad322435f143fdb00b05cab6f718076e3cc4979cecf75b57712517cb84d0d9ec', '[\"*\"]', NULL, NULL, '2025-04-17 02:08:26', '2025-04-17 02:08:26'),
(53, 'App\\Models\\User', 3, 'auth_token', '51bca99f6d7c0826fc6f1329bed82dc80545d57cfb012e9876d6f9843a3dc5ac', '[\"*\"]', NULL, NULL, '2025-04-17 09:15:10', '2025-04-17 09:15:10'),
(54, 'App\\Models\\User', 3, 'auth_token', '39ddca4d24ad8882ac3fbd2da1eee02d991b3afa35a2423e4682a155a644288c', '[\"*\"]', NULL, NULL, '2025-04-17 15:58:59', '2025-04-17 15:58:59'),
(55, 'App\\Models\\User', 3, 'auth_token', '0735396dea5654ed74c41a13a9099e97b6702dca769260ce2d60faf5495f7960', '[\"*\"]', NULL, NULL, '2025-04-17 17:58:30', '2025-04-17 17:58:30'),
(56, 'App\\Models\\User', 3, 'auth_token', 'ea8a80396c33748914c8b13feb57bad8419c33327573c1fabf9b9befb3205031', '[\"*\"]', NULL, NULL, '2025-04-17 22:11:43', '2025-04-17 22:11:43'),
(57, 'App\\Models\\User', 3, 'auth_token', '335ea81df58d51975ff489b12b7df77c65b9e57faf64ca60797e9ecd24cba7df', '[\"*\"]', NULL, NULL, '2025-04-18 02:42:41', '2025-04-18 02:42:41'),
(58, 'App\\Models\\User', 3, 'auth_token', '600f8206f5fd06c4eb14296e914f202426e30f20d572e72bff6af7717af62dcf', '[\"*\"]', NULL, NULL, '2025-04-18 06:17:42', '2025-04-18 06:17:42'),
(59, 'App\\Models\\User', 3, 'auth_token', '1df45edb3d0dd043aaf2ccd3ee5b8fa3128f6f2a882c907e5786a73edde2cd65', '[\"*\"]', NULL, NULL, '2025-04-19 18:22:51', '2025-04-19 18:22:51'),
(60, 'App\\Models\\User', 3, 'auth_token', 'f5d5e81f6c0b867b0ef6f4de53b0628772720c741b5a065e565f743378f73e49', '[\"*\"]', NULL, NULL, '2025-04-19 19:16:08', '2025-04-19 19:16:08'),
(61, 'App\\Models\\User', 3, 'auth_token', 'a283180fea519dc080c80cbd80b4c1d19ac08a35c0f790223d61dfcf63e2e97a', '[\"*\"]', NULL, NULL, '2025-04-20 00:10:51', '2025-04-20 00:10:51'),
(62, 'App\\Models\\User', 3, 'auth_token', '5bb27c4bd435723a2e6c2194b9eec4387b2c81e98d174d12c20e4d382301c536', '[\"*\"]', NULL, NULL, '2025-04-20 00:49:49', '2025-04-20 00:49:49'),
(63, 'App\\Models\\User', 3, 'auth_token', '1f107b54fb631b83e70734233a3d2d32c6c808f44b8a761d23eb71cf701f8161', '[\"*\"]', NULL, NULL, '2025-04-20 02:04:20', '2025-04-20 02:04:20'),
(64, 'App\\Models\\User', 13, 'auth_token', 'db160d2e91611f7593e718141be0ef7d082693ecd4b9f6e698f845cf851d0560', '[\"*\"]', '2025-04-20 02:15:18', NULL, '2025-04-20 02:04:39', '2025-04-20 02:15:18'),
(65, 'App\\Models\\User', 3, 'auth_token', '5423b43c7489b616dbd9700790922ac995e2e4c08aac339cc730f66e4a5fbde1', '[\"*\"]', NULL, NULL, '2025-04-20 02:17:39', '2025-04-20 02:17:39'),
(66, 'App\\Models\\User', 3, 'auth_token', '7e100a732a501fe29575f03f96fbdb11ad13f2ee277ec202441f5ea67c14d905', '[\"*\"]', '2025-04-20 04:55:49', NULL, '2025-04-20 04:20:59', '2025-04-20 04:55:49'),
(67, 'App\\Models\\User', 3, 'auth_token', 'ec2fd35a705a122d958f441094716525d2f60cfd601fc9c69ff7b9397f91ffdd', '[\"*\"]', NULL, NULL, '2025-04-20 05:22:46', '2025-04-20 05:22:46'),
(68, 'App\\Models\\User', 3, 'auth_token', '743eeffb59f2944bfeadedab9b1407b8656bc71237f21f3ea08f62cb3e074f8b', '[\"*\"]', NULL, NULL, '2025-04-21 02:04:59', '2025-04-21 02:04:59'),
(69, 'App\\Models\\User', 3, 'auth_token', 'cc8b9ca161cea18e67641995ceb67ab60b055c8f5716c0e2daf344f4bc1fda9e', '[\"*\"]', '2025-04-21 07:40:03', NULL, '2025-04-21 02:05:21', '2025-04-21 07:40:03'),
(70, 'App\\Models\\User', 13, 'auth_token', 'b8f8bdaa745a7c86ffeaa6c74d5e365e5bf38a961835f1a7410d06b47aa1ac28', '[\"*\"]', '2025-04-21 18:00:08', NULL, '2025-04-21 17:59:19', '2025-04-21 18:00:08'),
(71, 'App\\Models\\User', 3, 'auth_token', '92fd1b401137fe80f1cdcac854525c69f7c077a39323f83dad8dae3104060f83', '[\"*\"]', NULL, NULL, '2025-04-21 18:00:48', '2025-04-21 18:00:48'),
(72, 'App\\Models\\User', 1, 'auth_token', 'cf467ebce597094ca865f201f7c8a9d981ed796f693d87b63087dcc7daa401e1', '[\"*\"]', '2025-04-21 18:10:18', NULL, '2025-04-21 18:08:08', '2025-04-21 18:10:18'),
(73, 'App\\Models\\User', 1, 'auth_token', 'b7455879059dbbd5aeb9a44d273863821e72fe6db6d91aabd7bd834f4933fed2', '[\"*\"]', NULL, NULL, '2025-04-26 18:34:51', '2025-04-26 18:34:51'),
(74, 'App\\Models\\User', 1, 'auth_token', '0a9c80b50e3913809de5121ab15e4ec935252e7f519ace5231765ae72f9d2085', '[\"*\"]', NULL, NULL, '2025-04-26 18:38:40', '2025-04-26 18:38:40'),
(75, 'App\\Models\\User', 3, 'auth_token', '0803b845d0a5114fc78c4e42173d1a1a9874122ac146306ac7b806fc4ef815ae', '[\"*\"]', NULL, NULL, '2025-04-26 18:43:36', '2025-04-26 18:43:36'),
(76, 'App\\Models\\User', 3, 'auth_token', 'a0983fe69328980bb06be7900f56c0658567ad0a57fd5fc66aebf0a164299064', '[\"*\"]', NULL, NULL, '2025-04-26 18:43:58', '2025-04-26 18:43:58'),
(77, 'App\\Models\\User', 3, 'auth_token', 'e46fa69f9b9b40c04fc6c5239407f81a8a7ace1a48e27499cb314069b8bf718b', '[\"*\"]', NULL, NULL, '2025-04-26 18:44:14', '2025-04-26 18:44:14'),
(78, 'App\\Models\\User', 3, 'auth_token', '2b99d2f43950ac6393aab664c20523b52c69d8a479ab67225ea31e8859478e85', '[\"*\"]', NULL, NULL, '2025-04-26 18:44:55', '2025-04-26 18:44:55'),
(79, 'App\\Models\\User', 3, 'auth_token', 'c2477def22b1c5d7533a06d9be874fd30e7f4c54e4bbc0be8cefa49b4fc66afa', '[\"*\"]', NULL, NULL, '2025-04-26 18:45:37', '2025-04-26 18:45:37'),
(80, 'App\\Models\\User', 22, 'auth_token', 'b8099810d98d77456f509b5a1aa5710ddb5edef862fd18808ad3b1bf78de3e81', '[\"*\"]', NULL, NULL, '2025-04-26 18:50:35', '2025-04-26 18:50:35'),
(81, 'App\\Models\\User', 23, 'auth_token', 'e11168513d000190314ff9a262d52451aaf7284cf26d4d8fe53e2d1106d35e84', '[\"*\"]', NULL, NULL, '2025-04-26 19:05:12', '2025-04-26 19:05:12'),
(82, 'App\\Models\\User', 23, 'auth_token', '51ca6668b0bbfe02a6d81f38937f8aa65271f4855aa98d286afa5b47657070d7', '[\"*\"]', NULL, NULL, '2025-04-26 19:07:46', '2025-04-26 19:07:46'),
(83, 'App\\Models\\User', 3, 'auth_token', '3ad54bcf4fcaba2b47266eee633d899fed51c3aa7219cb279b2c270d6466d918', '[\"*\"]', NULL, NULL, '2025-04-26 19:50:06', '2025-04-26 19:50:06'),
(84, 'App\\Models\\User', 3, 'auth_token', '5410f2a33b1506196a3abed18c001e13faf050913b3bf2dd1b04a19b792c0516', '[\"*\"]', NULL, NULL, '2025-04-27 00:58:52', '2025-04-27 00:58:52'),
(85, 'App\\Models\\User', 3, 'auth_token', '12c52917eb8c20529ec8f251519e0ec0fc1591734827cbbe5f2782369fd1b3f4', '[\"*\"]', NULL, NULL, '2025-04-27 01:26:29', '2025-04-27 01:26:29'),
(86, 'App\\Models\\User', 3, 'auth_token', '820859a7082cac332e68fa8d4975eac105c9a239205e3224d4f0a4efde37fca9', '[\"*\"]', NULL, NULL, '2025-04-27 01:28:55', '2025-04-27 01:28:55'),
(87, 'App\\Models\\User', 3, 'auth_token', '13b56b05159623d8d862547208e6ed559e7fc292dce13cfe782e51c46279503b', '[\"*\"]', NULL, NULL, '2025-04-28 00:33:30', '2025-04-28 00:33:30'),
(88, 'App\\Models\\User', 3, 'auth_token', 'b0e6e47d45ca506bcd6a81df8ac03b781b8ee0f99e53a122b10071acdc6fd9cd', '[\"*\"]', '2025-04-29 19:53:01', NULL, '2025-04-28 19:44:39', '2025-04-29 19:53:01'),
(89, 'App\\Models\\User', 3, 'auth_token', '40775c7370167e8dc0b145c8ba162c30c3a0fd21140d50383cd0755e528f61ef', '[\"*\"]', NULL, NULL, '2025-04-29 20:51:44', '2025-04-29 20:51:44'),
(90, 'App\\Models\\User', 3, 'auth_token', 'e42333359a2cbbf816fa235aec2d80e492b3c75fb362547355010e0c61b363bc', '[\"*\"]', NULL, NULL, '2025-05-05 20:04:43', '2025-05-05 20:04:43'),
(91, 'App\\Models\\User', 3, 'auth_token', '11c8175bf72a48b181ba62d454a6ead22361495331aa9dd2560e51f9829e7423', '[\"*\"]', NULL, NULL, '2025-05-09 00:21:17', '2025-05-09 00:21:17'),
(92, 'App\\Models\\User', 23, 'auth_token', '5ac36c994ed1034829d7fc8b19acf9a5d2c75bc1ea5485533a3df5a37905644c', '[\"*\"]', NULL, NULL, '2025-05-09 00:21:29', '2025-05-09 00:21:29'),
(93, 'App\\Models\\User', 3, 'auth_token', '5445b39f9c721c538444f7d98715429ce3cf88d1fa99d07eb17aecbf2951b590', '[\"*\"]', NULL, NULL, '2025-05-09 21:40:55', '2025-05-09 21:40:55'),
(94, 'App\\Models\\User', 23, 'auth_token', '62c828a2ed130a49fa8755546cd21d3e07737664fc0523b39c0a40ee3053802f', '[\"*\"]', NULL, NULL, '2025-05-09 21:41:04', '2025-05-09 21:41:04'),
(95, 'App\\Models\\User', 3, 'auth_token', '14826a6f17557d9aaf3796e166faa8a84b1df3eb7507b2770622efc0d8893fa3', '[\"*\"]', '2025-05-12 23:47:02', NULL, '2025-05-12 23:42:59', '2025-05-12 23:47:02'),
(96, 'App\\Models\\User', 23, 'auth_token', '12699c35dcff761c6d31bab8eff39bc55940c6b63215b6cd883cf6ef0fa3a3ca', '[\"*\"]', '2025-05-12 23:52:42', NULL, '2025-05-12 23:48:20', '2025-05-12 23:52:42'),
(97, 'App\\Models\\User', 3, 'auth_token', '3f826be01d438f9ef951e69cd00cb97c83654d976d43272f85c97c2cf1f2cfac', '[\"*\"]', NULL, NULL, '2025-05-13 00:12:09', '2025-05-13 00:12:09'),
(98, 'App\\Models\\User', 23, 'auth_token', 'b7be626197f455efddf84e1f3a15b040b6cad074f810fa497ab699f0d8c7071c', '[\"*\"]', NULL, NULL, '2025-05-15 07:00:06', '2025-05-15 07:00:06'),
(99, 'App\\Models\\User', 23, 'auth_token', '5adc6900439c8c2934f4ce128405ff58dd889947acdade0e9d5c5fe75841aeaa', '[\"*\"]', NULL, NULL, '2025-05-15 07:01:17', '2025-05-15 07:01:17'),
(100, 'App\\Models\\User', 23, 'auth_token', '15655c536887f28a6cb546e9fe7b94d32193d203fea2958a0d329f3aec2a61ac', '[\"*\"]', NULL, NULL, '2025-05-15 07:06:45', '2025-05-15 07:06:45'),
(101, 'App\\Models\\User', 23, 'auth_token', 'd6f0b84ec52de27307cc39902ee4f2004218614a96fd3cf1d16ce0621319fd61', '[\"*\"]', NULL, NULL, '2025-05-15 07:16:04', '2025-05-15 07:16:04'),
(102, 'App\\Models\\User', 13, 'auth_token', '934e0a3ba35a5a1056a4e8c5790cc2654b724f877bd8b2dc61dad2facf7463ae', '[\"*\"]', NULL, NULL, '2025-05-16 05:51:01', '2025-05-16 05:51:01'),
(103, 'App\\Models\\User', 23, 'auth_token', '20cbc75fbb17302ff68c499700d9fa67dfba26141a7b11394ef0d1c7404bb896', '[\"*\"]', NULL, NULL, '2025-05-18 20:21:11', '2025-05-18 20:21:11'),
(104, 'App\\Models\\User', 3, 'auth_token', '1cfa7636dabd33c56c7737f97da001fcbb53c72249ae7f2e34b3a8588a6e13d4', '[\"*\"]', NULL, NULL, '2025-05-18 20:27:47', '2025-05-18 20:27:47'),
(105, 'App\\Models\\User', 3, 'auth_token', '2782a01cff3d4314470f60f06530d5bd15b4e94c9ab1dcd8fa25be579d28db3f', '[\"*\"]', NULL, NULL, '2025-05-19 04:27:34', '2025-05-19 04:27:34'),
(106, 'App\\Models\\User', 3, 'auth_token', '2463b7870c21da9c737b281f895e6c8761cdaa17e1172c1e78d4881eadbef4e5', '[\"*\"]', NULL, NULL, '2025-05-20 01:12:37', '2025-05-20 01:12:37'),
(107, 'App\\Models\\User', 3, 'auth_token', '6dc5f5f44a913a24867386ef70b0f0db78798f54da273c522fff32c207bf631b', '[\"*\"]', NULL, NULL, '2025-05-20 06:51:53', '2025-05-20 06:51:53'),
(108, 'App\\Models\\User', 3, 'auth_token', '61188c575fac8706a804bbcbb297590dcd1524154bc572a742429e598c5c81d1', '[\"*\"]', NULL, NULL, '2025-05-20 06:53:07', '2025-05-20 06:53:07'),
(109, 'App\\Models\\User', 23, 'auth_token', '24caa5721f472bea1b8777a01e8606b4d60261acf5befe8b005729a62988b760', '[\"*\"]', NULL, NULL, '2025-05-22 01:00:31', '2025-05-22 01:00:31'),
(110, 'App\\Models\\User', 23, 'auth_token', 'e5a20036c79164971d467cbc7bad566a7405cbb194653ad759e81b49b6fabecf', '[\"*\"]', NULL, NULL, '2025-05-22 01:27:26', '2025-05-22 01:27:26'),
(111, 'App\\Models\\User', 23, 'auth_token', '6f6699cb082ed36caa866c12c7237a1e378b242041f1c3ebdc38ae61d56895cc', '[\"*\"]', NULL, NULL, '2025-05-22 01:28:55', '2025-05-22 01:28:55'),
(112, 'App\\Models\\User', 23, 'auth_token', '927e06ff2470ec68efea49bd5bd378318c41fb2bf3e58008e70ea8d8ec7de1ae', '[\"*\"]', NULL, NULL, '2025-05-22 01:54:12', '2025-05-22 01:54:12'),
(113, 'App\\Models\\User', 23, 'auth_token', '56ba78923927a663ab3af2eace32bd530ffc6f29e5d71f24666294a9596197e3', '[\"*\"]', NULL, NULL, '2025-05-22 01:55:26', '2025-05-22 01:55:26'),
(114, 'App\\Models\\User', 3, 'auth_token', 'fc6fbc780c4848aef49a7880414cfb322f18700ac8253752ed1842d3028b89e8', '[\"*\"]', NULL, NULL, '2025-05-22 17:48:34', '2025-05-22 17:48:34'),
(115, 'App\\Models\\User', 3, 'auth_token', 'c12edf6d311f06be37ae18e895c98bec114b3e12079469c7e9557836c9bbb188', '[\"*\"]', NULL, NULL, '2025-05-22 17:53:02', '2025-05-22 17:53:02'),
(116, 'App\\Models\\User', 23, 'auth_token', 'e638a68fa832cbeb2d7e56095cfccfcd49bde718423309c3c17bbff2b602b2c8', '[\"*\"]', NULL, NULL, '2025-05-22 19:23:57', '2025-05-22 19:23:57'),
(117, 'App\\Models\\User', 23, 'auth_token', '27ccaa38e15cc425bd99be8d79a6d326dd6e5976c2d442b2b0973f8d760b6a2f', '[\"*\"]', '2025-05-22 20:45:20', NULL, '2025-05-22 20:40:57', '2025-05-22 20:45:20'),
(118, 'App\\Models\\User', 23, 'auth_token', 'ad04e6f406e24b22c54e554cd476405597b69c8692215a2e831296b81577b3b4', '[\"*\"]', NULL, NULL, '2025-05-24 02:46:23', '2025-05-24 02:46:23'),
(119, 'App\\Models\\User', 3, 'auth_token', '95180fd8983d09ef5fece58f8c06f03e8810a298e6cc17c1186fb98ef6f5aa7a', '[\"*\"]', NULL, NULL, '2025-05-24 02:48:04', '2025-05-24 02:48:04'),
(120, 'App\\Models\\User', 23, 'auth_token', '7d2f3ce9154dc58bb8808bc5ca0963d6d7e3f823f2f00e79c5cb00996acad6b6', '[\"*\"]', NULL, NULL, '2025-05-24 03:00:33', '2025-05-24 03:00:33'),
(121, 'App\\Models\\User', 23, 'auth_token', 'd4af27ddf9cf7116e273e7536db827e89b2e028bf5107aa05dbd481681582441', '[\"*\"]', NULL, NULL, '2025-05-24 03:01:20', '2025-05-24 03:01:20'),
(122, 'App\\Models\\User', 3, 'auth_token', 'c19f8ae74a49ae385c9a7bd53c61c9cd9c56718fac0375b9e0073038be5acfc7', '[\"*\"]', NULL, NULL, '2025-05-24 03:04:52', '2025-05-24 03:04:52'),
(123, 'App\\Models\\User', 23, 'auth_token', '768ad69d49382c4efce7b2b7322c4100a21f200b7e82680340ab05c3708bb9e7', '[\"*\"]', NULL, NULL, '2025-05-24 03:14:21', '2025-05-24 03:14:21'),
(124, 'App\\Models\\User', 23, 'auth_token', '40090655f528be17c372f144497626d94fd8a984b85f5a1c7bed9119d6d83c18', '[\"*\"]', NULL, NULL, '2025-05-24 03:25:25', '2025-05-24 03:25:25'),
(125, 'App\\Models\\User', 23, 'auth_token', '4714a772772a1f487672114929d715cfd54378212432bd9a1432eb318d8f133d', '[\"*\"]', '2025-05-24 04:56:44', NULL, '2025-05-24 04:55:23', '2025-05-24 04:56:44'),
(126, 'App\\Models\\User', 24, 'auth_token', 'a08e0078818173d93ff07a56b87cbbd75db385e6f59cfa8eb32de87de0a97556', '[\"*\"]', NULL, NULL, '2025-05-24 06:49:54', '2025-05-24 06:49:54'),
(127, 'App\\Models\\User', 24, 'auth_token', '898db85898e759de0512e15926f014246b1d41fd8462f2f817e0b1ddb799f12d', '[\"*\"]', NULL, NULL, '2025-05-24 06:51:10', '2025-05-24 06:51:10'),
(128, 'App\\Models\\User', 25, 'auth_token', 'b0e9d7cc26f6f1a8af9caab005792335015472f71eecd6c4df307e6e6ab50a38', '[\"*\"]', NULL, NULL, '2025-05-24 06:59:26', '2025-05-24 06:59:26'),
(129, 'App\\Models\\User', 26, 'auth_token', '02a3c7051fca103495fa0e4496945de60b901e4a10c4f7387c1a6045887d14b7', '[\"*\"]', NULL, NULL, '2025-05-24 07:01:52', '2025-05-24 07:01:52'),
(130, 'App\\Models\\User', 25, 'auth_token', '297d02745e3e1204d4a912ed7d621465a0f3670e2581b966d2dc0202de74072b', '[\"*\"]', NULL, NULL, '2025-05-24 07:18:13', '2025-05-24 07:18:13'),
(131, 'App\\Models\\User', 27, 'auth_token', 'df6e50e313f3b8a95f6a7f316495314b0b4e611242fc6a38c7a197d158cc0be8', '[\"*\"]', NULL, NULL, '2025-05-24 07:19:46', '2025-05-24 07:19:46'),
(132, 'App\\Models\\User', 23, 'auth_token', 'f3d5bf914f8baf22eb4675a0c21f56494bd6c517e00ec0e0439f6e088962c3ca', '[\"*\"]', NULL, NULL, '2025-05-24 07:30:54', '2025-05-24 07:30:54'),
(133, 'App\\Models\\User', 26, 'auth_token', '52a41a10bf8fd84fab5184d9aa40f847e5b50fd721fadf585207e8fc5ed2f818', '[\"*\"]', NULL, NULL, '2025-05-24 07:31:22', '2025-05-24 07:31:22'),
(134, 'App\\Models\\User', 23, 'auth_token', '5801b71c6fedb61b9acf50f1ca9b8c62fc29189c03dcb8e1a12b755f238a60b6', '[\"*\"]', NULL, NULL, '2025-05-25 05:29:35', '2025-05-25 05:29:35'),
(135, 'App\\Models\\User', 28, 'auth_token', '4c6a2015024c0e9cffc4067ba7067730921976ba63973cb6923704bbaa57ab56', '[\"*\"]', NULL, NULL, '2025-05-25 05:33:11', '2025-05-25 05:33:11'),
(136, 'App\\Models\\User', 27, 'auth_token', '4662b6515adc50f91c2950fa1505750e33ea62d07d20a32e9e19aa43ebe5a4a3', '[\"*\"]', NULL, NULL, '2025-05-25 05:51:02', '2025-05-25 05:51:02'),
(137, 'App\\Models\\User', 23, 'auth_token', 'c580a435c1d2cd76025fb58f5844c6fcdbba0410fd3120175a8658dc08488184', '[\"*\"]', NULL, NULL, '2025-05-25 05:53:38', '2025-05-25 05:53:38'),
(138, 'App\\Models\\User', 23, 'auth_token', 'd385558b8b5fdf4b2e43d320bfbbc57bf7aa7779311187482e6773c5fa16618e', '[\"*\"]', NULL, NULL, '2025-05-25 06:28:00', '2025-05-25 06:28:00'),
(139, 'App\\Models\\User', 3, 'auth_token', '2f4dcfb83e7320545f3736621aa3b9897a2cf616260a63cd1f565e70b0c96455', '[\"*\"]', NULL, NULL, '2025-05-25 07:00:30', '2025-05-25 07:00:30'),
(140, 'App\\Models\\User', 3, 'auth_token', '70200b3aa1c930d597dec346166aa4ef7310f9480031ce9bb3a5d430e5f7afb8', '[\"*\"]', '2025-05-26 02:38:46', NULL, '2025-05-26 00:05:50', '2025-05-26 02:38:46'),
(141, 'App\\Models\\User', 3, 'auth_token', '1801b552925aaa34f2c84a88587815148b54a55d18859c9d79f6e90ed667f770', '[\"*\"]', NULL, NULL, '2025-05-26 06:27:54', '2025-05-26 06:27:54'),
(142, 'App\\Models\\User', 3, 'auth_token', '78054267d67265e1b2e9869ed4d93cb1ea7778fc57e309f1dcb68fc9a4ccc0dc', '[\"*\"]', NULL, NULL, '2025-05-26 06:30:29', '2025-05-26 06:30:29'),
(143, 'App\\Models\\User', 3, 'auth_token', '4fe2dd8ac33bd6ab54a96d03f11477e30fadffba8f118b7b71e98d61d37cffae', '[\"*\"]', '2025-05-26 15:35:15', NULL, '2025-05-26 06:48:29', '2025-05-26 15:35:15'),
(144, 'App\\Models\\User', 3, 'auth_token', 'd423d7f9dbb7b506dbab892d80a0febf6cb3e5498a5aeac661215fcb482a6418', '[\"*\"]', '2025-05-26 20:34:14', NULL, '2025-05-26 20:25:20', '2025-05-26 20:34:14'),
(145, 'App\\Models\\User', 3, 'auth_token', '0873ca64362c06ce1c506075391aa83f096508ad1b8a958bb1a656c5e86ae1a9', '[\"*\"]', NULL, NULL, '2025-05-26 20:53:46', '2025-05-26 20:53:46'),
(146, 'App\\Models\\User', 3, 'auth_token', '9faced7c2f3d20c5910eac50093eefab771954eee294313b48066c129539f895', '[\"*\"]', NULL, NULL, '2025-05-27 23:07:07', '2025-05-27 23:07:07'),
(147, 'App\\Models\\User', 3, 'auth_token', '89134a469a79545a0216db89a8bf572e36a0ce3e3c7a3df803d3458b50568811', '[\"*\"]', NULL, NULL, '2025-05-28 04:58:43', '2025-05-28 04:58:43'),
(148, 'App\\Models\\User', 3, 'auth_token', 'e175850e4b0b1b9abdec25aa64af0e9cd118dab0506231c990abcb27c252f73c', '[\"*\"]', NULL, NULL, '2025-05-29 18:26:35', '2025-05-29 18:26:35'),
(149, 'App\\Models\\User', 1, 'auth_token', '8a69bfe86c4472ce04bc3649e25594ac0b326a5a64870d66b08e0ddfae11d45b', '[\"*\"]', NULL, NULL, '2025-05-30 06:06:07', '2025-05-30 06:06:07'),
(150, 'App\\Models\\User', 3, 'auth_token', 'f07beb83640ea18a0b3b1fc427513557ad4622f7953f108c02b72a71c6d22aa9', '[\"*\"]', NULL, NULL, '2025-05-30 06:16:32', '2025-05-30 06:16:32'),
(151, 'App\\Models\\User', 3, 'auth_token', '5fafb809186ba32bcc9af04b60dd2f15467104cd63431c528f1bd2c6a703c26b', '[\"*\"]', NULL, NULL, '2025-05-30 22:56:18', '2025-05-30 22:56:18'),
(152, 'App\\Models\\User', 3, 'auth_token', 'c536856e0dffcc74f1deed74dde9811620e8d077b40c8e75238d2d105a90a328', '[\"*\"]', NULL, NULL, '2025-05-30 23:23:19', '2025-05-30 23:23:19'),
(153, 'App\\Models\\User', 3, 'auth_token', '8962700c36e9462550c941a6c04461bb45c1521a4024d7a77f71db219832259a', '[\"*\"]', NULL, NULL, '2025-05-31 19:33:43', '2025-05-31 19:33:43'),
(154, 'App\\Models\\User', 23, 'auth_token', '1bb8bbc0d05989a94024fbb53311bff42c808a425b36cf726787199df630018b', '[\"*\"]', NULL, NULL, '2025-05-31 19:41:34', '2025-05-31 19:41:34'),
(155, 'App\\Models\\User', 3, 'auth_token', '8a8464f2a96e52dc6ea045f706a9255e713e001b9d5cc98d63babd84cfb0ceff', '[\"*\"]', NULL, NULL, '2025-05-31 22:37:24', '2025-05-31 22:37:24'),
(156, 'App\\Models\\User', 23, 'auth_token', '16d2e0b51e97eb74c2af3215fe8a5193f2a5017587bf5b5051a7ba67cd1b3d27', '[\"*\"]', NULL, NULL, '2025-06-01 00:20:50', '2025-06-01 00:20:50'),
(157, 'App\\Models\\User', 3, 'auth_token', '3ea4271a507de737a87c81db6a42df87bf742d2ee6d757c4f5ff6ab89b6ddfb0', '[\"*\"]', NULL, NULL, '2025-06-01 19:29:51', '2025-06-01 19:29:51'),
(158, 'App\\Models\\User', 23, 'auth_token', '3152675e217ded95f2c584183f31403fb9e7e1f4e19707f807d561c1d2723412', '[\"*\"]', NULL, NULL, '2025-06-01 19:53:14', '2025-06-01 19:53:14'),
(159, 'App\\Models\\User', 3, 'auth_token', 'fb9d581b75cb528a180679b502e24f8e860dddfe86432f60d176843f0eaa841f', '[\"*\"]', NULL, NULL, '2025-06-01 19:53:25', '2025-06-01 19:53:25'),
(160, 'App\\Models\\User', 3, 'auth_token', '2e214874cf5db43a6f1183dd1021d5d9edf4d39144e99c96a7d4fd1a39a7a943', '[\"*\"]', NULL, NULL, '2025-06-02 01:37:48', '2025-06-02 01:37:48'),
(161, 'App\\Models\\User', 3, 'auth_token', '67a68bb799e9202f59a12d234e1d7ca653848b2e64fe4396bf8ed09df7074f24', '[\"*\"]', NULL, NULL, '2025-06-02 19:08:02', '2025-06-02 19:08:02'),
(162, 'App\\Models\\User', 23, 'auth_token', '4a2550f8a9a77e28331e9d3b84c87c7fe814fcceada3ddd02bf7312db3922e18', '[\"*\"]', NULL, NULL, '2025-06-02 21:24:20', '2025-06-02 21:24:20'),
(163, 'App\\Models\\User', 23, 'auth_token', '415b8af2ef00d4b8f8622bff9c269ca29972cba6673e39b8490870612300feaf', '[\"*\"]', NULL, NULL, '2025-06-07 08:54:32', '2025-06-07 08:54:32'),
(164, 'App\\Models\\User', 3, 'auth_token', '22b21ad5b8036eec06bf3903f8640d8c16b67982fdbdfaae783bd4b086153d52', '[\"*\"]', NULL, NULL, '2025-06-07 17:56:41', '2025-06-07 17:56:41'),
(165, 'App\\Models\\User', 23, 'auth_token', '294fdb896734a3917805e23a94dbff5d249e812660d9fc9195ff1628f1fb21fb', '[\"*\"]', NULL, NULL, '2025-06-10 06:51:25', '2025-06-10 06:51:25'),
(166, 'App\\Models\\User', 23, 'auth_token', '3e0076c3661cf1c7674bd83dfef66f777419a2f9ac4390407f413c17dfaaf036', '[\"*\"]', NULL, NULL, '2025-06-10 07:08:11', '2025-06-10 07:08:11'),
(167, 'App\\Models\\User', 23, 'auth_token', '34555324fd2587adeeb0bbf81c2b6bd65779ef0c2ae971b198846ac708d14f51', '[\"*\"]', NULL, NULL, '2025-06-10 17:43:31', '2025-06-10 17:43:31'),
(168, 'App\\Models\\User', 23, 'auth_token', 'caa60f12478aa920ccff20a137e979600fc5f46f57a8b0e2d607acb355cf4cef', '[\"*\"]', NULL, NULL, '2025-06-10 17:47:23', '2025-06-10 17:47:23'),
(169, 'App\\Models\\User', 23, 'auth_token', '0c9e4606e19b3fa09107c00c09ee595072072e330fcd9f226e247440583cf60c', '[\"*\"]', NULL, NULL, '2025-06-10 17:51:51', '2025-06-10 17:51:51'),
(170, 'App\\Models\\User', 23, 'auth_token', '5d385e70eb76827f80390e0487ba74bf7f19d565df1ae917548763c6a43e5590', '[\"*\"]', NULL, NULL, '2025-06-10 22:22:31', '2025-06-10 22:22:31'),
(171, 'App\\Models\\User', 23, 'auth_token', '2209f70299a74915948ec785a3bd76d87e9d133180b04db3aed7cc0d452346fd', '[\"*\"]', NULL, NULL, '2025-06-16 00:54:57', '2025-06-16 00:54:57'),
(172, 'App\\Models\\User', 23, 'auth_token', 'cffbce15b28d4150d99b2ab3f57daa01dd0ab1437672a7305eddc553b57b331e', '[\"*\"]', NULL, NULL, '2025-06-16 01:12:33', '2025-06-16 01:12:33'),
(173, 'App\\Models\\User', 23, 'auth_token', '2143ae696bd1d7f40ad205f50d4b8d7d9728398235d31716a61c9cd7dc67024d', '[\"*\"]', NULL, NULL, '2025-06-16 08:05:53', '2025-06-16 08:05:53'),
(174, 'App\\Models\\User', 23, 'auth_token', 'b04bfe974afa6a88feeff7f2d64cb7f1608e6f515d6cee34b3f914f45cab5c3c', '[\"*\"]', NULL, NULL, '2025-06-16 08:08:43', '2025-06-16 08:08:43'),
(175, 'App\\Models\\User', 23, 'auth_token', '3f89152c0e2cd37b3efe89919dfccf8d0a69566e5a6ca8a4e5a2a97a36ee2e22', '[\"*\"]', NULL, NULL, '2025-06-17 21:47:11', '2025-06-17 21:47:11'),
(176, 'App\\Models\\User', 23, 'auth_token', '8bb4b541cd3f850b8cf2f520d6db9fcb1760c69fc1e76c404e5076b68e7d5535', '[\"*\"]', NULL, NULL, '2025-06-17 22:31:34', '2025-06-17 22:31:34'),
(177, 'App\\Models\\User', 23, 'auth_token', '263fdba6f2a891583c9712d21830df2b3df098f4bf94061f12b8a3f970b2f6b3', '[\"*\"]', NULL, NULL, '2025-06-17 22:32:26', '2025-06-17 22:32:26'),
(178, 'App\\Models\\User', 23, 'auth_token', 'a27731af6d2d26d459e72f5be85cd43f5e825cd262d67bf839f733239d0d8771', '[\"*\"]', NULL, NULL, '2025-06-18 01:05:40', '2025-06-18 01:05:40'),
(179, 'App\\Models\\User', 3, 'auth_token', 'ea016cca114974a481db9460e8ecf7c137bda999b42bce6a98517463a7a4ed13', '[\"*\"]', NULL, NULL, '2025-06-18 07:04:38', '2025-06-18 07:04:38'),
(180, 'App\\Models\\User', 23, 'auth_token', '28585e45b3d5e77ef606238ddceba0bb27cf143b82468d734fb89cec008d59a4', '[\"*\"]', NULL, NULL, '2025-06-18 18:15:49', '2025-06-18 18:15:49'),
(181, 'App\\Models\\User', 23, 'auth_token', 'e5e66a7100da5d9d9945908c13bb57bde2d15f63be5a0bef952f3a70239f1334', '[\"*\"]', NULL, NULL, '2025-06-19 02:22:44', '2025-06-19 02:22:44'),
(182, 'App\\Models\\User', 23, 'auth_token', '673d9621ff0ee2545011c4762e0f78a8985e6b8831c01e1205ca773050bfb2f0', '[\"*\"]', NULL, NULL, '2025-06-19 07:29:26', '2025-06-19 07:29:26'),
(183, 'App\\Models\\User', 23, 'auth_token', 'b5ddb82f400aff08fe541e82edf85a2e178c89656752ab75ede3a409921c92cf', '[\"*\"]', NULL, NULL, '2025-06-19 15:12:31', '2025-06-19 15:12:31'),
(184, 'App\\Models\\User', 23, 'auth_token', '885fd26c5c0dcc02ba5bdb1859e1658465af89a3c32a42a5bd447e18a5bb000d', '[\"*\"]', '2025-06-19 21:29:21', NULL, '2025-06-19 19:45:01', '2025-06-19 21:29:21'),
(185, 'App\\Models\\User', 23, 'auth_token', '90087ed7315b8522c3b26c726b48e04841d3f8f2b1b1a71d4da98327977209ec', '[\"*\"]', NULL, NULL, '2025-06-23 06:29:09', '2025-06-23 06:29:09'),
(186, 'App\\Models\\User', 3, 'auth_token', '73a4a581012c01f70ab7070fa332c905c10cefad4ae55b6d8f7a53023ae16f87', '[\"*\"]', NULL, NULL, '2025-06-23 06:55:47', '2025-06-23 06:55:47'),
(187, 'App\\Models\\User', 23, 'auth_token', '292cc45e1112c2ed72e612ed117196f78bc445d2306cd9d5ec7fca5405ab8a98', '[\"*\"]', NULL, NULL, '2025-06-23 08:00:44', '2025-06-23 08:00:44'),
(188, 'App\\Models\\User', 23, 'auth_token', '9628ac6e3f873ca837ac82742a6d1ca599cefe3616ed7b4419034d45c98967f5', '[\"*\"]', '2025-06-23 08:08:35', NULL, '2025-06-23 08:07:41', '2025-06-23 08:08:35'),
(189, 'App\\Models\\User', 23, 'auth_token', '5c64763493ac95d057121ecd9e71faab039edd938e9c641959e56da3994ba620', '[\"*\"]', NULL, NULL, '2025-06-26 14:34:29', '2025-06-26 14:34:29'),
(190, 'App\\Models\\User', 29, 'auth_token', '2075a557341d7f774b2f7be10d8b8711390dcf6b98e57f7f15a5d4227544f302', '[\"*\"]', NULL, NULL, '2025-06-26 14:50:03', '2025-06-26 14:50:03'),
(191, 'App\\Models\\User', 29, 'auth_token', '35fefb78100278d3e78f0c629ab83a3e1d0ff639844da3040f4ce829a1c817a3', '[\"*\"]', NULL, NULL, '2025-06-26 14:51:05', '2025-06-26 14:51:05'),
(192, 'App\\Models\\User', 29, 'auth_token', '14fda21f1eb2b83d424ff6555ac203267dd7ac1876f6a1c9b05373ae8a123085', '[\"*\"]', NULL, NULL, '2025-06-26 15:26:45', '2025-06-26 15:26:45'),
(193, 'App\\Models\\User', 2, 'auth_token', '302a6a88921977600b9686707cef5a44db028e8fa56da3310c2943c76f9b912a', '[\"*\"]', NULL, NULL, '2025-06-26 15:27:00', '2025-06-26 15:27:00'),
(194, 'App\\Models\\User', 29, 'auth_token', '156e9cb5c7a1f8fad63c83b33afdd5e138e1242fc9b9e947886152c336699de4', '[\"*\"]', NULL, NULL, '2025-06-26 21:07:26', '2025-06-26 21:07:26'),
(195, 'App\\Models\\User', 30, 'auth_token', '9810459133cf26751de07bb53e0f6a94592735664cf369ace9ff66394299eae7', '[\"*\"]', NULL, NULL, '2025-06-26 21:15:59', '2025-06-26 21:15:59'),
(196, 'App\\Models\\User', 31, 'auth_token', '560a4169a3a99cd9998fd99cbaa47145354120dfe0ff0bc7f620372a49686501', '[\"*\"]', NULL, NULL, '2025-06-26 21:16:48', '2025-06-26 21:16:48'),
(197, 'App\\Models\\User', 32, 'auth_token', 'daedeeafe1a5fa51ff9e9669bcf0ab2a7051074c0cbe386debab218e62099905', '[\"*\"]', NULL, NULL, '2025-06-26 21:17:18', '2025-06-26 21:17:18'),
(198, 'App\\Models\\User', 33, 'auth_token', 'f86d73ae9ea191caa130d8dc67188e953d80d8175fcf9027497a9319c411ce61', '[\"*\"]', NULL, NULL, '2025-06-26 21:17:59', '2025-06-26 21:17:59'),
(199, 'App\\Models\\User', 34, 'auth_token', '7e651454e35fc95f4e08041f4511c4a256806df330d1ba6cd7165b01d9be25ac', '[\"*\"]', NULL, NULL, '2025-06-26 21:19:40', '2025-06-26 21:19:40'),
(200, 'App\\Models\\User', 35, 'auth_token', '89a7cad11f145e1295d89f75dfa8f35b35f04f398cbf15a3e97b0f3a5096ca65', '[\"*\"]', NULL, NULL, '2025-06-26 21:22:26', '2025-06-26 21:22:26'),
(201, 'App\\Models\\User', 36, 'auth_token', 'd9f104d86805a51d8d38fea049a992ddae10d19b93db17293e44166e0c911684', '[\"*\"]', NULL, NULL, '2025-06-26 21:23:27', '2025-06-26 21:23:27'),
(202, 'App\\Models\\User', 37, 'auth_token', 'c69ecc75b51d6c3e36d16563bf992884203eedf455325899a7f266a38be087ce', '[\"*\"]', NULL, NULL, '2025-06-26 21:24:10', '2025-06-26 21:24:10'),
(203, 'App\\Models\\User', 38, 'auth_token', '974cdfc9f3631caf0a7f4d6051efbc661e536ec4f81188d4d683c8ed1e2998f8', '[\"*\"]', NULL, NULL, '2025-06-26 21:24:39', '2025-06-26 21:24:39'),
(204, 'App\\Models\\User', 39, 'auth_token', 'e050af69c8417cf648e729cbdd1b49af959484f8fab55fcc33528d5759783541', '[\"*\"]', NULL, NULL, '2025-06-26 21:26:05', '2025-06-26 21:26:05'),
(205, 'App\\Models\\User', 40, 'auth_token', '7a94875c666b9981794b5d9d02499934d79df11275ddd5381a3070a96585aeb6', '[\"*\"]', NULL, NULL, '2025-06-26 21:26:38', '2025-06-26 21:26:38'),
(206, 'App\\Models\\User', 41, 'auth_token', '34e7bff14221cccb8da57c5556fed8445dd904bcbd2b096223dfde66e9ca9d7e', '[\"*\"]', NULL, NULL, '2025-06-26 21:27:15', '2025-06-26 21:27:15'),
(207, 'App\\Models\\User', 42, 'auth_token', '3b82cd12d89d17fc42cdd557423c1a15f939f6ad95adadeb5572f1b81ce85b86', '[\"*\"]', NULL, NULL, '2025-06-26 21:27:48', '2025-06-26 21:27:48'),
(208, 'App\\Models\\User', 43, 'auth_token', 'd02a635b3c8cbf7ad298e1045ba823922b43a77ae7f8a090ffd42241ff8bc6f7', '[\"*\"]', NULL, NULL, '2025-06-26 21:28:23', '2025-06-26 21:28:23'),
(209, 'App\\Models\\User', 44, 'auth_token', 'd3d8f52dbf394ec2d8ecd53dd96a2eadc9e123e71c5f455efdfeac0b3a004a5d', '[\"*\"]', NULL, NULL, '2025-06-26 21:32:43', '2025-06-26 21:32:43'),
(210, 'App\\Models\\User', 45, 'auth_token', 'cfc15e0d08b68de5cb3ad9e0e9580d0c6bf9103d83f7781c0524ed1875757791', '[\"*\"]', NULL, NULL, '2025-06-26 21:32:51', '2025-06-26 21:32:51'),
(211, 'App\\Models\\User', 46, 'auth_token', '87224a3dc2c09cc5782549350a7d9568f0154ede8c57f25f71eebe4ecb96b2bb', '[\"*\"]', NULL, NULL, '2025-06-26 21:33:57', '2025-06-26 21:33:57'),
(212, 'App\\Models\\User', 47, 'auth_token', '795767d41fa790f082460c01073eb8bcd7f434318fe8d90e93ed0d01d740d994', '[\"*\"]', NULL, NULL, '2025-06-26 21:34:33', '2025-06-26 21:34:33'),
(213, 'App\\Models\\User', 48, 'auth_token', '4bb8ef9d98ee0b6f74c97c2147a8e885a51ca479a73dddae689c6d305078e122', '[\"*\"]', NULL, NULL, '2025-06-26 21:35:34', '2025-06-26 21:35:34'),
(214, 'App\\Models\\User', 49, 'auth_token', '922e1683f1912c8e1d3d738ba453bd972ecbe7246bb80f03a45767fd51fd69fa', '[\"*\"]', NULL, NULL, '2025-06-26 21:36:59', '2025-06-26 21:36:59'),
(215, 'App\\Models\\User', 31, 'auth_token', '0e56aa58933de03c58122602bb074990add547df457b99bb889632b09f6621a8', '[\"*\"]', '2025-06-28 19:24:30', NULL, '2025-06-28 09:04:23', '2025-06-28 19:24:30'),
(216, 'App\\Models\\User', 31, 'auth_token', '52cc35eb8dcbef4697ae143e274e517f60c1c6f6ad04159b5d2710b0d5c88da6', '[\"*\"]', NULL, NULL, '2025-06-28 19:40:03', '2025-06-28 19:40:03'),
(217, 'App\\Models\\User', 3, 'auth_token', '487cd91f96e27297011d691b1259cbec4cfc9e503ea9af6fd1ef96601d34d4cc', '[\"*\"]', NULL, NULL, '2025-06-28 19:53:51', '2025-06-28 19:53:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `sub_category_id`, `brand_id`, `description`, `detail_description`, `created_at`, `updated_at`) VALUES
(34, 'Combo 5 Ream giấy A3 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 6, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A3</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 06:44:07', '2025-05-25 20:22:19'),
(37, 'Combo 5 Ream giấy A3 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 6, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A5</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 07:52:29', '2025-05-01 07:52:29'),
(38, 'Ream giấy A3 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 6, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A3</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 08:36:11', '2025-05-01 08:36:11'),
(39, 'Ream giấy A3 70 gsm IK Copy (500 tờ)', 6, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A3</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p>IK Copy là sự lựa chọn thích hợp cho mọi nhu cầu sử dụng. Thiết kế vượt trội chạy trên máy photocopy tốc độ cao, số lượng nhiều. Công nghệ Fast Copying ứng dụng trong IK Copy đã được kiểm chứng và tin dùng bởi chất lượng vận hành đồng bộ, không kẹt giấy.</p><p><strong>Đặc điểm&nbsp;sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p><p><strong>Cải tiến:</strong></p><p>- Độ dày nâng cao, Độ chắn sáng cao, Độ mịn cải tiến, Hình ảnh sắc nét hơn.</p><p><strong>Thích hợp sử dụng:</strong></p><p>- Thư tín, Báo cáo, Photocopy.</p>', '2025-05-01 08:56:20', '2025-05-01 08:56:20'),
(40, 'Combo 10 Ream giấy A4 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 7, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A4</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:02:14', '2025-05-01 09:02:14'),
(41, 'Combo 10 Ream giấy A4 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu', 7, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A4</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:04:34', '2025-05-01 09:04:34'),
(42, 'Combo 5 Ream giấy A4 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 7, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A4</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:07:09', '2025-05-01 09:07:09'),
(44, 'Combo 5 Ream giấy A4 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 7, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A4</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p>IK Copy là sự lựa chọn thích hợp cho mọi nhu cầu sử dụng. Thiết kế vượt trội chạy trên máy photocopy tốc độ cao, số lượng nhiều. Công nghệ Fast Copying ứng dụng trong IK Copy đã được kiểm chứng và tin dùng bởi chất lượng vận hành đồng bộ, không kẹt giấy.</p><p><strong>Đặc điểm&nbsp;sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p><p><strong>Cải tiến:</strong></p><p>- Độ dày nâng cao, Độ chắn sáng cao, Độ mịn cải tiến, Hình ảnh sắc nét hơn.</p><p><strong>Thích hợp sử dụng:</strong></p><p>- Thư tín, Báo cáo, Photocopy.</p>', '2025-05-01 09:17:59', '2025-05-01 09:17:59'),
(45, 'Ream giấy A4 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 7, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A4</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:28:14', '2025-05-01 09:28:14'),
(46, 'Combo 10 Ream giấy A5 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 8, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A5</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:30:45', '2025-05-01 09:30:45'),
(47, 'Combo 5 Ream giấy A5 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 8, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A5</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:32:51', '2025-05-01 09:32:51'),
(48, 'Ream giấy A5 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', 8, 2, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>IK</td></tr><tr><td>Kích thước</td><td>A5</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Quy cách</td><td>500 tờ / ream</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Giấy đều màu.</p><p>- Không gợn sóng, không xơ xước và không tách lớp.</p><p>- Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng.</p><p>- Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.</p>', '2025-05-01 09:34:37', '2025-05-01 09:34:37'),
(49, 'Combo giấy in văn phòng IK Copy 80 gsm tinh thông', 9, 2, NULL, '<p>Combo gồm 10 ream giấy IK Copy A4 80 gsm và Hộp 10 bút lông dầu.</p><p><img src=\"https://file.hstatic.net/1000230347/file/10ream_80___pm-04_xanh_copy_24d560f0778846b4adc502ffb8f5e41c_1024x1024.jpg\" width=\"900\" height=\"900\"></p>', '2025-05-01 09:39:05', '2025-05-01 09:39:05'),
(50, 'Combo giấy photo IK Copy A4 80 gsm tiết kiệm', 9, 2, NULL, '<p>Combo gồm 10 ream giấy IK Copy A4 80 gsm và Hộp 10 bút lông bảng.</p><p><img src=\"https://file.hstatic.net/1000230347/file/10ream_80___wb-03_xanh_copy_7d66cd513a274f3fb85e6e6e239d7c98_1024x1024.jpg\" width=\"900\" height=\"900\"></p>', '2025-05-01 09:41:11', '2025-05-01 09:41:11'),
(51, 'Combo giấy in văn phòng IK siêu tiết kiệm', 9, 2, NULL, '<p>Combo gồm 10 ream giấy IK Copy A4 80 gsm và Lốc 06 hộp mực bút lông dầu.</p><p><img src=\"https://file.hstatic.net/1000230347/file/10ream_80___pmi-01_xanh_copy_ed4cf3c5a2ab4a26b17dd9a47d6f2eb1_1024x1024.jpg\" width=\"900\" height=\"900\"></p>', '2025-05-01 09:42:30', '2025-05-01 09:42:30'),
(52, 'Bút bi đế cắm Thiên Long ECO Style PH-063/ECO - Mực Xanh - Chất liệu từ vỏ cám trấu', 10, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đường kính viên bi</td><td>0.5 mm</td></tr><tr><td>Kích thước</td><td>141.5 mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 001:2011/TL-BB</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>-&nbsp;Bút bi Thiên Long ECO Style TL-063/ECO, với 30-35% thành phần từ vỏ cám trấu, sử dụng bút ECO Style là góp phần đồng hành cùng Thiên Long bảo vệ môi trường xanh.</p>', '2025-05-01 09:53:18', '2025-05-01 09:53:18'),
(53, 'Bút bi Thiên Long ECO Style TL-063/ECO - Mực Xanh - Chất liệu từ vỏ cám trấu', 10, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đường kính viên bi</td><td>0.5 mm</td></tr><tr><td>Kích thước</td><td>141.5 mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 001:2011/TL-BB</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>-&nbsp;Bút bi Thiên Long ECO Style TL-063/ECO, với 30-35% thành phần từ vỏ cám trấu, sử dụng bút ECO Style là góp phần đồng hành cùng Thiên Long bảo vệ môi trường xanh.</p>', '2025-05-01 19:42:06', '2025-05-01 19:42:06'),
(54, 'Combo 5/10/20 Bút bi - Ballpoint Pen Candee Thiên Long TL-019', 10, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đường kính viên bi</td><td>0.6 mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 089:2014/TL-BĐ</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(55, 'Combo 20 Bút bi Maxxie Thiên Long Điểm 10 TP-05', 10, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đường kính viên bi</td><td>0.5 mm</td></tr><tr><td>Khối lượng mực</td><td>0.12 - 0.15 g</td></tr><tr><td>Đóng gói</td><td>20 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>9 gram/cây</td></tr></tbody></table></figure><p>Bút có thiết kế tối giản, nhưng tinh tế và ấn tượng. Toàn bộ thân bút làm từ nhựa cao cấp, phối hợp hoàn hảo với màu ruột bút bên trong.</p>', '2025-05-01 20:59:46', '2025-05-01 20:59:46'),
(56, 'Combo 5 Bút bi Điểm 10 TP-07', 10, 3, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Đường kính viên bi</td><td>0.5 mm</td></tr><tr><td>Khối lượng mực</td><td>0.12 - 0.15 g</td></tr><tr><td>Đóng gói</td><td>20 cây/hộp, 60 hộp/thùng</td></tr><tr><td>Trọng lượng</td><td>9 gram</td></tr></tbody></table></figure><p>Bút bi Điểm 10 TP-07 là một trong những cây bút đang được học sinh sử dụng nhiều nhất tại Việt Nam. Bút có thiết kế tối giản, nhưng tinh tế và ấn tượng. Toàn bộ thân bút làm từ nhựa màu trong, phối hợp hoàn hảo với màu ruột bút bên trong.</p><p><strong>Đặc điểm:</strong><br>-&nbsp; Bút bi dạng bấm cò.<br>- Nơi tì ngón tay có tiết diện hình tam giác vừa vặn với tay cầm giúp giảm trơn tuột khi viết thường xuyên.</p><p><strong>Lợi ích:</strong><br>- Đầu bi nhỏ cho nét chữ thanh mảnh.<br>- Cơ chế bấm nằm gọn dưới giắt bút, giúp thuận tay khi sử dụng.<br>- Thay ruột khi hết mực.</p><figure class=\"image\"><img style=\"aspect-ratio:600/600;\" src=\"https://file.hstatic.net/1000230347/file/tp-07-01_b13a4c1db0ac4d5a9aad55e3c648fdfb_grande.jpg\" alt=\"Bút bi Điểm 10 TP-07\" width=\"600\" height=\"600\"></figure>', '2025-05-01 21:03:18', '2025-05-01 21:03:18'),
(57, 'Hộp 5 bút dạ quang màu Pastel Thiên Long HL-019/DS - Phiên bản Demon Slayer', 11, 1, NULL, '<p><img src=\"https://product.hstatic.net/1000230347/product/hl-019_ds_f18ee10b6f65429f952a69f7cdf8c6b2.jpg\" width=\"1200\" height=\"1200\"></p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước thân</td><td>136.9mm</td></tr><tr><td>Bề rộng nét viết</td><td>1.0mm và 4.0mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 016:2011/TL-BDQ</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-01 21:07:44', '2025-05-01 21:07:44'),
(58, 'Combo 10 Bút dạ quang Hoshi Thiên Long HL-018/HS - Công nghệ Nhật Bản', 11, 1, NULL, '<p><img src=\"https://product.hstatic.net/1000230347/product/landing-page_06_71706ba36e3b4f248dcf1f83393cd351.jpg\" width=\"1200\" height=\"1170\"></p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước thân</td><td>140mm;&nbsp;Ø12.37</td></tr><tr><td>Bề rộng nét viết</td><td>1.0mm và 4.0mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 016:2011/TL-BDQ</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-01 21:11:17', '2025-05-01 21:11:17'),
(59, 'Bút dạ quang màu pastel - Eco Style Highlighter Thiên Long HL-015/ECO - Photocopy không làm mất nét chữ bên dưới', 11, 1, NULL, '<p><img src=\"https://product.hstatic.net/1000230347/product/landing-page_12_5a6a6de0eb4649f283456ceb7c144e6c.jpg\" width=\"1200\" height=\"820\"></p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút dạ quang</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Bề rộng nét viết</td><td>4.0 mm</td></tr><tr><td>Chất liệu</td><td>TEXa® G2341 (Certified Biobased USDA - Mỹ)&nbsp;và Vỏ trấu phế phẩm nông nghiệp.</td></tr><tr><td>Đóng gói</td><td>01 cây/ kiện.</td></tr><tr><td>Trọng lượng</td><td>25 gram</td></tr><tr><td>Kích thước bút</td><td>108.3 x 21.2 x 14.8 mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 016:2011/TL-BDQ</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>Bút dùng để đánh dấu trên giấy tập học sinh, các loại sách hoặc giấy photocopy mà không làm mất nét chữ bên dưới.</p>', '2025-05-01 21:15:24', '2025-05-01 21:15:24'),
(60, 'Combo 10 Bút dạ quang màu Pastel Thiên Long Flexoffice Pazto FO-HL009/VN - Bút dạ quang rửa được - Photocopy không làm mất nét chữ bên dưới', 11, 4, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>260 gram</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Kích thước bút</td><td>108.7 x 23.9 mm</td></tr><tr><td>Đóng gói</td><td>10 cây/ hộp/ kiện</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p>Thiết kế với 5 tone màu pastel bắt mắt, với thiết kế đơn giản, hiện đại, hợp thời trang, hợp xu hướng.</p><p>Tone màu&nbsp;Pastel&nbsp;- màu Vintage - màu&nbsp;dịu mát&nbsp;và ấm áp, mang lại sự nhẹ nhàng, thanh lịch, thoải mái…cho&nbsp;cảm giác mới lạ, nổi bật cá tính.</p><p>Không làm lem chữ, không để lại vết khi photocopy. Mực có thể rửa và giặt sạch nếu dính trên da và vải.</p>', '2025-05-02 01:32:42', '2025-05-02 01:32:42'),
(61, 'Bút dạ quang FlexOffice FO-HL01', 11, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút dạ quang</td></tr><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Bề rộng nét viết</td><td>đầu bút nhỏ : 1mm , đầu bút lớn : 5mm</td></tr><tr><td>Số đầu bút</td><td>2</td></tr><tr><td>Đóng gói</td><td>10 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>10 gram</td></tr><tr><td>Màu sắc</td><td>Vàng/Cam/Hồng/Xanh/Lá</td></tr></tbody></table></figure><p>Bút dạ quang FO-HL01 là sản phẩm mới thuộc dòng sản phẩm Officemate series do Tập đoàn Thiên Long sản xuất, mang nhãn hiệu Flexoffice.</p>', '2025-05-02 01:39:40', '2025-05-02 01:39:40'),
(62, 'Bút dạ quang FlexOffice FO-HL05', 11, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút dạ quang</td></tr><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Bề rộng nét viết</td><td>4 mm</td></tr><tr><td>Số đầu bút</td><td>1</td></tr><tr><td>Đóng gói</td><td>10 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>25 gram</td></tr><tr><td>Màu sắc</td><td>Vàng/Cam/Hồng/Xanh/Lá</td></tr></tbody></table></figure><p>Bút dạ quang còn được gọi là Bút đánh dấu. Bút dạ quang FO-HL05 là sản phẩm mới thuộc dòng sản phẩm Officemate series do Tập đoàn Thiên Long sản xuất, mang nhãn hiệu Flexoffice.</p>', '2025-05-02 01:45:16', '2025-05-02 01:45:16'),
(63, 'Bút xóa FlexOffice FO-CP01 PLUS', 12, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút xóa</td></tr><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Dung tích mực</td><td>12 ml</td></tr><tr><td>Hình dáng thân bút</td><td>Thân dẹp</td></tr><tr><td>Đóng gói</td><td>20 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>29 gram</td></tr></tbody></table></figure><p>Bút xóa Thiên Long - FlexOffice FO-CP01 Plus có kiểu dáng thân dẹp, vừa tầm tay, thuận tiện khi sử dụng. Cán bằng nhựa màu xanh dương thể hiện sự trẻ trung, năng động. Đầu bút bằng kim loại có lò xo đàn hồi tốt.&nbsp;</p><p><strong>Đặc điểm :</strong><br>- Mực dạng dung môi lỏng<br>- Công nghệ vượt trội giúp mực xuống đều hơn.<br>- Bút ít bị tắc mực, độ che phủ bề mặt tốt hơn và mau khô, giúp cho chữ viết rõ ràng, không bị lem, nhòe.<br>- An toàn với tầng Ozone.</p><p><strong>Lưu ý :</strong><br>- Đặt bút hướng lên khi không sử dụng<br>- Lưu trữ nơi khô ráo, thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời<br>- Lắc đều bút trước khi sử dụng</p><p><strong>Đặc biệt :</strong>&nbsp;Tăng thêm 2ml dung tích so với FO CP-01.</p>', '2025-05-02 01:50:21', '2025-05-02 01:50:21'),
(64, 'Bút xóa kéo FlexOffice FO-CT02 (Màu ngẫu nhiên)', 12, 4, NULL, '<p><img src=\"https://product.hstatic.net/1000230347/product/landing-page_12_8640246eb57a46a995218dd2fcbfc811.jpg\" width=\"1200\" height=\"799\"></p><p>&nbsp;</p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút xóa kéo</td></tr><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Bề rộng băng xóa</td><td>5 mm</td></tr><tr><td>Bề dài băng xóa</td><td>8 m</td></tr><tr><td>Đóng gói</td><td>1 cây/blister</td></tr></tbody></table></figure><p>Khác với sản phẩm bút xóa truyền thống, băng xóa kéo FO-CT02 là kết hợp của sự tiện lợi, nhanh chóng, vô cùng an toàn và thân thiện với môi trường. Sản phẩm được thiết kế trẻ trung, năng động, màu sắc tươi sáng, đây là sản phẩm rất phù hợp cho giới văn phòng hiện đại.</p><p><strong>Đặc tính :</strong><br>- An toàn, không độc hại<br>- Băng dài 8m, rộng 5mm, dẻo dai, độ bám dính tốt<br>- Thiết kế hiện đại, kiểu dáng nhỏ gọn, tiện dụng, xóa nhẹ, êm tay<br>- Bề mặt xóa nhẵn mịn,&nbsp;không để lại vết khi scan, fax</p>', '2025-05-02 01:54:19', '2025-05-02 01:54:19'),
(65, 'Bút xóa Thiên Long CP-02', 12, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút xóa</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Dung tích mực</td><td>12 ml</td></tr><tr><td>Hình dáng thân bút</td><td>Thân dẹp</td></tr><tr><td>Đóng gói</td><td>10 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>34 gram</td></tr></tbody></table></figure><p>Bút xóa Thiên Long CP-02 có kiểu dáng thân dẹp, vừa tầm tay, thuận tiện khi sử dụng. Cán bằng nhựa màu xanh lá thể hiện sự trẻ trung, năng động. Đầu bút bằng kim loại có lò xo đàn hồi tốt.</p><p><strong>Đặc điểm :</strong>&nbsp;</p><p>- Công nghệ vượt trội giúp mực xóa nhanh khô, che phủ tốt, không độc hại và an toàn với tầng ozone.</p><p>- Dung tích mực: 12 ml</p><p><strong>Lưu ý :</strong><br>- Đặt bút hướng lên khi không sử dụng<br>- Lưu trữ nơi khô ráo, thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời<br>- Lắc đều bút trước khi sử dụng.</p>', '2025-05-02 01:57:27', '2025-05-02 01:57:27'),
(66, 'Bút xóa kéo - Correction Tape Thiên Long - Khô siêu nhanh Viết được ngay sau khi xóa', 12, 1, NULL, '<p>Bút xóa kéo Thiên Long với tone màu pastel dễ thương, có độ che phủ tốt, phù hợp với nhiều loại bút và có thể viết ngay sau khi xóa.</p><p>&nbsp;</p><p>🔹TÍNH NĂNG SẢN PHẨM</p><p>▪️ Khô siêu nhanh, viết được ngay sau khi xóa.</p><p>▪️ Thiết kế tone màu pastel bắt mắt, hiện đại.</p><p>▪️ Băng xóa mượt, có độ che phủ tốt, không bong tróc.</p><p>▪️ Kiểu dáng đa dạng, nhỏ gọn, êm tay.</p><p>▪️ CT-007 có đệm cao su êm tay, ngòi xoay 90º linh hoạt khi sử dụng.</p><p>▪️ CT-008 có nắp đậy bảo vệ ngòi bút, chế độ giảm ồn và che phủ tốt.</p><p>▪️ CT-009 có thiết kế nhỏ gọn kèm hình ảnh động vật dễ thương trên thân bút kèm theo nắp đậy bảo vệ ngòi bút.</p><p>&nbsp;</p><p>🔹TIÊU CHUẨN VÀ BẢO QUẢN</p><p>▪️ Tiêu chuẩn: Sản xuất theo TCCS 039:2011/TL-XK. Đạt chuẩn Châu Âu EN 71/3.</p><p>▪️ Độ rộng băng xóa: 5 mm.</p><p>▪️ Chiều dài băng xóa: 8m (CT-007), 12m (CT-008), 5m (CT-009).</p><p>▪️ Kích thước: 90 x 46 mm (CT-007), 103 x 52 mm (CT-008), 72 x 33 mm (CT-009).</p><p>▪️ Trọng lượng: 19.5 gram (CT-007), 25 gram (CT-008), 12 gram (CT-009).</p><p>▪️ Chất liệu: PS - POM.</p><p>▪️ Bảo quản: Không thích hợp cho trẻ dưới 3 tuổi. Bảo quản nơi khô ráo, thoáng mát. Tránh xa nguồn nhiệt, hóa chất. Tránh ánh nắng trực tiếp chiếu vào sản phẩm.</p>', '2025-05-02 02:05:44', '2025-05-02 02:05:44'),
(67, 'Bút xóa Thiên Long CP-CP015', 12, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút xóa</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Dung tích mực</td><td>5 ml</td></tr><tr><td>Đóng gói</td><td>01 Cây/ kiện.</td></tr><tr><td>Khuyến cáo</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH, Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure>', '2025-05-02 02:20:42', '2025-05-02 02:20:42'),
(68, 'Bút xóa Điểm 10 TP-CP01', 12, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút xóa</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Dung tích mực</td><td>5 ml</td></tr><tr><td>Hình dáng thân bút</td><td>Thân tròn, màu ngẫu nhiên.</td></tr><tr><td>Đóng gói</td><td>10 cây/hộp</td></tr></tbody></table></figure><p>Bút xóa Điểm 10 TP-CP01 có kiểu dáng thân tròn, vừa tầm tay, thuận tiện khi sử dụng. Cán bằng nhựa đủ màu thể hiện sự trẻ trung, năng động. Đầu bút bằng kim loại có lò xo đàn hồi tốt.</p><p><strong>Đặc điểm :</strong>&nbsp;</p><p>- Kiểu dáng bút được thiết kế hết sức ấn tượng, thích hợp với người dùng trẻ tuổi là học sinh, sinh viên.&nbsp;</p><p>- Thân bút tròn, bằng nhựa mềm dễ cầm và không mỏi tay khi xóa.<br>- Thân bút có nhiều màu sắc: Xanh lá và nâu.<br>- Công nghệ vượt trội giúp mực xuống đều hơn.<br>- Bút ít bị tắc mực, độ che phủ bề mặt tốt hơn và mau khô, giúp cho chữ viết rõ ràng, không bị lem, nhòe.&nbsp;</p><p>-Dung tích mực: 5 ml</p><p><strong>Lưu ý :</strong><br>- Đặt bút hướng lên khi không sử dụng<br>- Lưu trữ nơi khô ráo, thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời<br>- Lắc đều bút trước khi sử dụng</p><p>&nbsp;</p>', '2025-05-02 02:24:11', '2025-05-02 02:24:11'),
(69, 'Bìa trình ký A5 Thiên Long Flexoffice PP FO-CB012', 14, 4, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>169 gram</td></tr><tr><td>Quy cách</td><td>1 Bìa/túi (224 x 157 mm)</td></tr><tr><td>Đơn vị tính</td><td>bìa</td></tr><tr><td>Độ dày</td><td>1.4 mm</td></tr><tr><td>Chất liệu</td><td>Nhựa PP</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p>- Kiểu dáng trang nhã , sang trọng , thiết kế chắc chắn , không cong vênh , luôn giữ hồ sơ phẳng , lịch sự và tạo cám giác thoải mái khi sử dụng<br>- Làm từ nhựa PP , bề mặt siêu mịn , viết êm tay . dễ dàng ghi chép , ký duyệt trên tài liệu<br>- Kẹp bằng kim loại cao cấp , sáng bóng , có lớp tráng dầu chống sét hạn chế oxy hóa theo thời gian , cứng cáp không han gỉ , độ bền cao<br>- Được sản xuất theo công nghệ hiện đại , đạt tiêu chuẩn quốc tế , thân thiện với môi trường .<br>&nbsp;</p><p><strong>Đặc điểm :&nbsp;</strong><br>- Sử dụng phù hợp với khổ giấy A5<br>- Bìa cứng chắc, đường hàn có độ bền cao<br>- Kẹp bền chắc có tính đàn hồi cao giúp kẹp chặt tài liệu, hồ sơ<br>- Hai góc kép được bọc nhựa, giúp kẹp chặt và không làm tài liệu nhăn hoặc rách .<br>- Simili bọc ngoài có hoa văn đẹp. mềm mại tạo cảm giác êm tay khi ký duyệt hoặc ghi chú trên hồ sơ, tài liệu.<br>- Khả năng chứa 100 tờ A5.</p>', '2025-05-02 02:29:57', '2025-05-02 02:29:57'),
(70, 'Bìa trình ký đơn Flexoffice FO-CB04', 14, 4, NULL, '<p>Thông Số Kỹ Thuật</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>133 gram</td></tr><tr><td>Quy cách</td><td>1 Bìa/túi</td></tr><tr><td>Đơn vị tính</td><td>bìa</td></tr><tr><td>Chất liệu</td><td>Nhựa Mica</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p>- Kiểu dáng trang nhã , sang trọng , thiết kế chắc chắn , không cong vênh , luôn giữ hồ sơ phẳng , lịch sự và tạo cám giác thoải mái khi sử dụng<br>- Làm từ nhựa Mica , bề mặt siêu mịn , viết êm tay . dễ dàng ghi chép , ký duyệt trên tài liệu<br>- Kẹp bằng kim loại cao cấp , sáng bóng , có lớp tráng dầu chống sét hạn chế oxy hóa theo thời gian , cứng cáp không han gỉ , độ bền cao<br>- Được sản xuất theo công nghệ hiện đại , đạt tiêu chuẩn quốc tế , thân thiện với môi trường .</p>', '2025-05-02 02:32:15', '2025-05-02 02:32:15'),
(71, 'Bìa trình ký đơn Flexoffice FO-CB02', 14, 4, NULL, '<p>Thông Số Kỹ Thuật</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>169 gram</td></tr><tr><td>Quy cách</td><td>1 Bìa/túi</td></tr><tr><td>Đơn vị tính</td><td>bìa</td></tr><tr><td>Chất liệu</td><td>Nhựa PS</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p>- Kiểu dáng trang nhã , sang trọng , thiết kế chắc chắn , không cong vênh , luôn giữ hồ sơ phẳng , lịch sự và tạo cám giác thoải mái khi sử dụng<br>- Làm từ nhựa PS , bề mặt siêu mịn , viết êm tay . dễ dàng ghi chép , ký duyệt trên tài liệu<br>- Kẹp bằng kim loại cao cấp , sáng bóng , có lớp tráng dầu chống sét hạn chế oxy hóa theo thời gian , cứng cáp không han gỉ , độ bền cao<br>- Được sản xuất theo công nghệ hiện đại , đạt tiêu chuẩn quốc tế , thân thiện với môi trường .</p>', '2025-05-02 02:34:33', '2025-05-02 02:34:33'),
(72, 'Bìa trình ký kép Flexoffice FO-CB03', 14, 4, NULL, '<p>Thông Số Kỹ Thuật</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>169.6 gram</td></tr><tr><td>Lưu trữ</td><td>100 tờ A4</td></tr><tr><td>Kích thước</td><td>320 x 231 mm, độ dày 1.2 mm</td></tr><tr><td>Chất liệu</td><td>Nhựa PP</td></tr><tr><td>Bảo quản</td><td>Để nơi thoáng mát, tránh nguồn nhiệt.&nbsp;Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-02 02:37:03', '2025-05-02 02:37:03'),
(73, 'Bìa trình ký đơn Flexoffice FO-CB05', 14, 4, NULL, '<p>Thông Số Kỹ Thuật</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>210 gram</td></tr><tr><td>Quy cách</td><td>1 Bìa/túi, lưu trữ 80 tờ A4</td></tr><tr><td>Kích thước</td><td>318 x 218 x 2.2 mm</td></tr><tr><td>Chất liệu</td><td>Nhựa PS</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure>', '2025-05-02 03:19:34', '2025-05-02 03:19:34'),
(74, 'Cặp hồ sơ 5S-12 ngăn Flexoffice FO-EB003', 15, 4, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Kích thước</td><td>330 x 246 mm</td></tr><tr><td>Độ dày</td><td>0.8 mm</td></tr><tr><td>Trọng lượng</td><td>280 gram</td></tr><tr><td>Chất liệu</td><td>Nhựa PP</td></tr><tr><td>Màu sắc</td><td>Trong / Xanh / Hồng</td></tr><tr><td>Khả năng lưu trữ</td><td>Đang cập nhật</td></tr><tr><td>Bảo quản&nbsp;</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p><strong>Mô tả:</strong></p><p>- Cặp gồm 12 ngăn, khổ A4 có nắp đậy.</p><p>- Để lưu trữ &amp; bảo quản các loại hồ sơ, tài liệu,...&nbsp;</p><p>- Tem chỉ mục nhiều màu tiện lợi cho lưu trữ tài liệu.</p>', '2025-05-02 03:26:05', '2025-05-02 03:26:05'),
(75, 'Cặp 12 ngăn Flexoffice FO-EB01', 15, 4, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Kích thước</td><td>320 x 234 x 36 mm</td></tr><tr><td>Quy cách</td><td>1 cái/túi A4/12 ngăn</td></tr><tr><td>Đơn vị tính</td><td>cái</td></tr><tr><td>Màu sắc</td><td>Xanh/Xanh đậm/Đen</td></tr><tr><td>Khả năng lưu trữ</td><td>có khả năng lưu trữ nhiều tài liệu</td></tr><tr><td>Bảo quản&nbsp;</td><td>Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p><strong>Mô tả:</strong></p><p>- Cặp gồm 12 ngăn, khổ A4 có nắp đậy.</p><p>- Làm từ nhựa PP chất lượng cao</p><p>- Tem chỉ mục nhiều màu tiện lợi cho lưu trữ tài liệu.</p><p>- Thích hợp dùng cho việc lưu trữ các tài liệu, chứng từ số lượng tương đối nhiều.</p><p>- Nắp được đóng bằng dây có tính đàn hồi cao.&nbsp;</p><p><strong>Bảo quản:</strong></p><p>Tránh xa nguồn nhiệt, dầu mỡ.</p>', '2025-05-02 03:29:56', '2025-05-02 03:29:56'),
(76, 'Bìa hộp Flexoffice PP 150-A4 FO-BF05', 15, 4, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Kích thước</td><td>319 x 239 mm, gáy 155 mm, độ dày 0.95 mm</td></tr><tr><td>Trọng lượng</td><td>235 gram</td></tr><tr><td>Quy cách</td><td>1 Bìa/túi</td></tr><tr><td>Màu sắc</td><td>Xanh dương</td></tr><tr><td>Khả năng lưu trữ</td><td>có khả năng lưu trữ nhiều tài liệu</td></tr><tr><td>Đơn vị tính</td><td>bìa</td></tr><tr><td>Bảo quản</td><td>Nhiệt độ: 10 ~ 55º C, Độ ẩm: 55 ~ 95% RH, Tránh xa nguồn nhiệt, dầu mỡ.</td></tr></tbody></table></figure><p><strong>Đặc Điểm:</strong></p><p>Sản phẩm được làm từ nhựa PP có độ bền cao, không độc hại.</p><p>Cấu tạo tiện lợi dễ sử dụng, luôn giữ hồ sơ, tài liệu phẵng phiu, sạch sẽ và tạo cảm giác thoải mái và dễ dàng khi sử dụng.</p><p>Thiết kế màu sắc trang nhã lịch sự hiện đại sang trọng phù hợp với môi trường văn phòng.<br>&nbsp;</p><p><strong>Lưu&nbsp;ý:</strong><br>- Nhiệt độ lưu trữ, bảo quản bình thường: 10 đến 40 độ C.<br>- Tránh xa nguồn nhiệt, dầu mỡ, hóa chất</p>', '2025-05-02 03:32:13', '2025-05-02 03:32:13'),
(77, 'Băng keo trong 80 yards Thiên Long BKT-080', 19, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Size Yard</td><td>Rộng 48mm, 80 Yard (~74m)</td></tr><tr><td>Chất liệu</td><td>BOPP</td></tr><tr><td>Quy cách</td><td>01 cuộn</td></tr><tr><td>Màu sắc</td><td>Trong suốt</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr><tr><td>Trọng lượng</td><td>200 gram</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:39:17', '2025-05-02 03:39:17'),
(78, 'Băng keo trong 60 yards Thiên Long BKT-060', 19, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Size Yard</td><td>Rộng 48mm, 60 Yard (~54m)</td></tr><tr><td>Chất liệu</td><td>BOPP</td></tr><tr><td>Đóng gói</td><td>01 cuộn</td></tr><tr><td>Màu sắc</td><td>Trong suốt</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr><tr><td>Trọng lượng</td><td>150 gram</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:41:26', '2025-05-02 03:41:26'),
(79, 'Băng keo trong Thiên Long BKT08', 19, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>bề rộng 48mm, dài 80 Yard(~74m)</td></tr><tr><td>Chất liệu</td><td>OPP</td></tr><tr><td>Đóng gói</td><td>6 cuộn /1 lốc</td></tr><tr><td>Màu sắc</td><td>trong suốt</td></tr><tr><td>Trọng lượng</td><td>174 gram</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:45:00', '2025-05-02 03:45:00'),
(80, 'Băng keo trong OPP Flexoffice FO-BKT 10', 19, 4, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Kích thước</td><td>bề rộng 48mm, dài 89 Yard</td></tr><tr><td>Chất liệu</td><td>OPP</td></tr><tr><td>Đóng gói</td><td>6 cuộn /1 lốc</td></tr><tr><td>Màu sắc</td><td>trong suốt</td></tr><tr><td>Trọng lượng</td><td>209 gram</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:48:09', '2025-05-02 03:48:09'),
(81, 'Băng keo đục Thiên Long BKD-080', 20, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Size Yard</td><td>Rộng 48mm, dài 80 Yard (~74m)</td></tr><tr><td>Chất liệu</td><td>BOPP</td></tr><tr><td>Đóng gói</td><td>5 cuộn /1 lốc</td></tr><tr><td>Sản phẩm</td><td>1 cuộn</td></tr><tr><td>Màu sắc</td><td>Đục</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:51:25', '2025-05-02 03:51:25'),
(82, 'Băng keo đục OPP Flexoffice FO-BKD20', 20, 4, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Kích thước</td><td>bề rộng 48mm, dài 200 Yard(~182m)</td></tr><tr><td>Chất liệu</td><td>OPP</td></tr><tr><td>Đóng gói</td><td>6 cuộn/1 lốc</td></tr><tr><td>Màu sắc</td><td>đục</td></tr><tr><td>Trọng lượng</td><td>347 gram</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:53:38', '2025-05-02 03:53:38'),
(83, 'Băng keo đục 80 yards Thiên Long BKD-080', 20, 1, NULL, '<p><i><strong>Thông số kĩ thuật :</strong></i></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Size Yard</td><td>Rộng 48mm, 80 Yard (~74m)</td></tr><tr><td>Chất liệu</td><td>BOPP</td></tr><tr><td>Đóng gói</td><td>01 cuộn</td></tr><tr><td>Màu sắc</td><td>Đục</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr><tr><td>Trọng lượng</td><td>200 gram</td></tr></tbody></table></figure><p>- Sản phẩm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế, thân thiện với môi trường.<br>- Sản phẩm được làm từ màng BOPP có độ bền dai cao cộng keo tráng được lựa chọn để làm băng keo luôn đảm bảo độ dính cao, khả năng đàn hồi tốt.<br>- Có thể dính rất chắc trên nhiều chất liệu khác nhau.</p>', '2025-05-02 03:57:40', '2025-05-02 03:57:40'),
(84, 'Kéo văn phòng Thiên Long SC-021', 21, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>210 (mm)</td></tr><tr><td>Trọng lượng</td><td>73 gram</td></tr><tr><td>Quy cách</td><td>1 cái/vỉ</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo văn phòng Thiên Long SC-021 có cán làm từ nhựa PP/TPR, thân làm bằng thép không gỉ. Kéo văn phòng Thiên Long SC-021 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, màu sắc xanh pastel cá tính.</p><p>Công dụng: Dùng để cắt giấy.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo văn phòng Thiên Long SC-021 được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. Hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p>', '2025-05-02 08:28:14', '2025-05-02 08:28:14'),
(85, 'Kéo đa năng Thiên Long SC-022', 21, 1, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>150 (mm)</td></tr><tr><td>Trọng lượng</td><td>73 gram</td></tr><tr><td>Quy cách</td><td>1 cái/vỉ</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-022 có cán làm từ nhựa PP, thân làm bằng thép không gỉ. Kéo đa năng Thiên Long SC-022 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, màu sắc phong phú.</p><p>Công dụng: Dùng để cắt giấy.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-022 được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. Hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p>', '2025-05-02 08:31:50', '2025-05-02 08:31:50'),
(86, 'Kéo đa năng Thiên Long SC-020', 21, 1, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>150 (mm)</td></tr><tr><td>Trọng lượng</td><td>73 gram</td></tr><tr><td>Quy cách</td><td>1 cái/vỉ</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-020 có cán làm từ nhựa PP, thân làm bằng thép không gỉ. Kéo đa năng Thiên Long SC-020 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, màu sắc phong phú.</p><p>Công dụng: Dùng để cắt giấy.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-020 được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. Hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p>', '2025-05-02 08:35:11', '2025-05-02 08:35:11'),
(87, 'Dao rọc giấy Thiên Long - Khóa tự động thông minh - Khay đựng dao nâng cấp chắc chắn an toàn hơn', 22, 1, NULL, '<p><br>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>200 (mm)</td></tr><tr><td>Trọng lượng</td><td>73 gram</td></tr><tr><td>Quy cách</td><td>1 cái/vỉ</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-020 có cán làm từ nhựa PP/TPR, thân làm bằng thép không gỉ. Kéo đa năng Thiên Long SC-020 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, màu sắc phong phú.</p><p>Công dụng: Dùng để cắt giấy.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo đa năng Thiên Long SC-020 được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. Hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p>', '2025-05-02 08:43:03', '2025-05-02 08:43:03'),
(88, 'Dao rọc giấy Flexoffice FO-KN03', 22, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Kích thước</td><td>dài 142mm x rộng 9mm x dày 0.4mm</td></tr><tr><td>Chất liệu</td><td>Thân bọc nhựa, Lưỡi bằng thép.</td></tr><tr><td>Quy cách</td><td>01 cái/hộp nhỏ, 24 hộp nhỏ/hộp lớn, 20 hộp lớn/thùng carton, 480 cái/thùng carton</td></tr><tr><td>Màu sắc</td><td>Màu ngẫu nhiên</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>• Mẫu mã đẹp, bao bì sang trọng, thuộc dòng sản phẩm cao cấp</p><p>• Sản phẩm được thiết kế thon gọn, đường dẫn lưỡi dao bằng sắt mạ crom tạo cảm giác vừa thoải mái vừa chắc chắn và thuận tiện khi sử dụng</p><p>• Chuôi dao có rãnh để bẻ bớt mũi dao khi lưỡi dao không còn sắc bén nữa.</p>', '2025-05-02 19:39:42', '2025-05-02 19:39:42'),
(89, 'Dao rọc giấy Flexoffice FO-KN03B', 22, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Kích thước</td><td>dài 142mm x rộng 9mm x dày 0.4mm</td></tr><tr><td>Chất liệu</td><td>Thân bọc nhựa, Lưỡi bằng thép</td></tr><tr><td>Quy cách</td><td>01 cái/hộp nhỏ, 24 hộp nhỏ/hộp lớn, 20 hộp lớn/thùng carton, 480 cái/thùng carton</td></tr><tr><td>Màu sắc</td><td>Màu ngẫu nhiên</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>• Mẫu mã đẹp, bao bì sang trọng, thuộc dòng sản phẩm cao cấp</p><p>• Sản phẩm được thiết kế thon gọn, đường dẫn lưỡi dao bằng sắt mạ crom tạo cảm giác vừa thoải mái vừa chắc chắn và thuận tiện khi sử dụng</p><p>• Chuôi dao có rãnh để bẻ bớt mũi dao khi lưỡi dao không còn sắc bén nữa.</p>', '2025-05-02 19:43:23', '2025-05-02 19:43:23'),
(90, 'Lưỡi dao rọc giấy Flexoffice FO-BL01', 22, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Kích thước</td><td>dài 80mm x rộng 9mm x dày 0.4mm</td></tr><tr><td>Chất liệu</td><td>Lưỡi bằng thép.</td></tr><tr><td>Quy cách</td><td>10 lưỡi dao/hộp nhỏ; 50 hộp nhỏ/hộp lớn (inner); 600 hộp nhỏ/thùng</td></tr><tr><td>Bảo quản</td><td>Nơi khô ráo, tránh lửa</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>• Sản phẩm được thiết kế thuận tiện khi lắp vào cán dao và hoạt động trơn tru.</p><p>• Lưỡi dao làm bằng thép&nbsp;carbon bền, sắc bén, bề mặt sáng bóng, không trầy xước, không bị gỉ sét.</p><p>• Lưỡi dao có các rãnh có thể được bẻ gãy bằng chuôi dao khi cần thiết.</p>', '2025-05-02 19:45:59', '2025-05-02 19:45:59'),
(91, 'Bấm kim đại FO-BS01', 23, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Trọng lượng</td><td>800 gram</td></tr><tr><td>Loại kim</td><td>23/6 (bấm 25 tờ), 23/8 (bấm 40 tờ), 23/10 (bấm 60 tờ), 23/13 (bấm 90 tờ), 23/15&nbsp;(bấm 100 tờ).</td></tr><tr><td>Quy cách</td><td>1 cái/hộp</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Chất liệu: Bằng thép không gỉ, sử dụng chắc chắn, bền bỉ.&nbsp;</p><p>- Cơ cấu bấm có khoá an toàn để tránh làm tổn thương các ngón tay khi nạp kim. Lò xo có độ đàn hồi tốt, bền khi sử dụng.</p><p>- Thiết kế thông minh, lực bấm nhẹ, sử dụng thuận tiện và dễ dàng.</p><p>- Bấm nhẹ nhàng, chặn giấy có thể điều chỉnh.</p>', '2025-05-02 19:54:18', '2025-05-02 19:54:18'),
(92, 'Gỡ kim Flexoffice FO-STR02', 23, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexoffice</td></tr><tr><td>Chất liệu</td><td>Thép</td></tr><tr><td>Quy cách</td><td>1 vỉ / cái, màu sắc ngẫu nhiên.</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Gỡ kim Flexoffice FO-STR02 được đánh giá cao bởi độ bền cứng, sử dụng khá linh hoạt và an toàn.</p><p>Gỡ kim chất lượng uy tín thích hợp cho nhu cầu gỡ nhiều loại kim khác nhau trên giấy tờ, tập tài liệu ( số 10 , 24/6 , 26/6 )</p><p>Đây là sản phẩm cần thiết cho văn phòng và cơ sở in ấn hiện nay.</p><p><strong>Vài nét về gỡ kim Flexoffice</strong></p><p>Gỡ kim Flexoffice làm bằng chất liệu thép bền bỉ, có độ cứng cao, bọc lớp nhựa bên ngoài giúp thao tác êm tay và chống trơn trợt hiệu quả.</p><p>Bấm có độ bền cao, không bị gỉ sét trong thời gian sử dụng và thân thiện với người dùng.</p><p>Thiết kế chuyên dụng, tiện lợi với lực gỡ nhẹ và linh hoạt, không làm rách giấy.<br>Có tính ứng dụng rộng rãi</p><p>Gỡ kim Flexoffice có thể gỡ nhiều loại kim bấm đáp ứng tốt công việc gỡ kim bấm đầu giấy, gáy hồ sơ một cách nhanh chóng và thuận tiện.</p><p>Loại gỡ kim này giúp bạn an tâm hơn về hiệu quả sử dụng và đảm bảo công việc liên quan đến hồ sơ, giấy tờ nhẹ nhàng hơn.</p>', '2025-05-02 19:57:48', '2025-05-02 19:57:48');
INSERT INTO `products` (`id`, `name`, `sub_category_id`, `brand_id`, `description`, `detail_description`, `created_at`, `updated_at`) VALUES
(93, 'Bấm kim số 10 Flexoffice FO-ST02 (FS)', 23, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Trọng lượng</td><td>75 gram</td></tr><tr><td>Quy cách</td><td>12 cái/hộp; 25 hộp/thùng, 300 cái/thùng</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>• Chất liệu: Bằng thép không gỉ, sử dụng chắc chắn, bền bỉ. Phần đầu được bọc nhựa ABS giúp êm tay khi bấm.</p><p>• Cơ cấu bấm có khoá an toàn để tránh làm tổn thương các ngón tay khi nạp kim. Lò xo có độ đàn hồi tốt, bền khi sử dụng.</p>', '2025-05-02 20:01:45', '2025-05-02 20:01:45'),
(94, 'Bấm kim mini số 10 - Mini Stapler Thiên Long - Bấm nhẹ hơn - Màu ngẫu nhiên', 23, 4, NULL, '<p>Bấm kim mini số 10 - Mini Stapler Thiên Long kiểu dáng đơn giản, dễ thương với thiết kế nhỏ gọn và màu sắc bắt mắt. Sản phẩm là trợ thủ đắc lực cho giới văn phòng trong việc đính kết tài liệu, nhẹ nhàng thao tác mà không sợ kẹt ghim và có dụng cụ gỡ kim đi kèm.&nbsp;</p><p>&nbsp;</p><p>🔹TÍNH NĂNG SẢN PHẨM</p><p>▪️ Thiết kế nhỏ gọn, chắc chắn, dễ dàng cầm nắm.</p><p>▪️ Cơ chế bấm an toàn, dễ sử dụng.&nbsp;</p><p>▪️ Lực bấm nhẹ, không kẹt ghim.</p><p>▪️ Có dụng cụ cỡ kim.</p><p>▪️ Có thể bấm nhiều trang giấy cùng lúc (tối đa 12 tờ A4).</p><p>&nbsp;</p><p>🔹NGUỒN GỐC VÀ BẢO QUẢN</p><p>▪️ Thương hiệu: Thiên Long.</p><p>▪️ Xuất xứ: Việt Nam.</p><p>▪️ Bảo quản: Không thích hợp cho trẻ dưới 3 tuổi. Sản phẩm có chi tiết nhỏ, sắc bén cẩn thận khi sử dụng. Bảo quản nơi khô ráo, thoáng mát, tránh nguồn nhiệt và hóa chất.</p>', '2025-05-02 20:03:50', '2025-05-02 20:03:50'),
(95, 'Kim bấm số 10 Flexoffice FO-STS02', 23, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Chất liệu</td><td>Kim loại</td></tr><tr><td>Trọng lượng</td><td>23 gram</td></tr><tr><td>Quy cách</td><td>20 hộp/hộp lớn</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kim bấm giấy là sản phẩm được làm từ thép cao cấp, giúp liến kết các tài liệu văn bản lại với nhau. Kim bấm có độ cứng cao, sáng bóng và không bị gỉ sét theo thời gian. Dễ dàng sử dụng và thân thiên với người dùng.</p>', '2025-05-02 20:10:31', '2025-05-02 20:10:31'),
(96, 'Kim bấm số 3 Flexoffice FO-STS01', 23, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Chất liệu</td><td>Kim loại</td></tr><tr><td>Trọng lượng</td><td>23 gram</td></tr><tr><td>Quy cách</td><td>20 hộp/hộp lớn</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kim bấm giấy là sản phẩm được làm từ thép cao cấp, giúp liến kết các tài liệu văn bản lại với nhau. Kim bấm có độ cứng cao, sáng bóng và không bị gỉ sét theo thời gian. Dễ dàng sử dụng và thân thiên với người dùng</p>', '2025-05-02 20:12:47', '2025-05-02 20:12:47'),
(97, 'Máy tính khoa học Thiên Long Flexio Fx509VN - Có hơn 240 tính năng', 16, 7, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Flexio</td></tr><tr><td>Màn hình</td><td>LCD</td></tr><tr><td>Loại pin</td><td>L1154Fx1 Alkaline</td></tr><tr><td>Điện thế</td><td>1.5V</td></tr><tr><td>Kích thước</td><td>165 x 84 x 16 mm</td></tr><tr><td>Chất liệu</td><td>nhựa ABS</td></tr><tr><td>Bảo hành</td><td>84 tháng (1 đổi 1 trong 12 tháng đầu)</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Trung Quốc</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Chức năng máy tính khoa học Thiên Long fx509VN:</strong></p><p>- Hàm Type, Hàm Mũ, Toạ độ Đê-cac 1, toạ độ cực, Kí hiệu kỹ thuật,<br>- Đổi độ phút giây 1, số thập phân, Phần trăm, Dấu ngoặc, Làm tròn, Phân số, Hiện lại, Phương trình, Nhập (-), Exp, p.<br>- Chức năng tính toán lượng giác: Có<br>- Bộ nhớ độc lập (M):Có<br>- Lưu biến nhớ (A, B, C, D, E, F, X, Y): Có<br>- Tính giai thừa: Có<br>- Số ngẫu nhiên: Có</p><p>- Tính toán đa câu lệnh: Có<br>- Nhập dữ liệu thống kê: Có<br>- Độ lệch chuẩn trong thống kế 1 biến: Có<br>- Hồi quy: Có<br>- Tổ hợp: Có<br>- Chỉnh hợp: Có<br>- Giải phương trình bậc 2, bậc 3: Có<br>- Giải hệ phương trình 2 ẩn, 3 ẩn: Có</p>', '2025-05-02 22:40:09', '2025-05-02 22:40:09'),
(98, '[SPM BỔ SUNG TÍNH NĂNG] Máy tính khoa học Thiên Long Flexio Fx799VN', 16, 7, NULL, '<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://product.hstatic.net/1000230347/product/langding-page_05_dd93cbc0011f4957bf6079ebd1185112.jpg\" width=\"1200\" height=\"800\"></p><p>&nbsp;</p><p><img src=\"https://product.hstatic.net/1000230347/product/langding-page_07_a7522022f143424dbe3b5af04dad30b0.jpg\" width=\"1200\" height=\"800\"></p><p><img src=\"https://product.hstatic.net/1000230347/product/langding-page_08_c056ffc07c3b4df98ff283007b3f5536.jpg\" width=\"1200\" height=\"800\"></p><p><img src=\"https://product.hstatic.net/1000230347/product/langding-page_09_97c93eecb19a462ea0fa5dddd027740e.jpg\" width=\"1200\" height=\"801\"></p><p><img src=\"https://product.hstatic.net/1000230347/product/langding-page_10_d975dbd79f774a4bbd96709fe791692e.jpg\" width=\"1200\" height=\"800\"></p><p><strong>ĐẶC BIỆT :</strong></p><ul><li><strong>MÁY TÍNH FLEXIO ĐẠT CHUẨN MANG&nbsp;VÀO PHÒNG THI&nbsp;</strong>(thông tư 06/2023/TT-BGDĐT ban hành ngày 24.03.2023)</li><li><strong>CHẾ ĐỘ BẢO HÀNH ĐẶC BIỆT : BẢO HÀNH 07 NĂM, 1 ĐỔI 1 TRONG 01 NĂM ĐẦU</strong></li></ul>', '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(99, 'Máy tính khoa học Thiên Long Flexio Fx680VN Plus', 16, 7, NULL, '<p><img src=\"https://product.hstatic.net/1000230347/product/banner_5_680vn_135d1a1e7d2a4875bf906289b4b471fa_1024x1024.png\" width=\"1024\" height=\"1024\"></p><p><img src=\"https://product.hstatic.net/1000230347/product/banner_2_3_fa863acd27754bf5a8f88dbb00e6beec_1024x1024.png\" width=\"1024\" height=\"1024\"></p><p><img src=\"https://product.hstatic.net/1000230347/product/banner_1_d93fe0b2dbf741aa8852a001dc7e5321_1024x1024.png\" width=\"1024\" height=\"1024\"></p><p><strong>ĐẶC BIỆT :</strong></p><ul><li><strong>MÁY TÍNH FLEXIO ĐẠT CHUẨN MANG&nbsp;VÀO PHÒNG THI&nbsp;</strong>(thông tư 06/2023/TT-BGDĐT ban hành ngày 24.03.2023)</li><li><strong>CHẾ ĐỘ BẢO HÀNH ĐẶC BIỆT : BẢO HÀNH 07 NĂM, 1 ĐỔI 1 TRONG 01 NĂM ĐẦU</strong></li></ul>', '2025-05-02 22:54:47', '2025-05-02 22:54:47'),
(100, 'Máy tính khoa học Flexio FX680VN', 16, 7, NULL, '<p><strong>ĐẶC BIỆT :</strong></p><ul><li><a href=\"https://flexoffice.com/collections/mua-1-tang-1/\"><strong>MÁY TÍNH FLEXIO&nbsp;</strong></a><strong> ĐƯỢC BỘ GIÁO DỤC VÀ ĐÀO TẠO CHO PHÉP MANG VÀO PHÒNG THI</strong></li><li><strong>CHẾ ĐỘ BẢO HÀNH ĐẶC BIỆT : BẢO HÀNH 60 THÁNG,&nbsp;1 ĐỔI 1 TRONG 12 THÁNG ĐẦU&nbsp;VÀ TẶNG MÁY BẢO HÀNH</strong></li></ul><p><img src=\"https://file.hstatic.net/1000230347/file/fx680vn3_602530d5aa90448094c926f21d9ab41b_1024x1024.jpg\" width=\"900\" height=\"900\"></p><p><img src=\"https://file.hstatic.net/1000230347/file/fx680vn4_6faee89fe67b4a65a2c3b9d7170fc812_1024x1024.jpg\" width=\"900\" height=\"900\"></p>', '2025-05-02 22:59:42', '2025-05-02 22:59:42'),
(101, 'Túi bóp đựng bút viết nhân vật Demon Slayer Thiên Long PCA-022/DS', 18, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Túi đựng bút</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>220 x 90 x 30mm</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-02 23:03:55', '2025-05-02 23:03:55'),
(102, 'Hộp viết Điểm 10 Doraemon PCA-011/DO', 18, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Danh mục</td><td>Hộp đựng bút</td></tr><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>200 gram</td></tr><tr><td>Quy Cách</td><td>1 hộp / túi</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Hộp bút cao cấp, khung bằng nhựa cứng, ngoài bọc nhựa mềm, in hình Doraemon và Doremi đáng yêu, ngộ nghĩnh.</p>', '2025-05-02 23:07:18', '2025-05-02 23:07:18'),
(103, 'Hộp bút SP TP-PCA019/MR', 18, 3, NULL, '<p><strong>Thông&nbsp;tin về sản phẩm</strong></p><p>Hộp bút tiện dụng dành cho học sinh với kích thước phù hợp và độ bển nổi trội thích hợp cho học sinh tiểu học. Sản phẩm sử dụng hình ảnh nhân vật đến từ Walt Disney/ Marvel.</p><p><strong>Xuất sứ sản phẩm</strong></p><p>Xuất sứ: Hongkong - Trung Quốc</p><p><strong>Kích cỡ cơ bản:</strong></p><p>Kích thước bên ngoài: H5 X W20 X D5 cm</p><p>Trọng lượng: 0.035 kg</p><p>Chất liệu: nylon</p><p><strong>Nổi bật</strong></p><p>- Thiết kế trọng lượng siêu nhẹ<br>- Khoá kéo M2 nâng cấp giúp kéo nhẹ nhàng hơn<br>- Hình in tráng pvc kháng nước<br>- Hình ảnh nhân vật đa dạng có bản quyền của Walt Disney/ Marvel.</p>', '2025-05-02 23:10:55', '2025-05-02 23:10:55'),
(104, 'Hộp bút điểm 10 Doraemon TP-PCA012/DO', 18, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Danh mục</td><td>Hộp đựng bút</td></tr><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>210 x 65 x 27 mm</td></tr><tr><td>Quy Cách</td><td>60 hộp / thùng</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Hộp bút cao cấp, khung bằng nhựa cứng, ngoài bọc nhựa mềm, in hình Doraemon và Doremi đáng yêu, ngộ nghĩnh.</p>', '2025-05-02 23:13:34', '2025-05-02 23:13:34'),
(105, 'Thước đo độ 180º Strive Thiên Long SR-035', 17, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đo độ</td><td>180º</td></tr><tr><td>Chất liệu</td><td>Nhựa PS</td></tr><tr><td>Kích thước</td><td>100 x 53 x 1.5 mm</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Thước đo độ SR-035 được sản xuất tại Thiên Long, là loại thước đo độ 180º, thước làm bằng nhựa PS trong. Thích hợp cho học sinh, sinh viên,...</p><p>- Thước làm bằng vật liệu nhựa PS trong suốt, nhìn rõ giữa trang giấy &amp; thước.&nbsp;</p><p>- Dễ dàng xác định góc đo, vẽ cung tròn một cách nhanh chóng.&nbsp;</p><p>- Vạch kẻ in to, rõ ràng, dễ nhìn, thuận tiện cho việc sử dụng trên trang giấy nhỏ.&nbsp;</p><p>- Đảm bảo an toàn với người sử dụng.</p>', '2025-05-03 08:37:30', '2025-05-31 18:08:09'),
(106, 'Thước thẳng 15cm Ezpik PeTiTe Thiên Long SR-037 - Mẫu ngẫu nhiên', 17, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>15 cm</td></tr><tr><td>Chất liệu</td><td>Nhựa PS</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 038:2010/TL-TK</td></tr><tr><td>Kích thước</td><td>160 x 28 x 2.3 mm</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Để nơi thoáng mát, tránh nguồn nhiệt.&nbsp;Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Thước SR-037 được sản xuất tại Thiên Long, là loại thước thẳng, màu trong, có chiều dài vạch chia 15 cm.&nbsp;Thích hợp cho học sinh, sinh viên,...&nbsp;</p>', '2025-05-03 08:39:46', '2025-05-31 18:08:23'),
(107, 'Thước thẳng 20cm Thiên Long TP-SR011/AK - Nhân vật Akooland thế giới học cụ thần kỳ', 17, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Chiều dài</td><td>20 cm</td></tr><tr><td>Chất liệu</td><td>PS</td></tr><tr><td>Kích thước</td><td>210 x 30 mm</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Thước&nbsp;Thiên Long TP-SR011/AK - Nhân vật Akooland thế giới học cụ thần kỳ được in hình ảnh những nhân vật truyền thuyết thế giới AKOOLAND: Pháp Sư -TAHI, Tiên Tử CICI, Đấu Sĩ DASI, Thiên Tài Công Nghệ FIHA.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Thước thẳng được chế tạo từ nhựa PS&nbsp;có độ bền cao. Được sử dụng nhiều trong học tập, cơ khí, vẽ các bảng kĩ thuật, xây dựng, vẽ tranh...</p>', '2025-05-03 08:41:49', '2025-05-31 18:08:36'),
(108, 'Thước thẳng Điểm 10TP-SR032 15cm', 17, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>15 cm</td></tr><tr><td>Chất liệu</td><td>Nhựa AS</td></tr><tr><td>Đóng gói</td><td>1 cây / kiện.</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 038:2010/TL-TK</td></tr><tr><td>Khuyến cáo</td><td>Để nơi thoáng mát, tránh nguồn nhiệt.&nbsp;Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Độ bền cao, có thể tái chế.</p><p>- Thước được bo tròn 4 cạnh giúp an toàn khi sử dụng.</p><p>- Số và&nbsp;vạch to,&nbsp;rõ ràng, dễ nhìn.</p>', '2025-05-03 08:44:47', '2025-05-31 18:08:49'),
(109, 'Thước dẻo PVC Điểm 10 SR-021', 17, 3, NULL, '<p>Thông số kĩ thuật :<br>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>30 (cm)</td></tr><tr><td>Trọng lượng</td><td>13 gram</td></tr><tr><td>Quy cách</td><td>20 thước/ Block, 20 Block / thùng</td></tr><tr><td>Màu sắc</td><td>Trong suốt</td></tr><tr><td>Độ trong suốt</td><td>Cao</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong><br>&nbsp;</p><p>Thước SR-021 là thước thẳng bằng nhựa PVC, có chiều dài vạch chia là 30cm, thích hợp cho học sinh sinh viên</p><p>Thước SR-021 trong suốt được in 2 màu đỏ và đen,&nbsp;có vạch chia cm và inch. An toàn dễ sử dụng.</p><p>Vật liệu PVC trong suốt giúp người sử dụng dễ dàng nhìn thấy nội dung, hình bên dưới giúp việc vẽ, kẽ dễ dàng hơn.</p><p>Thước được in 2 màu giúp người sử dụng dễ nhận dạng vạch kẻ inch và kẻ cm</p><p>Công dụng: Dùng để kẻ và đo đoạn thẳng.</p>', '2025-05-03 08:47:28', '2025-05-31 18:09:06'),
(110, 'Thước bộ Điểm 10 SR-012', 17, 3, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>Nhiều kiểu dáng - kích thước</td></tr><tr><td>Trọng lượng</td><td>40 gram</td></tr><tr><td>Quy cách</td><td>4 cây/bộ/túi</td></tr><tr><td>Màu sắc</td><td>Màu ngẫu nhiên ( Xanh, hồng )</td></tr><tr><td>Độ trong suốt</td><td>cao</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Thước bộ SR-012 là sản phẩm thước bộ gồm có các thước: 1 thước thẳng 15cm, 1 eke 45, 1 eke 60, 1 đo góc 180.</p><p>Thước SR-012 là thước bằng nhựa trong, thích hợp cho học sinh.</p><p>Hình ảnh in ấn trên thước và trên bao bì phù hợp với đối tượng sử dụng.</p><p>Bao bì:&nbsp; 4 cây / Túi PVC trong,&nbsp; 200 túi / thùng carton</p><p>Công dụng: Dùng để kẻ đường thẳng.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Thước thẳng được chế tạo từ nhựa dẻo có độ bền cao. Được sử dụng nhiều trong học tập, cơ khí, vẽ các bảng kĩ thuật, xây dựng, vẽ tranh..., dùng để đo dộ dài và kích thước của một vật. Trên thước có vạch, các vạch cách nhau 1 mm, để đo dộ dài chi tiết hơn.</p>', '2025-05-03 08:50:05', '2025-05-31 18:09:21'),
(111, 'Phấn trắng không bụi - Dustless white Chalk Thiên Long DC-010', 17, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Indonesia</td></tr><tr><td>Khuyến cáo</td><td>Tránh hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p>- Phấn viết nét chữ rõ ràng, êm trơn, bám bảng đều và không tạo bụi phấn, rất thân thiện với môi trường.<br>- Phấn không độc hại nhờ sử dụng nguyên liệu sạch, đầu vào được kiểm tra</p><p><strong>Bảo quản:</strong></p><p>Để nơi khô thoáng, tránh va đập mạnh làm bể/ gãy phấn.</p>', '2025-05-03 08:52:29', '2025-05-31 18:10:28'),
(112, 'Phấn trắng không bụi Thiên Long Điểm 10 TP-DC009', 17, 3, NULL, '<p><strong>Thông Số Kỹ Thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>100 gram</td></tr><tr><td>Kích thước hộp</td><td>82 x 42 x 18 mm</td></tr><tr><td>Kích thước phấn</td><td>78&nbsp; x 8 mm</td></tr><tr><td>Xuất xứ&nbsp;</td><td>Việt Nam</td></tr><tr><td>Tiêu chuẩn</td><td>châu Âu EN 71/3.</td></tr><tr><td>Cảnh báo</td><td>Tránh xa nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc điểm :</strong></p><p>- Phấn viết nét chữ rõ ràng, êm trơn, bám bảng đều và không tạo bụi phấn, rất thân thiện với môi trường.<br>- Phấn không độc hại nhờ sử dụng nguyên liệu sạch.</p><p><strong>Bảo quản:</strong></p><p>Để nơi khô thoáng, tránh va đập mạnh làm bể/ gãy phấn.</p>', '2025-05-03 08:54:52', '2025-05-31 18:10:48'),
(113, 'Compa - Pencil Compass Thiên Long C-021 - Màu ngẫu nhiên', 17, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Chất liệu</td><td>nhựa ABS; đầu kim bằng thép</td></tr><tr><td>Bút chì</td><td>HB</td></tr><tr><td>Trọng lượng compa</td><td>13 gram</td></tr><tr><td>Kích thước</td><td>Compa 120mm; Bút chì 81mm</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 043:2011/TL-CP</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Trung Quốc</td></tr><tr><td>Khuyến cáo</td><td>Để nơi thoáng mát, tránh nguồn nhiệt.&nbsp;Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-03 08:57:34', '2025-05-31 18:09:46'),
(114, 'Compa Thiên Long C-018', 17, 1, NULL, '<p><strong>***Màu sản phẩm giao ngẫu nhiên.</strong></p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Quy cách</td><td>1 cái / kiện.</td></tr><tr><td>Chất liệu thân</td><td>Thân, tay cầm, khóa nhựa ABS.</td></tr><tr><td>Chất liệu&nbsp;</td><td>Vít, Kim định tâm bằng thép mạ không gỉ.</td></tr><tr><td>Trọng lượng</td><td>35 gram</td></tr><tr><td>Kích thước</td><td>Compa 132mm, Bút chì 87mm</td></tr></tbody></table></figure><p><strong>TÍNH NĂNG NỔI BẬT :</strong></p><p>- Compa được làm bằng nhựa ABS, vít kim loại và mũi nhọn làm bằng thép không gỉ.<br>- Kim định tâm an toàn dễ sử dụng, có thể thụt vào khi không sử dụng.<br>- Dùng để vẽ đường tròn, cung tròn.</p><p><img src=\"https://file.hstatic.net/1000230347/file/compa_thien_long_c-018_xanh_la_detail_95af5f50011c4f0f94fd61381c18a6f8_1024x1024.jpg\" width=\"1024\" height=\"1024\"></p>', '2025-05-03 08:59:39', '2025-05-31 18:10:02'),
(115, 'Compa Thiên Long C-017', 17, 1, NULL, '<p><strong>***Màu sản phẩm giao ngẫu nhiên.</strong></p><p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Quy cách</td><td>1 cái / kiện.</td></tr><tr><td>Chất liệu thân</td><td>Thân, tay cầm, khóa nhựa ABS.</td></tr><tr><td>Chất liệu&nbsp;</td><td>Vít, Kim định tâm bằng thép mạ không gỉ.</td></tr><tr><td>Trọng lượng</td><td>35 gram</td></tr><tr><td>Kích thước</td><td>Compa 140mm, Bút chì 87mm</td></tr></tbody></table></figure><p><strong>TÍNH NĂNG NỔI BẬT :</strong></p><p>- Compa được làm bằng nhựa ABS, vít kim loại và mũi nhọn làm bằng thép không gỉ.<br>- Compa có thước đo bán kính tiện dụng.<br>- Kim định tâm an toàn dễ sử dụng.<br>- Dùng để vẽ đường tròn, cung tròn.</p>', '2025-05-03 09:01:21', '2025-05-31 18:10:14'),
(116, 'Keo dán giấy - Akooland Liquid Glue Thiên Long G-024 - Mẫu thân ngẫu nhiên', 24, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Dung tích</td><td>30ml</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 010:2011/TL-KD</td></tr><tr><td>Kích thước</td><td>117 x 23.49mm</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc tính sản phẩm:</strong></p><p>- Keo dán giấy G-024/AK rất thuận tiện cho người sử dụng, độ bám dính tốt, mau khô, đầu bôi keo tiện dụng. Thích hợp cho học sinh, sinh viên, nhân viên văn phòng.&nbsp;</p><p>- Tem thân &amp; hộp được thiết kế với màu sắc tươi sáng, trẻ trung, sinh động cùng với hình ảnh nhân vật truyền thuyết thế giới AKOOLAND: Pháp Sư TAHI, Tiên Tử CICI, Đấu Sĩ DASI, Thiên Tài Công Nghệ FIHA.</p>', '2025-05-19 04:42:06', '2025-05-19 04:42:06'),
(117, 'Keo dán giấy - Glubby Liquid Glue Thiên Long G-025 - Mẫu thân ngẫu nhiên', 24, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Dung tích</td><td>30ml</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 010:2011/TL-KD</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p>G-025 được sản xuất tại Thiên Long, keo dán giấy dạng lỏng, trong suốt, được đựng trong lọ nhựa màu trắng trong.</p><p><strong>Bảo quản:</strong><br>Đậy nắp ngay sau khi sử dụng. Lưu trữ nơi khô ráo, thoáng mát, tránh để ánh sáng mặt trời chiếu trực tiếp vào sản phẩm.</p>', '2025-05-19 04:53:55', '2025-05-19 04:53:55'),
(118, 'Keo sữa - White Glue Thiên Long G-022 - Độ dính cao', 24, 1, NULL, '<p>Keo sữa - White Glue Thiên Long G-022 dạng lỏng, khô nhanh, có độ kết dính cao. Đặc biệt có đầu quét dễ dàng thoa đều keo khi sử dụng. Dùng được trên nhiều loại vật liệu như giấy, gỗ, vải, gốm.</p><p>&nbsp;</p><p>🔹TÍNH NĂNG SẢN PHẨM</p><p>▪️ Keo màu trắng sữa, có độ kết dính cao, khô nhanh.</p><p>▪️ Thiết kế nắp vặn dễ dàng bảo quản, tránh bị đổ khi không sử dụng.</p><p>▪️ Thanh quét keo tích hợp trên nắp dễ dàng thoa đều lên bề mặt.</p><p>▪️ Đầu nắp nhỏ có thể điều chỉnh được lượng keo lấy ra, tránh lãng phí.</p><p>▪️ Sử dụng được trên nhiều loại vật liệu như giấy, gỗ, vải, gốm.</p><p>▪️ Keo có thể rửa được.</p><p>▪️ Sản phẩm an toàn, không độc hại.</p><p>▪️ Thích hợp làm đồ thủ công, handmade.</p><p>&nbsp;</p><p>🔹TIÊU CHUẨN VÀ BẢO QUẢN</p><p>▪️ Tiêu chuẩn: Sản xuất theo TCCS 0176:2023/TL-KDĐN. Đạt chuẩn Châu Âu EN 71/3.</p><p>▪️ Dung tích: 40 ml.</p><p>▪️ Trọng lượng: 40 gram.</p><p>▪️ Kích thước: 107.7 x 47.7 mm.</p><p>▪️ Bảo quản: Không thích hợp cho trẻ dưới 3 tuổi. Bảo quản nơi khô ráo, thoáng mát. Tránh xa nguồn nhiệt, hóa chất. Đậy nắp sau khi sử dụng.</p>', '2025-05-19 04:56:34', '2025-05-19 04:56:34'),
(119, 'Keo khô - Glue Stick Thiên Long G-026/AK - Nhân vật Akooland thế giới học cụ thần kỳ', 24, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 011:2011/TL-KDK;&nbsp;AP Seal của Mỹ;&nbsp;châu Âu EN 71/3</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Đặc điểm :&nbsp;</strong></p><p>- Keo khô - Glue Stick Thiên Long G-026/AK - Nhân vật Akooland thế giới học cụ thần kỳ, thuận tiện cho người sử dụng, an toàn, thuận tiện. Thích hợp cho học sinh, sinh viên, nhân viên văn phòng.</p><p>- Thiết kế với màu sắc tươi sáng, trẻ trung, sinh động cùng với hình ảnh nhân vật truyền thuyết thế giới AKOOLAND: Pháp Sư -TAHI, Tiên Tử CICI, Đấu Sĩ DASI, Thiên Tài Công Nghệ FIHA.</p>', '2025-05-19 05:06:16', '2025-05-19 05:06:16'),
(120, 'Keo dán giấy Tắc Kè (keo khô) Thiên Long Colokit G-C011 màu trắng trong suốt, độ kết dính cao, không độc hại', 24, 8, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Colokit</td></tr><tr><td>Chất liệu</td><td>Chất liệu tự nhiên, không độc hại</td></tr><tr><td>Trọng lượng</td><td>8 gram</td></tr><tr><td>Loại keo</td><td>Keo trắng</td></tr></tbody></table></figure><p>Keo khô Colokit&nbsp;trong suốt&nbsp;G-C011 là loại keo chuyên dùng để dán giấy, ở dạng khô, sử dụng thuận tiện, không lo bị chảy, không&nbsp;bám dính tay.</p><p><strong>Đặc điểm :&nbsp;</strong></p><p>- Keo trắng, có độ kết dính cao, khô nhanh.<br>- Keo không độc hại.</p>', '2025-05-19 05:17:07', '2025-05-19 05:17:07'),
(121, 'Keo đa năng 502 Thiên Long Flexoffice FO-SG001/VN - Siêu dính', 24, 4, NULL, NULL, '2025-05-19 05:19:10', '2025-05-19 05:19:10'),
(122, 'Keo khô FlexOffice trắng FO-G005', 24, 4, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>FlexOffice</td></tr><tr><td>Chất liệu</td><td>Chất liệu tự nhiên, không độc hại</td></tr><tr><td>Trọng lượng</td><td>8 gram</td></tr><tr><td>Loại keo</td><td>Keo trắng</td></tr></tbody></table></figure><p>Keo khô FlexOffice trong suốt&nbsp;FO-G005 là loại keo chuyên dùng để dán giấy, ở dạng khô, sử dụng thuận tiện, không lo bị chảy, không&nbsp;bám dính tay.</p><p><strong>Đặc điểm :&nbsp;</strong></p><p>- Keo&nbsp;trắng, có độ kết dính cao, khô nhanh.<br>- Keo không độc hại.</p>', '2025-05-19 05:29:27', '2025-05-19 05:29:27'),
(123, 'Keo khô Điểm 10 G-014', 24, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Chất liệu</td><td>Chất liệu tự nhiên, không độc hại</td></tr><tr><td>Trọng lượng</td><td>8 gram</td></tr><tr><td>Quy cách</td><td>30 thỏi / hộp</td></tr></tbody></table></figure><p>Keo khô Thiên Long - Điểm 10 G-014 là loại keo chuyên dùng để dán giấy, ở dạng khô, sử dụng thuận tiện, không lo bị chảy, không&nbsp;bám dính tay.</p>', '2025-05-19 05:33:15', '2025-05-19 05:33:15'),
(124, 'Kéo học sinh Panda Điểm 10 TP-SC02', 21, 3, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>34 gram</td></tr><tr><td>Quy cách</td><td>1 cái/ vỉ</td></tr><tr><td>Màu sắc</td><td>Xanh</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo học sinh Panda Điểm 10 TP-SC02 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, tay cầm nhỏ gọn có hình panda dễ thương.&nbsp;</p><p>Kích thước : 13 cm</p><p>Công dụng: Dùng để cắt giấy.</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo học sinh Loại kéo nhỏ dành cho học sinh làm thủ công, được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p><p>- Lưỡi kéo sắc bén đầu bo tròn</p>', '2025-05-19 05:55:19', '2025-05-19 05:55:19'),
(125, 'Bộ kéo thủ công Colokit SC-C05', 21, 8, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Colokit</td></tr><tr><td>Kích thước</td><td>135 mm</td></tr><tr><td>Trọng lượng</td><td>35 gram</td></tr><tr><td>Quy cách</td><td>1 cái/ vỉ</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Bộ kéo thủ công Colokit SC-C05 có cán làm từ nhựa ABS, thân làm bằng thép không gỉ, dễ dàng tháo lắp. Bộ kéo thủ công Colokit SC-C05 phù hơp cho học sinh tiểu học. Kiểu dáng trang nhã, màu sắc phong phú.</p><p>Bao gồm : 6 mẫu lưỡi cắt và 1 cán kéo .&nbsp;</p><p>Công dụng: Dùng để cắt giấy.<br>&nbsp;</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo học sinh Loại kéo nhỏ dành cho học sinh làm thủ công, được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.</p>', '2025-05-19 06:08:29', '2025-05-19 06:08:29'),
(126, 'Kéo Điểm 10 SC-09/DO', 21, 3, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>34 gram</td></tr><tr><td>Quy cách</td><td>1 cái/vỉ</td></tr><tr><td>Màu sắc</td><td>Màu sắc ngẫu nhiên ( hồng, vàng, xanh lá. Xanh )</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Kéo được in ấn hình ảnh Doraemon bắt mắt</p><p>Kéo SC-09/DO phù hơp cho học sinh, sinh viên. Kiểu dáng trang nhã, màu sắc phong phú.</p><p>Công dụng: Dùng để cắt giấy.</p>', '2025-05-19 06:13:44', '2025-05-19 06:13:44'),
(127, 'Kéo học sinh có nắp đậy Điểm 10 TP-SC01', 21, 3, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>34 gram</td></tr><tr><td>Quy cách</td><td>1 cái/ vỉ</td></tr><tr><td>Màu sắc</td><td>Xanh</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong><br>&nbsp;</p><p>Kéo học sinh có nắp đậy Điểm 10 TP-SC01 phù hơp cho học sinh, sinh viên, văn phòng và gia đình. Kiểu dáng trang nhã, màu sắc xanh năng động.&nbsp;</p><p>Công dụng: Dùng để cắt giấy.<br>&nbsp;</p><p>Kích thước : 15.5 cm</p><p><strong>Đặc điểm nổi bật:</strong></p><p>Kéo học sinh Loại kéo nhỏ dành cho học sinh làm thủ công, được làm bằng kim loại không gỉ, mũi kéo tròn để bảo vệ an toàn cho trẻ khi sử dụng. Tay cầm bằng nhựa giúp cắt nhẹ nhàng, không đau tay. hai lưỡi đồng được giữ áp sát vào nhau một cách linh hoạt nhằm để giữ hai lưỡi kéo tại đúng vị trí, cho phép chúng được ép sát lại với nhau.<br>&nbsp;</p><p>- Lưỡi kéo sắc bén đầu bo tròn</p><p>- Kéo có nắp đậy không gây nguy hiểm cho người sử dụng</p><p>- Tay cầm có móc cài tiện lợi</p>', '2025-05-19 06:16:36', '2025-05-19 06:16:36'),
(128, 'Giấy thủ công Colokit GTC-C006 12 màu khổ lớn', 25, 8, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Giấy thủ công</td></tr><tr><td>Thương hiệu</td><td>Colokit</td></tr><tr><td>kích thước</td><td>297 x 207 mm</td></tr><tr><td>Đóng gói</td><td>12 tờ/ xấp (100 xấp/ thùng)</td></tr><tr><td>Đối tượng sử dụng</td><td>Học sinh cấp 1</td></tr><tr><td>Màu sắc</td><td>12 màu/ xấp</td></tr><tr><td>Trọng lượng</td><td>70 gram/xấp</td></tr></tbody></table></figure><p>- Giấy thủ công Colokit GTC-C006&nbsp;12 màu khổ lớn thích hợp cho học sinh cấp 1 là sản phẩm chuyên dùng để làm thủ công với 12 màu sắc đa dạng, tươi sáng, lại có thêm phân kẻ ô ly thuận tiện cho việc lấy kích thước và cắt hình.</p>', '2025-05-19 06:34:05', '2025-05-19 06:34:05'),
(129, 'Giấy thủ công Colokit GTC-C003 12 màu khổ lớn', 25, 8, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Giấy thủ công</td></tr><tr><td>Thương hiệu</td><td>Colokit</td></tr><tr><td>kích thước</td><td>297 x 210 mm</td></tr><tr><td>Đóng gói</td><td>12 tờ/xấp, 20 xấp/túi, 20 túi/thùng</td></tr><tr><td>Đối tượng sử dụng</td><td>Học sinh cấp 1</td></tr><tr><td>Màu sắc</td><td>12 màu/xấp</td></tr><tr><td>Trọng lượng</td><td>70 gram/xấp</td></tr></tbody></table></figure><p>- Giấy thủ công Colokit GTC-C003 12 màu khổ lớn thích hợp cho học sinh cấp 1 là sản phẩm chuyên dùng để làm thủ công với 12 màu sắc đa dạng, tươi sáng, lại có thêm phân kẻ ô ly thuận tiện cho việc lấy kích thước và cắt hình.</p>', '2025-05-19 06:36:34', '2025-05-19 06:36:34'),
(130, 'Giấy thủ công Colokit GTC-C002 12 màu khổ vừa', 25, 8, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Giấy thủ công</td></tr><tr><td>Thương hiệu</td><td>Colokit</td></tr><tr><td>kích thước</td><td>240 x 165 mm</td></tr><tr><td>Đóng gói</td><td>12 tờ/xấp, 20 xấp/túi, 30 túi/thùng</td></tr><tr><td>Đối tượng sử dụng</td><td>Học sinh cấp 1</td></tr><tr><td>Màu sắc</td><td>12 màu/xấp</td></tr><tr><td>Trọng lượng</td><td>45 gram/xấp</td></tr></tbody></table></figure><p>- Giấy thủ công Colokit GTC-C002 12 màu khổ vừa thích hợp cho học sinh cấp 1 là sản phẩm chuyên dùng để làm thủ công với 12 màu sắc đa dạng, tươi sáng, lại có thêm phân kẻ ô ly thuận tiện cho việc lấy kích thước và cắt hình</p>', '2025-05-19 06:40:31', '2025-05-19 06:40:31'),
(131, 'Tập học sinh 48 trang 4 ô ly vuông 2.5mm 80-100gsm Thiên Long - Akooland thế giới học cụ thần kỳ - Mẫu ngẫu nhiên', 26, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>170 x 240 mm</td></tr><tr><td>Trọng lượng</td><td>100 gram</td></tr><tr><td>Số trang</td><td>48 trang luôn bìa</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh&nbsp;Thiên Long - Akooland thế giới học cụ thần kỳ&nbsp;là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.</p><p>- Thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh.</p><p><strong>Hướng dẫn sử dụng:</strong></p><p>- Đây là loại giấy dày, đặc biệt thích hợp với các loại bút dễ lem mực như bút máy, bút luyện chữ đẹp....</p>', '2025-05-19 06:52:43', '2025-05-19 06:52:43'),
(132, 'Tập học sinh 200 trang dòng kẻ ngang 60 gsm Điểm 10 NB-095 (hình ngẫu nhiên)', 26, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Trọng lượng</td><td>300 gram</td></tr><tr><td>Quy cách</td><td>200 trang / 1 quyển</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh Điểm 10 NB-095 là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh, mang nhãn hiệu Điểm 10. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.</p><p>- Tập học sinh Điểm 10 NB-095 thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh&nbsp;tiểu học.</p><p><strong>Hướng dẫn sử dụng:</strong></p><p>- Loại giấy này khá dày, thích hợp với nhiều loại bút kể cả bút máy.</p>', '2025-05-19 06:54:36', '2025-05-19 06:54:36'),
(133, 'Tập học sinh 48 trang Điểm 10 TP-NB099', 26, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>170 x 240 mm</td></tr><tr><td>Trọng lượng</td><td>110 gram</td></tr><tr><td>Quy cách</td><td>48 trang / 1 quyển, 10 quyển / lốc</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr><tr><td>Định lượng</td><td>100 gsm</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh Thiên Long - Điểm 10 NB-099 (48 trang - 4 ô ly vuông 2.5 x 2.5 mm) là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh, mang nhãn hiệu Điểm 10. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.</p><p>- Tập học sinh Thiên Long - Điểm 10 NB-099 (48 trang -&nbsp;4 ô ly vuông - 2.5 x 2 .5 mm) thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh&nbsp;tiểu học.</p>', '2025-05-19 06:57:03', '2025-05-19 06:57:03'),
(134, 'Tập học sinh 96 trang Điểm 10 TP-NB053 (hình ngẫu nhiên)', 26, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>156 x 205 mm</td></tr><tr><td>Trọng lượng</td><td>140 gram</td></tr><tr><td>Quy cách</td><td>96 trang / 1 quyển, 10 quyển / lốc</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr><tr><td>Định lượng</td><td>80 gsm</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh Thiên Long - Điểm 10 TP-NB053 (96 trang - 4 ô ly vuông) là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh, mang nhãn hiệu Điểm 10. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.</p><p>- Tập học sinh Thiên Long - Điểm 10 TP-NB053 (96 trang -&nbsp;4 ô ly vuông) thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh&nbsp;tiểu học.</p>', '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(135, 'Tập học sinh 96 trang Điểm 10 TP-NB048 (hình ngẫu nhiên)', 26, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>156 x 205 mm</td></tr><tr><td>Trọng lượng</td><td>130 gram</td></tr><tr><td>Quy cách</td><td>96 trang / 1 quyển, 10 quyển / lốc</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh Thiên Long - Điểm 10 TP-NB048 (96 trang - 4 ô ly ngang) là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh, mang nhãn hiệu Điểm 10. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.</p><p>- Tập học sinh Thiên Long - Điểm 10 TP-NB048 (96 trang -&nbsp;4 ô ly ngang) thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh&nbsp;THCS, THPT, SV.</p><p><strong>Hướng dẫn sử dụng:</strong></p><p>- Đây là loại giấy khá mỏng, thích hợp với các loại bút bi, gel.</p>', '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(136, 'Tập học sinh 96 trang Điểm 10 TP-NB039', 26, 3, NULL, '<p>Thông số kĩ thuật :</p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>156 x 205 mm</td></tr><tr><td>Trọng lượng</td><td>110 gram</td></tr><tr><td>Quy cách</td><td>96 trang / 1 quyển, 10 quyển / túi nilon</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr><tr><td>Định lượng</td><td>60 gsm</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>- Tập học sinh Thiên Long - Điểm 10 TP-NB039 (96 trang - 4 ôly vuông 2x2 mm) là một sản phẩm mới thuộc nhóm sản phẩm tập học sinh, mang nhãn hiệu Điểm 10. Sản phẩm được sản xuất theo công nghệ hiện đại, màu sắc đẹp, sắc nét.<br>- Tập học sinh Thiên Long - Điểm 10 TP-NB039 (96 trang - 4 ôly vuông 2x2 mm) bìa cán vân, thiết kế hoàn toàn mới, màu sắc và bố cục ấn tượng, rất thích hợp với học sinh tiểu học.</p><p><strong>Hướng dẫn sử dụng:</strong></p><p>- Đây là loại giấy khá mỏng, thích hợp với các loại bút bi, gel. Viết bút máy đè mạnh có thể bị lem mực.</p>', '2025-05-19 18:24:46', '2025-05-19 18:24:46'),
(137, 'Sổ lò xo đường kẻ ngang 7mm A5 Thiên Long MB-025', 27, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Sổ lò xo</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>210 x 148 mm</td></tr><tr><td>Định lượng</td><td>100 gsm</td></tr><tr><td>Độ trắng</td><td>76%</td></tr><tr><td>Số trang</td><td>120 trang</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-19 18:41:03', '2025-05-19 18:41:03'),
(138, 'Sổ lò xo đường kẻ ngang A5 Thiên Long MB-011', 27, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Sổ tay</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>148 x 210 mm</td></tr><tr><td>Định lượng</td><td>100 gsm</td></tr><tr><td>Độ trắng</td><td>90%</td></tr><tr><td>Số trang</td><td>120 trang</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-19 19:01:29', '2025-05-19 19:01:29'),
(139, 'Sổ lò xo A7 Thiên Long', 27, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Sổ tay</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>7.4 x 10.5 cm</td></tr><tr><td>Đóng gói</td><td>1 cuốn</td></tr><tr><td>Kiểu sổ</td><td>Lò xo</td></tr><tr><td>Số trang</td><td>160 trang (không bìa) - 70 gsm</td></tr></tbody></table></figure><p>-Thiết kế hiện đại, phù hợp với mọi đối tượng&nbsp;<br>- Kiểu dáng nhỏ gọn, vừa tay cầm<br>- Chất giấy mịn, viết êm, không lem thấm&nbsp;</p>', '2025-05-19 19:04:25', '2025-05-19 19:04:25'),
(140, 'Sổ lò xo dọc A5 160T MB-004', 27, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Sổ tay</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>15 x 21 cm</td></tr><tr><td>Định lượng</td><td>70 gsm</td></tr><tr><td>Kiểu sổ</td><td>Lò xo</td></tr><tr><td>Số trang</td><td>160 trang (không bìa)</td></tr></tbody></table></figure><p>-Thiết kế hiện đại, phù hợp với mọi đối tượng&nbsp;<br>- Kiểu dáng nhỏ gọn, vừa tay cầm<br>- Chất giấy mịn, viết êm, không lem thấm&nbsp;</p>', '2025-05-19 19:06:12', '2025-05-19 19:06:12'),
(141, 'Sổ lò xo đường kẻ ngang A5 Thiên Long - Tặng Bút và Sticker', 27, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Sổ lò xo</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>148 x 210 mm</td></tr><tr><td>Định lượng</td><td>100 gsm</td></tr><tr><td>Độ trắng</td><td>76%</td></tr><tr><td>Số trang</td><td>120 trang</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-19 19:08:23', '2025-05-19 19:08:23'),
(142, 'Nhãn vở Điểm 10 TP-NBL01 4 xấp (3 cái/xấp)', 28, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>75 x 45 mm</td></tr><tr><td>đơn vị tính</td><td>Túi (12 cái/túi)</td></tr><tr><td>Quy cách</td><td>3 tờ/ xấp, 4 xấp/túi, 100 túi/hộp, 18 hộp/ thùng</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Nhãn vở Điểm 10 TP-NBL01 là sản phẩm của tập đoàn Thiên Long - mang thương hiệu Điểm 10 từ lâu đã được người tiêu dùng đón nhận về chất lượng sản phẩm. Nhãn vở Điểm 10 TP-NBL01 được sản xuất bằng công nghệ hiện đại có độ dai, mịn cao.</p><p>- Dễ bóc tách các tờ nhãn để sử dụng.</p><p>- Dễ dán lên bìa tập, các mặt phẳng ...</p><p>- Dễ viết chữ lên trên nhãn dán mà không làm nhòe mực.</p><p>- An toàn cho sức khỏe người sử dụng.&nbsp;</p>', '2025-05-19 19:12:48', '2025-05-19 19:12:48'),
(143, 'Nhãn vở Điểm 10 TP-NBL03 (8 cái/ tờ)', 28, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>65 x 35 mm</td></tr><tr><td>đơn vị tính</td><td>Túi (40 cái/túi)</td></tr><tr><td>Đóng gói</td><td>40 nhãn</td></tr><tr><td>Chất liệu</td><td>Bột giấy</td></tr></tbody></table></figure><p><strong>Tính năng nổi bật:</strong></p><p>Nhãn vở Điểm 10 TP-NBL03 là sản phẩm của tập đoàn Thiên Long - mang thương hiệu Điểm 10 từ lâu đã được người tiêu dùng đón nhận về chất lượng sản phẩm. Nhãn vở Điểm 10 TP-NBL03 được sản xuất bằng công nghệ hiện đại có độ dai, mịn cao.</p><p>- Dễ bóc tách các tờ nhãn để sử dụng.</p><p>- Dễ dán lên bìa tập, các mặt phẳng ...</p><p>- Dễ viết chữ lên trên nhãn dán mà không làm nhòe mực.</p><p>- An toàn cho sức khỏe người sử dụng.&nbsp;</p>', '2025-05-19 19:14:32', '2025-05-19 19:14:32'),
(144, 'Nhãn vở Thiên Long Điểm 10 TP-NBL006', 28, 3, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Điểm 10</td></tr><tr><td>Kích thước</td><td>155 x 123 mm</td></tr><tr><td>Quy cách</td><td>4 cái / xấp / kiện</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 099:2018/TL-NV</td></tr><tr><td>Định lượng giấy</td><td>95 gsm</td></tr></tbody></table></figure>', '2025-05-19 19:16:28', '2025-05-19 19:16:28'),
(145, 'Nhãn vở Thiên Long - Nhân vật Akooland thế giới học cụ thần kỳ', 28, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Kích thước</td><td>80 x 50 mm</td></tr><tr><td>Đóng gói</td><td>15 nhãn/ xấp/ kiện.</td></tr><tr><td>Tiêu chuẩn</td><td>TCCS 099:2018/TL-NV</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Khuyến cáo</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-19 19:18:41', '2025-05-19 19:18:41'),
(146, 'Túi 10 Bìa bao Sách Giáo Khoa Thiên Long BOC-007', 28, 1, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Trọng lượng</td><td>Đang cập nhật</td></tr><tr><td>Kích thước</td><td>427 x 266 mm</td></tr><tr><td>Chất liệu</td><td>Nhựa PP</td></tr><tr><td>Loại</td><td>Hoa văn</td></tr><tr><td>Quy cách</td><td>Túi 10 cái</td></tr><tr><td>Bảo quản</td><td>Tránh xa nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure><p>- Bìa bao sách được sản xuất theo công nghệ hiện đại, không có nhựa tái chế, không độc hại.<br>- Bìa bao bằng nhựa PP trong, nhựa dẻo, bền, bảo vệ tốt bìa sách bên trong.<br>- Đường keo bám dính tốt với bìa, có thể lặp lại 5 lần khi dán vào và tháo ra, keo vẫn bám dính tốt.</p>', '2025-05-19 19:22:39', '2025-05-19 19:22:39'),
(147, 'Combo 10 Bìa bao tập học sinh phiên bản Akooland TP-NBC01/AK', 28, 1, NULL, '<p><strong>Thông Số Kỹ Thuật</strong></p><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Trọng lượng</td><td>80 gram</td></tr><tr><td>Kích thước cuộn</td><td>232 x 51mm</td></tr><tr><td>Chất liệu</td><td>Nhựa OPP</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Sản xuất</td><td>Việt Nam</td></tr><tr><td>Bảo quản</td><td>Tránh nguồn nhiệt, hóa chất. Không thích hợp cho trẻ dưới 3 tuổi.</td></tr></tbody></table></figure>', '2025-05-19 19:25:11', '2025-05-19 19:25:11'),
(148, 'Bút chì nhựa Thiên Long GP-016', 29, 1, NULL, '<p><strong>Thông số kĩ thuật :</strong></p><figure class=\"table\"><table><tbody><tr><td>Tên danh mục</td><td>Bút chì</td></tr><tr><td>Thương hiệu</td><td>Thiên Long</td></tr><tr><td>Đầu gôm</td><td>Không</td></tr><tr><td>Kiểu dáng</td><td>Dạng thằng lục giác</td></tr><tr><td>Độ cứng ruột chì</td><td>HB</td></tr><tr><td>Chiều dài bút</td><td>165 ±1</td></tr><tr><td>Đường kính ruột chì</td><td>2mm ±0.5</td></tr><tr><td>Đóng gói</td><td>10 cây/hộp</td></tr><tr><td>Trọng lượng</td><td>8 gram</td></tr></tbody></table></figure><p>Bút chì nhựa HB Thiên Long GP-016 được sử dụng phổ biến tại các văn phòng, công sở và hữu ích cho học sinh, sinh viên. Bút chì nhỏ gọn, có tính ứng dụng cao và màu viết đẹp nên được tin dùng trong thời gian vừa qua. Ruột bút HB với ưu điểm cho nét đậm, ngòi mềm, là loại ruột chì khá phổ biến.</p><p>- Ruột bút HB có màu chì đậm, ngòi mềm hạn chế gãy khi chuốt và đảm bảo cho bạn những trang viết rõ nét, đều màu và mịn đẹp. Nhờ đó mà những nét tô vẽ của bạn thêm tinh tế và có độ thẩm mỹ cao.</p><p>- Khi sử dụng, ngòi không bị gãy vụn, ít hao, dễ xóa sạch bằng gôm, đặc biệt hạn chế làm bẩn tay và quần áo.</p><p>- Bút chì nhựa HB Thiên Long GP-016 được thiết kế nhỏ gọn thân lục giác giúp bạn dễ dàng cầm nắm và điều chỉnh nét vẽ, đồng thời, bút còn dễ cất giữ trong bóp, giỏ xách khi đi học, tiện dùng khi cần.</p>', '2025-05-20 01:25:36', '2025-05-20 01:25:36'),
(149, 'Bút chì bấm Thiên Long PC-034 - Màu thân ngẫu nhiên', 29, 1, NULL, '<p>Bút chì bấm Thiên Long PC-034 với thiết kế tích hợp đầu chuốt chì trên thân bút giúp làm sắc ngòi bút dễ dàng và nhanh chóng. Kích thước ngòi 0.5mm, có thể kết hợp với các loại min chì có độ cứng khác nhau, phù hợp cho cả giới văn phòng lẫn các bé đi học.&nbsp;</p><p>&nbsp;</p><p>🔹TÍNH NĂNG SẢN PHẨM</p><p>▪️ Loại min chì:&nbsp;2B</p><p>▪️ Bút chì bấm tích hợp chuốt tiện lợi.</p><p>▪️ Ruột chì ra đều và hạn chế gãy.</p><p>▪️ Đa dạng chức năng sử dụng: tô, vẽ, viết…</p><p>▪️ Màu sắc tươi sáng với thiết kế trong suốt tạo sự hài hòa, hợp với cả người lớn và trẻ nhỏ.</p><p>&nbsp;</p><p>🔹TIÊU CHUẨN VÀ BẢO QUẢN</p><p>▪️ Tiêu chuẩn: Sản xuất theo tiêu chuẩn cơ sở TCCS 19:2008/TL-BCB.</p><p>▪️ Bảo quản: Không thích hợp cho trẻ dưới 3 tuổi. Sản phẩm có chi tiết nhỏ, sắc bén cẩn thận khi sử dụng. Bảo quản nơi khô ráo, thoáng mát, tránh nguồn nhiệt và hóa chất.</p>', '2025-05-20 01:48:31', '2025-05-20 01:48:31');
INSERT INTO `products` (`id`, `name`, `sub_category_id`, `brand_id`, `description`, `detail_description`, `created_at`, `updated_at`) VALUES
(150, 'Bút chì bấm Thiên Long PC-023', 29, 1, NULL, '<p>Bút chì bấm có thân bằng nhựa.Sử dụng min chì thông dụng trên thị trường.Thay ruột chì dễ dàng, nhanh chóng và tiện lợi.Sử dụng cơ chế bấm rất nhạy, bấm nhẹ tay. Bút chì bấm HB Thiên Long PC-023 được sử dụng phổ biến tại các văn phòng, công sở và hữu ích cho học sinh, sinh viên.</p><p><strong>Đặc điểm :</strong></p><p>- Bút chì nhỏ gọn, có tính ứng dụng cao và màu viết đẹp nên được tin dùng trong thời gian vừa qua. Ruột bút HB với ưu điểm cho nét đậm, ngòi mềm, là loại ruột chì khá phổ biến.</p><p>- Ruột bút HB có màu chì đậm, ngòi mềm hạn chế gãy khi chuốt và đảm bảo cho bạn những trang viết rõ nét, đều màu và mịn đẹp. Nhờ đó mà những nét tô vẽ của bạn thêm tinh tế và có độ thẩm mỹ cao. Khi sử dụng, ngòi không bị gãy vụn, ít hao, dễ xóa sạch bằng gôm, đặc biệt hạn chế làm bẩn tay và quần áo.</p><p>Hiện nay, bút chì HB Thiên Long đang dần trở nên gần gũi đối với các bạn học sinh, nhất là dùng trong môn học vẽ, hình học, thi trắc nghiệm,... Nó là dụng cụ không thể thiếu với các nhà thiết kế, nhân viên văn phòng chuyên về các hoạt động sáng tạo và cho nhiều mục đích cá nhân khác.</p><p><strong>Bảo quản:</strong></p><p>Lưu trữ nơi khô ráo, thoáng mát, tránh xa nguồn nhiệt.</p>', '2025-05-29 18:35:20', '2025-05-29 18:35:20'),
(151, 'Bút chì bấm Thiên Long PC-022', 29, 1, NULL, '<p>Bút chì bấm có thân bằng nhựa. Sử dụng min chì thông dụng trên thị trường. Thay ruột chì dễ dàng, nhanh chóng và tiện lợi. Sử dụng cơ chế bấm rất nhạy, bấm nhẹ tay. Bút chì bấm 2B Thiên Long PC-022 được sử dụng phổ biến tại các văn phòng, công sở và hữu ích cho học sinh, sinh viên.</p><p><strong>Đặc điểm :</strong></p><p>- Bút chì nhỏ gọn, có tính ứng dụng cao và màu viết đẹp nên được tin dùng trong thời gian vừa qua. Ruột bút 2B với ưu điểm cho nét đậm, ngòi mềm, là loại ruột chì khá phổ biến.<br>- Ruột bút 2B có màu chì đậm, ngòi mềm hạn chế gãy khi chuốt và đảm bảo cho bạn những trang viết rõ nét, đều màu và mịn đẹp. Nhờ đó mà những nét tô vẽ của bạn thêm tinh tế và có độ thẩm mỹ cao. Khi sử dụng, ngòi không bị gãy vụn, ít hao, dễ xóa sạch bằng gôm, đặc biệt hạn chế làm bẩn tay và quần áo.<br>- Bút chì bấm 2B Thiên Long PC-022 được thiết kế nhỏ gọn thân lục giác giúp bạn dễ dàng cầm nắm và điều chỉnh nét vẽ, đồng thời, bút còn dễ cất giữ trong bóp, giỏ xách khi đi học, tiện dùng khi cần. Bút có gắn sẵn gôm ở chuôi chì tiện lợi khi sử dụng.<br>- Có tính ứng dụng cao</p><p>Hiện nay, bút chì 2B Thiên Long đang dần trở nên gần gũi đối với các bạn học sinh, nhất là dùng trong môn học vẽ, hình học, thi trắc nghiệm,... Nó là dụng cụ không thể thiếu với các nhà thiết kế, nhân viên văn phòng chuyên về các hoạt động sáng tạo và cho nhiều mục đích cá nhân khác.</p><p><strong>Bảo quản:</strong></p><p>Lưu trữ nơi khô ráo, thoáng mát, tránh xa nguồn nhiệt.</p>', '2025-05-29 18:48:27', '2025-05-29 18:48:27'),
(152, 'Bút chì bấm Điểm 10 TP-PC01', 29, 3, NULL, '<p>Bút chì bấm Điểm 10 TP-PC01 là loại bút chì bấm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế.<br>- Cơ chế bấm rất nhạy, rất nhẹ tay&nbsp;<br>- Sử dụng min chì thông dụng trên thị trường, thay ruột chì dễ dàng</p><p><strong>Lợi ích:</strong></p><p>- Các bạn tuổi teen có thêm một bộ sưu tập dụng cụ học tập thú cưng đầy cá tính, năng động, tràn sức sống.<br>- Cách phối màu trên thân bút độc đáo, ấn tượng đem đến cho các bạn teen niềm vui thích học tập.</p><p><strong>Bảo quản:</strong></p><p>- Lưu trữ nơi khô ráo, thoáng mát, tránh xa nguồn nhiệt.<br>- Thùng carton phải vận chuyển theo đúng hướng dẫn trên thùng, tránh va đập mạnh.</p>', '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(153, 'Bút chì bấm Thiên Long PC-018', 29, 1, NULL, '<p>Harajuku - xuất phát từ Nhật Bản - đã trở thành tên của cả một xu hướng thời trang khi giới trẻ nơi đây tìm ra cho mình một phong cách “không giống ai”: phá cách, nổi loạn, đầy sắc màu và rất ấn tượng. Dựa trên phong cách Harajuku đến từ Nhật Bản, được Việt hóa cho phù hợp với các bạn học sinh Việt Nam,&nbsp;bút chì bấm PC-018 được phối màu sinh động, cá tính, ấn tượng theo một quy luật không trật tự. Kiểu dáng giống bút chì bấm thông thường nhưng thân bút được thiết kế theo phong cách thời trang Harajuku của Nhật Bản, phù hợp cho tuổi teen.</p><p><strong>Đặc điểm:</strong></p><p>- PC-018 Harajuku là loại bút chì bấm được sản xuất theo công nghệ hiện đại, đạt tiêu chuẩn quốc tế.<br>- Cơ chế bấm rất nhạy, rất nhẹ tay .<br>- Sử dụng min chì thông dụng trên thị trường, thay ruột chì dễ dàng</p><p><strong>Lợi ích:</strong></p><p>- Các bạn tuổi teen có thêm một dụng cụ học tập theo thời trang Harajuku đầy cá tính, năng động, tràn sức sống.<br>- Cách phối màu trên thân bút độc đáo, ấn tượng đem đến cho các bạn teen niềm vui thích học tập.</p><p><strong>Bảo quản:</strong></p><p>- Lưu trữ nơi khô ráo, thoáng mát, tránh xa nguồn nhiệt.<br>- Thùng carton phải vận chuyển theo đúng hướng dẫn trên thùng, tránh va đập mạnh.</p>', '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(154, 'Bút chì gỗ HB Flexoffice FO-GP07/VN', 29, 4, NULL, '<p>Bút chì gỗ HB Flexoffice FO-GP07/VN thích hợp cho các hoạt động như ghi chép, vẽ nháp, học tập.</p><p><strong>Đặc điểm:</strong></p><p>- Bút chì thân gỗ có sẵn gôm, thân dạng hình lục giác, dễ cầm nắm khi viết. Thân có thiết kế đơn giản, sơn vàng đen.<br>- Ruột chì loại HB, cứng và đen. Nét đậm vừa phải, ít gãy, dễ gôm tẩy.<br>- Thích hợp cho các hoạt động như ghi chép, vẽ nháp, học tập.</p><p><strong>Lưu trữ &amp; bảo quản:</strong></p><p>- Hạn chế rơi nhiều lần, va đập mạnh khi vận chuyển và sử dụng.<br>- Lưu trữ và trưng bày nơi thoáng mát.<br>- Tránh xa nguồn nhiệt và những nơi có ánh nắng trực tiếp chiếu vào.</p>', '2025-05-29 19:20:33', '2025-05-29 19:20:33'),
(155, 'Bút chì gỗ 2B Thiên Long GP-018', 29, 1, NULL, '<p>Bút chì gỗ Thiên Long GP-018 thích hợp cho các hoạt động như ghi chép, vẽ nháp, học tập. Đặc biệt thích hợp cho các em học sinh tiểu học.&nbsp;</p><p><strong>Đặc điểm:</strong></p><p>- Bút chì thân gỗ, thân dạng hình lục giác, dễ cầm nắm khi viết. Thân thiết kế đơn giản nhưng sang trọng, sơn một màu vàng.</p><p>- Ruột chì loại 2B, mềm và đen. Nét đậm, lướt nhẹ nhàng trên bề mặt giấy.</p><p><strong>Lưu trữ &amp; bảo quản:</strong></p><p>- Hạn chế rơi nhiều lần,&nbsp;va đập mạnh khi vận chuyển và sử dụng.<br>- Lưu trữ và trưng bày nơi thoáng mát.<br>- Tránh xa nguồn nhiệt và những nơi có ánh nắng trực tiếp chiếu vào.</p>', '2025-05-29 19:27:15', '2025-05-29 19:27:15'),
(156, 'Bút chì gỗ HB Flexoffice FO-GP03', 29, 4, NULL, '<p>Bút chì gỗ HB Flexoffice FO-GP03 thích hợp cho các hoạt động như ghi chép, vẽ nháp, học tập.</p><p><strong>Đặc điểm:</strong></p><p>- Bút chì thân gỗ có sẵn gôm, thân dạng hình lục giác, dễ cầm nắm khi viết. Thân có thiết kế đơn giản, sơn hai màu đỏ và đen.<br>- Ruột chì loại HB, cứng và đen. Nét đậm vừa phải, ít gãy, dễ gôm tẩy.<br>- Thích hợp cho các hoạt động như ghi chép, vẽ nháp, học tập.</p><p><strong>Lưu trữ &amp; bảo quản:</strong></p><p>- Hạn chế rơi nhiều lần,&nbsp;va đập mạnh khi vận chuyển và sử dụng.<br>- Lưu trữ và trưng bày nơi thoáng mát.<br>- Tránh xa nguồn nhiệt và những nơi có ánh nắng trực tiếp chiếu vào.</p>', '2025-05-29 19:33:26', '2025-05-29 19:33:26'),
(157, 'Bút chì gỗ 2B Thiên Long GP-027', 29, 1, NULL, '<p>Bút chì gỗ Thiên Long GP-027 thích hợp vẽ, ghi chú nhanh...</p><p><strong>Đặc điểm:</strong></p><p>- Nét đậm, để lại nhiều than chì trên giấy<br>- Lướt rất nhẹ nhàng trên bề mặt viết<br>- Dùng để lên khối các bức vẽ, đổ bóng đạt đến nhiều mức độ sáng tối khác nhau. Ngoài ra khá hữu dụng trong việc tô đậm vào ô trả lời trắc nghiệm nhanh nhất.<br>- Thân lục giác, 2B.</p><p><strong>Bảo quản:</strong></p><p>- Hạn chế rơi nhiều lần và va đập mạnh khi vận chuyển và sử dụng.<br>- Lưu trữ và trưng bày nơi thoáng mát.<br>- Tránh xa nguồn nhiệt và những nơi có ánh nắng trực tiếp chiếu vào.</p>', '2025-05-29 19:42:38', '2025-05-29 19:42:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_combos`
--

CREATE TABLE `product_combos` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `combo_id` int UNSIGNED DEFAULT NULL,
  `color_id` int UNSIGNED DEFAULT NULL,
  `original_price` int NOT NULL,
  `unit_price` int NOT NULL,
  `promotion_price` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_combos`
--

INSERT INTO `product_combos` (`id`, `product_id`, `combo_id`, `color_id`, `original_price`, `unit_price`, `promotion_price`, `quantity`, `created_at`, `updated_at`) VALUES
(29, 34, NULL, NULL, 804000, 964800, 0, 50, '2025-05-01 06:44:07', '2025-05-25 21:28:12'),
(32, 37, NULL, NULL, 520000, 870000, 650000, 50, '2025-05-01 07:52:29', '2025-05-01 07:52:29'),
(33, 38, NULL, NULL, 160800, 192960, 173664, 50, '2025-05-01 08:36:11', '2025-05-01 08:36:11'),
(34, 39, NULL, NULL, 139200, 167040, 126950, 50, '2025-05-01 08:56:20', '2025-05-01 08:56:20'),
(35, 40, NULL, NULL, 808000, 969600, 727200, 50, '2025-05-01 09:02:14', '2025-05-01 09:02:14'),
(36, 41, NULL, NULL, 696000, 835200, 643104, 50, '2025-05-01 09:04:34', '2025-05-01 09:04:34'),
(37, 42, NULL, NULL, 404000, 505000, 380000, 50, '2025-05-01 09:07:09', '2025-05-01 09:07:09'),
(39, 44, NULL, NULL, 348000, 435000, 335000, 50, '2025-05-01 09:17:59', '2025-05-01 09:17:59'),
(40, 45, NULL, NULL, 80800, 101000, 76000, 50, '2025-05-01 09:28:14', '2025-05-01 09:28:14'),
(41, 46, NULL, NULL, 351999, 440000, 330000, 52, '2025-05-01 09:30:45', '2025-05-01 09:30:45'),
(42, 47, NULL, NULL, 176000, 220000, 187000, 50, '2025-05-01 09:32:51', '2025-05-01 09:32:51'),
(43, 48, 1, NULL, 35200, 42240, 38016, 50, '2025-05-01 09:34:37', '2025-05-28 03:50:24'),
(44, 49, NULL, NULL, 848000, 1017600, 864960, 50, '2025-05-01 09:39:05', '2025-05-01 09:39:05'),
(45, 50, NULL, NULL, 831997, 998396, 848637, 50, '2025-05-01 09:41:11', '2025-05-01 09:41:11'),
(46, 51, NULL, NULL, 814400, 977280, 830688, 50, '2025-05-01 09:42:30', '2025-05-01 09:42:30'),
(47, 52, NULL, 5, 23200, 29000, 26100, 50, '2025-05-01 09:53:18', '2025-05-01 09:53:18'),
(48, 52, NULL, 6, 23200, 44000, 39600, 50, '2025-05-01 09:53:18', '2025-05-01 09:53:18'),
(49, 53, NULL, 5, 10000, 12000, 10800, 48, '2025-05-01 19:42:06', '2025-05-24 04:56:45'),
(50, 53, NULL, 9, 10000, 12000, 10800, 50, '2025-05-01 19:42:09', '2025-05-01 19:42:09'),
(51, 54, 4, 8, 19167, 23000, 18400, 50, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(52, 54, 5, 8, 38333, 46000, 36800, 50, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(53, 54, 7, 8, 76667, 92000, 73600, 50, '2025-05-01 20:03:42', '2025-05-01 20:03:42'),
(54, 55, NULL, 8, 58333, 70000, 56000, 50, '2025-05-01 20:59:46', '2025-05-01 20:59:46'),
(55, 55, NULL, 10, 58333, 70000, 56000, 50, '2025-05-01 20:59:46', '2025-05-01 20:59:46'),
(56, 56, NULL, 8, 11250, 13500, 12150, 49, '2025-05-01 21:03:18', '2025-05-12 23:46:03'),
(57, 56, NULL, 3, 11250, 13500, 12150, 50, '2025-05-01 21:03:18', '2025-05-01 21:03:18'),
(58, 57, NULL, NULL, 43333, 52000, 26000, 50, '2025-05-01 21:07:44', '2025-05-28 05:44:29'),
(59, 58, NULL, 11, 125000, 150000, 112500, 50, '2025-05-01 21:11:17', '2025-05-01 21:11:17'),
(60, 58, NULL, 8, 125000, 150000, 112500, 50, '2025-05-01 21:11:17', '2025-05-01 21:11:17'),
(61, 59, NULL, 11, 11667, 14000, 10500, 50, '2025-05-01 21:15:24', '2025-05-01 21:15:24'),
(62, 59, NULL, 9, 11667, 14000, 10500, 50, '2025-05-01 21:15:24', '2025-05-01 21:15:24'),
(63, 60, NULL, 11, 108333, 130000, 97500, 50, '2025-05-02 01:32:42', '2025-05-02 01:32:42'),
(64, 60, NULL, 9, 108333, 130000, 97500, 51, '2025-05-02 01:32:45', '2025-05-02 01:32:45'),
(65, 61, NULL, 7, 10000, 12000, 10200, 50, '2025-05-02 01:39:40', '2025-05-02 01:39:40'),
(66, 61, NULL, 8, 10000, 12000, 10200, 50, '2025-05-02 01:39:40', '2025-05-02 01:39:40'),
(67, 62, NULL, 7, 8333, 10000, 7500, 50, '2025-05-02 01:45:16', '2025-05-02 01:45:16'),
(68, 62, NULL, 9, 8333, 10000, 7500, 50, '2025-05-02 01:45:16', '2025-05-02 01:45:16'),
(69, 63, NULL, NULL, 15833, 19000, 8930, 50, '2025-05-02 01:50:21', '2025-05-02 01:50:21'),
(70, 64, NULL, NULL, 13083, 15700, 8949, 50, '2025-05-02 01:54:19', '2025-05-02 01:54:19'),
(71, 65, NULL, NULL, 26833, 32200, 25760, 53, '2025-05-02 01:57:27', '2025-05-02 01:57:27'),
(72, 66, NULL, NULL, 15917, 19100, 15280, 50, '2025-05-02 02:05:44', '2025-05-02 02:05:44'),
(73, 67, NULL, NULL, 6500, 7800, 6240, 50, '2025-05-02 02:20:42', '2025-05-02 02:20:42'),
(74, 68, NULL, NULL, 17917, 21500, 10750, 50, '2025-05-02 02:24:11', '2025-05-28 05:47:40'),
(75, 69, NULL, NULL, 22667, 27200, 24480, 50, '2025-05-02 02:29:57', '2025-05-02 02:29:57'),
(76, 70, NULL, NULL, 28167, 33800, 30420, 50, '2025-05-02 02:32:15', '2025-05-28 05:54:52'),
(77, 71, NULL, NULL, 28167, 33800, 30420, 40, '2025-05-02 02:34:33', '2025-06-28 19:26:27'),
(78, 72, NULL, NULL, 37500, 45000, 40500, 50, '2025-05-02 02:37:03', '2025-05-02 02:37:03'),
(79, 73, NULL, 9, 39167, 47000, 42300, 50, '2025-05-02 03:19:34', '2025-05-02 03:19:34'),
(80, 73, NULL, 2, 39169, 47003, 42303, 50, '2025-05-02 03:19:34', '2025-05-02 03:19:34'),
(81, 74, NULL, NULL, 76750, 92100, 46050, 50, '2025-05-02 03:26:05', '2025-05-02 03:26:05'),
(82, 75, NULL, 8, 66917, 80300, 68255, 50, '2025-05-02 03:29:56', '2025-05-02 03:29:56'),
(83, 75, NULL, 3, 82500, 99000, 84150, 50, '2025-05-02 03:29:56', '2025-05-02 03:29:56'),
(84, 76, NULL, NULL, 110000, 132000, 112200, 50, '2025-05-02 03:32:13', '2025-05-02 03:32:13'),
(85, 77, NULL, NULL, 20833, 25000, 12500, 50, '2025-05-02 03:39:17', '2025-05-28 07:23:45'),
(86, 78, NULL, NULL, 16667, 20000, 10000, 50, '2025-05-02 03:41:26', '2025-05-28 07:24:21'),
(87, 79, NULL, NULL, 23333, 28000, 16800, 49, '2025-05-02 03:45:00', '2025-05-26 02:38:46'),
(88, 80, NULL, NULL, 25833, 31000, 15500, 49, '2025-05-02 03:48:09', '2025-05-12 23:52:43'),
(89, 81, NULL, NULL, 21667, 26000, 13000, 50, '2025-05-02 03:51:25', '2025-05-28 07:26:19'),
(90, 82, NULL, NULL, 48333, 58000, 29000, 50, '2025-05-02 03:53:38', '2025-05-02 03:53:38'),
(91, 83, NULL, NULL, 21667, 26000, 13000, 50, '2025-05-02 03:57:40', '2025-05-02 03:57:40'),
(92, 84, NULL, NULL, 35833, 43000, 36550, 50, '2025-05-02 08:28:14', '2025-05-28 07:02:27'),
(93, 85, NULL, NULL, 30000, 36000, 30600, 50, '2025-05-02 08:31:50', '2025-05-02 08:31:50'),
(94, 86, NULL, NULL, 56667, 68000, 34000, 50, '2025-05-02 08:35:11', '2025-05-28 07:04:08'),
(95, 87, NULL, NULL, 30917, 37100, 31535, 50, '2025-05-02 08:43:03', '2025-05-28 07:09:18'),
(96, 88, NULL, NULL, 18583, 22300, 18955, 48, '2025-05-02 19:39:42', '2025-06-28 19:53:18'),
(97, 89, NULL, NULL, 20333, 24400, 20740, 49, '2025-05-02 19:43:23', '2025-05-12 23:52:43'),
(98, 90, NULL, NULL, 10833, 13000, 8970, 50, '2025-05-02 19:45:59', '2025-05-28 07:13:06'),
(99, 91, NULL, NULL, 265000, 318000, 270300, 50, '2025-05-02 19:54:18', '2025-05-02 19:54:18'),
(100, 92, NULL, NULL, 16667, 20000, 17000, 50, '2025-05-02 19:57:48', '2025-05-02 19:57:48'),
(101, 93, NULL, NULL, 23333, 28000, 23800, 49, '2025-05-02 20:01:45', '2025-05-12 23:52:43'),
(102, 94, NULL, NULL, 15000, 18000, 15300, 50, '2025-05-02 20:03:50', '2025-05-02 20:03:50'),
(103, 95, NULL, NULL, 3000, 3600, 3240, 50, '2025-05-02 20:10:31', '2025-05-02 20:10:31'),
(104, 96, NULL, NULL, 5000, 6000, 5400, 48, '2025-05-02 20:12:47', '2025-05-26 02:30:26'),
(105, 97, NULL, 1, 132500, 159000, 127200, 50, '2025-05-02 22:40:09', '2025-05-02 22:40:09'),
(106, 97, NULL, 9, 132500, 159000, 127200, 50, '2025-05-02 22:40:11', '2025-05-02 22:40:11'),
(107, 97, NULL, 3, 132500, 159000, 127200, 50, '2025-05-02 22:40:11', '2025-05-02 22:40:11'),
(108, 98, NULL, 1, 713333, 856000, 513600, 50, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(109, 98, NULL, 5, 713333, 856000, 513600, 50, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(110, 98, NULL, 3, 713333, 856000, 513600, 50, '2025-05-02 22:46:27', '2025-05-02 22:46:27'),
(111, 99, NULL, 1, 658667, 790400, 474240, 50, '2025-05-02 22:54:47', '2025-05-02 22:54:47'),
(112, 99, NULL, 3, 658667, 790400, 474240, 50, '2025-05-02 22:54:47', '2025-05-02 22:54:47'),
(113, 100, NULL, 10, 617500, 741000, 592800, 50, '2025-05-02 22:59:42', '2025-05-02 22:59:42'),
(114, 100, NULL, 8, 617500, 741000, 592800, 50, '2025-05-02 22:59:42', '2025-05-02 22:59:42'),
(115, 101, NULL, NULL, 82500, 99000, 69300, 50, '2025-05-02 23:03:55', '2025-05-02 23:03:55'),
(116, 102, NULL, 8, 54583, 65500, 52400, 49, '2025-05-02 23:07:18', '2025-05-12 23:46:03'),
(117, 102, NULL, 5, 54583, 65500, 52400, 50, '2025-05-02 23:07:18', '2025-05-02 23:07:18'),
(118, 103, NULL, NULL, 72500, 87000, 69600, 50, '2025-05-02 23:10:55', '2025-05-02 23:10:55'),
(119, 104, NULL, 5, 37167, 44600, 22300, 50, '2025-05-02 23:13:34', '2025-05-02 23:13:34'),
(120, 104, NULL, 8, 37167, 44600, 22300, 50, '2025-05-02 23:13:34', '2025-05-02 23:13:34'),
(121, 105, NULL, NULL, 4167, 5000, 4000, 48, '2025-05-03 08:37:30', '2025-06-28 19:53:18'),
(122, 106, NULL, NULL, 5833, 7000, 5600, 50, '2025-05-03 08:39:46', '2025-05-31 18:08:23'),
(123, 107, NULL, NULL, 4500, 5400, 4320, 50, '2025-05-03 08:41:49', '2025-05-03 08:41:49'),
(124, 108, NULL, NULL, 5000, 6000, 4800, 50, '2025-05-03 08:44:47', '2025-05-03 08:44:47'),
(125, 109, NULL, NULL, 3417, 4100, 3280, 47, '2025-05-03 08:47:28', '2025-05-31 18:09:06'),
(126, 110, NULL, NULL, 13750, 16500, 9075, 49, '2025-05-03 08:50:05', '2025-05-12 23:46:03'),
(127, 111, NULL, NULL, 9167, 11000, 9900, 49, '2025-05-03 08:52:29', '2025-05-31 18:10:28'),
(128, 112, NULL, NULL, 7833, 9400, 8460, 50, '2025-05-03 08:54:52', '2025-05-31 18:10:48'),
(129, 113, NULL, NULL, 15000, 18000, 9000, 39, '2025-05-03 08:57:34', '2025-06-28 19:26:27'),
(130, 114, NULL, NULL, 20833, 25000, 20000, 41, '2025-05-03 08:59:39', '2025-05-31 18:10:02'),
(131, 115, NULL, NULL, 25000, 30000, 24000, 47, '2025-05-03 09:01:21', '2025-05-26 15:35:15'),
(132, 116, NULL, NULL, 3500, 7000, 4200, 50, '2025-05-19 04:42:06', '2025-05-19 04:42:06'),
(133, 117, NULL, NULL, 5833, 7000, 5600, 50, '2025-05-19 04:53:55', '2025-05-28 07:29:27'),
(134, 118, NULL, NULL, 8333, 10000, 8000, 50, '2025-05-19 04:56:34', '2025-05-28 07:30:25'),
(135, 119, NULL, NULL, 6916, 8299, 4980, 50, '2025-05-19 05:06:16', '2025-05-28 07:31:57'),
(136, 120, NULL, NULL, 4500, 5400, 4320, 50, '2025-05-19 05:17:07', '2025-05-19 05:17:07'),
(137, 121, NULL, NULL, 6167, 7400, 5920, 50, '2025-05-19 05:19:10', '2025-05-28 07:34:52'),
(138, 122, NULL, NULL, 5500, 6600, 5280, 50, '2025-05-19 05:29:27', '2025-05-19 05:29:27'),
(139, 123, NULL, NULL, 7500, 9000, 7200, 50, '2025-05-19 05:33:15', '2025-05-19 05:33:15'),
(140, 124, NULL, NULL, 25000, 30000, 24000, 48, '2025-05-19 05:55:19', '2025-06-26 15:29:16'),
(141, 125, NULL, NULL, 122500, 147000, 73500, 49, '2025-05-19 06:08:29', '2025-06-26 15:29:16'),
(142, 126, NULL, 11, 29167, 35000, 17500, 50, '2025-05-19 06:13:44', '2025-05-19 06:13:44'),
(143, 126, NULL, 2, 29166, 34999, 17500, 50, '2025-05-19 06:13:45', '2025-05-19 06:13:45'),
(144, 126, NULL, 9, 29167, 35000, 17500, 50, '2025-05-19 06:13:45', '2025-05-19 06:13:45'),
(145, 127, NULL, NULL, 27500, 33000, 26400, 50, '2025-05-19 06:16:36', '2025-05-19 06:16:36'),
(146, 128, NULL, NULL, 25000, 30000, 24000, 50, '2025-05-19 06:34:05', '2025-05-19 06:34:05'),
(147, 129, NULL, NULL, 7500, 9000, 7200, 50, '2025-05-19 06:36:34', '2025-05-19 06:36:34'),
(148, 130, NULL, NULL, 6750, 8100, 6480, 50, '2025-05-19 06:40:31', '2025-05-19 06:40:31'),
(149, 131, NULL, NULL, 11667, 14000, 11200, 50, '2025-05-19 06:52:43', '2025-05-28 06:23:18'),
(150, 132, NULL, NULL, 24167, 29000, 23200, 49, '2025-05-19 06:54:36', '2025-05-28 06:25:51'),
(151, 133, NULL, NULL, 10000, 12000, 9600, 50, '2025-05-19 06:57:03', '2025-05-19 06:57:03'),
(152, 134, 8, NULL, 11667, 14000, 11200, 50, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(153, 134, 4, NULL, 58333, 70000, 56000, 50, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(154, 134, 5, NULL, 116667, 140000, 112000, 50, '2025-05-19 07:04:58', '2025-05-19 07:04:58'),
(155, 135, 8, NULL, 8917, 10700, 8560, 45, '2025-05-19 07:09:54', '2025-06-23 08:08:36'),
(156, 135, 10, NULL, 45833, 55000, 44000, 50, '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(157, 135, 9, NULL, 91667, 110000, 88000, 50, '2025-05-19 07:09:54', '2025-05-19 07:09:54'),
(158, 136, 8, NULL, 8333, 10000, 8000, 49, '2025-05-19 18:24:46', '2025-06-23 08:08:36'),
(159, 136, 10, NULL, 41667, 50000, 40000, 50, '2025-05-19 18:24:54', '2025-05-19 18:24:54'),
(160, 136, 9, NULL, 83333, 100000, 80000, 50, '2025-05-19 18:24:54', '2025-05-19 18:24:54'),
(161, 137, NULL, 10, 26667, 32000, 25600, 48, '2025-05-19 18:41:03', '2025-06-28 19:53:18'),
(162, 137, NULL, 11, 26667, 32000, 25600, 52, '2025-05-19 18:41:03', '2025-05-19 18:41:03'),
(163, 137, NULL, 5, 26667, 32000, 25600, 50, '2025-05-19 18:41:04', '2025-05-19 18:41:04'),
(164, 138, NULL, NULL, 25000, 30000, 24000, 50, '2025-05-19 19:01:29', '2025-05-19 19:01:29'),
(165, 139, NULL, 5, 7498, 8998, 7198, 49, '2025-05-19 19:04:25', '2025-05-19 19:04:25'),
(166, 139, NULL, 8, 7500, 9000, 7200, 50, '2025-05-19 19:04:25', '2025-05-19 19:04:25'),
(167, 140, NULL, NULL, 18333, 22000, 17600, 51, '2025-05-19 19:06:12', '2025-05-28 06:47:49'),
(168, 141, NULL, NULL, 27500, 33000, 26400, 50, '2025-05-19 19:08:23', '2025-05-19 19:08:23'),
(169, 142, NULL, NULL, 4667, 5600, 4480, 50, '2025-05-19 19:12:48', '2025-05-28 06:50:56'),
(170, 143, NULL, NULL, 12083, 14500, 7250, 50, '2025-05-19 19:14:32', '2025-05-28 06:52:17'),
(171, 144, NULL, NULL, 4250, 5100, 2550, 50, '2025-05-19 19:16:28', '2025-05-19 19:16:28'),
(172, 145, NULL, NULL, 5500, 6600, 5280, 50, '2025-05-19 19:18:41', '2025-05-19 19:18:41'),
(173, 146, NULL, NULL, 15833, 19000, 15200, 50, '2025-05-19 19:22:39', '2025-05-28 07:00:28'),
(174, 147, NULL, NULL, 10833, 13000, 9100, 50, '2025-05-19 19:25:11', '2025-05-28 07:01:18'),
(175, 148, NULL, NULL, 1666, 1999, 1599, 49, '2025-05-20 01:25:36', '2025-05-28 05:49:31'),
(176, 149, NULL, NULL, 6667, 8000, 6400, 50, '2025-05-20 01:48:31', '2025-05-28 05:52:04'),
(177, 150, NULL, NULL, 4167, 5000, 2500, 50, '2025-05-29 18:35:20', '2025-05-29 18:35:20'),
(178, 151, NULL, NULL, 4167, 5000, 4000, 50, '2025-05-29 18:48:27', '2025-05-29 18:48:27'),
(179, 152, NULL, NULL, 7250, 8700, 4350, 50, '2025-05-29 18:55:53', '2025-05-29 18:55:53'),
(180, 153, NULL, NULL, 7417, 8900, 4450, 53, '2025-05-29 19:03:32', '2025-05-29 19:03:32'),
(181, 154, NULL, NULL, 3417, 4100, 2050, 50, '2025-05-29 19:20:33', '2025-05-29 19:20:33'),
(182, 155, NULL, NULL, 3750, 4500, 3600, 50, '2025-05-29 19:27:16', '2025-05-29 19:27:16'),
(183, 156, NULL, NULL, 3333, 4000, 2000, 50, '2025-05-29 19:33:26', '2025-05-29 19:33:26'),
(184, 157, NULL, NULL, 3167, 3800, 3040, 50, '2025-05-29 19:42:38', '2025-05-29 19:42:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comments`
--

CREATE TABLE `product_comments` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_comment_id` int DEFAULT NULL,
  `star` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comments`
--

INSERT INTO `product_comments` (`id`, `product_id`, `user_id`, `comment`, `parent_comment_id`, `star`, `status`, `created_at`, `updated_at`) VALUES
(2, 111, 23, 'Sản phẩm rất ok', NULL, 5, 1, '2025-06-01 19:29:03', '2025-06-01 19:30:08'),
(5, 114, 3, 'Compa xài ổn lắm, kim nhọn, vẽ vòng tròn dễ. Bé nhà mình dùng để học hình rất thích, không bị lỏng lẻo như mấy loại trước mua ở tiệm.', NULL, 5, 1, '2025-06-01 19:34:36', '2025-06-01 19:44:06'),
(6, 56, 3, 'Viết cực kỳ trơn, mực ra đều, cầm lâu cũng không bị đau tay. Mình dùng để chấm bài học sinh nên rất cần loại bút như vậy. Giá lại rẻ nữa.', NULL, 5, 1, '2025-06-01 19:36:38', '2025-06-01 19:43:57'),
(7, 109, 3, 'Thước uốn cong thoải mái mà không bị gãy. Con mình lớp 5 hay để lung tung, có lúc còn ngồi lên mà thước vẫn không hề gì :)) quá xịn!', NULL, 5, 1, '2025-06-01 19:36:49', '2025-06-01 19:43:50'),
(8, 110, 3, 'Giá hợp lý, chất lượng tốt, đóng gói chắc chắn. Một bộ đủ dùng cho cả năm học luôn.', NULL, 5, 1, '2025-06-01 19:40:27', '2025-06-01 19:43:47'),
(9, 102, 3, 'Thiết kế dễ thương, khóa chắc chắn. Bé đem đi học mỗi ngày mà hộp vẫn còn nguyên, không trầy.', NULL, 4, 1, '2025-06-01 19:40:51', '2025-06-01 19:43:43'),
(10, 71, 3, 'Bìa chắc chắn, kẹp rất mạnh, không bị bung khi kẹp nhiều giấy. Chất liệu nhựa cứng, màu đẹp, phù hợp dùng cho văn phòng hay giáo viên', NULL, 5, 1, '2025-06-01 19:42:41', '2025-06-01 19:43:40'),
(11, 34, 3, 'Giấy trắng đẹp, in 2 mặt không bị lem mực, rất phù hợp cho máy in laser. Hàng nhập khẩu nên chất lượng cao hơn giấy thông thường.', NULL, 4, 1, '2025-06-01 19:43:11', '2025-06-01 19:43:37'),
(12, 109, 23, NULL, NULL, 4, 1, '2025-06-01 20:00:29', '2025-06-01 20:00:29'),
(13, 114, 23, NULL, NULL, 4, 1, '2025-06-01 20:00:32', '2025-06-01 20:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị', NULL, NULL),
(2, 'user', 'người dùng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistics`
--

CREATE TABLE `statistics` (
  `id` int UNSIGNED NOT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales` int NOT NULL,
  `profit` int NOT NULL,
  `quantity` int NOT NULL,
  `total_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statistics`
--

INSERT INTO `statistics` (`id`, `order_date`, `sales`, `profit`, `quantity`, `total_order`, `created_at`, `updated_at`) VALUES
(3, '2025-05-13', 231260, 16759, 5, 3, '2025-05-22 17:51:39', '2025-05-22 17:52:14'),
(4, '2025-05-26', 49280, 20863, 2, 1, '2025-05-26 15:43:22', '2025-05-26 15:43:22'),
(5, '2025-05-24', 325995, 220345, 15, 8, '2025-05-26 15:43:59', '2025-06-23 07:41:24'),
(6, '2025-05-27', 131260, 16759, 5, 2, '2025-05-26 20:45:25', '2025-05-26 20:45:25'),
(7, '2025-06-29', 131260, 16759, 5, 1, '2025-06-28 19:55:31', '2025-06-28 19:55:31'),
(8, '2025-05-25', 49280, 20863, 2, 1, '2025-06-28 19:56:01', '2025-06-28 19:56:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(6, 12, 'Giấy A3', '2025-05-01 03:25:50', '2025-05-01 03:25:50'),
(7, 12, 'Giấy A4', '2025-05-01 03:26:00', '2025-05-01 03:26:00'),
(8, 12, 'Giấy A5', '2025-05-01 03:26:10', '2025-05-01 03:26:10'),
(9, 12, 'Combo giấy in văn phòng', '2025-05-01 03:26:26', '2025-05-01 03:26:26'),
(10, 13, 'Bút bi', '2025-05-01 04:07:42', '2025-05-01 04:07:42'),
(11, 13, 'Bút dạ quang', '2025-05-01 04:07:57', '2025-05-01 04:07:57'),
(12, 13, 'Bút xóa', '2025-05-01 04:08:06', '2025-05-01 04:08:06'),
(14, 14, 'Bìa trình ký', '2025-05-01 04:08:44', '2025-05-01 04:08:44'),
(15, 14, 'Bìa hộp - Cặp 12 ngăn', '2025-05-01 04:08:59', '2025-05-01 04:08:59'),
(16, 15, 'Máy tính khoa học', '2025-05-01 04:09:26', '2025-05-01 04:09:26'),
(17, 15, 'Thước - Compa - Phấn', '2025-05-01 04:09:50', '2025-05-01 04:09:50'),
(18, 15, 'Hộp viết - Bóp viết', '2025-05-01 04:10:16', '2025-05-01 04:10:16'),
(19, 18, 'Băng keo trong', '2025-05-01 04:10:27', '2025-05-19 04:35:12'),
(20, 18, 'Băng keo đục', '2025-05-01 04:10:50', '2025-05-19 04:35:59'),
(21, 17, 'Kéo', '2025-05-01 04:11:11', '2025-05-01 04:11:11'),
(22, 17, 'Dao rọc giấy', '2025-05-01 04:11:28', '2025-05-01 04:11:28'),
(23, 17, 'Bấm kim', '2025-05-01 04:11:41', '2025-05-01 04:11:41'),
(24, 18, 'Keo dán giấy', '2025-05-19 04:36:30', '2025-05-19 04:36:30'),
(25, 12, 'Giấy thủ công', '2025-05-19 06:32:09', '2025-05-19 06:32:09'),
(26, 15, 'Tập học sinh', '2025-05-19 06:49:55', '2025-05-19 06:49:55'),
(27, 15, 'Sổ tay', '2025-05-19 18:29:28', '2025-05-19 18:29:28'),
(28, 15, 'Bìa bao và nhãn vở', '2025-05-19 18:30:13', '2025-05-19 18:30:13'),
(29, 13, 'Bút chì', '2025-05-20 01:22:41', '2025-05-20 01:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `gender`, `phone`, `email`, `password`, `role_id`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Võ Diểm', NULL, NULL, NULL, 'vodiem3002@gmail.com', '$2y$10$XRdZtmOzX6wZyWO8RU/1ueCqa0PHehIxXF7xCnn./rwnWPljzNJvG', 2, NULL, '2025-04-16 04:04:44', '2025-04-16 04:04:44'),
(2, 'Nguyễn Thị Lan', NULL, NULL, NULL, 'user@gmail.com', '$2y$10$ayJBsHf7W6L8diCCYL7gcO1U26FHvR8ftpZpmxZEfG5MxexirAS6y', 2, NULL, '2025-04-16 04:31:28', '2025-04-16 04:31:28'),
(3, 'ChinChin', NULL, 'male', NULL, 'vodiem3979@gmail.com', '$2y$10$sYlDUxgx51DXuoxWAI8aae6QlS3Zie/FydYi64zTWYGGZBHnI6m/q', 1, NULL, '2025-04-16 07:15:14', '2025-04-21 02:10:08'),
(13, 'chin chin', NULL, NULL, NULL, 'chin2003chin@gmail.com', NULL, 2, NULL, '2025-04-16 18:23:44', '2025-04-16 18:23:44'),
(22, 'shin shin', NULL, NULL, NULL, 'shinshin12102003@gmail.com', NULL, 2, NULL, '2025-04-26 18:50:35', '2025-04-26 18:50:35'),
(23, 'Chin Vo', NULL, NULL, NULL, 'voc916959@gmail.com', NULL, 2, NULL, '2025-04-26 19:05:12', '2025-04-26 19:05:12'),
(24, 'Nguyễn Đại Hoàng Phúc', NULL, NULL, 916741252, 'hoangphuc@gmail.com', '$2y$10$m0n/fSIsJXtRR2KzIbUw3O0kOMT4IG7CAM.D8UHrKALTVrxxrCciW', 2, NULL, '2025-05-24 06:49:54', '2025-05-24 06:49:54'),
(25, 'Trần Trung Nghĩa', NULL, NULL, 364079923, 'trungnghia@gmail.com', '$2y$10$9OPyff76tdKty0NzXmVk.uUQahI/9iJ/aTtHUkajEgyd.gaCp1Qri', 2, NULL, '2025-05-24 06:59:26', '2025-05-24 06:59:26'),
(26, 'Cao Thị Thúy Vy', NULL, NULL, 916741252, 'thuyvy@gmail.com', '$2y$10$TAX0mySctZP/OEndh8eRbu4uM4V5eQty89rgYpyuj.wZXFkcuUsdy', 2, NULL, '2025-05-24 07:01:52', '2025-05-24 07:01:52'),
(27, 'Nguyễn Hoàng Phúc', NULL, NULL, 749375396, 'hoangph@gmail.com', '$2y$10$IUfMT0otJnXiqnPTX1WQ1.7OlLs0RDDbKo0piUy7Xx/tgE5TiUvti', 2, NULL, '2025-05-24 07:19:46', '2025-05-24 07:19:46'),
(28, 'Nguyễn Văn A', NULL, NULL, 917424535, 'vana@gmail.com', '$2y$10$WkxBeRXkge2xjPJzoMue5eLZd1DvGXnlpKV273giPZWBDQLP12hG2', 2, NULL, '2025-05-25 05:33:11', '2025-05-25 05:33:11'),
(29, 'Nguyễn Minh Tuấn', NULL, NULL, 915569152, 'minhtuan@gmail.com', '$2y$10$ayJBsHf7W6L8diCCYL7gcO1U26FHvR8ftpZpmxZEfG5MxexirAS6y', 2, NULL, '2025-06-26 14:50:03', '2025-06-26 14:50:03'),
(30, 'Nguyễn Ngọc Đan Thanh', NULL, NULL, NULL, 'danthanh@gmail.com', '$2y$10$tU.K8R/QpHCcyOLaTB6dbeWlOSByag4DYUlOzuG.5rrRYBO0eCPIu', 2, NULL, '2025-06-26 21:15:59', '2025-06-26 21:15:59'),
(31, 'Diệp Tú Như', NULL, NULL, NULL, 'tunhu@gmail.com', '$2y$10$VVRqLkj0FMHK7FPZYdLup.nlOdf2mradeoG8PlId3xCmu/uMoIDxq', 2, NULL, '2025-06-26 21:16:48', '2025-06-26 21:16:48'),
(32, 'Phạm Hữu Lộc', NULL, NULL, NULL, 'huuloc@gmail.com', '$2y$10$3tMYyfcwZEkrGB7ZVm6y..Qx/sjDPWtnoBiuI8XEFVdU1CdT.zIzO', 2, NULL, '2025-06-26 21:17:18', '2025-06-26 21:17:18'),
(33, 'Phạm Thúy Hằng', NULL, NULL, NULL, 'thuyhang@gmail.com', '$2y$10$Pdqgm.dV/DstzLIjXVjigu6vhIHltWEbN7sVq6/vNW8VwYxuioQUy', 2, NULL, '2025-06-26 21:17:59', '2025-06-26 21:17:59'),
(34, 'Diệp Bích Thanh', NULL, NULL, NULL, 'bichthanh@gmail.com', '$2y$10$FIKg6yKNWufRdKcRz8KTvOCJLIVjYzMv01hJXtwEZITqj5hIgtx9.', 2, NULL, '2025-06-26 21:19:40', '2025-06-26 21:19:40'),
(35, 'Dương Văn Hiệp', NULL, NULL, NULL, 'vanhiep@gmail.com', '$2y$10$BwgnnOtlVvGL.ztZ62ER8OCHKN4CdLBt0jFvEbVY9i6J7FTzIGtMq', 2, NULL, '2025-06-26 21:22:26', '2025-06-26 21:22:26'),
(36, 'Huỳnh Tấn Phát', NULL, NULL, NULL, 'tanphat@gmail.com', '$2y$10$1eJvfSkrAEV0MtgPK3pFXe02I0VBKqangc6QV5CIl7R41GrTrHP82', 2, NULL, '2025-06-26 21:23:27', '2025-06-26 21:23:27'),
(37, 'Nguyễn Đức Thịnh', NULL, NULL, NULL, 'ducthinh@gmail.com', '$2y$10$qn/vjABv9EfW5g4C/XFMj.wO9i0d.NjMdyVa8EIvAHQ6GIoF4CYoG', 2, NULL, '2025-06-26 21:24:10', '2025-06-26 21:24:10'),
(38, 'Nguyễn Đức Mạnh', NULL, NULL, NULL, 'ducmanh@gmail.com', '$2y$10$mepUTHQM/QXepHNCjuNX9uFcjXsFkNh354mvb6ykJ4n92ATivxjf2', 2, NULL, '2025-06-26 21:24:39', '2025-06-26 21:24:39'),
(39, 'Phạm Ngọc Anh', NULL, NULL, NULL, 'ngocanh@gmail.com', '$2y$10$muH9.7vlKZ8eCfRInWM/O.X.j/1X2U0.m4AFPxnLBCkylAhP15aym', 2, NULL, '2025-06-26 21:26:05', '2025-06-26 21:26:05'),
(40, 'Đỗ Thị Mai', NULL, NULL, NULL, 'mai@gmail.com', '$2y$10$c1qaSCv03.hLG2TKEMbqFOoFs6GwABMcU37JJspMvzRFZNxj3Ohbm', 2, NULL, '2025-06-26 21:26:38', '2025-06-26 21:26:38'),
(41, 'Bùi Quang Dũng', NULL, NULL, NULL, 'quangdung@gmail.com', '$2y$10$a3B.gjc9OccLR4qUbu3IauCEwYprFV8YkM7os/ILKvUZ.C10t8usi', 2, NULL, '2025-06-26 21:27:15', '2025-06-26 21:27:15'),
(42, 'Vũ Hồng Nhung', NULL, NULL, NULL, 'hongnhung@gmail.com', '$2y$10$F53Q.d6LcPiPJyUh7hX5CuGXGNnd0cZDPz3NoPfTsP.4IWQ5ON7jS', 2, NULL, '2025-06-26 21:27:48', '2025-06-26 21:27:48'),
(43, 'Hoàng Gia Bảo', NULL, NULL, NULL, 'giabao@gmail.com', '$2y$10$jAxRGc4vDcsBZtL/PAvnU.8zsipMSpi/iMIaZAWwb1oJKQYEUz1Fi', 2, NULL, '2025-06-26 21:28:23', '2025-06-26 21:28:23'),
(44, 'Nguyễn Gia Bảo', NULL, NULL, NULL, 'bao@gmail.com', '$2y$10$sLfHGV975ByeZ4.kRQ8JTOWFDDl3Qf/yLE/wRCP8Ka.f41/YBF3ym', 2, NULL, '2025-06-26 21:32:43', '2025-06-26 21:32:43'),
(45, 'Phạm Khánh Đăng', NULL, NULL, NULL, 'khanhdang@gmail.com', '$2y$10$7DsM4mwizHTI5G4VS3brquebaJAWeGQtrGznMYKvBYits.oBhmmtq', 2, NULL, '2025-06-26 21:32:51', '2025-06-26 21:32:51'),
(46, 'Cao Thị Hoa', NULL, NULL, NULL, 'hoa@gmail.com', '$2y$10$CoXkw0hFaOwNm8gLQNdSc.EKRl8BY/bR.4ATOk8/AjVQYrBKwnKiS', 2, NULL, '2025-06-26 21:33:57', '2025-06-26 21:33:57'),
(47, 'Trần Văn D', NULL, NULL, NULL, 'vand@gmail.com', '$2y$10$ReyAPUrdtZUDXDm2B3XusOBWW6G1K9toro7gBxIuEGyguz5LqaZPa', 2, NULL, '2025-06-26 21:34:33', '2025-06-26 21:34:33'),
(48, 'Võ Thị Thắm', NULL, NULL, NULL, 'tham@gmail.com', '$2y$10$hdfxfL26/4jhM7sDl0.ls.xO0VbrfxBtGxuJT26p8V2BZlaoLwY/6', 2, NULL, '2025-06-26 21:35:34', '2025-06-26 21:35:34'),
(49, 'Cao Gia Hân', NULL, NULL, NULL, 'giahan@gmail.com', '$2y$10$Jwx5EWtcgCBHXXAJGUsFUu5KFh/zU/fBb.STeEzWDxx8qPBhKpIQO', 2, NULL, '2025-06-26 21:36:59', '2025-06-26 21:36:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `views`
--

CREATE TABLE `views` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `view_count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `views`
--

INSERT INTO `views` (`id`, `user_id`, `product_id`, `view_count`, `status`, `created_at`, `updated_at`) VALUES
(2, 22, 113, 7, 0, '2025-05-09 21:49:39', '2025-05-10 08:14:02'),
(3, 2, 112, 1, 0, '2025-05-09 21:50:40', '2025-05-10 06:35:53'),
(16, 2, 57, 1, 0, '2025-05-10 08:27:48', '2025-05-10 08:27:48'),
(18, 2, 53, 2, 0, '2025-05-10 09:06:44', '2025-05-10 09:07:07'),
(19, 2, 115, 2, 0, '2025-05-10 09:06:44', '2025-05-10 09:07:07'),
(20, 1, 53, 2, 0, '2025-05-10 09:06:44', '2025-05-10 09:07:07'),
(21, 3, 114, 35, 0, '2025-05-12 23:44:44', '2025-05-31 18:28:23'),
(22, 3, 54, 12, 1, '2025-05-12 23:44:44', '2025-05-30 00:42:26'),
(23, 3, 53, 18, 1, '2025-05-12 23:44:44', '2025-05-31 17:56:06'),
(24, 3, 109, 3, 1, '2025-05-12 23:44:44', '2025-06-01 19:52:12'),
(25, 3, 110, 1, 1, '2025-05-12 23:46:08', '2025-05-12 23:46:08'),
(26, 3, 56, 1, 1, '2025-05-12 23:46:08', '2025-05-12 23:46:08'),
(27, 3, 102, 1, 0, '2025-05-12 23:46:08', '2025-05-12 23:46:08'),
(28, 3, 71, 1, 1, '2025-05-12 23:47:14', '2025-05-12 23:47:14'),
(29, 3, 34, 3, 1, '2025-05-12 23:47:14', '2025-05-30 01:18:46'),
(35, 3, 115, 16, 1, '2025-05-13 18:27:58', '2025-05-31 18:36:02'),
(36, 3, 112, 4, 1, '2025-05-13 18:32:39', '2025-05-14 08:21:35'),
(37, 3, 113, 10, 1, '2025-05-13 18:34:26', '2025-06-10 06:03:41'),
(38, 3, 57, 6, 1, '2025-05-13 18:58:16', '2025-05-30 00:42:26'),
(39, 3, 58, 4, 1, '2025-05-13 18:58:22', '2025-05-30 00:42:26'),
(40, 3, 52, 4, 1, '2025-05-14 08:03:17', '2025-05-30 01:18:17'),
(41, 3, 68, 1, 1, '2025-05-14 08:21:43', '2025-05-14 08:21:43'),
(42, 23, 110, 7, 1, '2025-05-15 07:33:54', '2025-06-19 18:46:50'),
(44, 3, 116, 2, 1, '2025-05-19 04:49:03', '2025-05-19 04:49:31'),
(45, 3, 126, 1, 1, '2025-05-19 06:17:30', '2025-05-19 06:17:30'),
(46, 3, 136, 4, 0, '2025-05-19 18:35:25', '2025-05-31 08:05:19'),
(47, 3, 148, 7, 1, '2025-05-20 07:02:06', '2025-05-30 01:24:42'),
(48, 3, 144, 2, 0, '2025-05-20 19:16:49', '2025-05-20 19:31:46'),
(49, 3, 38, 2, 1, '2025-05-20 19:21:48', '2025-05-20 19:31:46'),
(50, 3, 62, 4, 1, '2025-05-20 19:27:48', '2025-05-29 21:03:25'),
(51, 3, 37, 9, 0, '2025-05-20 19:28:06', '2025-05-31 00:54:48'),
(55, 26, 113, 2, 0, '2025-05-24 07:31:26', '2025-05-24 07:32:37'),
(56, 26, 115, 1, 0, '2025-05-24 07:32:37', '2025-05-24 07:32:37'),
(57, 26, 89, 2, 0, '2025-05-24 08:26:16', '2025-05-24 08:26:29'),
(58, 26, 54, 2, 0, '2025-05-24 08:28:47', '2025-05-24 08:29:08'),
(59, 3, 49, 1, 1, '2025-05-26 23:23:54', '2025-05-26 23:23:54'),
(60, 3, 128, 7, 1, '2025-05-28 03:56:50', '2025-05-30 01:17:03'),
(61, 3, 61, 2, 1, '2025-05-29 21:04:59', '2025-05-29 21:05:00'),
(62, 3, 84, 8, 1, '2025-05-30 01:20:59', '2025-05-31 01:44:26'),
(63, 3, 124, 5, 1, '2025-05-30 01:22:27', '2025-05-31 01:34:20'),
(64, 3, 85, 4, 1, '2025-05-30 23:15:44', '2025-05-31 00:54:48'),
(65, 3, 93, 3, 1, '2025-05-30 23:27:56', '2025-05-31 00:54:48'),
(66, 3, 96, 5, 1, '2025-05-30 23:29:09', '2025-05-31 17:48:18'),
(67, 3, 89, 3, 0, '2025-05-31 00:25:26', '2025-05-31 00:54:48'),
(68, 3, 111, 5, 1, '2025-05-31 00:54:21', '2025-06-01 19:52:12'),
(69, 3, 106, 2, 1, '2025-05-31 01:10:15', '2025-05-31 01:11:08'),
(70, 3, 131, 2, 1, '2025-05-31 01:44:12', '2025-05-31 01:44:26'),
(71, 3, 134, 4, 1, '2025-05-31 07:07:43', '2025-05-31 07:30:27'),
(72, 3, 133, 2, 1, '2025-05-31 07:22:19', '2025-05-31 07:22:48'),
(73, 3, 105, 2, 0, '2025-05-31 17:59:43', '2025-05-31 18:18:09'),
(74, 3, 77, 2, 1, '2025-05-31 18:27:58', '2025-05-31 18:28:23'),
(154, 23, 133, 4, 0, '2025-06-23 06:30:14', '2025-06-26 01:02:42'),
(155, 23, 139, 1, 0, '2025-06-23 06:30:46', '2025-06-23 06:30:46'),
(156, 23, 142, 1, 0, '2025-06-23 06:31:05', '2025-06-23 06:31:05'),
(157, 23, 145, 5, 0, '2025-06-23 06:31:28', '2025-06-23 08:03:14'),
(158, 23, 144, 3, 0, '2025-06-23 06:31:34', '2025-06-23 08:01:28'),
(159, 23, 146, 2, 0, '2025-06-23 08:01:07', '2025-06-23 08:01:28'),
(161, 23, 134, 2, 0, '2025-06-23 08:02:37', '2025-06-23 08:03:14'),
(162, 23, 148, 2, 0, '2025-06-23 08:02:47', '2025-06-23 08:03:14'),
(163, 23, 124, 4, 0, '2025-06-23 08:03:14', '2025-06-23 08:04:44'),
(164, 23, 136, 6, 0, '2025-06-23 08:04:15', '2025-06-26 01:02:42'),
(165, 23, 135, 4, 0, '2025-06-23 08:08:02', '2025-06-23 08:14:19'),
(166, 23, 155, 1, 0, '2025-06-23 08:08:08', '2025-06-23 08:08:08'),
(167, 23, 156, 1, 0, '2025-06-23 08:08:08', '2025-06-23 08:08:08'),
(168, 23, 80, 4, 0, '2025-06-23 08:08:51', '2025-06-26 01:11:06'),
(169, 23, 78, 2, 0, '2025-06-23 08:08:55', '2025-06-23 08:09:42'),
(170, 23, 106, 4, 0, '2025-06-23 08:13:29', '2025-06-26 00:50:50'),
(171, 23, 131, 5, 0, '2025-06-23 08:14:02', '2025-06-26 01:02:42'),
(172, 23, 52, 2, 0, '2025-06-26 00:50:17', '2025-06-26 00:50:50'),
(173, 23, 112, 3, 0, '2025-06-26 00:50:59', '2025-06-26 01:02:42'),
(174, 23, 60, 3, 0, '2025-06-26 00:51:39', '2025-06-26 01:02:42'),
(175, 23, 34, 2, 0, '2025-06-26 01:02:29', '2025-06-26 01:02:42'),
(176, 23, 56, 5, 0, '2025-06-26 01:10:22', '2025-06-26 14:35:20'),
(177, 23, 71, 2, 0, '2025-06-26 01:27:06', '2025-06-26 01:27:38'),
(178, 23, 38, 2, 0, '2025-06-26 01:27:30', '2025-06-26 01:27:38'),
(179, 23, 115, 2, 0, '2025-06-26 01:43:32', '2025-06-26 01:43:38'),
(180, 23, 102, 1, 0, '2025-06-26 14:35:05', '2025-06-26 14:35:05'),
(181, 29, 143, 1, 0, '2025-06-26 14:51:32', '2025-06-26 14:51:32'),
(182, 29, 132, 1, 0, '2025-06-26 14:51:54', '2025-06-26 14:51:54'),
(183, 29, 146, 1, 0, '2025-06-26 14:52:16', '2025-06-26 14:52:16'),
(184, 29, 113, 1, 0, '2025-06-26 21:07:33', '2025-06-26 21:07:33'),
(185, 29, 56, 1, 0, '2025-06-26 21:11:14', '2025-06-26 21:11:14'),
(187, 31, 113, 3, 0, '2025-06-28 09:42:18', '2025-06-28 19:22:14'),
(188, 31, 53, 1, 0, '2025-06-28 09:42:28', '2025-06-28 09:42:28'),
(189, 31, 71, 1, 0, '2025-06-28 19:22:49', '2025-06-28 19:22:49'),
(190, 31, 105, 1, 0, '2025-06-28 19:50:20', '2025-06-28 19:50:20'),
(191, 31, 137, 1, 0, '2025-06-28 19:50:53', '2025-06-28 19:50:53'),
(192, 31, 88, 1, 0, '2025-06-28 19:51:24', '2025-06-28 19:51:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_combos_images` (`product_model_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_news_type_id_foreign` (`news_type_id`);

--
-- Chỉ mục cho bảng `news_types`
--
ALTER TABLE `news_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_combo_id_foreign` (`product_combo_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_sub_item_id_foreign` (`sub_category_id`);

--
-- Chỉ mục cho bảng `product_combos`
--
ALTER TABLE `product_combos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_combos_product_id_foreign` (`product_id`),
  ADD KEY `product_combos_combo_id_foreign` (`combo_id`),
  ADD KEY `product_combos_color_id_foreign` (`color_id`);

--
-- Chỉ mục cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_comments_product_id_foreign` (`product_id`),
  ADD KEY `product_comments_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_items_sub_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_role` (`role_id`);

--
-- Chỉ mục cho bảng `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_user_id_foreign` (`user_id`),
  ADD KEY `fk_view_product` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `combos`
--
ALTER TABLE `combos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_types`
--
ALTER TABLE `news_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `product_combos`
--
ALTER TABLE `product_combos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `views`
--
ALTER TABLE `views`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_product_combos_images` FOREIGN KEY (`product_model_id`) REFERENCES `product_combos` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_news_type_id_foreign` FOREIGN KEY (`news_type_id`) REFERENCES `news_types` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_combo_id_foreign` FOREIGN KEY (`product_combo_id`) REFERENCES `product_combos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_subitem` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_combos`
--
ALTER TABLE `product_combos`
  ADD CONSTRAINT `product_combos_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_combos_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_combos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_items_sub_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `fk_view_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

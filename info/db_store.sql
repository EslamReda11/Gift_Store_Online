-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 08:52 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupencodes`
--

CREATE TABLE `coupencodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validfrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validupto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_02_20_194346_create_products_table', 1),
(4, '2021_02_26_165458_create_orders_table', 1),
(5, '2021_03_05_064539_create_coupencodes_table', 1),
(6, '2021_03_05_113739_create_transactions_table', 1),
(7, '2021_11_04_162451_create_newsletter_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `sno` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`sno`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ss ssdff', 'dgdg@gmail.com', '2024-02-14 11:40:38', '2024-02-14 11:40:38'),
(2, 'Eslam Reda', 'hgghfhg@g', '2024-02-20 07:34:31', '2024-02-20 07:34:31'),
(3, 'ahmed', 'phoenix199940@gmail.com', '2024-02-21 08:03:00', '2024-02-21 08:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Customer_Emailid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Delivery_Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Order_Details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Coupen_Code` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) NOT NULL,
  `paymentmode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Shipping_Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `Delivery_Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `Order_Cancel_Status` tinyint(4) NOT NULL DEFAULT 0,
  `Order_Cancelled_On` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `p_status_Updated_By` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Customer_Emailid`, `Delivery_Address`, `Order_Details`, `Coupen_Code`, `Amount`, `paymentmode`, `Shipping_Status`, `Delivery_Status`, `Order_Cancel_Status`, `Order_Cancelled_On`, `p_status`, `p_status_Updated_By`, `created_at`, `updated_at`) VALUES
(1, 'EslamReda_A@gmail.com', 'Qalyubia,gbgnvbv<br>Shubra Al Khaimah,hkhkh,مصر<br>555555,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 2<br> Price:807.5<br>Product Name:Gucci, Quantity: 1<br> Price:245<br>Product Name:Warby Parker, Quantity: 1<br> Price:135', NULL, 2060.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:04:30', '2024-02-20 19:04:30'),
(2, 'EslamReda_A@gmail.com', 'Qalyubia,gbgnvbv<br>Shubra Al Khaimah,hkhkh,مصر<br>555555,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 2<br> Price:807.5<br>Product Name:Gucci, Quantity: 1<br> Price:245<br>Product Name:Warby Parker, Quantity: 1<br> Price:135', NULL, 2060.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:05:30', '2024-02-20 19:05:30'),
(3, 'EslamReda_A@gmail.com', 'Qalyubiajhkh,gbgnvbv<br>Shubra Al Khaimah,hkhkh,مصر<br>55555d5,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 2<br> Price:807.5<br>Product Name:Gucci, Quantity: 1<br> Price:245<br>Product Name:Warby Parker, Quantity: 1<br> Price:135', NULL, 2060.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:06:19', '2024-02-20 19:06:19'),
(4, 'EslamReda_A@gmail.com', 'Qalyubiajhkh,gbgnvbv<br>Shubra Al Khaimah,hkhkh,مصر<br>55555d5,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:07:44', '2024-02-20 19:07:44'),
(5, 'EslamReda_A@gmail.com', 'Qalyubia,gbgnvbv<br>Shubra Al Khaimah,hkhkh,مصر<br>55555d5,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:29:28', '2024-02-20 19:29:28'),
(6, 'EslamReda_A@gmail.com', 'Qalyubia,MSDFS<br>Shubra Al Khaimah,KDNFD,مصر<br>555555,01150674192,', '<br>Product Name:Burberry, Quantity: 2<br> Price:64', NULL, 138.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 19:29:48', '2024-02-20 19:29:48'),
(7, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,rtieurt<br>rklgf,rtlrrlktl,مصر<br>rtk,01150674192,01150674192', '<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 74.00, 'Online', 'pending', 'pending', 1, '21-02-2024 04:05:42', 'pending', NULL, '2024-02-20 20:00:54', '2024-02-21 02:05:42'),
(8, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>rklgf,rtlrrlktl,مصر<br>rtk,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 1, '21-02-2024 04:06:13', 'pending', NULL, '2024-02-20 20:35:23', '2024-02-21 02:06:13'),
(9, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>rklgf,rtlrrlktl,مصر<br>rtk,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 20:55:43', '2024-02-20 20:55:43'),
(10, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>lk,lklkl,m<br>55555d5,01150674192888888,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:41:21', '2024-02-20 22:41:21'),
(11, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>lk,lklkl,m<br>55555d5,01150674192888888,01150674192', '<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 74.00, 'COD', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:42:54', '2024-02-20 22:42:54'),
(12, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>lk,lklkl,m<br>55555d5,01150674192888888,01150674192', '<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 74.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:43:13', '2024-02-20 22:43:13'),
(13, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,jkj<br>rklgf,hkhkh,مصر<br>55555d5,01150674192,01150674192', '<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 74.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:44:39', '2024-02-20 22:44:39'),
(14, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,jkj<br>rklgf,hkhkh,مصر<br>55555d5,01150674192,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:46:11', '2024-02-20 22:46:11'),
(15, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,kj<br>k,l,kk<br>l,4545,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-20 22:47:57', '2024-02-20 22:47:57'),
(16, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,MSDFS<br>k,l,kk<br>l,4545,01150674192', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 00:14:26', '2024-02-21 00:14:26'),
(17, 'EslamReda_U@gmail.com', 'Egypt-Qalyubia,fdg<br>hghj,jhj,jhj<br>jhjh,56,5645', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 01:31:40', '2024-02-21 01:31:40'),
(18, 'phoenix199940@gmail.com', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Armani Exchange, Quantity: 1<br> Price:125', NULL, 135.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 07:01:55', '2024-02-21 07:01:55'),
(19, 'phoenix199940@gmail.com', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Dolce, Quantity: 1<br> Price:297.5', NULL, 307.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 07:28:09', '2024-02-21 07:28:09'),
(20, 'EslamReda_A@gmail.com', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:ahmed, Quantity: 1<br> Price:463628.25', NULL, 463708.25, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 07:58:25', '2024-02-21 07:58:25'),
(21, 'EslamReda_A@gmail.com', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-21 09:32:23', '2024-02-21 09:32:23'),
(22, 'dd@dd', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 891.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 02:32:58', '2024-02-22 02:32:58'),
(23, 'EslamReda_A@gmail.com', 'jhjm,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 03:01:02', '2024-02-22 03:01:02'),
(24, 'EslamReda_A@gmail.com', 'Ayyubia,yggk<br>thj,dhfj,jg<br>hgf,22223,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 04:06:46', '2024-02-22 04:06:46'),
(25, 'EslamReda_A@gmail.com', 'Qalyubia,45<br>Shubra Al Khaimah,Bahteem,Egypt<br>55555,01150674192,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 05:09:22', '2024-02-22 05:09:22'),
(26, 'EslamReda_A@gmail.com', 'Qalyubia,lk<br>Shubra Al Khaimah,Bahteem,Egypt<br>55555,01150674192,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 05:10:43', '2024-02-22 05:10:43'),
(27, 'EslamReda_A@gmail.com', 'Qalyubia,mnsc<br>Shubra Al Khaimah,Bahteem,Egypt<br>55555,01150674192,', '<br>Product Name:Fendi, Quantity: 1<br> Price:807.5', NULL, 817.50, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 05:12:31', '2024-02-22 05:12:31'),
(28, 'phoenix1990@gmail.com', 'jhjm,nm<br>Shubra El Kheima,Bahteem,مصر<br>mm,,+201150674192,', '<br>Product Name:Burberry, Quantity: 1<br> Price:64', NULL, 74.00, 'Online', 'pending', 'pending', 0, NULL, 'pending', NULL, '2024-02-22 05:23:18', '2024-02-22 05:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('EslamReda_A@gmail.com', '$2y$10$f4KR8JVXvkxFQvTlbJHRgeAeE8SB4PQBP1Y/13V/Ftu3bhY4ogBES', '2024-02-22 01:53:05'),
('phoenix199940@gmail.com', '$2y$10$mh/Icw1xDb3K0NBABVyJtOpkmSw0Ts8HAd6dBH0ttTu1cwduc632O', '2024-02-22 01:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `delivery_charges` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `priority`, `name`, `description`, `url`, `rating`, `price`, `discount`, `image1`, `image2`, `image3`, `image4`, `title`, `keywords`, `meta_description`, `status`, `delivery_charges`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, 1, 'Armani Exchange', 'Characterized by their teardrop-shaped lenses and thin metal frames, aviator glasses offer a classic and timeless look favored by pilots and fashion enthusiasts alike.', 'Armani Exchange', 4, 250, 50, 'Armani Exchange-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 10%</b></span></font><br></div>', '2021-11-12 11:26:16', '2024-02-19 23:31:08'),
(2, 4, 'Burberry', 'Retro and chic, cat eye glasses feature upswept frames that mimic the shape of feline eyes, adding a playful and flirtatious touch to any outfit.', 'Burberry', 3, 80, 20, 'Burberry-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px; background-color: rgb(242, 242, 242);\"><b>Festivel Offer 20%</b></span></font><br></div>', '2021-11-12 11:34:47', '2024-02-19 23:34:21'),
(3, 3, 'Fendi', 'Making a statement with their large frames, oversized glasses add a touch of drama and glamour to any look, perfect for those seeking to stand out.', 'Fendi', 3, 850, 5, 'Fendi-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><font color=\"#008000\" face=\"Arial Black\"><span style=\"font-size: 24px;\"><b>Festivel Offer 5%</b></span></font><br></div>', '2021-11-12 11:36:21', '2024-02-19 23:31:19'),
(4, 4, 'Gucci', 'Sleek and sophisticated, rectangle glasses feature angular frames that enhance facial features and convey a sense of modern elegance.', 'Gucci', 4, 350, 30, 'Gucci-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 30%</span><br></div>', '2021-11-12 11:37:56', '2024-02-19 23:30:53'),
(70, 0, 'Armani Exchange', 'description Armani Exchange', '', 1, 1, 50, 'Armani Exchange.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, '2024-02-12 23:53:52', '2024-02-19 22:30:21'),
(71, 1, 'Chanel', 'Reminiscent of iconic figures like John Lennon, round glasses feature circular lenses and thin frames, exuding a bohemian and intellectual vibe.', 'Chanel', 5, 300, 10, 'Chanel-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 50%</span><br></div>', '2024-02-19 22:33:25', '2024-02-19 23:31:40'),
(72, 1, 'Dolce', 'Popularized in the 1950s, wayfarer glasses boast a bold and angular frame design, offering a versatile style that complements various face shapes.', 'Dolce', 4, 350, 15, 'Dolce-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 15%</span><br></div>', '2024-02-19 22:36:12', '2024-02-19 23:32:05'),
(73, 3, 'Maui Jim', 'Characterized by their thick upper frame that mimics eyebrows, browline glasses combine retro charm with contemporary style for a distinct and polished appearance.', 'Maui Jim', 5, 50, 10, 'Maui Jim-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 5, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 22:40:59', '2024-02-19 23:32:13'),
(74, 5, 'Oakley', 'Inspired by mid-century design, clubmaster glasses feature a bold upper frame and slim lower rim, offering a refined and distinguished look favored by intellectuals and trendsetters.', 'Oakley', 4, 70, 20, 'Oakley-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 20%</span><br></div>', '2024-02-19 22:46:17', '2024-02-19 23:32:22'),
(75, 7, 'Oliver Peoples', 'Minimalist and lightweight, rimless glasses feature lenses held in place by only temples and nose bridge, providing a subtle and barely-there aesthetic that’s perfect for those seeking a discreet eyewear option.', 'Oliver Peoples', 3, 200, 5, 'Oliver Peoples-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 22:47:36', '2024-02-19 23:32:29'),
(76, 5, 'Persol', 'Pushing boundaries with their unconventional shapes, geometric glasses come in a variety of angular and asymmetrical designs, adding a modern and avant-garde flair to any ensemble.', 'Persol', 5, 60, 25, 'Persol-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 80, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 25%</span><br></div>', '2024-02-19 22:51:07', '2024-02-19 23:32:46'),
(77, 2, 'Prada', 'Engineered for performance and durability, sports glasses feature wraparound frames and impact-resistant lenses, providing essential eye protection for athletes and outdoor enthusiasts.', 'Prada', 5, 280, 30, 'Prada-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 30%</span><br></div>', '2024-02-19 22:52:00', '2024-02-19 23:32:57'),
(78, 8, 'Ray-Ban', 'Channeling vintage vibes with their square frames and thick rims, retro square glasses offer a bold and nostalgic look that\'s both timeless and trendy.', 'Ray-Ban', 4, 780, 7, 'Ray-Ban-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 22:53:33', '2024-02-19 23:33:06'),
(79, 4, 'Tom Ford', 'Horn Rimmed Glasses: Classic and refined, horn rimmed glasses feature frames made from horn or tortoiseshell-patterned materials, adding a touch of sophistication to any outfit.', 'Tom Ford', 4, 320, 5, 'Tom Ford-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 22:55:05', '2024-02-19 23:33:14'),
(80, 7, 'VersaceVersace', 'Modern and versatile, clear frame glasses feature transparent frames that blend seamlessly with any style or color palette, offering a contemporary and understated aesthetic.', 'Versace', 5, 240, 30, 'Versace-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 15, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 22:56:25', '2024-02-19 23:33:23'),
(81, 8, 'Warby Parker', 'Combining the best of both worlds, half-rim glasses feature frames that are partially rimmed on the top while leaving the bottom of the lenses exposed, striking a balance between classic and modern design elements.', 'Warby Parker', 5, 150, 10, 'Warby Parker-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 5, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 22:57:51', '2024-02-19 23:33:32'),
(82, 1, 'Audemars Piguet', 'Designed for underwater exploration, dive watches are water-resistant timepieces featuring a unidirectional rotating bezel and luminous markers for enhanced visibility in low-light conditions.', 'Audemars Piguet', 5, 1000, 20, 'Audemars Piguet-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 20%</span><br></div>', '2024-02-19 23:13:53', '2024-02-19 23:13:53'),
(83, 5, 'Breitling', 'Inspired by aviation, pilot watches boast large, easily readable dials and often incorporate features like chronographs and slide-rule bezels to assist with flight calculations.', 'Breitling', 4, 1200, 5, 'Breitling-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 23:15:21', '2024-02-19 23:15:21'),
(84, 8, 'Bulova', 'Characterized by additional stopwatch functions, chronograph watches feature multiple sub-dials and pushers to measure elapsed time, ideal for timing events or sports activities.', 'Bulova', 3, 700, 10, 'Bulova-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 5, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 23:16:17', '2024-02-19 23:16:17'),
(85, 2, 'Cartier', 'Exuding elegance and sophistication, dress watches feature minimalist designs with thin cases and simple dials, making them perfect for formal occasions and professional settings.', 'Cartier', 3, 2000, 20, 'Cartier-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 20%</span><br></div>', '2024-02-19 23:17:31', '2024-02-19 23:17:31'),
(86, 2, 'Citizen', 'Originally designed for military use, field watches prioritize durability and legibility with rugged cases, bold numerals, and luminescent hands, ideal for outdoor activities and everyday wear.', 'Citizen', 5, 1700, 8, 'Citizen-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 15, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 8%</span><br></div>', '2024-02-19 23:18:52', '2024-02-19 23:18:52'),
(87, 5, 'HublotHublot', 'Showcasing the intricate inner workings of the timepiece, skeleton watches feature transparent dials or cases, allowing wearers to admire the movement\'s craftsmanship and mechanics.', 'Hublot', 5, 700, 5, 'Hublot-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 18, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 23:20:05', '2024-02-19 23:20:05'),
(88, 10, 'IWC Schaffhausen', 'Blending technology with traditional watchmaking, smartwatches offer connectivity features such as notifications, health tracking, and app integration, catering to modern lifestyles.', 'IWC Schaffhausen', 4, 500, 7, 'IWC Schaffhausen-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 30, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 7%</span><br></div>', '2024-02-19 23:20:59', '2024-02-19 23:20:59'),
(89, 8, 'Jaeger-LeCoultre', 'Celebrating celestial mechanics, moonphase watches display the lunar cycle\'s phases through a rotating disc or sub-dial, adding a touch of celestial charm to the dial.', 'Jaeger-LeCoultre', 3, 820, 4, 'Jaeger-LeCoultre-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 4%</span><br></div>', '2024-02-19 23:21:56', '2024-02-19 23:21:56'),
(90, 4, 'Omega', 'Designed for frequent travelers, GMT watches feature an additional hand or sub-dial indicating a second time zone, enabling wearers to track multiple time zones simultaneously.', 'Omega', 4, 2400, 25, 'Omega-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 25%</span><br></div>', '2024-02-19 23:23:24', '2024-02-19 23:23:24'),
(91, 5, 'Panerai', 'Reflecting nostalgia and heritage, vintage watches encompass a wide range of styles and eras, each with its own unique design elements and historical significance.', 'Panerai', 2, 3200, 7, 'Panerai-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 20, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 7%</span><br></div>', '2024-02-19 23:24:32', '2024-02-19 23:24:32'),
(92, 7, 'Patek Philippe', 'Showcasing horological expertise, tourbillon watches feature a rotating cage that houses the escapement and balance wheel, counteracting the effects of gravity for enhanced accuracy.', 'Patek Philippe', 4, 2700, 10, 'Patek Philippe-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 10, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 23:25:22', '2024-02-19 23:25:22'),
(93, 1, 'Rolex', 'Built to withstand harsh conditions, military watches prioritize durability and functionality with rugged cases, luminescent markers, and often feature NATO-style straps.', 'Rolex', 5, 4200, 5, 'Rolex-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 70, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 23:26:14', '2024-02-19 23:26:14'),
(94, 1, 'Seiko', 'Exuding opulence and exclusivity, luxury watches are crafted from premium materials such as precious metals and adorned with exquisite details, catering to discerning collectors.', 'Seiko', 5, 8500, 5, 'Seiko-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 200, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 23:27:12', '2024-02-19 23:27:12'),
(95, 2, 'TAG Heuer', 'Engineered for active lifestyles, sports watches offer features like water resistance, shock resistance, and durable materials, making them ideal companions for outdoor activities and workouts.', 'TAG Heuer', 5, 7300, 10, 'TAG Heuer-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 50, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 10%</span><br></div>', '2024-02-19 23:28:01', '2024-02-19 23:28:01'),
(96, 20, 'Tissot', 'Embracing trends and style, fashion watches come in a variety of designs, colors, and materials, often reflecting the latest fashion trends and catering to individual tastes and preferences.', 'Tissot', 5, 10500, 5, 'Tissot-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', 100, '<div><span style=\"font-weight: bolder; color: rgb(0, 128, 0); font-family: &quot;Arial Black&quot;; font-size: 24px;\">Festivel Offer 5%</span><br></div>', '2024-02-19 23:28:57', '2024-02-19 23:28:57'),
(97, 3, 'ahmed', 'JGHGJGFJFGHGHGHGJ', 'JHGJG', 1, 545445, 15, 'JHGJG-1-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2', 80, '<br><h2>efjeljf</h2>', '2024-02-21 07:50:39', '2024-02-22 00:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TXNID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Oder_No` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternativemno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `image`, `address1`, `address2`, `city`, `pincode`, `state`, `country`, `mnumber`, `alternativemno`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'EslamReda_A', 'EslamReda_A@gmail.com', NULL, '1708586560.jpg', 'Qalyubia', NULL, 'Shubra Al Khaimah', '55555', 'Bahteem', 'Egypt', '01150674192', NULL, '$2y$10$PDUq0ia8bj3pxvXx422lmerKhyx0XjHGtQb54kdWyq9k9Yt.dqFFO', 'admin', '1', '12l8crMTD1YDTc48hzOtmucFrWk3vIDX9Hm9madxKLwAXc8Ns93Sq2nA8qns', '2024-02-13 11:09:03', '2024-02-22 05:22:40'),
(2, 'EslamReda_U', 'EslamReda_U@gmail.com', NULL, '1708586482.jpg', 'Qalyubia', NULL, 'Shubra El Kheima', '55555', 'Bahteem', 'Egypt', '01150674192', NULL, '$2y$10$tAQcyFkFw7ubyXZJBgRneey9MlClDa1QTM5pgcppcRKaJqMzZDfQW', 'user', '1', NULL, '2024-02-14 14:35:27', '2024-02-22 05:21:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupencodes`
--
ALTER TABLE `coupencodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupencodes`
--
ALTER TABLE `coupencodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `sno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

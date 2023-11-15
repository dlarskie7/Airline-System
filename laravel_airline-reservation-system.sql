-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 01:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_airline-reservation-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `code` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(39, 'Philippine Airlines', 'PAL', '2023-11-15 06:20:46', '2023-11-15 06:20:46'),
(40, 'Cebu Pacific', 'CEB', '2023-11-15 06:21:33', '2023-11-15 06:21:33'),
(41, 'Philippines AirAsia', 'PAA', '2023-11-15 06:23:02', '2023-11-15 06:23:02'),
(42, 'PAL Express', 'PR', '2023-11-15 06:56:16', '2023-11-15 06:56:16'),
(43, 'AirSWIFT', 'T6', '2023-11-15 06:57:05', '2023-11-15 06:57:05'),
(44, 'Cebgo', 'DG', '2023-11-15 06:57:56', '2023-11-15 06:57:56'),
(45, 'Qatar Airways', '157 QR', '2023-11-15 06:58:39', '2023-11-15 06:58:39'),
(46, 'Singapore Airlines', '618 SQ', '2023-11-15 06:59:21', '2023-11-15 06:59:21'),
(47, 'AirAsia', 'D7', '2023-11-15 07:00:05', '2023-11-15 07:00:05'),
(48, 'AirAsia Zest', '72 APG', '2023-11-15 07:01:00', '2023-11-15 07:01:00'),
(49, 'Jeju Air', '7C', '2023-11-15 07:01:37', '2023-11-15 07:01:37'),
(50, 'Mactan-Cebu International Airport', 'CEB', '2023-11-15 07:02:17', '2023-11-15 07:02:17'),
(51, 'Royal Brunei Airlines', '672 BI', '2023-11-15 07:03:13', '2023-11-15 07:03:13'),
(52, 'Jetstar Asia Airways', '3K JSA', '2023-11-15 07:04:06', '2023-11-15 07:04:06'),
(53, 'Royal Air Philippines', 'RW', '2023-11-15 07:04:55', '2023-11-15 07:04:55'),
(54, 'Jin Air', 'JNA 718', '2023-11-15 07:05:42', '2023-11-15 07:05:42'),
(55, 'Air Busan', 'ABL', '2023-11-15 07:06:18', '2023-11-15 07:06:18'),
(56, 'Sunlight Air', '2R', '2023-11-15 07:06:47', '2023-11-15 07:06:47'),
(57, 'Air Macau', '675', '2023-11-15 07:07:21', '2023-11-15 07:07:21'),
(58, 'Gulf Air', '072', '2023-11-15 07:07:50', '2023-11-15 07:07:50'),
(59, 'Sky Pasada', 'WCC', '2023-11-15 07:08:40', '2023-11-15 07:08:40'),
(60, 'Cathay Pacific', '160', '2023-11-15 07:09:31', '2023-11-15 07:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ninoy Aquino International Airport (MNL)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(2, 2, 'Mactan-Cebu International Airport (CEB)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(3, 3, 'Francisco Bangoy International Airport (DVO)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(4, 4, 'Zamboanga International Airport (ZAM)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(5, 5, 'Iloilo International Airport (ILO)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(6, 6, 'Daniel Z. Romualdez Airport (TAC)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(7, 7, 'Basilio Fernando Air Base (BASA)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(8, 8, ' Ninoy Aquino International Airport', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(9, 9, 'Naga Airport (WNP)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(10, 10, 'Laoag International Airport (LAO)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(11, 11, 'Bancasi Airport (BXU)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(12, 12, 'San Fernando(PoroPort)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(13, 13, 'Legazpi Airport (LGP)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(14, 14, 'Ormoc Airport (OMC)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(15, 15, 'Roxas Airport (RXS)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(16, 16, 'Pagadian Airport (PAG)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(17, 17, 'Tuguegarao Airport (TUG)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(18, 18, 'Kalibo International Airport (KLO)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(19, 19, 'Bacolod-Silay International Airport (BCD)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(20, 20, 'General Santos International Airport (GES)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(21, 21, 'Laguindingan Airport (CGY)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(22, 22, 'Puerto Princesa International Airport (PPS)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(23, 23, 'Awang Airport (CBO)', '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(24, 24, 'Dipolog Airport (DPL)', '2022-11-23 03:15:26', '2022-11-23 03:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Manila', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(2, NULL, 'Cebu City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(3, NULL, 'Davao City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(4, NULL, 'Zamboanga City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(5, NULL, 'Iloilo City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(6, NULL, 'Tacloban City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(7, NULL, 'Batangas City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(8, NULL, 'Tagaytay City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(9, NULL, 'Naga City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(10, NULL, 'Laoag City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(11, NULL, 'Butuan City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(12, NULL, 'San Fernando', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(13, NULL, 'Legazpi City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(14, NULL, 'Ormoc City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(15, NULL, 'Roxas City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(16, NULL, 'Pagadian City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(17, NULL, 'Tuguegarao City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(18, NULL, 'Kalibo', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(19, NULL, 'Bacolod City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(20, NULL, 'General Santos', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(21, NULL, 'Cagayan de Oro', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(22, NULL, 'Puerto Princesa', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(23, NULL, 'Cotabato City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL),
(24, NULL, 'Dipolog City', '2022-11-23 03:15:26', '2022-11-23 03:15:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(125) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_number` varchar(125) NOT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `plane_id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `seats` int(11) NOT NULL,
  `remain_seats` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `price` double(6,2) NOT NULL COMMENT 'in USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_number`, `airline_id`, `plane_id`, `origin_id`, `destination_id`, `departure`, `arrival`, `seats`, `remain_seats`, `status`, `price`, `created_at`, `updated_at`) VALUES
(141, '5988', 39, 93, 1, 2, '2023-11-16 00:00:00', '2023-11-30 00:00:00', 88, 87, 1, 200.00, '2023-11-15 07:12:59', '2023-11-15 07:16:01'),
(142, '3073', 44, 94, 2, 3, '2023-11-17 00:00:00', '2023-12-25 00:00:00', 99, 98, 1, 250.00, '2023-11-15 07:13:22', '2023-11-15 07:15:59'),
(143, '1838', 49, 97, 18, 9, '2023-11-23 00:00:00', '2023-12-31 00:00:00', 89, 88, 1, 250.00, '2023-11-15 07:13:50', '2023-11-15 07:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(125) NOT NULL,
  `name` varchar(125) NOT NULL,
  `file_name` varchar(125) NOT NULL,
  `mime_type` varchar(125) DEFAULT NULL,
  `disk` varchar(125) NOT NULL,
  `conversions_disk` varchar(125) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Airline', 1, '407207a3-d302-4614-a28b-02d5ae65f36d', 'default', 'Austrian Airlines', 'austrian.jpg', 'image/jpeg', 'public', 'public', 1609, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:25', '2022-11-23 03:15:25'),
(2, 'App\\Models\\Airline', 2, 'f81456b6-55a5-48b2-8495-04818c3a7779', 'default', 'Iraqi Airways', 'iraqi_airways.jpg', 'image/jpeg', 'public', 'public', 2245, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:25', '2022-11-23 03:15:25'),
(3, 'App\\Models\\Airline', 3, '3a31a1ba-759e-46f8-836f-6809fe595c56', 'default', 'Royal Jordanian Airlines', 'royal_jordanian.jpg', 'image/jpeg', 'public', 'public', 1462, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:25', '2022-11-23 03:15:25'),
(4, 'App\\Models\\Airline', 4, '9a08b4d2-0670-48d7-abfc-e0de834f59da', 'default', 'Lufthansa', 'Lufthansa-Logo2.gif', 'image/gif', 'public', 'public', 4165, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:25', '2022-11-23 03:15:25'),
(5, 'App\\Models\\Airline', 5, '054cc0e0-9db2-471d-af73-606d36b1d7bc', 'default', 'Middle East', 'mea-logo.jpg', 'image/jpeg', 'public', 'public', 147211, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(6, 'App\\Models\\Airline', 6, 'af193449-b73b-4b75-af24-18a71570f33b', 'default', 'Fly Dubai   ', 'en-logo_flydubai.gif', 'image/gif', 'public', 'public', 1308, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(7, 'App\\Models\\Airline', 7, 'a824291a-d713-45e4-aef9-99e3ed160a9d', 'default', 'Turkish Airlines', 'Turkish-Airlines.jpg', 'image/jpeg', 'public', 'public', 764, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(8, 'App\\Models\\Airline', 8, 'aa089cb9-eaae-4b8f-afed-86a83c79461a', 'default', 'Egypt Air', 'Egypt-Air.jpg', 'image/jpeg', 'public', 'public', 4403, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(9, 'App\\Models\\Airline', 9, 'f33e3fb1-fa5c-4259-9aee-53420bc8ed4a', 'default', 'Pegasus Airlines', 'pegasus_logo.jpg', 'image/jpeg', 'public', 'public', 136958, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(10, 'App\\Models\\Airline', 10, '2874d5f4-f222-4a01-b8d7-f85fa201d329', 'default', 'Qatar Airways', 'Qatar-airways-logo.jpg', 'image/jpeg', 'public', 'public', 20568, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(11, 'App\\Models\\Airline', 11, '3d061322-fa15-41ac-b377-19ec87de0360', 'default', 'Mahan Air', 'mahan-air.png', 'image/png', 'public', 'public', 3065, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(12, 'App\\Models\\Airline', 12, 'c0a63d3d-8b91-48f1-bb9b-3c9be8560544', 'default', 'AirArabia', 'logo_airarabia.jpg', 'image/jpeg', 'public', 'public', 23120, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(13, 'App\\Models\\Airline', 13, 'faf7ff4e-3baf-4ba4-9cbf-c023f88a57c3', 'default', 'Fly Baghdad', 'baghdadd.gif', 'image/gif', 'public', 'public', 105820, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(14, 'App\\Models\\Airline', 14, 'aea8b45b-da42-48c1-9beb-be437d4f85c0', 'default', 'Cham Wings Airlines', 'cham.jpg', 'image/jpeg', 'public', 'public', 22676, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(15, 'App\\Models\\Airline', 15, '89d3bdf5-170a-4f00-99df-ab69d6c24d86', 'default', 'Ur Airline', 'ur-airline-logo.jpg', 'image/jpeg', 'public', 'public', 31044, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(16, 'App\\Models\\Airline', 16, 'b01ee7bc-2758-48d9-a4e1-2ce539f9b71d', 'default', 'SunExpress ', 'SunExpress.jpg', 'image/jpeg', 'public', 'public', 37232, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(17, 'App\\Models\\Airline', 17, '6607d749-0bbf-4cb4-a07d-3c2b181a8b45', 'default', 'Tailwind Airline', 'tailwind-airline.jpg', 'image/jpeg', 'public', 'public', 42877, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(18, 'App\\Models\\Airline', 18, '93498652-978f-4544-99f5-82c453c5ad69', 'default', 'Eurowings', 'eurowings_logo.jpg', 'image/jpeg', 'public', 'public', 2683, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(19, 'App\\Models\\Airline', 19, 'c8c6e8a9-deb5-4889-a031-63117f153ffe', 'default', 'Pouya Air', 'pouya-air.jpg', 'image/jpeg', 'public', 'public', 23970, '[]', '[]', '[]', '[]', 1, '2022-11-23 03:15:26', '2022-11-23 03:15:26'),
(20, 'App\\Models\\Airline', 20, 'dc8f0f22-2eb5-4ae1-bc14-772a563f642e', 'default', 'Austrian Airlines', 'austrian.jpg', 'image/jpeg', 'public', 'public', 1609, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:15', '2023-11-15 05:45:15'),
(21, 'App\\Models\\Airline', 21, '26bd671b-f6ba-479a-bc93-dda50de6f480', 'default', 'Iraqi Airways', 'iraqi_airways.jpg', 'image/jpeg', 'public', 'public', 2245, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(22, 'App\\Models\\Airline', 22, 'a4604293-ead8-4c0f-b81f-08b70af1c1db', 'default', 'Royal Jordanian Airlines', 'royal_jordanian.jpg', 'image/jpeg', 'public', 'public', 1462, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(23, 'App\\Models\\Airline', 23, 'df3b2ec6-756d-4812-9970-dad5f82b2280', 'default', 'Lufthansa', 'Lufthansa-Logo2.gif', 'image/gif', 'public', 'public', 4165, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(24, 'App\\Models\\Airline', 24, 'b593f1e6-4dd5-4c85-952a-202b26835433', 'default', 'Middle East', 'mea-logo.jpg', 'image/jpeg', 'public', 'public', 147211, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(25, 'App\\Models\\Airline', 25, '67368979-fd9e-416c-94a7-18be5db09f58', 'default', 'Fly Dubai   ', 'en-logo_flydubai.gif', 'image/gif', 'public', 'public', 1308, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(26, 'App\\Models\\Airline', 26, '372b49ce-72d9-4124-84d8-1c3736c30133', 'default', 'Turkish Airlines', 'Turkish-Airlines.jpg', 'image/jpeg', 'public', 'public', 764, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(27, 'App\\Models\\Airline', 27, 'e74c97d1-1b36-40a8-b41c-7607a032ad7f', 'default', 'Egypt Air', 'Egypt-Air.jpg', 'image/jpeg', 'public', 'public', 4403, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(28, 'App\\Models\\Airline', 28, 'f4124cd8-8ce3-4afb-9338-b19818cc7b86', 'default', 'Pegasus Airlines', 'pegasus_logo.jpg', 'image/jpeg', 'public', 'public', 136958, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(29, 'App\\Models\\Airline', 29, '7dff04a9-7927-4cfa-a281-2dc5231e8a96', 'default', 'Qatar Airways', 'Qatar-airways-logo.jpg', 'image/jpeg', 'public', 'public', 20568, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(30, 'App\\Models\\Airline', 30, '4758a597-3aaf-45f1-8d2c-a341b6125335', 'default', 'Mahan Air', 'mahan-air.png', 'image/png', 'public', 'public', 3065, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(31, 'App\\Models\\Airline', 31, '17493105-8444-477e-97e4-a8e8575030b5', 'default', 'AirArabia', 'logo_airarabia.jpg', 'image/jpeg', 'public', 'public', 23120, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(32, 'App\\Models\\Airline', 32, 'e801c3d5-176b-4ce0-a595-201b5ca91adf', 'default', 'Fly Baghdad', 'baghdadd.gif', 'image/gif', 'public', 'public', 105820, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(33, 'App\\Models\\Airline', 33, '1b041260-8bc0-47f6-beb7-8b95de435a78', 'default', 'Cham Wings Airlines', 'cham.jpg', 'image/jpeg', 'public', 'public', 22676, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(34, 'App\\Models\\Airline', 34, '88f35eb3-dbb7-41ba-bef3-1ceece61413c', 'default', 'Ur Airline', 'ur-airline-logo.jpg', 'image/jpeg', 'public', 'public', 31044, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(35, 'App\\Models\\Airline', 35, '89e3edc4-6bf6-4751-9aa1-1ef534081f2c', 'default', 'SunExpress ', 'SunExpress.jpg', 'image/jpeg', 'public', 'public', 37232, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(36, 'App\\Models\\Airline', 36, 'c655aa45-03b0-4fc3-bad0-8ecad33bc190', 'default', 'Tailwind Airline', 'tailwind-airline.jpg', 'image/jpeg', 'public', 'public', 42877, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(37, 'App\\Models\\Airline', 37, 'cd578508-f4c7-4721-b0e6-11f39f711502', 'default', 'Eurowings', 'eurowings_logo.jpg', 'image/jpeg', 'public', 'public', 2683, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(38, 'App\\Models\\Airline', 38, '6b679fb8-1a54-46a6-9902-a7d524cb5a61', 'default', 'Pouya Air', 'pouya-air.jpg', 'image/jpeg', 'public', 'public', 23970, '[]', '[]', '[]', '[]', 1, '2023-11-15 05:45:16', '2023-11-15 05:45:16'),
(39, 'App\\Models\\Airline', 39, 'f8036363-700a-4e4f-b935-41da861a57ad', 'default', 'Philippine Airlines', '6554a97de7c79_Philippine-Airlines-Logo.png', 'image/png', 'public', 'public', 38185, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:20:46', '2023-11-15 06:20:46'),
(40, 'App\\Models\\Airline', 40, 'a604e2d6-e0e6-4e23-8430-55141307afd0', 'default', 'Cebu Pacific', '6554a9ac185b7_Cebu-Pacific-Logo.png', 'image/png', 'public', 'public', 49434, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:21:33', '2023-11-15 06:21:33'),
(41, 'App\\Models\\Airline', 41, '6af9f0af-9cca-4099-84ab-7a55fca238a4', 'default', 'Philippines AirAsia', '6554a9ec79725_download.png', 'image/png', 'public', 'public', 5213, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:23:02', '2023-11-15 06:23:02'),
(42, 'App\\Models\\Airline', 42, '17e228f1-3955-40cc-abef-aa8cf7d17c20', 'default', 'PAL Express', '6554b1dee41f5_download.png', 'image/png', 'public', 'public', 3376, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:56:16', '2023-11-15 06:56:16'),
(43, 'App\\Models\\Airline', 43, 'd2909e71-303b-450f-b2f1-a66c7dc2a671', 'default', 'AirSWIFT', '6554b21015637_800px-AirSWIFT_Logo_with_Slogan.png', 'image/png', 'public', 'public', 34760, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:57:05', '2023-11-15 06:57:05'),
(44, 'App\\Models\\Airline', 44, '6ea0d271-2009-4b4b-bc71-af1bcf72be1f', 'default', 'Cebgo', '6554b24384d09_download.png', 'image/png', 'public', 'public', 3981, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:57:56', '2023-11-15 06:57:56'),
(45, 'App\\Models\\Airline', 45, '2c83940c-5492-4d3e-9ff3-b65dfde9916a', 'default', 'Qatar Airways', '6554b26dc71f0_download.png', 'image/png', 'public', 'public', 4972, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:58:39', '2023-11-15 06:58:39'),
(46, 'App\\Models\\Airline', 46, 'f9e86805-ebf8-46fe-b850-f2054a302094', 'default', 'Singapore Airlines', '6554b2980ddad_download.png', 'image/png', 'public', 'public', 4197, '[]', '[]', '[]', '[]', 1, '2023-11-15 06:59:21', '2023-11-15 06:59:21'),
(47, 'App\\Models\\Airline', 47, '494b5c21-37c7-4ac2-85f2-f83df1f47cd8', 'default', 'AirAsia', '6554b2c4adcd6_download.png', 'image/png', 'public', 'public', 4508, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:00:05', '2023-11-15 07:00:05'),
(48, 'App\\Models\\Airline', 48, 'f4f0374b-d65e-43fd-b48d-c38854d6ddfa', 'default', 'AirAsia Zest', '6554b2fbb5f87_download.png', 'image/png', 'public', 'public', 10875, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:01:00', '2023-11-15 07:01:00'),
(49, 'App\\Models\\Airline', 49, '0604996b-6ba3-41d7-be50-6f50c4418abb', 'default', 'Jeju Air', '6554b3158ef6e_download.png', 'image/png', 'public', 'public', 2892, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:01:37', '2023-11-15 07:01:37'),
(50, 'App\\Models\\Airline', 50, '4dbd35ba-f4b9-4627-a760-f4f9c6f8626d', 'default', 'Mactan-Cebu International Airport', '6554b33e5ad98_Cebu_logo.png', 'image/png', 'public', 'public', 12020, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:02:17', '2023-11-15 07:02:17'),
(51, 'App\\Models\\Airline', 51, '4edfeca6-2681-4b4f-bfac-e46c04c8141f', 'default', 'Royal Brunei Airlines', '6554b3804a12a_download.png', 'image/png', 'public', 'public', 2605, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:03:13', '2023-11-15 07:03:13'),
(52, 'App\\Models\\Airline', 52, 'fd1bcb71-3264-4909-a131-a2a095fb3b73', 'default', 'Jetstar Asia Airways', '6554b3b5bd64b_download.png', 'image/png', 'public', 'public', 4246, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:04:06', '2023-11-15 07:04:06'),
(53, 'App\\Models\\Airline', 53, 'd196f37d-ae04-47ba-aa9c-546c0b1e5227', 'default', 'Royal Air Philippines', '6554b3e5eaaf7_Royal-air-logo.png', 'image/png', 'public', 'public', 210290, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:04:55', '2023-11-15 07:04:55'),
(54, 'App\\Models\\Airline', 54, 'b2be73eb-f9f2-435a-b86d-3b3897cc3efd', 'default', 'Jin Air', '6554b4153074f_download.png', 'image/png', 'public', 'public', 3841, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:05:42', '2023-11-15 07:05:42'),
(55, 'App\\Models\\Airline', 55, '56321414-65b9-4bd3-bce4-2fff0374d6fa', 'default', 'Air Busan', '6554b439309b8_download.png', 'image/png', 'public', 'public', 6347, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:06:18', '2023-11-15 07:06:18'),
(56, 'App\\Models\\Airline', 56, '7e22e5bb-5aef-4297-8bf7-890cff1d60e2', 'default', 'Sunlight Air', '6554b45672764_Sunlight_Air-Logo.png', 'image/png', 'public', 'public', 137423, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:06:47', '2023-11-15 07:06:47'),
(57, 'App\\Models\\Airline', 57, '9f74bb27-0ca4-4d41-b0cf-19d91518b519', 'default', 'Air Macau', '6554b47884660_download.png', 'image/png', 'public', 'public', 5106, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:07:21', '2023-11-15 07:07:21'),
(58, 'App\\Models\\Airline', 58, 'cfeaf86e-c422-4d83-8b66-63d2f904e2ef', 'default', 'Gulf Air', '6554b48d05f11_download.png', 'image/png', 'public', 'public', 7465, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:07:50', '2023-11-15 07:07:50'),
(59, 'App\\Models\\Airline', 59, 'f87c75fa-8fe7-4b1a-93bd-c2a970dcadeb', 'default', 'Sky Pasada', '6554b4c0b6afb_sky-pasada.png', 'image/png', 'public', 'public', 35658, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:08:40', '2023-11-15 07:08:40'),
(60, 'App\\Models\\Airline', 60, '48248325-688b-4d86-bd23-c5d56fcc157f', 'default', 'Cathay Pacific', '6554b4f4e3e1d_share-facebook-ENG.jpg', 'image/jpeg', 'public', 'public', 33950, '[]', '[]', '[]', '[]', 1, '2023-11-15 07:09:31', '2023-11-15 07:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(125) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_22_065659_create_media_table', 1),
(6, '2022_09_20_123245_create_countries_table', 1),
(7, '2022_09_20_123321_create_cities_table', 1),
(8, '2022_09_20_123623_create_airports_table', 1),
(9, '2022_09_20_123739_create_airlines_table', 1),
(10, '2022_09_20_123751_create_planes_table', 1),
(11, '2022_09_20_123810_create_flights_table', 1),
(12, '2022_09_27_145710_create_tickets_table', 1),
(13, '2022_11_13_123535_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(125) NOT NULL,
  `notifiable_type` varchar(125) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(125) NOT NULL,
  `token` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(125) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `code` varchar(125) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `airline_id`, `name`, `code`, `capacity`, `created_at`, `updated_at`) VALUES
(93, 39, 'PAL Express', '079 - PR - Asia Pacific', 88, '2023-11-15 07:10:09', '2023-11-15 07:10:09'),
(94, 44, 'Cebu Pacific', 'CEB', 99, '2023-11-15 07:10:26', '2023-11-15 07:10:26'),
(95, 50, 'Lapu Lapu International Airport', 'PAA', 81, '2023-11-15 07:10:58', '2023-11-15 07:10:58'),
(96, 41, 'Pan Pacific Airlines', 'AO', 81, '2023-11-15 07:11:49', '2023-11-15 07:11:49'),
(97, 49, 'Korea Airline', 'PRC', 89, '2023-11-15 07:12:11', '2023-11-15 07:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(125) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: pendding, 1: accepted, 2: canceled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `flight_id`, `seat_number`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 22, 143, '100', 1, '2023-11-15 07:15:57', '2023-11-15 07:16:42', NULL),
(2, 22, 142, '14', 1, '2023-11-15 07:15:59', '2023-11-15 07:16:46', NULL),
(3, 22, 141, '23', 1, '2023-11-15 07:16:01', '2023-11-15 07:16:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `phone` varchar(125) NOT NULL,
  `address` varchar(125) DEFAULT NULL,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `password` varchar(125) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `name`, `email`, `phone`, `address`, `is_accepted`, `email_verified_at`, `fcm_token`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin', 'admin@airline.com', '0123456789', NULL, 0, NULL, NULL, '$2y$10$zOEqvV5zc4WR5lS7iu4/6ea8U2V7q6LdurGB8vGusIEy7/4xI1SKm', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(2, 0, 'Sean Nader', 'hirthe.cameron@romaguera.com', '239-514-6218', '228 Jonathon Club\nToyville, ME 88730-9493', 0, NULL, NULL, '$2y$10$hvUXLH9SgG7JTuMxF6elh.BWh.TUl1Jmcixn6y.m92kLXqGMH8UTq', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(3, 0, 'Mr. Taylor Gusikowski', 'domenico56@marks.org', '+1-830-212-7154', '4291 Dickinson Mountain Apt. 469\nPort Reina, CO 70542', 0, NULL, NULL, '$2y$10$Mqo8dMZbPWvozVCUHs/AIO5n6KzaHVyf05Exe.78DHt0xA2sXjqm2', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(4, 0, 'Marta Klocko', 'koch.rosendo@gulgowski.info', '1-820-972-1724', '308 Waters Valleys\nBodeport, CA 79478', 0, NULL, NULL, '$2y$10$lm4OhvDbSyhEJehe7L/XWOP11V1mBUOfnsUDieKKCWkunbdB37DFK', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(5, 0, 'Susanna Franecki III', 'sporer.mohammad@yahoo.com', '(484) 310-1806', '902 Rath Lake Suite 096\nBriellefurt, SC 13688-3465', 0, NULL, NULL, '$2y$10$w5I8fPt5rBekXNPlB95MgunpcoBy9hVJKVDHKnpCBpPQcQpYCtC0W', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(6, 0, 'Nels Boyle', 'giovanna.bauch@kub.biz', '419-890-6339', '4142 Schumm Glen\nWest Aronborough, MA 21650-2458', 0, NULL, NULL, '$2y$10$Ny1XhZOQ7epuyBunW5kMvedqF6Ln/rdbL.dYfk8ExUqWy3ZDMCaai', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(7, 0, 'Merle Hayes', 'pquigley@welch.com', '(531) 793-0835', '2370 Klein Orchard\nReidbury, MN 20607-6214', 0, NULL, NULL, '$2y$10$4Kg3JvFDwvqE2J8HPJeTWOHPfYvprjfVe0VmBDjLWIsq7kz1VHAHG', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(8, 0, 'Sydnie Hane II', 'morar.markus@gmail.com', '678-689-5712', '60974 Spinka Ridge\nSimonebury, CT 54102', 0, NULL, NULL, '$2y$10$I6pPgtSceQDIa44OY7HlbuiS6Svo4Gl2Bwa8Vhq1DZ.DZtcvGHazK', NULL, '2022-11-23 03:15:22', '2022-11-23 03:15:22', NULL),
(9, 0, 'Freeda Kuhic', 'farrell.marcelino@cummerata.info', '+1.765.974.6914', '6584 Baumbach Tunnel\nSchoenville, AK 50812', 0, NULL, NULL, '$2y$10$sn8FVj/L69N1tsRnAy6LbeHfZ9XFMIWTRec1S8W6jF7XkPp1FUjGy', NULL, '2022-11-23 03:15:23', '2022-11-23 03:15:23', NULL),
(10, 0, 'Kaia Schimmel', 'maxine81@pfannerstill.com', '479.250.5008', '77629 Kuhic Light\nKonopelskiborough, OK 69216-4549', 0, NULL, NULL, '$2y$10$/Tiem3CJmPO9j6EIhCRktuvr6FTIYdbACpg/bYiHM5pU5aZZ7a2nC', NULL, '2022-11-23 03:15:23', '2022-11-23 03:15:23', NULL),
(11, 0, 'Oscar Eichmann', 'ruth23@dare.com', '+1-878-592-2860', '10057 Conn Pass\nWest Chadside, TX 14053-1955', 0, NULL, NULL, '$2y$10$5duiQz9ohm9aez3FEUDaQOCavEYwGbJrDjl9lCDzZ/EZE1VQicrjC', NULL, '2022-11-23 03:15:23', '2022-11-23 03:15:23', NULL),
(12, 0, 'Domenica Swift', 'ztillman@murphy.com', '+1-636-468-7838', '6781 Alexandrea Plain\nNew Sammiefurt, AL 13000', 0, NULL, NULL, '$2y$10$BDznBWDo2MnVVMYUN0jDEOJQjZ.eXNqKaCdW2/cDGxoAx13TzewHy', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(13, 0, 'Gino Pagac', 'francisca.spinka@padberg.com', '1-202-494-1470', '375 McDermott Fork\nTanyafurt, MN 28353', 0, NULL, NULL, '$2y$10$eYOiOL.tmiJgcV1V9oECeOKgx1s/IyTX5nXyJJqJu3SRwTbZzYfji', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(14, 0, 'Dr. Stephania Mayer I', 'rborer@hotmail.com', '240.329.0757', '66000 Durgan Mews Suite 034\nWest Jedidiah, KY 15478-2832', 0, NULL, NULL, '$2y$10$PJeiTZhI2cxEBi1aCKTTWeEBeaXwKxX.HLBikOWxlMvGvgL1RSwLm', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(15, 0, 'Fiona Blick', 'amya46@yahoo.com', '878.631.4711', '74275 Asha Plains\nEast Guystad, CO 55273', 0, NULL, NULL, '$2y$10$0Ze83s/RviT3TvIiikHl3.GcoV1ze0.btIlUFSc4Cjbd6f0Uwd7Ja', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(16, 0, 'Jaime Stehr', 'xdibbert@pacocha.com', '(520) 798-8501', '79386 Talia Viaduct\nMckenzieton, AZ 69402', 0, NULL, NULL, '$2y$10$u1DKtZ.3zuKJWWXPCFs3/.QFe1hcIuTm7ALrAypWmekPk8ScKSrOO', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(17, 0, 'Prof. Marie Pfannerstill II', 'easter.howe@gmail.com', '(410) 565-0670', '258 Carson Common\nAdrieltown, NM 62423', 0, NULL, NULL, '$2y$10$dmnUOJkZmH4T5eXG0SOzSO40G25953/FX7Rg9aIUZTnmBCWbigs06', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(18, 0, 'Neha O\'Hara MD', 'pschimmel@ebert.info', '785.439.6462', '370 Gertrude Parkways Suite 171\nNew Scottie, KY 48280', 0, NULL, NULL, '$2y$10$YfYsCPDyOUYDJoOAtaAREeLfBpV5RIwbQr2z9QJj4rQub3lca7ig6', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(19, 0, 'Dr. Mariela O\'Conner Sr.', 'taryn78@yahoo.com', '(779) 868-8648', '8160 Homenick Estate Apt. 638\nCrooksland, VT 86960-5746', 0, NULL, NULL, '$2y$10$uPkr9YiKQemP89uBD61kru8cPcdJt4atl2eBHSAnpvphoIJZ2aNQO', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(20, 0, 'Alena Hackett', 'bergstrom.jennings@koelpin.com', '915-621-6343', '39080 Jocelyn Ways\nNorth Alfredo, KY 72758', 0, NULL, NULL, '$2y$10$Bdqox1BIz7YIuDmE1v5LquVgOELLYMYjtWEoe2eJTLig9jiFnc1ea', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(21, 0, 'Foster Metz', 'rachelle.zulauf@hill.com', '+1 (620) 936-1517', '28178 Hilpert Isle\nLake Laishaburgh, KY 98871', 0, NULL, NULL, '$2y$10$VXY7L6MA5.sUN9Gp6SEnCeZ.5nMsLAr2ks4fRIboA0rkjXIwsHtC6', NULL, '2023-11-15 05:45:15', '2023-11-15 05:45:15', NULL),
(22, 0, 'test customer', 'fgsdgdkgdkgkd@gmail.com', '13284823523', 'kejfsjgs@gmail.com', 0, NULL, NULL, '$2y$10$vDAQDR0SAf5Zep4noVAP0.I7NO2m.oY6BeapUN8Vg93itzQZ2q1by', NULL, '2023-11-15 07:15:52', '2023-11-15 07:15:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airports_city_id_foreign` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_airline_id_foreign` (`airline_id`),
  ADD KEY `flights_plane_id_foreign` (`plane_id`),
  ADD KEY `flights_origin_id_foreign` (`origin_id`),
  ADD KEY `flights_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planes_airline_id_foreign` (`airline_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_flight_id_foreign` (`flight_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_plane_id_foreign` FOREIGN KEY (`plane_id`) REFERENCES `planes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `planes_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

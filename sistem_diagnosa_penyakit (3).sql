-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 03:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_diagnosa_penyakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'user', 'You have created user', 'App\\Models\\User', 1, NULL, NULL, '{\"attributes\":{\"name\":\"FikriDev\",\"username\":\"admin\"}}', '2023-12-18 07:12:07', '2023-12-18 07:12:07'),
(2, 'user', 'You have created user', 'App\\Models\\User', 2, NULL, NULL, '{\"attributes\":{\"name\":\"Johni\",\"username\":\"johni\"}}', '2023-12-18 07:12:10', '2023-12-18 07:12:10'),
(3, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Batuk Pilek\"},\"old\":{\"nama\":\"Demam\"}}', '2023-12-18 07:17:28', '2023-12-18 07:17:28'),
(4, 'user', 'You have updated user', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Penyakit Kulit pada Bayi\"},\"old\":{\"name\":\"FikriDev\"}}', '2023-12-18 07:19:04', '2023-12-18 07:19:04'),
(5, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Cacar Air\"},\"old\":{\"nama\":\"Influenza\"}}', '2023-12-19 06:43:25', '2023-12-19 06:43:25'),
(6, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Biang Keringat\"},\"old\":{\"nama\":\"Cacar Air\"}}', '2023-12-19 06:46:04', '2023-12-19 06:46:04'),
(7, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Cacar Air\"},\"old\":{\"nama\":\"Demam berdarah dengue(DBD)\"}}', '2023-12-19 06:47:10', '2023-12-19 06:47:10'),
(8, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Campak\"},\"old\":{\"nama\":\"Hepatitis\"}}', '2023-12-19 06:50:54', '2023-12-19 06:50:54'),
(9, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Dermatitis Atopik\"},\"old\":{\"nama\":\"Malaria\"}}', '2023-12-19 06:56:40', '2023-12-19 06:56:40'),
(10, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Dermatitis Seboroik\"},\"old\":{\"nama\":\"Campak\"}}', '2023-12-19 06:58:37', '2023-12-19 06:58:37'),
(11, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Eksim\"},\"old\":{\"nama\":\"Tifus\"}}', '2023-12-19 07:00:21', '2023-12-19 07:00:21'),
(12, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Milia\"},\"old\":{\"nama\":\"Cacingan\"}}', '2023-12-19 07:07:51', '2023-12-19 07:07:51'),
(13, 'user', 'You have created user', 'App\\Models\\User', 3, NULL, NULL, '{\"attributes\":{\"name\":\"Cann\",\"username\":\"user\"}}', '2023-12-19 07:44:23', '2023-12-19 07:44:23'),
(14, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Bayi rewel\"},\"old\":{\"nama\":\"Demam tinggi\"}}', '2024-01-02 06:32:55', '2024-01-02 06:32:55'),
(15, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Benjolan berisi nanah\"},\"old\":{\"nama\":\"Batuk\"}}', '2024-01-02 06:33:26', '2024-01-02 06:33:26'),
(16, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Benjolan berisi nanah\",\"kode\":\"G003\"},\"old\":{\"nama\":\"Diare\",\"kode\":\"G004\"}}', '2024-01-02 06:33:59', '2024-01-02 06:33:59'),
(17, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Benjolan di kulit\",\"kode\":\"G004\"},\"old\":{\"nama\":\"Benjolan berisi nanah\",\"kode\":\"G003\"}}', '2024-01-02 06:34:32', '2024-01-02 06:34:32'),
(18, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Bercak merah\"},\"old\":{\"nama\":\"Mual\"}}', '2024-01-02 06:34:57', '2024-01-02 06:34:57'),
(19, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Bercak putih di mulut dan tenggorakan\"},\"old\":{\"nama\":\"Muntah\"}}', '2024-01-02 06:37:14', '2024-01-02 06:37:14'),
(20, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Bintik merah muda dan kulit tidak rata\"},\"old\":{\"nama\":\"Nyeri otot\"}}', '2024-01-02 06:39:40', '2024-01-02 06:39:40'),
(21, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Bintik putih kecil\"},\"old\":{\"nama\":\"Sakit perut\"}}', '2024-01-02 06:40:13', '2024-01-02 06:40:13'),
(22, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Demam\"},\"old\":{\"nama\":\"Kram otot\"}}', '2024-01-02 06:40:43', '2024-01-02 06:40:43'),
(23, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Gatal dan perih\"},\"old\":{\"nama\":\"Pilek\"}}', '2024-01-02 06:41:20', '2024-01-02 06:41:20'),
(24, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Gatal di daerah yang terkena\"},\"old\":{\"nama\":\"Muntah\"}}', '2024-01-02 06:42:45', '2024-01-02 06:42:45'),
(25, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Gatal di leher\"},\"old\":{\"nama\":\"Tubuh menggigil\"}}', '2024-01-02 06:43:16', '2024-01-02 06:43:16'),
(26, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 13, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Gelembung air muncul\"},\"old\":{\"nama\":\"Tubuh nyeri\"}}', '2024-01-02 06:43:56', '2024-01-02 06:43:56'),
(27, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kelopak mata terlihat merah\"},\"old\":{\"nama\":\"Penyakit kuning\"}}', '2024-01-02 06:44:32', '2024-01-02 06:44:32'),
(28, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kemerahan di selangkangan\"},\"old\":{\"nama\":\"Nyeri sendi\"}}', '2024-01-02 06:45:27', '2024-01-02 06:45:27'),
(29, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 16, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kemerahan, luka, bengkak pada paha, selangkangan dan organ vital\"},\"old\":{\"nama\":\"Nyeri perut\"}}', '2024-01-02 06:46:55', '2024-01-02 06:46:55'),
(30, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 17, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Ketombe kuning\\/putih\"},\"old\":{\"nama\":\"Trombosit turun\"}}', '2024-01-02 06:47:34', '2024-01-02 06:47:34'),
(31, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 18, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Koreng\"},\"old\":{\"nama\":\"Muncul bintik merah\"}}', '2024-01-02 06:47:57', '2024-01-02 06:47:57'),
(32, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 19, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kulit berminyak\"},\"old\":{\"nama\":\"Gatal\"}}', '2024-01-02 06:48:27', '2024-01-02 06:48:27'),
(33, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 20, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kulit kasar\"},\"old\":{\"nama\":\"Sakit di persendian\"}}', '2024-01-02 06:48:54', '2024-01-02 06:48:54'),
(34, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 21, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kulit kering\"},\"old\":{\"nama\":\"Sakit kepala\"}}', '2024-01-02 06:50:30', '2024-01-02 06:50:30'),
(35, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 22, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kulit pecah-pecah\\/bersisik\",\"kode\":\"G022\"}}', '2024-01-02 06:51:34', '2024-01-02 06:51:34'),
(36, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 23, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Kulit tampak merah\",\"kode\":\"G023\"}}', '2024-01-02 06:52:05', '2024-01-02 06:52:05'),
(37, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 24, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Mata sensitif terhadap cahaya\",\"kode\":\"G024\"}}', '2024-01-02 06:52:45', '2024-01-02 06:52:45'),
(38, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 25, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Munculnya bintik-bintik kemerahan terutama pada badan yang sering berkeringaat\",\"kode\":\"G025\"}}', '2024-01-02 06:54:20', '2024-01-02 06:54:20'),
(39, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 26, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Nyeri dada\\/sesak nafas\",\"kode\":\"G026\"}}', '2024-01-02 06:55:07', '2024-01-02 06:55:07'),
(40, 'gejala', 'You have updated gejala', 'App\\Models\\Gejala', 26, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Nyeri dada\\/sesak napas\"},\"old\":{\"nama\":\"Nyeri dada\\/sesak nafas\"}}', '2024-01-02 06:55:27', '2024-01-02 06:55:27'),
(41, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 27, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Pembengkakan di area terkena\",\"kode\":\"G027\"}}', '2024-01-02 06:59:21', '2024-01-02 06:59:21'),
(42, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 28, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Peradangan kulit\",\"kode\":\"G028\"}}', '2024-01-02 07:01:02', '2024-01-02 07:01:02'),
(43, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 29, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Peradangan tenggorokan\",\"kode\":\"G029\"}}', '2024-01-02 07:04:41', '2024-01-02 07:04:41'),
(44, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 30, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Ruam bewarna coklat kemerahan pada kulit\",\"kode\":\"G030\"}}', '2024-01-02 07:05:38', '2024-01-02 07:05:38'),
(45, 'gejala', 'You have created gejala', 'App\\Models\\Gejala', 31, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Wajah tampak merah\",\"kode\":\"G031\"}}', '2024-01-02 07:06:13', '2024-01-02 07:06:13'),
(46, 'user', 'You have updated user', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '{\"attributes\":[],\"old\":[]}', '2024-01-02 14:50:32', '2024-01-02 14:50:32'),
(47, 'user', 'You have updated user', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '{\"attributes\":[],\"old\":[]}', '2024-01-02 14:59:20', '2024-01-02 14:59:20'),
(48, 'penyakit', 'You have created penyakit', 'App\\Models\\Penyakit', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Impertigo\",\"kode\":\"P008\"}}', '2024-01-02 15:21:01', '2024-01-02 15:21:01'),
(49, 'penyakit', 'You have created penyakit', 'App\\Models\\Penyakit', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"nama\":\"Ruam popok\",\"kode\":\"P009\"}}', '2024-01-02 15:23:02', '2024-01-02 15:23:02'),
(50, 'user', 'You have created user', 'App\\Models\\User', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Ana Arliani Anugrah Putri\",\"username\":\"Ana\"}}', '2024-01-02 15:28:05', '2024-01-02 15:28:05'),
(51, 'user', 'You have updated user', 'App\\Models\\User', 4, 'App\\Models\\User', 4, '{\"attributes\":[],\"old\":[]}', '2024-01-02 15:32:01', '2024-01-02 15:32:01'),
(52, 'user', 'You have updated user', 'App\\Models\\User', 4, 'App\\Models\\User', 4, '{\"attributes\":[],\"old\":[]}', '2024-01-02 15:32:31', '2024-01-02 15:32:31'),
(53, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 7, 'App\\Models\\User', 4, '{\"attributes\":{\"nama\":\"Impertigo\"},\"old\":{\"nama\":\"Milia\"}}', '2024-01-02 23:55:51', '2024-01-02 23:55:51'),
(54, 'penyakit', 'You have updated penyakit', 'App\\Models\\Penyakit', 8, 'App\\Models\\User', 4, '{\"attributes\":{\"nama\":\"Milia\"},\"old\":{\"nama\":\"Impertigo\"}}', '2024-01-03 00:00:02', '2024-01-03 00:00:02'),
(55, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Biang Keringat\",\"enabled\":5,\"disabled\":3,\"changed\":1}', '2024-01-03 00:02:55', '2024-01-03 00:02:55'),
(56, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Cacar Air\",\"enabled\":4,\"disabled\":4,\"changed\":0}', '2024-01-03 00:06:07', '2024-01-03 00:06:07'),
(57, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Campak\",\"enabled\":7,\"disabled\":2,\"changed\":0}', '2024-01-03 00:11:06', '2024-01-03 00:11:06'),
(58, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Dermatitis Atopik\",\"enabled\":2,\"disabled\":5,\"changed\":1}', '2024-01-03 00:24:40', '2024-01-03 00:24:40'),
(59, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Dermatitis Seboroik\",\"enabled\":3,\"disabled\":3,\"changed\":0}', '2024-01-03 00:32:10', '2024-01-03 00:32:10'),
(60, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Eksim\",\"enabled\":8,\"disabled\":4,\"changed\":1}', '2024-01-03 00:38:54', '2024-01-03 00:38:54'),
(61, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Impertigo\",\"enabled\":6,\"disabled\":3,\"changed\":2}', '2024-01-03 00:49:12', '2024-01-03 00:49:12'),
(62, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Ruam popok\",\"enabled\":6,\"disabled\":0,\"changed\":0}', '2024-01-03 00:51:30', '2024-01-03 00:51:30'),
(63, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Milia\",\"enabled\":2,\"disabled\":0,\"changed\":0}', '2024-01-03 01:17:56', '2024-01-03 01:17:56'),
(64, 'gejala', 'You have deleted gejala', 'App\\Models\\Gejala', 31, 'App\\Models\\User', 4, '{\"attributes\":{\"nama\":\"Wajah tampak merah\",\"kode\":\"G031\"}}', '2024-01-03 01:18:16', '2024-01-03 01:18:16'),
(65, 'user', 'You have created user', 'App\\Models\\User', 5, NULL, NULL, '{\"attributes\":{\"name\":\"Siru linali\",\"username\":\"Siru\"}}', '2024-01-03 01:21:59', '2024-01-03 01:21:59'),
(66, 'default', 'Updated basis rules', NULL, NULL, 'App\\Models\\User', 4, '{\"penyakit\":\"Ruam popok\",\"enabled\":6,\"disabled\":0,\"changed\":0}', '2024-01-03 03:38:37', '2024-01-03 03:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejalas`
--

CREATE TABLE `gejalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalas`
--

INSERT INTO `gejalas` (`id`, `nama`, `kode`) VALUES
(1, 'Batuk Pilek', 'G001'),
(2, 'Bayi rewel', 'G002'),
(3, 'Benjolan berisi nanah', 'G003'),
(4, 'Benjolan di kulit', 'G004'),
(5, 'Bercak merah', 'G005'),
(6, 'Bercak putih di mulut dan tenggorakan', 'G006'),
(7, 'Bintik merah muda dan kulit tidak rata', 'G007'),
(8, 'Bintik putih kecil', 'G008'),
(9, 'Demam', 'G009'),
(10, 'Gatal dan perih', 'G010'),
(11, 'Gatal di daerah yang terkena', 'G011'),
(12, 'Gatal di leher', 'G012'),
(13, 'Gelembung air muncul', 'G013'),
(14, 'Kelopak mata terlihat merah', 'G014'),
(15, 'Kemerahan di selangkangan', 'G015'),
(16, 'Kemerahan, luka, bengkak pada paha, selangkangan dan organ vital', 'G016'),
(17, 'Ketombe kuning/putih', 'G017'),
(18, 'Koreng', 'G018'),
(19, 'Kulit berminyak', 'G019'),
(20, 'Kulit kasar', 'G020'),
(21, 'Kulit kering', 'G021'),
(22, 'Kulit pecah-pecah/bersisik', 'G022'),
(23, 'Kulit tampak merah', 'G023'),
(24, 'Mata sensitif terhadap cahaya', 'G024'),
(25, 'Munculnya bintik-bintik kemerahan terutama pada badan yang sering berkeringaat', 'G025'),
(26, 'Nyeri dada/sesak napas', 'G026'),
(27, 'Pembengkakan di area terkena', 'G027'),
(28, 'Peradangan kulit', 'G028'),
(29, 'Peradangan tenggorokan', 'G029'),
(30, 'Ruam bewarna coklat kemerahan pada kulit', 'G030');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `value_cf` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `value_cf`) VALUES
(1, 1, 1, 0.60),
(9, 1, 3, 0.60),
(10, 14, 3, 0.60),
(16, 11, 4, 0.40),
(23, 4, 6, 0.60),
(28, 5, 7, 0.60),
(30, 11, 7, 0.60),
(32, 11, 1, 0.80),
(33, 12, 1, 0.80),
(34, 23, 1, 0.80),
(35, 25, 1, 0.80),
(36, 9, 2, 0.80),
(37, 11, 2, 0.60),
(38, 13, 2, 0.80),
(39, 26, 2, 0.80),
(40, 6, 3, 0.80),
(41, 9, 3, 0.60),
(42, 24, 3, 0.60),
(43, 29, 3, 0.60),
(44, 30, 3, 0.80),
(45, 22, 4, 0.80),
(46, 11, 5, 0.60),
(47, 14, 5, 0.40),
(48, 25, 5, 0.80),
(49, 11, 6, 0.80),
(50, 18, 6, 0.60),
(51, 20, 6, 0.80),
(52, 21, 6, 0.40),
(53, 22, 6, 0.80),
(54, 23, 6, 0.60),
(55, 28, 6, 0.60),
(56, 3, 7, 0.80),
(57, 9, 7, 0.60),
(58, 13, 7, 0.80),
(59, 27, 7, 0.60),
(60, 2, 9, 0.80),
(61, 7, 9, 0.80),
(62, 10, 9, 0.40),
(63, 15, 9, 0.80),
(64, 16, 9, 0.80),
(65, 23, 9, 0.60),
(66, 8, 8, 0.60),
(67, 21, 8, 0.60);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_settings_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_04_23_030446_create_permission_tables', 1),
(6, '2021_04_28_072156_create_activity_log_table', 1),
(7, '2022_05_25_045640_create_penyakits_table', 1),
(8, '2022_05_25_045757_create_gejalas_table', 1),
(9, '2022_05_28_075608_create_riwayats_table', 1),
(10, '2022_06_27_191302_create_gejala_penyakit_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `penyebab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`id`, `kode`, `nama`, `penyebab`) VALUES
(1, 'P001', 'Biang Keringat', 'Pada bayi, biang keringat disebabkan oleh pori-pori kulitnya yang kecil dan kelenjar keringat yang belum terbentuk sempurna. Biang keringat dapat menimbulkan ruam merah yang biasanya terlihat pada lipatan kulit atau area yang tertutup pakaian, seperti leher, perut, dada, atau bokong.'),
(2, 'P002', 'Cacar Air', 'Cacar air pada bayi terjadi saat bayi terinfeksi virus Varicella zoster. Bayi dapat tertular virus ini melalui kontak langsung dengan orang yang terinfeksi, baik itu melalui lepuhan cacar air maupun dari percikan liur saat orang tersebut batuk atau bersin.'),
(3, 'P003', 'Campak', 'Campak merupakan penyakit yang disebabkan oleh infeksi virus. Penularan campak pada anak bisa terjadi ketika anak menghirup percikan air liur penderita campak yang bersin atau batuk. Penularan juga bisa terjadi secara tidak langsung, yaitu ketika anak menyentuh hidung atau memasukkan tangan ke mulutnya setelah menyentuh barang yang terkontaminasi air liur penderita campak. Umumnya, anak yang menderita campak dapat menularkan virus kepada anak lain mulai dari 4 hari sebelum timbul ruam hingga 4 hari setelahnya.'),
(4, 'P004', 'Dermatitis Atopik', 'Penyebab dermatitis atopik belum diketahui secara pasti, tetapi ada beberapa faktor yang diduga dapat menjadi pemicu timbulnya dermatitis atopik, yaitu:\r\nPerubahan hormon\r\nAlergi, misalnya terhadap makanan, debu, bulu hewan, kain wool, atau tungau\r\nIritasi terhadap zat tertentu, seperti sabun atau deterjen\r\nStres\r\nInfeksi\r\nUdara yang dingin, kering, atau lembap\r\nKeringat\r\nGejala utama dermatitis atopik adalah gatal dan ruam kulit.'),
(5, 'P005', 'Dermatitis Seboroik', 'Penyebab pasti terjadinya dermatitis seboroik belum diketahui. Namun, diduga kondisi ini disebabkan oleh jamur Malassezia yang tumbuh akibat minyak yang berlebihan di permukaan kulit. Selain karena produksi minyak dan tumbuhnya jamur, munculnya dermatitis seboroik juga diduga akibat respon abnormal dari sistem kekebalan tubuh.'),
(6, 'P006', 'Eksim', 'Penyebab eksim pada bayi belum dapat diketahui dengan pasti, tapi para ahli mengaitkannya dengan kondisi sistem imun tubuh, faktor genetik, serta pencetus alergi dari lingkungan. Saat bayi terpapar sesuatu dari lingkungannya yang mencetus alergi, maka sistem imun tubuh bereaksi berlebihan sehingga muncul kulit kering dan terasa gatal.'),
(7, 'P007', 'Impertigo', 'Penyebab utama impetigo adalah infeksi bakteri. Bakteri dapat menular melalui kontak langsung dengan penderita atau melalui perantara berupa barang yang sebelumnya digunakan oleh penderita, seperti baju atau handuk.'),
(8, 'P008', 'Milia', 'Milia ditandai dengan benjolan yang berwarna putih mutiara atau putih kekuningan. Benjolan ini berukuran kecil dengan diameter sekitar 1–2 milimeter. Meskipun tidak menimbulkan nyeri, benjolan akibat milia bisa menimbulkan rasa tidak nyaman bagi sebagian penderitanya.\r\n\r\nMilia juga dapat berwarna kemerahan dan mengalami iritasi bila bergesekan dengan pakaian atau seprai yang berbahan kasar.'),
(9, 'P009', 'Ruam popok', 'Gejala utama ruam popok atau diaper rash adalah kulit bayi di area pemakaian popok, yaitu bokong, lipatan paha, dan sekitar alat kelamin mengalami iritasi, yang tampak memerah. Kulit yang mengalami ruam kemerahan ini juga akan terasa hangat dan tampak bengkak.');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2023-12-18 07:12:03', '2023-12-18 07:12:03'),
(2, 'logs-list', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(3, 'logs-delete', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(4, 'role-list', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(5, 'role-create', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(6, 'role-edit', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(7, 'role-delete', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(8, 'member-list', 'web', '2023-12-18 07:12:04', '2023-12-18 07:12:04'),
(9, 'member-create', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(10, 'member-edit', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(11, 'member-delete', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(12, 'setting-list', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(13, 'setting-edit', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(14, 'penyakit-list', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(15, 'penyakit-create', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(16, 'penyakit-edit', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(17, 'penyakit-delete', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(18, 'gejala-list', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(19, 'gejala-create', 'web', '2023-12-18 07:12:05', '2023-12-18 07:12:05'),
(20, 'gejala-edit', 'web', '2023-12-18 07:12:06', '2023-12-18 07:12:06'),
(21, 'gejala-delete', 'web', '2023-12-18 07:12:06', '2023-12-18 07:12:06'),
(22, 'rules-list', 'web', '2023-12-18 07:12:06', '2023-12-18 07:12:06'),
(23, 'rules-edit', 'web', '2023-12-18 07:12:06', '2023-12-18 07:12:06'),
(24, 'diagnosa', 'web', '2023-12-18 07:12:07', '2023-12-18 07:12:07'),
(25, 'diagnosa-create', 'web', '2023-12-18 07:12:07', '2023-12-18 07:12:07'),
(26, 'riwayat-list', 'web', '2023-12-18 07:12:07', '2023-12-18 07:12:07'),
(27, 'riwayat-show', 'web', '2023-12-18 07:12:07', '2023-12-18 07:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `riwayats`
--

CREATE TABLE `riwayats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hasil_diagnosa` text NOT NULL,
  `cf_max` text NOT NULL,
  `gejala_terpilih` text NOT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayats`
--

INSERT INTO `riwayats` (`id`, `nama`, `hasil_diagnosa`, `cf_max`, `gejala_terpilih`, `file_pdf`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Alviyant', 'a:2:{i:1;a:4:{s:13:\"nama_penyakit\";s:14:\"Biang Keringat\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}}s:8:\"hasil_cf\";d:0.15360000000000001;}i:5;a:4:{s:13:\"nama_penyakit\";s:19:\"Dermatitis Seboroik\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.5376000000000001;}}', 'a:2:{i:0;d:0.5376000000000001;i:1;s:26:\"Dermatitis Seboroik (P005)\";}', 'a:2:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Alviyant-1702970526.pdf', 1, '2023-12-19 07:22:05', '2023-12-19 07:22:15'),
(2, 'ana', 'a:2:{i:5;a:4:{s:13:\"nama_penyakit\";s:19:\"Dermatitis Seboroik\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}i:1;a:5:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}}s:8:\"hasil_cf\";d:0.7296;}i:4;a:4:{s:13:\"nama_penyakit\";s:17:\"Dermatitis Atopik\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:15:\"Tubuh menggigil\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.08000000000000002;}}s:8:\"hasil_cf\";d:0.07407407407407408;}}', 'a:2:{i:0;d:0.7296;i:1;s:26:\"Dermatitis Seboroik (P005)\";}', 'a:4:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:10;a:4:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:11;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:12;a:4:{s:4:\"nama\";s:15:\"Tubuh menggigil\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}}', 'Diagnosa-ana-1702970722.pdf', 1, '2023-12-19 07:25:22', '2023-12-19 07:25:25'),
(3, 'Cann', 'a:4:{i:1;a:4:{s:13:\"nama_penyakit\";s:14:\"Biang Keringat\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:2;a:5:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.08000000000000002;}}s:8:\"hasil_cf\";d:0.06814814814814814;}i:5;a:4:{s:13:\"nama_penyakit\";s:19:\"Dermatitis Seboroik\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.5376000000000001;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Eksim\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:-0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:-0.16000000000000003;}}s:8:\"hasil_cf\";d:0;}i:4;a:4:{s:13:\"nama_penyakit\";s:17:\"Dermatitis Atopik\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:15:\"Tubuh menggigil\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}}s:8:\"hasil_cf\";d:0;}}', 'a:2:{i:0;d:0.5376000000000001;i:1;s:26:\"Dermatitis Seboroik (P005)\";}', 'a:6:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:5;a:4:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:7;a:4:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:9;a:4:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:12;a:4:{s:4:\"nama\";s:15:\"Tubuh menggigil\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Cann-1702971961.pdf', 3, '2023-12-19 07:46:00', '2023-12-19 07:46:07'),
(4, 'Cann', 'a:2:{i:1;a:4:{s:13:\"nama_penyakit\";s:14:\"Biang Keringat\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:4:\"-0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.12;}i:2;a:5:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.12;}}s:8:\"hasil_cf\";d:0.15142857142857147;}i:5;a:4:{s:13:\"nama_penyakit\";s:19:\"Dermatitis Seboroik\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.6400000000000001;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:4:\"-0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:-0.48;}}s:8:\"hasil_cf\";d:0.10810810810810821;}}', 'a:2:{i:0;d:0.15142857142857147;i:1;s:21:\"Biang Keringat (P001)\";}', 'a:3:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:4:\"-0.6\";s:9:\"keyakinan\";s:23:\"Kemungkinan besar tidak\";}i:7;a:4:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}}', 'Diagnosa-Cann-1702975560.pdf', 3, '2023-12-19 08:45:59', '2023-12-19 08:46:03'),
(5, 'onii', 'a:1:{i:2;a:4:{s:13:\"nama_penyakit\";s:9:\"Cacar Air\";s:13:\"kode_penyakit\";s:4:\"P002\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:15:\"Trombosit turun\";s:4:\"kode\";s:4:\"G017\";s:7:\"cf_user\";s:4:\"-0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:-0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:19:\"Muncul bintik merah\";s:4:\"kode\";s:4:\"G018\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:-0.16000000000000003;}}s:8:\"hasil_cf\";d:-0.3636363636363637;}}', 'a:2:{i:0;d:-0.3636363636363637;i:1;s:16:\"Cacar Air (P002)\";}', 'a:4:{i:16;a:4:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:17;a:4:{s:4:\"nama\";s:15:\"Trombosit turun\";s:4:\"kode\";s:4:\"G017\";s:7:\"cf_user\";s:4:\"-0.8\";s:9:\"keyakinan\";s:18:\"Hampir pasti tidak\";}i:18;a:4:{s:4:\"nama\";s:19:\"Muncul bintik merah\";s:4:\"kode\";s:4:\"G018\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:21;a:4:{s:4:\"nama\";s:12:\"Sakit kepala\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-onii-1702991144.pdf', 1, '2023-12-19 13:05:44', '2023-12-19 13:05:47'),
(6, 'Siru linali', 'a:4:{i:1;a:4:{s:13:\"nama_penyakit\";s:14:\"Biang Keringat\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}}s:8:\"hasil_cf\";d:0.6672;}i:3;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.5136;}i:2;a:4:{s:13:\"nama_penyakit\";s:9:\"Cacar Air\";s:13:\"kode_penyakit\";s:4:\"P002\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}}s:8:\"hasil_cf\";d:0.5648;}i:7;a:4:{s:13:\"nama_penyakit\";s:9:\"Impertigo\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}}s:8:\"hasil_cf\";d:0.5136000000000001;}}', 'a:2:{i:0;d:0.6672;i:1;s:21:\"Biang Keringat (P001)\";}', 'a:3:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:9;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:11;a:4:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}}', 'Diagnosa-Siru linali-1704244999.pdf', 5, '2024-01-03 01:23:19', '2024-01-03 01:23:26'),
(7, 'Siru linali', 'a:2:{i:4;a:4:{s:13:\"nama_penyakit\";s:17:\"Dermatitis Atopik\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.4832000000000001;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Eksim\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:4:{i:0;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}i:1;a:5:{s:4:\"nama\";s:11:\"Kulit kasar\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:3;a:5:{s:4:\"nama\";s:16:\"Peradangan kulit\";s:4:\"kode\";s:4:\"G028\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.8172595200000001;}}', 'a:2:{i:0;d:0.8172595200000001;i:1;s:12:\"Eksim (P006)\";}', 'a:5:{i:2;a:4:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:11;a:4:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:20;a:4:{s:4:\"nama\";s:11:\"Kulit kasar\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:22;a:4:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:28;a:4:{s:4:\"nama\";s:16:\"Peradangan kulit\";s:4:\"kode\";s:4:\"G028\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Siru linali-1704245244.pdf', 5, '2024-01-03 01:27:24', '2024-01-03 01:27:26'),
(8, 'Siru linali', 'a:1:{i:3;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}}s:8:\"hasil_cf\";d:0.5904;}}', 'a:2:{i:0;d:0.5904;i:1;s:13:\"Campak (P003)\";}', 'a:3:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:7;a:4:{s:4:\"nama\";s:38:\"Bintik merah muda dan kulit tidak rata\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:9;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}}', 'Diagnosa-Siru linali-1704252854.pdf', 5, '2024-01-03 03:34:14', '2024-01-03 03:34:20'),
(9, 'Siru linali', 'a:2:{i:3;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.4224;}i:7;a:4:{s:13:\"nama_penyakit\";s:9:\"Impertigo\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.5136;}}', 'a:2:{i:0;d:0.5136;i:1;s:16:\"Impertigo (P007)\";}', 'a:4:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:5;a:4:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:9;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:28;a:4:{s:4:\"nama\";s:16:\"Peradangan kulit\";s:4:\"kode\";s:4:\"G028\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}}', 'Diagnosa-Siru linali-1704260463.pdf', 5, '2024-01-03 05:41:03', '2024-01-03 05:41:06'),
(10, 'Siru linali', 'a:9:{i:1;a:4:{s:13:\"nama_penyakit\";s:14:\"Biang Keringat\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:5:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:14:\"Gatal di leher\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:3;a:5:{s:4:\"nama\";s:18:\"Kulit tampak merah\";s:4:\"kode\";s:4:\"G023\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:4;a:5:{s:4:\"nama\";s:78:\"Munculnya bintik-bintik kemerahan terutama pada badan yang sering berkeringaat\";s:4:\"kode\";s:4:\"G025\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.8375015424000001;}i:3;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:7:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:37:\"Bercak putih di mulut dan tenggorakan\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:3;a:5:{s:4:\"nama\";s:27:\"Kelopak mata terlihat merah\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:4;a:5:{s:4:\"nama\";s:29:\"Mata sensitif terhadap cahaya\";s:4:\"kode\";s:4:\"G024\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:5;a:5:{s:4:\"nama\";s:22:\"Peradangan tenggorokan\";s:4:\"kode\";s:4:\"G029\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:6;a:5:{s:4:\"nama\";s:40:\"Ruam bewarna coklat kemerahan pada kulit\";s:4:\"kode\";s:4:\"G030\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.88275730661376;}i:9;a:4:{s:13:\"nama_penyakit\";s:10:\"Ruam popok\";s:13:\"kode_penyakit\";s:4:\"P009\";s:6:\"gejala\";a:6:{i:0;a:5:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:38:\"Bintik merah muda dan kulit tidak rata\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:15:\"Gatal dan perih\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:3;a:5:{s:4:\"nama\";s:25:\"Kemerahan di selangkangan\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:4;a:5:{s:4:\"nama\";s:64:\"Kemerahan, luka, bengkak pada paha, selangkangan dan organ vital\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:5;a:5:{s:4:\"nama\";s:18:\"Kulit tampak merah\";s:4:\"kode\";s:4:\"G023\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.863501295616;}i:7;a:4:{s:13:\"nama_penyakit\";s:9:\"Impertigo\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:6:{i:0;a:5:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:2;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:3;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:4;a:5:{s:4:\"nama\";s:20:\"Gelembung air muncul\";s:4:\"kode\";s:4:\"G013\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:5;a:5:{s:4:\"nama\";s:28:\"Pembengkakan di area terkena\";s:4:\"kode\";s:4:\"G027\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.845733298176;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Eksim\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:8:{i:0;a:5:{s:4:\"nama\";s:17:\"Benjolan di kulit\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:6:\"Koreng\";s:4:\"kode\";s:4:\"G018\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:3;a:5:{s:4:\"nama\";s:11:\"Kulit kasar\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:4;a:5:{s:4:\"nama\";s:12:\"Kulit kering\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:5;a:5:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:6;a:5:{s:4:\"nama\";s:18:\"Kulit tampak merah\";s:4:\"kode\";s:4:\"G023\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:7;a:5:{s:4:\"nama\";s:16:\"Peradangan kulit\";s:4:\"kode\";s:4:\"G028\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.9118828599181312;}i:8;a:4:{s:13:\"nama_penyakit\";s:5:\"Milia\";s:13:\"kode_penyakit\";s:4:\"P008\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:18:\"Bintik putih kecil\";s:4:\"kode\";s:4:\"G008\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:12:\"Kulit kering\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.4224;}i:2;a:4:{s:13:\"nama_penyakit\";s:9:\"Cacar Air\";s:13:\"kode_penyakit\";s:4:\"P002\";s:6:\"gejala\";a:4:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:2;a:5:{s:4:\"nama\";s:20:\"Gelembung air muncul\";s:4:\"kode\";s:4:\"G013\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:3;a:5:{s:4:\"nama\";s:22:\"Nyeri dada/sesak napas\";s:4:\"kode\";s:4:\"G026\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.7610316800000001;}i:4;a:4:{s:13:\"nama_penyakit\";s:17:\"Dermatitis Atopik\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.42880000000000007;}i:5;a:4:{s:13:\"nama_penyakit\";s:19:\"Dermatitis Seboroik\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:27:\"Kelopak mata terlihat merah\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:78:\"Munculnya bintik-bintik kemerahan terutama pada badan yang sering berkeringaat\";s:4:\"kode\";s:4:\"G025\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.5658880000000001;}}', 'a:2:{i:0;d:0.9118828599181312;i:1;s:12:\"Eksim (P006)\";}', 'a:28:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:2;a:4:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:3;a:4:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:4;a:4:{s:4:\"nama\";s:17:\"Benjolan di kulit\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:5;a:4:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:6;a:4:{s:4:\"nama\";s:37:\"Bercak putih di mulut dan tenggorakan\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:7;a:4:{s:4:\"nama\";s:38:\"Bintik merah muda dan kulit tidak rata\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:8;a:4:{s:4:\"nama\";s:18:\"Bintik putih kecil\";s:4:\"kode\";s:4:\"G008\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:9;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:10;a:4:{s:4:\"nama\";s:15:\"Gatal dan perih\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:11;a:4:{s:4:\"nama\";s:28:\"Gatal di daerah yang terkena\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:12;a:4:{s:4:\"nama\";s:14:\"Gatal di leher\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:13;a:4:{s:4:\"nama\";s:20:\"Gelembung air muncul\";s:4:\"kode\";s:4:\"G013\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:14;a:4:{s:4:\"nama\";s:27:\"Kelopak mata terlihat merah\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:15;a:4:{s:4:\"nama\";s:25:\"Kemerahan di selangkangan\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:16;a:4:{s:4:\"nama\";s:64:\"Kemerahan, luka, bengkak pada paha, selangkangan dan organ vital\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:18;a:4:{s:4:\"nama\";s:6:\"Koreng\";s:4:\"kode\";s:4:\"G018\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:20;a:4:{s:4:\"nama\";s:11:\"Kulit kasar\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:21;a:4:{s:4:\"nama\";s:12:\"Kulit kering\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:22;a:4:{s:4:\"nama\";s:26:\"Kulit pecah-pecah/bersisik\";s:4:\"kode\";s:4:\"G022\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:23;a:4:{s:4:\"nama\";s:18:\"Kulit tampak merah\";s:4:\"kode\";s:4:\"G023\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:24;a:4:{s:4:\"nama\";s:29:\"Mata sensitif terhadap cahaya\";s:4:\"kode\";s:4:\"G024\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:25;a:4:{s:4:\"nama\";s:78:\"Munculnya bintik-bintik kemerahan terutama pada badan yang sering berkeringaat\";s:4:\"kode\";s:4:\"G025\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:26;a:4:{s:4:\"nama\";s:22:\"Nyeri dada/sesak napas\";s:4:\"kode\";s:4:\"G026\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:27;a:4:{s:4:\"nama\";s:28:\"Pembengkakan di area terkena\";s:4:\"kode\";s:4:\"G027\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:28;a:4:{s:4:\"nama\";s:16:\"Peradangan kulit\";s:4:\"kode\";s:4:\"G028\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:29;a:4:{s:4:\"nama\";s:22:\"Peradangan tenggorokan\";s:4:\"kode\";s:4:\"G029\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:30;a:4:{s:4:\"nama\";s:40:\"Ruam bewarna coklat kemerahan pada kulit\";s:4:\"kode\";s:4:\"G030\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Siru linali-1704860924.pdf', 5, '2024-01-10 04:28:43', '2024-01-10 04:28:57'),
(11, 'Siru linali', 'a:1:{i:9;a:4:{s:13:\"nama_penyakit\";s:10:\"Ruam popok\";s:13:\"kode_penyakit\";s:4:\"P009\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:15:\"Gatal dan perih\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.42880000000000007;}}', 'a:2:{i:0;d:0.42880000000000007;i:1;s:17:\"Ruam popok (P009)\";}', 'a:3:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:2;a:4:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:10;a:4:{s:4:\"nama\";s:15:\"Gatal dan perih\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Siru linali-1704861841.pdf', 5, '2024-01-10 04:44:01', '2024-01-10 04:44:04'),
(12, 'Siru linali', 'a:2:{i:3;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.4224;}i:7;a:4:{s:13:\"nama_penyakit\";s:9:\"Impertigo\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:-0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:-0.24;}i:2;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:-0.12936170212765957;}}', 'a:2:{i:0;d:0.4224;i:1;s:13:\"Campak (P003)\";}', 'a:6:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:2;a:4:{s:4:\"nama\";s:10:\"Bayi rewel\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:3;a:4:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:4;a:4:{s:4:\"nama\";s:17:\"Benjolan di kulit\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:5;a:4:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.4\";s:9:\"keyakinan\";s:13:\"Mungkin tidak\";}i:9;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Siru linali-1704893986.pdf', 5, '2024-01-10 13:39:45', '2024-01-10 13:39:59'),
(13, 'Siru linali', 'a:1:{i:7;a:4:{s:13:\"nama_penyakit\";s:9:\"Impertigo\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}i:1;a:5:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.6048;}}', 'a:2:{i:0;d:0.6048;i:1;s:16:\"Impertigo (P007)\";}', 'a:3:{i:1;a:4:{s:4:\"nama\";s:11:\"Batuk Pilek\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:3;a:4:{s:4:\"nama\";s:21:\"Benjolan berisi nanah\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:5;a:4:{s:4:\"nama\";s:12:\"Bercak merah\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Siru linali-1704894448.pdf', 5, '2024-01-10 13:47:28', '2024-01-10 13:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-12-18 07:12:08', '2023-12-18 07:12:08'),
(2, 'Pengguna', 'web', '2023-12-18 07:12:10', '2023-12-18 07:12:10');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ana', 'admin', '$2y$10$Q/w4iX675yUzjGTL77Y2he.Bc.wwCCShq5gilD8zigszgILCp4gge', 'avatars/user-1/avatar hijab.png', NULL, '2023-12-18 07:12:07', '2024-01-02 14:59:19'),
(2, 'Johni', 'johni', '$2y$10$hZOCgHHQfoiNXCLLVtv1auxRKOefrtwkJaBHrVBohMfSeyoY3bJeG', NULL, NULL, '2023-12-18 07:12:09', '2023-12-18 07:12:09'),
(3, 'Cann', 'user', '$2y$10$bRuEtQcNnGbC3gPGQgegTuTC5N4i1ZBhkBNkudhWSgcj5ThKLEmLq', NULL, NULL, '2023-12-19 07:44:22', '2023-12-19 07:44:22'),
(4, 'Ana Arliani Anugrah Putri', 'Ana', '$2y$10$9.hk4aYgpizg.28Fiu43Vuq6U7g3FPYMakgKjDT5GdYdGXrIVgC2u', 'avatars/user-4/avatar hijab.png', NULL, '2024-01-02 15:28:05', '2024-01-02 15:32:31'),
(5, 'Siru linali', 'Siru', '$2y$10$wifsR/3ul5iIn08qq3MAQ.jW2Fps0dVmiHB43mn8NA.PcJSQBSXY6', NULL, NULL, '2024-01-03 01:21:59', '2024-01-03 01:21:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `riwayats`
--
ALTER TABLE `riwayats`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `riwayats`
--
ALTER TABLE `riwayats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

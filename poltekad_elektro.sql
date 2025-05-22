-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2025 at 08:17 AM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poltekad_elektro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Komponen pasif', 'komponen-aktif', 'Y0MeS49HD4AGM2jeQ4cRclgv9iuxGqFD9YJmPX9F.jpg', '2024-08-29 03:36:29', '2024-10-01 20:40:32'),
(2, 'LABORATURIUM ANALOG', 'laboraturium-analog', '5dv0bWw35Aoiw8YGtZHS5kEi7q6GS9zdgWF3Qhbv.jpg', '2024-10-01 19:48:07', '2024-10-01 20:41:12'),
(3, 'LABORATURIUM DIGITAL', 'laboraturium-digital', 'moMQOwe03kobp7evWUH3juvL2ArK5KBozHeTVpE5.jpg', '2024-10-01 19:50:35', '2024-10-01 20:41:32'),
(4, 'LABORATORIUM INSTRUMENTASI DAN BENGKEL ELKA', 'laboratorium-istrumentasi-dan-elka', 'GBO23tODTIYytPUiZsX7seB64vE2xnoqLczQdyc7.jpg', '2024-10-01 19:56:55', '2024-10-01 20:42:21'),
(5, 'KOMPONEN AKTIF', 'komponen-aktif', '5DaCwJbcCEH4UKVQ2x73esgnoqsB9h2SUnU6J79Q.jpg', '2024-10-01 20:16:01', '2024-10-01 20:40:47');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_19_021700_create_categories_table', 1),
(7, '2022_05_20_152415_create_suppliers_table', 1),
(8, '2022_05_21_115535_create_products_table', 1),
(9, '2022_06_02_023929_create_carts_table', 1),
(10, '2022_06_02_083045_create_transactions_table', 1),
(11, '2022_06_02_083409_create_transaction_details_table', 1),
(12, '2022_06_05_130429_create_vehicles_table', 1),
(13, '2022_06_06_032916_create_rents_table', 1),
(14, '2022_06_08_010711_create_permission_tables', 1),
(15, '2022_06_08_025026_create_orders_table', 1);

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
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 34);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Menunggu Konfirmasi',
  `image` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `quantity`, `status`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(1, 5, 'trainer solar panel tracking', -1, 'Komponen Telah Tersedia', 'NzZ9S7vkZKnLjsh1Dz8w45u9GUJ3L1WFkgymGZBs.jpg', 'Buah1', '2024-10-06 15:41:12', '2024-10-06 15:47:20'),
(2, 34, 'komponen', 3, 'Permintaan Diterima', 'y4BRxKQcIGBBGjxZFmixep3PIDO6fshQ24O9dUlG.png', 'Pcs', '2024-10-19 09:25:00', '2024-10-19 17:30:43'),
(3, 3, 'Remote', 1, 'Komponen Telah Tersedia', 'W0aYgCpT1TyYSpG2dVlzpl3A91O5IEfih0zy0bpw.jpg', 'Buah', '2024-10-19 17:39:05', '2024-10-19 17:41:17'),
(4, 3, 'Barcode', 2, 'Permintaan Diterima', 'qcE1a6DvsfIohLipSslOOKExuzIMPDzj9OtENgvQ.png', 'Pcs', '2024-10-19 21:19:46', '2024-10-28 20:00:16');

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
(1, 'index-dashboard', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(2, 'index-product', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(3, 'create-product', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(4, 'delete-product', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(5, 'update-product', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(6, 'index-category', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(7, 'create-category', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(8, 'delete-category', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(9, 'update-category', 'web', '2024-08-28 07:29:59', '2024-08-28 07:29:59'),
(10, 'index-supplier', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(11, 'create-supplier', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(12, 'delete-supplier', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(13, 'update-supplier', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(14, 'index-vehicle', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(15, 'create-vehicle', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(16, 'delete-vehicle', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(17, 'update-vehicle', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(18, 'index-stock', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(19, 'create-stock', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(20, 'index-permission', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(21, 'create-permission', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(22, 'delete-permission', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(23, 'update-permission', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(24, 'index-role', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(25, 'create-role', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(26, 'delete-role', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(27, 'update-role', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(28, 'index-user', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(29, 'create-user', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(30, 'delete-user', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(31, 'update-user', 'web', '2024-08-28 07:30:00', '2024-08-28 07:30:00'),
(32, 'index-order', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(33, 'create-order', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(34, 'index-rent', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(35, 'create-rent', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(36, 'index-transaction', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(37, 'create-transaction', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `name`, `slug`, `description`, `quantity`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Resistor', 'resistor', 'Resistor disebut juga tahanan atau hambatan berfungsi untuk menghambat dan mengatur arus listrik', 49, 'zIM2u1szY7q7HTM5cPNr3fvi2lScJLKpXGSRKJ6e.jpg', 'Buah', '2024-08-29 03:40:12', '2024-11-19 18:57:42'),
(3, 1, 1, 'KAPASITOR', 'swicth-unit-180-a', 'KAPASITOR  atau kondensator adalah komponen elektronika pasif yang dapat menyimpan muatan listrik dalam sementara waktu', 34, '4XYfriU4ebiJyc1sOEUoUoYaiGNJHxllaIuspoit.jpg', 'Buah', '2024-10-01 18:38:49', '2024-10-06 04:42:21'),
(4, 2, 1, 'MULTIMETER ANALOG', 'multimeter-analaog', 'SEBAGAI ALAT UKUR DENGAN MENGGUNAKAN ANALOG', 6, 'PGe2L1iRjJjMOKpKPOXMKNptJj3jmG4HcuRq6W8Y.jpg', 'Buah', '2024-10-01 19:53:06', '2024-10-06 04:42:30'),
(5, 3, 1, 'MULTIMETER DIGITAL', 'multimeter-digital', 'MULTIMETER DIGITAL SEBAGAI ALAT UKUR DIGITAL', 10, 'iw4iUOTHLFaUPZijILCbZLiD6nWHdYjLhzU3jtT4.jpg', 'Buah', '2024-10-01 21:16:20', '2024-10-06 04:42:50'),
(6, 5, 1, 'IC', 'ic', 'Integrated Circuit (IC) adalah komponen elektronika aktif yang terdiri dari gabungan banyak sekali transistor, resistor, dan komponen lain yang terintegrasi menjadi suatu rangkaian elektronika dalam kemasan kecil.', 25, 'Ri5m8FtZgA0HXyEnRITMBMCDM6EfQ3AXHjiiAanZ.jpg', 'Buah', '2024-10-01 21:18:42', '2024-10-06 04:43:02'),
(7, 5, 1, 'DIODE', 'diode', 'Dioda adalah komponen elektronika aktif yang berfungsi untuk mengalirkan arus listrik ke satu arah dan menghambat arus dari arah sebaliknya. Dioda terdiri dari dua elektroda, yakni anoda dan katoda.', 25, 'HKh3tNjNKuaC0mBeCqe2nZG8Xvi8JwnfaP1HjzIt.jpg', 'Buah', '2024-10-01 21:21:31', '2024-10-06 04:43:11'),
(8, 3, 1, 'RANGKAIAN MIKROPROSESOR', 'rangkaian-mikroprosesor', 'Rangkaian mikroprosesor adalah komponen penting dalam sistem elektronik yang mengendalikan berbagai fungsi dan proses. Mikroprosesor adalah unit pemrosesan pusat (CPU) yang menjalankan instruksi dari program', 1, 'SHNxfVKI4nUUErltHtVyR7ZQiPbEQFSFZ0Dh2YZO.jpg', 'Buah', '2024-10-01 23:18:55', '2024-10-06 04:43:21'),
(9, 2, 1, 'SHAERING SWITCING', 'shaering-switcing', 'Sharing switching adalah konsep dalam jaringan komputer yang merujuk pada teknik pengalihan data antara perangkat dalam jaringan dengan cara berbagi sumber daya', 1, '1wlpT84Kyj0wPPce1u3sokThIg9SWKGKARlhhYQV.jpg', 'Buah', '2024-10-01 23:23:49', '2024-10-06 04:43:32'),
(10, 4, 1, 'TACHO METER', 'tacho-meter', 'Tachometer (atau tachometer) adalah alat yang digunakan untuk mengukur kecepatan rotasi suatu objek, biasanya dalam bentuk putaran per menit (RPM)', 1, 'lWvsFQKOR5mzm1USMvFZrgqnXS8hmtQjIPQxFaEz.jpg', 'Buah', '2024-10-01 23:25:22', '2024-10-06 15:18:04'),
(11, 2, 1, 'TRANSFORMATOR UNIT IET 484', 'transformator-unit-iet-484', 'Transformator Unit IET 484 adalah transformator yang dirancang untuk digunakan dalam aplikasi industri, khususnya dalam sistem kelistrikan', 8, 'VVhzYZANaH0bVGoRHOpOn1YC5gp4yUmXQZie2Ax9.jpg', 'Buah', '2024-10-01 23:28:53', '2024-10-06 04:43:55'),
(12, 3, 1, 'GERDANG LOGIKA', 'gerdang-logika', 'Gerbang logika adalah komponen dasar dalam rangkaian digital yang melakukan operasi logika pada satu atau lebih sinyal input untuk menghasilkan satu sinyal output', 4, 'MS1zHWxZtt0JnsmyZJxKgBCiYzbD3EwE9fyQgcPZ.jpg', 'Buah', '2024-10-01 23:30:11', '2024-10-06 04:44:08'),
(13, 3, 1, 'Trainer Praktik Rangkaian Digital', 'trainer-praktik-rangkaian-digital', 'Trainer Praktik Rangkaian Digital adalah alat pendidikan yang dirancang untuk membantu siswa atau penggemar elektronik memahami konsep dan teknik dalam rangkaian digital.', 4, 'mGtIVbFmXcAyyLNnftqwcdtoky2kqLsblCRj7nXV.jpg', 'Buah', '2024-10-01 23:31:59', '2024-10-06 04:44:24'),
(14, 2, 1, 'Potensiometer', 'potensiometer', 'Potensiometer adalah komponen elektronik yang digunakan untuk mengatur hambatan dalam rangkaian, sehingga dapat mengubah arus atau tegangan.', 50, 'ZeJx7qjSZ7rtZ8HfEPoMNQjrNfYgMgOodu5vHcQh.jpg', 'Buah', '2024-10-01 23:34:21', '2024-10-06 04:44:38'),
(15, 1, 1, 'KAPASITOR DAN INDUKTOR', 'kapasitor-dan-induktor', 'Kapasitor dan induktor adalah dua komponen dasar dalam rangkaian listrik yang berfungsi menyimpan energi, tetapi mereka melakukannya dengan cara yang berbeda', 6, 'kbFGYHy4aSY7knFiMjd8utmugloqfDTnO9JNtdhg.jpg', 'Buah', '2024-10-02 17:46:40', '2024-10-06 04:55:45'),
(16, 4, 1, 'MACHINE ELECTRIC IME 180A', 'machine-electric-ime-180a', 'Mesin elektrik adalah perangkat yang mengubah energi listrik menjadi energi mekanik (atau sebaliknya) melalui interaksi antara medan magnet dan arus listrik', 1, 'N1fkYwOjh2i677RbjWmyaHzzPjKvcCyKOWqahz7v.jpg', 'Buah', '2024-10-02 17:57:11', '2024-10-06 04:53:01'),
(17, 4, 1, 'TRAINER MAKATRONIKA', 'trainer-makatronika', 'ilmu yang menggabungkan mekanika, elektronika, dan ilmu komputer.', 6, 'iWgeOt8IsnxlSlk1YK5ia2619wicpNiWhaJxm0Jn.jpg', 'Buah', '2024-10-02 18:13:50', '2024-10-06 04:45:21'),
(18, 4, 1, 'PANEL SURYA', 'panel-surya', 'Panel surya, atau panel fotovoltaik, adalah perangkat yang mengubah energi matahari menjadi energi listrik.', 5, 'H35qw8F3bKGnDohPN04UWgt4178Y8ycROxMBOUZ8.jpg', 'Buah', '2024-10-02 18:16:20', '2024-10-06 04:45:35'),
(19, 2, 1, 'BIPOLAR TRANSISTOR', 'bipolar-transistor', 'bipolar transistor adalah dua komponen transistor yang ada dalam rangkaian listrik', 5, 'VHV10fFk260crVTmrHpRXWXcjxASpjHLeBU3pj5i.jpg', 'Buah', '2024-10-02 19:33:29', '2024-10-06 04:45:49'),
(20, 2, 1, 'RC OCILATOR', 'rc-ocilator', 'RC oscillator adalah jenis osilator yang menggunakan resistor (R) dan kapasitor (C) untuk menghasilkan sinyal gelombang sinusoidal atau persegi.', 8, 'vCyfRPowVLHyKnn5sOPb7GnepqHbQBCtRadntgAz.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 05:03:00'),
(21, 3, 1, 'OCILOSSCOPE', 'ocilosscope', 'Osiloskop adalah alat pengukur yang digunakan untuk memvisualisasikan bentuk gelombang sinyal listrik.', 3, '7oCm6DOqDJFKjTWb7tGLdQhDIQMc2A4j6hATcZmr.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 05:03:00'),
(22, 3, 1, 'SINE SQUARE OSILOLATOR', 'sine-square-osilolator', 'Sine square oscillator adalah jenis osilator yang dapat menghasilkan dua bentuk gelombang: gelombang sinusoidal dan gelombang persegi (square wave). Umumnya, ini dilakukan dengan menggunakan kombinasi rangkaian osilator yang pertama menghasilkan gelombang sinusoidal, lalu diubah menjadi gelombang persegi', 5, 'FdwStrIJR6X3CoJoMQwpsm1yxSTt5splFr0DgZk5.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:58:59'),
(23, 2, 1, 'WELLER', 'weller', 'WELLER adalah tempat menaruh solder', 10, 'x7j3fBAeIUUNPp3EVoNFkNY8WuzyMtzEmhbLbDr0.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 15:18:04'),
(24, 4, 1, 'PRINTER PCB', 'printer-pcb', 'PRINTER PCB adalah mencetak komponen PCB', 2, 'WbG7R3Ksf5qkvituOx2Gy98sPnWQnq2glFOOJjh5.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 05:03:00'),
(25, 2, 1, 'KRISBOW', 'krisbow', 'KRISBOW adalah komponen rangkaian listrik', 5, 'sQJSEgNS5aB4vGrn1CK9vIAqmjrt6E11CVCnLVeN.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:47:10'),
(26, 2, 1, 'ANALOG ESP 720', 'analog-esp-720', 'ANALOG ESP 720 adalah trainer yang ada pada komponen komponen RL', 10, 'yzl9nEKRH9gHSEDFMLzZhO1fbvLdmB6LSEuL0Wkq.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:47:23'),
(27, 3, 1, 'LOGIC CONTRUKTOR LC 348', 'logic-contruktor-lc-348', 'LOGIC CONTRUKTOR LC 348 adalah trainer dari komponen RLC', 10, 'ywJCk3k5HEE8TmtS4L52oetSVWf7mhkNc6bbgGHU.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:47:38'),
(28, 3, 1, 'ITT MX 579 AVOMETER DIGITAL', 'itt-mx-579-avometer-digital', 'ITT MX 579 AVOMETER DIGITAL adalah alat ukur Digital', 10, 'i7R0qhJI32qjGnQ1jiE1iF7jHJfNh5TXQ1byrk3O.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:47:51'),
(29, 2, 1, 'FEEDBACK AC PS', 'feedback-ac-ps', 'FEEDBACK AC PS adalah sumber tegangan AC', 10, 'nvKfPHX9sGr5mRa1Ry6pbnxLMZDZUU4tf48YLN5q.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:48:05'),
(30, 3, 1, 'PS DC AX 321', 'ps-dc-ax-321', 'PS DC AX 321 adalah sumber tegangan dengan DC', 5, 'g4yz0VrIYfHyEKftVNpgNqPC7wMQLJscOdJS0c4J.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:48:18'),
(31, 2, 1, 'DIGITAL MULTIMETER', 'digital-multimeter', 'DIGITAL MULTIMETER adalah Alat ukur dib=gital', 10, 'MqNTkauULWkbblEVfADna3a09JIpRtydOKtzSvo4.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:48:48'),
(32, 2, 1, 'FEEDBACK PS 441', 'feedback-ps-441', 'FEEDBACK PS 441 adalah power suplay AC', 10, 'SfBOjHck7DY6UONHDcD9Wf4rWBFkB4eQTn8xJFZo.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:49:01'),
(33, 2, 1, 'FEEDBACK BEE 422C', 'feedback-bee-422c', 'FEEDBACK BEE 422C adalah trainer komponen rlc dengan sumber DC', 10, 'BlG5g1lUZpjvO2lUhZTTiCSZ3WM13EW9PJ5kdelX.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:49:14'),
(34, 3, 1, 'PS KOMPUTER', 'ps-komputer', 'PS KOMPUTER adalah power suplay pada komputer PC', 5, 'cIrPhv6BJp1waXZwdNFL6LVJUOHmBkRnl6uLCbXw.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:49:27'),
(35, 3, 1, 'OCILOSCOPE AT 7328 20 MHZ', 'ociloscope-at-7328-20-mhz', 'Osiloskop AT 7328 adalah salah satu model osiloskop analog yang dirancang untuk aplikasi pengukuran sinyal listrik.', 4, 'MoxebX3jsbAGofCgEqSToVMArpXuqZbR4s1HiFoa.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:49:41'),
(36, 2, 1, 'FARNEL OSCILATOR', 'farnel-oscilator', 'Farnell oscillator adalah jenis osilator yang dirancang untuk menghasilkan sinyal gelombang sinusoidal atau gelombang persegi dengan stabilitas yang baik. Istilah ini mungkin merujuk pada variasi dari osilator yang menggunakan komponen aktif seperti transistor, op-amp, atau rangkaian lainnya yang dioptimalkan untuk kinerja tertentu.', 4, '39AyudNennSGjICHhvPDA4fldDXXQvvr3aw5OKFQ.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:49:56'),
(37, 2, 1, 'TRAINER CAASITOR DAN INDUKTOR', 'trainer-caasitor-dan-induktor', 'rainer kapasitor dan induktor adalah perangkat pendidikan yang digunakan untuk mengajarkan konsep dasar tentang kapasitor, induktor, dan interaksi antara keduanya dalam rangkaian listrik.', 10, 'PqvsJCGv333k0eYH5Zj3xpb0neqjgDoVU5TctnyB.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:50:07'),
(38, 2, 1, 'AVO METER DC DAN AC', 'avo-meter-dc-dan-ac', 'AVO meter adalah alat pengukur yang digunakan untuk mengukur arus (A), voltase (V), dan resistansi (O) dalam rangkaian listrik. Istilah \"AVO\" berasal dari singkatan \"Ampere, Volt, Ohm.\"', 10, 'TQrLGODQiVxKdSmzm42GfGdoiKJ5E6snUSf1IPrK.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:50:20'),
(39, 4, 1, 'TRAINER IET 460', 'trainer-iet-460', 'Trainer IET 460 adalah alat pendidikan yang dirancang untuk mengajarkan konsep dasar dalam bidang elektronika dan teknik listrik.', 15, '9KyyOza864ZJVneWJbOF1ty2xZGBcQZVcvTdeWdz.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:50:34'),
(40, 4, 1, 'PENGATUR TEGANGAN AC', 'pengatur-tegangan-ac', 'Pengatur tegangan AC, juga dikenal sebagai Voltage Regulator AC, adalah perangkat yang digunakan untuk menjaga agar tegangan output tetap stabil meskipun terjadi fluktuasi pada tegangan input atau perubahan beban. Ini sangat penting dalam aplikasi di mana peralatan membutuhkan tegangan yang konsisten untuk beroperasi dengan baik', 5, 'UksKvBOSr6iVit2WsJBjqD4YNrXdA2X2R0zEFYxu.jpg', 'Buah', '2024-10-06 04:18:38', '2024-10-06 04:50:47'),
(41, 4, 1, 'trainer solar panel tracking', 'trainer-solar-panel-tracking', 'trainer solar panel tracking adalah alat atau sistem yang dirancang untuk mengajarkan dan menunjukkan cara kerja sistem pelacakan panel surya', 1, '8HBJW9tkf1da1f1cYmLpjD4u8EvtWigTI4iT8onF.jpg', 'Buah', '2024-10-06 15:47:20', '2024-10-06 15:47:20'),
(42, 2, 1, 'Remote', 'remote', 'Remote adalah alat kontrol tv', 0, 'm6nGhapZhePbE5UcwwJtysrH4xiuXKDEfh05eew5.jpg', 'Buah', '2024-10-19 17:41:17', '2024-11-19 18:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `requirement` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Kendaraan Sedang Digunakan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Super Admin', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(2, 'Customer', 'web', '2024-08-28 07:30:01', '2024-08-28 07:30:01');

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
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `telp`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Hadi Sopir', '0854532164163', 'Malang', '2024-08-29 03:39:56', '2024-08-29 03:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 2, 'INV-8C87XH9I', '2024-10-06 04:20:21', '2024-10-06 04:20:50'),
(2, 2, 'INV-7MHHDHC7', '2024-10-06 04:22:06', '2024-10-06 04:22:42'),
(3, 2, 'INV-0757P5V3', '2024-10-06 04:51:30', '2024-10-06 04:53:01'),
(4, 2, 'INV-Y3NOS2Q0', '2024-10-06 04:55:03', '2024-10-06 04:55:45'),
(5, 3, 'INV-E4CB4T17', '2024-10-06 04:57:56', '2024-10-06 04:58:59'),
(6, 5, 'INV-357Q09HK', '2024-10-06 05:02:11', '2024-10-06 05:03:00'),
(7, 5, 'INV-WFIFRGT3', '2024-10-06 15:15:04', '2024-10-06 15:18:04'),
(8, 2, 'INV-1VDCA6UR', '2024-11-19 18:57:42', '2024-11-19 18:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2024-10-06 04:20:21', '2024-10-06 04:20:21'),
(2, 2, 2, 10, '2024-10-06 04:22:06', '2024-10-06 04:22:06'),
(3, 3, 16, 1, '2024-10-06 04:51:30', '2024-10-06 04:51:30'),
(4, 4, 15, 2, '2024-10-06 04:55:03', '2024-10-06 04:55:03'),
(5, 4, 20, 2, '2024-10-06 04:55:03', '2024-10-06 04:55:03'),
(6, 5, 20, 3, '2024-10-06 04:57:56', '2024-10-06 04:57:56'),
(7, 5, 21, 2, '2024-10-06 04:57:56', '2024-10-06 04:57:56'),
(8, 5, 22, 2, '2024-10-06 04:57:56', '2024-10-06 04:57:56'),
(9, 5, 23, 2, '2024-10-06 04:57:56', '2024-10-06 04:57:56'),
(10, 6, 24, 1, '2024-10-06 05:02:11', '2024-10-06 05:02:11'),
(11, 6, 20, 2, '2024-10-06 05:02:11', '2024-10-06 05:02:11'),
(12, 6, 21, 2, '2024-10-06 05:02:11', '2024-10-06 05:02:11'),
(13, 7, 23, 2, '2024-10-06 15:15:04', '2024-10-06 15:15:04'),
(14, 7, 10, 1, '2024-10-06 15:15:04', '2024-10-06 15:15:04'),
(15, 8, 2, 1, '2024-11-19 18:57:42', '2024-11-19 18:57:42'),
(16, 8, 42, 1, '2024-11-19 18:57:42', '2024-11-19 18:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `avatar`, `department`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$YO2TnqphMwZDri2Ymf9kweIE.XFyPg7HFUquHlDVrs7LHhSrnf/rS', NULL, NULL, NULL, NULL, 'Umum', NULL, '2024-08-28 07:30:01', '2024-08-28 07:30:01'),
(2, 'Aguk', 'aguk@gmail.com', NULL, '$2y$10$Zz7ikIzN4d3W/bPj.UX/T.oXiJSO7uc2.3uU6E8/Pw4gB4Q8Pog56', NULL, NULL, NULL, NULL, 'Umum', NULL, '2024-08-28 07:30:02', '2024-08-28 07:30:02'),
(3, 'rudy@gmail.com', 'rudy@gmail.com', NULL, '$2y$10$s7KUV7MCLB/yrsw3MzmvW.bwTOs7TPlyXn4uEqyVxohRyJt6W.hOC', NULL, NULL, NULL, NULL, 'Customer', NULL, '2024-08-28 07:30:02', '2024-10-19 17:36:21'),
(4, 'Sofyan dwi jayanto andrajadi', 'mllucfer087@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:08:40', '2024-08-28 21:08:40'),
(5, 'denny h', 'herrygrim199@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:10:44', '2024-10-06 05:00:26'),
(6, 'badrus s', 'badrus.2118@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:12:17', '2024-08-28 21:12:17'),
(7, 'Angga Saputro', 'bprayogo739@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:15:44', '2024-08-28 21:15:44'),
(8, 'Sandy Ekasakti Prasetyo', 'sandyekasaktip896@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:18:34', '2024-08-28 21:18:34'),
(9, 'Dwi Heri Kiswanto', 'heri1326@yahoo.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:20:07', '2024-08-28 21:20:07'),
(10, 'febriyantoro', 'bahtiarwibowo119@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:22:04', '2024-08-28 21:22:04'),
(11, 'Fathul Ulum', 'fathul.s.aprilliojasian@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-28 21:25:05', '2024-08-28 21:25:05'),
(19, 'putra dwi wicaksana', 'Dwi0108putra@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:35:44', '2024-08-29 00:35:44'),
(20, 'Ahmad Saputra Surna Riah', 'arsyilanur240595@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:38:27', '2024-08-29 00:38:27'),
(21, 'Anggit Priaji Susilo Setiawan', 'anggitpss23@gmal.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:40:20', '2024-08-29 00:40:20'),
(22, 'R H Eka Anggara', 'iyananggara512@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:42:43', '2024-08-29 00:42:43'),
(23, 'Djoko Iman Santoso', 'djokoiman304@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:44:40', '2024-08-29 00:44:40'),
(24, 'ito syryo purnomo', 'itosuryo23@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:46:24', '2024-08-29 00:46:24'),
(25, 'DWI WAHYU WICAKSONO', 'esqkennethperez051@gmail.com', NULL, '$2y$10$kwHBYCF3F7OFO2pP2GE3/.aNCoRaDDqQzom4xjdgmDqtMQ8shHF/e', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:49:33', '2024-10-19 09:18:55'),
(26, 'Nizar Rizki S.R', 'nizarrizki1241@gmail.com', NULL, '$2y$10$xTT.cIkBRpJ9SB.9j3iSeOUA6WAjR.Gn6JeZbmlDRJ3JGZ0bLTYhO', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:51:12', '2024-10-19 09:18:01'),
(27, 'PRYA AGUS SETYABUDI', 'pryaagus92@gmail.com', NULL, '$2y$10$mP07yb5g7LqOviNGMGOYWuXYrmf1CwCiAGeWvLo8Vv.P0SaqWXUV2', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 00:56:02', '2024-10-19 09:17:46'),
(30, 'm ridhona perwira hasibuan', 'sertumridhonahasibuan20230815@gmail.com', NULL, '$2y$10$kbV5nGC3ab8G4jf3VXHj1eHpkkF1uO/hwjf5O9qbKlUneCks3S22K', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 01:00:30', '2024-10-19 09:17:38'),
(31, 'pradana bagoes', 'redaonyo@gmail.com', NULL, '$2y$10$3.5XmxuE5fuYAHnHM4vra.nvFIK.AcKJBqIjHlFESFCBVYvzrjtfG', NULL, NULL, NULL, NULL, 'Mahasiswa', NULL, '2024-08-29 01:29:16', '2024-10-19 09:17:31'),
(34, 'Ahmed Al Kaf', 'alkaf@gmail.com', NULL, '$2y$10$0vYRn04KccOzSA5AQ.lm5.VOdqXIW.7v7pC6x.b5zuVFXbvtH4n22', NULL, NULL, NULL, NULL, 'Kepala Jurusan', NULL, '2024-10-19 09:06:13', '2024-10-19 09:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `license_plat` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `condition` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rents_user_id_foreign` (`user_id`),
  ADD KEY `rents_vehicle_id_foreign` (`vehicle_id`);

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
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rents_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

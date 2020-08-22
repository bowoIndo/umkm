-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2019 at 04:41 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dekranasda`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `telpon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_lengkap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `nama_lengkap`, `email`, `tanggal_lahir`, `telpon`, `alamat_lengkap`, `created_at`, `updated_at`, `jenis_kelamin`) VALUES
(1, 'Muhammad Rifqi As Azzain', 'muhammad45rifqi@gmail.com', '2019-10-01', '085280136585', 'ciputat tangsel', '2019-10-21 01:23:39', '2019-10-21 05:51:17', 'L'),
(3, 'Rifqi Muhammad', 'muhammad45rifki@gmail.com', '2019-01-01', '702983470234', 'ciputat', '2019-12-01 07:57:29', '2019-12-01 07:57:41', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `nama_banner`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'sample banner saja', '500.png', '2019-10-21 07:17:51', '2019-10-21 07:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `nama_document`, `file`, `created_at`, `updated_at`) VALUES
(2, 'Report Excel', 'README.md', '2019-10-21 06:05:17', '2019-10-21 06:05:17'),
(4, 'Report Excel 2', 'CODE_OF_CONDUCT.md', '2019-10-21 06:16:00', '2019-10-21 06:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `gerasis`
--

CREATE TABLE `gerasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `telphon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gerasis`
--

INSERT INTO `gerasis` (`id`, `title`, `description`, `image`, `address`, `telphon`, `status`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inboxs`
--

CREATE TABLE `inboxs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inboxs`
--

INSERT INTO `inboxs` (`id`, `name`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ketuas`
--

CREATE TABLE `ketuas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ketuas`
--

INSERT INTO `ketuas` (`id`, `title`, `sub_title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_10_20_040235_create_slideshows_table', 2),
('2019_10_21_070319_create_anggotas_table', 3),
('2019_10_21_072517_create_subscribes_table', 4),
('2019_10_21_072728_create_documents_table', 4),
('2019_10_21_072805_create_banners_table', 4),
('2019_10_21_072845_create_videos_table', 4),
('2019_10_21_072927_create_news_table', 4),
('2019_10_21_073012_create_products_table', 5),
('2019_10_21_075237_rename_anggotas_column', 6),
('2019_12_06_132746_create_abouts_table', 7),
('2019_12_06_135408_create_visimisis_table', 8),
('2019_12_06_135613_create_ketuas_table', 9),
('2019_12_06_141011_create_organisasis_table', 10),
('2019_12_06_145855_create_gerais_table', 11),
('2019_12_06_150916_create_benefits_table', 12),
('2019_12_06_151027_create_inboxs_table', 13),
('2019_12_06_151056_create_structurs_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_berita` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul_berita`, `photo`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'judul beritaya saja', '404.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-10-21 07:52:05', '2019-10-21 08:10:42'),
(3, 'judul beritaya saja', '500.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-10-21 08:11:15', '2019-10-21 08:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `organisasis`
--

CREATE TABLE `organisasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisasis`
--

INSERT INTO `organisasis` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_produk`, `harga`, `photo`, `keterangan`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 'product 1', 100000, 'gif.png', ' ini adalah  keterangan  saja', 1, '2019-10-21 08:44:21', '2019-10-21 08:45:19'),
(2, 'product 2', 100000, 'guy.png', 'keterangan', 3, '2019-10-21 08:46:09', '2019-10-21 08:46:09'),
(3, 'product 3', 100000, 'forum5.png', '  keterangan  ', 1, '2019-10-21 08:46:31', '2019-10-21 08:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `title`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Contoh Slide Show', 'slide1.jpg', 'http://www.google.com', 'N', '2019-10-20 05:02:39', '2019-10-20 23:49:32'),
(7, 'Sample Video', 'slide1.jpg', 'http://www.google.com', 'Y', '2019-10-20 05:12:34', '2019-10-20 05:12:34'),
(8, 'Sample Video saja', 'slide1.jpg', 'http://www.google.com', 'Y', '2019-10-20 05:13:10', '2019-11-29 22:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `structurs`
--

CREATE TABLE `structurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'rifqi@gmail.com', '2019-10-21 03:53:49', '2019-10-21 04:00:28'),
(3, 'mail.ichsan24@gmail.com', '2019-10-21 05:53:09', '2019-10-21 05:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rifqi Muhammad', 'muhammad45rifki@gmail.com', '$2y$10$NXYHfKP3eLww/UyvmQjvPuAHV6A1sXoMFZZAAmPtmEALHDP/AJdxq', 'RFno2rJjT2meYSc52Dz5UXof8DJKMJ0mBVAfnu8FSn9UI1jU9BfQhWrl7S5f', '2019-10-17 03:07:25', '2019-12-07 08:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `judul_video`, `videos`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'video ajar aja lah', 'https://www.youtube.com/embed/iVCGVfDLdhY', 'test keterangan sajalah', '2019-10-21 06:34:36', '2019-10-21 06:48:38'),
(3, 'video ajar aja lah', 'https://www.youtube.com/embed/iVCGVfDLdhY', 'test keterangan sajalah', '2019-10-21 06:34:36', '2019-10-21 06:48:38'),
(4, 'video ajar aja lah', 'https://www.youtube.com/embed/iVCGVfDLdhY', 'test keterangan sajalah', '2019-10-21 06:34:36', '2019-10-21 06:48:38'),
(5, 'video ajar aja lah', 'https://www.youtube.com/embed/5zs4N_LIt28', 'test keterangan sajalah', '2019-10-21 06:34:36', '2019-11-30 01:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gerasis`
--
ALTER TABLE `gerasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxs`
--
ALTER TABLE `inboxs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketuas`
--
ALTER TABLE `ketuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisasis`
--
ALTER TABLE `organisasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structurs`
--
ALTER TABLE `structurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gerasis`
--
ALTER TABLE `gerasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inboxs`
--
ALTER TABLE `inboxs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ketuas`
--
ALTER TABLE `ketuas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organisasis`
--
ALTER TABLE `organisasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `structurs`
--
ALTER TABLE `structurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

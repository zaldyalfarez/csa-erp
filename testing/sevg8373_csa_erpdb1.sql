-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2026 at 11:59 PM
-- Server version: 11.4.10-MariaDB-cll-lve
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sevg8373_csa_erpdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `model_type` varchar(255) DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `module`, `model_type`, `model_id`, `old_values`, `new_values`, `description`, `ip_address`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.149.75', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-08 09:16:58', '2026-05-08 09:16:58'),
(2, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.111.118', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-10 07:40:35', '2026-05-10 07:40:35'),
(3, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '202.138.244.126', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-10 09:43:44', '2026-05-10 09:43:44'),
(4, 1, 'update', 'users', 'App\\Models\\User', 4, NULL, NULL, 'User \'Admin Gudang\' diperbarui', '202.138.244.126', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-10 09:56:27', '2026-05-10 09:56:27'),
(5, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.72.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:10:38', '2026-05-10 21:10:38'),
(6, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Blok B\' diubah', '114.122.72.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:11:50', '2026-05-10 21:11:50'),
(7, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Andir\' diubah', '114.122.72.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:11:56', '2026-05-10 21:11:56'),
(8, 1, 'create', 'users', 'App\\Models\\User', 8, NULL, '{\"role\":\"kepala toko\"}', 'User \'Uncu\' dibuat', '114.122.72.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:12:32', '2026-05-10 21:12:32'),
(9, 8, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.72.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:12:57', '2026-05-10 21:12:57'),
(10, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.74.45', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:16:24', '2026-05-10 21:16:24'),
(11, 1, 'delete', 'users', NULL, NULL, NULL, NULL, 'User \'Uncu\' dihapus', '114.122.74.45', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:16:31', '2026-05-10 21:16:31'),
(12, 1, 'create', 'users', 'App\\Models\\User', 9, NULL, '{\"role\":\"kepala toko\"}', 'User \'Sevenkey - Andir\' dibuat', '114.122.74.45', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:17:53', '2026-05-10 21:17:53'),
(13, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.74.45', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-10 21:19:06', '2026-05-10 21:19:06'),
(14, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-10 22:09:10', '2026-05-10 22:09:10'),
(15, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.84.241', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', '2026-05-10 22:10:25', '2026-05-10 22:10:25'),
(16, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:14:18', '2026-05-11 03:14:18'),
(17, 1, 'delete', 'brands', 'App\\Models\\Brand', 5, NULL, NULL, 'Brand \'Active Fit\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:15:02', '2026-05-11 03:15:02'),
(18, 1, 'delete', 'brands', 'App\\Models\\Brand', 4, NULL, NULL, 'Brand \'Classic Line\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:15:07', '2026-05-11 03:15:07'),
(19, 1, 'delete', 'brands', 'App\\Models\\Brand', 1, NULL, NULL, 'Brand \'Sevenkey Original\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:15:10', '2026-05-11 03:15:10'),
(20, 1, 'delete', 'brands', 'App\\Models\\Brand', 3, NULL, NULL, 'Brand \'Street Core\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:15:13', '2026-05-11 03:15:13'),
(21, 1, 'delete', 'brands', 'App\\Models\\Brand', 2, NULL, NULL, 'Brand \'Urban Wear\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:15:16', '2026-05-11 03:15:16'),
(22, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:34:31', '2026-05-11 03:34:31'),
(23, 6, 'open', 'CashSession', 'App\\Models\\CashSession', 1, NULL, NULL, 'Buka sesi kasir di Blok B', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:34:49', '2026-05-11 03:34:49'),
(24, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:37:38', '2026-05-11 03:37:38'),
(25, 4, 'create', 'brands', 'App\\Models\\Brand', 6, NULL, '{\"name\":\"Sevenkey\",\"code\":\"SVK\",\"description\":null,\"logo\":{},\"is_active\":true}', 'Brand \'Sevenkey\' dibuat', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:24', '2026-05-11 03:38:24'),
(26, 4, 'delete', 'categories', NULL, NULL, NULL, NULL, 'Kategori \'Aksesoris\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:30', '2026-05-11 03:38:30'),
(27, 4, 'delete', 'categories', NULL, NULL, NULL, NULL, 'Kategori \'Atasan\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:34', '2026-05-11 03:38:34'),
(28, 4, 'delete', 'categories', NULL, NULL, NULL, NULL, 'Kategori \'Bawahan\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:37', '2026-05-11 03:38:37'),
(29, 4, 'delete', 'categories', NULL, NULL, NULL, NULL, 'Kategori \'Outer\' dihapus', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:40', '2026-05-11 03:38:40'),
(30, 4, 'create', 'categories', 'App\\Models\\Category', 5, NULL, '{\"name\":\"TShirt\",\"code\":\"001\",\"parent_id\":null,\"sort_order\":\"1\",\"is_active\":true,\"slug\":\"tshirt\"}', 'Kategori \'TShirt\' dibuat', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:38:57', '2026-05-11 03:38:57'),
(31, 4, 'create', 'products', 'App\\Models\\Product', 1, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Boxy Reguler\",\"model_code\":\"S001\",\"description\":null,\"base_price\":\"35000.00\",\"sell_price\":\"45000.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T10:40:11.000000Z\",\"created_at\":\"2026-05-11T10:40:11.000000Z\",\"id\":1}', 'Produk \'Boxy Reguler\' (S001) dibuat', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:40:11', '2026-05-11 03:40:11'),
(32, 4, 'create', 'products', 'App\\Models\\ProductVariant', 1, NULL, '{\"product_id\":1,\"color_id\":\"7\",\"size_id\":\"5\",\"sku\":\"SVK-S001-HIJA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T10:40:27.000000Z\",\"created_at\":\"2026-05-11T10:40:27.000000Z\",\"id\":1}', 'Varian SVK-S001-HIJA-XL ditambahkan ke produk \'Boxy Reguler\'', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:40:27', '2026-05-11 03:40:27'),
(33, 4, 'create', 'products', 'App\\Models\\ProductVariant', 2, NULL, '{\"product_id\":1,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S001-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T10:40:27.000000Z\",\"created_at\":\"2026-05-11T10:40:27.000000Z\",\"id\":2}', 'Varian SVK-S001-HITA-L ditambahkan ke produk \'Boxy Reguler\'', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:40:27', '2026-05-11 03:40:27'),
(34, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 1, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0001\",\"supplier_name\":\"Ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-11T10:41:31.000000Z\",\"created_at\":\"2026-05-11T10:41:31.000000Z\",\"id\":1,\"received_at\":\"2026-05-11T10:41:31.000000Z\",\"received_by\":4,\"items\":[{\"id\":1,\"inbound_id\":\"1\",\"product_variant_id\":\"2\",\"qty\":\"1000\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-11T10:41:31.000000Z\",\"updated_at\":\"2026-05-11T10:41:31.000000Z\",\"variant\":{\"id\":2,\"product_id\":\"1\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S001-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-11T10:40:27.000000Z\",\"updated_at\":\"2026-05-11T10:40:27.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0001 dibuat dan diterima', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:41:31', '2026-05-11 03:41:31'),
(35, 4, 'create', 'StockOpname', 'App\\Models\\StockOpname', 1, NULL, NULL, 'Buat opname OPN-202605-0001', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:41:39', '2026-05-11 03:41:39'),
(36, 4, 'submit', 'StockOpname', 'App\\Models\\StockOpname', 1, NULL, NULL, 'Submit opname OPN-202605-0001', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:41:46', '2026-05-11 03:41:46'),
(37, 4, 'approve', 'StockOpname', 'App\\Models\\StockOpname', 1, NULL, NULL, 'Setujui opname OPN-202605-0001', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:41:50', '2026-05-11 03:41:50'),
(38, 4, 'create', 'shipments', 'App\\Models\\Shipment', 1, NULL, '{\"shipment_no\":\"SHP-202605-0001\",\"warehouse_id\":\"1\",\"store_id\":\"1\",\"status\":\"draft\",\"notes\":null,\"created_by\":4,\"updated_at\":\"2026-05-11T10:42:22.000000Z\",\"created_at\":\"2026-05-11T10:42:22.000000Z\",\"id\":1,\"store\":{\"id\":1,\"name\":\"Blok B\",\"code\":\"TK-01\",\"address\":null,\"city\":\"Jakarta\",\"phone\":null,\"pic_name\":\"Kepala Toko 1\",\"is_active\":true,\"created_at\":\"2026-05-08T16:16:45.000000Z\",\"updated_at\":\"2026-05-11T04:11:50.000000Z\",\"deleted_at\":null}}', 'Pengiriman SHP-202605-0001 dibuat ke toko Blok B', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:42:22', '2026-05-11 03:42:22'),
(39, 4, 'update', 'shipments', 'App\\Models\\Shipment', 1, '{\"status\":\"prepared\"}', '{\"status\":\"prepared\"}', 'Status pengiriman SHP-202605-0001 → Disiapkan', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:42:30', '2026-05-11 03:42:30'),
(40, 4, 'update', 'shipments', 'App\\Models\\Shipment', 1, '{\"status\":\"packed\"}', '{\"status\":\"packed\"}', 'Status pengiriman SHP-202605-0001 → Dikemas', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:42:34', '2026-05-11 03:42:34'),
(41, 4, 'update', 'shipments', 'App\\Models\\Shipment', 1, '{\"status\":\"shipped\"}', '{\"status\":\"shipped\"}', 'Status pengiriman SHP-202605-0001 → Dikirim', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:42:50', '2026-05-11 03:42:50'),
(42, 4, 'update', 'shipments', 'App\\Models\\Shipment', 1, '{\"status\":\"arrived\"}', '{\"status\":\"arrived\"}', 'Status pengiriman SHP-202605-0001 → Tiba', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:42:53', '2026-05-11 03:42:53'),
(43, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:43:19', '2026-05-11 03:43:19'),
(44, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:44:03', '2026-05-11 03:44:03'),
(45, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:44:53', '2026-05-11 03:44:53'),
(46, 6, 'receive', 'shipments', 'App\\Models\\Shipment', 1, NULL, NULL, 'Pengiriman SHP-202605-0001 diterima oleh toko Blok B', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:46:39', '2026-05-11 03:46:39'),
(47, 6, 'create', 'StockOpname', 'App\\Models\\StockOpname', 2, NULL, NULL, 'Buat opname OPN-202605-0002', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:47:00', '2026-05-11 03:47:00'),
(48, 6, 'submit', 'StockOpname', 'App\\Models\\StockOpname', 2, NULL, NULL, 'Submit opname OPN-202605-0002', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:47:12', '2026-05-11 03:47:12'),
(49, 6, 'create', 'Sale', 'App\\Models\\Sale', 1, NULL, NULL, 'Transaksi SAL-202605-0001 Rp 225.000', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 03:48:59', '2026-05-11 03:48:59'),
(50, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.71.2', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-11 04:34:08', '2026-05-11 04:34:08'),
(51, 6, 'create', 'Sale', 'App\\Models\\Sale', 2, NULL, NULL, 'Transaksi SAL-202605-0002 Rp 45.000', '114.122.71.2', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-11 04:34:35', '2026-05-11 04:34:35'),
(52, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '112.215.65.206', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:45:39', '2026-05-11 04:45:39'),
(53, 1, 'create', 'users', 'App\\Models\\User', 10, NULL, '{\"role\":\"kepala toko\"}', 'User \'Holystic\' dibuat', '140.213.6.206', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:48:38', '2026-05-11 04:48:38'),
(54, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.6.206', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:49:10', '2026-05-11 04:49:10'),
(55, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '112.215.45.80', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Safari/605.1.15', '2026-05-11 04:50:34', '2026-05-11 04:50:34'),
(56, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '112.215.152.116', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:52:35', '2026-05-11 04:52:35'),
(57, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Metro\' diubah', '112.215.152.116', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:53:08', '2026-05-11 04:53:08'),
(58, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Blok B\' diubah', '112.215.152.116', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:53:42', '2026-05-11 04:53:42'),
(59, 1, 'create', 'users', 'App\\Models\\User', 11, NULL, '{\"role\":\"kepala toko\"}', 'User \'Heavenkey\' dibuat', '140.213.14.54', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Safari/605.1.15', '2026-05-11 04:54:17', '2026-05-11 04:54:17'),
(60, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '112.215.152.116', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:55:25', '2026-05-11 04:55:25'),
(61, 11, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.6.10', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Safari/605.1.15', '2026-05-11 04:55:59', '2026-05-11 04:55:59'),
(62, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 2, NULL, NULL, 'Buka sesi kasir di Blok B', '140.213.6.205', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 04:59:36', '2026-05-11 04:59:36'),
(63, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:02:20', '2026-05-11 05:02:20'),
(64, 10, 'create', 'StockOpname', 'App\\Models\\StockOpname', 3, NULL, NULL, 'Buat opname OPN-202605-0003', '140.213.6.205', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:03:13', '2026-05-11 05:03:13'),
(65, 10, 'create', 'Sale', 'App\\Models\\Sale', 3, NULL, NULL, 'Transaksi SAL-202605-0003 Rp 135.000', '112.215.45.85', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:05:54', '2026-05-11 05:05:54'),
(66, 11, 'open', 'CashSession', 'App\\Models\\CashSession', 3, NULL, NULL, 'Buka sesi kasir di Metro', '112.215.45.9', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Safari/605.1.15', '2026-05-11 05:06:59', '2026-05-11 05:06:59'),
(67, 10, 'create', 'Sale', 'App\\Models\\Sale', 4, NULL, NULL, 'Transaksi SAL-202605-0004 Rp 225.000', '112.215.45.85', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:07:38', '2026-05-11 05:07:38'),
(68, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.72.89', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 05:08:37', '2026-05-11 05:08:37'),
(69, 4, 'create', 'products', 'App\\Models\\Product', 2, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Scary Diner Reguler\",\"model_code\":\"S002\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:09:19.000000Z\",\"created_at\":\"2026-05-11T12:09:19.000000Z\",\"id\":2}', 'Produk \'Scary Diner Reguler\' (S002) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:09:19', '2026-05-11 05:09:19'),
(70, 4, 'create', 'brands', 'App\\Models\\Brand', 7, NULL, '{\"name\":\"NEXTTIME\",\"code\":\"NT\",\"description\":null,\"is_active\":true}', 'Brand \'NEXTTIME\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:09:59', '2026-05-11 05:09:59'),
(71, 10, 'create', 'CustomerReturn', 'App\\Models\\CustomerReturn', 1, NULL, NULL, 'Buat retur CRT-202605-0001', '112.215.45.85', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:10:18', '2026-05-11 05:10:18'),
(72, 4, 'create', 'brands', 'App\\Models\\Brand', 8, NULL, '{\"name\":\"HEAVENKEY\",\"code\":\"HVK\",\"description\":null,\"is_active\":true}', 'Brand \'HEAVENKEY\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:10:35', '2026-05-11 05:10:35'),
(73, 4, 'create', 'brands', 'App\\Models\\Brand', 9, NULL, '{\"name\":\"Wonderkey\",\"code\":\"WK\",\"description\":null,\"is_active\":true}', 'Brand \'Wonderkey\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:11:06', '2026-05-11 05:11:06'),
(74, 4, 'create', 'brands', 'App\\Models\\Brand', 10, NULL, '{\"name\":\"Holistic\",\"code\":\"HLC\",\"description\":null,\"is_active\":true}', 'Brand \'Holistic\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:11:27', '2026-05-11 05:11:27'),
(75, 4, 'update', 'products', 'App\\Models\\Product', 2, '{\"id\":2,\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Scary Diner Reguler\",\"model_code\":\"S002\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":\"4\",\"created_at\":\"2026-05-11T12:09:19.000000Z\",\"updated_at\":\"2026-05-11T12:09:19.000000Z\",\"deleted_at\":null}', '{\"id\":2,\"brand_id\":\"7\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Scary Diner Reguler\",\"model_code\":\"S002\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":\"4\",\"created_at\":\"2026-05-11T12:09:19.000000Z\",\"updated_at\":\"2026-05-11T12:11:44.000000Z\",\"deleted_at\":null}', 'Produk \'Scary Diner Reguler\' diperbarui', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:11:44', '2026-05-11 05:11:44'),
(76, 4, 'create', 'products', 'App\\Models\\ProductVariant', 3, NULL, '{\"product_id\":2,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"NT-S002-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T12:12:08.000000Z\",\"created_at\":\"2026-05-11T12:12:08.000000Z\",\"id\":3}', 'Varian NT-S002-HITA-L ditambahkan ke produk \'Scary Diner Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:12:08', '2026-05-11 05:12:08'),
(77, 4, 'create', 'products', 'App\\Models\\ProductVariant', 4, NULL, '{\"product_id\":2,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"NT-S002-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T12:12:08.000000Z\",\"created_at\":\"2026-05-11T12:12:08.000000Z\",\"id\":4}', 'Varian NT-S002-HITA-XL ditambahkan ke produk \'Scary Diner Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:12:08', '2026-05-11 05:12:08'),
(78, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 2, NULL, NULL, 'Tutup sesi kasir #2', '112.215.65.170', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:13:41', '2026-05-11 05:13:41'),
(79, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 4, NULL, NULL, 'Buka sesi kasir di Blok B', '140.213.15.122', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:15:50', '2026-05-11 05:15:50'),
(80, 10, 'create', 'Sale', 'App\\Models\\Sale', 5, NULL, NULL, 'Transaksi SAL-202605-0005 Rp 360.000', '112.215.65.170', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:16:53', '2026-05-11 05:16:53'),
(81, 4, 'create', 'products', 'App\\Models\\Product', 3, NULL, '{\"brand_id\":\"7\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Grim Black Reguler\",\"model_code\":\"N001\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:17:24.000000Z\",\"created_at\":\"2026-05-11T12:17:24.000000Z\",\"id\":3}', 'Produk \'Grim Black Reguler\' (N001) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:17:24', '2026-05-11 05:17:24'),
(82, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 4, NULL, NULL, 'Tutup sesi kasir #4', '140.213.15.122', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:18:34', '2026-05-11 05:18:34'),
(83, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 5, NULL, NULL, 'Buka sesi kasir di Blok B', '140.213.15.122', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:18:45', '2026-05-11 05:18:45'),
(84, 10, 'create', 'Sale', 'App\\Models\\Sale', 6, NULL, NULL, 'Transaksi SAL-202605-0006 Rp 135.000', '140.213.15.122', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:19:05', '2026-05-11 05:19:05'),
(85, 4, 'create', 'products', 'App\\Models\\Product', 4, NULL, '{\"brand_id\":\"7\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Shadow Mask Reguler\",\"model_code\":\"N002\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:20:32.000000Z\",\"created_at\":\"2026-05-11T12:20:32.000000Z\",\"id\":4}', 'Produk \'Shadow Mask Reguler\' (N002) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:20:32', '2026-05-11 05:20:32'),
(86, 2, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.241', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 05:22:54', '2026-05-11 05:22:54'),
(87, 4, 'create', 'products', 'App\\Models\\Product', 5, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Percepcjon Reguler\",\"model_code\":\"S003\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:23:22.000000Z\",\"created_at\":\"2026-05-11T12:23:22.000000Z\",\"id\":5}', 'Produk \'Percepcjon Reguler\' (S003) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:23:22', '2026-05-11 05:23:22'),
(88, 4, 'create', 'products', 'App\\Models\\Product', 6, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Sound of Noise Reguler\",\"model_code\":\"S004\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:24:28.000000Z\",\"created_at\":\"2026-05-11T12:24:28.000000Z\",\"id\":6}', 'Produk \'Sound of Noise Reguler\' (S004) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:24:28', '2026-05-11 05:24:28'),
(89, 4, 'create', 'products', 'App\\Models\\Product', 7, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Eraser Head Reguler\",\"model_code\":\"S005\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:25:23.000000Z\",\"created_at\":\"2026-05-11T12:25:23.000000Z\",\"id\":7}', 'Produk \'Eraser Head Reguler\' (S005) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:25:23', '2026-05-11 05:25:23'),
(90, 4, 'create', 'products', 'App\\Models\\Product', 8, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Nox Kills Reguler\",\"model_code\":\"S006\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:26:34.000000Z\",\"created_at\":\"2026-05-11T12:26:34.000000Z\",\"id\":8}', 'Produk \'Nox Kills Reguler\' (S006) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:26:34', '2026-05-11 05:26:34'),
(91, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.72.89', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-11 05:26:35', '2026-05-11 05:26:35'),
(92, 4, 'create', 'products', 'App\\Models\\Product', 9, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Pleasure blue Reguler\",\"model_code\":\"S007\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:27:52.000000Z\",\"created_at\":\"2026-05-11T12:27:52.000000Z\",\"id\":9}', 'Produk \'Pleasure blue Reguler\' (S007) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:27:52', '2026-05-11 05:27:52'),
(93, 4, 'create', 'products', 'App\\Models\\Product', 10, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Fire Zippo Reguler\",\"model_code\":\"S008\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:32:48.000000Z\",\"created_at\":\"2026-05-11T12:32:48.000000Z\",\"id\":10}', 'Produk \'Fire Zippo Reguler\' (S008) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:32:48', '2026-05-11 05:32:48'),
(94, 4, 'create', 'products', 'App\\Models\\Product', 11, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Orange Bubble Reguleer\",\"model_code\":\"S009\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T12:37:41.000000Z\",\"created_at\":\"2026-05-11T12:37:41.000000Z\",\"id\":11}', 'Produk \'Orange Bubble Reguleer\' (S009) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 05:37:41', '2026-05-11 05:37:41'),
(95, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.2.245', NULL, NULL, 'Mozilla/5.0 (Linux; U; Android 8.1.0; id-id; 13C Build/O11019) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.7.1.2-gn', '2026-05-11 05:49:25', '2026-05-11 05:49:25'),
(96, 10, 'create', 'Sale', 'App\\Models\\Sale', 7, NULL, NULL, 'Transaksi SAL-202605-0007 Rp 135.000', '140.213.2.245', NULL, NULL, 'Mozilla/5.0 (Linux; U; Android 8.1.0; id-id; 13C Build/O11019) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.7.1.2-gn', '2026-05-11 05:51:03', '2026-05-11 05:51:03'),
(97, 10, 'create', 'Sale', 'App\\Models\\Sale', 8, NULL, NULL, 'Transaksi SAL-202605-0008 Rp 225.000', '140.213.2.245', NULL, NULL, 'Mozilla/5.0 (Linux; U; Android 8.1.0; id-id; 13C Build/O11019) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.7.1.2-gn', '2026-05-11 05:51:37', '2026-05-11 05:51:37'),
(98, 10, 'create', 'Sale', 'App\\Models\\Sale', 9, NULL, NULL, 'Transaksi SAL-202605-0009 Rp 90.000', '140.213.15.122', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 05:58:32', '2026-05-11 05:58:32'),
(99, 10, 'create', 'CustomerReturn', 'App\\Models\\CustomerReturn', 2, NULL, NULL, 'Buat retur CRT-202605-0002', '112.215.65.170', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 06:02:15', '2026-05-11 06:02:15'),
(100, 4, 'create', 'products', 'App\\Models\\Product', 12, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Orange Pop Reguler\",\"model_code\":\"S010\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T13:09:02.000000Z\",\"created_at\":\"2026-05-11T13:09:02.000000Z\",\"id\":12}', 'Produk \'Orange Pop Reguler\' (S010) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:09:02', '2026-05-11 06:09:02'),
(101, 10, 'create', 'Sale', 'App\\Models\\Sale', 10, NULL, NULL, 'Transaksi SAL-202605-0010 Rp 225.000', '112.215.152.71', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 06:09:39', '2026-05-11 06:09:39'),
(102, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 5, NULL, NULL, 'Tutup sesi kasir #5', '112.215.152.71', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 06:10:23', '2026-05-11 06:10:23'),
(103, 4, 'create', 'products', 'App\\Models\\Product', 13, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Text Ringer Reguler\",\"model_code\":\"S011\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T13:30:20.000000Z\",\"created_at\":\"2026-05-11T13:30:20.000000Z\",\"id\":13}', 'Produk \'Text Ringer Reguler\' (S011) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:30:20', '2026-05-11 06:30:20'),
(104, 4, 'create', 'products', 'App\\Models\\Product', 14, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"80`Tess Ringer Regular\",\"model_code\":\"S012\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T13:34:37.000000Z\",\"created_at\":\"2026-05-11T13:34:37.000000Z\",\"id\":14}', 'Produk \'80`Tess Ringer Regular\' (S012) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:34:37', '2026-05-11 06:34:37'),
(105, 4, 'create', 'products', 'App\\Models\\Product', 15, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"S1 Ringer Regular\",\"model_code\":\"S013\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T13:36:29.000000Z\",\"created_at\":\"2026-05-11T13:36:29.000000Z\",\"id\":15}', 'Produk \'S1 Ringer Regular\' (S013) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:36:29', '2026-05-11 06:36:29'),
(106, 4, 'create', 'products', 'App\\Models\\Product', 16, NULL, '{\"brand_id\":\"6\",\"category_id\":\"5\",\"product_type_id\":\"1\",\"name\":\"Red Sk Ringer Regular\",\"model_code\":\"S014\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T13:37:28.000000Z\",\"created_at\":\"2026-05-11T13:37:28.000000Z\",\"id\":16}', 'Produk \'Red Sk Ringer Regular\' (S014) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:37:28', '2026-05-11 06:37:28'),
(107, 4, 'create', 'products', 'App\\Models\\ProductVariant', 5, NULL, '{\"product_id\":3,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"NT-N001-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:43:55.000000Z\",\"created_at\":\"2026-05-11T13:43:55.000000Z\",\"id\":5}', 'Varian NT-N001-HITA-L ditambahkan ke produk \'Grim Black Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:43:55', '2026-05-11 06:43:55'),
(108, 4, 'create', 'products', 'App\\Models\\ProductVariant', 6, NULL, '{\"product_id\":3,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"NT-N001-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:43:55.000000Z\",\"created_at\":\"2026-05-11T13:43:55.000000Z\",\"id\":6}', 'Varian NT-N001-HITA-XL ditambahkan ke produk \'Grim Black Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:43:55', '2026-05-11 06:43:55'),
(109, 4, 'create', 'products', 'App\\Models\\ProductVariant', 7, NULL, '{\"product_id\":16,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S014-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:44:56.000000Z\",\"created_at\":\"2026-05-11T13:44:56.000000Z\",\"id\":7}', 'Varian SVK-S014-PUTI-XL ditambahkan ke produk \'Red Sk Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:44:56', '2026-05-11 06:44:56'),
(110, 4, 'create', 'products', 'App\\Models\\ProductVariant', 8, NULL, '{\"product_id\":16,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S014-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:44:56.000000Z\",\"created_at\":\"2026-05-11T13:44:56.000000Z\",\"id\":8}', 'Varian SVK-S014-PUTI-L ditambahkan ke produk \'Red Sk Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:44:56', '2026-05-11 06:44:56'),
(111, 4, 'create', 'products', 'App\\Models\\ProductVariant', 9, NULL, '{\"product_id\":14,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S012-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:02.000000Z\",\"created_at\":\"2026-05-11T13:47:02.000000Z\",\"id\":9}', 'Varian SVK-S012-PUTI-L ditambahkan ke produk \'80`Tess Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:02', '2026-05-11 06:47:02'),
(112, 4, 'create', 'products', 'App\\Models\\ProductVariant', 10, NULL, '{\"product_id\":14,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S012-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:02.000000Z\",\"created_at\":\"2026-05-11T13:47:02.000000Z\",\"id\":10}', 'Varian SVK-S012-PUTI-XL ditambahkan ke produk \'80`Tess Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:02', '2026-05-11 06:47:02'),
(113, 4, 'create', 'products', 'App\\Models\\ProductVariant', 11, NULL, '{\"product_id\":15,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S013-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:34.000000Z\",\"created_at\":\"2026-05-11T13:47:34.000000Z\",\"id\":11}', 'Varian SVK-S013-PUTI-L ditambahkan ke produk \'S1 Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:34', '2026-05-11 06:47:34'),
(114, 4, 'create', 'products', 'App\\Models\\ProductVariant', 12, NULL, '{\"product_id\":15,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S013-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:34.000000Z\",\"created_at\":\"2026-05-11T13:47:34.000000Z\",\"id\":12}', 'Varian SVK-S013-PUTI-XL ditambahkan ke produk \'S1 Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:34', '2026-05-11 06:47:34'),
(115, 4, 'create', 'products', 'App\\Models\\ProductVariant', 13, NULL, '{\"product_id\":13,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S011-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:52.000000Z\",\"created_at\":\"2026-05-11T13:47:52.000000Z\",\"id\":13}', 'Varian SVK-S011-PUTI-L ditambahkan ke produk \'Text Ringer Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:52', '2026-05-11 06:47:52'),
(116, 4, 'create', 'products', 'App\\Models\\ProductVariant', 14, NULL, '{\"product_id\":13,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S011-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:47:52.000000Z\",\"created_at\":\"2026-05-11T13:47:52.000000Z\",\"id\":14}', 'Varian SVK-S011-PUTI-XL ditambahkan ke produk \'Text Ringer Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:47:52', '2026-05-11 06:47:52'),
(117, 4, 'create', 'products', 'App\\Models\\ProductVariant', 15, NULL, '{\"product_id\":12,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S010-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:48:12.000000Z\",\"created_at\":\"2026-05-11T13:48:12.000000Z\",\"id\":15}', 'Varian SVK-S010-PUTI-L ditambahkan ke produk \'Orange Pop Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:12', '2026-05-11 06:48:12'),
(118, 4, 'create', 'products', 'App\\Models\\ProductVariant', 16, NULL, '{\"product_id\":12,\"color_id\":\"4\",\"size_id\":\"5\",\"sku\":\"SVK-S010-NAVY-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:48:12.000000Z\",\"created_at\":\"2026-05-11T13:48:12.000000Z\",\"id\":16}', 'Varian SVK-S010-NAVY-XL ditambahkan ke produk \'Orange Pop Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:12', '2026-05-11 06:48:12'),
(119, 4, 'delete', 'products', NULL, NULL, NULL, NULL, 'Varian SVK-S010-NAVY-XL dihapus', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:24', '2026-05-11 06:48:24'),
(120, 4, 'create', 'products', 'App\\Models\\ProductVariant', 17, NULL, '{\"product_id\":12,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S010-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:48:33.000000Z\",\"created_at\":\"2026-05-11T13:48:33.000000Z\",\"id\":17}', 'Varian SVK-S010-PUTI-XL ditambahkan ke produk \'Orange Pop Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:33', '2026-05-11 06:48:33'),
(121, 4, 'create', 'products', 'App\\Models\\ProductVariant', 18, NULL, '{\"product_id\":11,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S009-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:48:59.000000Z\",\"created_at\":\"2026-05-11T13:48:59.000000Z\",\"id\":18}', 'Varian SVK-S009-PUTI-L ditambahkan ke produk \'Orange Bubble Reguleer\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:59', '2026-05-11 06:48:59'),
(122, 4, 'create', 'products', 'App\\Models\\ProductVariant', 19, NULL, '{\"product_id\":11,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S009-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:48:59.000000Z\",\"created_at\":\"2026-05-11T13:48:59.000000Z\",\"id\":19}', 'Varian SVK-S009-PUTI-XL ditambahkan ke produk \'Orange Bubble Reguleer\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:48:59', '2026-05-11 06:48:59'),
(123, 4, 'create', 'products', 'App\\Models\\ProductVariant', 20, NULL, '{\"product_id\":10,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S008-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:49:32.000000Z\",\"created_at\":\"2026-05-11T13:49:32.000000Z\",\"id\":20}', 'Varian SVK-S008-PUTI-L ditambahkan ke produk \'Fire Zippo Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:49:32', '2026-05-11 06:49:32');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `module`, `model_type`, `model_id`, `old_values`, `new_values`, `description`, `ip_address`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(124, 4, 'create', 'products', 'App\\Models\\ProductVariant', 21, NULL, '{\"product_id\":10,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S008-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:49:32.000000Z\",\"created_at\":\"2026-05-11T13:49:32.000000Z\",\"id\":21}', 'Varian SVK-S008-PUTI-XL ditambahkan ke produk \'Fire Zippo Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:49:32', '2026-05-11 06:49:32'),
(125, 4, 'create', 'products', 'App\\Models\\ProductVariant', 22, NULL, '{\"product_id\":9,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S007-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:51:35.000000Z\",\"created_at\":\"2026-05-11T13:51:35.000000Z\",\"id\":22}', 'Varian SVK-S007-PUTI-L ditambahkan ke produk \'Pleasure blue Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:51:35', '2026-05-11 06:51:35'),
(126, 4, 'create', 'products', 'App\\Models\\ProductVariant', 23, NULL, '{\"product_id\":9,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S007-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:51:35.000000Z\",\"created_at\":\"2026-05-11T13:51:35.000000Z\",\"id\":23}', 'Varian SVK-S007-PUTI-XL ditambahkan ke produk \'Pleasure blue Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:51:35', '2026-05-11 06:51:35'),
(127, 4, 'delete', 'products', NULL, NULL, NULL, NULL, 'Varian SVK-S007-PUTI-L dihapus', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:51:49', '2026-05-11 06:51:49'),
(128, 4, 'delete', 'products', NULL, NULL, NULL, NULL, 'Varian SVK-S007-PUTI-XL dihapus', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:51:58', '2026-05-11 06:51:58'),
(129, 4, 'create', 'products', 'App\\Models\\ProductVariant', 24, NULL, '{\"product_id\":9,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S007-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:52:10.000000Z\",\"created_at\":\"2026-05-11T13:52:10.000000Z\",\"id\":24}', 'Varian SVK-S007-HITA-L ditambahkan ke produk \'Pleasure blue Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:52:10', '2026-05-11 06:52:10'),
(130, 4, 'create', 'products', 'App\\Models\\ProductVariant', 25, NULL, '{\"product_id\":9,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"SVK-S007-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:52:10.000000Z\",\"created_at\":\"2026-05-11T13:52:10.000000Z\",\"id\":25}', 'Varian SVK-S007-HITA-XL ditambahkan ke produk \'Pleasure blue Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:52:10', '2026-05-11 06:52:10'),
(131, 4, 'create', 'products', 'App\\Models\\ProductVariant', 26, NULL, '{\"product_id\":8,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S006-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:53:05.000000Z\",\"created_at\":\"2026-05-11T13:53:05.000000Z\",\"id\":26}', 'Varian SVK-S006-HITA-L ditambahkan ke produk \'Nox Kills Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:53:05', '2026-05-11 06:53:05'),
(132, 4, 'create', 'products', 'App\\Models\\ProductVariant', 27, NULL, '{\"product_id\":8,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"SVK-S006-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:53:05.000000Z\",\"created_at\":\"2026-05-11T13:53:05.000000Z\",\"id\":27}', 'Varian SVK-S006-HITA-XL ditambahkan ke produk \'Nox Kills Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:53:05', '2026-05-11 06:53:05'),
(133, 4, 'create', 'products', 'App\\Models\\ProductVariant', 28, NULL, '{\"product_id\":7,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S005-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:53:33.000000Z\",\"created_at\":\"2026-05-11T13:53:33.000000Z\",\"id\":28}', 'Varian SVK-S005-HITA-L ditambahkan ke produk \'Eraser Head Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:53:33', '2026-05-11 06:53:33'),
(134, 4, 'create', 'products', 'App\\Models\\ProductVariant', 29, NULL, '{\"product_id\":7,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"SVK-S005-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:53:33.000000Z\",\"created_at\":\"2026-05-11T13:53:33.000000Z\",\"id\":29}', 'Varian SVK-S005-HITA-XL ditambahkan ke produk \'Eraser Head Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:53:33', '2026-05-11 06:53:33'),
(135, 4, 'create', 'products', 'App\\Models\\ProductVariant', 30, NULL, '{\"product_id\":6,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S004-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:54:03.000000Z\",\"created_at\":\"2026-05-11T13:54:03.000000Z\",\"id\":30}', 'Varian SVK-S004-HITA-L ditambahkan ke produk \'Sound of Noise Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:54:03', '2026-05-11 06:54:03'),
(136, 4, 'create', 'products', 'App\\Models\\ProductVariant', 31, NULL, '{\"product_id\":6,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"SVK-S004-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:54:03.000000Z\",\"created_at\":\"2026-05-11T13:54:03.000000Z\",\"id\":31}', 'Varian SVK-S004-HITA-XL ditambahkan ke produk \'Sound of Noise Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:54:03', '2026-05-11 06:54:03'),
(137, 4, 'create', 'products', 'App\\Models\\ProductVariant', 32, NULL, '{\"product_id\":5,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"SVK-S003-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:54:29.000000Z\",\"created_at\":\"2026-05-11T13:54:29.000000Z\",\"id\":32}', 'Varian SVK-S003-HITA-L ditambahkan ke produk \'Percepcjon Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:54:29', '2026-05-11 06:54:29'),
(138, 4, 'create', 'products', 'App\\Models\\ProductVariant', 33, NULL, '{\"product_id\":5,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"SVK-S003-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:54:29.000000Z\",\"created_at\":\"2026-05-11T13:54:29.000000Z\",\"id\":33}', 'Varian SVK-S003-HITA-XL ditambahkan ke produk \'Percepcjon Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:54:29', '2026-05-11 06:54:29'),
(139, 4, 'create', 'products', 'App\\Models\\ProductVariant', 34, NULL, '{\"product_id\":4,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"NT-N002-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:55:10.000000Z\",\"created_at\":\"2026-05-11T13:55:10.000000Z\",\"id\":34}', 'Varian NT-N002-HITA-L ditambahkan ke produk \'Shadow Mask Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:55:10', '2026-05-11 06:55:10'),
(140, 4, 'create', 'products', 'App\\Models\\ProductVariant', 35, NULL, '{\"product_id\":4,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"NT-N002-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T13:55:10.000000Z\",\"created_at\":\"2026-05-11T13:55:10.000000Z\",\"id\":35}', 'Varian NT-N002-HITA-XL ditambahkan ke produk \'Shadow Mask Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:55:10', '2026-05-11 06:55:10'),
(141, 4, 'create', 'categories', 'App\\Models\\Category', 6, NULL, '{\"name\":\"OVERSIZE\",\"code\":\"002\",\"parent_id\":null,\"sort_order\":\"0\",\"is_active\":true,\"slug\":\"oversize\"}', 'Kategori \'OVERSIZE\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 06:58:22', '2026-05-11 06:58:22'),
(142, 4, 'create', 'categories', 'App\\Models\\Category', 7, NULL, '{\"name\":\"Boxy\",\"code\":\"003\",\"parent_id\":null,\"sort_order\":\"0\",\"is_active\":true,\"slug\":\"boxy\"}', 'Kategori \'Boxy\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:00:34', '2026-05-11 07:00:34'),
(143, 4, 'delete', 'categories', NULL, NULL, NULL, NULL, 'Kategori \'TShirt\' dihapus', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:04:31', '2026-05-11 07:04:31'),
(144, 4, 'create', 'categories', 'App\\Models\\Category', 8, NULL, '{\"name\":\"Regular\",\"code\":\"0001\",\"parent_id\":null,\"sort_order\":\"0\",\"is_active\":true,\"slug\":\"regular\"}', 'Kategori \'Regular\' dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:12:25', '2026-05-11 07:12:25'),
(145, 4, 'create', 'products', 'App\\Models\\Product', 17, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Text Ringer Regular\",\"model_code\":\"S015\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:15:06.000000Z\",\"created_at\":\"2026-05-11T14:15:06.000000Z\",\"id\":17}', 'Produk \'Text Ringer Regular\' (S015) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:15:06', '2026-05-11 07:15:06'),
(146, 4, 'create', 'products', 'App\\Models\\ProductVariant', 36, NULL, '{\"product_id\":17,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S015-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:15:30.000000Z\",\"created_at\":\"2026-05-11T14:15:30.000000Z\",\"id\":36}', 'Varian SVK-S015-PUTI-L ditambahkan ke produk \'Text Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:15:30', '2026-05-11 07:15:30'),
(147, 4, 'create', 'products', 'App\\Models\\ProductVariant', 37, NULL, '{\"product_id\":17,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S015-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:15:30.000000Z\",\"created_at\":\"2026-05-11T14:15:30.000000Z\",\"id\":37}', 'Varian SVK-S015-PUTI-XL ditambahkan ke produk \'Text Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:15:30', '2026-05-11 07:15:30'),
(148, 4, 'create', 'products', 'App\\Models\\Product', 18, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Red Sk Ringer Regular\",\"model_code\":\"S016\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:16:50.000000Z\",\"created_at\":\"2026-05-11T14:16:50.000000Z\",\"id\":18}', 'Produk \'Red Sk Ringer Regular\' (S016) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:16:50', '2026-05-11 07:16:50'),
(149, 4, 'create', 'products', 'App\\Models\\ProductVariant', 38, NULL, '{\"product_id\":18,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S016-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:17:05.000000Z\",\"created_at\":\"2026-05-11T14:17:05.000000Z\",\"id\":38}', 'Varian SVK-S016-PUTI-L ditambahkan ke produk \'Red Sk Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:17:05', '2026-05-11 07:17:05'),
(150, 4, 'create', 'products', 'App\\Models\\ProductVariant', 39, NULL, '{\"product_id\":18,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S016-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:17:05.000000Z\",\"created_at\":\"2026-05-11T14:17:05.000000Z\",\"id\":39}', 'Varian SVK-S016-PUTI-XL ditambahkan ke produk \'Red Sk Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:17:05', '2026-05-11 07:17:05'),
(151, 4, 'create', 'products', 'App\\Models\\Product', 19, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"S1 Ringer Regular\",\"model_code\":\"S017\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:17:50.000000Z\",\"created_at\":\"2026-05-11T14:17:50.000000Z\",\"id\":19}', 'Produk \'S1 Ringer Regular\' (S017) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:17:50', '2026-05-11 07:17:50'),
(152, 4, 'create', 'products', 'App\\Models\\Product', 20, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"80`Tess Ringer Regular\",\"model_code\":\"S018\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:19:24.000000Z\",\"created_at\":\"2026-05-11T14:19:24.000000Z\",\"id\":20}', 'Produk \'80`Tess Ringer Regular\' (S018) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:19:24', '2026-05-11 07:19:24'),
(153, 4, 'create', 'products', 'App\\Models\\ProductVariant', 40, NULL, '{\"product_id\":20,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S018-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:19:42.000000Z\",\"created_at\":\"2026-05-11T14:19:42.000000Z\",\"id\":40}', 'Varian SVK-S018-PUTI-L ditambahkan ke produk \'80`Tess Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:19:42', '2026-05-11 07:19:42'),
(154, 4, 'create', 'products', 'App\\Models\\ProductVariant', 41, NULL, '{\"product_id\":20,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S018-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:19:42.000000Z\",\"created_at\":\"2026-05-11T14:19:42.000000Z\",\"id\":41}', 'Varian SVK-S018-PUTI-XL ditambahkan ke produk \'80`Tess Ringer Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:19:42', '2026-05-11 07:19:42'),
(155, 4, 'create', 'products', 'App\\Models\\Product', 21, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Orange Pop Reguler\",\"model_code\":\"S019\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:21:13.000000Z\",\"created_at\":\"2026-05-11T14:21:13.000000Z\",\"id\":21}', 'Produk \'Orange Pop Reguler\' (S019) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:21:13', '2026-05-11 07:21:13'),
(156, 4, 'create', 'products', 'App\\Models\\ProductVariant', 42, NULL, '{\"product_id\":21,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S019-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:21:30.000000Z\",\"created_at\":\"2026-05-11T14:21:30.000000Z\",\"id\":42}', 'Varian SVK-S019-PUTI-L ditambahkan ke produk \'Orange Pop Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:21:30', '2026-05-11 07:21:30'),
(157, 4, 'create', 'products', 'App\\Models\\ProductVariant', 43, NULL, '{\"product_id\":21,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S019-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:21:30.000000Z\",\"created_at\":\"2026-05-11T14:21:30.000000Z\",\"id\":43}', 'Varian SVK-S019-PUTI-XL ditambahkan ke produk \'Orange Pop Reguler\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:21:30', '2026-05-11 07:21:30'),
(158, 4, 'create', 'products', 'App\\Models\\Product', 22, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Orange Pop Regular\",\"model_code\":\"S020\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:22:12.000000Z\",\"created_at\":\"2026-05-11T14:22:12.000000Z\",\"id\":22}', 'Produk \'Orange Pop Regular\' (S020) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:22:12', '2026-05-11 07:22:12'),
(159, 4, 'update', 'products', 'App\\Models\\Product', 22, '{\"id\":22,\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Orange Pop Regular\",\"model_code\":\"S020\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":\"4\",\"created_at\":\"2026-05-11T14:22:12.000000Z\",\"updated_at\":\"2026-05-11T14:22:12.000000Z\",\"deleted_at\":null}', '{\"id\":22,\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Orange Bubble Regular\",\"model_code\":\"S020\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":\"4\",\"created_at\":\"2026-05-11T14:22:12.000000Z\",\"updated_at\":\"2026-05-11T14:22:42.000000Z\",\"deleted_at\":null}', 'Produk \'Orange Bubble Regular\' diperbarui', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:22:42', '2026-05-11 07:22:42'),
(160, 4, 'create', 'products', 'App\\Models\\ProductVariant', 44, NULL, '{\"product_id\":22,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"SVK-S020-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:23:00.000000Z\",\"created_at\":\"2026-05-11T14:23:00.000000Z\",\"id\":44}', 'Varian SVK-S020-PUTI-L ditambahkan ke produk \'Orange Bubble Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:23:00', '2026-05-11 07:23:00'),
(161, 4, 'create', 'products', 'App\\Models\\ProductVariant', 45, NULL, '{\"product_id\":22,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"SVK-S020-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-11T14:23:00.000000Z\",\"created_at\":\"2026-05-11T14:23:00.000000Z\",\"id\":45}', 'Varian SVK-S020-PUTI-XL ditambahkan ke produk \'Orange Bubble Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:23:00', '2026-05-11 07:23:00'),
(162, 4, 'create', 'products', 'App\\Models\\Product', 23, NULL, '{\"brand_id\":\"6\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Fire Zippo Regular\",\"model_code\":\"S021\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-11T14:23:34.000000Z\",\"created_at\":\"2026-05-11T14:23:34.000000Z\",\"id\":23}', 'Produk \'Fire Zippo Regular\' (S021) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-11 07:23:34', '2026-05-11 07:23:34'),
(163, 7, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.149.50', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-05-11 12:33:22', '2026-05-11 12:33:22'),
(164, 7, 'open', 'CashSession', 'App\\Models\\CashSession', 6, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.149.50', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-05-11 12:33:25', '2026-05-11 12:33:25'),
(165, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.8.206.119', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-11 22:20:51', '2026-05-11 22:20:51'),
(166, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.79.219', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-05-11 22:35:08', '2026-05-11 22:35:08'),
(167, 9, 'open', 'CashSession', 'App\\Models\\CashSession', 7, NULL, NULL, 'Buka sesi kasir di Andir', '114.122.79.219', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '2026-05-11 22:37:15', '2026-05-11 22:37:15'),
(168, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.69.207', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15', '2026-05-12 00:26:02', '2026-05-12 00:26:02'),
(169, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 01:48:57', '2026-05-12 01:48:57'),
(170, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.106.8', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-12 02:22:58', '2026-05-12 02:22:58'),
(171, 1, 'update', 'brands', 'App\\Models\\Brand', 7, '{\"id\":7,\"name\":\"NEXTTIME\",\"code\":\"NT\",\"slug\":\"nexttime\",\"description\":null,\"logo\":null,\"is_active\":true,\"created_at\":\"2026-05-11T12:09:59.000000Z\",\"updated_at\":\"2026-05-11T12:09:59.000000Z\",\"deleted_at\":null}', '{\"id\":7,\"name\":\"Nexttime\",\"code\":\"NT\",\"slug\":\"nexttime\",\"description\":null,\"logo\":null,\"is_active\":true,\"created_at\":\"2026-05-11T12:09:59.000000Z\",\"updated_at\":\"2026-05-12T09:53:28.000000Z\",\"deleted_at\":null}', 'Brand \'Nexttime\' diubah', '140.213.107.108', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-12 02:53:28', '2026-05-12 02:53:28'),
(172, 1, 'update', 'brands', 'App\\Models\\Brand', 8, '{\"id\":8,\"name\":\"HEAVENKEY\",\"code\":\"HVK\",\"slug\":\"heavenkey\",\"description\":null,\"logo\":null,\"is_active\":true,\"created_at\":\"2026-05-11T12:10:35.000000Z\",\"updated_at\":\"2026-05-11T12:10:35.000000Z\",\"deleted_at\":null}', '{\"id\":8,\"name\":\"Heavenkey\",\"code\":\"HVK\",\"slug\":\"heavenkey\",\"description\":null,\"logo\":null,\"is_active\":true,\"created_at\":\"2026-05-11T12:10:35.000000Z\",\"updated_at\":\"2026-05-12T09:53:45.000000Z\",\"deleted_at\":null}', 'Brand \'Heavenkey\' diubah', '140.213.107.108', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-12 02:53:45', '2026-05-12 02:53:45'),
(173, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.103.127', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-12 03:08:17', '2026-05-12 03:08:17'),
(174, 1, 'update', 'users', 'App\\Models\\User', 10, NULL, NULL, 'User \'Holystic\' diperbarui', '140.213.103.127', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-12 03:08:55', '2026-05-12 03:08:55'),
(175, 1, 'update', 'users', 'App\\Models\\User', 10, NULL, NULL, 'User \'Holystic\' diperbarui', '140.213.103.127', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-12 03:09:04', '2026-05-12 03:09:04'),
(176, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:18:37', '2026-05-12 03:18:37'),
(177, 4, 'create', 'products', 'App\\Models\\Product', 24, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Make Dream Regular\",\"model_code\":\"W001\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:24:45.000000Z\",\"created_at\":\"2026-05-12T10:24:45.000000Z\",\"id\":24}', 'Produk \'Make Dream Regular\' (W001) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:24:45', '2026-05-12 03:24:45'),
(178, 4, 'create', 'products', 'App\\Models\\ProductVariant', 46, NULL, '{\"product_id\":24,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W001-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:25:04.000000Z\",\"created_at\":\"2026-05-12T10:25:04.000000Z\",\"id\":46}', 'Varian WK-W001-PUTI-L ditambahkan ke produk \'Make Dream Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:25:04', '2026-05-12 03:25:04'),
(179, 4, 'create', 'products', 'App\\Models\\ProductVariant', 47, NULL, '{\"product_id\":24,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W001-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:25:04.000000Z\",\"created_at\":\"2026-05-12T10:25:04.000000Z\",\"id\":47}', 'Varian WK-W001-PUTI-XL ditambahkan ke produk \'Make Dream Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:25:04', '2026-05-12 03:25:04'),
(180, 4, 'create', 'products', 'App\\Models\\Product', 25, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Nothing Eternal Regular\",\"model_code\":\"W002\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:25:59.000000Z\",\"created_at\":\"2026-05-12T10:25:59.000000Z\",\"id\":25}', 'Produk \'Nothing Eternal Regular\' (W002) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:25:59', '2026-05-12 03:25:59'),
(181, 4, 'create', 'products', 'App\\Models\\ProductVariant', 48, NULL, '{\"product_id\":25,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W002-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:26:17.000000Z\",\"created_at\":\"2026-05-12T10:26:17.000000Z\",\"id\":48}', 'Varian WK-W002-PUTI-L ditambahkan ke produk \'Nothing Eternal Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:26:17', '2026-05-12 03:26:17'),
(182, 4, 'create', 'products', 'App\\Models\\ProductVariant', 49, NULL, '{\"product_id\":25,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W002-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:26:17.000000Z\",\"created_at\":\"2026-05-12T10:26:17.000000Z\",\"id\":49}', 'Varian WK-W002-PUTI-XL ditambahkan ke produk \'Nothing Eternal Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:26:17', '2026-05-12 03:26:17'),
(183, 4, 'create', 'products', 'App\\Models\\Product', 26, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Built To Regular\",\"model_code\":\"W003\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:28:38.000000Z\",\"created_at\":\"2026-05-12T10:28:38.000000Z\",\"id\":26}', 'Produk \'Built To Regular\' (W003) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:28:38', '2026-05-12 03:28:38'),
(184, 4, 'create', 'products', 'App\\Models\\ProductVariant', 50, NULL, '{\"product_id\":26,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W003-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:28:53.000000Z\",\"created_at\":\"2026-05-12T10:28:53.000000Z\",\"id\":50}', 'Varian WK-W003-PUTI-L ditambahkan ke produk \'Built To Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:28:53', '2026-05-12 03:28:53'),
(185, 4, 'create', 'products', 'App\\Models\\ProductVariant', 51, NULL, '{\"product_id\":26,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W003-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:28:53.000000Z\",\"created_at\":\"2026-05-12T10:28:53.000000Z\",\"id\":51}', 'Varian WK-W003-PUTI-XL ditambahkan ke produk \'Built To Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:28:53', '2026-05-12 03:28:53'),
(186, 4, 'create', 'products', 'App\\Models\\Product', 27, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Mentality Regular\",\"model_code\":\"W004\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:29:42.000000Z\",\"created_at\":\"2026-05-12T10:29:42.000000Z\",\"id\":27}', 'Produk \'Mentality Regular\' (W004) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:29:42', '2026-05-12 03:29:42'),
(187, 4, 'create', 'products', 'App\\Models\\Product', 28, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Not 1 Regular\",\"model_code\":\"W005\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:49:51.000000Z\",\"created_at\":\"2026-05-12T10:49:51.000000Z\",\"id\":28}', 'Produk \'Not 1 Regular\' (W005) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:49:51', '2026-05-12 03:49:51'),
(188, 4, 'create', 'products', 'App\\Models\\Product', 29, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Not 2 Regular\",\"model_code\":\"W006\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:50:24.000000Z\",\"created_at\":\"2026-05-12T10:50:24.000000Z\",\"id\":29}', 'Produk \'Not 2 Regular\' (W006) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:50:24', '2026-05-12 03:50:24'),
(189, 4, 'create', 'products', 'App\\Models\\Product', 30, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Not 3 Regulae\",\"model_code\":\"W007\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:50:54.000000Z\",\"created_at\":\"2026-05-12T10:50:54.000000Z\",\"id\":30}', 'Produk \'Not 3 Regulae\' (W007) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:50:54', '2026-05-12 03:50:54'),
(190, 4, 'create', 'products', 'App\\Models\\Product', 31, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Nom 1997 Regular\",\"model_code\":\"W008\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:53:20.000000Z\",\"created_at\":\"2026-05-12T10:53:20.000000Z\",\"id\":31}', 'Produk \'Nom 1997 Regular\' (W008) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:53:20', '2026-05-12 03:53:20'),
(191, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.103.65', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 03:54:34', '2026-05-12 03:54:34'),
(192, 6, 'close', 'CashSession', 'App\\Models\\CashSession', 1, NULL, NULL, 'Tutup sesi kasir #1', '114.122.103.65', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 03:54:51', '2026-05-12 03:54:51'),
(193, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.103.65', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 03:55:39', '2026-05-12 03:55:39'),
(194, 4, 'create', 'products', 'App\\Models\\Product', 32, NULL, '{\"brand_id\":\"9\",\"category_id\":\"8\",\"product_type_id\":\"1\",\"name\":\"Travis Scott Regular\",\"model_code\":\"W009\",\"description\":null,\"base_price\":\"0.00\",\"sell_price\":\"0.00\",\"is_active\":true,\"created_by\":4,\"updated_at\":\"2026-05-12T10:55:52.000000Z\",\"created_at\":\"2026-05-12T10:55:52.000000Z\",\"id\":32}', 'Produk \'Travis Scott Regular\' (W009) dibuat', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:55:52', '2026-05-12 03:55:52'),
(195, 4, 'create', 'products', 'App\\Models\\ProductVariant', 52, NULL, '{\"product_id\":27,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W004-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:56:17.000000Z\",\"created_at\":\"2026-05-12T10:56:17.000000Z\",\"id\":52}', 'Varian WK-W004-HITA-L ditambahkan ke produk \'Mentality Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:56:17', '2026-05-12 03:56:17'),
(196, 4, 'create', 'products', 'App\\Models\\ProductVariant', 53, NULL, '{\"product_id\":27,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W004-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:56:17.000000Z\",\"created_at\":\"2026-05-12T10:56:17.000000Z\",\"id\":53}', 'Varian WK-W004-HITA-XL ditambahkan ke produk \'Mentality Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:56:17', '2026-05-12 03:56:17'),
(197, 4, 'create', 'products', 'App\\Models\\ProductVariant', 54, NULL, '{\"product_id\":28,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W005-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:56:44.000000Z\",\"created_at\":\"2026-05-12T10:56:44.000000Z\",\"id\":54}', 'Varian WK-W005-HITA-L ditambahkan ke produk \'Not 1 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:56:44', '2026-05-12 03:56:44'),
(198, 4, 'create', 'products', 'App\\Models\\ProductVariant', 55, NULL, '{\"product_id\":28,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W005-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:56:44.000000Z\",\"created_at\":\"2026-05-12T10:56:44.000000Z\",\"id\":55}', 'Varian WK-W005-HITA-XL ditambahkan ke produk \'Not 1 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:56:44', '2026-05-12 03:56:44'),
(199, 4, 'create', 'products', 'App\\Models\\ProductVariant', 56, NULL, '{\"product_id\":29,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W006-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:08.000000Z\",\"created_at\":\"2026-05-12T10:57:08.000000Z\",\"id\":56}', 'Varian WK-W006-HITA-L ditambahkan ke produk \'Not 2 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:08', '2026-05-12 03:57:08'),
(200, 4, 'create', 'products', 'App\\Models\\ProductVariant', 57, NULL, '{\"product_id\":29,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W006-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:08.000000Z\",\"created_at\":\"2026-05-12T10:57:08.000000Z\",\"id\":57}', 'Varian WK-W006-HITA-XL ditambahkan ke produk \'Not 2 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:08', '2026-05-12 03:57:08'),
(201, 4, 'create', 'products', 'App\\Models\\ProductVariant', 58, NULL, '{\"product_id\":30,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W007-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:29.000000Z\",\"created_at\":\"2026-05-12T10:57:29.000000Z\",\"id\":58}', 'Varian WK-W007-HITA-L ditambahkan ke produk \'Not 3 Regulae\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:29', '2026-05-12 03:57:29'),
(202, 4, 'create', 'products', 'App\\Models\\ProductVariant', 59, NULL, '{\"product_id\":30,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W007-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:29.000000Z\",\"created_at\":\"2026-05-12T10:57:29.000000Z\",\"id\":59}', 'Varian WK-W007-HITA-XL ditambahkan ke produk \'Not 3 Regulae\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:29', '2026-05-12 03:57:29'),
(203, 4, 'create', 'products', 'App\\Models\\ProductVariant', 60, NULL, '{\"product_id\":31,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W008-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:49.000000Z\",\"created_at\":\"2026-05-12T10:57:49.000000Z\",\"id\":60}', 'Varian WK-W008-HITA-L ditambahkan ke produk \'Nom 1997 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:49', '2026-05-12 03:57:49'),
(204, 4, 'create', 'products', 'App\\Models\\ProductVariant', 61, NULL, '{\"product_id\":31,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W008-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:57:49.000000Z\",\"created_at\":\"2026-05-12T10:57:49.000000Z\",\"id\":61}', 'Varian WK-W008-HITA-XL ditambahkan ke produk \'Nom 1997 Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:57:49', '2026-05-12 03:57:49'),
(205, 4, 'create', 'products', 'App\\Models\\ProductVariant', 62, NULL, '{\"product_id\":32,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W009-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:58:10.000000Z\",\"created_at\":\"2026-05-12T10:58:10.000000Z\",\"id\":62}', 'Varian WK-W009-HITA-L ditambahkan ke produk \'Travis Scott Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:58:10', '2026-05-12 03:58:10'),
(206, 4, 'create', 'products', 'App\\Models\\ProductVariant', 63, NULL, '{\"product_id\":32,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W009-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-12T10:58:10.000000Z\",\"created_at\":\"2026-05-12T10:58:10.000000Z\",\"id\":63}', 'Varian WK-W009-HITA-XL ditambahkan ke produk \'Travis Scott Regular\'', '182.10.129.159', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 03:58:10', '2026-05-12 03:58:10'),
(207, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.110.85', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 04:00:37', '2026-05-12 04:00:37'),
(208, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 2, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0002\",\"supplier_name\":\"konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"id\":2,\"received_at\":\"2026-05-12T11:07:54.000000Z\",\"received_by\":4,\"items\":[{\"id\":4,\"inbound_id\":\"2\",\"product_variant_id\":\"48\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":48,\"product_id\":\"25\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W002-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:26:17.000000Z\",\"updated_at\":\"2026-05-12T10:26:17.000000Z\",\"deleted_at\":null}},{\"id\":5,\"inbound_id\":\"2\",\"product_variant_id\":\"49\",\"qty\":\"28\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":49,\"product_id\":\"25\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W002-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:26:17.000000Z\",\"updated_at\":\"2026-05-12T10:26:17.000000Z\",\"deleted_at\":null}},{\"id\":6,\"inbound_id\":\"2\",\"product_variant_id\":\"50\",\"qty\":\"25\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":50,\"product_id\":\"26\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W003-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:28:53.000000Z\",\"updated_at\":\"2026-05-12T10:28:53.000000Z\",\"deleted_at\":null}},{\"id\":7,\"inbound_id\":\"2\",\"product_variant_id\":\"51\",\"qty\":\"28\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":51,\"product_id\":\"26\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W003-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:28:53.000000Z\",\"updated_at\":\"2026-05-12T10:28:53.000000Z\",\"deleted_at\":null}},{\"id\":2,\"inbound_id\":\"2\",\"product_variant_id\":\"60\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":60,\"product_id\":\"31\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W008-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:49.000000Z\",\"updated_at\":\"2026-05-12T10:57:49.000000Z\",\"deleted_at\":null}},{\"id\":3,\"inbound_id\":\"2\",\"product_variant_id\":\"61\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:07:54.000000Z\",\"updated_at\":\"2026-05-12T11:07:54.000000Z\",\"variant\":{\"id\":61,\"product_id\":\"31\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W008-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:49.000000Z\",\"updated_at\":\"2026-05-12T10:57:49.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0002 dibuat dan diterima', '182.10.130.46', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(209, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 3, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0003\",\"supplier_name\":\"konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-12T11:10:43.000000Z\",\"created_at\":\"2026-05-12T11:10:43.000000Z\",\"id\":3,\"received_at\":\"2026-05-12T11:10:43.000000Z\",\"received_by\":4,\"items\":[{\"id\":8,\"inbound_id\":\"3\",\"product_variant_id\":\"46\",\"qty\":\"29\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:10:43.000000Z\",\"updated_at\":\"2026-05-12T11:10:43.000000Z\",\"variant\":{\"id\":46,\"product_id\":\"24\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W001-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:25:04.000000Z\",\"updated_at\":\"2026-05-12T10:25:04.000000Z\",\"deleted_at\":null}},{\"id\":9,\"inbound_id\":\"3\",\"product_variant_id\":\"47\",\"qty\":\"28\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:10:43.000000Z\",\"updated_at\":\"2026-05-12T11:10:43.000000Z\",\"variant\":{\"id\":47,\"product_id\":\"24\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W001-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:25:04.000000Z\",\"updated_at\":\"2026-05-12T10:25:04.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0003 dibuat dan diterima', '182.10.130.46', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 04:10:43', '2026-05-12 04:10:43');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `module`, `model_type`, `model_id`, `old_values`, `new_values`, `description`, `ip_address`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(210, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 4, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0004\",\"supplier_name\":\"konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"id\":4,\"received_at\":\"2026-05-12T11:14:46.000000Z\",\"received_by\":4,\"items\":[{\"id\":10,\"inbound_id\":\"4\",\"product_variant_id\":\"54\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":54,\"product_id\":\"28\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W005-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:56:44.000000Z\",\"updated_at\":\"2026-05-12T10:56:44.000000Z\",\"deleted_at\":null}},{\"id\":11,\"inbound_id\":\"4\",\"product_variant_id\":\"55\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":55,\"product_id\":\"28\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W005-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:56:44.000000Z\",\"updated_at\":\"2026-05-12T10:56:44.000000Z\",\"deleted_at\":null}},{\"id\":12,\"inbound_id\":\"4\",\"product_variant_id\":\"56\",\"qty\":\"29\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":56,\"product_id\":\"29\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W006-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:08.000000Z\",\"updated_at\":\"2026-05-12T10:57:08.000000Z\",\"deleted_at\":null}},{\"id\":13,\"inbound_id\":\"4\",\"product_variant_id\":\"57\",\"qty\":\"29\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":57,\"product_id\":\"29\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W006-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:08.000000Z\",\"updated_at\":\"2026-05-12T10:57:08.000000Z\",\"deleted_at\":null}},{\"id\":14,\"inbound_id\":\"4\",\"product_variant_id\":\"58\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":58,\"product_id\":\"30\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W007-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:29.000000Z\",\"updated_at\":\"2026-05-12T10:57:29.000000Z\",\"deleted_at\":null}},{\"id\":15,\"inbound_id\":\"4\",\"product_variant_id\":\"59\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:14:46.000000Z\",\"updated_at\":\"2026-05-12T11:14:46.000000Z\",\"variant\":{\"id\":59,\"product_id\":\"30\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W007-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:57:29.000000Z\",\"updated_at\":\"2026-05-12T10:57:29.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0004 dibuat dan diterima', '182.10.130.46', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(211, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '118.99.80.230', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-12 04:15:17', '2026-05-12 04:15:17'),
(212, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 5, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0005\",\"supplier_name\":\"konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-12T11:20:08.000000Z\",\"created_at\":\"2026-05-12T11:20:08.000000Z\",\"id\":5,\"received_at\":\"2026-05-12T11:20:08.000000Z\",\"received_by\":4,\"items\":[{\"id\":16,\"inbound_id\":\"5\",\"product_variant_id\":\"52\",\"qty\":\"29\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:20:08.000000Z\",\"updated_at\":\"2026-05-12T11:20:08.000000Z\",\"variant\":{\"id\":52,\"product_id\":\"27\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W004-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:56:17.000000Z\",\"updated_at\":\"2026-05-12T10:56:17.000000Z\",\"deleted_at\":null}},{\"id\":17,\"inbound_id\":\"5\",\"product_variant_id\":\"53\",\"qty\":\"29\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:20:08.000000Z\",\"updated_at\":\"2026-05-12T11:20:08.000000Z\",\"variant\":{\"id\":53,\"product_id\":\"27\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W004-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:56:17.000000Z\",\"updated_at\":\"2026-05-12T10:56:17.000000Z\",\"deleted_at\":null}},{\"id\":18,\"inbound_id\":\"5\",\"product_variant_id\":\"62\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:20:08.000000Z\",\"updated_at\":\"2026-05-12T11:20:08.000000Z\",\"variant\":{\"id\":62,\"product_id\":\"32\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W009-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:58:10.000000Z\",\"updated_at\":\"2026-05-12T10:58:10.000000Z\",\"deleted_at\":null}},{\"id\":19,\"inbound_id\":\"5\",\"product_variant_id\":\"63\",\"qty\":\"30\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-12T11:20:08.000000Z\",\"updated_at\":\"2026-05-12T11:20:08.000000Z\",\"variant\":{\"id\":63,\"product_id\":\"32\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W009-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-12T10:58:10.000000Z\",\"updated_at\":\"2026-05-12T10:58:10.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0005 dibuat dan diterima', '182.10.130.46', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(213, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.82.121', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-12 04:21:44', '2026-05-12 04:21:44'),
(214, 6, 'open', 'CashSession', 'App\\Models\\CashSession', 8, NULL, NULL, 'Buka sesi kasir di Blok B', '114.122.82.121', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-12 04:23:16', '2026-05-12 04:23:16'),
(215, 6, 'create', 'Sale', 'App\\Models\\Sale', 11, NULL, NULL, 'Transaksi SAL-202605-0011 Rp 45.000', '114.122.82.121', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-12 04:23:36', '2026-05-12 04:23:36'),
(216, 6, 'create', 'Sale', 'App\\Models\\Sale', 12, NULL, NULL, 'Transaksi SAL-202605-0012 Rp 45.000', '114.122.100.21', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 04:26:33', '2026-05-12 04:26:33'),
(217, 6, 'create', 'Sale', 'App\\Models\\Sale', 13, NULL, NULL, 'Transaksi SAL-202605-0013 Rp 225.000', '114.122.82.121', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-12 04:27:40', '2026-05-12 04:27:40'),
(218, 6, 'create', 'Sale', 'App\\Models\\Sale', 14, NULL, NULL, 'Transaksi SAL-202605-0014 Rp 45.000', '114.122.82.121', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-12 04:28:40', '2026-05-12 04:28:40'),
(219, 6, 'close', 'CashSession', 'App\\Models\\CashSession', 8, NULL, NULL, 'Tutup sesi kasir #8', '114.122.100.21', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 04:36:09', '2026-05-12 04:36:09'),
(220, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.110.185', NULL, NULL, 'Mozilla/5.0 (Linux; Android 16; 2312DRA50G Build/BP2A.250605.031.A3; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.120 Mobile Safari/537.36', '2026-05-12 04:46:49', '2026-05-12 04:46:49'),
(221, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.131.171', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15', '2026-05-12 05:31:31', '2026-05-12 05:31:31'),
(222, 2, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 10:32:27', '2026-05-12 10:32:27'),
(223, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 10:32:43', '2026-05-12 10:32:43'),
(224, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.42.235', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-12 13:19:27', '2026-05-12 13:19:27'),
(225, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-12 17:59:50', '2026-05-12 17:59:50'),
(226, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '36.50.219.33', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', '2026-05-12 21:35:00', '2026-05-12 21:35:00'),
(227, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.175', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-05-12 21:38:50', '2026-05-12 21:38:50'),
(228, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 02:32:23', '2026-05-13 02:32:23'),
(229, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '160.19.226.211', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 02:35:32', '2026-05-13 02:35:32'),
(230, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:07:22', '2026-05-13 03:07:22'),
(231, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.83.195', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 03:08:42', '2026-05-13 03:08:42'),
(232, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:19:35', '2026-05-13 03:19:35'),
(233, 6, 'open', 'CashSession', 'App\\Models\\CashSession', 9, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:19:42', '2026-05-13 03:19:42'),
(234, 6, 'create', 'Sale', 'App\\Models\\Sale', 15, NULL, NULL, 'Transaksi SAL-202605-0015 Rp 45.000', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:19:50', '2026-05-13 03:19:50'),
(235, 6, 'create', 'Sale', 'App\\Models\\Sale', 16, NULL, NULL, 'Transaksi SAL-202605-0016 Rp 45.000', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:21:45', '2026-05-13 03:21:45'),
(236, 6, 'create', 'Sale', 'App\\Models\\Sale', 17, NULL, NULL, 'Transaksi SAL-202605-0017 Rp 45.000', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:32:45', '2026-05-13 03:32:45'),
(237, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 03:33:11', '2026-05-13 03:33:11'),
(238, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:51:18', '2026-05-13 03:51:18'),
(239, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:53:27', '2026-05-13 03:53:27'),
(240, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:55:01', '2026-05-13 03:55:01'),
(241, 6, 'delete', 'StockOpname', 'App\\Models\\StockOpname', 3, '{\"id\":3,\"opname_no\":\"OPN-202605-0003\",\"location_type\":\"store\",\"location_id\":\"1\",\"status\":\"draft\",\"notes\":null,\"rejection_reason\":null,\"submitted_at\":null,\"submitted_by\":null,\"approved_at\":null,\"approved_by\":null,\"rejected_at\":null,\"rejected_by\":null,\"created_by\":\"10\",\"created_at\":\"2026-05-11T12:03:13.000000Z\",\"updated_at\":\"2026-05-11T12:03:13.000000Z\"}', NULL, 'Hapus draft opname OPN-202605-0003', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:55:40', '2026-05-13 03:55:40'),
(242, 6, 'create', 'StockOpname', 'App\\Models\\StockOpname', 4, NULL, NULL, 'Buat opname OPN-202605-0003', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:55:44', '2026-05-13 03:55:44'),
(243, 6, 'delete', 'StockOpname', 'App\\Models\\StockOpname', 4, '{\"id\":4,\"opname_no\":\"OPN-202605-0003\",\"location_type\":\"store\",\"location_id\":\"1\",\"status\":\"draft\",\"notes\":null,\"rejection_reason\":null,\"submitted_at\":null,\"submitted_by\":null,\"approved_at\":null,\"approved_by\":null,\"rejected_at\":null,\"rejected_by\":null,\"created_by\":\"6\",\"created_at\":\"2026-05-13T10:55:44.000000Z\",\"updated_at\":\"2026-05-13T10:55:44.000000Z\"}', NULL, 'Hapus draft opname OPN-202605-0003', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:55:49', '2026-05-13 03:55:49'),
(244, 6, 'create', 'Sale', 'App\\Models\\Sale', 18, NULL, NULL, 'Transaksi SAL-202605-0018 Rp 4.500.000', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:57:46', '2026-05-13 03:57:46'),
(245, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 03:58:55', '2026-05-13 03:58:55'),
(246, 1, 'update', 'categories', 'App\\Models\\Category', 6, '{\"id\":6,\"name\":\"OVERSIZE\",\"code\":\"002\",\"slug\":\"oversize\",\"parent_id\":null,\"description\":null,\"sort_order\":\"0\",\"is_active\":true,\"created_at\":\"2026-05-11T13:58:22.000000Z\",\"updated_at\":\"2026-05-11T13:58:22.000000Z\",\"deleted_at\":null}', '{\"name\":\"Oversize\",\"code\":\"002\",\"parent_id\":null,\"sort_order\":\"0\",\"is_active\":true,\"slug\":\"oversize\"}', 'Kategori \'Oversize\' diubah', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:00:15', '2026-05-13 04:00:15'),
(247, 1, 'create', 'categories', 'App\\Models\\Category', 9, NULL, '{\"name\":\"Standard\",\"code\":\"004\",\"parent_id\":null,\"sort_order\":\"4\",\"is_active\":true,\"slug\":\"standard\"}', 'Kategori \'Standard\' dibuat', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:00:32', '2026-05-13 04:00:32'),
(248, 1, 'create', 'categories', 'App\\Models\\Category', 10, NULL, '{\"name\":\"Longsleeve\",\"code\":\"005\",\"parent_id\":null,\"sort_order\":\"5\",\"is_active\":true,\"slug\":\"longsleeve\"}', 'Kategori \'Longsleeve\' dibuat', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:01:44', '2026-05-13 04:01:44'),
(249, 1, 'create', 'categories', 'App\\Models\\Category', 11, NULL, '{\"name\":\"Danbowl\",\"code\":\"006\",\"parent_id\":null,\"sort_order\":\"6\",\"is_active\":true,\"slug\":\"danbowl\"}', 'Kategori \'Danbowl\' dibuat', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:02:03', '2026-05-13 04:02:03'),
(250, 1, 'create', 'categories', 'App\\Models\\Category', 12, NULL, '{\"name\":\"Polos Saku\",\"code\":\"007\",\"parent_id\":null,\"sort_order\":\"7\",\"is_active\":true,\"slug\":\"polos-saku\"}', 'Kategori \'Polos Saku\' dibuat', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:02:18', '2026-05-13 04:02:18'),
(251, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-05-13 04:02:30', '2026-05-13 04:02:30'),
(252, 1, 'create', 'products', 'App\\Models\\Product', 33, NULL, '{\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"50000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":1,\"updated_at\":\"2026-05-13T11:03:27.000000Z\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"id\":33}', 'Produk \'Tshirt Longsleeve Wonderkey\' (W010) dibuat', '114.122.69.189', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:03:27', '2026-05-13 04:03:27'),
(253, 1, 'create', 'products', 'App\\Models\\ProductVariant', 64, NULL, '{\"product_id\":33,\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W010-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":64}', 'Varian WK-W010-HITA-M ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(254, 1, 'create', 'products', 'App\\Models\\ProductVariant', 65, NULL, '{\"product_id\":33,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W010-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":65}', 'Varian WK-W010-HITA-XL ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(255, 1, 'create', 'products', 'App\\Models\\ProductVariant', 66, NULL, '{\"product_id\":33,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W010-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":66}', 'Varian WK-W010-HITA-L ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(256, 1, 'create', 'products', 'App\\Models\\ProductVariant', 67, NULL, '{\"product_id\":33,\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W010-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":67}', 'Varian WK-W010-PUTI-M ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(257, 1, 'create', 'products', 'App\\Models\\ProductVariant', 68, NULL, '{\"product_id\":33,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W010-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":68}', 'Varian WK-W010-PUTI-L ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(258, 1, 'create', 'products', 'App\\Models\\ProductVariant', 69, NULL, '{\"product_id\":33,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W010-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"id\":69}', 'Varian WK-W010-PUTI-XL ditambahkan ke produk \'Tshirt Longsleeve Wonderkey\'', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:33', '2026-05-13 04:05:33'),
(259, 1, 'update', 'products', 'App\\Models\\Product', 33, '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"50000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T11:03:27.000000Z\",\"deleted_at\":null}', '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"55000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T11:05:57.000000Z\",\"deleted_at\":null}', 'Produk \'Tshirt Longsleeve Wonderkey\' diperbarui', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:05:57', '2026-05-13 04:05:57'),
(260, 1, 'create', 'products', 'App\\Models\\Product', 34, NULL, '{\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"45000.00\",\"sell_price\":\"50000.00\",\"is_active\":true,\"created_by\":1,\"updated_at\":\"2026-05-13T11:07:17.000000Z\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"id\":34}', 'Produk \'Wonderkey Standard\' (W011) dibuat', '114.122.69.169', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:07:17', '2026-05-13 04:07:17'),
(261, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-13 04:11:49', '2026-05-13 04:11:49'),
(262, 1, 'create', 'products', 'App\\Models\\ProductVariant', 70, NULL, '{\"product_id\":34,\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W011-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":70}', 'Varian WK-W011-HITA-M ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(263, 1, 'create', 'products', 'App\\Models\\ProductVariant', 71, NULL, '{\"product_id\":34,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W011-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":71}', 'Varian WK-W011-HITA-L ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(264, 1, 'create', 'products', 'App\\Models\\ProductVariant', 72, NULL, '{\"product_id\":34,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W011-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":72}', 'Varian WK-W011-HITA-XL ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(265, 1, 'create', 'products', 'App\\Models\\ProductVariant', 73, NULL, '{\"product_id\":34,\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W011-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":73}', 'Varian WK-W011-PUTI-M ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(266, 1, 'create', 'products', 'App\\Models\\ProductVariant', 74, NULL, '{\"product_id\":34,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W011-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":74}', 'Varian WK-W011-PUTI-L ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(267, 1, 'create', 'products', 'App\\Models\\ProductVariant', 75, NULL, '{\"product_id\":34,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W011-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"id\":75}', 'Varian WK-W011-PUTI-XL ditambahkan ke produk \'Wonderkey Standard\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:12:04', '2026-05-13 04:12:04'),
(268, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 10, NULL, NULL, 'Buka sesi kasir di Metro', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '2026-05-13 04:12:07', '2026-05-13 04:12:07'),
(269, 1, 'create', 'products', 'App\\Models\\Product', 35, NULL, '{\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":1,\"updated_at\":\"2026-05-13T11:13:47.000000Z\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"id\":35}', 'Produk \'Wonderkey Boxy\' (W012) dibuat', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:13:47', '2026-05-13 04:13:47'),
(270, 1, 'create', 'products', 'App\\Models\\ProductVariant', 76, NULL, '{\"product_id\":35,\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W012-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":76}', 'Varian WK-W012-PUTI-M ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(271, 1, 'create', 'products', 'App\\Models\\ProductVariant', 77, NULL, '{\"product_id\":35,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W012-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":77}', 'Varian WK-W012-PUTI-L ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(272, 1, 'create', 'products', 'App\\Models\\ProductVariant', 78, NULL, '{\"product_id\":35,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W012-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":78}', 'Varian WK-W012-PUTI-XL ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(273, 1, 'create', 'products', 'App\\Models\\ProductVariant', 79, NULL, '{\"product_id\":35,\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W012-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":79}', 'Varian WK-W012-HITA-M ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(274, 1, 'create', 'products', 'App\\Models\\ProductVariant', 80, NULL, '{\"product_id\":35,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W012-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":80}', 'Varian WK-W012-HITA-L ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(275, 1, 'create', 'products', 'App\\Models\\ProductVariant', 81, NULL, '{\"product_id\":35,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W012-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"id\":81}', 'Varian WK-W012-HITA-XL ditambahkan ke produk \'Wonderkey Boxy\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:14:27', '2026-05-13 04:14:27'),
(276, 1, 'create', 'products', 'App\\Models\\Product', 36, NULL, '{\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":1,\"updated_at\":\"2026-05-13T11:15:21.000000Z\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"id\":36}', 'Produk \'Wonderkey Danbowl\' (W013) dibuat', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:15:21', '2026-05-13 04:15:21'),
(277, 1, 'create', 'products', 'App\\Models\\ProductVariant', 82, NULL, '{\"product_id\":36,\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W013-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":82}', 'Varian WK-W013-PUTI-M ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(278, 1, 'create', 'products', 'App\\Models\\ProductVariant', 83, NULL, '{\"product_id\":36,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W013-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":83}', 'Varian WK-W013-PUTI-L ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(279, 1, 'create', 'products', 'App\\Models\\ProductVariant', 84, NULL, '{\"product_id\":36,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W013-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":84}', 'Varian WK-W013-PUTI-XL ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(280, 1, 'create', 'products', 'App\\Models\\ProductVariant', 85, NULL, '{\"product_id\":36,\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W013-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":85}', 'Varian WK-W013-HITA-M ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(281, 1, 'create', 'products', 'App\\Models\\ProductVariant', 86, NULL, '{\"product_id\":36,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W013-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":86}', 'Varian WK-W013-HITA-L ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(282, 1, 'create', 'products', 'App\\Models\\ProductVariant', 87, NULL, '{\"product_id\":36,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W013-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"id\":87}', 'Varian WK-W013-HITA-XL ditambahkan ke produk \'Wonderkey Danbowl\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:04', '2026-05-13 04:16:04'),
(283, 1, 'create', 'products', 'App\\Models\\Product', 37, NULL, '{\"brand_id\":\"9\",\"category_id\":\"12\",\"product_type_id\":\"1\",\"name\":\"Polos Saku\",\"model_code\":\"W014\",\"description\":null,\"base_price\":\"50000.00\",\"sell_price\":\"55000.00\",\"is_active\":true,\"created_by\":1,\"updated_at\":\"2026-05-13T11:16:49.000000Z\",\"created_at\":\"2026-05-13T11:16:49.000000Z\",\"id\":37}', 'Produk \'Polos Saku\' (W014) dibuat', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:16:49', '2026-05-13 04:16:49'),
(284, 1, 'create', 'products', 'App\\Models\\ProductVariant', 88, NULL, '{\"product_id\":37,\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W014-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":88}', 'Varian WK-W014-PUTI-M ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(285, 1, 'create', 'products', 'App\\Models\\ProductVariant', 89, NULL, '{\"product_id\":37,\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W014-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":89}', 'Varian WK-W014-PUTI-L ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(286, 1, 'create', 'products', 'App\\Models\\ProductVariant', 90, NULL, '{\"product_id\":37,\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W014-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":90}', 'Varian WK-W014-PUTI-XL ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(287, 1, 'create', 'products', 'App\\Models\\ProductVariant', 91, NULL, '{\"product_id\":37,\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W014-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":91}', 'Varian WK-W014-HITA-M ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(288, 1, 'create', 'products', 'App\\Models\\ProductVariant', 92, NULL, '{\"product_id\":37,\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W014-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":92}', 'Varian WK-W014-HITA-L ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(289, 1, 'create', 'products', 'App\\Models\\ProductVariant', 93, NULL, '{\"product_id\":37,\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W014-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"id\":93}', 'Varian WK-W014-HITA-XL ditambahkan ke produk \'Polos Saku\'', '114.122.69.165', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 04:17:21', '2026-05-13 04:17:21'),
(290, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 05:06:11', '2026-05-13 05:06:11'),
(291, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.73.25', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 05:41:17', '2026-05-13 05:41:17'),
(292, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 06:03:39', '2026-05-13 06:03:39'),
(293, 1, 'update', 'categories', 'App\\Models\\Category', 8, '{\"id\":8,\"name\":\"Regular\",\"code\":\"0001\",\"slug\":\"regular\",\"parent_id\":null,\"description\":null,\"sort_order\":\"0\",\"is_active\":true,\"created_at\":\"2026-05-11T14:12:25.000000Z\",\"updated_at\":\"2026-05-11T14:12:25.000000Z\",\"deleted_at\":null}', '{\"name\":\"Regular\",\"code\":\"001\",\"parent_id\":null,\"sort_order\":\"0\",\"is_active\":true,\"slug\":\"regular\"}', 'Kategori \'Regular\' diubah', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 06:09:55', '2026-05-13 06:09:55'),
(294, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '140.213.18.67', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', '2026-05-13 06:12:05', '2026-05-13 06:12:05'),
(295, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', '2026-05-13 06:46:48', '2026-05-13 06:46:48'),
(296, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 6, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0006\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T13:48:47.000000Z\",\"created_at\":\"2026-05-13T13:48:47.000000Z\",\"id\":6,\"received_at\":\"2026-05-13T13:48:47.000000Z\",\"received_by\":4,\"items\":[{\"id\":20,\"inbound_id\":\"6\",\"product_variant_id\":\"77\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:48:47.000000Z\",\"updated_at\":\"2026-05-13T13:48:47.000000Z\",\"variant\":{\"id\":77,\"product_id\":\"35\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W012-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"deleted_at\":null}},{\"id\":21,\"inbound_id\":\"6\",\"product_variant_id\":\"78\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:48:47.000000Z\",\"updated_at\":\"2026-05-13T13:48:47.000000Z\",\"variant\":{\"id\":78,\"product_id\":\"35\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W012-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0006 dibuat dan diterima', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', '2026-05-13 06:48:47', '2026-05-13 06:48:47'),
(297, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 7, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0007\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T13:53:02.000000Z\",\"created_at\":\"2026-05-13T13:53:01.000000Z\",\"id\":7,\"received_at\":\"2026-05-13T13:53:02.000000Z\",\"received_by\":4,\"items\":[{\"id\":22,\"inbound_id\":\"7\",\"product_variant_id\":\"71\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:53:02.000000Z\",\"updated_at\":\"2026-05-13T13:53:02.000000Z\",\"variant\":{\"id\":71,\"product_id\":\"34\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W011-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"deleted_at\":null}},{\"id\":23,\"inbound_id\":\"7\",\"product_variant_id\":\"72\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:53:02.000000Z\",\"updated_at\":\"2026-05-13T13:53:02.000000Z\",\"variant\":{\"id\":72,\"product_id\":\"34\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W011-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"deleted_at\":null}},{\"id\":24,\"inbound_id\":\"7\",\"product_variant_id\":\"74\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:53:02.000000Z\",\"updated_at\":\"2026-05-13T13:53:02.000000Z\",\"variant\":{\"id\":74,\"product_id\":\"34\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W011-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"deleted_at\":null}},{\"id\":25,\"inbound_id\":\"7\",\"product_variant_id\":\"75\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:53:02.000000Z\",\"updated_at\":\"2026-05-13T13:53:02.000000Z\",\"variant\":{\"id\":75,\"product_id\":\"34\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W011-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:12:04.000000Z\",\"updated_at\":\"2026-05-13T11:12:04.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0007 dibuat dan diterima', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 06:53:02', '2026-05-13 06:53:02'),
(298, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.147.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 06:54:40', '2026-05-13 06:54:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `module`, `model_type`, `model_id`, `old_values`, `new_values`, `description`, `ip_address`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(299, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 8, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0008\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T13:55:42.000000Z\",\"created_at\":\"2026-05-13T13:55:42.000000Z\",\"id\":8,\"received_at\":\"2026-05-13T13:55:42.000000Z\",\"received_by\":4,\"items\":[{\"id\":26,\"inbound_id\":\"8\",\"product_variant_id\":\"65\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:55:42.000000Z\",\"updated_at\":\"2026-05-13T13:55:42.000000Z\",\"variant\":{\"id\":65,\"product_id\":\"33\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W010-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"deleted_at\":null}},{\"id\":27,\"inbound_id\":\"8\",\"product_variant_id\":\"66\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:55:42.000000Z\",\"updated_at\":\"2026-05-13T13:55:42.000000Z\",\"variant\":{\"id\":66,\"product_id\":\"33\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W010-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"deleted_at\":null}},{\"id\":28,\"inbound_id\":\"8\",\"product_variant_id\":\"68\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:55:42.000000Z\",\"updated_at\":\"2026-05-13T13:55:42.000000Z\",\"variant\":{\"id\":68,\"product_id\":\"33\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W010-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"deleted_at\":null}},{\"id\":29,\"inbound_id\":\"8\",\"product_variant_id\":\"69\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:55:42.000000Z\",\"updated_at\":\"2026-05-13T13:55:42.000000Z\",\"variant\":{\"id\":69,\"product_id\":\"33\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W010-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:05:33.000000Z\",\"updated_at\":\"2026-05-13T11:05:33.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0008 dibuat dan diterima', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 06:55:42', '2026-05-13 06:55:42'),
(300, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 9, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0009\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T13:58:45.000000Z\",\"created_at\":\"2026-05-13T13:58:45.000000Z\",\"id\":9,\"received_at\":\"2026-05-13T13:58:45.000000Z\",\"received_by\":4,\"items\":[{\"id\":30,\"inbound_id\":\"9\",\"product_variant_id\":\"80\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:58:45.000000Z\",\"updated_at\":\"2026-05-13T13:58:45.000000Z\",\"variant\":{\"id\":80,\"product_id\":\"35\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W012-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"deleted_at\":null}},{\"id\":31,\"inbound_id\":\"9\",\"product_variant_id\":\"81\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T13:58:45.000000Z\",\"updated_at\":\"2026-05-13T13:58:45.000000Z\",\"variant\":{\"id\":81,\"product_id\":\"35\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W012-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:14:27.000000Z\",\"updated_at\":\"2026-05-13T11:14:27.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0009 dibuat dan diterima', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 06:58:45', '2026-05-13 06:58:45'),
(301, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 07:14:24', '2026-05-13 07:14:24'),
(302, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.146.64', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 07:17:12', '2026-05-13 07:17:12'),
(303, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 10, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0010\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T14:34:06.000000Z\",\"created_at\":\"2026-05-13T14:34:06.000000Z\",\"id\":10,\"received_at\":\"2026-05-13T14:34:06.000000Z\",\"received_by\":4,\"items\":[{\"id\":32,\"inbound_id\":\"10\",\"product_variant_id\":\"82\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:34:06.000000Z\",\"updated_at\":\"2026-05-13T14:34:06.000000Z\",\"variant\":{\"id\":82,\"product_id\":\"36\",\"color_id\":\"2\",\"size_id\":\"3\",\"sku\":\"WK-W013-PUTI-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}},{\"id\":33,\"inbound_id\":\"10\",\"product_variant_id\":\"83\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:34:06.000000Z\",\"updated_at\":\"2026-05-13T14:34:06.000000Z\",\"variant\":{\"id\":83,\"product_id\":\"36\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W013-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}},{\"id\":34,\"inbound_id\":\"10\",\"product_variant_id\":\"84\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:34:06.000000Z\",\"updated_at\":\"2026-05-13T14:34:06.000000Z\",\"variant\":{\"id\":84,\"product_id\":\"36\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W013-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0010 dibuat dan diterima', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:34:07', '2026-05-13 07:34:07'),
(304, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 11, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0011\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T14:35:16.000000Z\",\"created_at\":\"2026-05-13T14:35:16.000000Z\",\"id\":11,\"received_at\":\"2026-05-13T14:35:16.000000Z\",\"received_by\":4,\"items\":[{\"id\":35,\"inbound_id\":\"11\",\"product_variant_id\":\"85\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:35:16.000000Z\",\"updated_at\":\"2026-05-13T14:35:16.000000Z\",\"variant\":{\"id\":85,\"product_id\":\"36\",\"color_id\":\"1\",\"size_id\":\"3\",\"sku\":\"WK-W013-HITA-M\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}},{\"id\":36,\"inbound_id\":\"11\",\"product_variant_id\":\"86\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:35:16.000000Z\",\"updated_at\":\"2026-05-13T14:35:16.000000Z\",\"variant\":{\"id\":86,\"product_id\":\"36\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W013-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}},{\"id\":37,\"inbound_id\":\"11\",\"product_variant_id\":\"87\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:35:16.000000Z\",\"updated_at\":\"2026-05-13T14:35:16.000000Z\",\"variant\":{\"id\":87,\"product_id\":\"36\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W013-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:16:04.000000Z\",\"updated_at\":\"2026-05-13T11:16:04.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0011 dibuat dan diterima', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:35:16', '2026-05-13 07:35:16'),
(305, 4, 'create', 'warehouse', 'App\\Models\\Inbound', 12, NULL, '{\"warehouse_id\":\"1\",\"reference_no\":\"INB-202605-0012\",\"supplier_name\":\"Konveksi ibu\",\"notes\":null,\"status\":\"received\",\"created_by\":4,\"updated_at\":\"2026-05-13T14:36:18.000000Z\",\"created_at\":\"2026-05-13T14:36:18.000000Z\",\"id\":12,\"received_at\":\"2026-05-13T14:36:18.000000Z\",\"received_by\":4,\"items\":[{\"id\":38,\"inbound_id\":\"12\",\"product_variant_id\":\"89\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:36:18.000000Z\",\"updated_at\":\"2026-05-13T14:36:18.000000Z\",\"variant\":{\"id\":89,\"product_id\":\"37\",\"color_id\":\"2\",\"size_id\":\"4\",\"sku\":\"WK-W014-PUTI-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"deleted_at\":null}},{\"id\":39,\"inbound_id\":\"12\",\"product_variant_id\":\"90\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:36:18.000000Z\",\"updated_at\":\"2026-05-13T14:36:18.000000Z\",\"variant\":{\"id\":90,\"product_id\":\"37\",\"color_id\":\"2\",\"size_id\":\"5\",\"sku\":\"WK-W014-PUTI-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"deleted_at\":null}},{\"id\":40,\"inbound_id\":\"12\",\"product_variant_id\":\"92\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:36:18.000000Z\",\"updated_at\":\"2026-05-13T14:36:18.000000Z\",\"variant\":{\"id\":92,\"product_id\":\"37\",\"color_id\":\"1\",\"size_id\":\"4\",\"sku\":\"WK-W014-HITA-L\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"deleted_at\":null}},{\"id\":41,\"inbound_id\":\"12\",\"product_variant_id\":\"93\",\"qty\":\"500\",\"unit_cost\":\"0.00\",\"created_at\":\"2026-05-13T14:36:18.000000Z\",\"updated_at\":\"2026-05-13T14:36:18.000000Z\",\"variant\":{\"id\":93,\"product_id\":\"37\",\"color_id\":\"1\",\"size_id\":\"5\",\"sku\":\"WK-W014-HITA-XL\",\"price_adjustment\":\"0.00\",\"is_active\":true,\"created_at\":\"2026-05-13T11:17:21.000000Z\",\"updated_at\":\"2026-05-13T11:17:21.000000Z\",\"deleted_at\":null}}]}', 'Penerimaan barang INB-202605-0012 dibuat dan diterima', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:36:18', '2026-05-13 07:36:18'),
(306, 4, 'create', 'shipments', 'App\\Models\\Shipment', 2, NULL, '{\"shipment_no\":\"SHP-202605-0002\",\"warehouse_id\":\"1\",\"store_id\":\"1\",\"status\":\"draft\",\"notes\":null,\"created_by\":4,\"updated_at\":\"2026-05-13T14:45:09.000000Z\",\"created_at\":\"2026-05-13T14:45:09.000000Z\",\"id\":2,\"store\":{\"id\":1,\"name\":\"Blok B\",\"code\":\"TK-01\",\"address\":null,\"city\":\"Jakarta\",\"phone\":null,\"pic_name\":\"Rio\",\"bank_name\":null,\"bank_account\":null,\"bank_account_name\":null,\"is_active\":true,\"monthly_target_qty\":\"0\",\"created_at\":\"2026-05-08T16:16:45.000000Z\",\"updated_at\":\"2026-05-11T11:53:42.000000Z\",\"deleted_at\":null}}', 'Pengiriman SHP-202605-0002 dibuat ke toko Blok B', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:45:09', '2026-05-13 07:45:09'),
(307, 4, 'update', 'shipments', 'App\\Models\\Shipment', 2, '{\"status\":\"prepared\"}', '{\"status\":\"prepared\"}', 'Status pengiriman SHP-202605-0002 → Disiapkan', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:45:20', '2026-05-13 07:45:20'),
(308, 4, 'update', 'shipments', 'App\\Models\\Shipment', 2, '{\"status\":\"packed\"}', '{\"status\":\"packed\"}', 'Status pengiriman SHP-202605-0002 → Dikemas', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:45:31', '2026-05-13 07:45:31'),
(309, 4, 'update', 'shipments', 'App\\Models\\Shipment', 2, '{\"status\":\"shipped\"}', '{\"status\":\"shipped\"}', 'Status pengiriman SHP-202605-0002 → Dikirim', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:45:35', '2026-05-13 07:45:35'),
(310, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:47:45', '2026-05-13 07:47:45'),
(311, 4, 'update', 'shipments', 'App\\Models\\Shipment', 2, '{\"status\":\"arrived\"}', '{\"status\":\"arrived\"}', 'Status pengiriman SHP-202605-0002 → Tiba', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:48:15', '2026-05-13 07:48:15'),
(312, 4, 'create', 'shipments', 'App\\Models\\Shipment', 3, NULL, '{\"shipment_no\":\"SHP-202605-0003\",\"warehouse_id\":\"1\",\"store_id\":\"1\",\"status\":\"draft\",\"notes\":null,\"created_by\":4,\"updated_at\":\"2026-05-13T14:50:04.000000Z\",\"created_at\":\"2026-05-13T14:50:04.000000Z\",\"id\":3,\"store\":{\"id\":1,\"name\":\"Blok B\",\"code\":\"TK-01\",\"address\":null,\"city\":\"Jakarta\",\"phone\":null,\"pic_name\":\"Rio\",\"bank_name\":null,\"bank_account\":null,\"bank_account_name\":null,\"is_active\":true,\"monthly_target_qty\":\"0\",\"created_at\":\"2026-05-08T16:16:45.000000Z\",\"updated_at\":\"2026-05-11T11:53:42.000000Z\",\"deleted_at\":null}}', 'Pengiriman SHP-202605-0003 dibuat ke toko Blok B', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:50:04', '2026-05-13 07:50:04'),
(313, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:50:08', '2026-05-13 07:50:08'),
(314, 4, 'update', 'shipments', 'App\\Models\\Shipment', 3, '{\"status\":\"prepared\"}', '{\"status\":\"prepared\"}', 'Status pengiriman SHP-202605-0003 → Disiapkan', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:50:13', '2026-05-13 07:50:13'),
(315, 4, 'update', 'shipments', 'App\\Models\\Shipment', 3, '{\"status\":\"packed\"}', '{\"status\":\"packed\"}', 'Status pengiriman SHP-202605-0003 → Dikemas', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:50:17', '2026-05-13 07:50:17'),
(316, 4, 'update', 'shipments', 'App\\Models\\Shipment', 3, '{\"status\":\"shipped\"}', '{\"status\":\"shipped\"}', 'Status pengiriman SHP-202605-0003 → Dikirim', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:50:24', '2026-05-13 07:50:24'),
(317, 4, 'update', 'shipments', 'App\\Models\\Shipment', 3, '{\"status\":\"arrived\"}', '{\"status\":\"arrived\"}', 'Status pengiriman SHP-202605-0003 → Tiba', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 07:50:29', '2026-05-13 07:50:29'),
(318, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:51:06', '2026-05-13 07:51:06'),
(319, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:54:42', '2026-05-13 07:54:42'),
(320, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:55:30', '2026-05-13 07:55:30'),
(321, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:56:07', '2026-05-13 07:56:07'),
(322, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.108.159', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', '2026-05-13 07:57:14', '2026-05-13 07:57:14'),
(323, 6, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 08:24:42', '2026-05-13 08:24:42'),
(324, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 08:25:51', '2026-05-13 08:25:51'),
(325, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 08:26:23', '2026-05-13 08:26:23'),
(326, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:26:57', '2026-05-13 08:26:57'),
(327, 4, 'create', 'shipments', 'App\\Models\\Shipment', 4, NULL, '{\"shipment_no\":\"SHP-202605-0004\",\"warehouse_id\":\"1\",\"store_id\":\"3\",\"status\":\"draft\",\"notes\":null,\"created_by\":4,\"updated_at\":\"2026-05-13T15:28:36.000000Z\",\"created_at\":\"2026-05-13T15:28:36.000000Z\",\"id\":4,\"store\":{\"id\":3,\"name\":\"Metro\",\"code\":\"TK-03\",\"address\":null,\"city\":\"Jakarta\",\"phone\":null,\"pic_name\":\"Sapri\",\"bank_name\":null,\"bank_account\":null,\"bank_account_name\":null,\"is_active\":true,\"monthly_target_qty\":\"0\",\"created_at\":\"2026-05-08T16:16:45.000000Z\",\"updated_at\":\"2026-05-11T11:53:08.000000Z\",\"deleted_at\":null}}', 'Pengiriman SHP-202605-0004 dibuat ke toko Metro', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:28:36', '2026-05-13 08:28:36'),
(328, 4, 'update', 'shipments', 'App\\Models\\Shipment', 4, '{\"status\":\"prepared\"}', '{\"status\":\"prepared\"}', 'Status pengiriman SHP-202605-0004 → Disiapkan', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:28:40', '2026-05-13 08:28:40'),
(329, 4, 'update', 'shipments', 'App\\Models\\Shipment', 4, '{\"status\":\"packed\"}', '{\"status\":\"packed\"}', 'Status pengiriman SHP-202605-0004 → Dikemas', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:28:42', '2026-05-13 08:28:42'),
(330, 4, 'update', 'shipments', 'App\\Models\\Shipment', 4, '{\"status\":\"shipped\"}', '{\"status\":\"shipped\"}', 'Status pengiriman SHP-202605-0004 → Dikirim', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:28:44', '2026-05-13 08:28:44'),
(331, 4, 'update', 'shipments', 'App\\Models\\Shipment', 4, '{\"status\":\"arrived\"}', '{\"status\":\"arrived\"}', 'Status pengiriman SHP-202605-0004 → Tiba', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:28:46', '2026-05-13 08:28:46'),
(332, 10, 'receive', 'shipments', 'App\\Models\\Shipment', 4, NULL, NULL, 'Pengiriman SHP-202605-0004 diterima oleh toko Metro', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 08:29:51', '2026-05-13 08:29:51'),
(333, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '203.78.124.92', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', '2026-05-13 08:32:15', '2026-05-13 08:32:15'),
(334, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:33:50', '2026-05-13 08:33:50'),
(335, 1, 'delete', 'users', NULL, NULL, NULL, NULL, 'User \'Kepala Toko 1\' dihapus', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:36:55', '2026-05-13 08:36:55'),
(336, 1, 'delete', 'users', NULL, NULL, NULL, NULL, 'User \'Kasir Toko 1\' dihapus', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:36:59', '2026-05-13 08:36:59'),
(337, 1, 'update', 'users', 'App\\Models\\User', 10, NULL, NULL, 'User \'Holystic\' diperbarui', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 08:40:47', '2026-05-13 08:40:47'),
(338, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:41:29', '2026-05-13 08:41:29'),
(339, 10, 'receive', 'shipments', 'App\\Models\\Shipment', 2, NULL, NULL, 'Pengiriman SHP-202605-0002 diterima oleh toko Blok B', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(340, 10, 'receive', 'shipments', 'App\\Models\\Shipment', 3, NULL, NULL, 'Pengiriman SHP-202605-0003 diterima oleh toko Blok B', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 08:42:25', '2026-05-13 08:42:25'),
(341, 4, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:47:18', '2026-05-13 08:47:18'),
(342, 1, 'update', 'products', 'App\\Models\\Product', 37, '{\"id\":37,\"brand_id\":\"9\",\"category_id\":\"12\",\"product_type_id\":\"1\",\"name\":\"Polos Saku\",\"model_code\":\"W014\",\"description\":null,\"base_price\":\"50000.00\",\"sell_price\":\"55000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:16:49.000000Z\",\"updated_at\":\"2026-05-13T11:16:49.000000Z\",\"deleted_at\":null}', '{\"id\":37,\"brand_id\":\"9\",\"category_id\":\"12\",\"product_type_id\":\"1\",\"name\":\"Polos Saku\",\"model_code\":\"W014\",\"description\":null,\"base_price\":\"50000.00\",\"sell_price\":\"55000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:16:49.000000Z\",\"updated_at\":\"2026-05-13T11:16:49.000000Z\",\"deleted_at\":null}', 'Produk \'Polos Saku\' diperbarui', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 08:49:28', '2026-05-13 08:49:28'),
(343, 4, 'update', 'products', 'App\\Models\\Product', 33, '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"55000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T11:05:57.000000Z\",\"deleted_at\":null}', '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"55000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T11:05:57.000000Z\",\"deleted_at\":null}', 'Produk \'Tshirt Longsleeve Wonderkey\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:49:46', '2026-05-13 08:49:46'),
(344, 4, 'update', 'products', 'App\\Models\\Product', 34, '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"45000.00\",\"sell_price\":\"50000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T11:07:17.000000Z\",\"deleted_at\":null}', '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"45000.00\",\"sell_price\":\"50000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T11:07:17.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Standard\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:50:17', '2026-05-13 08:50:17'),
(345, 4, 'update', 'products', 'App\\Models\\Product', 35, '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T11:13:47.000000Z\",\"deleted_at\":null}', '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T11:13:47.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Boxy\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:50:34', '2026-05-13 08:50:34'),
(346, 4, 'update', 'products', 'App\\Models\\Product', 36, '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T11:15:21.000000Z\",\"deleted_at\":null}', '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T11:15:21.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Danbowl\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:50:49', '2026-05-13 08:50:49'),
(347, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:51:18', '2026-05-13 08:51:18'),
(348, 10, 'create', 'StockOpname', 'App\\Models\\StockOpname', 5, NULL, NULL, 'Buat opname OPN-202605-0003', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:53:51', '2026-05-13 08:53:51'),
(349, 4, 'update', 'products', 'App\\Models\\Product', 33, '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"55000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T11:05:57.000000Z\",\"deleted_at\":null}', '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"5500000.00\",\"sell_price\":\"6000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T15:54:07.000000Z\",\"deleted_at\":null}', 'Produk \'Tshirt Longsleeve Wonderkey\' diperbarui', '114.122.76.42', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(350, 10, 'submit', 'StockOpname', 'App\\Models\\StockOpname', 5, NULL, NULL, 'Submit opname OPN-202605-0003', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:54:18', '2026-05-13 08:54:18'),
(351, 10, 'approve', 'StockOpname', 'App\\Models\\StockOpname', 5, NULL, NULL, 'Setujui opname OPN-202605-0003', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:54:22', '2026-05-13 08:54:22'),
(352, 4, 'update', 'products', 'App\\Models\\Product', 36, '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T11:15:21.000000Z\",\"deleted_at\":null}', '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"6000000.00\",\"sell_price\":\"6500000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T15:56:49.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Danbowl\' diperbarui', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(353, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:57:07', '2026-05-13 08:57:07'),
(354, 4, 'update', 'products', 'App\\Models\\Product', 36, '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"6000000.00\",\"sell_price\":\"6500000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T15:56:49.000000Z\",\"deleted_at\":null}', '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"600000000.00\",\"sell_price\":\"650000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T15:57:17.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Danbowl\' diperbarui', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 08:57:17', '2026-05-13 08:57:17'),
(355, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:58:35', '2026-05-13 08:58:35'),
(356, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 10, NULL, NULL, 'Tutup sesi kasir #10', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:58:53', '2026-05-13 08:58:53'),
(357, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 11, NULL, NULL, 'Buka sesi kasir di Blok B', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:58:57', '2026-05-13 08:58:57'),
(358, 4, 'update', 'products', 'App\\Models\\Product', 35, '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T11:13:47.000000Z\",\"deleted_at\":null}', '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"6000000.00\",\"sell_price\":\"6500000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T15:58:58.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Boxy\' diperbarui', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 08:58:58', '2026-05-13 08:58:58'),
(359, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 08:59:49', '2026-05-13 08:59:49'),
(360, 1, 'update', 'products', 'App\\Models\\Product', 36, '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"600000000.00\",\"sell_price\":\"650000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T15:57:17.000000Z\",\"deleted_at\":null}', '{\"id\":36,\"brand_id\":\"9\",\"category_id\":\"11\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Danbowl\",\"model_code\":\"W013\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:15:21.000000Z\",\"updated_at\":\"2026-05-13T16:00:25.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Danbowl\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:00:25', '2026-05-13 09:00:25'),
(361, 1, 'update', 'products', 'App\\Models\\Product', 35, '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"6000000.00\",\"sell_price\":\"6500000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T15:58:58.000000Z\",\"deleted_at\":null}', '{\"id\":35,\"brand_id\":\"9\",\"category_id\":\"7\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Boxy\",\"model_code\":\"W012\",\"description\":null,\"base_price\":\"60000.00\",\"sell_price\":\"65000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:13:47.000000Z\",\"updated_at\":\"2026-05-13T16:00:51.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Boxy\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:00:51', '2026-05-13 09:00:51'),
(362, 4, 'update', 'products', 'App\\Models\\Product', 34, '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"45000.00\",\"sell_price\":\"50000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T11:07:17.000000Z\",\"deleted_at\":null}', '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"4500000.00\",\"sell_price\":\"5000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T16:00:52.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Standard\' diperbarui', '114.122.73.182', NULL, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(363, 1, 'update', 'products', 'App\\Models\\Product', 34, '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"4500000.00\",\"sell_price\":\"5000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T16:00:52.000000Z\",\"deleted_at\":null}', '{\"id\":34,\"brand_id\":\"9\",\"category_id\":\"9\",\"product_type_id\":\"1\",\"name\":\"Wonderkey Standard\",\"model_code\":\"W011\",\"description\":null,\"base_price\":\"45000.00\",\"sell_price\":\"50000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:07:17.000000Z\",\"updated_at\":\"2026-05-13T16:01:22.000000Z\",\"deleted_at\":null}', 'Produk \'Wonderkey Standard\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:01:22', '2026-05-13 09:01:22'),
(364, 1, 'update', 'products', 'App\\Models\\Product', 33, '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"5500000.00\",\"sell_price\":\"6000000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T15:54:07.000000Z\",\"deleted_at\":null}', '{\"id\":33,\"brand_id\":\"9\",\"category_id\":\"10\",\"product_type_id\":\"1\",\"name\":\"Tshirt Longsleeve Wonderkey\",\"model_code\":\"W010\",\"description\":null,\"base_price\":\"55000.00\",\"sell_price\":\"60000.00\",\"is_active\":true,\"created_by\":\"1\",\"created_at\":\"2026-05-13T11:03:27.000000Z\",\"updated_at\":\"2026-05-13T16:01:49.000000Z\",\"deleted_at\":null}', 'Produk \'Tshirt Longsleeve Wonderkey\' diperbarui', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:01:49', '2026-05-13 09:01:49'),
(365, 10, 'create', 'Sale', 'App\\Models\\Sale', 19, NULL, NULL, 'Transaksi SAL-202605-0019 Rp 105.000', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 09:02:19', '2026-05-13 09:02:19'),
(366, 1, 'delete', 'products', NULL, NULL, NULL, NULL, 'Varian SVK-S001-HIJA-XL dihapus', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:02:20', '2026-05-13 09:02:20'),
(367, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:03:12', '2026-05-13 09:03:12'),
(368, 10, 'create', 'Sale', 'App\\Models\\Sale', 20, NULL, NULL, 'Transaksi SAL-202605-0020 Rp 65.000', '114.8.206.128', NULL, NULL, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 09:07:56', '2026-05-13 09:07:56'),
(369, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Andir\' diubah', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 09:17:17', '2026-05-13 09:17:17'),
(370, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Blok B\' diubah', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 09:17:42', '2026-05-13 09:17:42'),
(371, 1, 'update', 'stores', NULL, NULL, NULL, NULL, 'Toko \'Metro\' diubah', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 09:17:56', '2026-05-13 09:17:56'),
(372, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:42:26', '2026-05-13 09:42:26'),
(373, 1, 'create', 'brands', 'App\\Models\\Brand', 11, NULL, '{\"name\":\"Mostkill\",\"code\":\"MSK\",\"description\":null,\"is_active\":true}', 'Brand \'Mostkill\' dibuat', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 09:43:04', '2026-05-13 09:43:04'),
(374, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 12:41:52', '2026-05-13 12:41:52'),
(375, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-13 12:42:05', '2026-05-13 12:42:05'),
(376, 10, 'create', 'Sale', 'App\\Models\\Sale', 21, NULL, NULL, 'Transaksi SAL-202605-0021 Rp 50.000', '114.10.42.235', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 12:43:58', '2026-05-13 12:43:58'),
(377, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 11, NULL, NULL, 'Tutup sesi kasir #11', '114.10.42.235', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 12:50:08', '2026-05-13 12:50:08'),
(378, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 12, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.42.235', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 12:50:46', '2026-05-13 12:50:46'),
(379, 10, 'create', 'Sale', 'App\\Models\\Sale', 22, NULL, NULL, 'Transaksi SAL-202605-0022 Rp 350.000', '114.10.42.235', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 12:52:49', '2026-05-13 12:52:49'),
(380, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.115.111', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:03:04', '2026-05-13 13:03:04'),
(381, 10, 'create', 'Sale', 'App\\Models\\Sale', 23, NULL, NULL, 'Transaksi SAL-202605-0023 Rp 900.000', '114.122.115.111', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:04:04', '2026-05-13 13:04:04'),
(382, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.100.28', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 13:12:13', '2026-05-13 13:12:13'),
(383, 10, 'create', 'Sale', 'App\\Models\\Sale', 24, NULL, NULL, 'Transaksi SAL-202605-0024 Rp 45.000', '182.10.100.28', -6.89173154, 107.61305288, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 13:12:30', '2026-05-13 13:12:30'),
(384, 10, 'create', 'Sale', 'App\\Models\\Sale', 25, NULL, NULL, 'Transaksi SAL-202605-0025 Rp 45.000', '182.10.100.28', -6.89173154, 107.61305288, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 13:19:58', '2026-05-13 13:19:58'),
(385, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 12, NULL, NULL, 'Tutup sesi kasir #12', '114.122.115.111', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:24:44', '2026-05-13 13:24:44'),
(386, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:25:30', '2026-05-13 13:25:30'),
(387, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:26:51', '2026-05-13 13:26:51'),
(388, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 13, NULL, NULL, 'Buka sesi kasir di Blok B', '114.122.101.147', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:33:25', '2026-05-13 13:33:25'),
(389, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 13, NULL, NULL, 'Tutup sesi kasir #13', '114.122.115.115', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:38:15', '2026-05-13 13:38:15'),
(390, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 14, NULL, NULL, 'Buka sesi kasir di Blok B', '114.122.114.123', -6.89166076, 107.61322609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:43:17', '2026-05-13 13:43:17'),
(391, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.105.99', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:45:42', '2026-05-13 13:45:42'),
(392, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '182.10.100.28', -6.89173154, 107.61305288, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-13 13:46:44', '2026-05-13 13:46:44'),
(393, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', NULL, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 13:46:59', '2026-05-13 13:46:59');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `module`, `model_type`, `model_id`, `old_values`, `new_values`, `description`, `ip_address`, `latitude`, `longitude`, `user_agent`, `created_at`, `updated_at`) VALUES
(394, 10, 'create', 'Sale', 'App\\Models\\Sale', 26, NULL, NULL, 'Transaksi SAL-202605-0026 Rp 585.000', '114.122.101.147', -6.89185707, 107.61316803, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 13:47:49', '2026-05-13 13:47:49'),
(395, 10, 'create', 'Sale', 'App\\Models\\Sale', 27, NULL, NULL, 'Transaksi SAL-202605-0027 Rp 45.000', '114.122.101.147', -6.89185707, 107.61316803, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 13:49:44', '2026-05-13 13:49:44'),
(396, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.114.119', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-13 13:50:12', '2026-05-13 13:50:12'),
(397, 10, 'create', 'Sale', 'App\\Models\\Sale', 28, NULL, NULL, 'Transaksi SAL-202605-0028 Rp 44.990', '114.122.101.147', -6.89185707, 107.61316803, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 13:50:16', '2026-05-13 13:50:16'),
(398, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', -6.89185707, 107.61316803, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 13:52:29', '2026-05-13 13:52:29'),
(399, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.101.147', -6.89185707, 107.61316803, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 14:05:39', '2026-05-13 14:05:39'),
(400, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:52:30', '2026-05-13 20:52:30'),
(401, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 14, NULL, NULL, 'Tutup sesi kasir #14', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:52:49', '2026-05-13 20:52:49'),
(402, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 15, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:52:52', '2026-05-13 20:52:52'),
(403, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 15, NULL, NULL, 'Tutup sesi kasir #15', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:55:24', '2026-05-13 20:55:24'),
(404, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 16, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:55:41', '2026-05-13 20:55:41'),
(405, 10, 'create', 'Sale', 'App\\Models\\Sale', 29, NULL, NULL, 'Transaksi SAL-202605-0029 Rp 50.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 20:57:15', '2026-05-13 20:57:15'),
(406, 10, 'create', 'Sale', 'App\\Models\\Sale', 30, NULL, NULL, 'Transaksi SAL-202605-0030 Rp 60.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-13 21:08:30', '2026-05-13 21:08:30'),
(407, 9, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.122.107.31', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15', '2026-05-13 22:22:24', '2026-05-13 22:22:24'),
(408, 10, 'create', 'Sale', 'App\\Models\\Sale', 31, NULL, NULL, 'Transaksi SAL-202605-0031 Rp 200.000', '114.8.208.10', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 00:05:50', '2026-05-14 00:05:50'),
(409, 10, 'create', 'Sale', 'App\\Models\\Sale', 32, NULL, NULL, 'Transaksi SAL-202605-0032 Rp 60.000', '114.8.208.10', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 00:07:30', '2026-05-14 00:07:30'),
(410, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.145.28', -6.89171601, 107.61313035, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-14 07:18:26', '2026-05-14 07:18:26'),
(411, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 16, NULL, NULL, 'Tutup sesi kasir #16', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:04:20', '2026-05-14 15:04:20'),
(412, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:05:00', '2026-05-14 15:05:00'),
(413, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:05:51', '2026-05-14 15:05:51'),
(414, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:06:05', '2026-05-14 15:06:05'),
(415, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:06:30', '2026-05-14 15:06:30'),
(416, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 17, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:06:37', '2026-05-14 15:06:37'),
(417, 10, 'create', 'Sale', 'App\\Models\\Sale', 33, NULL, NULL, 'Transaksi SAL-202605-0033 Rp 50.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:06:51', '2026-05-14 15:06:51'),
(418, 10, 'create', 'Sale', 'App\\Models\\Sale', 34, NULL, NULL, 'Transaksi SAL-202605-0034 Rp 50.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:11:25', '2026-05-14 15:11:25'),
(419, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 17, NULL, NULL, 'Tutup sesi kasir #17', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:12:04', '2026-05-14 15:12:04'),
(420, 10, 'open', 'CashSession', 'App\\Models\\CashSession', 18, NULL, NULL, 'Buka sesi kasir di Blok B', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:15:28', '2026-05-14 15:15:28'),
(421, 10, 'create', 'Sale', 'App\\Models\\Sale', 35, NULL, NULL, 'Transaksi SAL-202605-0035 Rp 60.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:15:44', '2026-05-14 15:15:44'),
(422, 10, 'create', 'Sale', 'App\\Models\\Sale', 36, NULL, NULL, 'Transaksi SAL-202605-0036 Rp 130.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:56:39', '2026-05-14 15:56:39'),
(423, 10, 'create', 'Sale', 'App\\Models\\Sale', 37, NULL, NULL, 'Transaksi SAL-202605-0037 Rp 3.700.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:57:47', '2026-05-14 15:57:47'),
(424, 10, 'create', 'Sale', 'App\\Models\\Sale', 38, NULL, NULL, 'Transaksi SAL-202605-0038 Rp 310.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 15:59:53', '2026-05-14 15:59:53'),
(425, 10, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 16:19:22', '2026-05-14 16:19:22'),
(426, 1, 'login', 'auth', NULL, NULL, NULL, NULL, 'Login berhasil', '114.10.145.15', -6.89171601, 107.61313035, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', '2026-05-14 16:34:45', '2026-05-14 16:34:45'),
(427, 10, 'create', 'Sale', 'App\\Models\\Sale', 39, NULL, NULL, 'Transaksi SAL-202605-0039 Rp 185.000', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 16:51:11', '2026-05-14 16:51:11'),
(428, 10, 'close', 'CashSession', 'App\\Models\\CashSession', 18, NULL, NULL, 'Tutup sesi kasir #18', '114.10.70.154', -6.22949415, 106.95026229, 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', '2026-05-14 16:54:37', '2026-05-14 16:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `code`, `slug`, `description`, `logo`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sevenkey Original', 'SKO', 'sevenkey-original', NULL, NULL, 1, '2026-05-08 09:16:45', '2026-05-11 03:15:10', '2026-05-11 03:15:10'),
(2, 'Urban Wear', 'UBW', 'urban-wear', NULL, NULL, 1, '2026-05-08 09:16:45', '2026-05-11 03:15:16', '2026-05-11 03:15:16'),
(3, 'Street Core', 'STC', 'street-core', NULL, NULL, 1, '2026-05-08 09:16:45', '2026-05-11 03:15:13', '2026-05-11 03:15:13'),
(4, 'Classic Line', 'CLN', 'classic-line', NULL, NULL, 1, '2026-05-08 09:16:45', '2026-05-11 03:15:07', '2026-05-11 03:15:07'),
(5, 'Active Fit', 'ACF', 'active-fit', NULL, NULL, 1, '2026-05-08 09:16:45', '2026-05-11 03:15:02', '2026-05-11 03:15:02'),
(6, 'Sevenkey', 'SVK', 'sevenkey', NULL, '/tmp/php25mepvjroeu38a4dmZr', 1, '2026-05-11 03:38:24', '2026-05-11 03:38:24', NULL),
(7, 'Nexttime', 'NT', 'nexttime', NULL, NULL, 1, '2026-05-11 05:09:59', '2026-05-12 02:53:28', NULL),
(8, 'Heavenkey', 'HVK', 'heavenkey', NULL, NULL, 1, '2026-05-11 05:10:35', '2026-05-12 02:53:45', NULL),
(9, 'Wonderkey', 'WK', 'wonderkey', NULL, NULL, 1, '2026-05-11 05:11:06', '2026-05-11 05:11:06', NULL),
(10, 'Holistic', 'HLC', 'holistic', NULL, NULL, 1, '2026-05-11 05:11:27', '2026-05-11 05:11:27', NULL),
(11, 'Mostkill', 'MSK', 'mostkill', NULL, NULL, 1, '2026-05-13 09:43:04', '2026-05-13 09:43:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('sevenkey-erp-cache-global_monitor_cast', 'a:3:{s:6:\"status\";s:4:\"cast\";s:3:\"url\";s:45:\"https://sevenkey.id/warehouse/monitor?kiosk=1\";s:9:\"timestamp\";i:1778743386;}', 1778743446),
('sevenkey-erp-cache-holysticsrore2@gmail.com|114.8.206.128', 'i:1;', 1778670723),
('sevenkey-erp-cache-holysticsrore2@gmail.com|114.8.206.128:timer', 'i:1778670723;', 1778670723),
('sevenkey-erp-cache-holysticstoe2@gmail.com|118.99.80.230', 'i:1;', 1778584563),
('sevenkey-erp-cache-holysticstoe2@gmail.com|118.99.80.230:timer', 'i:1778584563;', 1778584563),
('sevenkey-erp-cache-holysticstore@gmail.com|114.8.206.128', 'i:1;', 1778670737),
('sevenkey-erp-cache-holysticstore@gmail.com|114.8.206.128:timer', 'i:1778670737;', 1778670737),
('sevenkey-erp-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:71:{i:0;a:4:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:14:\"view dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:6;}}i:1;a:4:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:12:\"manage users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:12:\"manage roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";s:1:\"4\";s:1:\"b\";s:18:\"manage permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:15:\"manage settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";s:1:\"6\";s:1:\"b\";s:11:\"view master\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:6;a:4:{s:1:\"a\";s:1:\"7\";s:1:\"b\";s:13:\"create master\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:7;a:4:{s:1:\"a\";s:1:\"8\";s:1:\"b\";s:13:\"update master\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";s:1:\"9\";s:1:\"b\";s:13:\"delete master\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:9;a:4:{s:1:\"a\";s:2:\"10\";s:1:\"b\";s:12:\"view product\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;i:4;i:6;}}i:10;a:4:{s:1:\"a\";s:2:\"11\";s:1:\"b\";s:14:\"create product\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:11;a:4:{s:1:\"a\";s:2:\"12\";s:1:\"b\";s:14:\"update product\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:12;a:4:{s:1:\"a\";s:2:\"13\";s:1:\"b\";s:14:\"delete product\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:13;a:4:{s:1:\"a\";s:2:\"14\";s:1:\"b\";s:14:\"manage product\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:14;a:4:{s:1:\"a\";s:2:\"15\";s:1:\"b\";s:19:\"print product label\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:15;a:4:{s:1:\"a\";s:2:\"16\";s:1:\"b\";s:14:\"view warehouse\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;}}i:16;a:4:{s:1:\"a\";s:2:\"17\";s:1:\"b\";s:22:\"create warehouse stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:5;}}i:17;a:4:{s:1:\"a\";s:2:\"18\";s:1:\"b\";s:22:\"update warehouse stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:5;}}i:18;a:4:{s:1:\"a\";s:2:\"19\";s:1:\"b\";s:22:\"adjust warehouse stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:19;a:4:{s:1:\"a\";s:2:\"20\";s:1:\"b\";s:24:\"view warehouse dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;}}i:20;a:4:{s:1:\"a\";s:2:\"21\";s:1:\"b\";s:16:\"manage warehouse\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:21;a:4:{s:1:\"a\";s:2:\"22\";s:1:\"b\";s:13:\"view shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;i:4;i:6;}}i:22;a:4:{s:1:\"a\";s:2:\"23\";s:1:\"b\";s:15:\"create shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:23;a:4:{s:1:\"a\";s:2:\"24\";s:1:\"b\";s:15:\"update shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:6;}}i:24;a:4:{s:1:\"a\";s:2:\"25\";s:1:\"b\";s:16:\"approve shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:25;a:4:{s:1:\"a\";s:2:\"26\";s:1:\"b\";s:16:\"receive shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:6;}}i:26;a:4:{s:1:\"a\";s:2:\"27\";s:1:\"b\";s:14:\"print shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;i:4;i:6;}}i:27;a:4:{s:1:\"a\";s:2:\"28\";s:1:\"b\";s:15:\"cancel shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:28;a:4:{s:1:\"a\";s:2:\"29\";s:1:\"b\";s:10:\"view store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:29;a:4:{s:1:\"a\";s:2:\"30\";s:1:\"b\";s:12:\"view catalog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:30;a:4:{s:1:\"a\";s:2:\"31\";s:1:\"b\";s:18:\"manage store stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:31;a:4:{s:1:\"a\";s:2:\"32\";s:1:\"b\";s:22:\"receive store shipment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:32;a:4:{s:1:\"a\";s:2:\"33\";s:1:\"b\";s:22:\"request store transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:33;a:4:{s:1:\"a\";s:2:\"34\";s:1:\"b\";s:22:\"approve store transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:34;a:4:{s:1:\"a\";s:2:\"35\";s:1:\"b\";s:13:\"view transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:35;a:4:{s:1:\"a\";s:2:\"36\";s:1:\"b\";s:15:\"create transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:36;a:4:{s:1:\"a\";s:2:\"37\";s:1:\"b\";s:16:\"approve transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:37;a:4:{s:1:\"a\";s:2:\"38\";s:1:\"b\";s:16:\"receive transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:38;a:4:{s:1:\"a\";s:2:\"39\";s:1:\"b\";s:15:\"cancel transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:39;a:4:{s:1:\"a\";s:2:\"40\";s:1:\"b\";s:14:\"print transfer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:40;a:4:{s:1:\"a\";s:2:\"41\";s:1:\"b\";s:10:\"access pos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:41;a:4:{s:1:\"a\";s:2:\"42\";s:1:\"b\";s:8:\"view pos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:42;a:4:{s:1:\"a\";s:2:\"43\";s:1:\"b\";s:12:\"process sale\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:43;a:4:{s:1:\"a\";s:2:\"44\";s:1:\"b\";s:14:\"apply discount\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:44;a:4:{s:1:\"a\";s:2:\"45\";s:1:\"b\";s:17:\"open cash session\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:45;a:4:{s:1:\"a\";s:2:\"46\";s:1:\"b\";s:18:\"close cash session\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:46;a:4:{s:1:\"a\";s:2:\"47\";s:1:\"b\";s:17:\"view cash session\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:6;i:2;i:7;}}i:47;a:4:{s:1:\"a\";s:2:\"48\";s:1:\"b\";s:20:\"view customer return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:48;a:4:{s:1:\"a\";s:2:\"49\";s:1:\"b\";s:23:\"process customer return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:49;a:4:{s:1:\"a\";s:2:\"50\";s:1:\"b\";s:17:\"view store return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;i:4;i:6;}}i:50;a:4:{s:1:\"a\";s:2:\"51\";s:1:\"b\";s:19:\"create store return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:51;a:4:{s:1:\"a\";s:2:\"52\";s:1:\"b\";s:20:\"approve store return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:52;a:4:{s:1:\"a\";s:2:\"53\";s:1:\"b\";s:20:\"receive store return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:6;}}i:53;a:4:{s:1:\"a\";s:2:\"54\";s:1:\"b\";s:14:\"inspect return\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:54;a:4:{s:1:\"a\";s:2:\"55\";s:1:\"b\";s:17:\"view stock opname\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;i:4;i:6;}}i:55;a:4:{s:1:\"a\";s:2:\"56\";s:1:\"b\";s:19:\"create stock opname\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:56;a:4:{s:1:\"a\";s:2:\"57\";s:1:\"b\";s:19:\"submit stock opname\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:6;}}i:57;a:4:{s:1:\"a\";s:2:\"58\";s:1:\"b\";s:20:\"approve stock opname\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:58;a:4:{s:1:\"a\";s:2:\"59\";s:1:\"b\";s:19:\"delete stock opname\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}i:59;a:4:{s:1:\"a\";s:2:\"60\";s:1:\"b\";s:12:\"view finance\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:6;}}i:60;a:4:{s:1:\"a\";s:2:\"61\";s:1:\"b\";s:14:\"export finance\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:61;a:4:{s:1:\"a\";s:2:\"62\";s:1:\"b\";s:14:\"manage finance\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:62;a:4:{s:1:\"a\";s:2:\"63\";s:1:\"b\";s:11:\"view report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:6;}}i:63;a:4:{s:1:\"a\";s:2:\"64\";s:1:\"b\";s:13:\"export report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:6;}}i:64;a:4:{s:1:\"a\";s:2:\"65\";s:1:\"b\";s:12:\"print report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:6;}}i:65;a:4:{s:1:\"a\";s:2:\"66\";s:1:\"b\";s:14:\"view audit log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";s:2:\"67\";s:1:\"b\";s:13:\"view expenses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:67;a:4:{s:1:\"a\";s:2:\"68\";s:1:\"b\";s:15:\"create expenses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:68;a:4:{s:1:\"a\";s:2:\"69\";s:1:\"b\";s:15:\"update expenses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:69;a:4:{s:1:\"a\";s:2:\"70\";s:1:\"b\";s:15:\"delete expenses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:70;a:4:{s:1:\"a\";s:2:\"71\";s:1:\"b\";s:24:\"create local stock entry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:4;i:2;i:6;}}}s:5:\"roles\";a:7:{i:0;a:3:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:10:\"superadmin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:5:\"owner\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:7:\"finance\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";s:1:\"4\";s:1:\"b\";s:12:\"admin gudang\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";s:1:\"6\";s:1:\"b\";s:11:\"kepala toko\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:15:\"operator gudang\";s:1:\"c\";s:3:\"web\";}i:6;a:3:{s:1:\"a\";s:1:\"7\";s:1:\"b\";s:5:\"kasir\";s:1:\"c\";s:3:\"web\";}}}', 1778857382);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_sessions`
--

CREATE TABLE `cash_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `opening_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `closing_amount` decimal(15,2) DEFAULT NULL,
  `expected_amount` decimal(15,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `opened_at` timestamp NOT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_sessions`
--

INSERT INTO `cash_sessions` (`id`, `store_id`, `user_id`, `status`, `opening_amount`, `closing_amount`, `expected_amount`, `notes`, `opened_at`, `closed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'closed', 1000000.00, 1000000.00, 1000000.00, NULL, '2026-05-11 03:34:49', '2026-05-12 03:54:51', '2026-05-11 03:34:49', '2026-05-12 03:54:51'),
(2, 1, 10, 'closed', 0.00, 100000.00, 135000.00, NULL, '2026-05-11 04:59:36', '2026-05-11 05:13:41', '2026-05-11 04:59:36', '2026-05-11 05:13:41'),
(3, 3, 11, 'open', 0.00, NULL, NULL, NULL, '2026-05-11 05:06:59', NULL, '2026-05-11 05:06:59', '2026-05-11 05:06:59'),
(4, 1, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-11 05:15:50', '2026-05-11 05:18:34', '2026-05-11 05:15:50', '2026-05-11 05:18:34'),
(5, 1, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-11 05:18:45', '2026-05-11 06:10:23', '2026-05-11 05:18:45', '2026-05-11 06:10:23'),
(6, 1, 7, 'open', 0.00, NULL, NULL, NULL, '2026-05-11 12:33:25', NULL, '2026-05-11 12:33:25', '2026-05-11 12:33:25'),
(7, 2, 9, 'open', 0.00, NULL, NULL, NULL, '2026-05-11 22:37:15', NULL, '2026-05-11 22:37:15', '2026-05-11 22:37:15'),
(8, 1, 6, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-12 04:23:16', '2026-05-12 04:36:09', '2026-05-12 04:23:16', '2026-05-12 04:36:09'),
(9, 1, 6, 'open', 0.00, NULL, NULL, NULL, '2026-05-13 03:19:42', NULL, '2026-05-13 03:19:42', '2026-05-13 03:19:42'),
(10, 3, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-13 04:12:07', '2026-05-13 08:58:53', '2026-05-13 04:12:07', '2026-05-13 08:58:53'),
(11, 1, 10, 'closed', 0.00, 0.00, 50000.00, NULL, '2026-05-13 08:58:57', '2026-05-13 12:50:08', '2026-05-13 08:58:57', '2026-05-13 12:50:08'),
(12, 1, 10, 'closed', 0.00, 0.00, 350000.00, NULL, '2026-05-13 12:50:45', '2026-05-13 13:24:44', '2026-05-13 12:50:45', '2026-05-13 13:24:44'),
(13, 1, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-13 13:33:25', '2026-05-13 13:38:15', '2026-05-13 13:33:25', '2026-05-13 13:38:15'),
(14, 1, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-13 13:43:17', '2026-05-13 20:52:49', '2026-05-13 13:43:17', '2026-05-13 20:52:49'),
(15, 1, 10, 'closed', 0.00, 0.00, 0.00, NULL, '2026-05-13 20:52:52', '2026-05-13 20:55:23', '2026-05-13 20:52:52', '2026-05-13 20:55:23'),
(16, 1, 10, 'closed', 0.00, 0.00, 310000.00, NULL, '2026-05-13 20:55:41', '2026-05-14 15:04:20', '2026-05-13 20:55:41', '2026-05-14 15:04:20'),
(17, 1, 10, 'closed', 0.00, 99000.00, 0.00, NULL, '2026-05-14 15:06:37', '2026-05-14 15:12:04', '2026-05-14 15:06:37', '2026-05-14 15:12:04'),
(18, 1, 10, 'closed', 0.00, 0.00, 495000.00, NULL, '2026-05-14 15:15:28', '2026-05-14 16:54:37', '2026-05-14 15:15:28', '2026-05-14 16:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `slug`, `parent_id`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Atasan', 'ATS', 'atasan', NULL, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-13 13:47:15', NULL),
(2, 'Bawahan', 'BWH', 'bawahan', NULL, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-11 03:38:37', '2026-05-11 03:38:37'),
(3, 'Outer', 'OUT', 'outer', NULL, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-11 03:38:40', '2026-05-11 03:38:40'),
(4, 'Aksesoris', 'AKS', 'aksesoris', NULL, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-11 03:38:30', '2026-05-11 03:38:30'),
(5, 'TShirt', '0091', 'tshirt', NULL, NULL, 1, 1, '2026-05-11 03:38:57', '2026-05-13 13:47:15', NULL),
(6, 'Oversize', '002', 'oversize', NULL, NULL, 0, 1, '2026-05-11 06:58:22', '2026-05-13 04:00:15', NULL),
(7, 'Boxy', '003', 'boxy', NULL, NULL, 0, 1, '2026-05-11 07:00:34', '2026-05-11 07:00:34', NULL),
(8, 'Regular', '001', 'regular', NULL, NULL, 0, 1, '2026-05-11 07:12:25', '2026-05-13 06:09:55', NULL),
(9, 'Standard', '004', 'standard', NULL, NULL, 4, 1, '2026-05-13 04:00:32', '2026-05-13 04:00:32', NULL),
(10, 'Longsleeve', '005', 'longsleeve', NULL, NULL, 5, 1, '2026-05-13 04:01:44', '2026-05-13 04:01:44', NULL),
(11, 'Danbowl', '006', 'danbowl', NULL, NULL, 6, 1, '2026-05-13 04:02:03', '2026-05-13 04:02:03', NULL),
(12, 'Polos Saku', '007', 'polos-saku', NULL, NULL, 7, 1, '2026-05-13 04:02:18', '2026-05-13 04:02:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `hex_code` varchar(7) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `hex_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Hitam', 'BLK', '#000000', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'Putih', 'WHT', '#FFFFFF', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'Abu', 'GRY', '#808080', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(4, 'Navy', 'NVY', '#001F5B', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(5, 'Merah', 'RED', '#FF0000', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(6, 'Biru', 'BLU', '#0000FF', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(7, 'Hijau', 'GRN', '#008000', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(8, 'Kuning', 'YLW', '#FFFF00', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(9, 'Coklat', 'BRN', '#8B4513', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(10, 'Krem', 'CRM', '#FFF5E4', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `customer_returns`
--

CREATE TABLE `customer_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_no` varchar(255) NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `return_reason_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processed') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_returns`
--

INSERT INTO `customer_returns` (`id`, `return_no`, `sale_id`, `store_id`, `return_reason_id`, `status`, `notes`, `processed_at`, `processed_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'CRT-202605-0001', 4, 1, 3, 'processed', NULL, '2026-05-11 05:10:18', 10, 10, '2026-05-11 05:10:18', '2026-05-11 05:10:18'),
(2, 'CRT-202605-0002', 4, 1, 2, 'processed', NULL, '2026-05-11 06:02:15', 10, 10, '2026-05-11 06:02:15', '2026-05-11 06:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `customer_return_items`
--

CREATE TABLE `customer_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `condition` enum('good','damaged') NOT NULL DEFAULT 'good',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_return_items`
--

INSERT INTO `customer_return_items` (`id`, `customer_return_id`, `product_variant_id`, `qty`, `unit_price`, `subtotal`, `condition`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 45000.00, 45000.00, 'good', '2026-05-11 05:10:18', '2026-05-11 05:10:18'),
(2, 2, 1, 1, 45000.00, 45000.00, 'good', '2026-05-11 06:02:15', '2026-05-11 06:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `expense_type` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `expense_date` date NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `description`, `expense_type`, `amount`, `receipt_path`, `expense_date`, `store_id`, `warehouse_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Erik', NULL, 'Lainnya', 100000.00, NULL, '2026-05-13', 1, NULL, 10, '2026-05-13 12:56:55', '2026-05-13 12:56:55'),
(2, 'Beli anggur merah', NULL, 'Fee & Transaksi', 500000.00, NULL, '2026-05-13', 1, NULL, 10, '2026-05-13 12:57:27', '2026-05-13 12:57:27');

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
-- Table structure for table `inbounds`
--

CREATE TABLE `inbounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('draft','received') NOT NULL DEFAULT 'draft',
  `received_at` timestamp NULL DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inbounds`
--

INSERT INTO `inbounds` (`id`, `warehouse_id`, `reference_no`, `supplier_name`, `notes`, `status`, `received_at`, `received_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'INB-202605-0001', 'Ibu', NULL, 'received', '2026-05-11 03:41:31', 4, 4, '2026-05-11 03:41:31', '2026-05-11 03:41:31', NULL),
(2, 1, 'INB-202605-0002', 'konveksi ibu', NULL, 'received', '2026-05-12 04:07:54', 4, 4, '2026-05-12 04:07:54', '2026-05-12 04:07:54', NULL),
(3, 1, 'INB-202605-0003', 'konveksi ibu', NULL, 'received', '2026-05-12 04:10:43', 4, 4, '2026-05-12 04:10:43', '2026-05-12 04:10:43', NULL),
(4, 1, 'INB-202605-0004', 'konveksi ibu', NULL, 'received', '2026-05-12 04:14:46', 4, 4, '2026-05-12 04:14:46', '2026-05-12 04:14:46', NULL),
(5, 1, 'INB-202605-0005', 'konveksi ibu', NULL, 'received', '2026-05-12 04:20:08', 4, 4, '2026-05-12 04:20:08', '2026-05-12 04:20:08', NULL),
(6, 1, 'INB-202605-0006', 'Konveksi ibu', NULL, 'received', '2026-05-13 06:48:47', 4, 4, '2026-05-13 06:48:47', '2026-05-13 06:48:47', NULL),
(7, 1, 'INB-202605-0007', 'Konveksi ibu', NULL, 'received', '2026-05-13 06:53:02', 4, 4, '2026-05-13 06:53:01', '2026-05-13 06:53:02', NULL),
(8, 1, 'INB-202605-0008', 'Konveksi ibu', NULL, 'received', '2026-05-13 06:55:42', 4, 4, '2026-05-13 06:55:42', '2026-05-13 06:55:42', NULL),
(9, 1, 'INB-202605-0009', 'Konveksi ibu', NULL, 'received', '2026-05-13 06:58:45', 4, 4, '2026-05-13 06:58:45', '2026-05-13 06:58:45', NULL),
(10, 1, 'INB-202605-0010', 'Konveksi ibu', NULL, 'received', '2026-05-13 07:34:06', 4, 4, '2026-05-13 07:34:06', '2026-05-13 07:34:06', NULL),
(11, 1, 'INB-202605-0011', 'Konveksi ibu', NULL, 'received', '2026-05-13 07:35:16', 4, 4, '2026-05-13 07:35:16', '2026-05-13 07:35:16', NULL),
(12, 1, 'INB-202605-0012', 'Konveksi ibu', NULL, 'received', '2026-05-13 07:36:18', 4, 4, '2026-05-13 07:36:18', '2026-05-13 07:36:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inbound_items`
--

CREATE TABLE `inbound_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbound_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inbound_items`
--

INSERT INTO `inbound_items` (`id`, `inbound_id`, `product_variant_id`, `qty`, `unit_cost`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1000, 0.00, '2026-05-11 03:41:31', '2026-05-11 03:41:31'),
(2, 2, 60, 30, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(3, 2, 61, 30, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(4, 2, 48, 30, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(5, 2, 49, 28, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(6, 2, 50, 25, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(7, 2, 51, 28, 0.00, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(8, 3, 46, 29, 0.00, '2026-05-12 04:10:43', '2026-05-12 04:10:43'),
(9, 3, 47, 28, 0.00, '2026-05-12 04:10:43', '2026-05-12 04:10:43'),
(10, 4, 54, 30, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(11, 4, 55, 30, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(12, 4, 56, 29, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(13, 4, 57, 29, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(14, 4, 58, 30, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(15, 4, 59, 30, 0.00, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(16, 5, 52, 29, 0.00, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(17, 5, 53, 29, 0.00, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(18, 5, 62, 30, 0.00, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(19, 5, 63, 30, 0.00, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(20, 6, 77, 500, 0.00, '2026-05-13 06:48:47', '2026-05-13 06:48:47'),
(21, 6, 78, 500, 0.00, '2026-05-13 06:48:47', '2026-05-13 06:48:47'),
(22, 7, 71, 500, 0.00, '2026-05-13 06:53:02', '2026-05-13 06:53:02'),
(23, 7, 72, 500, 0.00, '2026-05-13 06:53:02', '2026-05-13 06:53:02'),
(24, 7, 74, 500, 0.00, '2026-05-13 06:53:02', '2026-05-13 06:53:02'),
(25, 7, 75, 500, 0.00, '2026-05-13 06:53:02', '2026-05-13 06:53:02'),
(26, 8, 65, 500, 0.00, '2026-05-13 06:55:42', '2026-05-13 06:55:42'),
(27, 8, 66, 500, 0.00, '2026-05-13 06:55:42', '2026-05-13 06:55:42'),
(28, 8, 68, 500, 0.00, '2026-05-13 06:55:42', '2026-05-13 06:55:42'),
(29, 8, 69, 500, 0.00, '2026-05-13 06:55:42', '2026-05-13 06:55:42'),
(30, 9, 80, 500, 0.00, '2026-05-13 06:58:45', '2026-05-13 06:58:45'),
(31, 9, 81, 500, 0.00, '2026-05-13 06:58:45', '2026-05-13 06:58:45'),
(32, 10, 82, 500, 0.00, '2026-05-13 07:34:06', '2026-05-13 07:34:06'),
(33, 10, 83, 500, 0.00, '2026-05-13 07:34:06', '2026-05-13 07:34:06'),
(34, 10, 84, 500, 0.00, '2026-05-13 07:34:06', '2026-05-13 07:34:06'),
(35, 11, 85, 500, 0.00, '2026-05-13 07:35:16', '2026-05-13 07:35:16'),
(36, 11, 86, 500, 0.00, '2026-05-13 07:35:16', '2026-05-13 07:35:16'),
(37, 11, 87, 500, 0.00, '2026-05-13 07:35:16', '2026-05-13 07:35:16'),
(38, 12, 89, 500, 0.00, '2026-05-13 07:36:18', '2026-05-13 07:36:18'),
(39, 12, 90, 500, 0.00, '2026-05-13 07:36:18', '2026-05-13 07:36:18'),
(40, 12, 92, 500, 0.00, '2026-05-13 07:36:18', '2026-05-13 07:36:18'),
(41, 12, 93, 500, 0.00, '2026-05-13 07:36:18', '2026-05-13 07:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_22_164606_create_permission_tables', 1),
(5, '2026_04_22_200001_create_brands_table', 1),
(6, '2026_04_22_200002_create_categories_table', 1),
(7, '2026_04_22_200003_create_product_types_table', 1),
(8, '2026_04_22_200004_create_colors_table', 1),
(9, '2026_04_22_200005_create_sizes_table', 1),
(10, '2026_04_22_200006_create_warehouses_table', 1),
(11, '2026_04_22_200007_create_stores_table', 1),
(12, '2026_04_22_200008_create_user_store_table', 1),
(13, '2026_04_22_200009_create_payment_methods_table', 1),
(14, '2026_04_22_200010_create_return_reasons_table', 1),
(15, '2026_04_22_200011_create_audit_logs_table', 1),
(16, '2026_04_22_200012_create_products_table', 1),
(17, '2026_04_22_200013_create_product_variants_table', 1),
(18, '2026_04_22_200014_create_product_images_table', 1),
(19, '2026_04_22_200015_create_stocks_table', 1),
(20, '2026_04_22_200016_create_stock_ledgers_table', 1),
(21, '2026_04_22_200017_create_inbounds_table', 1),
(22, '2026_04_22_200018_create_inbound_items_table', 1),
(23, '2026_04_22_200019_create_shipments_table', 1),
(24, '2026_04_22_200020_create_shipment_items_table', 1),
(25, '2026_04_23_000021_create_transfers_table', 1),
(26, '2026_04_23_000022_create_transfer_items_table', 1),
(27, '2026_04_23_000023_create_cash_sessions_table', 1),
(28, '2026_04_23_000024_create_sales_table', 1),
(29, '2026_04_23_000025_create_sale_items_table', 1),
(30, '2026_04_23_000026_create_customer_returns_table', 1),
(31, '2026_04_23_000027_create_customer_return_items_table', 1),
(32, '2026_04_23_000028_create_store_returns_table', 1),
(33, '2026_04_23_000029_create_store_return_items_table', 1),
(34, '2026_04_23_000030_create_stock_opnames_table', 1),
(35, '2026_04_23_000031_create_stock_opname_items_table', 1),
(36, '2026_05_04_130008_create_expenses_table', 1),
(37, '2026_05_04_132656_add_type_and_receipt_to_expenses_table', 1),
(38, '2026_05_04_135808_create_user_warehouse_table', 1),
(39, '2026_05_10_101409_add_reward_columns_to_products_and_sale_items_tables', 2),
(40, '2026_05_12_184214_add_bank_details_to_stores_table', 3),
(41, '2026_05_12_185545_add_bank_account_name_to_stores_table', 3),
(42, '2026_05_13_002519_add_monthly_target_qty_to_stores_table', 3),
(43, '2026_05_13_005013_create_store_targets_table', 3),
(44, '2026_05_13_140400_add_local_stock_entry_permission', 4),
(45, '2026_05_13_140406_add_local_stock_entry_permission', 4),
(46, '2026_05_13_191242_add_location_to_audit_logs_table', 5),
(47, '2026_05_14_051151_add_product_image_id_to_product_variants_table', 6);

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
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 8),
(6, 'App\\Models\\User', 9),
(6, 'App\\Models\\User', 10),
(6, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` enum('cash','transfer','qris','card','other') NOT NULL DEFAULT 'cash',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `code`, `type`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Tunai', 'CASH', 'cash', 1, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'Transfer Bank', 'TF', 'transfer', 1, 2, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'QRIS', 'QRIS', 'qris', 0, 3, '2026-05-08 09:16:45', '2026-05-14 07:19:17'),
(4, 'Debit Card', 'DEBIT', 'card', 0, 4, '2026-05-08 09:16:45', '2026-05-14 07:19:23'),
(5, 'Credit Card', 'CC', 'card', 0, 5, '2026-05-08 09:16:45', '2026-05-14 07:19:26');

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
(1, 'view dashboard', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'manage users', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'manage roles', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(4, 'manage permissions', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(5, 'manage settings', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(6, 'view master', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(7, 'create master', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(8, 'update master', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(9, 'delete master', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(10, 'view product', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(11, 'create product', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(12, 'update product', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(13, 'delete product', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(14, 'manage product', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(15, 'print product label', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(16, 'view warehouse', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(17, 'create warehouse stock', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(18, 'update warehouse stock', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(19, 'adjust warehouse stock', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(20, 'view warehouse dashboard', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(21, 'manage warehouse', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(22, 'view shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(23, 'create shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(24, 'update shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(25, 'approve shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(26, 'receive shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(27, 'print shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(28, 'cancel shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(29, 'view store', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(30, 'view catalog', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(31, 'manage store stock', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(32, 'receive store shipment', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(33, 'request store transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(34, 'approve store transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(35, 'view transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(36, 'create transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(37, 'approve transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(38, 'receive transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(39, 'cancel transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(40, 'print transfer', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(41, 'access pos', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(42, 'view pos', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(43, 'process sale', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(44, 'apply discount', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(45, 'open cash session', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(46, 'close cash session', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(47, 'view cash session', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(48, 'view customer return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(49, 'process customer return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(50, 'view store return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(51, 'create store return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(52, 'approve store return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(53, 'receive store return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(54, 'inspect return', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(55, 'view stock opname', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(56, 'create stock opname', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(57, 'submit stock opname', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(58, 'approve stock opname', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(59, 'delete stock opname', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(60, 'view finance', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(61, 'export finance', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(62, 'manage finance', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(63, 'view report', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(64, 'export report', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(65, 'print report', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(66, 'view audit log', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(67, 'view expenses', 'web', '2026-05-13 09:42:28', '2026-05-13 09:42:28'),
(68, 'create expenses', 'web', '2026-05-13 09:42:28', '2026-05-13 09:42:28'),
(69, 'update expenses', 'web', '2026-05-13 09:45:08', '2026-05-13 09:45:08'),
(70, 'delete expenses', 'web', '2026-05-13 09:45:08', '2026-05-13 09:45:08'),
(71, 'create local stock entry', 'web', '2026-05-13 07:15:41', '2026-05-13 07:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `model_code` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `base_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `sell_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `product_type_id`, `name`, `model_code`, `description`, `base_price`, `sell_price`, `is_active`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 5, 1, 'Boxy Reguler', 'S001', NULL, 35000.00, 45000.00, 1, 4, '2026-05-11 03:40:11', '2026-05-11 03:40:11', NULL),
(2, 7, 5, 1, 'Scary Diner Reguler', 'S002', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:09:19', '2026-05-11 05:11:44', NULL),
(3, 7, 5, 1, 'Grim Black Reguler', 'N001', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:17:24', '2026-05-11 05:17:24', NULL),
(4, 7, 5, 1, 'Shadow Mask Reguler', 'N002', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:20:32', '2026-05-11 05:20:32', NULL),
(5, 6, 5, 1, 'Percepcjon Reguler', 'S003', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:23:22', '2026-05-11 05:23:22', NULL),
(6, 6, 5, 1, 'Sound of Noise Reguler', 'S004', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:24:28', '2026-05-11 05:24:28', NULL),
(7, 6, 5, 1, 'Eraser Head Reguler', 'S005', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:25:23', '2026-05-11 05:25:23', NULL),
(8, 6, 5, 1, 'Nox Kills Reguler', 'S006', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:26:34', '2026-05-11 05:26:34', NULL),
(9, 6, 5, 1, 'Pleasure blue Reguler', 'S007', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:27:52', '2026-05-11 05:27:52', NULL),
(10, 6, 5, 1, 'Fire Zippo Reguler', 'S008', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:32:48', '2026-05-11 05:32:48', NULL),
(11, 6, 5, 1, 'Orange Bubble Reguleer', 'S009', NULL, 0.00, 0.00, 1, 4, '2026-05-11 05:37:41', '2026-05-11 05:37:41', NULL),
(12, 6, 5, 1, 'Orange Pop Reguler', 'S010', NULL, 0.00, 0.00, 1, 4, '2026-05-11 06:09:02', '2026-05-11 06:09:02', NULL),
(13, 6, 5, 1, 'Text Ringer Reguler', 'S011', NULL, 0.00, 0.00, 1, 4, '2026-05-11 06:30:20', '2026-05-11 06:30:20', NULL),
(14, 6, 5, 1, '80`Tess Ringer Regular', 'S012', NULL, 0.00, 0.00, 1, 4, '2026-05-11 06:34:37', '2026-05-11 06:34:37', NULL),
(15, 6, 5, 1, 'S1 Ringer Regular', 'S013', NULL, 0.00, 0.00, 1, 4, '2026-05-11 06:36:29', '2026-05-11 06:36:29', NULL),
(16, 6, 5, 1, 'Red Sk Ringer Regular', 'S014', NULL, 0.00, 0.00, 1, 4, '2026-05-11 06:37:28', '2026-05-11 06:37:28', NULL),
(17, 6, 8, 1, 'Text Ringer Regular', 'S015', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:15:06', '2026-05-11 07:15:06', NULL),
(18, 6, 8, 1, 'Red Sk Ringer Regular', 'S016', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:16:50', '2026-05-11 07:16:50', NULL),
(19, 6, 8, 1, 'S1 Ringer Regular', 'S017', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:17:50', '2026-05-11 07:17:50', NULL),
(20, 6, 8, 1, '80`Tess Ringer Regular', 'S018', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:19:24', '2026-05-11 07:19:24', NULL),
(21, 6, 8, 1, 'Orange Pop Reguler', 'S019', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:21:13', '2026-05-11 07:21:13', NULL),
(22, 6, 8, 1, 'Orange Bubble Regular', 'S020', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:22:12', '2026-05-11 07:22:42', NULL),
(23, 6, 8, 1, 'Fire Zippo Regular', 'S021', NULL, 0.00, 0.00, 1, 4, '2026-05-11 07:23:34', '2026-05-11 07:23:34', NULL),
(24, 9, 8, 1, 'Make Dream Regular', 'W001', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:24:45', '2026-05-12 03:24:45', NULL),
(25, 9, 8, 1, 'Nothing Eternal Regular', 'W002', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:25:59', '2026-05-12 03:25:59', NULL),
(26, 9, 8, 1, 'Built To Regular', 'W003', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:28:38', '2026-05-12 03:28:38', NULL),
(27, 9, 8, 1, 'Mentality Regular', 'W004', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:29:42', '2026-05-12 03:29:42', NULL),
(28, 9, 8, 1, 'Not 1 Regular', 'W005', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:49:51', '2026-05-12 03:49:51', NULL),
(29, 9, 8, 1, 'Not 2 Regular', 'W006', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:50:24', '2026-05-12 03:50:24', NULL),
(30, 9, 8, 1, 'Not 3 Regulae', 'W007', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:50:54', '2026-05-12 03:50:54', NULL),
(31, 9, 8, 1, 'Nom 1997 Regular', 'W008', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:53:20', '2026-05-12 03:53:20', NULL),
(32, 9, 8, 1, 'Travis Scott Regular', 'W009', NULL, 0.00, 0.00, 1, 4, '2026-05-12 03:55:52', '2026-05-12 03:55:52', NULL),
(33, 9, 10, 1, 'Tshirt Longsleeve Wonderkey', 'W010', NULL, 55000.00, 60000.00, 1, 1, '2026-05-13 04:03:27', '2026-05-13 09:01:49', NULL),
(34, 9, 9, 1, 'Wonderkey Standard', 'W011', NULL, 45000.00, 50000.00, 1, 1, '2026-05-13 04:07:17', '2026-05-13 09:01:22', NULL),
(35, 9, 7, 1, 'Wonderkey Boxy', 'W012', NULL, 60000.00, 65000.00, 1, 1, '2026-05-13 04:13:47', '2026-05-13 09:00:51', NULL),
(36, 9, 11, 1, 'Wonderkey Danbowl', 'W013', NULL, 60000.00, 65000.00, 1, 1, '2026-05-13 04:15:21', '2026-05-13 09:00:25', NULL),
(37, 9, 12, 1, 'Polos Saku', 'W014', NULL, 50000.00, 55000.00, 1, 1, '2026-05-13 04:16:49', '2026-05-13 04:16:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `color_id`, `path`, `is_primary`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'products/1/Dq4aT10Vv2pYsYaInh96eRS7LhEhz7NpkM5Xnj8K.png', 1, 0, '2026-05-11 03:40:11', '2026-05-11 03:40:11'),
(2, 2, NULL, 'products/2/YljKNGJ2peE4J5TMfmYHgdeDE18v0PCIJTcA26Ju.jpg', 1, 0, '2026-05-11 05:09:19', '2026-05-11 05:09:19'),
(3, 3, NULL, 'products/3/9lnc1PGIz5ukwcJNjhcAjIRfnR8TPC5O53I9DafP.jpg', 1, 0, '2026-05-11 05:17:24', '2026-05-11 05:17:24'),
(4, 4, NULL, 'products/4/KVhqeuuKx8BFPCxYQr7p7FPoAuXWc8DbYWKhMgKg.jpg', 1, 0, '2026-05-11 05:20:32', '2026-05-11 05:20:32'),
(5, 5, NULL, 'products/5/2e9eJYVKOdo2WgqcLRzpLLo6pnbrqAH623mtD6is.jpg', 1, 0, '2026-05-11 05:23:22', '2026-05-11 05:23:22'),
(6, 6, NULL, 'products/6/4dmKuaX9hzkcRb2H2pAVwRfFyZwRIdODx0sH9MwJ.jpg', 1, 0, '2026-05-11 05:24:28', '2026-05-11 05:24:28'),
(7, 7, NULL, 'products/7/nDDvlAMeYxk4ory25YuAr3ZILdHaJNxDJbRcSv2W.jpg', 1, 0, '2026-05-11 05:25:23', '2026-05-11 05:25:23'),
(8, 8, NULL, 'products/8/9bJLcmPicuw7P7PXULVWqlGGiFDjWUV61vDgDnJ0.jpg', 1, 0, '2026-05-11 05:26:34', '2026-05-11 05:26:34'),
(9, 9, NULL, 'products/9/e5N8UYhllfBgfiZLfbNTMBsI67R692mCZMMdWcuD.jpg', 1, 0, '2026-05-11 05:27:52', '2026-05-11 05:27:52'),
(10, 10, NULL, 'products/10/CIbBLXnepnTael9PGgiNQNlJphJAJXRGBLFSo8o9.jpg', 1, 0, '2026-05-11 05:32:48', '2026-05-11 05:32:48'),
(11, 11, NULL, 'products/11/mnLpuy8t02gIyZ4QztDFFGukSspsBibgt0xpe2wx.jpg', 1, 0, '2026-05-11 05:37:41', '2026-05-11 05:37:41'),
(12, 12, NULL, 'products/12/znoozjnywWbAf1gbOkYioIpycbWppukRIHVpmD5Y.jpg', 1, 0, '2026-05-11 06:09:02', '2026-05-11 06:09:02'),
(13, 13, NULL, 'products/13/pthzk1imCkENaAGHW3AsPjcGuPgdrQeFMAyW7huy.jpg', 1, 0, '2026-05-11 06:30:20', '2026-05-11 06:30:20'),
(14, 14, NULL, 'products/14/USrJMJKQnod4Uk3rZzOrYZk8Rcllx9il96BcP5GA.jpg', 1, 0, '2026-05-11 06:34:37', '2026-05-11 06:34:37'),
(15, 15, NULL, 'products/15/kxh6H42u201HiSDRTCMoPfIsoERpUflv4PHqWDvn.jpg', 1, 0, '2026-05-11 06:36:29', '2026-05-11 06:36:29'),
(16, 16, NULL, 'products/16/KnKxwkN2INuaqCBjgSLe90vN4mQQXV8mqppZeIvk.jpg', 1, 0, '2026-05-11 06:37:28', '2026-05-11 06:37:28'),
(17, 17, NULL, 'products/17/7p9rSxubAGiIY3dKZXCCf8XFAh8gkDMBxDz4Jjzl.jpg', 1, 0, '2026-05-11 07:15:06', '2026-05-11 07:15:06'),
(18, 18, NULL, 'products/18/syfe3RVMJ1eHYOXYPyylfbVjvaw24JBp1EifDXMv.jpg', 1, 0, '2026-05-11 07:16:50', '2026-05-11 07:16:50'),
(19, 19, NULL, 'products/19/pgYdY43ogbTWg5LBHpwwHpdKrzTH0X3KORlmQtau.jpg', 1, 0, '2026-05-11 07:17:50', '2026-05-11 07:17:50'),
(20, 20, NULL, 'products/20/FLJEQq13odjjkDDcsN3rXE36F74SgVnR3zrEY6rg.jpg', 1, 0, '2026-05-11 07:19:24', '2026-05-11 07:19:24'),
(21, 21, NULL, 'products/21/TEnKVPKJJ3t2RFDFHcDnr4l0BYREkWF09lJB17fu.jpg', 1, 0, '2026-05-11 07:21:13', '2026-05-11 07:21:13'),
(22, 22, NULL, 'products/22/hH2WN44nMcesmoKNOAE9eXasq5st7eS9Z6LJB08Z.jpg', 1, 0, '2026-05-11 07:22:12', '2026-05-11 07:22:12'),
(23, 23, NULL, 'products/23/ntr1VwvvTrNHO134wcbz6lDYiY8I8YsDjaLSHzl1.jpg', 1, 0, '2026-05-11 07:23:34', '2026-05-11 07:23:34'),
(24, 24, NULL, 'products/24/HQjjpwnhYYOAUtz3j8YJUCBkvpTzgAiaIaLhqwDv.jpg', 1, 0, '2026-05-12 03:24:45', '2026-05-12 03:24:45'),
(25, 25, NULL, 'products/25/Pez65PyTND4D3BWWe744JB9WSWC9zzb5kxu3eE5i.jpg', 1, 0, '2026-05-12 03:25:59', '2026-05-12 03:25:59'),
(26, 26, NULL, 'products/26/v0071glMOgoVihO8zFxebHaT2pQbDHNeYBiZgIeE.jpg', 1, 0, '2026-05-12 03:28:38', '2026-05-12 03:28:38'),
(27, 27, NULL, 'products/27/OuXfOO7681ieVZ5tdqKRYLXhqduTitrqrIb49OHa.jpg', 1, 0, '2026-05-12 03:29:42', '2026-05-12 03:29:42'),
(28, 28, NULL, 'products/28/IpJdBAsT2KVAaREL0LofAgwhSOfO5ffeQwwRTb6d.jpg', 1, 0, '2026-05-12 03:49:51', '2026-05-12 03:49:51'),
(29, 29, NULL, 'products/29/Mm3pSWECyLqrNHJEzuucJo2lCrnzrBpNYVNc5RMH.jpg', 1, 0, '2026-05-12 03:50:24', '2026-05-12 03:50:24'),
(30, 30, NULL, 'products/30/tKCnAviHiEt1d2k6bZhSa3nGcVY8PHjjtS7yC2LY.jpg', 1, 0, '2026-05-12 03:50:54', '2026-05-12 03:50:54'),
(31, 31, NULL, 'products/31/4rgnJpvA30sHh48Nc0gajpYwh2EnWpykkUdqNCAY.jpg', 1, 0, '2026-05-12 03:53:20', '2026-05-12 03:53:20'),
(32, 32, NULL, 'products/32/w4VQyPrj1FxT2SdNBx26yd5XXXy4R3YcF73jvoYq.jpg', 1, 0, '2026-05-12 03:55:52', '2026-05-12 03:55:52'),
(33, 37, NULL, 'products/37/RatSUivlA7uLuskabTHOYlOo49B94MhDUztoklJw.jpg', 1, 0, '2026-05-13 08:49:28', '2026-05-13 08:49:28'),
(38, 33, NULL, 'products/33/NiJDvLKYuENeZfjMLbPiviyE8E2AVchNthNiNWAL.jpg', 1, 0, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(39, 33, NULL, 'products/33/qbf8sLjfvH9Wmjr7IIHllmXxUeZBYKOBZ3iy0WVI.jpg', 0, 1, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(40, 33, NULL, 'products/33/tU2zQzMV4z8heyyjcVY8ngpt7GCxmQaTrNkBqh7M.jpg', 0, 2, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(41, 33, NULL, 'products/33/we9AMXiZsaZt0WuzghvIK3CaVwMRJDztKE206EX7.jpg', 0, 3, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(42, 33, NULL, 'products/33/sYO4KImPoNETt0tHKNey2o4nlc3Egm0v0W4sGmzU.jpg', 0, 4, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(43, 33, NULL, 'products/33/ntvF34U0IGLyVFazrNXpq4JFIvs4BMQmAiVBxuhz.jpg', 0, 5, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(44, 33, NULL, 'products/33/Q8U0c3fS1DwJwBqZ6lgGg3pdqoKucCkPSEJyysME.jpg', 0, 6, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(45, 33, NULL, 'products/33/sW3mvPkh4e2Mb2AH15Mbq2HoBbJfIM76k33s4FU2.jpg', 0, 7, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(46, 33, NULL, 'products/33/QZG4KbXNER8EhXnUHkXFuT2KU93K6v1CG2zP6DsP.jpg', 0, 8, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(47, 33, NULL, 'products/33/YIoj1WS028YSkqF0SlJd006nDLYY6XEwfDtKuz7j.jpg', 0, 9, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(48, 33, NULL, 'products/33/oja7SA2RwDtNHGJiOFnRapcmWcLxIVUxg1zsz2gF.jpg', 0, 10, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(49, 33, NULL, 'products/33/WMghwoQPs73lM38QS1oPjrmJFnP2ixkVzbmgS9CL.jpg', 0, 11, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(50, 33, NULL, 'products/33/PXxuh37KIpwPmFLlDzknsA79MZCxPa7QOvSXIRmy.jpg', 0, 12, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(51, 33, NULL, 'products/33/9walpFsKvJ6YPT21AAZpP5VJWiYUfcqvkHGE0yhN.jpg', 0, 13, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(52, 33, NULL, 'products/33/WyBlmsQXj1lCpqYOFyEKLP8iz7TkWUrQzLBYCDxY.jpg', 0, 14, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(53, 33, NULL, 'products/33/IFRT8gE8u3O76GJgxgUnNsBAGO8Kymmk7U3Nb2Js.jpg', 0, 15, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(54, 33, NULL, 'products/33/9W9eqfyt7noaR5zunnNXbLPxuG5JS06L9Q97KCET.jpg', 0, 16, '2026-05-13 08:54:07', '2026-05-13 08:54:07'),
(55, 36, NULL, 'products/36/uft7rS33nGOdNpnyc8yYSJvMJ9b52pPXu8jFW3fJ.jpg', 0, 1, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(56, 36, NULL, 'products/36/ZWbD4Cwek6MIwY4hV2soKGS7iOiAirWl9JSh3TUv.jpg', 0, 2, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(57, 36, NULL, 'products/36/SojmQPLMmituniPzTvYr6COYF1Jwz41BgvQ6oSin.jpg', 0, 3, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(58, 36, NULL, 'products/36/4jsPRycbIII7rtp6wJDu2GtlXt7sCVjDVtbtCmDE.jpg', 0, 4, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(59, 36, NULL, 'products/36/pQxdPnx62Hz82JVbA4UcOcYeQrZGRkKXMmDHoR0P.png', 0, 5, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(60, 36, NULL, 'products/36/yniunZMqu9Gv7PDhuz5VEkGvXYS6IMFE0vD1rmIQ.jpg', 0, 6, '2026-05-13 08:56:49', '2026-05-13 08:56:49'),
(61, 35, NULL, 'products/35/Gw7MMc0ulzx4XMUMs9CrormWTNz1S1VJs1ZiwJz9.jpg', 1, 0, '2026-05-13 08:58:58', '2026-05-13 08:58:58'),
(62, 35, NULL, 'products/35/x0KK0SoGoWJoCUcimsUiFQR84yLllTFFTlYcInql.jpg', 0, 1, '2026-05-13 08:58:58', '2026-05-13 08:58:58'),
(63, 35, NULL, 'products/35/k8VRtV9kE8uwyDSCcwptw6SVGcoQCKhsr5csToBy.jpg', 0, 2, '2026-05-13 08:58:58', '2026-05-13 08:58:58'),
(64, 35, NULL, 'products/35/wSIlB96pqBAWsQSJ8hHcTomEYcRkJS1X6h3LzE9x.jpg', 0, 3, '2026-05-13 08:58:58', '2026-05-13 08:58:58'),
(65, 34, NULL, 'products/34/KpMr6l9bkVxSWhVjhVZKJcQUDIlHZNQ84H1xNr9A.jpg', 1, 0, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(66, 34, NULL, 'products/34/itbtOWNrJ6XtuMzU2EvuBNMkSmojbPhex1aAIiUe.jpg', 0, 1, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(67, 34, NULL, 'products/34/fcfZaD56Fq7MB7sQ8BznCV6KBGT4Oe2GhDKMzr27.jpg', 0, 2, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(68, 34, NULL, 'products/34/AYilgwkOVxrH3q4JIqPp1d7Srq59g5fDq2e6e3gV.jpg', 0, 3, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(69, 34, NULL, 'products/34/FnTaMKN8GGmY5zPSPD22H8rHUH8MJtXB9qrHpcc3.jpg', 0, 4, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(70, 34, NULL, 'products/34/8rcYvCPUGwic1WV16pX94IBxgQYflxfb2b0JENhA.jpg', 0, 5, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(71, 34, NULL, 'products/34/NOWciMv40wrNIXB5GUbriwzhgfVlGgi4csP0jiUj.jpg', 0, 6, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(72, 34, NULL, 'products/34/QUxKIGPFJ4A9VIGLVbQiHFx0lXP1n6GLyNpL26KE.jpg', 0, 7, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(73, 34, NULL, 'products/34/z4B7oMrlrzYADmASLgdQ1wwyCok8Qh51iTtgqvGc.jpg', 0, 8, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(74, 34, NULL, 'products/34/6rQj6Vr1ZtBph2Jv1l6xdzpmR8p8v83rik7xXCMm.jpg', 0, 9, '2026-05-13 09:00:52', '2026-05-13 09:00:52'),
(75, 34, NULL, 'products/34/8Tp8MnIr2bO7KTViEZsIdK2o9K5grMBucG9xYfxq.jpg', 0, 10, '2026-05-13 09:00:52', '2026-05-13 09:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `code`, `slug`, `category_id`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kaos', 'KOS', 'kaos', 1, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(2, 'Kemeja', 'KMJ', 'kemeja', 1, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(3, 'Polo Shirt', 'PLO', 'polo-shirt', 1, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(4, 'Hoodie', 'HDI', 'hoodie', 1, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(5, 'Celana Panjang', 'CPJ', 'celana-panjang', 2, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(6, 'Celana Pendek', 'CPD', 'celana-pendek', 2, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(7, 'Jaket', 'JKT', 'jaket', 3, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL),
(8, 'Sweater', 'SWT', 'sweater', 3, NULL, 0, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `product_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sku` varchar(60) NOT NULL,
  `price_adjustment` decimal(12,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `color_id`, `size_id`, `product_image_id`, `sku`, `price_adjustment`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 7, 5, NULL, 'SVK-S001-HIJA-XL', 0.00, 1, '2026-05-11 03:40:27', '2026-05-13 09:02:20', '2026-05-13 09:02:20'),
(2, 1, 1, 4, NULL, 'SVK-S001-HITA-L', 0.00, 1, '2026-05-11 03:40:27', '2026-05-11 03:40:27', NULL),
(3, 2, 1, 4, NULL, 'NT-S002-HITA-L', 0.00, 1, '2026-05-11 05:12:08', '2026-05-11 05:12:08', NULL),
(4, 2, 1, 5, NULL, 'NT-S002-HITA-XL', 0.00, 1, '2026-05-11 05:12:08', '2026-05-11 05:12:08', NULL),
(5, 3, 1, 4, NULL, 'NT-N001-HITA-L', 0.00, 1, '2026-05-11 06:43:55', '2026-05-11 06:43:55', NULL),
(6, 3, 1, 5, NULL, 'NT-N001-HITA-XL', 0.00, 1, '2026-05-11 06:43:55', '2026-05-11 06:43:55', NULL),
(7, 16, 2, 5, NULL, 'SVK-S014-PUTI-XL', 0.00, 1, '2026-05-11 06:44:56', '2026-05-11 06:44:56', NULL),
(8, 16, 2, 4, NULL, 'SVK-S014-PUTI-L', 0.00, 1, '2026-05-11 06:44:56', '2026-05-11 06:44:56', NULL),
(9, 14, 2, 4, NULL, 'SVK-S012-PUTI-L', 0.00, 1, '2026-05-11 06:47:02', '2026-05-11 06:47:02', NULL),
(10, 14, 2, 5, NULL, 'SVK-S012-PUTI-XL', 0.00, 1, '2026-05-11 06:47:02', '2026-05-11 06:47:02', NULL),
(11, 15, 2, 4, NULL, 'SVK-S013-PUTI-L', 0.00, 1, '2026-05-11 06:47:34', '2026-05-11 06:47:34', NULL),
(12, 15, 2, 5, NULL, 'SVK-S013-PUTI-XL', 0.00, 1, '2026-05-11 06:47:34', '2026-05-11 06:47:34', NULL),
(13, 13, 2, 4, NULL, 'SVK-S011-PUTI-L', 0.00, 1, '2026-05-11 06:47:52', '2026-05-11 06:47:52', NULL),
(14, 13, 2, 5, NULL, 'SVK-S011-PUTI-XL', 0.00, 1, '2026-05-11 06:47:52', '2026-05-11 06:47:52', NULL),
(15, 12, 2, 4, NULL, 'SVK-S010-PUTI-L', 0.00, 1, '2026-05-11 06:48:12', '2026-05-11 06:48:12', NULL),
(16, 12, 4, 5, NULL, 'SVK-S010-NAVY-XL', 0.00, 1, '2026-05-11 06:48:12', '2026-05-11 06:48:24', '2026-05-11 06:48:24'),
(17, 12, 2, 5, NULL, 'SVK-S010-PUTI-XL', 0.00, 1, '2026-05-11 06:48:33', '2026-05-11 06:48:33', NULL),
(18, 11, 2, 4, NULL, 'SVK-S009-PUTI-L', 0.00, 1, '2026-05-11 06:48:59', '2026-05-11 06:48:59', NULL),
(19, 11, 2, 5, NULL, 'SVK-S009-PUTI-XL', 0.00, 1, '2026-05-11 06:48:59', '2026-05-11 06:48:59', NULL),
(20, 10, 2, 4, NULL, 'SVK-S008-PUTI-L', 0.00, 1, '2026-05-11 06:49:32', '2026-05-11 06:49:32', NULL),
(21, 10, 2, 5, NULL, 'SVK-S008-PUTI-XL', 0.00, 1, '2026-05-11 06:49:32', '2026-05-11 06:49:32', NULL),
(22, 9, 2, 4, NULL, 'SVK-S007-PUTI-L', 0.00, 1, '2026-05-11 06:51:35', '2026-05-11 06:51:49', '2026-05-11 06:51:49'),
(23, 9, 2, 5, NULL, 'SVK-S007-PUTI-XL', 0.00, 1, '2026-05-11 06:51:35', '2026-05-11 06:51:58', '2026-05-11 06:51:58'),
(24, 9, 1, 4, NULL, 'SVK-S007-HITA-L', 0.00, 1, '2026-05-11 06:52:10', '2026-05-11 06:52:10', NULL),
(25, 9, 1, 5, NULL, 'SVK-S007-HITA-XL', 0.00, 1, '2026-05-11 06:52:10', '2026-05-11 06:52:10', NULL),
(26, 8, 1, 4, NULL, 'SVK-S006-HITA-L', 0.00, 1, '2026-05-11 06:53:05', '2026-05-11 06:53:05', NULL),
(27, 8, 1, 5, NULL, 'SVK-S006-HITA-XL', 0.00, 1, '2026-05-11 06:53:05', '2026-05-11 06:53:05', NULL),
(28, 7, 1, 4, NULL, 'SVK-S005-HITA-L', 0.00, 1, '2026-05-11 06:53:33', '2026-05-11 06:53:33', NULL),
(29, 7, 1, 5, NULL, 'SVK-S005-HITA-XL', 0.00, 1, '2026-05-11 06:53:33', '2026-05-11 06:53:33', NULL),
(30, 6, 1, 4, NULL, 'SVK-S004-HITA-L', 0.00, 1, '2026-05-11 06:54:03', '2026-05-11 06:54:03', NULL),
(31, 6, 1, 5, NULL, 'SVK-S004-HITA-XL', 0.00, 1, '2026-05-11 06:54:03', '2026-05-11 06:54:03', NULL),
(32, 5, 1, 4, NULL, 'SVK-S003-HITA-L', 0.00, 1, '2026-05-11 06:54:29', '2026-05-11 06:54:29', NULL),
(33, 5, 1, 5, NULL, 'SVK-S003-HITA-XL', 0.00, 1, '2026-05-11 06:54:29', '2026-05-11 06:54:29', NULL),
(34, 4, 1, 4, NULL, 'NT-N002-HITA-L', 0.00, 1, '2026-05-11 06:55:10', '2026-05-11 06:55:10', NULL),
(35, 4, 1, 5, NULL, 'NT-N002-HITA-XL', 0.00, 1, '2026-05-11 06:55:10', '2026-05-11 06:55:10', NULL),
(36, 17, 2, 4, NULL, 'SVK-S015-PUTI-L', 0.00, 1, '2026-05-11 07:15:30', '2026-05-11 07:15:30', NULL),
(37, 17, 2, 5, NULL, 'SVK-S015-PUTI-XL', 0.00, 1, '2026-05-11 07:15:30', '2026-05-11 07:15:30', NULL),
(38, 18, 2, 4, NULL, 'SVK-S016-PUTI-L', 0.00, 1, '2026-05-11 07:17:05', '2026-05-11 07:17:05', NULL),
(39, 18, 2, 5, NULL, 'SVK-S016-PUTI-XL', 0.00, 1, '2026-05-11 07:17:05', '2026-05-11 07:17:05', NULL),
(40, 20, 2, 4, NULL, 'SVK-S018-PUTI-L', 0.00, 1, '2026-05-11 07:19:42', '2026-05-11 07:19:42', NULL),
(41, 20, 2, 5, NULL, 'SVK-S018-PUTI-XL', 0.00, 1, '2026-05-11 07:19:42', '2026-05-11 07:19:42', NULL),
(42, 21, 2, 4, NULL, 'SVK-S019-PUTI-L', 0.00, 1, '2026-05-11 07:21:30', '2026-05-11 07:21:30', NULL),
(43, 21, 2, 5, NULL, 'SVK-S019-PUTI-XL', 0.00, 1, '2026-05-11 07:21:30', '2026-05-11 07:21:30', NULL),
(44, 22, 2, 4, NULL, 'SVK-S020-PUTI-L', 0.00, 1, '2026-05-11 07:23:00', '2026-05-11 07:23:00', NULL),
(45, 22, 2, 5, NULL, 'SVK-S020-PUTI-XL', 0.00, 1, '2026-05-11 07:23:00', '2026-05-11 07:23:00', NULL),
(46, 24, 2, 4, NULL, 'WK-W001-PUTI-L', 0.00, 1, '2026-05-12 03:25:04', '2026-05-12 03:25:04', NULL),
(47, 24, 2, 5, NULL, 'WK-W001-PUTI-XL', 0.00, 1, '2026-05-12 03:25:04', '2026-05-12 03:25:04', NULL),
(48, 25, 2, 4, NULL, 'WK-W002-PUTI-L', 0.00, 1, '2026-05-12 03:26:17', '2026-05-12 03:26:17', NULL),
(49, 25, 2, 5, NULL, 'WK-W002-PUTI-XL', 0.00, 1, '2026-05-12 03:26:17', '2026-05-12 03:26:17', NULL),
(50, 26, 2, 4, NULL, 'WK-W003-PUTI-L', 0.00, 1, '2026-05-12 03:28:53', '2026-05-12 03:28:53', NULL),
(51, 26, 2, 5, NULL, 'WK-W003-PUTI-XL', 0.00, 1, '2026-05-12 03:28:53', '2026-05-12 03:28:53', NULL),
(52, 27, 1, 4, NULL, 'WK-W004-HITA-L', 0.00, 1, '2026-05-12 03:56:17', '2026-05-12 03:56:17', NULL),
(53, 27, 1, 5, NULL, 'WK-W004-HITA-XL', 0.00, 1, '2026-05-12 03:56:17', '2026-05-12 03:56:17', NULL),
(54, 28, 1, 4, NULL, 'WK-W005-HITA-L', 0.00, 1, '2026-05-12 03:56:44', '2026-05-12 03:56:44', NULL),
(55, 28, 1, 5, NULL, 'WK-W005-HITA-XL', 0.00, 1, '2026-05-12 03:56:44', '2026-05-12 03:56:44', NULL),
(56, 29, 1, 4, NULL, 'WK-W006-HITA-L', 0.00, 1, '2026-05-12 03:57:08', '2026-05-12 03:57:08', NULL),
(57, 29, 1, 5, NULL, 'WK-W006-HITA-XL', 0.00, 1, '2026-05-12 03:57:08', '2026-05-12 03:57:08', NULL),
(58, 30, 1, 4, NULL, 'WK-W007-HITA-L', 0.00, 1, '2026-05-12 03:57:29', '2026-05-12 03:57:29', NULL),
(59, 30, 1, 5, NULL, 'WK-W007-HITA-XL', 0.00, 1, '2026-05-12 03:57:29', '2026-05-12 03:57:29', NULL),
(60, 31, 1, 4, NULL, 'WK-W008-HITA-L', 0.00, 1, '2026-05-12 03:57:49', '2026-05-12 03:57:49', NULL),
(61, 31, 1, 5, NULL, 'WK-W008-HITA-XL', 0.00, 1, '2026-05-12 03:57:49', '2026-05-12 03:57:49', NULL),
(62, 32, 1, 4, NULL, 'WK-W009-HITA-L', 0.00, 1, '2026-05-12 03:58:10', '2026-05-12 03:58:10', NULL),
(63, 32, 1, 5, NULL, 'WK-W009-HITA-XL', 0.00, 1, '2026-05-12 03:58:10', '2026-05-12 03:58:10', NULL),
(64, 33, 1, 3, NULL, 'WK-W010-HITA-M', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(65, 33, 1, 5, NULL, 'WK-W010-HITA-XL', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(66, 33, 1, 4, NULL, 'WK-W010-HITA-L', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(67, 33, 2, 3, NULL, 'WK-W010-PUTI-M', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(68, 33, 2, 4, NULL, 'WK-W010-PUTI-L', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(69, 33, 2, 5, NULL, 'WK-W010-PUTI-XL', 0.00, 1, '2026-05-13 04:05:33', '2026-05-13 04:05:33', NULL),
(70, 34, 1, 3, NULL, 'WK-W011-HITA-M', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(71, 34, 1, 4, NULL, 'WK-W011-HITA-L', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(72, 34, 1, 5, NULL, 'WK-W011-HITA-XL', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(73, 34, 2, 3, NULL, 'WK-W011-PUTI-M', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(74, 34, 2, 4, NULL, 'WK-W011-PUTI-L', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(75, 34, 2, 5, NULL, 'WK-W011-PUTI-XL', 0.00, 1, '2026-05-13 04:12:04', '2026-05-13 04:12:04', NULL),
(76, 35, 2, 3, NULL, 'WK-W012-PUTI-M', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(77, 35, 2, 4, NULL, 'WK-W012-PUTI-L', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(78, 35, 2, 5, NULL, 'WK-W012-PUTI-XL', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(79, 35, 1, 3, NULL, 'WK-W012-HITA-M', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(80, 35, 1, 4, NULL, 'WK-W012-HITA-L', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(81, 35, 1, 5, NULL, 'WK-W012-HITA-XL', 0.00, 1, '2026-05-13 04:14:27', '2026-05-13 04:14:27', NULL),
(82, 36, 2, 3, NULL, 'WK-W013-PUTI-M', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(83, 36, 2, 4, NULL, 'WK-W013-PUTI-L', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(84, 36, 2, 5, NULL, 'WK-W013-PUTI-XL', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(85, 36, 1, 3, NULL, 'WK-W013-HITA-M', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(86, 36, 1, 4, NULL, 'WK-W013-HITA-L', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(87, 36, 1, 5, NULL, 'WK-W013-HITA-XL', 0.00, 1, '2026-05-13 04:16:04', '2026-05-13 04:16:04', NULL),
(88, 37, 2, 3, NULL, 'WK-W014-PUTI-M', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL),
(89, 37, 2, 4, NULL, 'WK-W014-PUTI-L', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL),
(90, 37, 2, 5, NULL, 'WK-W014-PUTI-XL', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL),
(91, 37, 1, 3, NULL, 'WK-W014-HITA-M', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL),
(92, 37, 1, 4, NULL, 'WK-W014-HITA-L', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL),
(93, 37, 1, 5, NULL, 'WK-W014-HITA-XL', 0.00, 1, '2026-05-13 04:17:21', '2026-05-13 04:17:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_reasons`
--

CREATE TABLE `return_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` enum('customer','store','both') NOT NULL DEFAULT 'both',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_reasons`
--

INSERT INTO `return_reasons` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cacat Produksi', 'CACAT', 'both', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'Salah Kirim', 'SALAH', 'both', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'Tidak Sesuai', 'TDSUI', 'customer', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(4, 'Rusak Pengiriman', 'RUSAK', 'store', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(5, 'Tidak Laku', 'TDLKU', 'store', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(6, 'Kelebihan Stok', 'KBHST', 'store', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45');

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
(1, 'superadmin', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'owner', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'finance', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(4, 'admin gudang', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(5, 'operator gudang', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(6, 'kepala toko', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(7, 'kasir', 'web', '2026-05-08 09:16:45', '2026-05-08 09:16:45');

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
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(71, 1),
(1, 2),
(6, 2),
(10, 2),
(16, 2),
(20, 2),
(22, 2),
(27, 2),
(29, 2),
(35, 2),
(40, 2),
(48, 2),
(50, 2),
(55, 2),
(60, 2),
(61, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(1, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(1, 4),
(6, 4),
(7, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(30, 4),
(50, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(63, 4),
(64, 4),
(65, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(10, 5),
(16, 5),
(17, 5),
(18, 5),
(20, 5),
(22, 5),
(24, 5),
(26, 5),
(27, 5),
(50, 5),
(53, 5),
(55, 5),
(57, 5),
(1, 6),
(10, 6),
(22, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(63, 6),
(64, 6),
(65, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(41, 7),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(47, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_no` varchar(255) NOT NULL,
  `cash_session_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(15,2) NOT NULL,
  `amount_paid` decimal(15,2) NOT NULL,
  `change_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_no`, `cash_session_id`, `store_id`, `payment_method_id`, `subtotal`, `discount_amount`, `total_amount`, `amount_paid`, `change_amount`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SAL-202605-0001', 1, 1, 2, 225000.00, 0.00, 225000.00, 225000.00, 0.00, NULL, 6, '2026-05-11 03:48:59', '2026-05-11 03:48:59'),
(2, 'SAL-202605-0002', 1, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-11 04:34:35', '2026-05-11 04:34:35'),
(3, 'SAL-202605-0003', 2, 1, 1, 135000.00, 0.00, 135000.00, 135000.00, 0.00, NULL, 10, '2026-05-11 05:05:54', '2026-05-11 05:05:54'),
(4, 'SAL-202605-0004', 2, 1, 2, 225000.00, 0.00, 225000.00, 225000.00, 0.00, NULL, 10, '2026-05-11 05:07:38', '2026-05-11 05:07:38'),
(5, 'SAL-202605-0005', 4, 1, 2, 360000.00, 0.00, 360000.00, 360000.00, 0.00, NULL, 10, '2026-05-11 05:16:53', '2026-05-11 05:16:53'),
(6, 'SAL-202605-0006', 5, 1, 2, 135000.00, 0.00, 135000.00, 135000.00, 0.00, NULL, 10, '2026-05-11 05:19:05', '2026-05-11 05:19:05'),
(7, 'SAL-202605-0007', 5, 1, 2, 135000.00, 0.00, 135000.00, 135000.00, 0.00, NULL, 10, '2026-05-11 05:51:03', '2026-05-11 05:51:03'),
(8, 'SAL-202605-0008', 5, 1, 2, 225000.00, 0.00, 225000.00, 225000.00, 0.00, NULL, 10, '2026-05-11 05:51:37', '2026-05-11 05:51:37'),
(9, 'SAL-202605-0009', 5, 1, 2, 90000.00, 0.00, 90000.00, 90000.00, 0.00, NULL, 10, '2026-05-11 05:58:32', '2026-05-11 05:58:32'),
(10, 'SAL-202605-0010', 5, 1, 2, 225000.00, 0.00, 225000.00, 225000.00, 0.00, NULL, 10, '2026-05-11 06:09:39', '2026-05-11 06:09:39'),
(11, 'SAL-202605-0011', 8, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-12 04:23:36', '2026-05-12 04:23:36'),
(12, 'SAL-202605-0012', 8, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-12 04:26:33', '2026-05-12 04:26:33'),
(13, 'SAL-202605-0013', 8, 1, 2, 225000.00, 0.00, 225000.00, 225000.00, 0.00, NULL, 6, '2026-05-12 04:27:40', '2026-05-12 04:27:40'),
(14, 'SAL-202605-0014', 8, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-12 04:28:40', '2026-05-12 04:28:40'),
(15, 'SAL-202605-0015', 9, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-13 03:19:50', '2026-05-13 03:19:50'),
(16, 'SAL-202605-0016', 9, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-13 03:21:45', '2026-05-13 03:21:45'),
(17, 'SAL-202605-0017', 9, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 6, '2026-05-13 03:32:45', '2026-05-13 03:32:45'),
(18, 'SAL-202605-0018', 9, 1, 2, 4500000.00, 0.00, 4500000.00, 4500000.00, 0.00, NULL, 6, '2026-05-13 03:57:46', '2026-05-13 03:57:46'),
(19, 'SAL-202605-0019', 11, 1, 2, 105000.00, 0.00, 105000.00, 105000.00, 0.00, NULL, 10, '2026-05-13 09:02:19', '2026-05-13 09:02:19'),
(20, 'SAL-202605-0020', 11, 1, 2, 65000.00, 0.00, 65000.00, 65000.00, 0.00, NULL, 10, '2026-05-13 09:07:56', '2026-05-13 09:07:56'),
(21, 'SAL-202605-0021', 11, 1, 1, 50000.00, 0.00, 50000.00, 100000.00, 50000.00, NULL, 10, '2026-05-13 12:43:58', '2026-05-13 12:43:58'),
(22, 'SAL-202605-0022', 12, 1, 1, 350000.00, 0.00, 350000.00, 420000.00, 70000.00, NULL, 10, '2026-05-13 12:52:49', '2026-05-13 12:52:49'),
(23, 'SAL-202605-0023', 12, 1, 2, 900000.00, 0.00, 900000.00, 900000.00, 0.00, NULL, 10, '2026-05-13 13:04:04', '2026-05-13 13:04:04'),
(24, 'SAL-202605-0024', 12, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 10, '2026-05-13 13:12:30', '2026-05-13 13:12:30'),
(25, 'SAL-202605-0025', 12, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 10, '2026-05-13 13:19:58', '2026-05-13 13:19:58'),
(26, 'SAL-202605-0026', 14, 1, 2, 585000.00, 0.00, 585000.00, 585000.00, 0.00, NULL, 10, '2026-05-13 13:47:49', '2026-05-13 13:47:49'),
(27, 'SAL-202605-0027', 14, 1, 2, 45000.00, 0.00, 45000.00, 45000.00, 0.00, NULL, 10, '2026-05-13 13:49:44', '2026-05-13 13:49:44'),
(28, 'SAL-202605-0028', 14, 1, 2, 45000.00, 10.00, 44990.00, 44990.00, 0.00, NULL, 10, '2026-05-13 13:50:16', '2026-05-13 13:50:16'),
(29, 'SAL-202605-0029', 16, 1, 1, 50000.00, 0.00, 50000.00, 50000.00, 0.00, NULL, 10, '2026-05-13 20:57:15', '2026-05-13 20:57:15'),
(30, 'SAL-202605-0030', 16, 1, 2, 60000.00, 0.00, 60000.00, 60000.00, 0.00, NULL, 10, '2026-05-13 21:08:30', '2026-05-13 21:08:30'),
(31, 'SAL-202605-0031', 16, 1, 1, 200000.00, 0.00, 200000.00, 250000.00, 50000.00, NULL, 10, '2026-05-14 00:05:50', '2026-05-14 00:05:50'),
(32, 'SAL-202605-0032', 16, 1, 1, 60000.00, 0.00, 60000.00, 100000.00, 40000.00, NULL, 10, '2026-05-14 00:07:30', '2026-05-14 00:07:30'),
(33, 'SAL-202605-0033', 17, 1, 2, 50000.00, 0.00, 50000.00, 50000.00, 0.00, NULL, 10, '2026-05-14 15:06:51', '2026-05-14 15:06:51'),
(34, 'SAL-202605-0034', 17, 1, 2, 50000.00, 0.00, 50000.00, 50000.00, 0.00, NULL, 10, '2026-05-14 15:11:25', '2026-05-14 15:11:25'),
(35, 'SAL-202605-0035', 18, 1, 2, 60000.00, 0.00, 60000.00, 60000.00, 0.00, NULL, 10, '2026-05-14 15:15:44', '2026-05-14 15:15:44'),
(36, 'SAL-202605-0036', 18, 1, 2, 130000.00, 0.00, 130000.00, 130000.00, 0.00, NULL, 10, '2026-05-14 15:56:39', '2026-05-14 15:56:39'),
(37, 'SAL-202605-0037', 18, 1, 2, 3700000.00, 0.00, 3700000.00, 3700000.00, 0.00, NULL, 10, '2026-05-14 15:57:47', '2026-05-14 15:57:47'),
(38, 'SAL-202605-0038', 18, 1, 1, 310000.00, 0.00, 310000.00, 310000.00, 0.00, NULL, 10, '2026-05-14 15:59:53', '2026-05-14 15:59:53'),
(39, 'SAL-202605-0039', 18, 1, 1, 185000.00, 0.00, 185000.00, 200000.00, 15000.00, NULL, 10, '2026-05-14 16:51:11', '2026-05-14 16:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reward_store` int(11) NOT NULL DEFAULT 0,
  `reward_owner` int(11) NOT NULL DEFAULT 0,
  `subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_variant_id`, `qty`, `unit_price`, `reward_store`, `reward_owner`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 45000.00, 2500, 22500, 225000.00, '2026-05-11 03:48:59', '2026-05-11 03:48:59'),
(2, 2, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-11 04:34:35', '2026-05-11 04:34:35'),
(3, 3, 2, 3, 45000.00, 1500, 13500, 135000.00, '2026-05-11 05:05:54', '2026-05-11 05:05:54'),
(4, 4, 2, 5, 45000.00, 2500, 22500, 225000.00, '2026-05-11 05:07:38', '2026-05-11 05:07:38'),
(5, 5, 2, 7, 45000.00, 3500, 31500, 315000.00, '2026-05-11 05:16:53', '2026-05-11 05:16:53'),
(6, 5, 1, 1, 45000.00, 500, 4500, 45000.00, '2026-05-11 05:16:53', '2026-05-11 05:16:53'),
(7, 6, 2, 3, 45000.00, 1500, 13500, 135000.00, '2026-05-11 05:19:05', '2026-05-11 05:19:05'),
(8, 7, 2, 3, 45000.00, 1500, 13500, 135000.00, '2026-05-11 05:51:03', '2026-05-11 05:51:03'),
(9, 8, 2, 5, 45000.00, 2500, 22500, 225000.00, '2026-05-11 05:51:37', '2026-05-11 05:51:37'),
(10, 9, 2, 2, 45000.00, 1000, 9000, 90000.00, '2026-05-11 05:58:32', '2026-05-11 05:58:32'),
(11, 10, 2, 4, 45000.00, 2000, 18000, 180000.00, '2026-05-11 06:09:39', '2026-05-11 06:09:39'),
(12, 10, 1, 1, 45000.00, 500, 4500, 45000.00, '2026-05-11 06:09:39', '2026-05-11 06:09:39'),
(13, 11, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-12 04:23:36', '2026-05-12 04:23:36'),
(14, 12, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-12 04:26:33', '2026-05-12 04:26:33'),
(15, 13, 2, 5, 45000.00, 2500, 22500, 225000.00, '2026-05-12 04:27:40', '2026-05-12 04:27:40'),
(16, 14, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-12 04:28:40', '2026-05-12 04:28:40'),
(17, 15, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 03:19:50', '2026-05-13 03:19:50'),
(18, 16, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 03:21:45', '2026-05-13 03:21:45'),
(19, 17, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 03:32:45', '2026-05-13 03:32:45'),
(20, 18, 2, 100, 45000.00, 50000, 450000, 4500000.00, '2026-05-13 03:57:46', '2026-05-13 03:57:46'),
(21, 19, 75, 1, 50000.00, 500, 4500, 50000.00, '2026-05-13 09:02:19', '2026-05-13 09:02:19'),
(22, 19, 90, 1, 55000.00, 500, 4500, 55000.00, '2026-05-13 09:02:19', '2026-05-13 09:02:19'),
(23, 20, 84, 1, 65000.00, 500, 4500, 65000.00, '2026-05-13 09:07:56', '2026-05-13 09:07:56'),
(24, 21, 75, 1, 50000.00, 500, 4500, 50000.00, '2026-05-13 12:43:58', '2026-05-13 12:43:58'),
(25, 22, 74, 7, 50000.00, 3500, 31500, 350000.00, '2026-05-13 12:52:49', '2026-05-13 12:52:49'),
(26, 23, 2, 20, 45000.00, 10000, 90000, 900000.00, '2026-05-13 13:04:04', '2026-05-13 13:04:04'),
(27, 24, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 13:12:30', '2026-05-13 13:12:30'),
(28, 25, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 13:19:58', '2026-05-13 13:19:58'),
(29, 26, 2, 13, 45000.00, 6500, 58500, 585000.00, '2026-05-13 13:47:49', '2026-05-13 13:47:49'),
(30, 27, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 13:49:44', '2026-05-13 13:49:44'),
(31, 28, 2, 1, 45000.00, 500, 4500, 45000.00, '2026-05-13 13:50:16', '2026-05-13 13:50:16'),
(32, 29, 72, 1, 50000.00, 500, 4500, 50000.00, '2026-05-13 20:57:15', '2026-05-13 20:57:15'),
(33, 30, 69, 1, 60000.00, 500, 4500, 60000.00, '2026-05-13 21:08:30', '2026-05-13 21:08:30'),
(34, 31, 72, 4, 50000.00, 2000, 18000, 200000.00, '2026-05-14 00:05:50', '2026-05-14 00:05:50'),
(35, 32, 69, 1, 60000.00, 500, 4500, 60000.00, '2026-05-14 00:07:30', '2026-05-14 00:07:30'),
(36, 33, 72, 1, 50000.00, 500, 4500, 50000.00, '2026-05-14 15:06:51', '2026-05-14 15:06:51'),
(37, 34, 75, 1, 50000.00, 500, 4500, 50000.00, '2026-05-14 15:11:25', '2026-05-14 15:11:25'),
(38, 35, 69, 1, 60000.00, 500, 4500, 60000.00, '2026-05-14 15:15:44', '2026-05-14 15:15:44'),
(39, 36, 86, 1, 65000.00, 500, 4500, 65000.00, '2026-05-14 15:56:39', '2026-05-14 15:56:39'),
(40, 36, 78, 1, 65000.00, 500, 4500, 65000.00, '2026-05-14 15:56:39', '2026-05-14 15:56:39'),
(41, 37, 74, 2, 50000.00, 1000, 9000, 100000.00, '2026-05-14 15:57:47', '2026-05-14 15:57:47'),
(42, 37, 83, 52, 65000.00, 26000, 234000, 3380000.00, '2026-05-14 15:57:47', '2026-05-14 15:57:47'),
(43, 37, 89, 4, 55000.00, 2000, 18000, 220000.00, '2026-05-14 15:57:47', '2026-05-14 15:57:47'),
(44, 38, 65, 1, 60000.00, 500, 4500, 60000.00, '2026-05-14 15:59:53', '2026-05-14 15:59:53'),
(45, 38, 66, 2, 60000.00, 1000, 9000, 120000.00, '2026-05-14 15:59:53', '2026-05-14 15:59:53'),
(46, 38, 87, 2, 65000.00, 1000, 9000, 130000.00, '2026-05-14 15:59:53', '2026-05-14 15:59:53'),
(47, 39, 93, 1, 55000.00, 500, 4500, 55000.00, '2026-05-14 16:51:11', '2026-05-14 16:51:11'),
(48, 39, 87, 1, 65000.00, 500, 4500, 65000.00, '2026-05-14 16:51:11', '2026-05-14 16:51:11'),
(49, 39, 78, 1, 65000.00, 500, 4500, 65000.00, '2026-05-14 16:51:11', '2026-05-14 16:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('49i1jcg2uSwErpFq1UL4YZ4Lh78TRARNPSYn8YDZ', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ6eFB2NGhaUktnbkhUSDJqbnF6N1lOZlVlbXBwMWNyak1QNDB0MThEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvbG9naW4iLCJyb3V0ZSI6ImxvZ2luIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1778771088),
('4O62I93XzLkSWrqvNNVFDICfs6dOGIMLAY8aKDDM', NULL, '195.178.110.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/131.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJJbDFRcm54aVdoUlN5Z0ROYVpDZ3V6b3FTVVVJclRxczEwaXgyYjBxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvZGFzaGJvYXJkIiwicm91dGUiOiJkYXNoYm9hcmQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJ1cmwiOnsiaW50ZW5kZWQiOiJodHRwczpcL1wvc2V2ZW5rZXkuaWRcL2Rhc2hib2FyZCJ9fQ==', 1778776657),
('Cuq0LqjmdbfEJCykvm0rKXdXQZow1rDZNAu7vsFj', 1, '114.10.148.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', 'eyJfdG9rZW4iOiI2ZzVFeWNOUE9xQmMzUmdHMGJtMTFlVjJkcVppTm9SNU1TUHh4VUNBIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvcG9zXC9oaXN0b3J5Iiwicm91dGUiOiJwb3MuaGlzdG9yeSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sInVybCI6W10sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjoxfQ==', 1778777397),
('Ehz4S8xC7HWa1dYKDTRXQOcugJuJEXWzCIrQbWBe', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJaSE8wZ2ZqYzdkRW41bExMNnA4dWZJZ1NPd3JZeFhmTnpqVXE2ZlkxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvbG9naW4iLCJyb3V0ZSI6ImxvZ2luIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1778771094),
('L8meJJVUmMqUDaeL6yHeNpMpZFNQy4IOpIRdAG7P', NULL, '140.213.16.252', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', 'eyJfdG9rZW4iOiJMUWF0Mkl2UzlJUndmUFJSOU9HVGZqUzQ5Sm1yT0pqNWp4QmZsY29oIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvbG9naW4iLCJyb3V0ZSI6ImxvZ2luIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1778771514),
('LeXj1qDwimHuwFMJo7rQv0S3Z483hJrqUvyeGUpJ', NULL, '114.10.145.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', 'eyJfdG9rZW4iOiJENjlqRzk1TmNoY0JyajVKMGptQXBsMnVBRGFuY0o1UFFZemhhYnpBIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvbG9naW4iLCJyb3V0ZSI6ImxvZ2luIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwidXJsIjp7ImludGVuZGVkIjoiaHR0cHM6XC9cL3NldmVua2V5LmlkXC9kYXNoYm9hcmQifX0=', 1778777239),
('qmtzbkhzF2dZTxTWkU4ntnr8QqPQUJax0lOjdDvO', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJjR3o0VXlUUUtONU9LRHJEWmVBdTlzV2RBYWx5WVBCOTJ6Q3FqdXJ2IiwidXJsIjp7ImludGVuZGVkIjoiaHR0cHM6XC9cL3NldmVua2V5LmlkXC9kYXNoYm9hcmQifSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvZGFzaGJvYXJkIiwicm91dGUiOiJkYXNoYm9hcmQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1778771088),
('qykYiC3uYfMtuBzcKTKpTPIVh2Bu40muymSzkSr1', 10, '114.10.70.154', 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', 'eyJfdG9rZW4iOiJ1MlU4Sk9QQ2oyR3VGQUExNHpPSldrclFJZ0p0bjBIOUl4T1dSeVQ4IiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3NldmVua2V5LmlkXC9wb3NcL3JlcG9ydFwvZXhwb3J0P2Zvcm1hdD1wZGYmcGVyaW9kPXRvZGF5Iiwicm91dGUiOiJwb3MucmVwb3J0LmV4cG9ydCJ9LCJ1cmwiOltdLCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTB9', 1778771151),
('sz6H6ELomzGcoXEH3HIAAT5wAdbwATUFsXxy4GN5', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ4Tm51T0hkRDd5cWtvenh6WTU5QU1zZ09iUXBLTlNhYkExRVliSHB4IiwidXJsIjp7ImludGVuZGVkIjoiaHR0cHM6XC9cL3NldmVua2V5LmlkXC9kYXNoYm9hcmQifSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvZGFzaGJvYXJkIiwicm91dGUiOiJkYXNoYm9hcmQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1778771094),
('tYbJuxWblxC6a1awjjjmxEeDBvv5BERCkUNuP2k1', 10, '114.10.70.154', 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', 'eyJfdG9rZW4iOiJzTFIzNHA4aEg0MzFVR2N3UGxOSDRKSkVqTkJTWWxyQnVyVTE4UlBsIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3NldmVua2V5LmlkXC9wb3NcL3Nlc3Npb24iLCJyb3V0ZSI6InBvcy5zZXNzaW9uLmluZGV4In0sInVybCI6W10sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjoxMH0=', 1778777677),
('uGEdHxAIYKUjEb6aTQXqeIkPYdNV96IGWb95aR7x', 10, '114.10.70.154', 'Mozilla/5.0 (iPad; CPU OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3', 'eyJfdG9rZW4iOiJuOVVoblZmMG9VN2lSZ0xZWFQwY3RpRXlLTmg3UlZvZGR5bGE1eDZjIiwidXJsIjpbXSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZFwvcG9zXC9yZXBvcnRcL2V4cG9ydD9mb3JtYXQ9cGRmJnBlcmlvZD10b2RheSIsInJvdXRlIjoicG9zLnJlcG9ydC5leHBvcnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTB9', 1778771165),
('v5KsHR6DpJn2y26WZJxDcc320U620KlzNckgnB9t', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', 'eyJfdG9rZW4iOiJBNVdQZk5mbzEzT0c5NU9MVHYwSmNudUNQZjUxdDBuRDRVM2oyS09PIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1778777807),
('XBTyONjA2TTheD2Qnym3hRZEij1EgqhEaos8ZK7A', NULL, '195.178.110.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/131.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ4dVRvSG5zU1Jma05JbmdyZE55Zk5qajVtZm52cEh2NFlVbXVtVUhiIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL3NldmVua2V5LmlkXC9kYXNoYm9hcmQiLCJyb3V0ZSI6ImRhc2hib2FyZCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sInVybCI6eyJpbnRlbmRlZCI6Imh0dHA6XC9cL3NldmVua2V5LmlkXC9kYXNoYm9hcmQifX0=', 1778776658),
('yGH0VVCQIx4TKuzr13E64wtfk5iEhrzIM9kqgI2f', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJFRjVQR2tOYUM4QUIxdm95SWc3dE5WSXk0QkJCamZIeFMyeXcyN3BPIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZCIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1778771088),
('ZKtFVXsZKpDEEifi6nt7PisfBBDusEqtuLKnOcfU', NULL, '114.10.70.154', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ6cjhvWHcxTGthbDdWQzBoV2lMSjZOU3VVemxrTllMT21nZzZaaGR4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zZXZlbmtleS5pZCIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1778771093);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_no` varchar(50) NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('draft','prepared','packed','shipped','arrived','received') NOT NULL DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `arrived_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `shipment_no`, `warehouse_id`, `store_id`, `status`, `notes`, `shipped_at`, `arrived_at`, `received_at`, `shipped_by`, `received_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SHP-202605-0001', 1, 1, 'received', NULL, '2026-05-11 03:42:50', '2026-05-11 03:42:53', '2026-05-11 03:46:39', 4, 6, 4, '2026-05-11 03:42:22', '2026-05-11 03:46:39', NULL),
(2, 'SHP-202605-0002', 1, 1, 'received', NULL, '2026-05-13 07:45:35', '2026-05-13 07:48:15', '2026-05-13 08:42:15', 4, 10, 4, '2026-05-13 07:45:09', '2026-05-13 08:42:15', NULL),
(3, 'SHP-202605-0003', 1, 1, 'received', NULL, '2026-05-13 07:50:24', '2026-05-13 07:50:29', '2026-05-13 08:42:25', 4, 10, 4, '2026-05-13 07:50:04', '2026-05-13 08:42:25', NULL),
(4, 'SHP-202605-0004', 1, 3, 'received', NULL, '2026-05-13 08:28:44', '2026-05-13 08:28:46', '2026-05-13 08:29:51', 4, 10, 4, '2026-05-13 08:28:36', '2026-05-13 08:29:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty_sent` int(11) NOT NULL,
  `qty_received` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `shipment_id`, `product_variant_id`, `qty_sent`, `qty_received`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 500, 500, '2026-05-11 03:42:22', '2026-05-11 03:46:39'),
(2, 2, 65, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(3, 2, 66, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(4, 2, 89, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(5, 2, 90, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(6, 2, 92, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(7, 2, 93, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(8, 2, 81, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(9, 2, 80, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(10, 2, 78, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(11, 2, 77, 1, 1, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(12, 2, 74, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(13, 2, 75, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(14, 2, 71, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(15, 2, 72, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(16, 2, 68, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(17, 2, 69, 500, 500, '2026-05-13 07:45:09', '2026-05-13 08:42:15'),
(18, 3, 82, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(19, 3, 83, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(20, 3, 84, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(21, 3, 85, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(22, 3, 86, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(23, 3, 87, 500, 500, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(24, 3, 77, 499, 499, '2026-05-13 07:50:04', '2026-05-13 08:42:25'),
(25, 4, 2, 1, 1, '2026-05-13 08:28:36', '2026-05-13 08:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'XS', 'XS', 1, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(2, 'S', 'S', 2, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(3, 'M', 'M', 3, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(4, 'L', 'L', 4, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(5, 'XL', 'XL', 5, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(6, 'XXL', 'XXL', 6, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(7, '3XL', '3XL', 7, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(8, '28', '28', 8, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(9, '29', '29', 9, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(10, '30', '30', 10, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(11, '31', '31', 11, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(12, '32', '32', 12, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(13, '33', '33', 13, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45'),
(14, '34', '34', 14, 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(255) NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_variant_id`, `location_type`, `location_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, 'warehouse', 1, 499, '2026-05-11 03:41:31', '2026-05-13 08:28:44'),
(2, 2, 'store', 1, 314, '2026-05-11 03:46:39', '2026-05-13 13:50:16'),
(3, 1, 'store', 1, 0, '2026-05-11 05:10:18', '2026-05-11 06:09:39'),
(4, 48, 'warehouse', 1, 30, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(5, 49, 'warehouse', 1, 28, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(6, 50, 'warehouse', 1, 25, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(7, 51, 'warehouse', 1, 28, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(8, 60, 'warehouse', 1, 30, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(9, 61, 'warehouse', 1, 30, '2026-05-12 04:07:54', '2026-05-12 04:07:54'),
(10, 46, 'warehouse', 1, 29, '2026-05-12 04:10:43', '2026-05-12 04:10:43'),
(11, 47, 'warehouse', 1, 28, '2026-05-12 04:10:43', '2026-05-12 04:10:43'),
(12, 54, 'warehouse', 1, 30, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(13, 55, 'warehouse', 1, 30, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(14, 56, 'warehouse', 1, 29, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(15, 57, 'warehouse', 1, 29, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(16, 58, 'warehouse', 1, 30, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(17, 59, 'warehouse', 1, 30, '2026-05-12 04:14:46', '2026-05-12 04:14:46'),
(18, 52, 'warehouse', 1, 29, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(19, 53, 'warehouse', 1, 29, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(20, 62, 'warehouse', 1, 30, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(21, 63, 'warehouse', 1, 30, '2026-05-12 04:20:08', '2026-05-12 04:20:08'),
(22, 77, 'warehouse', 1, 0, '2026-05-13 06:48:47', '2026-05-13 07:50:24'),
(23, 78, 'warehouse', 1, 0, '2026-05-13 06:48:47', '2026-05-13 07:45:35'),
(24, 71, 'warehouse', 1, 0, '2026-05-13 06:53:02', '2026-05-13 07:45:35'),
(25, 72, 'warehouse', 1, 0, '2026-05-13 06:53:02', '2026-05-13 07:45:35'),
(26, 74, 'warehouse', 1, 0, '2026-05-13 06:53:02', '2026-05-13 07:45:35'),
(27, 75, 'warehouse', 1, 0, '2026-05-13 06:53:02', '2026-05-13 07:45:35'),
(28, 65, 'warehouse', 1, 0, '2026-05-13 06:55:42', '2026-05-13 07:45:35'),
(29, 66, 'warehouse', 1, 0, '2026-05-13 06:55:42', '2026-05-13 07:45:35'),
(30, 68, 'warehouse', 1, 0, '2026-05-13 06:55:42', '2026-05-13 07:45:35'),
(31, 69, 'warehouse', 1, 0, '2026-05-13 06:55:42', '2026-05-13 07:45:35'),
(32, 80, 'warehouse', 1, 0, '2026-05-13 06:58:45', '2026-05-13 07:45:35'),
(33, 81, 'warehouse', 1, 0, '2026-05-13 06:58:45', '2026-05-13 07:45:35'),
(34, 82, 'warehouse', 1, 0, '2026-05-13 07:34:06', '2026-05-13 07:50:24'),
(35, 83, 'warehouse', 1, 0, '2026-05-13 07:34:06', '2026-05-13 07:50:24'),
(36, 84, 'warehouse', 1, 0, '2026-05-13 07:34:06', '2026-05-13 07:50:24'),
(37, 85, 'warehouse', 1, 0, '2026-05-13 07:35:16', '2026-05-13 07:50:24'),
(38, 86, 'warehouse', 1, 0, '2026-05-13 07:35:16', '2026-05-13 07:50:24'),
(39, 87, 'warehouse', 1, 0, '2026-05-13 07:35:16', '2026-05-13 07:50:24'),
(40, 89, 'warehouse', 1, 0, '2026-05-13 07:36:18', '2026-05-13 07:45:35'),
(41, 90, 'warehouse', 1, 0, '2026-05-13 07:36:18', '2026-05-13 07:45:35'),
(42, 92, 'warehouse', 1, 0, '2026-05-13 07:36:18', '2026-05-13 07:45:35'),
(43, 93, 'warehouse', 1, 0, '2026-05-13 07:36:18', '2026-05-13 07:45:35'),
(44, 2, 'store', 3, 1, '2026-05-13 08:29:51', '2026-05-13 08:29:51'),
(45, 65, 'store', 1, 499, '2026-05-13 08:42:15', '2026-05-14 15:59:53'),
(46, 66, 'store', 1, 498, '2026-05-13 08:42:15', '2026-05-14 15:59:53'),
(47, 89, 'store', 1, 496, '2026-05-13 08:42:15', '2026-05-14 15:57:47'),
(48, 90, 'store', 1, 499, '2026-05-13 08:42:15', '2026-05-13 09:02:19'),
(49, 92, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(50, 93, 'store', 1, 499, '2026-05-13 08:42:15', '2026-05-14 16:51:11'),
(51, 81, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(52, 80, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(53, 78, 'store', 1, 498, '2026-05-13 08:42:15', '2026-05-14 16:51:11'),
(54, 77, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:25'),
(55, 74, 'store', 1, 491, '2026-05-13 08:42:15', '2026-05-14 15:57:47'),
(56, 75, 'store', 1, 497, '2026-05-13 08:42:15', '2026-05-14 15:11:25'),
(57, 71, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(58, 72, 'store', 1, 494, '2026-05-13 08:42:15', '2026-05-14 15:06:51'),
(59, 68, 'store', 1, 500, '2026-05-13 08:42:15', '2026-05-13 08:42:15'),
(60, 69, 'store', 1, 497, '2026-05-13 08:42:15', '2026-05-14 15:15:44'),
(61, 82, 'store', 1, 500, '2026-05-13 08:42:25', '2026-05-13 08:42:25'),
(62, 83, 'store', 1, 448, '2026-05-13 08:42:25', '2026-05-14 15:57:47'),
(63, 84, 'store', 1, 499, '2026-05-13 08:42:25', '2026-05-13 09:07:56'),
(64, 85, 'store', 1, 500, '2026-05-13 08:42:25', '2026-05-13 08:42:25'),
(65, 86, 'store', 1, 499, '2026-05-13 08:42:25', '2026-05-14 15:56:39'),
(66, 87, 'store', 1, 497, '2026-05-13 08:42:25', '2026-05-14 16:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `stock_ledgers`
--

CREATE TABLE `stock_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(255) NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out','adjust','transfer_in','transfer_out','sale','return','opname') NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_before` int(11) NOT NULL,
  `qty_after` int(11) NOT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_ledgers`
--

INSERT INTO `stock_ledgers` (`id`, `product_variant_id`, `location_type`, `location_id`, `type`, `qty`, `qty_before`, `qty_after`, `reference_type`, `reference_id`, `note`, `created_by`, `created_at`) VALUES
(1, 2, 'warehouse', 1, 'in', 1000, 0, 1000, 'App\\Models\\Inbound', 1, 'Penerimaan barang INB-202605-0001', 4, '2026-05-11 10:41:31'),
(2, 2, 'warehouse', 1, 'opname', 0, 1000, 1000, 'App\\Models\\StockOpname', 1, 'Penyesuaian opname OPN-202605-0001', 4, '2026-05-11 10:41:50'),
(3, 2, 'warehouse', 1, 'transfer_out', -500, 1000, 500, 'App\\Models\\Shipment', 1, 'Pengiriman SHP-202605-0001 ke Blok B', 4, '2026-05-11 10:42:50'),
(4, 2, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 1, 'Penerimaan pengiriman SHP-202605-0001', 6, '2026-05-11 10:46:39'),
(5, 2, 'store', 1, 'sale', -5, 500, 495, 'App\\Models\\Sale', 1, 'Penjualan SAL-202605-0001', 6, '2026-05-11 10:48:59'),
(6, 2, 'store', 1, 'sale', -1, 495, 494, 'App\\Models\\Sale', 2, 'Penjualan SAL-202605-0002', 6, '2026-05-11 11:34:35'),
(7, 2, 'store', 1, 'sale', -3, 494, 491, 'App\\Models\\Sale', 3, 'Penjualan SAL-202605-0003', 10, '2026-05-11 12:05:54'),
(8, 2, 'store', 1, 'sale', -5, 491, 486, 'App\\Models\\Sale', 4, 'Penjualan SAL-202605-0004', 10, '2026-05-11 12:07:38'),
(9, 1, 'store', 1, 'return', 1, 0, 1, 'App\\Models\\CustomerReturn', 1, 'Retur konsumen CRT-202605-0001', 10, '2026-05-11 12:10:18'),
(10, 2, 'store', 1, 'sale', -7, 486, 479, 'App\\Models\\Sale', 5, 'Penjualan SAL-202605-0005', 10, '2026-05-11 12:16:53'),
(11, 1, 'store', 1, 'sale', -1, 1, 0, 'App\\Models\\Sale', 5, 'Penjualan SAL-202605-0005', 10, '2026-05-11 12:16:53'),
(12, 2, 'store', 1, 'sale', -3, 479, 476, 'App\\Models\\Sale', 6, 'Penjualan SAL-202605-0006', 10, '2026-05-11 12:19:05'),
(13, 2, 'store', 1, 'sale', -3, 476, 473, 'App\\Models\\Sale', 7, 'Penjualan SAL-202605-0007', 10, '2026-05-11 12:51:03'),
(14, 2, 'store', 1, 'sale', -5, 473, 468, 'App\\Models\\Sale', 8, 'Penjualan SAL-202605-0008', 10, '2026-05-11 12:51:37'),
(15, 2, 'store', 1, 'sale', -2, 468, 466, 'App\\Models\\Sale', 9, 'Penjualan SAL-202605-0009', 10, '2026-05-11 12:58:32'),
(16, 1, 'store', 1, 'return', 1, 0, 1, 'App\\Models\\CustomerReturn', 2, 'Retur konsumen CRT-202605-0002', 10, '2026-05-11 13:02:15'),
(17, 2, 'store', 1, 'sale', -4, 466, 462, 'App\\Models\\Sale', 10, 'Penjualan SAL-202605-0010', 10, '2026-05-11 13:09:39'),
(18, 1, 'store', 1, 'sale', -1, 1, 0, 'App\\Models\\Sale', 10, 'Penjualan SAL-202605-0010', 10, '2026-05-11 13:09:39'),
(19, 48, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(20, 49, 'warehouse', 1, 'in', 28, 0, 28, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(21, 50, 'warehouse', 1, 'in', 25, 0, 25, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(22, 51, 'warehouse', 1, 'in', 28, 0, 28, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(23, 60, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(24, 61, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 2, 'Penerimaan barang INB-202605-0002', 4, '2026-05-12 11:07:54'),
(25, 46, 'warehouse', 1, 'in', 29, 0, 29, 'App\\Models\\Inbound', 3, 'Penerimaan barang INB-202605-0003', 4, '2026-05-12 11:10:43'),
(26, 47, 'warehouse', 1, 'in', 28, 0, 28, 'App\\Models\\Inbound', 3, 'Penerimaan barang INB-202605-0003', 4, '2026-05-12 11:10:43'),
(27, 54, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(28, 55, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(29, 56, 'warehouse', 1, 'in', 29, 0, 29, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(30, 57, 'warehouse', 1, 'in', 29, 0, 29, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(31, 58, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(32, 59, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 4, 'Penerimaan barang INB-202605-0004', 4, '2026-05-12 11:14:46'),
(33, 52, 'warehouse', 1, 'in', 29, 0, 29, 'App\\Models\\Inbound', 5, 'Penerimaan barang INB-202605-0005', 4, '2026-05-12 11:20:08'),
(34, 53, 'warehouse', 1, 'in', 29, 0, 29, 'App\\Models\\Inbound', 5, 'Penerimaan barang INB-202605-0005', 4, '2026-05-12 11:20:08'),
(35, 62, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 5, 'Penerimaan barang INB-202605-0005', 4, '2026-05-12 11:20:08'),
(36, 63, 'warehouse', 1, 'in', 30, 0, 30, 'App\\Models\\Inbound', 5, 'Penerimaan barang INB-202605-0005', 4, '2026-05-12 11:20:08'),
(37, 2, 'store', 1, 'sale', -1, 462, 461, 'App\\Models\\Sale', 11, 'Penjualan SAL-202605-0011', 6, '2026-05-12 11:23:36'),
(38, 2, 'store', 1, 'sale', -1, 461, 460, 'App\\Models\\Sale', 12, 'Penjualan SAL-202605-0012', 6, '2026-05-12 11:26:33'),
(39, 2, 'store', 1, 'sale', -5, 460, 455, 'App\\Models\\Sale', 13, 'Penjualan SAL-202605-0013', 6, '2026-05-12 11:27:40'),
(40, 2, 'store', 1, 'sale', -1, 455, 454, 'App\\Models\\Sale', 14, 'Penjualan SAL-202605-0014', 6, '2026-05-12 11:28:40'),
(41, 2, 'store', 1, 'sale', -1, 454, 453, 'App\\Models\\Sale', 15, 'Penjualan SAL-202605-0015', 6, '2026-05-13 10:19:50'),
(42, 2, 'store', 1, 'sale', -1, 453, 452, 'App\\Models\\Sale', 16, 'Penjualan SAL-202605-0016', 6, '2026-05-13 10:21:45'),
(43, 2, 'store', 1, 'sale', -1, 452, 451, 'App\\Models\\Sale', 17, 'Penjualan SAL-202605-0017', 6, '2026-05-13 10:32:45'),
(44, 2, 'store', 1, 'sale', -100, 451, 351, 'App\\Models\\Sale', 18, 'Penjualan SAL-202605-0018', 6, '2026-05-13 10:57:46'),
(45, 77, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 6, 'Penerimaan barang INB-202605-0006', 4, '2026-05-13 13:48:47'),
(46, 78, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 6, 'Penerimaan barang INB-202605-0006', 4, '2026-05-13 13:48:47'),
(47, 71, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 7, 'Penerimaan barang INB-202605-0007', 4, '2026-05-13 13:53:02'),
(48, 72, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 7, 'Penerimaan barang INB-202605-0007', 4, '2026-05-13 13:53:02'),
(49, 74, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 7, 'Penerimaan barang INB-202605-0007', 4, '2026-05-13 13:53:02'),
(50, 75, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 7, 'Penerimaan barang INB-202605-0007', 4, '2026-05-13 13:53:02'),
(51, 65, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 8, 'Penerimaan barang INB-202605-0008', 4, '2026-05-13 13:55:42'),
(52, 66, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 8, 'Penerimaan barang INB-202605-0008', 4, '2026-05-13 13:55:42'),
(53, 68, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 8, 'Penerimaan barang INB-202605-0008', 4, '2026-05-13 13:55:42'),
(54, 69, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 8, 'Penerimaan barang INB-202605-0008', 4, '2026-05-13 13:55:42'),
(55, 80, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 9, 'Penerimaan barang INB-202605-0009', 4, '2026-05-13 13:58:45'),
(56, 81, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 9, 'Penerimaan barang INB-202605-0009', 4, '2026-05-13 13:58:45'),
(57, 82, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 10, 'Penerimaan barang INB-202605-0010', 4, '2026-05-13 14:34:06'),
(58, 83, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 10, 'Penerimaan barang INB-202605-0010', 4, '2026-05-13 14:34:06'),
(59, 84, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 10, 'Penerimaan barang INB-202605-0010', 4, '2026-05-13 14:34:06'),
(60, 85, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 11, 'Penerimaan barang INB-202605-0011', 4, '2026-05-13 14:35:16'),
(61, 86, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 11, 'Penerimaan barang INB-202605-0011', 4, '2026-05-13 14:35:16'),
(62, 87, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 11, 'Penerimaan barang INB-202605-0011', 4, '2026-05-13 14:35:16'),
(63, 89, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 12, 'Penerimaan barang INB-202605-0012', 4, '2026-05-13 14:36:18'),
(64, 90, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 12, 'Penerimaan barang INB-202605-0012', 4, '2026-05-13 14:36:18'),
(65, 92, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 12, 'Penerimaan barang INB-202605-0012', 4, '2026-05-13 14:36:18'),
(66, 93, 'warehouse', 1, 'in', 500, 0, 500, 'App\\Models\\Inbound', 12, 'Penerimaan barang INB-202605-0012', 4, '2026-05-13 14:36:18'),
(67, 65, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(68, 66, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(69, 89, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(70, 90, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(71, 92, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(72, 93, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(73, 81, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(74, 80, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(75, 78, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(76, 77, 'warehouse', 1, 'transfer_out', -1, 500, 499, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(77, 74, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(78, 75, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(79, 71, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(80, 72, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(81, 68, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(82, 69, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 2, 'Pengiriman SHP-202605-0002 ke Blok B', 4, '2026-05-13 14:45:35'),
(83, 77, 'warehouse', 1, 'transfer_out', -499, 499, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(84, 82, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(85, 83, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(86, 84, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(87, 85, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(88, 86, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(89, 87, 'warehouse', 1, 'transfer_out', -500, 500, 0, 'App\\Models\\Shipment', 3, 'Pengiriman SHP-202605-0003 ke Blok B', 4, '2026-05-13 14:50:24'),
(90, 2, 'warehouse', 1, 'transfer_out', -1, 500, 499, 'App\\Models\\Shipment', 4, 'Pengiriman SHP-202605-0004 ke Metro', 4, '2026-05-13 15:28:44'),
(91, 2, 'store', 3, 'transfer_in', 1, 0, 1, 'App\\Models\\Shipment', 4, 'Penerimaan pengiriman SHP-202605-0004', 10, '2026-05-13 15:29:51'),
(92, 65, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(93, 66, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(94, 89, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(95, 90, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(96, 92, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(97, 93, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(98, 81, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(99, 80, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(100, 78, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(101, 77, 'store', 1, 'transfer_in', 1, 0, 1, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(102, 74, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(103, 75, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(104, 71, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(105, 72, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(106, 68, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(107, 69, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 2, 'Penerimaan pengiriman SHP-202605-0002', 10, '2026-05-13 15:42:15'),
(108, 77, 'store', 1, 'transfer_in', 499, 1, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(109, 82, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(110, 83, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(111, 84, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(112, 85, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(113, 86, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(114, 87, 'store', 1, 'transfer_in', 500, 0, 500, 'App\\Models\\Shipment', 3, 'Penerimaan pengiriman SHP-202605-0003', 10, '2026-05-13 15:42:25'),
(115, 2, 'store', 1, 'opname', 0, 351, 351, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(116, 65, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(117, 66, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(118, 89, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(119, 90, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(120, 92, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(121, 93, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(122, 81, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(123, 80, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(124, 78, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(125, 77, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(126, 74, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(127, 75, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(128, 71, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(129, 72, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(130, 68, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(131, 69, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(132, 82, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(133, 83, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(134, 84, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(135, 85, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(136, 86, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(137, 87, 'store', 1, 'opname', 0, 500, 500, 'App\\Models\\StockOpname', 5, 'Penyesuaian opname OPN-202605-0003', 10, '2026-05-13 15:54:22'),
(138, 75, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 19, 'Penjualan SAL-202605-0019', 10, '2026-05-13 16:02:19'),
(139, 90, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 19, 'Penjualan SAL-202605-0019', 10, '2026-05-13 16:02:19'),
(140, 84, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 20, 'Penjualan SAL-202605-0020', 10, '2026-05-13 16:07:56'),
(141, 75, 'store', 1, 'sale', -1, 499, 498, 'App\\Models\\Sale', 21, 'Penjualan SAL-202605-0021', 10, '2026-05-13 19:43:58'),
(142, 74, 'store', 1, 'sale', -7, 500, 493, 'App\\Models\\Sale', 22, 'Penjualan SAL-202605-0022', 10, '2026-05-13 19:52:49'),
(143, 2, 'store', 1, 'sale', -20, 351, 331, 'App\\Models\\Sale', 23, 'Penjualan SAL-202605-0023', 10, '2026-05-13 20:04:04'),
(144, 2, 'store', 1, 'sale', -1, 331, 330, 'App\\Models\\Sale', 24, 'Penjualan SAL-202605-0024', 10, '2026-05-13 20:12:30'),
(145, 2, 'store', 1, 'sale', -1, 330, 329, 'App\\Models\\Sale', 25, 'Penjualan SAL-202605-0025', 10, '2026-05-13 20:19:58'),
(146, 2, 'store', 1, 'sale', -13, 329, 316, 'App\\Models\\Sale', 26, 'Penjualan SAL-202605-0026', 10, '2026-05-13 20:47:49'),
(147, 2, 'store', 1, 'sale', -1, 316, 315, 'App\\Models\\Sale', 27, 'Penjualan SAL-202605-0027', 10, '2026-05-13 20:49:44'),
(148, 2, 'store', 1, 'sale', -1, 315, 314, 'App\\Models\\Sale', 28, 'Penjualan SAL-202605-0028', 10, '2026-05-13 20:50:16'),
(149, 72, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 29, 'Penjualan SAL-202605-0029', 10, '2026-05-14 03:57:15'),
(150, 69, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 30, 'Penjualan SAL-202605-0030', 10, '2026-05-14 04:08:30'),
(151, 72, 'store', 1, 'sale', -4, 499, 495, 'App\\Models\\Sale', 31, 'Penjualan SAL-202605-0031', 10, '2026-05-14 07:05:50'),
(152, 69, 'store', 1, 'sale', -1, 499, 498, 'App\\Models\\Sale', 32, 'Penjualan SAL-202605-0032', 10, '2026-05-14 07:07:30'),
(153, 72, 'store', 1, 'sale', -1, 495, 494, 'App\\Models\\Sale', 33, 'Penjualan SAL-202605-0033', 10, '2026-05-14 15:06:51'),
(154, 75, 'store', 1, 'sale', -1, 498, 497, 'App\\Models\\Sale', 34, 'Penjualan SAL-202605-0034', 10, '2026-05-14 15:11:25'),
(155, 69, 'store', 1, 'sale', -1, 498, 497, 'App\\Models\\Sale', 35, 'Penjualan SAL-202605-0035', 10, '2026-05-14 15:15:44'),
(156, 86, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 36, 'Penjualan SAL-202605-0036', 10, '2026-05-14 15:56:39'),
(157, 78, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 36, 'Penjualan SAL-202605-0036', 10, '2026-05-14 15:56:39'),
(158, 74, 'store', 1, 'sale', -2, 493, 491, 'App\\Models\\Sale', 37, 'Penjualan SAL-202605-0037', 10, '2026-05-14 15:57:47'),
(159, 83, 'store', 1, 'sale', -52, 500, 448, 'App\\Models\\Sale', 37, 'Penjualan SAL-202605-0037', 10, '2026-05-14 15:57:47'),
(160, 89, 'store', 1, 'sale', -4, 500, 496, 'App\\Models\\Sale', 37, 'Penjualan SAL-202605-0037', 10, '2026-05-14 15:57:47'),
(161, 65, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 38, 'Penjualan SAL-202605-0038', 10, '2026-05-14 15:59:53'),
(162, 66, 'store', 1, 'sale', -2, 500, 498, 'App\\Models\\Sale', 38, 'Penjualan SAL-202605-0038', 10, '2026-05-14 15:59:53'),
(163, 87, 'store', 1, 'sale', -2, 500, 498, 'App\\Models\\Sale', 38, 'Penjualan SAL-202605-0038', 10, '2026-05-14 15:59:53'),
(164, 93, 'store', 1, 'sale', -1, 500, 499, 'App\\Models\\Sale', 39, 'Penjualan SAL-202605-0039', 10, '2026-05-14 16:51:11'),
(165, 87, 'store', 1, 'sale', -1, 498, 497, 'App\\Models\\Sale', 39, 'Penjualan SAL-202605-0039', 10, '2026-05-14 16:51:11'),
(166, 78, 'store', 1, 'sale', -1, 499, 498, 'App\\Models\\Sale', 39, 'Penjualan SAL-202605-0039', 10, '2026-05-14 16:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `stock_opnames`
--

CREATE TABLE `stock_opnames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opname_no` varchar(255) NOT NULL,
  `location_type` varchar(255) NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('draft','submitted','approved','rejected') NOT NULL DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `submitted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_opnames`
--

INSERT INTO `stock_opnames` (`id`, `opname_no`, `location_type`, `location_id`, `status`, `notes`, `rejection_reason`, `submitted_at`, `submitted_by`, `approved_at`, `approved_by`, `rejected_at`, `rejected_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'OPN-202605-0001', 'warehouse', 1, 'approved', NULL, NULL, '2026-05-11 03:41:46', 4, '2026-05-11 03:41:50', 4, NULL, NULL, 4, '2026-05-11 03:41:39', '2026-05-11 03:41:50'),
(2, 'OPN-202605-0002', 'store', 1, 'submitted', NULL, NULL, '2026-05-11 03:47:12', 6, NULL, NULL, NULL, NULL, 6, '2026-05-11 03:46:59', '2026-05-11 03:47:12'),
(5, 'OPN-202605-0003', 'store', 1, 'approved', NULL, NULL, '2026-05-13 08:54:18', 10, '2026-05-13 08:54:22', 10, NULL, NULL, 10, '2026-05-13 08:53:51', '2026-05-13 08:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `stock_opname_items`
--

CREATE TABLE `stock_opname_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_opname_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty_system` int(11) NOT NULL,
  `qty_actual` int(11) DEFAULT NULL,
  `qty_difference` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_opname_items`
--

INSERT INTO `stock_opname_items` (`id`, `stock_opname_id`, `product_variant_id`, `qty_system`, `qty_actual`, `qty_difference`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1000, 1000, 0, '2026-05-11 03:41:39', '2026-05-11 03:41:46'),
(2, 2, 2, 500, 500, 0, '2026-05-11 03:47:00', '2026-05-11 03:47:12'),
(5, 5, 2, 351, 351, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(6, 5, 65, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(7, 5, 66, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(8, 5, 89, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(9, 5, 90, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(10, 5, 92, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(11, 5, 93, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(12, 5, 81, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(13, 5, 80, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(14, 5, 78, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(15, 5, 77, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(16, 5, 74, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(17, 5, 75, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(18, 5, 71, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(19, 5, 72, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(20, 5, 68, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(21, 5, 69, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(22, 5, 82, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(23, 5, 83, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(24, 5, 84, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(25, 5, 85, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(26, 5, 86, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18'),
(27, 5, 87, 500, 500, 0, '2026-05-13 08:53:51', '2026-05-13 08:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account` varchar(100) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `monthly_target_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `code`, `address`, `city`, `phone`, `pic_name`, `bank_name`, `bank_account`, `bank_account_name`, `is_active`, `monthly_target_qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Blok B', 'TK-01', NULL, 'Jakarta', NULL, 'Rio', 'BCA', '3460830949', 'ASRIL', 1, 8000, '2026-05-08 09:16:45', '2026-05-13 09:17:42', NULL),
(2, 'Andir', 'TK-02', NULL, 'Bandung', NULL, 'Kepala Toko 2', 'BCA', '3460830949', 'ASRIL', 1, 8000, '2026-05-08 09:16:45', '2026-05-13 09:17:17', NULL),
(3, 'Metro', 'TK-03', NULL, 'Jakarta', NULL, 'Sapri', 'BCA', '3460830949', 'ASRIL', 1, 8000, '2026-05-08 09:16:45', '2026-05-13 09:17:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_returns`
--

CREATE TABLE `store_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_no` varchar(255) NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `return_reason_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','received','inspected') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `inspection_notes` text DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `inspected_at` timestamp NULL DEFAULT NULL,
  `inspected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_return_items`
--

CREATE TABLE `store_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty_returned` int(10) UNSIGNED NOT NULL,
  `qty_good` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qty_damaged` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_targets`
--

CREATE TABLE `store_targets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `target_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_targets`
--

INSERT INTO `store_targets` (`id`, `store_id`, `month`, `year`, `target_qty`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 2026, 8000, '2026-05-13 09:17:17', '2026-05-13 09:17:17'),
(2, 1, 5, 2026, 8000, '2026-05-13 09:17:42', '2026-05-13 09:17:42'),
(3, 3, 5, 2026, 8000, '2026-05-13 09:17:56', '2026-05-13 09:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_no` varchar(255) NOT NULL,
  `from_store_id` bigint(20) UNSIGNED NOT NULL,
  `to_store_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected','shipped','received') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `qty_requested` int(10) UNSIGNED NOT NULL,
  `qty_sent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qty_received` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `email_verified_at`, `password`, `is_active`, `last_login_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'superadmin@sevenkey.id', NULL, NULL, NULL, '$2y$12$6epYP2gR4WgCgbM1dLxrOOp3lzkzjFEywK5/Br6R0bB7ht6ECdkcm', 1, '2026-05-14 16:34:45', NULL, '2026-05-08 09:16:45', '2026-05-14 16:34:45', NULL),
(2, 'Owner SevenKey', 'owner@sevenkey.id', NULL, NULL, NULL, '$2y$12$u.u3DQu6dmgKGOAU40H5eu/sOyRWtiJ.jY00ZTysrE7rez6anHP/i', 1, '2026-05-12 10:32:27', NULL, '2026-05-08 09:16:46', '2026-05-12 10:32:27', NULL),
(3, 'Finance Team', 'finance@sevenkey.id', NULL, NULL, NULL, '$2y$12$sH4TO2.hBd5Kk5EyrEdlY.8ANEh7MZE40HxDZ5l34acRzAsYNM8F.', 1, NULL, NULL, '2026-05-08 09:16:46', '2026-05-08 09:16:46', NULL),
(4, 'Admin Gudang', 'admin.gudang@sevenkey.id', NULL, NULL, NULL, '$2y$12$8D.AFJYW7PlMKMxgcaatZOZ0FVvGEHQIr0hMZOGKBii0hO9WnYIrq', 1, '2026-05-13 08:47:18', NULL, '2026-05-08 09:16:46', '2026-05-13 08:47:18', NULL),
(5, 'Operator Gudang', 'operator.gudang@sevenkey.id', NULL, NULL, NULL, '$2y$12$jTxaeSyjEUkZbr8GZvG5wOqZXe803qK2OjbRjoDQ9qt171GwcY2Q.', 1, NULL, NULL, '2026-05-08 09:16:47', '2026-05-08 09:16:47', NULL),
(6, 'Kepala Toko 1', 'kepala.toko@sevenkey.id', NULL, NULL, NULL, '$2y$12$kxiwe17GBaC.N73sAe3eSuvnqYJDRgnEqbxpcUGK5kM66Lmwy2/iO', 1, '2026-05-13 08:24:42', NULL, '2026-05-08 09:16:47', '2026-05-13 08:36:55', '2026-05-13 08:36:55'),
(7, 'Kasir Toko 1', 'kasir@sevenkey.id', NULL, NULL, NULL, '$2y$12$JMaU7g7/omNJw1cNgHbZ/O4mjgU5TAIiHHBQ5Wj2Ti5yLzrbzAkWy', 1, '2026-05-11 12:33:22', NULL, '2026-05-08 09:16:47', '2026-05-13 08:36:59', '2026-05-13 08:36:59'),
(8, 'Uncu', 'uncu@email.com', '087823205511', NULL, NULL, '$2y$12$tl8FkQQECxwExDN8yIcTm.FCY7WaCUngRopWgp9dyWf.HWjWid8Tm', 1, '2026-05-10 21:12:57', NULL, '2026-05-10 21:12:31', '2026-05-10 21:16:31', '2026-05-10 21:16:31'),
(9, 'Sevenkey - Andir', 'sevenkeynexttime@yahoo.com', '087823205511', NULL, NULL, '$2y$12$lrlxohp8YaV.Pf3/KeKuxeSOzxjyjhio4vmLCNEdUcRTsgcjEc0MK', 1, '2026-05-13 22:22:24', 'CNWwhoQ9lC0yqsKB7Dg00B3nuuhhtCrO02nV0DshqZsfq5Vdio36DPNCTtjt', '2026-05-10 21:17:53', '2026-05-13 22:22:24', NULL),
(10, 'Holystic', 'holysticstore2@gmail.com', NULL, NULL, NULL, '$2y$12$m.7iUfFg/01sqwR.vEwasODtIlZLtVBjRlewbY4sXmKrB9x0RQkpO', 1, '2026-05-14 16:19:22', '5TuLb5pEYBih9p2YJmMBlN1fMpoikDoTfJLPLoc0QHh211f7vehBMnumdkAa', '2026-05-11 04:48:38', '2026-05-14 16:19:22', NULL),
(11, 'Heavenkey', 'heavenkeystoreheavenkey@gmail.com', NULL, NULL, NULL, '$2y$12$LDin9bf5pNuzb.eauapF/ekBU4RJRIlBcrLUfSNh1kalwPiF0ba9G', 1, '2026-05-11 04:55:59', 'fEXC10O7RFeNreG7tsy2eSGTnnjNjBkPbX17qJO99uH9QnNKkrxx62jusAbt', '2026-05-11 04:54:17', '2026-05-11 04:55:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_store`
--

CREATE TABLE `user_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_store`
--

INSERT INTO `user_store` (`id`, `user_id`, `store_id`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 1, '2026-05-08 09:16:47', '2026-05-08 09:16:47'),
(2, 7, 1, 1, '2026-05-08 09:16:47', '2026-05-08 09:16:47'),
(3, 8, 2, 1, '2026-05-10 21:12:32', '2026-05-10 21:12:32'),
(4, 9, 2, 1, '2026-05-10 21:17:53', '2026-05-10 21:17:53'),
(6, 11, 3, 1, '2026-05-11 04:54:17', '2026-05-11 04:54:17'),
(8, 10, 1, 1, '2026-05-13 08:40:47', '2026-05-13 08:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouse`
--

CREATE TABLE `user_warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_warehouse`
--

INSERT INTO `user_warehouse` (`id`, `user_id`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `code`, `address`, `city`, `phone`, `pic_name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gudang Utama', 'GDG-01', NULL, 'Jakarta', NULL, 'Admin Gudang', 1, '2026-05-08 09:16:45', '2026-05-08 09:16:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_logs_module_action_index` (`module`,`action`),
  ADD KEY `audit_logs_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `audit_logs_user_id_index` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_code_unique` (`code`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `cash_sessions`
--
ALTER TABLE `cash_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_sessions_store_id_status_index` (`store_id`,`status`),
  ADD KEY `cash_sessions_user_id_status_index` (`user_id`,`status`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_code_unique` (`code`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `customer_returns`
--
ALTER TABLE `customer_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_returns_return_no_unique` (`return_no`),
  ADD KEY `customer_returns_sale_id_foreign` (`sale_id`),
  ADD KEY `customer_returns_return_reason_id_foreign` (`return_reason_id`),
  ADD KEY `customer_returns_processed_by_foreign` (`processed_by`),
  ADD KEY `customer_returns_created_by_foreign` (`created_by`),
  ADD KEY `customer_returns_store_id_status_index` (`store_id`,`status`);

--
-- Indexes for table `customer_return_items`
--
ALTER TABLE `customer_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_return_items_customer_return_id_foreign` (`customer_return_id`),
  ADD KEY `customer_return_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_store_id_foreign` (`store_id`),
  ADD KEY `expenses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inbounds`
--
ALTER TABLE `inbounds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inbounds_reference_no_unique` (`reference_no`),
  ADD KEY `inbounds_received_by_foreign` (`received_by`),
  ADD KEY `inbounds_created_by_foreign` (`created_by`),
  ADD KEY `inbounds_warehouse_id_status_index` (`warehouse_id`,`status`);

--
-- Indexes for table `inbound_items`
--
ALTER TABLE `inbound_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_inbound_variant` (`inbound_id`,`product_variant_id`),
  ADD KEY `inbound_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_code_unique` (`code`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_model_code_unique` (`model_code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_product_type_id_foreign` (`product_type_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_brand_id_is_active_index` (`brand_id`,`is_active`),
  ADD KEY `products_model_code_index` (`model_code`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_types_code_unique` (`code`),
  ADD UNIQUE KEY `product_types_slug_unique` (`slug`),
  ADD KEY `product_types_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_variant` (`product_id`,`color_id`,`size_id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`sku`),
  ADD KEY `product_variants_color_id_foreign` (`color_id`),
  ADD KEY `product_variants_size_id_foreign` (`size_id`),
  ADD KEY `product_variants_sku_index` (`sku`),
  ADD KEY `product_variants_product_image_id_foreign` (`product_image_id`);

--
-- Indexes for table `return_reasons`
--
ALTER TABLE `return_reasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `return_reasons_code_unique` (`code`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_sale_no_unique` (`sale_no`),
  ADD KEY `sales_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_store_id_created_at_index` (`store_id`,`created_at`),
  ADD KEY `sales_cash_session_id_index` (`cash_session_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipments_shipment_no_unique` (`shipment_no`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_received_by_foreign` (`received_by`),
  ADD KEY `shipments_created_by_foreign` (`created_by`),
  ADD KEY `shipments_warehouse_id_status_index` (`warehouse_id`,`status`),
  ADD KEY `shipments_store_id_status_index` (`store_id`,`status`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_shipment_variant` (`shipment_id`,`product_variant_id`),
  ADD KEY `shipment_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_code_unique` (`code`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_stock` (`product_variant_id`,`location_type`,`location_id`),
  ADD KEY `stocks_location_type_location_id_index` (`location_type`,`location_id`);

--
-- Indexes for table `stock_ledgers`
--
ALTER TABLE `stock_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_ledgers_location_type_location_id_index` (`location_type`,`location_id`),
  ADD KEY `stock_ledgers_created_by_foreign` (`created_by`),
  ADD KEY `stock_ledgers_product_variant_id_location_type_location_id_index` (`product_variant_id`,`location_type`,`location_id`),
  ADD KEY `stock_ledgers_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_opnames_opname_no_unique` (`opname_no`),
  ADD KEY `stock_opnames_submitted_by_foreign` (`submitted_by`),
  ADD KEY `stock_opnames_approved_by_foreign` (`approved_by`),
  ADD KEY `stock_opnames_rejected_by_foreign` (`rejected_by`),
  ADD KEY `stock_opnames_created_by_foreign` (`created_by`),
  ADD KEY `stock_opnames_location_type_location_id_status_index` (`location_type`,`location_id`,`status`);

--
-- Indexes for table `stock_opname_items`
--
ALTER TABLE `stock_opname_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_opname_variant` (`stock_opname_id`,`product_variant_id`),
  ADD KEY `stock_opname_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_code_unique` (`code`);

--
-- Indexes for table `store_returns`
--
ALTER TABLE `store_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_returns_return_no_unique` (`return_no`),
  ADD KEY `store_returns_return_reason_id_foreign` (`return_reason_id`),
  ADD KEY `store_returns_received_by_foreign` (`received_by`),
  ADD KEY `store_returns_inspected_by_foreign` (`inspected_by`),
  ADD KEY `store_returns_created_by_foreign` (`created_by`),
  ADD KEY `store_returns_store_id_status_index` (`store_id`,`status`),
  ADD KEY `store_returns_warehouse_id_status_index` (`warehouse_id`,`status`);

--
-- Indexes for table `store_return_items`
--
ALTER TABLE `store_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_return_items_store_return_id_foreign` (`store_return_id`),
  ADD KEY `store_return_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `store_targets`
--
ALTER TABLE `store_targets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_targets_store_id_month_year_unique` (`store_id`,`month`,`year`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_transfer_no_unique` (`transfer_no`),
  ADD KEY `transfers_approved_by_foreign` (`approved_by`),
  ADD KEY `transfers_rejected_by_foreign` (`rejected_by`),
  ADD KEY `transfers_shipped_by_foreign` (`shipped_by`),
  ADD KEY `transfers_received_by_foreign` (`received_by`),
  ADD KEY `transfers_created_by_foreign` (`created_by`),
  ADD KEY `transfers_from_store_id_status_index` (`from_store_id`,`status`),
  ADD KEY `transfers_to_store_id_status_index` (`to_store_id`,`status`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_transfer_variant` (`transfer_id`,`product_variant_id`),
  ADD KEY `transfer_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_store_user_id_store_id_unique` (`user_id`,`store_id`),
  ADD KEY `user_store_store_id_foreign` (`store_id`);

--
-- Indexes for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_warehouse_user_id_foreign` (`user_id`),
  ADD KEY `user_warehouse_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_code_unique` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cash_sessions`
--
ALTER TABLE `cash_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_returns`
--
ALTER TABLE `customer_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_return_items`
--
ALTER TABLE `customer_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbounds`
--
ALTER TABLE `inbounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inbound_items`
--
ALTER TABLE `inbound_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `return_reasons`
--
ALTER TABLE `return_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `stock_ledgers`
--
ALTER TABLE `stock_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_opname_items`
--
ALTER TABLE `stock_opname_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_returns`
--
ALTER TABLE `store_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_return_items`
--
ALTER TABLE `store_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_targets`
--
ALTER TABLE `store_targets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_store`
--
ALTER TABLE `user_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cash_sessions`
--
ALTER TABLE `cash_sessions`
  ADD CONSTRAINT `cash_sessions_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `cash_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_returns`
--
ALTER TABLE `customer_returns`
  ADD CONSTRAINT `customer_returns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customer_returns_processed_by_foreign` FOREIGN KEY (`processed_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customer_returns_return_reason_id_foreign` FOREIGN KEY (`return_reason_id`) REFERENCES `return_reasons` (`id`),
  ADD CONSTRAINT `customer_returns_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `customer_returns_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `customer_return_items`
--
ALTER TABLE `customer_return_items`
  ADD CONSTRAINT `customer_return_items_customer_return_id_foreign` FOREIGN KEY (`customer_return_id`) REFERENCES `customer_returns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_return_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `expenses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inbounds`
--
ALTER TABLE `inbounds`
  ADD CONSTRAINT `inbounds_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inbounds_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inbounds_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `inbound_items`
--
ALTER TABLE `inbound_items`
  ADD CONSTRAINT `inbound_items_inbound_id_foreign` FOREIGN KEY (`inbound_id`) REFERENCES `inbounds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inbound_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_types`
--
ALTER TABLE `product_types`
  ADD CONSTRAINT `product_types_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_product_image_id_foreign` FOREIGN KEY (`product_image_id`) REFERENCES `product_images` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_variants_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_cash_session_id_foreign` FOREIGN KEY (`cash_session_id`) REFERENCES `cash_sessions` (`id`),
  ADD CONSTRAINT `sales_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `sales_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `shipments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_ledgers`
--
ALTER TABLE `stock_ledgers`
  ADD CONSTRAINT `stock_ledgers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_ledgers_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD CONSTRAINT `stock_opnames_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_opnames_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_opnames_rejected_by_foreign` FOREIGN KEY (`rejected_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_opnames_submitted_by_foreign` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stock_opname_items`
--
ALTER TABLE `stock_opname_items`
  ADD CONSTRAINT `stock_opname_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `stock_opname_items_stock_opname_id_foreign` FOREIGN KEY (`stock_opname_id`) REFERENCES `stock_opnames` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_returns`
--
ALTER TABLE `store_returns`
  ADD CONSTRAINT `store_returns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `store_returns_inspected_by_foreign` FOREIGN KEY (`inspected_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `store_returns_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `store_returns_return_reason_id_foreign` FOREIGN KEY (`return_reason_id`) REFERENCES `return_reasons` (`id`),
  ADD CONSTRAINT `store_returns_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `store_returns_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `store_return_items`
--
ALTER TABLE `store_return_items`
  ADD CONSTRAINT `store_return_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `store_return_items_store_return_id_foreign` FOREIGN KEY (`store_return_id`) REFERENCES `store_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_targets`
--
ALTER TABLE `store_targets`
  ADD CONSTRAINT `store_targets_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_from_store_id_foreign` FOREIGN KEY (`from_store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `transfers_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_rejected_by_foreign` FOREIGN KEY (`rejected_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_to_store_id_foreign` FOREIGN KEY (`to_store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD CONSTRAINT `transfer_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `transfer_items_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_store`
--
ALTER TABLE `user_store`
  ADD CONSTRAINT `user_store_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_store_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD CONSTRAINT `user_warehouse_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

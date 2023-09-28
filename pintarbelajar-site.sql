/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : pintarbelajar-site

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 25/09/2023 16:13:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` bigint UNSIGNED NULL DEFAULT NULL,
  `kodeKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsiKelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor` bigint UNSIGNED NOT NULL,
  `hargaMasuk` int NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 9, 'KELAS001', 'laravel basic', 'Kelas Laravel Basic adalah kelas pemrograman web yang dirancang untuk memperkenalkan konsep dasar dan praktik pengembangan aplikasi web menggunakan framework Laravel. Kelas ini cocok bagi pemula yang ingin mempelajari Laravel dari awal atau bagi mereka yang ingin memperdalam pengetahuan mereka tentang framework ini. Dalam kelas ini, peserta akan mempelajari konsep dasar seperti instalasi dan konfigurasi Laravel, penggunaan model-view-controller (MVC) untuk membangun aplikasi web, dan penggunaan database dengan Laravel. Selain itu, peserta juga akan mempelajari cara membuat dan mengelola rute, kontroler, dan tampilan dalam Laravel. Kelas Laravel Basic juga akan membahas topik-topik seperti validasi data, penggunaan middleware, dan penggunaan template Blade untuk membangun tampilan yang dinamis. Peserta juga akan mempelajari cara mengintegrasikan Laravel dengan teknologi lain seperti Bootstrap dan jQuery. Dalam kelas ini, peserta akan belajar melalui kombinasi kuliah, diskusi, dan latihan praktis. Setelah menyelesaikan kelas ini, peserta akan memiliki pemahaman yang kuat tentang konsep dasar dan praktik pengembangan aplikasi web menggunakan Laravel', 'laravel basic.jpg', 1, 30, 1, '2023-09-25 08:23:29', '2023-09-25 08:23:51');

-- ----------------------------
-- Table structure for levels
-- ----------------------------
DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of levels
-- ----------------------------
INSERT INTO `levels` VALUES (1, 'beginner', '2023-09-24 15:48:33', '2023-09-24 15:48:33');
INSERT INTO `levels` VALUES (2, 'medium', '2023-09-24 15:48:33', '2023-09-24 15:48:33');
INSERT INTO `levels` VALUES (3, 'hard', '2023-09-24 15:48:33', '2023-09-24 15:48:33');
INSERT INTO `levels` VALUES (4, 'expert', '2023-09-24 15:48:33', '2023-09-24 15:48:33');

-- ----------------------------
-- Table structure for materis
-- ----------------------------
DROP TABLE IF EXISTS `materis`;
CREATE TABLE `materis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `silabus_id` bigint UNSIGNED NOT NULL,
  `namaMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `videoMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `durasi` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materis
-- ----------------------------
INSERT INTO `materis` VALUES (1, 1, 'Pengenalan laravel sebagai framework php', 'MTR0001', NULL, 30, '2023-09-25 08:46:27', '2023-09-25 08:46:27');
INSERT INTO `materis` VALUES (2, 1, 'Keuntungan menggunakan laravel dalam pengembangan web', 'MTR0002', NULL, 30, '2023-09-25 08:46:50', '2023-09-25 08:46:50');
INSERT INTO `materis` VALUES (3, 1, 'Panduan instalasi Laravel menggunakan composer', 'MTR0003', NULL, 30, '2023-09-25 08:47:07', '2023-09-25 08:47:07');
INSERT INTO `materis` VALUES (4, 2, 'Pengenalan struktur directory dalam project laravel', 'MTR0004', NULL, 30, '2023-09-25 08:52:50', '2023-09-25 08:52:50');
INSERT INTO `materis` VALUES (5, 3, 'Dasar-dasar routing dalam laravel', 'MTR0005', NULL, 45, '2023-09-25 08:54:00', '2023-09-25 08:54:00');
INSERT INTO `materis` VALUES (6, 3, 'Membuat route dasar untuk mengarahkan request ke method tertentu', 'MTR0006', NULL, 45, '2023-09-25 08:54:31', '2023-09-25 08:54:31');
INSERT INTO `materis` VALUES (7, 4, 'Pendahuluan views dalam Laravel', 'MTR0007', NULL, 30, '2023-09-25 08:55:54', '2023-09-25 08:55:54');
INSERT INTO `materis` VALUES (8, 4, 'Membuat tampilan blade dalam Laravel', 'MTR0008', NULL, 45, '2023-09-25 08:56:06', '2023-09-25 08:56:06');
INSERT INTO `materis` VALUES (9, 4, 'Parsing data ke view', 'MTR0009', NULL, 45, '2023-09-25 08:56:30', '2023-09-25 08:56:30');
INSERT INTO `materis` VALUES (10, 4, 'Blade Template Engine', 'MTR0010', NULL, 45, '2023-09-25 08:56:40', '2023-09-25 08:56:40');
INSERT INTO `materis` VALUES (11, 4, 'Teknik layouting', 'MTR0011', NULL, 45, '2023-09-25 08:56:50', '2023-09-25 08:56:50');
INSERT INTO `materis` VALUES (12, 5, 'Pengenalan Component dalam Laravel', 'MTR0012', NULL, 30, '2023-09-25 08:59:18', '2023-09-25 08:59:18');
INSERT INTO `materis` VALUES (13, 5, 'Membuat Component baru dalam Laravel', 'MTR0013', NULL, 30, '2023-09-25 08:59:30', '2023-09-25 08:59:30');
INSERT INTO `materis` VALUES (14, 5, 'Parsing data dalam Component', 'MTR0014', NULL, 45, '2023-09-25 08:59:45', '2023-09-25 08:59:45');
INSERT INTO `materis` VALUES (15, 6, 'Pengenalan Controller dalam Laravel', 'MTR0015', NULL, 30, '2023-09-25 09:01:03', '2023-09-25 09:01:03');
INSERT INTO `materis` VALUES (16, 6, 'Mengenal Property', 'MTR0016', NULL, 30, '2023-09-25 09:01:12', '2023-09-25 09:01:12');
INSERT INTO `materis` VALUES (17, 6, 'Mengenal Method', 'MTR0017', NULL, 30, '2023-09-25 09:01:21', '2023-09-25 09:01:21');
INSERT INTO `materis` VALUES (18, 6, 'Controller Routing', 'MTR0018', NULL, 45, '2023-09-25 09:01:38', '2023-09-25 09:01:38');
INSERT INTO `materis` VALUES (19, 7, 'Mengenal Model dan koneksi database', 'MTR0019', NULL, 30, '2023-09-25 09:03:44', '2023-09-25 09:03:44');
INSERT INTO `materis` VALUES (20, 7, 'Penggunaan Eloquent ORM untuk pengambilan dan penyimpanan data', 'MTR0020', NULL, 45, '2023-09-25 09:04:09', '2023-09-25 09:04:09');
INSERT INTO `materis` VALUES (21, 7, 'Query Builder untuk mengakses data', 'MTR0021', NULL, 45, '2023-09-25 09:04:33', '2023-09-25 09:04:33');
INSERT INTO `materis` VALUES (22, 8, 'Validasi input', 'MTR0022', NULL, 45, '2023-09-25 09:05:36', '2023-09-25 09:05:36');
INSERT INTO `materis` VALUES (23, 8, 'Membuat dan Mengelola Formulir dengan Laravel', 'MTR0023', NULL, 45, '2023-09-25 09:05:50', '2023-09-25 09:05:50');
INSERT INTO `materis` VALUES (24, 8, 'Menampilkan pesan validasi', 'MTR0024', NULL, 45, '2023-09-25 09:06:03', '2023-09-25 09:06:03');
INSERT INTO `materis` VALUES (25, 9, 'Mengamankan Aplikasi dengan konfigurasi dasar', 'MTR0025', NULL, 45, '2023-09-25 09:07:13', '2023-09-25 09:07:13');
INSERT INTO `materis` VALUES (26, 9, 'Implementasi Authentication pada Laravel', 'MTR0026', NULL, 45, '2023-09-25 09:07:34', '2023-09-25 09:07:34');
INSERT INTO `materis` VALUES (27, 9, 'Authentication, Authorization dan Middleware', 'MTR0027', NULL, 45, '2023-09-25 09:07:59', '2023-09-25 09:07:59');
INSERT INTO `materis` VALUES (28, 9, 'Policy and Gates', 'MTR0028', NULL, 45, '2023-09-25 09:08:13', '2023-09-25 09:08:13');
INSERT INTO `materis` VALUES (29, 10, 'Pengertian CRUD', 'MTR0029', NULL, 30, '2023-09-25 09:09:39', '2023-09-25 09:09:39');
INSERT INTO `materis` VALUES (30, 10, 'Persiapan CRUD', 'MTR0030', NULL, 30, '2023-09-25 09:09:48', '2023-09-25 09:09:48');
INSERT INTO `materis` VALUES (31, 10, 'Konfigurasi Model', 'MTR0031', NULL, 30, '2023-09-25 09:09:58', '2023-09-25 09:09:58');
INSERT INTO `materis` VALUES (32, 10, 'Function Read Data', 'MTR0032', NULL, 45, '2023-09-25 09:10:15', '2023-09-25 09:10:15');
INSERT INTO `materis` VALUES (33, 10, 'Function Create', 'MTR0033', NULL, 45, '2023-09-25 09:10:24', '2023-09-25 09:10:24');
INSERT INTO `materis` VALUES (34, 10, 'Function Update', 'MTR0034', NULL, 45, '2023-09-25 09:10:33', '2023-09-25 09:10:33');
INSERT INTO `materis` VALUES (35, 10, 'Function Delete', 'MTR0035', NULL, 45, '2023-09-25 09:10:48', '2023-09-25 09:10:48');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_09_24_052256_create_programs_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_09_24_061127_create_roles_table', 1);
INSERT INTO `migrations` VALUES (13, '2023_09_24_143646_create_levels_table', 2);
INSERT INTO `migrations` VALUES (14, '2023_09_24_144014_create_kelas_table', 2);
INSERT INTO `migrations` VALUES (15, '2023_09_24_151152_create_users_role_table', 3);
INSERT INTO `migrations` VALUES (16, '2023_09_24_234409_create_silabuses_table', 4);
INSERT INTO `migrations` VALUES (18, '2023_09_25_072220_create_materis_table', 5);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for programs
-- ----------------------------
DROP TABLE IF EXISTS `programs`;
CREATE TABLE `programs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `namaProgram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarProgram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsiProgram` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeProgram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of programs
-- ----------------------------
INSERT INTO `programs` VALUES (9, 'website development', 'website development.jpg', 'test', 'PRG001', '2023-09-24 16:21:40', '2023-09-24 16:21:40');
INSERT INTO `programs` VALUES (11, 'internet of thing', 'internet of thing.jpg', 'internet of thing', 'PRG010', '2023-09-24 17:18:06', '2023-09-24 17:18:06');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'superadmin', '2023-09-24 06:21:54', '2023-09-24 06:21:54');
INSERT INTO `roles` VALUES (2, 'admin', '2023-09-24 06:21:54', '2023-09-24 06:21:54');
INSERT INTO `roles` VALUES (3, 'instructor', '2023-09-24 06:21:54', '2023-09-24 06:21:54');
INSERT INTO `roles` VALUES (4, 'student', '2023-09-24 06:21:54', '2023-09-24 06:21:54');

-- ----------------------------
-- Table structure for silabuses
-- ----------------------------
DROP TABLE IF EXISTS `silabuses`;
CREATE TABLE `silabuses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `judulSilabus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsiSilabus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int NOT NULL,
  `kodeSilabus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of silabuses
-- ----------------------------
INSERT INTO `silabuses` VALUES (1, 1, 'Mengenal Laravel Framework Modern Untuk Pengembangan Web', 'Mengenal Laravel Framework Modern Untuk Pengembangan Web', 5, 'SLB0001', 'Mengenal Laravel Framework Modern Untuk Pengembangan Web.pdf', '2023-09-25 08:24:35', '2023-09-25 08:24:35');
INSERT INTO `silabuses` VALUES (2, 1, 'Navigasi Dalam Struktur Proyek Laravel Direktori Yang Penting', 'Navigasi Dalam Struktur Proyek Laravel Direktori Yang Penting', 5, 'SLB0002', 'Navigasi Dalam Struktur Proyek Laravel Direktori Yang Penting.pdf', '2023-09-25 08:25:01', '2023-09-25 08:25:01');
INSERT INTO `silabuses` VALUES (3, 1, 'Routing Yang Efisien Dengan Laravel Membangun Tautan Dan Rute', 'Routing Yang Efisien Dengan Laravel Membangun Tautan Dan Rute', 5, 'SLB0003', 'Routing Yang Efisien Dengan Laravel Membangun Tautan Dan Rute.pdf', '2023-09-25 08:25:18', '2023-09-25 08:25:18');
INSERT INTO `silabuses` VALUES (4, 1, 'Menggunakan Blade Membuat Tampilan Menarik Dalam Laravel', 'Menggunakan Blade Membuat Tampilan Menarik Dalam Laravel', 5, 'SLB0004', 'Menggunakan Blade Membuat Tampilan Menarik Dalam Laravel.pdf', '2023-09-25 08:25:44', '2023-09-25 08:25:44');
INSERT INTO `silabuses` VALUES (5, 1, 'Menggunakan Component Laravel', 'Menggunakan Component Laravel', 5, 'SLB0005', 'Menggunakan Component Laravel.pdf', '2023-09-25 08:26:05', '2023-09-25 08:26:05');
INSERT INTO `silabuses` VALUES (6, 1, 'Pengolahan Data Cepat Dengan Controller Dalam Laravel', 'Pengolahan Data Cepat Dengan Controller Dalam Laravel', 5, 'SLB0006', 'Pengolahan Data Cepat Dengan Controller Dalam Laravel.pdf', '2023-09-25 08:26:30', '2023-09-25 08:26:30');
INSERT INTO `silabuses` VALUES (7, 1, 'Interaksi Dengan Database Eloquent ORM Dan Query Builder', 'Interaksi Dengan Database Eloquent ORM Dan Query Builder', 5, 'SLB0007', 'Interaksi Dengan Database Eloquent ORM Dan Query Builder.pdf', '2023-09-25 08:26:47', '2023-09-25 08:26:47');
INSERT INTO `silabuses` VALUES (8, 1, 'Validasi Data Pengguna Memastikan Data Masuk Yang Benar', 'Validasi Data Pengguna Memastikan Data Masuk Yang Benar', 5, 'SLB0008', 'Validasi Data Pengguna Memastikan Data Masuk Yang Benar.pdf', '2023-09-25 08:27:07', '2023-09-25 08:27:07');
INSERT INTO `silabuses` VALUES (9, 1, 'Keamanan Aplikasi Web Otorisasi Dan Pembatasan Akses', 'Keamanan Aplikasi Web Otorisasi Dan Pembatasan Akses', 5, 'SLB0009', 'Keamanan Aplikasi Web Otorisasi Dan Pembatasan Akses.pdf', '2023-09-25 08:27:26', '2023-09-25 08:27:26');
INSERT INTO `silabuses` VALUES (10, 1, 'Membangun CRUD Dengan Mudah Operasi Dasar Dalam Laravel', 'Membangun CRUD Dengan Mudah Operasi Dasar Dalam Laravel', 5, 'SLB0010', 'Membangun CRUD Dengan Mudah Operasi Dasar Dalam Laravel.pdf', '2023-09-25 08:27:45', '2023-09-25 08:27:45');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `user_roles` VALUES (2, 1, 3, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_id` bigint UNSIGNED NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `saldo` int NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'superadmin', 'superadmin@admin.com', NULL, '$2y$10$rsguPFx3gWV3qc0pVP5TN.MWM2nWnoKVT2HpnsDTfo8lWnSO6c0eG', 1, 1, 1, 2000, NULL, '2023-09-24 06:21:54', '2023-09-24 06:21:54');

SET FOREIGN_KEY_CHECKS = 1;

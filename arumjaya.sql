/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : arumjaya

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 21/09/2023 00:37:40
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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_09_20_072307_create_roles_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_09_20_143206_create_properties_table', 2);
INSERT INTO `migrations` VALUES (9, '2023_09_20_162548_create_visitasis_table', 3);
INSERT INTO `migrations` VALUES (10, '2023_09_20_171741_add_status_to_visitasis', 4);

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
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
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
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lt` int NOT NULL,
  `lb` int NOT NULL,
  `km` int NOT NULL,
  `kt` int NOT NULL,
  `lantai` int NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES (1, 'banyu arum', 72, 36, 1, 2, 1, '0.77712600 1695222349.jpg', '2023-09-20 15:05:49', '2023-09-20 15:05:49');
INSERT INTO `properties` VALUES (2, 'banyu arum 1', 60, 30, 1, 2, 1, '0.17373500 1695222416.jpg', '2023-09-20 15:06:56', '2023-09-20 15:06:56');
INSERT INTO `properties` VALUES (3, 'banyu arum 1', 73, 63, 1, 3, 2, '0.45152200 1695222444.jpg', '2023-09-20 15:07:24', '2023-09-20 15:07:24');
INSERT INTO `properties` VALUES (4, 'bumi arum 2', 60, 30, 1, 2, 1, '0.10919400 1695222518.jpg', '2023-09-20 15:08:38', '2023-09-20 15:08:38');
INSERT INTO `properties` VALUES (5, 'bumi arum 2', 72, 26, 1, 2, 1, '0.42908200 1695222543.jpg', '2023-09-20 15:09:03', '2023-09-20 15:09:03');
INSERT INTO `properties` VALUES (6, 'bumi arum 2 mezanine', 72, 32, 1, 2, 1, '0.08760400 1695222578.jpg', '2023-09-20 15:09:38', '2023-09-20 15:09:38');
INSERT INTO `properties` VALUES (7, 'bumi arum 2 mezanine', 60, 30, 1, 2, 1, '0.55989500 1695222606.jpg', '2023-09-20 15:10:06', '2023-09-20 15:10:06');
INSERT INTO `properties` VALUES (8, 'bumi arum 2', 72, 65, 2, 3, 2, '0.09944200 1695222645.jpg', '2023-09-20 15:10:45', '2023-09-20 15:10:45');
INSERT INTO `properties` VALUES (9, 'bumi arum 2', 84, 68, 2, 4, 2, '0.39419900 1695222666.jpg', '2023-09-20 15:11:06', '2023-09-20 15:11:06');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', '2023-09-20 07:30:22', '2023-09-20 07:30:22');
INSERT INTO `roles` VALUES (2, 'agent', '2023-09-20 07:30:22', '2023-09-20 07:30:22');

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
  `role_id` bigint UNSIGNED NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$Nfg6bAb/H33Q18RhOvD16.0jhshznACqV1CfkUGOQoDDEFPY9tGdW', 1, NULL, '2023-09-20 07:30:22', '2023-09-20 14:27:48');
INSERT INTO `users` VALUES (5, 'kunto', 'anisa@admin.com', NULL, '$2y$10$RVtFG22tBToOfSy.5raSe.sNK/m1mmehe1pxWsi7RZGi5FRn4yeay', 2, NULL, '2023-09-20 14:28:44', '2023-09-20 15:34:42');
INSERT INTO `users` VALUES (6, 'anji', 'anji@admin.com', NULL, '$2y$10$LV.dQ3eJ6ucVVHsR7tnbE.QpnAZsw7OEaZrPwQ4GIqx6KTsIIZ/cu', 2, NULL, '2023-09-20 14:28:56', '2023-09-20 14:28:56');
INSERT INTO `users` VALUES (7, 'rohmat', 'rohmat@admin.com', NULL, '$2y$10$w0zc3R1cVMgmLTm/cY2Qf.dORKXAjl1mf7IiwU/W/PcHz54xjyMlO', 2, NULL, '2023-09-20 15:23:27', '2023-09-20 15:23:27');

-- ----------------------------
-- Table structure for visitasis
-- ----------------------------
DROP TABLE IF EXISTS `visitasis`;
CREATE TABLE `visitasis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` bigint UNSIGNED NOT NULL,
  `tgl_visitasi` date NOT NULL,
  `jam_visitasi` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'baru',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitasis
-- ----------------------------
INSERT INTO `visitasis` VALUES (1, 'andisaputra@gmail.com', 'andi saputra', '08212982092', 6, '2023-12-31', '01:00:00', '2023-09-20 16:47:31', '2023-09-20 17:27:22', 'selesai');
INSERT INTO `visitasis` VALUES (2, 'anisarhma@gmail.com', 'anisa rahma', '09812980982', 7, '2023-12-01', '01:01:00', '2023-09-20 16:50:15', '2023-09-20 17:24:13', 'selesai');

SET FOREIGN_KEY_CHECKS = 1;

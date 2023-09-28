/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : pintarbelajar

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 22/09/2023 14:41:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart_points
-- ----------------------------
DROP TABLE IF EXISTS `cart_points`;
CREATE TABLE `cart_points`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `point` int NOT NULL,
  `harga` int NOT NULL,
  `total` int NOT NULL,
  `qty` int NOT NULL,
  `totalPoint` int NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `transaksi_id` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_points
-- ----------------------------
INSERT INTO `cart_points` VALUES (1, 35, 35000, 35708, 1, 35, 36, 1, '2023-09-19 10:47:47', '2023-09-19 10:47:51');
INSERT INTO `cart_points` VALUES (2, 50, 50000, 50964, 1, 50, 36, 1, '2023-09-19 10:47:49', '2023-09-19 10:47:51');
INSERT INTO `cart_points` VALUES (3, 50, 50000, 100742, 2, 100, 36, 2, '2023-09-19 10:52:16', '2023-09-19 10:52:22');
INSERT INTO `cart_points` VALUES (4, 100, 100000, 200846, 2, 200, 36, 2, '2023-09-19 10:52:18', '2023-09-19 10:52:22');
INSERT INTO `cart_points` VALUES (5, 35, 35000, 70674, 2, 70, 36, 3, '2023-09-19 10:56:59', '2023-09-19 10:57:01');
INSERT INTO `cart_points` VALUES (6, 35, 35000, 35860, 1, 35, 36, 4, '2023-09-19 10:58:05', '2023-09-19 10:58:07');
INSERT INTO `cart_points` VALUES (7, 35, 35000, 35714, 1, 35, 36, 5, '2023-09-19 10:59:57', '2023-09-19 10:59:59');
INSERT INTO `cart_points` VALUES (8, 35, 35000, 35583, 1, 35, 37, 6, '2023-09-19 15:44:17', '2023-09-19 15:44:20');
INSERT INTO `cart_points` VALUES (9, 50, 50000, 100852, 2, 100, 36, 7, '2023-09-19 15:45:07', '2023-09-19 15:45:09');
INSERT INTO `cart_points` VALUES (10, 35, 35000, 35686, 1, 35, 37, 8, '2023-09-20 11:18:53', '2023-09-20 11:19:04');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `courseName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, 'internet of thing', 'internet of thing.jpg', 'Kursus \"Internet of Things (IoT)\" adalah kursus yang bertujuan untuk memberikan pemahaman mendalam tentang konsep, teknologi, dan aplikasi Internet of Things. IoT adalah suatu konsep di mana objek fisik, perangkat, dan sistem dihubungkan ke internet dan dapat saling berkomunikasi dan berinteraksi, mengumpulkan data, serta mengambil keputusan secara otonom.', 'CRS001', '2023-08-04 10:31:37', '2023-08-04 10:31:37');
INSERT INTO `courses` VALUES (2, 'website developments', 'website development.jpg', 'Kursus \"Website Development\" adalah kursus yang didesain untuk memberikan pemahaman dan keterampilan yang diperlukan untuk mengembangkan website profesional. Dalam kursus ini, Anda akan mempelajari berbagai teknologi dan alat yang digunakan dalam pengembangan website, termasuk bahasa pemrograman, markup, dan style sheet.', 'CRS005', '2023-08-04 10:40:06', '2023-08-04 11:33:04');

-- ----------------------------
-- Table structure for enrol_silabuses
-- ----------------------------
DROP TABLE IF EXISTS `enrol_silabuses`;
CREATE TABLE `enrol_silabuses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `silabus_id` bigint UNSIGNED NOT NULL,
  `enrol_id` bigint UNSIGNED NOT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enrol_silabuses
-- ----------------------------
INSERT INTO `enrol_silabuses` VALUES (19, 37, 1, 1, 1, '2023-09-22 09:59:01', '2023-09-22 10:32:30');
INSERT INTO `enrol_silabuses` VALUES (21, 36, 1, 2, 1, '2023-09-22 10:04:16', '2023-09-22 10:35:07');
INSERT INTO `enrol_silabuses` VALUES (22, 37, 2, 1, 1, '2023-09-22 10:34:47', '2023-09-22 10:37:04');
INSERT INTO `enrol_silabuses` VALUES (23, 36, 2, 2, 1, '2023-09-22 10:35:17', '2023-09-22 10:36:19');
INSERT INTO `enrol_silabuses` VALUES (24, 37, 3, 1, 1, '2023-09-22 10:39:04', '2023-09-22 10:39:22');
INSERT INTO `enrol_silabuses` VALUES (25, 36, 3, 2, 1, '2023-09-22 10:39:31', '2023-09-22 10:44:50');
INSERT INTO `enrol_silabuses` VALUES (26, 37, 4, 1, 1, '2023-09-22 10:39:43', '2023-09-22 10:39:46');
INSERT INTO `enrol_silabuses` VALUES (27, 37, 5, 1, 1, '2023-09-22 10:39:49', '2023-09-22 10:39:53');
INSERT INTO `enrol_silabuses` VALUES (28, 37, 6, 1, 1, '2023-09-22 10:39:56', '2023-09-22 10:40:02');
INSERT INTO `enrol_silabuses` VALUES (29, 37, 7, 1, 1, '2023-09-22 10:40:05', '2023-09-22 10:40:09');
INSERT INTO `enrol_silabuses` VALUES (30, 37, 9, 1, 1, '2023-09-22 10:40:12', '2023-09-22 10:40:16');
INSERT INTO `enrol_silabuses` VALUES (31, 37, 10, 1, 1, '2023-09-22 10:40:19', '2023-09-22 10:40:33');
INSERT INTO `enrol_silabuses` VALUES (32, 37, 11, 1, 1, '2023-09-22 10:40:37', '2023-09-22 10:40:44');
INSERT INTO `enrol_silabuses` VALUES (33, 36, 4, 2, 1, '2023-09-22 11:02:05', '2023-09-22 11:02:19');

-- ----------------------------
-- Table structure for enrols
-- ----------------------------
DROP TABLE IF EXISTS `enrols`;
CREATE TABLE `enrols`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `status_enrol` bigint UNSIGNED NOT NULL DEFAULT 0,
  `kodeEnrol` varchar(244) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enrols
-- ----------------------------
INSERT INTO `enrols` VALUES (1, 37, 5, 1, '1695276123001', '2023-09-21 13:02:03', '2023-09-22 11:00:29');
INSERT INTO `enrols` VALUES (2, 36, 5, 0, '1695276266002', '2023-09-21 13:04:26', '2023-09-21 13:04:26');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES (8, '3e38a192-1d39-4e89-9321-793a2a1bb7e8', 'database', 'default', '{\"uuid\":\"3e38a192-1d39-4e89-9321-793a2a1bb7e8\",\"displayName\":\"App\\\\Jobs\\\\SendResetPasswordMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendResetPasswordMail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendResetPasswordMail\\\":1:{s:3:\\\"new\\\";O:8:\\\"stdClass\\\":3:{s:5:\\\"email\\\";s:22:\\\"ahfifauka.id@gmail.com\\\";s:5:\\\"token\\\";s:64:\\\"Z1CGjqreWeWeLSeJSa2Kk8xMGDd1tdcJNRWFjDJ8KKxRieeLgj244VkP2WwjUqmi\\\";s:10:\\\"created_at\\\";s:19:\\\"2023-09-21 10:32:03\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Failed to authenticate on SMTP server with username \"admin@pintarbelajar.site\" using the following authenticators: \"LOGIN\", \"PLAIN\". Authenticator \"LOGIN\" returned \"Expected response code \"235\" but got code \"535\", with message \"535 Incorrect authentication data\".\". Authenticator \"PLAIN\" returned \"Expected response code \"235\" but got code \"535\", with message \"535 Incorrect authentication data\".\". in D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php:224\nStack trace:\n#0 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(160): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->handleAuth(Array)\n#1 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(117): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->doEhloCommand()\n#2 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(254): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'HELO [127.0.0.1...\', Array)\n#3 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(277): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doHeloCommand()\n#4 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(213): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#5 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#6 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(542): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#8 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#9 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'resetpassword\', Array, Object(Closure))\n#10 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(326): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(270): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\ResetPasswordMail))\n#14 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\ResetPasswordMail))\n#15 D:\\app\\lmscourse\\app\\Jobs\\SendResetPasswordMail.php(32): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\ResetPasswordMail))\n#16 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendResetPasswordMail->handle()\n#17 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#22 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#23 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#24 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendResetPasswordMail), false)\n#26 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#27 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#28 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendResetPasswordMail))\n#30 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#42 D:\\app\\lmscourse\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\app\\lmscourse\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}', '2023-09-21 10:32:13');
INSERT INTO `failed_jobs` VALUES (9, 'ff82a4c9-ebaf-4e63-af9b-d95fd5db5e88', 'database', 'default', '{\"uuid\":\"ff82a4c9-ebaf-4e63-af9b-d95fd5db5e88\",\"displayName\":\"App\\\\Jobs\\\\SendResetPasswordMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendResetPasswordMail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendResetPasswordMail\\\":1:{s:3:\\\"new\\\";O:8:\\\"stdClass\\\":3:{s:5:\\\"email\\\";s:22:\\\"ahfifauka.id@gmail.com\\\";s:5:\\\"token\\\";s:64:\\\"V0ah3eE6Nc6S9KjMHWQaAeSv3maQX1eaVIpY2UHHTr45cdPHZYJb1ewLiyDkBiws\\\";s:10:\\\"created_at\\\";s:19:\\\"2023-09-21 10:40:55\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Failed to authenticate on SMTP server with username \"admin@pintarbelajar.site\" using the following authenticators: \"LOGIN\", \"PLAIN\". Authenticator \"LOGIN\" returned \"Expected response code \"235\" but got code \"535\", with message \"535 Incorrect authentication data\".\". Authenticator \"PLAIN\" returned \"Expected response code \"235\" but got code \"535\", with message \"535 Incorrect authentication data\".\". in D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php:224\nStack trace:\n#0 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(160): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->handleAuth(Array)\n#1 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(117): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->doEhloCommand()\n#2 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(254): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'HELO [127.0.0.1...\', Array)\n#3 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(277): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doHeloCommand()\n#4 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(213): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#5 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#6 D:\\app\\lmscourse\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(542): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#8 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#9 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'resetpassword\', Array, Object(Closure))\n#10 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(326): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(270): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\ResetPasswordMail))\n#14 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\ResetPasswordMail))\n#15 D:\\app\\lmscourse\\app\\Jobs\\SendResetPasswordMail.php(32): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\ResetPasswordMail))\n#16 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendResetPasswordMail->handle()\n#17 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#22 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#23 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#24 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendResetPasswordMail), false)\n#26 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#27 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendResetPasswordMail))\n#28 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendResetPasswordMail))\n#30 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#42 D:\\app\\lmscourse\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\app\\lmscourse\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\app\\lmscourse\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\app\\lmscourse\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}', '2023-09-21 10:41:06');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 437 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` bigint UNSIGNED NULL DEFAULT NULL,
  `kodeKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsiKelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageKelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor` bigint UNSIGNED NULL DEFAULT NULL,
  `hargaMasuk` int NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_course` enum('terdaftar course','tidak terdaftar course') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidak terdaftar course',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (2, 2, 'KELAS003', 'dasar pemograman website', 'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Berdasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML dan 95.6% menggunakan CSS. Kelas ini membahas tuntas mengenai HTML dan CSS sebagai fondasi dalam pembuatan website.', 'dasar pemograman website.jpg', 1, 30, 'beginner', '2023-08-05 10:49:24', '2023-08-16 08:54:23', 'terdaftar course');
INSERT INTO `kelas` VALUES (5, 2, 'KELAS008', 'Laravel Basic', 'Tujuan dari kelas ini adalah memberikan peserta pemahaman mendalam tentang pengembangan web dengan Laravel, sehingga mereka dapat membangun aplikasi modern dengan fitur CRUD, autentikasi, dan keamanan yang solid.', 'POS Laravel.jpg', 1, 30, 'beginner', '2023-08-16 11:46:15', '2023-08-31 19:14:57', 'terdaftar course');
INSERT INTO `kelas` VALUES (6, 1, 'KELAS006', 'Microcontroller NodeMCU ESP8266', 'Kelas NodeMCU ESP8266 dalam e-learning adalah sebuah program pembelajaran yang dirancang untuk memperkenalkan dan mengajarkan tentang penggunaan dan pemrograman NodeMCU ESP8266, sebuah modul mikrokontroler berbasis WiFi. Dalam kelas ini, peserta akan belajar tentang konsep dasar Internet of Things (IoT), menginstalasi perangkat lunak yang diperlukan, menghubungkan NodeMCU ke jaringan WiFi, dan memahami cara mengontrol sensor dan perangkat lainnya melalui koneksi nirkabel. Materi yang diajarkan mencakup pengenalan komponen NodeMCU, pemrograman menggunakan bahasa pemrograman seperti Arduino IDE atau MicroPython, serta proyek praktis untuk menerapkan konsep yang dipelajari, seperti mengontrol lampu melalui smartphone atau mengumpulkan data sensor secara online. Setelah menyelesaikan kelas ini, peserta diharapkan memiliki pemahaman yang kuat tentang NodeMCU ESP8266 dan dapat membuat proyek-proyek sederhana hingga menengah yang terhubung ke internet.', 'Microcontroller NodeMCU ESP8266.jpg', 1, 30, 'beginner', '2023-08-16 12:11:49', '2023-08-16 12:12:04', 'terdaftar course');
INSERT INTO `kelas` VALUES (7, 2, 'KELAS007', 'javascript fundamental', 'Kelas JavaScript dalam e-learning adalah panduan interaktif yang dirancang untuk membantu Anda memahami dan menguasai bahasa pemrograman JavaScript. Dalam kelas ini, Anda akan mempelajari dasar-dasar JavaScript, mulai dari sintaks dasar hingga konsep yang lebih kompleks seperti manipulasi DOM, penggunaan fungsi, interaksi dengan pengguna, dan komunikasi dengan server melalui teknik AJAX. Melalui video pembelajaran, latihan praktis, dan proyek-proyek mini, Anda akan membangun pemahaman yang kuat tentang cara mengembangkan aplikasi web yang dinamis dan interaktif menggunakan JavaScript. Kelas ini cocok untuk pemula dalam pemrograman atau mereka yang ingin mengasah keterampilan pemrograman JavaScript mereka. Setelah menyelesaikan kelas ini, Anda akan siap untuk merancang dan mengembangkan elemen interaktif pada situs web Anda sendiri.', 'javascript fundamental.jpg', 1, 30, 'beginner', '2023-08-16 12:15:52', '2023-08-16 12:16:01', 'terdaftar course');

-- ----------------------------
-- Table structure for materis
-- ----------------------------
DROP TABLE IF EXISTS `materis`;
CREATE TABLE `materis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `silabus_id` bigint UNSIGNED NOT NULL,
  `namaMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `videoMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `submission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `durasi` int NOT NULL,
  `kodeMateri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materis
-- ----------------------------
INSERT INTO `materis` VALUES (1, 1, 'Pengenalan tentang Laravel sebagai Framework PHP', 'C:\\xampp\\tmp\\php331D.tmp', NULL, NULL, 30, 'MTR0001', '2023-09-01 06:59:42', '2023-09-01 06:59:42');
INSERT INTO `materis` VALUES (2, 1, 'Keuntungan Menggunakan Laravel dalam Pengembangan Web', 'C:\\xampp\\tmp\\phpC4FE.tmp', NULL, NULL, 30, 'MTR0002', '2023-09-01 07:25:27', '2023-09-01 07:25:27');
INSERT INTO `materis` VALUES (3, 1, 'Panduan Instalasi Laravel Menggunakan Composer', 'C:\\xampp\\tmp\\phpF414.tmp', NULL, NULL, 30, 'MTR0003', '2023-09-01 07:27:50', '2023-09-01 07:27:50');
INSERT INTO `materis` VALUES (4, 2, 'Penjelasan struktur direktori dalam proyek Laravel', 'C:\\xampp\\tmp\\php795.tmp', NULL, NULL, 30, 'MTR0004', '2023-09-01 07:47:35', '2023-09-01 07:47:35');
INSERT INTO `materis` VALUES (5, 3, 'Dasar-dasar Routing dalam Laravel', 'C:\\xampp\\tmp\\php9DB.tmp', NULL, NULL, 30, 'MTR0005', '2023-09-01 08:05:04', '2023-09-01 08:05:04');
INSERT INTO `materis` VALUES (6, 3, 'Membuat rute dasar untuk mengarahkan permintaan ke tindakan (action) tertentu', 'C:\\xampp\\tmp\\phpDB6E.tmp', NULL, NULL, 30, 'MTR0006', '2023-09-01 11:10:32', '2023-09-01 11:10:32');
INSERT INTO `materis` VALUES (7, 4, 'Pendahuluan Views dalam Laravel', 'C:\\xampp\\tmp\\php6CE8.tmp', NULL, NULL, 30, 'MTR0007', '2023-09-01 13:44:05', '2023-09-01 13:44:05');
INSERT INTO `materis` VALUES (8, 4, 'Membuat Tampilan Blade pada Laravel', 'C:\\xampp\\tmp\\phpF79B.tmp', NULL, NULL, 30, 'MTR0008', '2023-09-01 13:57:47', '2023-09-01 13:57:47');
INSERT INTO `materis` VALUES (9, 4, 'Mengirim Data ke Tampilan Blade di Laravel', 'C:\\xampp\\tmp\\phpBE21.tmp', NULL, NULL, 30, 'MTR0009', '2023-09-01 14:07:22', '2023-09-01 14:07:22');
INSERT INTO `materis` VALUES (10, 4, 'Blade Template Engine', 'C:\\xampp\\tmp\\php9D7D.tmp', NULL, NULL, 30, 'MTR0010', '2023-09-01 14:13:47', '2023-09-01 14:13:47');
INSERT INTO `materis` VALUES (11, 4, 'teknik layouting', 'C:\\xampp\\tmp\\php2549.tmp', NULL, NULL, 30, 'MTR0011', '2023-09-07 08:16:57', '2023-09-07 08:16:57');
INSERT INTO `materis` VALUES (12, 5, 'pengenalan component dalam laravel', 'C:\\xampp\\tmp\\phpD149.tmp', NULL, NULL, 30, 'MTR0012', '2023-09-07 08:28:36', '2023-09-07 08:28:36');
INSERT INTO `materis` VALUES (13, 5, 'membuat komponen baru dalam laravel', 'C:\\xampp\\tmp\\php353.tmp', NULL, NULL, 30, 'MTR0013', '2023-09-07 08:33:11', '2023-09-07 08:33:11');
INSERT INTO `materis` VALUES (14, 5, 'parsing data dalam komponen', 'C:\\xampp\\tmp\\phpC99E.tmp', NULL, NULL, 30, 'MTR0014', '2023-09-07 08:38:25', '2023-09-07 08:38:25');
INSERT INTO `materis` VALUES (15, 6, 'Pengenalan Controller dalam Laravel', 'C:\\xampp\\tmp\\phpF49D.tmp', NULL, NULL, 30, 'MTR0015', '2023-09-07 08:51:41', '2023-09-07 08:51:41');
INSERT INTO `materis` VALUES (16, 6, 'mengenal property', 'C:\\xampp\\tmp\\phpD2A6.tmp', NULL, NULL, 30, 'MTR0016', '2023-09-07 08:57:00', '2023-09-07 08:57:00');
INSERT INTO `materis` VALUES (17, 6, 'mengenal method dalam laravel', 'C:\\xampp\\tmp\\php26E4.tmp', NULL, NULL, 30, 'MTR0017', '2023-09-07 09:39:58', '2023-09-07 09:39:58');
INSERT INTO `materis` VALUES (18, 6, 'menghubungkan route ke controller', 'C:\\xampp\\tmp\\php7DD1.tmp', NULL, NULL, 30, 'MTR0018', '2023-09-07 09:46:53', '2023-09-07 09:46:53');
INSERT INTO `materis` VALUES (19, 7, 'mengenal model dan koneksi database', 'C:\\xampp\\tmp\\php69BE.tmp', NULL, NULL, 30, 'MTR0019', '2023-09-07 10:11:55', '2023-09-07 10:11:55');
INSERT INTO `materis` VALUES (20, 7, 'Penggunaan Eloquent ORM untuk Pengambilan dan Penyimpanan Data', 'C:\\xampp\\tmp\\php6F1F.tmp', NULL, NULL, 30, 'MTR0020', '2023-09-07 10:15:13', '2023-09-07 10:15:13');
INSERT INTO `materis` VALUES (21, 7, 'Query Builder untuk mengakses database secara manual.', 'C:\\xampp\\tmp\\phpF88C.tmp', NULL, NULL, 30, 'MTR0021', '2023-09-07 10:21:16', '2023-09-07 10:21:16');
INSERT INTO `materis` VALUES (22, 9, 'Validasi Data Input dari Pengguna dalam Laravel', 'C:\\xampp\\tmp\\php5772.tmp', NULL, NULL, 30, 'MTR0022', '2023-09-07 10:26:03', '2023-09-07 10:26:03');
INSERT INTO `materis` VALUES (23, 9, 'Membuat dan Mengelola Formulir dengan Laravel', 'C:\\xampp\\tmp\\phpA77E.tmp', NULL, NULL, 5, 'MTR0023', '2023-09-07 10:42:46', '2023-09-07 10:42:46');
INSERT INTO `materis` VALUES (24, 9, 'menampilkan pesan validasi', 'C:\\xampp\\tmp\\php2448.tmp', NULL, NULL, 30, 'MTR0024', '2023-09-07 10:48:46', '2023-09-07 10:48:46');
INSERT INTO `materis` VALUES (25, 10, 'Mengamankan Aplikasi dengan Konfigurasi Dasar', 'C:\\xampp\\tmp\\phpEE27.tmp', NULL, NULL, 30, 'MTR0025', '2023-09-07 11:02:44', '2023-09-07 11:02:44');
INSERT INTO `materis` VALUES (26, 10, 'Implementasi autentikasi pengguna dengan Laravel\'s built-in fitur', 'C:\\xampp\\tmp\\php4B05.tmp', NULL, NULL, 30, 'MTR0026', '2023-09-07 11:08:35', '2023-09-07 11:08:35');
INSERT INTO `materis` VALUES (27, 10, 'Pengelolaan Otentikasi, Otorisasi, dan Pembatasan Akses', 'C:\\xampp\\tmp\\phpF613.tmp', NULL, NULL, 30, 'MTR0027', '2023-09-07 11:14:47', '2023-09-07 11:14:47');
INSERT INTO `materis` VALUES (28, 10, 'Policy dan Gates', 'C:\\xampp\\tmp\\php1B6E.tmp', NULL, NULL, 30, 'MTR0028', '2023-09-07 11:25:52', '2023-09-07 11:25:52');
INSERT INTO `materis` VALUES (29, 11, 'Pengertian CRUD', 'C:\\xampp\\tmp\\phpB2BE.tmp', NULL, NULL, 30, 'MTR0029', '2023-09-07 11:40:42', '2023-09-07 11:40:42');
INSERT INTO `materis` VALUES (30, 11, 'Persiapan CRUD', 'C:\\xampp\\tmp\\php7D72.tmp', NULL, NULL, 30, 'MTR0030', '2023-09-07 14:12:18', '2023-09-07 14:12:18');
INSERT INTO `materis` VALUES (31, 11, 'Konfigurasi Model', 'C:\\xampp\\tmp\\php8F63.tmp', NULL, NULL, 30, 'MTR0031', '2023-09-07 14:20:02', '2023-09-07 14:20:02');
INSERT INTO `materis` VALUES (32, 11, 'Fungsi Read Data', 'C:\\xampp\\tmp\\php7639.tmp', NULL, NULL, 30, 'MTR0032', '2023-09-07 14:31:56', '2023-09-07 14:31:56');
INSERT INTO `materis` VALUES (33, 11, 'fungsi create', 'C:\\xampp\\tmp\\phpDF2C.tmp', NULL, NULL, 30, 'MTR0033', '2023-09-07 14:48:46', '2023-09-07 14:48:46');
INSERT INTO `materis` VALUES (34, 11, 'fungsi update', 'C:\\xampp\\tmp\\php8EEE.tmp', NULL, NULL, 60, 'MTR0034', '2023-09-08 08:11:30', '2023-09-08 08:11:30');
INSERT INTO `materis` VALUES (35, 11, 'menghapus data', 'C:\\xampp\\tmp\\php12CA.tmp', NULL, NULL, 30, 'MTR0035', '2023-09-08 08:25:09', '2023-09-08 08:25:09');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_08_02_234536_create_roles_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_08_02_234813_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_08_03_044344_create_courses_table', 2);
INSERT INTO `migrations` VALUES (14, '2023_08_04_135724_create_kelas_table', 3);
INSERT INTO `migrations` VALUES (15, '2023_08_05_104206_add_is_course_to_kelas_table', 4);
INSERT INTO `migrations` VALUES (29, '2023_08_05_122344_create_silabuses_table', 5);
INSERT INTO `migrations` VALUES (30, '2023_08_06_074721_create_materis_table', 5);
INSERT INTO `migrations` VALUES (31, '2023_09_08_083504_add_saldo_id_to_users_table', 6);
INSERT INTO `migrations` VALUES (34, '2023_09_08_105019_add_verification_code_to_users_table', 7);
INSERT INTO `migrations` VALUES (35, '2023_09_08_105029_add_is_active_to_users_table', 7);
INSERT INTO `migrations` VALUES (36, '2023_09_09_130304_create_jobs_table', 8);
INSERT INTO `migrations` VALUES (42, '2023_09_09_143622_create_profiles_table', 9);
INSERT INTO `migrations` VALUES (43, '2023_09_09_143932_add_profile_id_to_users_table', 9);
INSERT INTO `migrations` VALUES (44, '2023_09_10_084437_create_pendidikans_table', 10);
INSERT INTO `migrations` VALUES (47, '2023_09_12_073433_create_cart_points_table', 11);
INSERT INTO `migrations` VALUES (48, '2023_09_12_101218_create_transaksi_points_table', 12);
INSERT INTO `migrations` VALUES (49, '2023_09_12_113648_create_status_transaksis_table', 13);
INSERT INTO `migrations` VALUES (50, '2023_09_12_114647_add_bukti_bayar_to_transaksi_point', 14);
INSERT INTO `migrations` VALUES (52, '2023_09_17_000008_add_tanggal_cancel_to_transaksi_points', 15);
INSERT INTO `migrations` VALUES (53, '2023_09_19_075632_add_batas_pembayaran_to_transaksi_point', 16);
INSERT INTO `migrations` VALUES (57, '2023_09_19_094753_add_transaksi_id_to_cart_points', 17);
INSERT INTO `migrations` VALUES (59, '2023_09_19_104002_add_total_point_to_cart_points', 18);
INSERT INTO `migrations` VALUES (63, '2023_09_21_113326_create_enrols_table', 19);
INSERT INTO `migrations` VALUES (64, '2023_09_21_144616_create_enrol_silabuses_table', 20);

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
-- Table structure for pendidikans
-- ----------------------------
DROP TABLE IF EXISTS `pendidikans`;
CREATE TABLE `pendidikans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pendidikans
-- ----------------------------
INSERT INTO `pendidikans` VALUES (1, 'SD', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (2, 'SMP', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (3, 'SMA', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (4, 'D3', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (5, 'S1', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (6, 'S2', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (7, 'S3', '2023-09-10 14:16:33', '2023-09-10 14:16:33');
INSERT INTO `pendidikans` VALUES (8, 'Tidak Sekolah', '2023-09-10 14:16:33', '2023-09-10 14:16:33');

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
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamatLengkap` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pendidikan_id` bigint UNSIGNED NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kantor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tiktok` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES (36, 36, '082115259241', 'bandung', 'bandung', 'bandung', 'bandung bandung bandung', 5, 'karyawan biasa', 'infomedia nusantara', '0.21331200 1694495468.jpg', NULL, NULL, NULL, NULL, 1, '2023-09-10 14:11:52', '2023-09-12 12:11:08');
INSERT INTO `profiles` VALUES (37, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-12 11:23:59', '2023-09-12 11:23:59');
INSERT INTO `profiles` VALUES (38, 37, '08211525024', 'bandung', 'bandung', 'bandung', 'bandung', 6, NULL, NULL, '0.79166100 1695111304.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2023-09-19 15:15:04');
INSERT INTO `profiles` VALUES (39, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-09-20 11:09:02', '2023-09-20 11:09:02');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'superadmin', '2023-08-03 01:08:34', '2023-08-03 01:08:34');
INSERT INTO `roles` VALUES (2, 'admin', '2023-08-03 01:08:34', '2023-08-03 01:08:34');
INSERT INTO `roles` VALUES (3, 'instructor', '2023-08-03 01:08:34', '2023-08-03 01:08:34');
INSERT INTO `roles` VALUES (4, 'student', '2023-08-03 01:08:34', '2023-08-03 01:08:34');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of silabuses
-- ----------------------------
INSERT INTO `silabuses` VALUES (1, 5, 'Mengenal Laravel  Framework Modern untuk Pengembangan Web', 'Mengenal Laravel  Framework Modern untuk Pengembangan Web', 5, 'SLB0001', '2023-09-01 06:45:53', '2023-09-01 06:45:53');
INSERT INTO `silabuses` VALUES (2, 5, 'Navigasi dalam Struktur Proyek Laravel  Direktori yang Penting', 'Struktur Proyek Laravel', 5, 'SLB0002', '2023-09-01 07:46:58', '2023-09-01 07:50:23');
INSERT INTO `silabuses` VALUES (3, 5, 'Routing yang Efisien dengan Laravel  Membangun Tautan dan Rute', 'mengenal Routing yang Efisien dengan Laravel  Membangun Tautan dan Rute', 5, 'SLB0003', '2023-09-01 07:50:51', '2023-09-01 07:50:51');
INSERT INTO `silabuses` VALUES (4, 5, 'Menggunakan Blade  Membuat Tampilan Menarik dalam Laravel', 'mengenal Menggunakan Blade  Membuat Tampilan Menarik dalam Laravel', 5, 'SLB0004', '2023-09-01 13:38:48', '2023-09-01 13:38:48');
INSERT INTO `silabuses` VALUES (5, 5, 'Menggunakan Component Laravel', 'mengenal component dalam laravel', 5, 'SLB0005', '2023-09-07 08:25:07', '2023-09-07 08:25:07');
INSERT INTO `silabuses` VALUES (6, 5, 'Pengolahan Data Cepat dengan Controller dalam Laravel', 'Pengolahan Data Cepat dengan Controller dalam Laravel', 5, 'SLB0006', '2023-09-07 08:49:05', '2023-09-07 08:49:05');
INSERT INTO `silabuses` VALUES (7, 5, 'Interaksi dengan Database  Eloquent ORM dan Query Builder', 'Interaksi dengan Database  Eloquent ORM dan Query Builder', 5, 'SLB0007', '2023-09-07 10:01:24', '2023-09-07 10:01:24');
INSERT INTO `silabuses` VALUES (9, 5, 'Validasi Data Pengguna  Memastikan Data Masuk yang Benar', 'Validasi Data Pengguna  Memastikan Data Masuk yang Benar', 5, 'SLB0008', '2023-09-07 10:23:52', '2023-09-07 10:23:52');
INSERT INTO `silabuses` VALUES (10, 5, 'Keamanan Aplikasi Web  Otorisasi dan Pembatasan Akses', 'Keamanan Aplikasi Web  Otorisasi dan Pembatasan Akses', 5, 'SLB0010', '2023-09-07 10:59:04', '2023-09-07 10:59:04');
INSERT INTO `silabuses` VALUES (11, 5, 'Membangun CRUD dengan Mudah  Operasi Dasar dalam Laravel', 'Membangun CRUD dengan Mudah  Operasi Dasar dalam Laravel', 5, 'SLB0011', '2023-09-07 11:29:41', '2023-09-07 11:29:41');

-- ----------------------------
-- Table structure for status_transaksis
-- ----------------------------
DROP TABLE IF EXISTS `status_transaksis`;
CREATE TABLE `status_transaksis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_transaksis
-- ----------------------------
INSERT INTO `status_transaksis` VALUES (1, 'new', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (2, 'paid', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (3, 'proccess', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (4, 'pending', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (5, 'success', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (6, 'failed', '2023-09-16 23:35:11', '2023-09-16 23:35:11');
INSERT INTO `status_transaksis` VALUES (7, 'cancel', '2023-09-16 23:35:11', '2023-09-16 23:35:11');

-- ----------------------------
-- Table structure for transaksi_points
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_points`;
CREATE TABLE `transaksi_points`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomorTransaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalItem` int NOT NULL,
  `totalHarga` int NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `statusTransaksi` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buktiBayar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_at` timestamp NULL DEFAULT NULL,
  `success_at` timestamp NULL DEFAULT NULL,
  `cancel_at` timestamp NULL DEFAULT NULL,
  `batasPembayaran` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi_points
-- ----------------------------
INSERT INTO `transaksi_points` VALUES (1, 'INV20230919001', 2, 86672, 36, 5, '2023-09-19 10:47:51', '2023-09-19 10:51:46', 'INV20230919001.jpg', '2023-09-19 00:00:00', '2023-09-19 10:51:46', NULL, '2023-09-19 10:57:51');
INSERT INTO `transaksi_points` VALUES (2, 'INV20230919002', 2, 301588, 36, 5, '2023-09-19 10:52:22', '2023-09-19 10:56:28', 'INV20230919002.jpg', '2023-09-19 00:00:00', '2023-09-19 10:56:28', NULL, '2023-09-19 11:02:22');
INSERT INTO `transaksi_points` VALUES (3, 'INV20230919003', 1, 70674, 36, 2, '2023-09-19 10:57:01', '2023-09-19 10:57:27', 'INV20230919003.jpg', '2023-09-19 00:00:00', NULL, NULL, '2023-09-19 11:07:01');
INSERT INTO `transaksi_points` VALUES (4, 'INV20230919004', 1, 35860, 36, 5, '2023-09-19 10:58:07', '2023-09-19 10:59:34', 'INV20230919004.jpg', '2023-09-19 00:00:00', '2023-09-19 10:59:34', NULL, '2023-09-19 11:08:07');
INSERT INTO `transaksi_points` VALUES (5, 'INV20230919005', 1, 35714, 36, 6, '2023-09-19 10:59:59', '2023-09-19 11:10:01', NULL, NULL, NULL, NULL, '2023-09-19 11:09:59');
INSERT INTO `transaksi_points` VALUES (6, 'INV20230919006', 1, 35583, 37, 5, '2023-09-19 15:44:20', '2023-09-19 15:55:40', 'INV20230919006.jpg', '2023-09-19 15:47:26', '2023-09-19 15:55:40', NULL, '2023-09-19 15:54:20');
INSERT INTO `transaksi_points` VALUES (7, 'INV20230919007', 1, 100852, 36, 5, '2023-09-19 15:45:09', '2023-09-19 15:56:07', 'INV20230919007.jpg', '2023-09-19 15:47:08', '2023-09-19 15:56:07', NULL, '2023-09-19 15:55:09');
INSERT INTO `transaksi_points` VALUES (8, 'INV20230920001', 1, 35686, 37, 6, '2023-09-20 11:19:04', '2023-09-21 09:58:08', NULL, NULL, NULL, NULL, '2023-09-20 12:19:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `user_roles` VALUES (2, 1, 3, NULL, NULL);
INSERT INTO `user_roles` VALUES (3, 2, 3, NULL, NULL);
INSERT INTO `user_roles` VALUES (4, 3, 4, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saldo` int NOT NULL DEFAULT 0,
  `verification_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `profile_id` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'superadmin', 'superadmin@email.com', NULL, '$2y$10$k3RF47yXfka0tNpfPvO5/uVYsU2o0GsXHwXheOMVywXf/7DKL23KC', 0, NULL, '2023-08-03 01:08:34', '2023-08-03 01:08:34', 0, NULL, 0, NULL);
INSERT INTO `users` VALUES (2, 'instructor', 'instructor@email.com', NULL, '$2y$10$ZKgEnXdSh82h9Et/x.tvs.hOjTHAAr/fJV2grSST9KYM7BOl.GMDG', 0, NULL, '2023-08-03 01:08:34', '2023-08-03 01:08:34', 0, NULL, 0, NULL);
INSERT INTO `users` VALUES (3, 'ANISA RAHMA FAUZIAH', 'student@email.com', NULL, '$2y$10$Dff0QaB/9ZYHxRMtgb6cFOcPhqiWcIlI/VmwWyPGfRCBXevnvl2pS', 0, NULL, '2023-08-03 01:08:34', '2023-09-10 14:45:01', 0, NULL, 0, NULL);
INSERT INTO `users` VALUES (36, 'ANISA RAHMA FAUZIAH', 'anisa@gmail.com', NULL, '$2y$10$oA3hjuMk4wvam5OX9Ei09.7YKp7gRg4939GqS2bbiu4e3iov2N5J6', 0, NULL, '2023-09-10 14:11:52', '2023-09-22 11:02:05', 455, 'hSF7H63mzQbBiQZKL9YywnSbth8JMap0HjK1qq6S', 1, 3);
INSERT INTO `users` VALUES (37, 'ahfi fauka pranata', 'ahfifauka.id@gmail.com', '2023-09-19 00:00:00', '$2y$10$EvCdfaKSiFWtYO5hNTr14u.7y6j78VUYH3vcnlg3oe6tvYjj/jHZ2', 0, NULL, '2023-09-19 11:32:21', '2023-09-22 12:36:28', 70, 'u9VoetBVvvr1TCPPaFC4tX2NmvuDBLk0kB6vFGJA', 1, 38);
INSERT INTO `users` VALUES (38, 'asep riri', 'asep@admin.com', NULL, '$2y$10$pgxyDh/TXgpEfII6YszLAO4n/YZVr60HbHP.9zgUDlrsDCtQDSRpW', 0, NULL, '2023-09-20 11:09:02', '2023-09-20 11:10:51', 0, 'sINtvAwiSkPx15bAO04g7TjbADfJ0DHBksEv64KD', 0, 39);

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : yelowdb

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 28/04/2022 13:52:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for additional_package
-- ----------------------------
DROP TABLE IF EXISTS `additional_package`;
CREATE TABLE `additional_package`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `in_app_call_cost_recorded` int NOT NULL DEFAULT 0,
  `in_app_call_cost_not_recorded` int NOT NULL DEFAULT 0,
  `in_app_call_price` int NOT NULL DEFAULT 0,
  `in_app_call_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_account_price` int NOT NULL DEFAULT 0,
  `online_account_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_call_tracking_price` int NOT NULL DEFAULT 0,
  `report_agent_activity_price` int NOT NULL DEFAULT 0,
  `report_call_agent_price` int NOT NULL DEFAULT 0,
  `report_sales_price` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of additional_package
-- ----------------------------
INSERT INTO `additional_package` VALUES ('9c5b1c6e-32b1-464e-9c93-faf7f6e2397d', '2022-03-08 12:04:31', '2022-04-08 06:49:39', 20, 30, 30000, '[\"Additional In-App Call\",\"Expiry Date : similar to your current Main Package expiration date\",\"Rp 30,000 for 15,000 seconds (before VAT)\"]', 99000, '[\"Additional In-App Call\",\"Expiry Date : similar to your current Main Package expiration date\",\"Rp 30,000 for 15,000 seconds (before VAT)\"]', 50000, 50000, 50000, 50000, 1);

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('04973132-e065-4ce9-9c07-990c2dc9c54e', '2022-03-10 15:00:52', '2022-03-10 15:00:52', 'Mandiri', '008');
INSERT INTO `bank` VALUES ('081d586b-980f-4379-8507-7df3359f3792', '2022-03-10 15:00:52', '2022-03-10 15:00:52', 'BNI', '009');
INSERT INTO `bank` VALUES ('71830fc9-0529-4ab0-81a4-7e2486b502f6', '2022-03-10 15:00:52', '2022-03-10 15:00:52', 'BCA', '014');
INSERT INTO `bank` VALUES ('ffb91d60-82ee-4b43-87c2-1e17c631571f', '2022-03-10 15:00:52', '2022-03-10 15:00:52', 'BRI', '002');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('3367b266-7eae-4beb-a46f-85320534aa8c', '2022-04-20 07:51:50', '2022-04-20 14:51:50', 'banner baru', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1650441110.jpg');
INSERT INTO `banner` VALUES ('fdd8bbee-ab1d-11ec-bb30-e8f4089635a6', '2022-03-24 09:55:52', '2022-03-24 09:55:52', 'bumn mandiri', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/dFrXbDSutmpGF4vrQjYAFrsVnM57fqYkANXzIPEO.png');
INSERT INTO `banner` VALUES ('fdd8c468-ab1d-11ec-bb30-e8f4089635a6', '2022-03-24 09:55:52', '2022-03-24 09:55:52', 'mandiri', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/dFrXbDSutmpGF4vrQjYAFrsVnM57fqYkANXzIPEO.png');

-- ----------------------------
-- Table structure for call_callback_helpdesk
-- ----------------------------
DROP TABLE IF EXISTS `call_callback_helpdesk`;
CREATE TABLE `call_callback_helpdesk`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `call_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `helpdesk_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `call_callback_helpdesk_call_id_foreign`(`call_id` ASC) USING BTREE,
  INDEX `call_callback_helpdesk_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `call_callback_helpdesk_helpdesk_id_foreign`(`helpdesk_id` ASC) USING BTREE,
  CONSTRAINT `call_callback_helpdesk_call_id_foreign` FOREIGN KEY (`call_id`) REFERENCES `call_history` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `call_callback_helpdesk_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `call_callback_helpdesk_helpdesk_id_foreign` FOREIGN KEY (`helpdesk_id`) REFERENCES `help_desk_category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of call_callback_helpdesk
-- ----------------------------
INSERT INTO `call_callback_helpdesk` VALUES ('17afbf38-cc5a-480f-aba3-d47e0379cd39', '2022-03-31 12:19:49', '2022-03-31 12:19:49', 'a9227e53-71df-4e28-8b3f-1b8c12ac19f5', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `call_callback_helpdesk` VALUES ('38e58282-a1f3-4216-8d14-74fa335efe64', '2022-03-31 12:19:49', '2022-03-31 12:19:49', 'a9227e53-71df-4e28-8b3f-1b8c12ac19f5', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `call_callback_helpdesk` VALUES ('60d62fe2-a749-4c1b-9804-6c2849ded334', '2022-03-31 12:19:49', '2022-03-31 12:19:49', 'a9227e53-71df-4e28-8b3f-1b8c12ac19f5', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `call_callback_helpdesk` VALUES ('819978ea-9d52-4e8b-8bde-17b1e3edc617', '2022-03-31 12:18:40', '2022-03-31 12:18:40', '19fc4ff3-8953-4beb-8b7c-ef11f22b5bc7', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');

-- ----------------------------
-- Table structure for call_history
-- ----------------------------
DROP TABLE IF EXISTS `call_history`;
CREATE TABLE `call_history`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spv_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `channel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agent_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `resource_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uid` int NOT NULL AUTO_INCREMENT,
  `sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `record_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `duration` double NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ringing',
  `call_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid_uniqe`(`uid` ASC) USING BTREE,
  INDEX `call_history_company_id_foreign`(`company_id` ASC) USING BTREE,
  CONSTRAINT `call_history_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of call_history
-- ----------------------------
INSERT INTO `call_history` VALUES ('19fc4ff3-8953-4beb-8b7c-ef11f22b5bc7', '2022-03-31 12:18:40', '2022-03-31 14:09:23', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f7903d79-5d5d-4395-904a-9fbde62e3389', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'ringing', 'Callback');
INSERT INTO `call_history` VALUES ('8d70039a-0359-4307-8805-07368b67eb3c', '2022-03-22 16:34:10', '2022-03-31 14:20:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f7903d79-5d5d-4395-904a-9fbde62e3389', '78bf287a-9205-45d3-b519-e7bada97c272', NULL, 'katelyn_murray_to_monte_zemlak_iv_4662', '006c9e25c74db3a4259841dd89bf8759744IACWm2+SY3enmewitQzk12ItrIxikIgNXJic4XBSFrLDGIhXBQrYxissIgBGc+Atkuk6YgQAAQDPQDpiAgDPQDpiAwDPQDpiBADPQDpi', '006c9e25c74db3a4259841dd89bf8759744IAC7AmYlOFPYWPVziBMi4gjPfVdTJ1NNvUizAth0TxFUvYhXBQpe3uyDIgBGc+Atkuk6YgQAAQDPQDpiAgDPQDpiAwDPQDpiBADPQDpi', NULL, 1, NULL, NULL, '2022-03-22 17:36:48', '2022-03-22 19:04:35', NULL, 'end', 'Incoming Calls');
INSERT INTO `call_history` VALUES ('a9227e53-71df-4e28-8b3f-1b8c12ac19f5', '2022-03-31 12:19:49', '2022-03-31 14:21:19', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875', '78bf287a-9205-45d3-b519-e7bada97c272', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 'ringing', 'Missed Call');
INSERT INTO `call_history` VALUES ('e38a6af3-eb95-4d10-9049-dea7576780da', '2022-03-31 14:41:14', '2022-03-31 14:41:14', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875', '78bf287a-9205-45d3-b519-e7bada97c272', NULL, 'customer_crocodic_edited_to_monte_zemlak_iv_63663', '006c9e25c74db3a4259841dd89bf8759744IAD02gnY9Qtyv9xodLEzKu5+5bwwhBr/GiD28YN5yYc2Efv4vxTYxissIgDNZOqtmqxGYgQAAQDZA0ZiAgDZA0ZiAwDZA0ZiBADZA0Zi', '006c9e25c74db3a4259841dd89bf8759744IAC9hhnk5oSFev6SjukwqH22ZizBe8aEYthpwDw6Tcpivfv4vxS4pN6eIgDNZOqtmqxGYgQAAQDZA0ZiAgDZA0ZiAwDZA0ZiBADZA0Zi', NULL, 7, NULL, NULL, NULL, NULL, NULL, 'ringing', 'Outbound call');

-- ----------------------------
-- Table structure for cms_in_app_call_rate
-- ----------------------------
DROP TABLE IF EXISTS `cms_in_app_call_rate`;
CREATE TABLE `cms_in_app_call_rate`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_in_app_call_rate
-- ----------------------------

-- ----------------------------
-- Table structure for cms_marketing_company
-- ----------------------------
DROP TABLE IF EXISTS `cms_marketing_company`;
CREATE TABLE `cms_marketing_company`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_marketing_company
-- ----------------------------
INSERT INTO `cms_marketing_company` VALUES ('04fa8d0b-9b37-4b75-b435-b9c452787254', '27ba252c-1581-4d4c-9d10-45b325eefd5e', '9f3cdb09-1ce7-4c15-a4ac-4705721eb32e', '2022-03-07 09:24:33', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_marketing_company` VALUES ('17ec883c-1894-45f5-9098-c83dc7d60978', '7eba6139-8542-45b9-a7fd-deb3b97419d7', 'a0a83e1f-7527-42a4-943b-061853d7a5ba', '2022-03-07 09:24:56', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_marketing_company` VALUES ('551cc119-45f0-4850-bcb9-a1a6c40fb870', '7eba6139-8542-45b9-a7fd-deb3b97419d7', '9f3cdb09-1ce7-4c15-a4ac-4705721eb32e', '2022-03-07 09:24:12', 'administrator', NULL, NULL, '2022-03-07 09:24:56', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('6a570883-3d08-48a1-ad67-1b5e51b5da5e', '7eba6139-8542-45b9-a7fd-deb3b97419d7', '9f3cdb09-1ce7-4c15-a4ac-4705721eb32e', '2022-03-07 09:24:56', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_marketing_company` VALUES ('91406a3b-d596-4173-8d2e-c8c7e267410b', '7eba6139-8542-45b9-a7fd-deb3b97419d7', '9f3cdb09-1ce7-4c15-a4ac-4705721eb32e', '2022-03-07 09:04:52', 'administrator', NULL, NULL, '2022-03-07 09:24:12', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('a269944f-dbad-4a33-a2fe-621ecb0de43f', '69f43766-6c06-4508-8aa9-0717067be27d', 'a3f08efb-95cf-429d-a435-606de66fe68d', '2022-04-25 02:33:06', 'administrator', NULL, NULL, '2022-04-25 02:35:52', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('b0a9c76b-71da-4e30-af96-65881fd4596a', '7eba6139-8542-45b9-a7fd-deb3b97419d7', 'a0a83e1f-7527-42a4-943b-061853d7a5ba', '2022-03-03 06:17:43', 'administrator', NULL, NULL, '2022-03-07 09:00:32', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('b65c4f62-1cd9-4742-af01-4deb506406b7', '7eba6139-8542-45b9-a7fd-deb3b97419d7', 'a0a83e1f-7527-42a4-943b-061853d7a5ba', '2022-03-07 09:04:52', 'administrator', NULL, NULL, '2022-03-07 09:24:12', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('cb523b73-de9e-476c-8487-a69f027786fb', '7eba6139-8542-45b9-a7fd-deb3b97419d7', '9f3cdb09-1ce7-4c15-a4ac-4705721eb32e', '2022-03-03 06:17:43', 'administrator', NULL, NULL, '2022-03-07 09:00:32', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('f2109f34-b315-4031-ad7f-3f0f02c70ef1', '7eba6139-8542-45b9-a7fd-deb3b97419d7', 'a0a83e1f-7527-42a4-943b-061853d7a5ba', '2022-03-07 09:00:32', 'administrator', NULL, NULL, '2022-03-07 09:04:52', 'administrator');
INSERT INTO `cms_marketing_company` VALUES ('fca54fb9-0381-44d9-8b57-061f1da4a262', '69f43766-6c06-4508-8aa9-0717067be27d', 'c678b4f4-f495-444d-8e88-3c95bfab36b7', '2022-04-25 02:35:52', 'administrator', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_order` tinyint NOT NULL,
  `is_parent` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('3cf236f1-30d7-4c3f-bcaa-71321fc7bac5', 'Recording', 'bx bx-volume-full', '/recording', 6, 2, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('44c5416a-66de-4635-9003-8cd481d9839a', 'Marketing', 'bx bx-trending-up', '/marketing', 8, 2, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('60e00eaf-050b-4a55-a5e7-300684452489', 'Report', 'bx bx-sitemap', '#', 5, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Package', 'bx bx-package', '#', 3, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('b187a88c-b2cd-498c-ad06-a2a5a41d2e34', 'Billing', 'bx bx-spreadsheet', '#', 4, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('bcff3eac-4af3-4e81-b289-1c3795121897', 'Master Data', 'bx bx-server', '#', 9, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('cc9b5c46-d9ca-41b5-8279-090046170153', 'User Account', 'bx bx-user', '/user-account', 2, 2, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('e03eec63-5612-4324-adec-ab8ad9fe4187', 'Account Management', 'bx bx-group', '/account-management', 7, 2, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_menu` VALUES ('e8ed3407-7de8-43f2-b767-9a07eadcabcc', 'Business Account', 'bx bx-building-house', '#', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_other_fee
-- ----------------------------
DROP TABLE IF EXISTS `cms_other_fee`;
CREATE TABLE `cms_other_fee`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `is_percent` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_other_fee
-- ----------------------------
INSERT INTO `cms_other_fee` VALUES ('357f43f8-cae0-4693-99ae-5e93415fddbb', 'Tes', 15000, 2, '2022-04-06 02:35:40', 'administrator', '2022-04-06 02:35:49', 'administrator', NULL, NULL);

-- ----------------------------
-- Table structure for cms_permission
-- ----------------------------
DROP TABLE IF EXISTS `cms_permission`;
CREATE TABLE `cms_permission`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_permission
-- ----------------------------
INSERT INTO `cms_permission` VALUES ('02b878d4-6591-47c7-8945-df3ce35f536e', 'package-additionalonlineaccount', 'package');
INSERT INTO `cms_permission` VALUES ('108f0653-43ae-4bc5-9ad1-e76d73ab33d4', 'useraccount-', 'useraccount');
INSERT INTO `cms_permission` VALUES ('1c2afc47-2fa4-4b52-b69c-51cd16c365dc', 'businessaccount-approved', 'businessaccount');
INSERT INTO `cms_permission` VALUES ('22530301-07bf-48e8-b486-551f0d468b06', 'billing-customer', 'billing');
INSERT INTO `cms_permission` VALUES ('22fef5e3-391a-4e60-9f23-b96c3fbd87f3', 'masterdata-faq', 'masterdata');
INSERT INTO `cms_permission` VALUES ('2e30d1bd-7098-4426-b240-38bce6d42d86', 'masterdata-privacypolicy', 'masterdata');
INSERT INTO `cms_permission` VALUES ('3667ee0a-d163-4118-8bf3-245e1bd4f43d', 'package-in-appcall', 'package');
INSERT INTO `cms_permission` VALUES ('417cf928-7f02-4145-b396-226bfed0fcb7', 'masterdata-bank', 'masterdata');
INSERT INTO `cms_permission` VALUES ('5060a177-86e2-43a6-8362-fef20b7c5ab6', 'masterdata-in-appcallrate', 'masterdata');
INSERT INTO `cms_permission` VALUES ('5d754535-9542-418f-b6c2-e8b7c7cf3982', 'package-additionalin-appcall', 'package');
INSERT INTO `cms_permission` VALUES ('7f801e11-9c83-479c-9d51-39739f4bea08', 'report-customer', 'report');
INSERT INTO `cms_permission` VALUES ('960ef6c0-5ec7-4d16-8b95-212a5b960eb8', 'package-helpdesk', 'package');
INSERT INTO `cms_permission` VALUES ('a5f4bcc8-d5c9-467b-87e0-edd48d930cd5', 'package-informationbanner', 'package');
INSERT INTO `cms_permission` VALUES ('b364f546-42e7-4052-af51-acda8b557389', 'masterdata-terms&condition', 'masterdata');
INSERT INTO `cms_permission` VALUES ('bef7d282-1134-4067-813a-287fdb06ce91', 'masterdata-transactionfee', 'masterdata');
INSERT INTO `cms_permission` VALUES ('bf3bb609-03a9-4cac-9b4b-241ebe8b26c7', 'masterdata-templateendchat', 'masterdata');
INSERT INTO `cms_permission` VALUES ('c20137c1-054e-45ca-8074-7ef9537c5733', 'package-report', 'package');
INSERT INTO `cms_permission` VALUES ('d5063062-c357-40ba-b325-d511113bf668', 'marketing-', 'marketing');
INSERT INTO `cms_permission` VALUES ('df20fede-4583-4c18-bdab-180abcddf36f', 'masterdata-banner', 'masterdata');
INSERT INTO `cms_permission` VALUES ('e38d1f79-c0b2-42e8-a9f5-d88b7123a95a', 'businessaccount-verification', 'businessaccount');
INSERT INTO `cms_permission` VALUES ('eb575b43-c444-4b31-bcef-4042c2320b12', 'masterdata-category', 'masterdata');
INSERT INTO `cms_permission` VALUES ('ecbb1c1f-93a2-4ed7-b73a-4d4a6f5a3455', 'accountmanagement-', 'accountmanagement');
INSERT INTO `cms_permission` VALUES ('f0d8e08b-2319-4ccf-90e0-a145f4aeb6ce', 'billing-package', 'billing');
INSERT INTO `cms_permission` VALUES ('f284cd3b-2153-49ee-8caf-a4cf22c3cef7', 'masterdata-accountaccess', 'masterdata');
INSERT INTO `cms_permission` VALUES ('f290badb-1dc6-4f36-964e-7a7a9379e203', 'report-package', 'report');
INSERT INTO `cms_permission` VALUES ('fb3b6d3b-e8cc-4f8a-bb46-a6182bbfd374', 'recording-', 'recording');

-- ----------------------------
-- Table structure for cms_privacy_policy
-- ----------------------------
DROP TABLE IF EXISTS `cms_privacy_policy`;
CREATE TABLE `cms_privacy_policy`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privacy_policy
-- ----------------------------

-- ----------------------------
-- Table structure for cms_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` tinyint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_role
-- ----------------------------
INSERT INTO `cms_role` VALUES ('200dbafd-15a8-46b4-8fc2-d4defc79ebba', 1, 'finance', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('28dc3412-2ced-43c4-b76a-58215503df86', 1, 'marketing', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('295103b6-afd2-472d-807e-9932f79a22a2', 1, 'superadmin', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('89b1c35a-2ac8-4b5a-8548-283d0a43776e', 2, 'customer', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('931b48a1-705d-4bb4-9e62-d5482533d2e2', 2, 'ba', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('a699d856-cb4d-467c-a35b-bc5952c3b4fb', 1, 'owner', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('cb8fc7a5-1aba-45d2-8794-1cc95b46dd73', 2, 'spv', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_role` VALUES ('dc9c9e79-5ed1-4d0e-9717-73363bf45659', 2, 'agent', '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_role_has_permission
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_has_permission`;
CREATE TABLE `cms_role_has_permission`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_permission_id`(`permission_id` ASC) USING BTREE,
  INDEX `fk_role_id`(`role_id` ASC) USING BTREE,
  CONSTRAINT `fk_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `cms_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `cms_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_role_has_permission
-- ----------------------------
INSERT INTO `cms_role_has_permission` VALUES ('024e393f-5da0-4789-8e4a-8b02bde75226', '960ef6c0-5ec7-4d16-8b95-212a5b960eb8', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('0be4ec9e-c754-42ea-bc41-242ef9ea30cf', 'f290badb-1dc6-4f36-964e-7a7a9379e203', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('1214e619-590e-4c62-b94a-2ffca9303bcc', '5060a177-86e2-43a6-8362-fef20b7c5ab6', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('13379312-23b1-4ebc-ac25-5baf1a52b5d9', '108f0653-43ae-4bc5-9ad1-e76d73ab33d4', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('2b82ab28-4417-4298-a4ef-f6ceba2a6488', 'd5063062-c357-40ba-b325-d511113bf668', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('3051e0db-3393-49f3-a943-d2f4a16dfb3b', '5d754535-9542-418f-b6c2-e8b7c7cf3982', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('321acc13-d453-4016-be3f-8b525260c6a8', 'ecbb1c1f-93a2-4ed7-b73a-4d4a6f5a3455', 'a699d856-cb4d-467c-a35b-bc5952c3b4fb');
INSERT INTO `cms_role_has_permission` VALUES ('355104db-2ef5-4422-8539-d7dc8d34b6cb', '22530301-07bf-48e8-b486-551f0d468b06', '200dbafd-15a8-46b4-8fc2-d4defc79ebba');
INSERT INTO `cms_role_has_permission` VALUES ('437c51f8-297e-492f-b540-3582d7406a12', '2e30d1bd-7098-4426-b240-38bce6d42d86', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('473b61ab-6a38-4678-8834-8a575a19b907', '417cf928-7f02-4145-b396-226bfed0fcb7', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('48b27033-153b-4cd6-81e1-cb3667dae76e', 'a5f4bcc8-d5c9-467b-87e0-edd48d930cd5', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('4c634f3d-a6ba-425c-873c-c05a0c5219f7', '22fef5e3-391a-4e60-9f23-b96c3fbd87f3', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('4c7faf86-5d4a-410d-98b8-f00978762f99', 'eb575b43-c444-4b31-bcef-4042c2320b12', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('4e327a3a-4dca-4f12-ae7c-7ebac30bbcac', 'f284cd3b-2153-49ee-8caf-a4cf22c3cef7', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('58758e1e-ddc3-4436-b8c5-229bb94df8f6', 'e38d1f79-c0b2-42e8-a9f5-d88b7123a95a', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('6b77a19b-4adc-4fb1-bf5b-7bf2d504c911', 'ecbb1c1f-93a2-4ed7-b73a-4d4a6f5a3455', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('70ea3c76-e83a-4273-ad8c-85dab09d1c55', 'f0d8e08b-2319-4ccf-90e0-a145f4aeb6ce', '28dc3412-2ced-43c4-b76a-58215503df86');
INSERT INTO `cms_role_has_permission` VALUES ('80cb7799-7750-4fa4-9061-ca1232773bfb', '02b878d4-6591-47c7-8945-df3ce35f536e', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('8363d05d-d6be-4781-ae53-2d06762b34ae', 'fb3b6d3b-e8cc-4f8a-bb46-a6182bbfd374', '200dbafd-15a8-46b4-8fc2-d4defc79ebba');
INSERT INTO `cms_role_has_permission` VALUES ('87e0e93e-0e9d-45f9-adcc-3883d7ac8404', 'df20fede-4583-4c18-bdab-180abcddf36f', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('886ba6d4-7f51-4130-90d6-4c0e2a310eb5', '7f801e11-9c83-479c-9d51-39739f4bea08', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('91f74901-b208-4725-97da-3b4cffb9c67c', 'f290badb-1dc6-4f36-964e-7a7a9379e203', '200dbafd-15a8-46b4-8fc2-d4defc79ebba');
INSERT INTO `cms_role_has_permission` VALUES ('9895fef6-3642-4e51-927c-e2aae9ffbcaa', '22530301-07bf-48e8-b486-551f0d468b06', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('9d52d7ab-52cc-4122-8b08-d9c83d935baa', '7f801e11-9c83-479c-9d51-39739f4bea08', '200dbafd-15a8-46b4-8fc2-d4defc79ebba');
INSERT INTO `cms_role_has_permission` VALUES ('a2cfa630-3ac1-4fcb-b822-780e38faa66d', 'd5063062-c357-40ba-b325-d511113bf668', '28dc3412-2ced-43c4-b76a-58215503df86');
INSERT INTO `cms_role_has_permission` VALUES ('a71a7e23-40b1-433e-ab7f-2411fb6baa58', 'f0d8e08b-2319-4ccf-90e0-a145f4aeb6ce', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('b7a018d3-7eb2-41a9-bdcf-aff12e5e8a7a', 'f290badb-1dc6-4f36-964e-7a7a9379e203', '28dc3412-2ced-43c4-b76a-58215503df86');
INSERT INTO `cms_role_has_permission` VALUES ('b7b13da6-b381-4820-8002-0069d81c6056', 'fb3b6d3b-e8cc-4f8a-bb46-a6182bbfd374', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('c90ce062-d19e-446c-8e21-ef5e89cef635', 'c20137c1-054e-45ca-8074-7ef9537c5733', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('d4f118c4-d6c2-4876-8065-21035eb6938c', 'b364f546-42e7-4052-af51-acda8b557389', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('d97f52a0-e6b7-49fb-803e-123b6d7ccdc4', 'f0d8e08b-2319-4ccf-90e0-a145f4aeb6ce', '200dbafd-15a8-46b4-8fc2-d4defc79ebba');
INSERT INTO `cms_role_has_permission` VALUES ('dea05ceb-f467-4b10-a520-b3c0665ebe56', '7f801e11-9c83-479c-9d51-39739f4bea08', '28dc3412-2ced-43c4-b76a-58215503df86');
INSERT INTO `cms_role_has_permission` VALUES ('e6d2f1c6-98f0-4cef-af6d-b006540db449', '22530301-07bf-48e8-b486-551f0d468b06', '28dc3412-2ced-43c4-b76a-58215503df86');
INSERT INTO `cms_role_has_permission` VALUES ('e7ba71f8-0ed5-4926-a039-dffd531f4c3e', 'bef7d282-1134-4067-813a-287fdb06ce91', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('eb6efd7b-75d0-4fbd-8704-324deb12b1cc', '1c2afc47-2fa4-4b52-b69c-51cd16c365dc', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('efa68101-e548-4a39-a673-bc3545e39a82', '3667ee0a-d163-4118-8bf3-245e1bd4f43d', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_role_has_permission` VALUES ('fa0dc766-742a-49c3-9d0f-019781e0f806', 'bf3bb609-03a9-4cac-9b4b-241ebe8b26c7', '295103b6-afd2-472d-807e-9932f79a22a2');

-- ----------------------------
-- Table structure for cms_submenu
-- ----------------------------
DROP TABLE IF EXISTS `cms_submenu`;
CREATE TABLE `cms_submenu`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_order` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_menu_id`(`menu_id` ASC) USING BTREE,
  CONSTRAINT `fk_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `cms_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_submenu
-- ----------------------------
INSERT INTO `cms_submenu` VALUES ('18d0b690-24da-43c7-961c-090655fcaa0f', 'e03eec63-5612-4324-adec-ab8ad9fe4187', NULL, NULL, 0, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('26002c49-48af-41a2-9854-e3135bd0b05a', 'e8ed3407-7de8-43f2-b767-9a07eadcabcc', 'Verification', '/business-account/verification', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('2a8ff532-4dfc-4f6c-a454-b22c9db620d0', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Banner', '/master/banner', 4, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('35fae2ff-e7ec-42d9-ace2-4dda8cb424bf', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'In-App Call', '/package/in-app-call', 2, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('4c709e0b-34ea-4f23-8362-8153839fdf84', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Additional Online Account', '/package/additional-online-account', 4, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('4d859e3e-b775-4d4d-af3a-eca68727dc8f', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Additional', '/package/additional', 3, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('73d9d396-9c7c-49ab-b112-fba797445609', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Privacy Policy', '/master/privacy-policy', 7, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('8216776e-9f05-4ad1-aa2d-eacdda311edb', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Bank', '/master/bank', 2, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('86bc7d51-c413-4dc0-9682-f039e73da7f3', '60e00eaf-050b-4a55-a5e7-300684452489', 'Customer', '/report/customer', 2, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('8a0d73dc-6c74-4b25-a8a3-1e265446bb17', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'FAQ', '/master/faq', 5, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('ae0617e3-4bb2-43b2-ad09-db7c81a7075f', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Template End Chat', '/master/template-end-chat', 9, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('aeb79162-fde6-4e67-b1d9-5116654e9ff9', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Transaction Fee', '/master/fee', 3, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('b457f671-325c-4fc9-ae26-187443d25dbb', '44c5416a-66de-4635-9003-8cd481d9839a', NULL, NULL, 0, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('b965fd91-d7e8-4601-9b97-58c8b89dd0fc', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Category', '/master/category', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('cbb989b5-a733-4363-abc0-d01ea1a12b8a', '60e00eaf-050b-4a55-a5e7-300684452489', 'Package', '/report/package', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('cbe02603-63ae-433a-a505-a0a444fdf0f3', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Help Desk', '/package/helpdesk', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('d09aa4d0-1cc3-4ea9-8aa8-99ccc78db5ec', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Information Banner', '/package/information-banner', 6, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('d10d97c3-4a6e-47bf-9eb5-6b2fbd124c34', 'ad7758f1-929b-499a-b3f4-a7c1c8ed4ac3', 'Report Package', '/package/report', 5, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('d8928c8b-d1eb-40c8-aec0-1c8c69eb1c4c', 'b187a88c-b2cd-498c-ad06-a2a5a41d2e34', 'Package', '/billing/package', 1, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('dd2b5699-dde6-48cc-b89c-f8ab88bb0e23', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'In-App Call Rate', '/master/in-app-call-rate', 10, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('e19fb863-6b56-4c12-ab2e-dd8f0c39b299', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Account Access', '/master/account-access', 8, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('e3ac6c0a-f4a8-4030-84ce-d52a928a629c', 'bcff3eac-4af3-4e81-b289-1c3795121897', 'Terms & Condition', '/master/term-condition', 6, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('e880e6cb-bbcb-43c3-9bfb-a13e3562816f', '3cf236f1-30d7-4c3f-bcaa-71321fc7bac5', NULL, NULL, 0, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('f0c16b94-0c07-4ed7-9f0f-3656acd4e3ee', 'cc9b5c46-d9ca-41b5-8279-090046170153', NULL, NULL, 0, 0, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('f48c3641-03df-4018-9e3e-44ef929550dc', 'e8ed3407-7de8-43f2-b767-9a07eadcabcc', 'Approved', '/business-account/approved', 2, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);
INSERT INTO `cms_submenu` VALUES ('f9883c62-ecd1-46f8-a53e-2476e7396d97', 'b187a88c-b2cd-498c-ad06-a2a5a41d2e34', 'Customer', '/billing/customer', 2, 1, '2021-12-24 07:05:18', 'system', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_template_end_chat
-- ----------------------------
DROP TABLE IF EXISTS `cms_template_end_chat`;
CREATE TABLE `cms_template_end_chat`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_template_end_chat
-- ----------------------------
INSERT INTO `cms_template_end_chat` VALUES ('ec72017c-8152-42b2-9df4-7119d819d654', 'oke', '1', '2022-03-17 03:23:03', 'administrator', '2022-03-17 03:23:10', 'administrator', NULL, NULL);

-- ----------------------------
-- Table structure for cms_term_condition
-- ----------------------------
DROP TABLE IF EXISTS `cms_term_condition`;
CREATE TABLE `cms_term_condition`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_term_condition
-- ----------------------------

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint NOT NULL,
  `assign_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `helpdesk_category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_verify` tinyint NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `bio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `url_fb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_hide` tinyint NOT NULL,
  `birthdate` date NULL DEFAULT NULL,
  `gender` tinyint NULL DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `office_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_post_paid` tinyint NULL DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('69f43766-6c06-4508-8aa9-0717067be27d', NULL, 'Rifky Fahrizal', 'rifky@aseanindo.co.id', '$2y$10$eFyfN/bHgXzvQ/74hO9VXeTzslC8XOy.i.EZ/tVMLRxxJUnKMmcEW', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-04-25 02:33:06', 'administrator', '2022-04-25 02:35:52', 'administrator', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_user` VALUES ('b7320627-cea9-4a13-9c49-6ed53c7d5493', NULL, 'administrator', 'admin@haloyelow.com', '$2y$10$I.8h2eCaJrtm1/b80f8jau0bFo21olCNy7zx7FJBJfaxCyMQ.Y8X6', '+6282111662745', NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ok', NULL, '2022-01-10 10:03:48', 'system', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_user_has_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_user_has_role`;
CREATE TABLE `cms_user_has_role`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_id`(`user_uuid` ASC) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_uuid`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_user_has_role
-- ----------------------------
INSERT INTO `cms_user_has_role` VALUES ('9da30b8b-921b-494b-800b-371cf3613fe1', 'b7320627-cea9-4a13-9c49-6ed53c7d5493', '295103b6-afd2-472d-807e-9932f79a22a2');
INSERT INTO `cms_user_has_role` VALUES ('c85c6809-5e44-4f7e-a413-b2ea195f7858', '69f43766-6c06-4508-8aa9-0717067be27d', '28dc3412-2ced-43c4-b76a-58215503df86');

-- ----------------------------
-- Table structure for cms_user_history
-- ----------------------------
DROP TABLE IF EXISTS `cms_user_history`;
CREATE TABLE `cms_user_history`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_uuid_fk`(`user_uuid` ASC) USING BTREE,
  CONSTRAINT `user_uuid_fk` FOREIGN KEY (`user_uuid`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_user_history
-- ----------------------------
INSERT INTO `cms_user_history` VALUES ('046cc6cd-7800-4dcf-ae1d-fcce73a65700', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'unsuspend ya', '2022-04-25 02:58:49', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('28cd1bee-7a4e-4502-b7d0-e93ca2b2deaf', '69f43766-6c06-4508-8aa9-0717067be27d', 2, 'suspend lagi ya', '2022-04-25 03:00:21', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('4ba58cf4-2fc2-4498-a363-9355bc8a5a5e', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'yes', '2022-04-25 02:55:57', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('5b66dec7-cdff-40e9-a387-9b4a83812253', '69f43766-6c06-4508-8aa9-0717067be27d', 1, 'unsuspend lagi ya', '2022-04-25 03:00:38', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('5dadb913-7cb7-4b78-a5b4-657ef6632e31', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'tes', '2022-04-25 02:54:38', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('9409ff3d-1886-45bd-b8c2-6f0cb62d97a2', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'suspend ya', '2022-04-25 02:58:05', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('9938e988-5262-4612-8b29-cf74630788d4', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'asfasfa', '2022-04-25 02:56:51', 'administrator', NULL, NULL, NULL, NULL);
INSERT INTO `cms_user_history` VALUES ('ea34c8ee-eb3f-489c-a5fc-4e2597cdaae6', '69f43766-6c06-4508-8aa9-0717067be27d', 0, 'afasf', '2022-04-25 02:56:41', 'administrator', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `director_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinned_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinned_address_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinned_address_lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_approval' COMMENT 'waiting_approval|approved|rejected|suspended',
  `reject_reason` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ce_uq`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-04 16:12:04', '2022-04-01 11:12:14', 'laililmahvut@gmail.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/9iz9OJ5F3WDdOF05WboB3LSAhvcpnWUTQypn2Qnq.png', 'Rino Nesa Aprisedo', 'PT Taman Media Indonesia', '085747488618', '08573438748', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', 'Kota Semarang', '94343', 'Jl. Bina Remaja No.6, Srondol Wetan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50363, Indonesia', 'Jl. Bina Remaja No.6, Srondol Wetan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50363, Indonesia', '-7.0644051', '110.4165274', '2022-03-04 17:16:27', 'approved', NULL, 'en');
INSERT INTO `company` VALUES ('a3f08efb-95cf-429d-a435-606de66fe68d', '2022-03-12 15:08:41', '2022-04-01 12:45:25', 'yellow@gmail.com', NULL, 'Arif Niwang Djati', 'PT Yellow', '5984958498', '8983849334', '$2y$10$NPSf7x/fjJ4105aobR2CE.tO7jF.ObIq.a2Zdr5u1nhXfIb3Z1E4K', 'Jakarta', '090934', 'RT.1/RW.3, Gelora, Tanahabang, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270, Indonesia', 'RT.1/RW.3, Gelora, Tanahabang, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270, Indonesia', '-6.223993999999999', '106.8032415', '2022-03-12 15:11:39', 'approved', NULL, 'en');
INSERT INTO `company` VALUES ('c678b4f4-f495-444d-8e88-3c95bfab36b7', '2022-03-14 08:37:35', '2022-03-14 08:55:44', 'rino@mailinator.com', NULL, 'Ivory Rutledge', 'Freya Hunt', '7879898989', '898989888', '$2y$10$/FmzjAn7zPwSgUlsYYTKD.zljAqtVjl3IdmyJCKFsetC2U6X5UN1e', 'Duis libero et moles', '48763980989', 'Dolorem harum perspi', 'Jl. Bina Remaja No.6, Srondol Wetan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50363, Indonesia', '-7.0644051', '110.4165274', '2022-03-14 08:55:44', 'approved', NULL, 'en');
INSERT INTO `company` VALUES ('d0d9a6f8-0c87-4b63-b3b4-c7cf566000c3', '2022-03-14 09:40:56', '2022-03-14 09:43:54', 'devina@mailinator.com', NULL, 'Chelsea Blanchard', 'Byron Carney', '1768098998', '8989898989', '$2y$10$g.LlGb/2LPD47/mJT3kFhek1lXVZliFx5rxFoBRbJ.X7mM.asw/Ya', 'Fuga Optio iusto e', '24252', 'Vero dolor unde poss', 'Jl. Bina Remaja No.6, Srondol Wetan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50363, Indonesia', '-7.0644051', '110.4165274', '2022-03-14 09:41:35', 'approved', NULL, 'en');

-- ----------------------------
-- Table structure for company_billing
-- ----------------------------
DROP TABLE IF EXISTS `company_billing`;
CREATE TABLE `company_billing`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('current','next_month') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','non_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `admin_login_limit` int NOT NULL,
  `user_online_limit` int NOT NULL,
  `user_limit` int NOT NULL,
  `call_balance` int NOT NULL,
  `call_cost` int NOT NULL,
  `recording_type` enum('record','no_record') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `expired_at` timestamp NOT NULL,
  `billing_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_participant` int NOT NULL,
  `invoice_number` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cb_ci_fk`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_billing_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_billing
-- ----------------------------
INSERT INTO `company_billing` VALUES ('0e6e6d5b-58e2-4f3e-bdb2-6ff188a5eb7f', '2022-03-22 08:39:44', '2022-03-25 11:01:36', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'current', 'active', 2, 6, 8, 410000, 4, 'record', '{\"main_package\":{\"help_desk\":{\"type\":\"Premium\",\"price\":\"Rp 599.000,00\\/month\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 Online accounts with 8 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":599000,\"qty\":1},\"in_app_call\":{\"type\":\"Premium\",\"price\":\"Rp 380.000,00\\/account\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 seconds call per month\",\"balance\":\"4 Seconds\",\"fix_price\":380000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"2 Online account = <b>Rp 198.000,00<\\/b>\",\"information\":\"2 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"2\"},\"in_app_call\":{\"price\":\"Rp 30.000\",\"description\":\"2 x Rp 30.000  = <b> Rp 60.000,00<\\/b>\",\"information\":\"20 seconds call per month\",\"balance\":\"20 Seconds\",\"fix_price\":30000,\"qty\":\"2\"}},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Agent Activity\"]},\"total_product\":\"Rp 1.287.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 1.287.000,00\",\"val\":1287000},\"admin_login_limit\":2,\"user_limit\":8,\"user_online_limit\":6,\"call_balance\":410000,\"call_cost\":4,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}', NULL, '2022-04-21 08:39:44', '2022-04', 1000, 'INV/AYO-KEU/2203220839/BA/000002');
INSERT INTO `company_billing` VALUES ('9a34436c-824b-4ced-864e-2d38b9df4671', '2022-03-28 11:42:10', '2022-03-28 11:44:01', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'next_month', 'active', 1, 3, 4, 280000, 3, 'record', '{\"main_package\":{\"help_desk\":{\"type\":\"Lite\",\"price\":\"Rp 249.000,00\\/month\",\"expired\":\"Apr 27, 2022\",\"description\":\"2 Online accounts with 4 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":249000,\"qty\":1},\"in_app_call\":{\"type\":\"Lite\",\"price\":\"Rp 180.000,00\\/account\",\"expired\":\"Apr 27, 2022\",\"description\":\"3 seconds call per month\",\"balance\":\"3 Seconds\",\"fix_price\":180000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"1 Online account = <b>Rp 99.000,00<\\/b>\",\"information\":\"1 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"1\"},\"in_app_call\":{\"price\":\"Rp 250.000\",\"description\":\"Rp 250.000,00<\\/b>\",\"information\":\"3 seconds call per month\",\"balance\":\"3 Seconds\",\"fix_price\":\"250000\",\"qty\":1}},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Agent Activity\"]},\"total_product\":\"Rp 648.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 648.000,00\",\"val\":648000},\"admin_login_limit\":1,\"user_limit\":4,\"user_online_limit\":3,\"call_balance\":280000,\"call_cost\":3,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}', NULL, '2022-04-27 11:42:10', '2022-04', 1000, 'INV/AYO-KEU/2803221142/BA/000002');
INSERT INTO `company_billing` VALUES ('aba41b09-df6e-432c-a759-2ebe0507d735', '2022-03-22 08:36:08', '2022-03-22 08:37:11', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'current', NULL, 2, 5, 8, 310000, 2, 'record', '{\"main_package\":{\"help_desk\":{\"type\":\"Premium\",\"price\":\"Rp 599.000,00\\/month\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 Online accounts with 8 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":599000,\"qty\":1},\"in_app_call\":{\"type\":\"Basic\",\"price\":\"Rp 280.000,00\",\"expired\":\"Apr 21, 2022\",\"description\":\"2 seconds call per month\",\"balance\":\"2 Seconds\",\"fix_price\":280000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"1 Online account = <b>Rp 99.000,00<\\/b>\",\"information\":\"1 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"1\"},\"in_app_call\":null},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Call Agent\"]},\"total_product\":\"Rp 1.028.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 1.028.000,00\",\"val\":1028000},\"admin_login_limit\":2,\"user_limit\":8,\"user_online_limit\":5,\"call_balance\":310000,\"call_cost\":2,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}', NULL, '2022-04-21 08:36:08', '2022-03', 1000, 'INV/AYO-KEU/2203220836/BA/000001');

-- ----------------------------
-- Table structure for company_category
-- ----------------------------
DROP TABLE IF EXISTS `company_category`;
CREATE TABLE `company_category`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_category
-- ----------------------------
INSERT INTO `company_category` VALUES ('137f8bca-9ba7-11ec-aca5-e8f4089635a6', '2022-03-04 17:37:23', '2022-03-04 17:37:23', 'Insurance', NULL);
INSERT INTO `company_category` VALUES ('52386997-9ba7-11ec-aca5-e8f4089635a6', '2022-03-04 17:39:08', '2022-03-04 17:39:23', 'Hospital / Clinic', NULL);
INSERT INTO `company_category` VALUES ('52386ffd-9ba7-11ec-aca5-e8f4089635a6', '2022-03-04 17:39:08', '2022-03-04 17:39:08', 'Hotel', NULL);
INSERT INTO `company_category` VALUES ('523875fc-9ba7-11ec-aca5-e8f4089635a6', '2022-03-04 17:39:08', '2022-03-04 17:39:08', 'Banking', NULL);
INSERT INTO `company_category` VALUES ('52387cb4-9ba7-11ec-aca5-e8f4089635a6', '2022-03-04 17:39:08', '2022-03-04 17:39:08', 'UMKM', NULL);

-- ----------------------------
-- Table structure for company_details
-- ----------------------------
DROP TABLE IF EXISTS `company_details`;
CREATE TABLE `company_details`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_category_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `document_id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `document_siup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `document_agreement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_can_post_paid_payment` int NOT NULL DEFAULT 0,
  `logout_time` int NULL DEFAULT 5 COMMENT 'in minutes | null = never',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cd_ci_fk`(`company_id` ASC) USING BTREE,
  INDEX `cd_cci_fk`(`company_category_id` ASC) USING BTREE,
  CONSTRAINT `company_details_company_category_id_foreign` FOREIGN KEY (`company_category_id`) REFERENCES `company_category` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `company_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_details
-- ----------------------------
INSERT INTO `company_details` VALUES ('39f90330-0074-4f09-bbb8-5096a2567b97', '2022-03-06 11:58:43', '2022-03-16 14:43:40', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '52386997-9ba7-11ec-aca5-e8f4089635a6', 'This is my company description', 'storage/uploads/secure/TUTtZOT7wxdQVq0tFDpDHrLCAFVj9VoguqNb80Fw.pdf', 'storage/uploads/secure/iBNTGsZZT2rxGaeX79ejqE8jxv364ZB7Czxu8nrY.pdf', '<h5>PT Taman Media Indonesia</h5>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\n<p>Rino Nesa Aprisedo</p>', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '9204384880998', 'Muhammad Lailil Mahfud', 'BCA', '71830fc9-0529-4ab0-81a4-7e2486b502f6', 0, 5);
INSERT INTO `company_details` VALUES ('5137e14c-3e53-403d-8142-c12c12956024', '2022-04-01 11:37:48', '2022-04-01 11:37:48', 'd0d9a6f8-0c87-4b63-b3b4-c7cf566000c3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5);
INSERT INTO `company_details` VALUES ('6885382d-2fdb-4adf-a49e-aec8e331e9b2', '2022-03-14 08:38:38', '2022-03-16 14:44:00', 'c678b4f4-f495-444d-8e88-3c95bfab36b7', '52386997-9ba7-11ec-aca5-e8f4089635a6', 'Vel eum minim eum qu', 'storage/uploads/secure/47tFYMZ9pE1RwwKeOhX4S6DW8nZsB9fJ3JZhcMVK.jpg', 'storage/uploads/secure/qTz9YJ8wvY93Rp4XpRW0QgktFCCeeR2DMAtJHDB4.pdf', '<h5>Freya Hunt</h5>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\n<p>Ivory Rutledge</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5);
INSERT INTO `company_details` VALUES ('6cf0c8fb-7883-4ca3-9d82-32e773466afd', '2022-03-12 15:15:58', '2022-04-01 12:45:17', 'a3f08efb-95cf-429d-a435-606de66fe68d', '52386997-9ba7-11ec-aca5-e8f4089635a6', 'Description', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/secure/Q3Os2ncjIqDwkkFmIGpYQK0W5IbIthBctYBtDM9Y.png', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/secure/Zw53I5jwdc1vg99joW30hgWRO9Yhn5BkRYWx8DgC.png', '<h5>PT Yellow</h5>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\n<p>Arif Niwang Djati</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5);

-- ----------------------------
-- Table structure for company_holiday_dates
-- ----------------------------
DROP TABLE IF EXISTS `company_holiday_dates`;
CREATE TABLE `company_holiday_dates`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_holiday_dates_company_id_foreign`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_holiday_dates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_holiday_dates
-- ----------------------------
INSERT INTO `company_holiday_dates` VALUES ('0274600e-1711-4acd-984e-c120e2ae1d8a', '2022-03-17 14:32:08', '2022-03-17 14:32:08', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-20');
INSERT INTO `company_holiday_dates` VALUES ('138d9a22-c9ee-4d4e-9e73-e7357b0d0463', '2022-03-17 14:25:48', '2022-03-17 14:25:48', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-27');
INSERT INTO `company_holiday_dates` VALUES ('1c2e79e2-3125-4c10-b461-32d70cd2ff0a', '2022-03-17 14:24:20', '2022-03-17 14:24:20', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-10');
INSERT INTO `company_holiday_dates` VALUES ('34c3596d-9e84-40fd-82bf-ae00ec686dd3', '2022-03-28 12:46:54', '2022-03-28 12:46:54', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-29');
INSERT INTO `company_holiday_dates` VALUES ('3b346abe-da34-40ba-ac12-a4f2aa6096de', '2022-03-28 12:46:54', '2022-03-28 12:46:54', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-31');
INSERT INTO `company_holiday_dates` VALUES ('52665014-1428-4e99-876e-29cfa035e18b', '2022-03-17 14:25:48', '2022-03-17 14:25:48', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-26');
INSERT INTO `company_holiday_dates` VALUES ('7a432589-daf9-43da-add1-77df4f0a125d', '2022-03-28 12:46:54', '2022-03-28 12:46:54', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-28');
INSERT INTO `company_holiday_dates` VALUES ('8db4514e-8d1b-4fb3-b986-c595f1fb5b6a', '2022-03-17 14:32:08', '2022-03-17 14:32:08', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-19');
INSERT INTO `company_holiday_dates` VALUES ('90f573cc-8522-4668-aed7-37cc0bcca157', '2022-03-17 14:24:20', '2022-03-17 14:24:20', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-08');
INSERT INTO `company_holiday_dates` VALUES ('97916e80-6777-4b35-a776-afdaaef56345', '2022-03-17 14:32:08', '2022-03-17 14:32:08', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-18');
INSERT INTO `company_holiday_dates` VALUES ('a001fa62-25f5-44a4-8cc5-ad6cf50c304f', '2022-03-28 12:46:54', '2022-03-28 12:46:54', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-30');
INSERT INTO `company_holiday_dates` VALUES ('c233e9d8-35ed-4a23-9c94-c67cb6f97f1a', '2022-03-17 14:32:08', '2022-03-17 14:32:08', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '2022-03-23');

-- ----------------------------
-- Table structure for company_office_hour
-- ----------------------------
DROP TABLE IF EXISTS `company_office_hour`;
CREATE TABLE `company_office_hour`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sunday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `monday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `tuesday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `wednesday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `thursday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `friday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  `saturday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'null = off | json value start end date',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_office_hour_company_id_foreign`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_office_hour_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_office_hour
-- ----------------------------
INSERT INTO `company_office_hour` VALUES ('eb28330b-ded8-4073-ac55-dc43c6f05614', '2022-03-17 15:22:54', '2022-03-17 15:33:15', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '{\"start\":\"09:00\",\"end\":\"17:00\"}', '{\"start\":\"09:00\"}', '{\"start\":\"10:00\",\"end\":\"19:00\"}', '{\"start\":\"11:00\",\"end\":\"20:00\"}', '{\"start\":\"12:00\",\"end\":\"21:00\"}', '{\"start\":\"13:00\",\"end\":\"22:00\"}', '{\"start\":\"14:00\",\"end\":\"23:00\"}');

-- ----------------------------
-- Table structure for company_product
-- ----------------------------
DROP TABLE IF EXISTS `company_product`;
CREATE TABLE `company_product`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product | events',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `helpdesk_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_product_company_id_foreign`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_product_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_product
-- ----------------------------
INSERT INTO `company_product` VALUES ('4406674b-edc1-4bf5-a8e1-69899e5f3b28', '2022-04-01 09:37:16', '2022-04-01 12:56:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'product', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/tOnSepXJ04W5CCxj8uzRlpAu44mXy4ba9m2McYFS.png', 'Malik Walsh', 100000, 'Similique in qui do necessitatibus cillum eum', 'Information, Teknisi, Support');
INSERT INTO `company_product` VALUES ('611943ee-8590-480a-b9f0-43ab57fd2275', '2022-03-22 17:45:47', '2022-03-22 17:49:17', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'product', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jaVaYkuaA49AgbU98F1eO6cW9s0PMqzOULViOZql.webp', 'Dante Campbell', 569545, 'Incididunt exercitationem sit et dolore aperiam fugit labore accusantium sed lorem anim unde perspiciatis', 'Information, Support, Teknisi, Complaint');
INSERT INTO `company_product` VALUES ('9d281f0c-4f11-4844-80a3-fc3559a65940', '2022-03-21 14:56:11', '2022-03-22 17:49:17', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'product', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/yQLRFAc2EVRrMd2mJxOrvKJxYfdf2xZxTmgNJew0.png', 'Makanan Sehat', 250000, 'Gastropub chillwave lumbersexual umami lyft. Poke austin direct trade, marfa raclette letterpress actually. Chartreuse sriracha pinterest twee lo-fi try-hard. Meditation banh mi kitsch, prism organic.', 'Information, Complaint, Support');
INSERT INTO `company_product` VALUES ('d6bb1c9f-221b-4030-af52-9cca1a0a7928', '2022-03-22 17:50:29', '2022-03-22 17:50:29', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'product', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/dInN5e3FVomLkE5nfag59EbteotG0rbTwS6RB2Fq.jpg', 'Fleur Beard', 703, 'Consequatur quos libero laborum qui ab aliqua Tempor irure eveniet maxime aut dignissimos sapiente dolor dolorum aliqua', 'JoyBoy, Information, Product, Teknisi, Support');
INSERT INTO `company_product` VALUES ('da8a9d1a-ac6a-46f5-9410-33d951f9c0a1', '2022-03-24 09:55:25', '2022-03-24 09:55:25', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'product', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/dFrXbDSutmpGF4vrQjYAFrsVnM57fqYkANXzIPEO.png', 'BUMN Mandiri', 1500000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut', 'Information, Teknisi, Complaint, Support');

-- ----------------------------
-- Table structure for company_product_files
-- ----------------------------
DROP TABLE IF EXISTS `company_product_files`;
CREATE TABLE `company_product_files`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_product_files_company_product_id_foreign`(`company_product_id` ASC) USING BTREE,
  CONSTRAINT `company_product_files_company_product_id_foreign` FOREIGN KEY (`company_product_id`) REFERENCES `company_product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_product_files
-- ----------------------------
INSERT INTO `company_product_files` VALUES ('29a04c88-b558-4767-8e26-99b7b7864ff4', '2022-04-01 12:54:43', '2022-04-01 12:54:43', '4406674b-edc1-4bf5-a8e1-69899e5f3b28', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/BstynuNkDedx1HBKgMgD35zimrpyRTGpACkBRpdk.png', 'about-2.png', 'Sample 2');
INSERT INTO `company_product_files` VALUES ('98923e91-b496-4afd-b8e8-ed54e826df5e', '2022-04-01 12:56:13', '2022-04-01 12:56:13', '4406674b-edc1-4bf5-a8e1-69899e5f3b28', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/7WA8rYasSaQi8DzxUIRBGKvGluvuQsH4PFs3brki.jpg', 'face1.jpg', 'Sample 3 delete 1');

-- ----------------------------
-- Table structure for company_product_helpdesk
-- ----------------------------
DROP TABLE IF EXISTS `company_product_helpdesk`;
CREATE TABLE `company_product_helpdesk`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `helpdesk_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_product_helpdesk_company_product_id_foreign`(`company_product_id` ASC) USING BTREE,
  INDEX `company_product_helpdesk_helpdesk_id_foreign`(`helpdesk_id` ASC) USING BTREE,
  CONSTRAINT `company_product_helpdesk_company_product_id_foreign` FOREIGN KEY (`company_product_id`) REFERENCES `company_product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_product_helpdesk_helpdesk_id_foreign` FOREIGN KEY (`helpdesk_id`) REFERENCES `help_desk_category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_product_helpdesk
-- ----------------------------
INSERT INTO `company_product_helpdesk` VALUES ('02bacdc6-8772-439d-ae8c-7e14d3cd32b6', '2022-03-24 09:55:25', '2022-03-24 09:55:25', 'da8a9d1a-ac6a-46f5-9410-33d951f9c0a1', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_product_helpdesk` VALUES ('02c170e4-eed0-47e8-9a0d-d84a24c53111', '2022-03-22 17:50:29', '2022-03-22 17:50:29', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_product_helpdesk` VALUES ('3bcf3af6-237a-45ff-abd6-2fbd1dc0e570', '2022-03-22 17:45:47', '2022-03-22 17:45:47', '611943ee-8590-480a-b9f0-43ab57fd2275', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_product_helpdesk` VALUES ('3f1ab5f0-e6a1-4993-9b81-b3a1ca8282bc', '2022-03-24 09:55:25', '2022-03-24 09:55:25', 'da8a9d1a-ac6a-46f5-9410-33d951f9c0a1', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `company_product_helpdesk` VALUES ('484a439d-21ae-4251-88d2-0b73116fe975', '2022-04-01 12:56:12', '2022-04-01 12:56:12', '4406674b-edc1-4bf5-a8e1-69899e5f3b28', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_product_helpdesk` VALUES ('48ee3609-447a-4877-9d15-03306cded275', '2022-03-22 17:50:29', '2022-03-22 17:50:29', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', '3665e044-b0a5-43a6-81c3-b8fb913090d2');
INSERT INTO `company_product_helpdesk` VALUES ('55993748-886d-4306-b2dc-bc81d695ea26', '2022-03-21 14:56:11', '2022-03-21 14:56:11', '9d281f0c-4f11-4844-80a3-fc3559a65940', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_product_helpdesk` VALUES ('5fbb6da6-a88a-4a87-bafa-77f5bf61e877', '2022-03-21 14:56:11', '2022-03-21 14:56:11', '9d281f0c-4f11-4844-80a3-fc3559a65940', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `company_product_helpdesk` VALUES ('6b18a343-7f0f-4040-bfb4-a6719b14f571', '2022-03-22 17:50:29', '2022-03-22 17:50:29', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_product_helpdesk` VALUES ('72ba038f-16ed-49c9-ac4e-60b8926af043', '2022-03-21 14:56:11', '2022-03-21 14:56:11', '9d281f0c-4f11-4844-80a3-fc3559a65940', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_product_helpdesk` VALUES ('834ce4d2-8d8f-49d0-8bd5-a12dfb6ac7c4', '2022-03-22 17:45:47', '2022-03-22 17:45:47', '611943ee-8590-480a-b9f0-43ab57fd2275', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_product_helpdesk` VALUES ('93f864e4-996a-4616-aa15-44ff87c09865', '2022-03-22 17:45:47', '2022-03-22 17:45:47', '611943ee-8590-480a-b9f0-43ab57fd2275', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_product_helpdesk` VALUES ('97ffc71a-03e4-4016-9a8d-2e17e342f402', '2022-03-24 09:55:25', '2022-03-24 09:55:25', 'da8a9d1a-ac6a-46f5-9410-33d951f9c0a1', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_product_helpdesk` VALUES ('9b07b425-6179-4c3c-8843-c31a3d7c6b56', '2022-03-22 17:50:29', '2022-03-22 17:50:29', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_product_helpdesk` VALUES ('a3eb03d5-3fc9-46bc-b10b-78e279e11faf', '2022-03-22 17:45:47', '2022-03-22 17:45:47', '611943ee-8590-480a-b9f0-43ab57fd2275', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `company_product_helpdesk` VALUES ('a53239aa-0781-4d2c-b1fd-2a9b877bfc4b', '2022-04-01 12:56:12', '2022-04-01 12:56:12', '4406674b-edc1-4bf5-a8e1-69899e5f3b28', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_product_helpdesk` VALUES ('aedb27f5-3217-4b12-9678-4e4392c39c0a', '2022-04-01 12:56:12', '2022-04-01 12:56:12', '4406674b-edc1-4bf5-a8e1-69899e5f3b28', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_product_helpdesk` VALUES ('def80af1-5015-4eec-a8e4-b4c7429cee30', '2022-03-22 17:50:29', '2022-03-22 17:50:29', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', '946bb411-2198-4bc6-ad7f-a8bd119b6f65');
INSERT INTO `company_product_helpdesk` VALUES ('fb3d76b8-3743-4fde-8da5-980e0bfbaefd', '2022-03-24 09:55:25', '2022-03-24 09:55:25', 'da8a9d1a-ac6a-46f5-9410-33d951f9c0a1', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');

-- ----------------------------
-- Table structure for company_users
-- ----------------------------
DROP TABLE IF EXISTS `company_users`;
CREATE TABLE `company_users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'active|non_active\r\n- limit user company\r\n- di apk data kosong jika non active',
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_to` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helpdesk_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `start_talking_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cu_ci_fk`(`company_id` ASC) USING BTREE,
  INDEX `cu_ui_fk`(`users_id` ASC) USING BTREE,
  CONSTRAINT `company_users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_users
-- ----------------------------
INSERT INTO `company_users` VALUES ('01729387-7eef-4684-a7ce-4c4cdf75281e', '2022-03-15 14:20:33', '2022-03-15 18:46:18', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '76c120b7-e46d-4a54-bc05-25b63a439234', '2022-03-15 14:20:33', 'active', 'Offline', NULL, 'Support, Teknisi, Information', NULL);
INSERT INTO `company_users` VALUES ('0ebf85c6-8089-4846-93f2-c52c220ec98f', '2022-03-15 15:35:44', '2022-03-15 15:35:44', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '21233230-7e59-42d6-8a2a-79cab24b89df', '2022-03-15 15:35:44', 'active', 'Offline', NULL, 'Information, Support', NULL);
INSERT INTO `company_users` VALUES ('29d45fa2-d81f-4cae-bdad-241754cabdd3', '2022-03-15 15:36:07', '2022-03-23 09:44:43', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '5b0679c9-4ffc-4d90-91bf-ee8132b0fe5e', '2022-03-15 15:36:07', 'active', 'Offline', 'b68cd91e-cdf1-4b25-8f19-de7281686def', 'Information, Product', NULL);
INSERT INTO `company_users` VALUES ('519354b4-96dc-4b2f-a8bb-9f88095df49a', '2022-03-15 09:46:34', '2022-03-18 12:47:27', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '13d8289c-7243-44c9-93ed-249ac8930830', '2022-03-15 09:46:34', 'active', 'Offline', 'b68cd91e-cdf1-4b25-8f19-de7281686def', 'Billing, Information, Support', NULL);
INSERT INTO `company_users` VALUES ('a99ef517-b71a-4add-96fb-fc874fcfb207', '2022-03-16 12:57:01', '2022-03-31 14:55:10', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', '2022-03-16 12:57:01', 'active', 'Break', 'b68cd91e-cdf1-4b25-8f19-de7281686def', 'Information, Complaint, Teknisi', '2022-03-22 17:36:48');
INSERT INTO `company_users` VALUES ('b68cd91e-cdf1-4b25-8f19-de7281686def', '2022-03-16 12:51:12', '2022-03-28 09:01:07', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', '2022-03-16 12:51:12', 'active', 'Online', NULL, 'Information, Teknisi, JoyBoy, Complaint', NULL);

-- ----------------------------
-- Table structure for company_users_deleted
-- ----------------------------
DROP TABLE IF EXISTS `company_users_deleted`;
CREATE TABLE `company_users_deleted`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `helpdesk_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_users_deleted_company_id_foreign`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_users_deleted_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_users_deleted
-- ----------------------------
INSERT INTO `company_users_deleted` VALUES ('223c8b1a-86ca-4dd5-9a90-f0cdd5dc2870', '2022-03-16 12:56:42', '2022-03-16 12:56:42', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face21.jpg', 'Monte Zemlak IV', 'vnitzsche@example.org', '085747585360', 'agent', '2022-03-16 12:56:42', 'Teknisi, Complaint, Information', 'haya');
INSERT INTO `company_users_deleted` VALUES ('38c6cbb6-374c-4aa8-a48d-09fc9b771dc5', '2022-03-16 12:50:46', '2022-03-16 12:50:46', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Ms. Katheryn Hill MD', 'edmund.paucek@example.net', '085747584097', 'spv', '2022-03-16 12:50:46', 'Support, Information', 'delete ya');
INSERT INTO `company_users_deleted` VALUES ('429a56fb-2765-4851-aae8-4368021ebf36', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Ms. Herminia Simonis I', 'whomenick@example.net', '085747586160', 'agent', '2022-03-16 10:20:37', 'Support, Complaint, Billing, Information', 'dsdsd');
INSERT INTO `company_users_deleted` VALUES ('55f1d675-3419-4795-b92d-600342ce05a5', '2022-03-16 12:49:03', '2022-03-16 12:49:03', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face21.jpg', 'Mr. Rollin Streich', 'bo.goodwin@example.net', '085747583739', 'agent', '2022-03-16 12:49:03', 'Information', 'dd');
INSERT INTO `company_users_deleted` VALUES ('606a5cb2-9675-452d-b85a-6c9a16e3d313', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face21.jpg', 'Prof. Myra Batz PhD', 'krajcik.jorge@example.net', '085747589396', 'spv', '2022-03-16 10:20:37', 'Information', 'dsadsa');
INSERT INTO `company_users_deleted` VALUES ('7773e080-056c-4618-9962-ec221b009570', '2022-03-15 15:24:42', '2022-03-15 15:24:42', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Dr. Ezra Shanahan III', 'ulangosh@example.net', '085747582461', 'spv', '2022-03-15 15:24:42', 'Support, Information, Complaint, Billing', 'sample delete user');
INSERT INTO `company_users_deleted` VALUES ('85bad7ff-f462-4835-b05e-2bab4e8ec886', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Miss Erika Schiller II', 'ghessel@example.org', '085747585827', 'agent', '2022-03-16 10:20:37', 'Information, Support, Product, Complaint', 'asdas');
INSERT INTO `company_users_deleted` VALUES ('89b66e2d-e6e2-42e0-9f70-b394a1e8e08c', '2022-03-16 12:47:23', '2022-03-16 12:47:23', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face21.jpg', 'Fabian Herman', 'shilpert@example.com', '085747584498', 'agent', '2022-03-16 12:47:23', 'Information', 'sample cuy');
INSERT INTO `company_users_deleted` VALUES ('a560c644-b5f5-4fb4-bc4e-bd8355848f9f', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Burley Hirthe', 'qhickle@example.org', '085747587121', 'agent', '2022-03-16 10:20:37', 'Teknisi, Information, Complaint', 'asda');
INSERT INTO `company_users_deleted` VALUES ('aeefa852-5fd9-4a3d-9c7f-c5897eaf21a1', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Tia Satterfield', 'deangelo.turcotte@example.com', '085747586942', 'spv', '2022-03-16 10:20:37', 'Information, Support, Complaint, Teknisi', 'adasd');
INSERT INTO `company_users_deleted` VALUES ('e5e5679c-2e90-4371-9384-5f4ff50d3889', '2022-03-16 10:20:37', '2022-03-16 10:20:37', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '/storage/uploads/face23.jpg', 'Ross Dare', 'feest.leilani@example.com', '085747585383', 'spv', '2022-03-16 10:20:37', 'Teknisi, Information', 'adsds');

-- ----------------------------
-- Table structure for company_users_helpdesk
-- ----------------------------
DROP TABLE IF EXISTS `company_users_helpdesk`;
CREATE TABLE `company_users_helpdesk`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `helpdesk_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cuh_c_id_fk`(`company_id` ASC) USING BTREE,
  INDEX `cuh_us_fk`(`users_id` ASC) USING BTREE,
  INDEX `cuh_hc_fk`(`helpdesk_id` ASC) USING BTREE,
  INDEX `cuh_cu_fk`(`company_users_id` ASC) USING BTREE,
  CONSTRAINT `company_users_helpdesk_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_users_helpdesk_company_users_id_foreign` FOREIGN KEY (`company_users_id`) REFERENCES `company_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_users_helpdesk_helpdesk_id_foreign` FOREIGN KEY (`helpdesk_id`) REFERENCES `help_desk_category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_users_helpdesk_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_users_helpdesk
-- ----------------------------
INSERT INTO `company_users_helpdesk` VALUES ('14247e32-0a40-453e-b32b-836b996c756d', '2022-03-18 12:47:20', '2022-03-18 12:47:20', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '5b0679c9-4ffc-4d90-91bf-ee8132b0fe5e', '29d45fa2-d81f-4cae-bdad-241754cabdd3', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('1d4258b4-a503-4e31-8e22-313626918d17', '2022-03-15 14:20:33', '2022-03-15 14:20:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '76c120b7-e46d-4a54-bc05-25b63a439234', '01729387-7eef-4684-a7ce-4c4cdf75281e', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_users_helpdesk` VALUES ('24f9eda2-7931-4001-8010-5090ef6b7385', '2022-03-16 12:59:32', '2022-03-16 12:59:32', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', 'a99ef517-b71a-4add-96fb-fc874fcfb207', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('2ef1b453-9244-4147-9848-d29b8224374c', '2022-03-18 12:47:27', '2022-03-18 12:47:27', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '13d8289c-7243-44c9-93ed-249ac8930830', '519354b4-96dc-4b2f-a8bb-9f88095df49a', '02304daa-ebe9-40ae-8321-59630e366fd8');
INSERT INTO `company_users_helpdesk` VALUES ('46cd8424-31e3-4f0c-9378-d0d9b4a275b9', '2022-03-18 12:47:27', '2022-03-18 12:47:27', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '13d8289c-7243-44c9-93ed-249ac8930830', '519354b4-96dc-4b2f-a8bb-9f88095df49a', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('6267b174-5c64-4733-af77-193a6c33b15c', '2022-03-15 15:35:44', '2022-03-15 15:35:44', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '21233230-7e59-42d6-8a2a-79cab24b89df', '0ebf85c6-8089-4846-93f2-c52c220ec98f', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('6847836c-606a-438e-a58c-ca7877322e1b', '2022-03-16 12:51:12', '2022-03-16 12:51:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'b68cd91e-cdf1-4b25-8f19-de7281686def', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('80779e32-a163-489a-906a-477ce96917fe', '2022-03-15 14:20:33', '2022-03-15 14:20:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '76c120b7-e46d-4a54-bc05-25b63a439234', '01729387-7eef-4684-a7ce-4c4cdf75281e', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_users_helpdesk` VALUES ('82cb887e-d4f4-48b4-b094-a0a4e857b709', '2022-03-18 12:47:20', '2022-03-18 12:47:20', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '5b0679c9-4ffc-4d90-91bf-ee8132b0fe5e', '29d45fa2-d81f-4cae-bdad-241754cabdd3', '946bb411-2198-4bc6-ad7f-a8bd119b6f65');
INSERT INTO `company_users_helpdesk` VALUES ('a9af9e36-9d53-4658-a21c-0c997e78e0b3', '2022-03-16 12:51:12', '2022-03-16 12:51:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'b68cd91e-cdf1-4b25-8f19-de7281686def', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');
INSERT INTO `company_users_helpdesk` VALUES ('b2cd42aa-7bcb-429c-b94c-9bbb67545010', '2022-03-15 15:35:44', '2022-03-15 15:35:44', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '21233230-7e59-42d6-8a2a-79cab24b89df', '0ebf85c6-8089-4846-93f2-c52c220ec98f', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_users_helpdesk` VALUES ('c8860e40-e666-4e69-91e5-0b13c6e63c6d', '2022-03-16 12:51:12', '2022-03-16 12:51:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'b68cd91e-cdf1-4b25-8f19-de7281686def', '3665e044-b0a5-43a6-81c3-b8fb913090d2');
INSERT INTO `company_users_helpdesk` VALUES ('df475ca9-3edb-4048-a7e0-c59cc6d002a2', '2022-03-15 14:20:33', '2022-03-15 14:20:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '76c120b7-e46d-4a54-bc05-25b63a439234', '01729387-7eef-4684-a7ce-4c4cdf75281e', '5eaba3b4-a1ab-11ec-a73f-e8f4089635a6');
INSERT INTO `company_users_helpdesk` VALUES ('e1ff28c8-c14f-465b-9190-20ccd461fb98', '2022-03-18 12:47:27', '2022-03-18 12:47:27', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '13d8289c-7243-44c9-93ed-249ac8930830', '519354b4-96dc-4b2f-a8bb-9f88095df49a', 'dd6e2005-ba86-4618-8231-4a6e9d42b290');
INSERT INTO `company_users_helpdesk` VALUES ('f129a049-401d-4732-b9c7-f6d684d2d59b', '2022-03-16 12:59:32', '2022-03-16 12:59:32', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', 'a99ef517-b71a-4add-96fb-fc874fcfb207', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `company_users_helpdesk` VALUES ('f856a178-d148-45d8-b445-3db064ee3d75', '2022-03-16 12:51:12', '2022-03-16 12:51:12', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'b68cd91e-cdf1-4b25-8f19-de7281686def', 'd802fcdf-867a-4b75-99c5-81d0140d77c9');
INSERT INTO `company_users_helpdesk` VALUES ('fdc2d800-199d-4f8d-a40f-6b4bc60a9e4a', '2022-03-16 12:59:32', '2022-03-16 12:59:32', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', 'a99ef517-b71a-4add-96fb-fc874fcfb207', '99ac17f8-dbf2-44d6-bfe6-13a57b46524f');

-- ----------------------------
-- Table structure for company_users_logs
-- ----------------------------
DROP TABLE IF EXISTS `company_users_logs`;
CREATE TABLE `company_users_logs`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_users_logs_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `company_users_logs_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `company_users_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `company_users_logs_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_users_logs
-- ----------------------------
INSERT INTO `company_users_logs` VALUES ('0668a9f0-4aa9-413d-820c-feed94dcb35d', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', '2022-03-15 19:30:16', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('073fefcf-9fce-4564-b4ce-1ee69c619e2a', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'b7d0643a-8b76-46e5-89cf-f893d8a67593', '2022-03-16 10:20:37', 'Exit', 'dsdsd');
INSERT INTO `company_users_logs` VALUES ('099d2ad1-3fbb-4132-b9d8-1f935fc8266e', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f6208523-74ae-4fa2-9e23-1e9e0baa2f3f', '2022-03-16 10:20:37', 'Exit', 'asda');
INSERT INTO `company_users_logs` VALUES ('09fa9e91-26e6-4873-8d54-c53cee98552c', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '640f65fa-8524-4b85-8b09-9d922985d9c3', '2022-03-16 10:20:37', 'Exit', 'dsadsa');
INSERT INTO `company_users_logs` VALUES ('15b2ca65-30d1-4cd8-b250-f684438ab534', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '39c054ab-c8d5-4ad1-9e39-398c961f223d', '2022-03-16 10:20:37', 'Exit', 'adsds');
INSERT INTO `company_users_logs` VALUES ('17842fb5-a825-4265-bf24-137a64ba337b', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '94f03163-e817-4521-abec-115ddd01058e', '2022-03-16 10:20:37', 'Exit', 'asdas');
INSERT INTO `company_users_logs` VALUES ('4e329a1a-6077-4b8c-9b08-adf9ae7b437f', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '5b0679c9-4ffc-4d90-91bf-ee8132b0fe5e', '2022-03-15 15:36:07', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('c62c4ccb-dd33-43a3-b116-fb0d6f120175', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '21233230-7e59-42d6-8a2a-79cab24b89df', '2022-03-15 15:35:44', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('c942b8c6-881c-489e-951d-1fcf746b55bd', '2022-03-16 12:57:01', '2022-03-16 12:57:01', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', '2022-03-16 12:57:01', 'Join Date', NULL);
INSERT INTO `company_users_logs` VALUES ('cddfdb5c-c9cb-4f85-9e15-3cb43339e15e', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '13d8289c-7243-44c9-93ed-249ac8930830', '2022-03-15 09:46:34', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('d0289d79-8119-4934-8056-077993fb2259', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '76c120b7-e46d-4a54-bc05-25b63a439234', '2022-03-15 14:20:33', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('d4b3a770-e2e6-4286-b62c-05817d193341', '2022-03-16 11:47:52', '2022-03-16 11:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', '2022-03-15 09:24:32', 'Join Date', '-');
INSERT INTO `company_users_logs` VALUES ('e87c6fc4-2ecd-4c0b-a78b-3217d53e0548', '2022-03-16 12:56:42', '2022-03-16 12:56:42', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '78bf287a-9205-45d3-b519-e7bada97c272', '2022-03-16 12:56:42', 'Exit', 'haya');
INSERT INTO `company_users_logs` VALUES ('fc5a9d27-925d-4485-8c60-6a62d3b5afc3', '2022-03-16 11:49:33', '2022-03-16 11:49:33', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '0e1335bb-57ba-49b8-b40f-28273e77b5bc', '2022-03-16 10:20:37', 'Exit', 'adasd');

-- ----------------------------
-- Table structure for customer_detail
-- ----------------------------
DROP TABLE IF EXISTS `customer_detail`;
CREATE TABLE `customer_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hide_search` tinyint(1) NOT NULL DEFAULT 0,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `birthday` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_detail_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `customer_detail_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_detail
-- ----------------------------
INSERT INTO `customer_detail` VALUES ('1185fed9-e4c8-467b-99a1-02f546c88cda', '2022-03-30 10:09:36', '2022-03-30 10:16:38', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875', 'Lorem Lorem Lorem<br>work at <a class=\'username_tag\' href=\'@axa\'>@axa</a> 2017-2018<br>doctor <a class=\'username_tag\' href=\'@RS_Yadika\'>@RS_Yadika</a><br>mahasiswa <a class=\'username_tag\' href=\'@univ_\'>@univ_</a>', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('all','ba','spv','agent','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES ('09f59538-3675-4cf4-bd76-85ba67bc9e7d', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Quos molestias nam laborum unde ut. Omnis et nostrum libero repudiandae eos aspernatur. Cupiditate id vero in error cumque.', 'Et voluptatum tenetur impedit inventore voluptatibus ipsam. Nobis aperiam quos laboriosam aut et et beatae. Temporibus et sequi et itaque iste non.', 'spv');
INSERT INTO `faq` VALUES ('0d2fad75-e8fb-452b-9ff1-f657c59d7024', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Maxime odit voluptate non. Est consectetur perspiciatis ratione in. Qui doloribus et quisquam harum. Necessitatibus cum non nobis est aliquam dolor eum necessitatibus.', 'Natus debitis alias cupiditate tenetur dicta doloribus. Molestias deserunt ipsum laborum et harum distinctio aut assumenda. Omnis et non temporibus placeat et.', 'agent');
INSERT INTO `faq` VALUES ('1205ee38-d978-4b80-b6d3-654f62287b57', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Quam porro eveniet quis id veniam ad. Sint vel odio quia veritatis vitae recusandae et. Quo voluptas assumenda non recusandae ut.', 'Consequatur dolorum nulla omnis. Et dolor est sunt non nihil similique. Porro vero eius officia vel et. In et dolore quam eum.', 'spv');
INSERT INTO `faq` VALUES ('156f3050-e528-4dbf-803e-c03cb9fdb859', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Qui distinctio magni quod sunt vel quo. Officiis beatae voluptatem ut quam soluta deserunt. Officiis quia aut placeat eius perferendis. Eos iste ut deserunt officia quia dolore eos ut.', 'Eum similique et quasi voluptatem vitae. Fugit doloremque porro dolorum autem. Non modi quia inventore occaecati nam. Eos placeat nihil cumque veritatis esse et.', 'all');
INSERT INTO `faq` VALUES ('1eaf416b-8590-4db7-bd40-9187301ad078', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Aspernatur sunt est omnis laboriosam. Libero laudantium repellat amet ipsam est. Deleniti vitae quam occaecati pariatur. Aut enim tempora dolorem in quo temporibus maxime.', 'Non tenetur ut ut harum quia consequatur consequatur. Alias est molestias molestiae corrupti. Porro iure similique non sunt et ad rerum. Fugiat corporis dolor doloremque voluptatum unde quos.', 'ba');
INSERT INTO `faq` VALUES ('273f222f-0d57-4d53-8dfb-ed8e3506d32c', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Quo repellendus qui et nam molestiae. Totam nesciunt voluptate id voluptatum porro in aut. Corrupti dignissimos totam quibusdam laboriosam sed fugit doloremque. Amet ut expedita repudiandae.', 'Quod rem ea nulla molestiae esse sunt. Suscipit culpa dolores veniam sequi sit qui. Similique distinctio aut qui quas et repellendus. Corporis iusto rerum velit exercitationem nihil rerum.', 'spv');
INSERT INTO `faq` VALUES ('316ad493-6532-49f4-9159-cb173371d37a', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Et qui dolores qui commodi nemo dicta. Molestiae consequuntur et qui. Eum eveniet consequatur consequatur voluptate maxime.', 'Ullam nobis reiciendis ullam doloribus soluta eligendi quae. Inventore optio voluptas soluta dignissimos est facilis. Natus eum sint repellendus quia voluptatum velit veritatis voluptate.', 'agent');
INSERT INTO `faq` VALUES ('34814bf6-8027-463c-9c32-548bb3172c17', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Non qui unde modi est praesentium nihil quia natus. Qui sunt tenetur tenetur nesciunt repellendus ad quod et. Quia voluptatem saepe itaque inventore laborum.', 'Quia dolore et dolore qui sed qui. Voluptatibus est voluptatem omnis. Et voluptatem eos sit voluptate. Occaecati quis voluptas esse doloribus ipsum velit corrupti suscipit.', 'agent');
INSERT INTO `faq` VALUES ('445c9f5f-de31-4c73-89bc-73c113b556b5', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Occaecati quo nostrum ea dolores et rerum. Optio adipisci temporibus sed aliquam amet. Ut molestiae est id quos facere id tenetur. Iusto et sunt optio.', 'Numquam aut ullam a officia atque. Perferendis voluptates quis aut nihil et. Et et ab totam quia non unde tempore.', 'agent');
INSERT INTO `faq` VALUES ('5700ad85-9136-412d-8ac3-b1eb1bcf695f', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Nulla temporibus qui voluptatem quo dolorem. Aut qui at aut. A deleniti illo sed.', 'Molestiae ipsum quibusdam velit est aliquam porro magnam est. Accusamus pariatur eligendi quas perferendis non atque molestias. Quibusdam rerum reprehenderit natus asperiores pariatur.', 'agent');
INSERT INTO `faq` VALUES ('6b7d0ecd-fe74-44f2-899e-05a5051a0c3d', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Maxime dolore quisquam quibusdam. Id quod maiores nihil laborum odio maiores.', 'Quasi velit expedita necessitatibus incidunt laudantium debitis. Eum dolores eligendi qui voluptatem enim sed excepturi quis.', 'agent');
INSERT INTO `faq` VALUES ('820d1330-cdf9-4f9c-9b0e-5d30c618dfa6', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Aperiam recusandae soluta ex perspiciatis eligendi. Nemo quibusdam voluptatem sed velit ut perferendis id. Et culpa facere est unde recusandae dicta qui.', 'Modi voluptatem iste dignissimos culpa nisi et. Tempora dolorem nulla occaecati eos aliquid veniam soluta. Non ut est quis sit.', 'customer');
INSERT INTO `faq` VALUES ('92b2888d-c49b-4063-83da-657b4132b9af', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Et saepe totam nulla temporibus. Dolore numquam magni sed corrupti eligendi blanditiis ea. Qui corporis est magnam ut voluptatem temporibus magnam repellat. Fugiat facere eum labore cum aut.', 'Esse molestiae esse magni sint. Sed corrupti et quaerat quia sed in unde. Fugiat doloremque facilis aut fugit blanditiis sit.', 'agent');
INSERT INTO `faq` VALUES ('985664ad-5bbd-43ae-8c5c-6f924603d611', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Numquam occaecati non veniam qui laborum. Excepturi omnis accusantium harum veniam totam cum. Labore vero saepe harum fugit impedit.', 'Quae est est quia adipisci eaque eligendi impedit. Ab provident nemo sit saepe consequatur. Eveniet quae a rerum quis praesentium. Blanditiis voluptatibus possimus a rerum commodi vitae sint.', 'ba');
INSERT INTO `faq` VALUES ('9cb024c3-9189-40be-8c57-13f09c05b128', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Quaerat provident quae ipsam sunt et. Ut dignissimos facilis ducimus sit. Quam non fuga eaque saepe.', 'Et et quae ut provident. Aliquam molestiae sit iure aut exercitationem est voluptatem. Non voluptatem unde qui magnam quod est iste. Vero aspernatur nihil nihil voluptatum illo neque rerum.', 'spv');
INSERT INTO `faq` VALUES ('a2086044-a3b8-4433-9b17-1c2ebaedc3a7', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Fuga saepe sequi nesciunt necessitatibus. Qui autem sed repellendus. Voluptates in voluptates doloremque maxime. Veniam debitis dicta omnis voluptate quia eos.', 'Vero in maiores eveniet nemo. Soluta neque ut dolore molestias. Minus sit ab rerum.', 'all');
INSERT INTO `faq` VALUES ('abddda0d-70bf-477b-838d-3ee11959c5f0', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Recusandae tempore eius voluptatum. Delectus ullam id non omnis quo.', 'Molestiae deserunt dolorem aut accusamus. Beatae esse velit rerum animi ut amet. Quas sapiente perferendis repellat distinctio vero. Deserunt et aspernatur dignissimos aut.', 'customer');
INSERT INTO `faq` VALUES ('aeeefc85-b08b-4589-99b8-c460412706cd', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Suscipit pariatur qui ex fugiat libero consequatur blanditiis dolor. Dicta et voluptatem error explicabo cum cumque. Incidunt minus animi illum quo expedita velit.', 'Rerum in natus temporibus nulla eveniet et. Soluta soluta qui unde. Recusandae quia qui magnam. Eius id rerum nostrum velit inventore quisquam. Blanditiis ad saepe laboriosam facere.', 'spv');
INSERT INTO `faq` VALUES ('bcfe01d6-6d51-4605-8fe5-2c5f752c5fab', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Pariatur et magni qui omnis consectetur dolorum. Doloribus ipsa totam nostrum numquam. Rerum ea qui error est.', 'Autem voluptas earum nemo architecto. Eum atque harum est perspiciatis. Veritatis officia libero sit alias est dicta.', 'all');
INSERT INTO `faq` VALUES ('d3d74557-2378-4686-9bec-0b03848943c2', '2022-03-16 13:42:04', '2022-03-16 13:42:04', 'Occaecati minus quam quaerat sunt id aut. Molestiae vel veniam accusamus temporibus autem nihil eum. Veniam quod ut nulla voluptates debitis ut cumque inventore.', 'Blanditiis accusantium sit ex occaecati ut ut hic eius. Fuga voluptatem voluptates ipsum iure voluptatem quos. Et necessitatibus aut sint iure. Dolorum nulla tempora accusantium recusandae est.', 'ba');

-- ----------------------------
-- Table structure for favorit_product
-- ----------------------------
DROP TABLE IF EXISTS `favorit_product`;
CREATE TABLE `favorit_product`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `favorit_product_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `favorit_product_company_product_id_foreign`(`company_product_id` ASC) USING BTREE,
  INDEX `favorit_product_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `favorit_product_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `favorit_product_company_product_id_foreign` FOREIGN KEY (`company_product_id`) REFERENCES `company_product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `favorit_product_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorit_product
-- ----------------------------
INSERT INTO `favorit_product` VALUES ('0050e776-e508-441e-a243-e8225501eaad', '2022-03-31 08:57:05', '2022-03-31 08:57:05', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'd6bb1c9f-221b-4030-af52-9cca1a0a7928', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875');
INSERT INTO `favorit_product` VALUES ('b3404ff2-dfd1-4a9a-9f5a-2f480614eac5', '2022-03-31 08:57:15', '2022-03-31 08:57:15', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '611943ee-8590-480a-b9f0-43ab57fd2275', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875');

-- ----------------------------
-- Table structure for following
-- ----------------------------
DROP TABLE IF EXISTS `following`;
CREATE TABLE `following`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `following_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `following_users_id_foreign`(`users_id` ASC) USING BTREE,
  CONSTRAINT `following_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `following_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of following
-- ----------------------------
INSERT INTO `following` VALUES ('4694da1d-6155-460e-9e74-8b6b33bb2109', '2022-03-30 16:41:23', '2022-03-30 16:41:23', 'a3f08efb-95cf-429d-a435-606de66fe68d', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875');
INSERT INTO `following` VALUES ('555f08d9-f857-4c80-acf7-6bec53a1db2c', '2022-03-30 16:49:48', '2022-03-30 16:49:48', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', '8a9202e0-1bab-4f3d-9a55-ad1f83b9f875');

-- ----------------------------
-- Table structure for help_desk_category
-- ----------------------------
DROP TABLE IF EXISTS `help_desk_category`;
CREATE TABLE `help_desk_category`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hdc_ci_fk`(`company_id` ASC) USING BTREE,
  CONSTRAINT `help_desk_category_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of help_desk_category
-- ----------------------------
INSERT INTO `help_desk_category` VALUES ('02304daa-ebe9-40ae-8321-59630e366fd8', '2022-03-12 10:01:58', '2022-03-12 10:01:58', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Billing');
INSERT INTO `help_desk_category` VALUES ('100a2489-190c-4471-ad1c-17a9ac708505', '2022-03-14 09:43:20', '2022-03-14 09:43:20', 'd0d9a6f8-0c87-4b63-b3b4-c7cf566000c3', 'Information');
INSERT INTO `help_desk_category` VALUES ('3665e044-b0a5-43a6-81c3-b8fb913090d2', '2022-03-12 10:08:14', '2022-03-12 10:09:20', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'JoyBoy');
INSERT INTO `help_desk_category` VALUES ('39c56d60-397c-4153-87fe-0162c3ecf254', '2022-03-12 15:15:58', '2022-03-12 15:15:58', 'a3f08efb-95cf-429d-a435-606de66fe68d', 'Information');
INSERT INTO `help_desk_category` VALUES ('5eaba3b4-a1ab-11ec-a73f-e8f4089635a6', '2022-03-12 09:23:14', '2022-03-12 09:23:14', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Information');
INSERT INTO `help_desk_category` VALUES ('8e7ae0b7-5624-4bff-a481-6c06fa33d575', '2022-03-14 08:38:38', '2022-03-14 08:38:38', 'c678b4f4-f495-444d-8e88-3c95bfab36b7', 'Information');
INSERT INTO `help_desk_category` VALUES ('946bb411-2198-4bc6-ad7f-a8bd119b6f65', '2022-03-12 10:02:04', '2022-03-12 10:02:04', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Product');
INSERT INTO `help_desk_category` VALUES ('99ac17f8-dbf2-44d6-bfe6-13a57b46524f', '2022-03-15 09:47:52', '2022-03-15 09:47:52', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Teknisi');
INSERT INTO `help_desk_category` VALUES ('d802fcdf-867a-4b75-99c5-81d0140d77c9', '2022-03-12 10:02:08', '2022-03-12 10:02:08', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Complaint');
INSERT INTO `help_desk_category` VALUES ('dd6e2005-ba86-4618-8231-4a6e9d42b290', '2022-03-15 08:36:45', '2022-03-15 08:36:45', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'Support');
INSERT INTO `help_desk_category` VALUES ('fd1a7a1d-c305-4ad4-a53d-bc9ab6a3779d', '2022-03-21 13:40:47', '2022-03-21 13:40:47', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'sds');

-- ----------------------------
-- Table structure for lpage_content
-- ----------------------------
DROP TABLE IF EXISTS `lpage_content`;
CREATE TABLE `lpage_content`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `header_customer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `header_corporate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `footer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lpage_content
-- ----------------------------
INSERT INTO `lpage_content` VALUES ('9df1db50-6250-4132-b4d1-11313970f236', '{\"title\":\"Dapatkan Kemudahan Layanan Call Center Dalam Satu Aplikasi\",\"desc\":\"<h1>Dapatkan Kemudahan Layanan <span style=\\\"color: #f1c40f;\\\">Call Center<\\/span> Dalam&nbsp;<span style=\\\"color: #000000;\\\">Satu Aplikasi<\\/span><\\/h1>\\n<p>Satu aplikasi dengan banyak kemudahan untuk mendapatkan informasi yang Anda butuhkan.<\\/p>\\n<p>Kami telah berkecimpung di industri ini selama lebih dari 14 tahun.<\\/p>\"}', NULL, '{\"desc\":\"Yelow adalah aplikasi yang digunakan oleh sebuah perusahaan sebagai point of contact sekaligus sebagai call center untuk kebutuhan berinteraksi dengan pelanggan mereka.\",\"phone\":\"02157908001\",\"fax\":\"02157908000\",\"phone_number\":\"081318002000\",\"email\":\"info@haloyelow.com\",\"address\":\"6th Floor Suite 601 \\u2013 602 Jl. HR. Rasuna Said Kav.62 Jakarta Selatan 12920\",\"url_ig\":\"#\",\"url_fb\":\"#\",\"url_youtube\":\"#\",\"url_twitter\":\"#\",\"url_tiktok\":\"#\"}', '2022-04-26 04:40:02', 'administrator', '2022-04-28 04:20:33', 'administrator', NULL, NULL);

-- ----------------------------
-- Table structure for lpage_feature
-- ----------------------------
DROP TABLE IF EXISTS `lpage_feature`;
CREATE TABLE `lpage_feature`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_order` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lpage_feature
-- ----------------------------
INSERT INTO `lpage_feature` VALUES ('1a3928b6-1164-4c33-be7a-aab4578f51f0', 'TIdak perlu menunggu', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups', 4, '2022-04-28 04:15:37', 'administrator', NULL, NULL, NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119331.png');
INSERT INTO `lpage_feature` VALUES ('25fd5b7b-e525-4a39-a626-b929bad0f271', 'Mudah mencari produk dan lakukan pembayaran', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups', 5, '2022-04-28 04:16:15', 'administrator', NULL, NULL, NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119371.png');
INSERT INTO `lpage_feature` VALUES ('45f1c408-368e-4dfc-9910-735178e9b886', 'Berbagi lokasi', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups', 6, '2022-04-28 04:18:21', 'administrator', NULL, NULL, NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119497.png');
INSERT INTO `lpage_feature` VALUES ('cc3097a2-22b1-4db6-b44f-5ae3b1f6a2b0', 'Panggilan Telepon', 'Melakukan panggilan bebas pulsa menggunakan jaringan data', 1, '2022-04-26 02:20:25', 'administrator', '2022-04-28 04:12:37', 'administrator', NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119154.png');
INSERT INTO `lpage_feature` VALUES ('e09e14b3-a3ae-413a-bf83-ec1381cdb69d', 'Dapat diakses di mana saja', 'Tes', 2, '2022-04-27 03:03:16', 'administrator', '2022-04-28 04:12:58', 'administrator', NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119175.png');
INSERT INTO `lpage_feature` VALUES ('fe65f8f0-bf8f-4ad0-9e21-94363e7a6a0d', 'Mudah dicari', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups', 3, '2022-04-28 04:15:10', 'administrator', NULL, NULL, NULL, NULL, 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/1651119282.png');

-- ----------------------------
-- Table structure for lpage_menu
-- ----------------------------
DROP TABLE IF EXISTS `lpage_menu`;
CREATE TABLE `lpage_menu`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_order` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lpage_menu
-- ----------------------------

-- ----------------------------
-- Table structure for main_package
-- ----------------------------
DROP TABLE IF EXISTS `main_package`;
CREATE TABLE `main_package`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_days` int NOT NULL,
  `admin_login_limit` int NULL DEFAULT NULL,
  `online_account_limit` int NULL DEFAULT NULL,
  `user_limit` int NULL DEFAULT NULL,
  `call_cost_recorded` int NULL DEFAULT NULL,
  `call_cost_not_recorded` int NULL DEFAULT NULL,
  `limit_participant` int NULL DEFAULT NULL,
  `information_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` int NOT NULL,
  `discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT 1,
  `sorting` int NOT NULL,
  `start_discount` date NULL DEFAULT NULL,
  `end_discount` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_package
-- ----------------------------
INSERT INTO `main_package` VALUES ('1fb1eeec-0142-4a6f-993e-5ec3038135fe', '2022-03-08 11:21:44', '2022-04-08 07:48:53', 'in_app_call', 'Basic', 30, NULL, NULL, NULL, 10, 20, 1000, NULL, 280000, NULL, '[\"Expiry Date : 30 days from payment\",\"100,000 seconds per month (WITHOUT recording) OR  66,000 seconds per month (WITH recording)\",\"Global In-App Inbound and Outbound Call\",\"Global In-App Live Audio Conference for up to 1,000 participants\"]', 1, 3, NULL, NULL);
INSERT INTO `main_package` VALUES ('86bf60d5-f05c-481b-a02c-4599bc8dd89a', '2022-03-08 11:21:44', '2022-03-22 08:13:22', 'in_app_call', 'Lite', 30, NULL, NULL, NULL, 3, 4, 1000, 'assets/img/dummy_package_info.png', 180000, NULL, '[\"Expiry Date : 30 days from payment\",\"100,000 seconds per month (WITHOUT recording) OR  66,000 seconds per month (WITH recording)\",\"Global In-App Inbound and Outbound Call\",\"Global In-App Live Audio Conference for up to 1,000 participants\"]', 1, 1, NULL, NULL);
INSERT INTO `main_package` VALUES ('cc749958-7f55-4ca3-8b63-e81261e650b2', '2022-03-08 11:21:44', '2022-04-08 08:54:56', 'in_app_call', 'Premium', 30, NULL, NULL, NULL, 20, 30, 500, '1649408087.png', 250000, NULL, '[\"Expiry Date : 30 days from payment\",\"100,000 seconds per month (WITHOUT recording) OR  66,000 seconds per month (WITH recording)\",\"Global In-App Inbound and Outbound Call\",\"Global In-App Live Audio Conference for up to 1,000 participants\"]', 1, 3, NULL, NULL);
INSERT INTO `main_package` VALUES ('d054a5f0-2203-4c49-9c2d-bebbf5609f64', '2022-03-08 11:21:44', '2022-03-08 15:25:31', 'help_desk', 'Premium', 30, 2, 4, 8, NULL, NULL, NULL, NULL, 599000, '2', '[\"Expiry Date : 30 days from payment\",\"1 Admin account\",\"2 Online accounts with 4 user IDs (combination of Supervisor and Help Desk)\",\"User Management\",\"Call Management\",\"Help Desk Performance Monitoring\",\"Product Template\",\"Basic CRM\",\"Integration to Payment Gateway\",\"In-App Chat\"]', 1, 2, NULL, NULL);
INSERT INTO `main_package` VALUES ('d85fb6fd-5984-4f13-82db-a5fe4613a3e5', '2022-03-08 11:21:44', '2022-04-08 09:00:39', 'help_desk', 'Lite', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 249000, NULL, '[\"Expiry Date : 30 days from payment\",\"1 Admin account\",\"2 Online accounts with 4 user IDs (combination of Supervisor and Help Desk)\",\"User Management\",\"Call Management\",\"Help Desk Performance Monitoring\",\"Product Template\",\"Basic CRM\",\"Integration to Payment Gateway\",\"In-App Chat\"]', 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_03_04_064852_create_company_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_03_04_172616_create_company_category_table', 2);
INSERT INTO `migrations` VALUES (8, '2022_03_04_172704_create_company_details_table', 3);
INSERT INTO `migrations` VALUES (9, '2022_03_06_131558_create_settings_table', 4);
INSERT INTO `migrations` VALUES (10, '2022_03_08_100303_create_payment_method_table', 5);
INSERT INTO `migrations` VALUES (11, '2022_03_08_110550_create_main_package_table', 6);
INSERT INTO `migrations` VALUES (12, '2022_03_08_115433_create_additional_package_table', 7);
INSERT INTO `migrations` VALUES (13, '2022_03_08_153627_create_package_order_table', 8);
INSERT INTO `migrations` VALUES (14, '2022_03_08_153741_create_company_billing_table', 8);
INSERT INTO `migrations` VALUES (15, '2022_03_10_121909_create_bank_table', 9);
INSERT INTO `migrations` VALUES (16, '2022_03_12_091639_create_help_desk_category_table', 10);
INSERT INTO `migrations` VALUES (17, '2022_03_14_102841_create_payment_callback_table', 11);
INSERT INTO `migrations` VALUES (19, '2022_03_14_150513_create_company_users_table', 12);
INSERT INTO `migrations` VALUES (20, '2022_03_15_084237_create_company_users_helpdesk_table', 12);
INSERT INTO `migrations` VALUES (21, '2022_03_15_144813_create_company_users_deleted_table', 13);
INSERT INTO `migrations` VALUES (22, '2022_03_16_114314_create_company_users_logs_table', 14);
INSERT INTO `migrations` VALUES (23, '2022_03_16_132916_create_faq_table', 15);
INSERT INTO `migrations` VALUES (24, '2022_03_16_133144_creta_dummy_faq_data', 16);
INSERT INTO `migrations` VALUES (25, '2022_03_17_103226_create_company_office_hour_table', 17);
INSERT INTO `migrations` VALUES (26, '2022_03_17_140757_create_company_holiday_dates_table', 18);
INSERT INTO `migrations` VALUES (27, '2022_03_18_130335_create_offline_category_table', 19);
INSERT INTO `migrations` VALUES (28, '2022_03_21_102653_create_company_product_table', 20);
INSERT INTO `migrations` VALUES (29, '2022_03_21_115818_create_company_product_helpdesk_table', 20);
INSERT INTO `migrations` VALUES (30, '2022_03_21_115901_create_company_product_files_table', 20);
INSERT INTO `migrations` VALUES (31, '2022_03_21_143929_create_banner_table', 21);
INSERT INTO `migrations` VALUES (32, '2022_03_22_154537_create_call_history_table', 21);
INSERT INTO `migrations` VALUES (33, '2022_03_23_121916_create_ticket_table', 22);
INSERT INTO `migrations` VALUES (34, '2022_03_23_124605_create_ticket_history_table', 22);
INSERT INTO `migrations` VALUES (35, '2022_03_23_124630_create_order_table', 22);
INSERT INTO `migrations` VALUES (36, '2022_03_23_124653_create_order_history_table', 22);
INSERT INTO `migrations` VALUES (37, '2022_03_23_132245_add_customer_id_ticket_table', 23);
INSERT INTO `migrations` VALUES (38, '2022_03_23_132705_add_call_id_ticket_history_table', 24);
INSERT INTO `migrations` VALUES (39, '2022_03_23_201233_add_company_id_order', 25);
INSERT INTO `migrations` VALUES (40, '2022_03_30_095407_create_customer_detail_table', 25);
INSERT INTO `migrations` VALUES (41, '2022_03_30_133828_create_favorit_product_table', 26);
INSERT INTO `migrations` VALUES (42, '2022_03_30_133912_create_following_table', 26);
INSERT INTO `migrations` VALUES (43, '2022_03_30_143028_create_rating_table', 27);
INSERT INTO `migrations` VALUES (44, '2022_03_31_121000_create_call_callback_helpdesk_table', 28);

-- ----------------------------
-- Table structure for offline_category
-- ----------------------------
DROP TABLE IF EXISTS `offline_category`;
CREATE TABLE `offline_category`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of offline_category
-- ----------------------------
INSERT INTO `offline_category` VALUES ('8cb5f334-a681-11ec-bb30-e8f4089635a6', '2022-03-18 13:06:18', '2022-03-18 13:06:18', 'Break');
INSERT INTO `offline_category` VALUES ('8cb60496-a681-11ec-bb30-e8f4089635a6', '2022-03-18 13:06:18', '2022-03-18 13:06:18', 'Pray');
INSERT INTO `offline_category` VALUES ('8cb60add-a681-11ec-bb30-e8f4089635a6', '2022-03-18 13:06:18', '2022-03-18 13:06:18', 'Toilet');
INSERT INTO `offline_category` VALUES ('8cb61123-a681-11ec-bb30-e8f4089635a6', '2022-03-18 13:06:18', '2022-03-18 13:06:18', 'Checking Data');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_history_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `fee` double NOT NULL,
  `total_amout` double NOT NULL,
  `payment_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('Pay','Paid','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_customer_id_foreign`(`customer_id` ASC) USING BTREE,
  INDEX `order_ticket_id_foreign`(`ticket_id` ASC) USING BTREE,
  INDEX `company_id_fk`(`company_id` ASC) USING BTREE,
  CONSTRAINT `company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('5eb2e0a0-45e1-4555-80b6-b692c89fedb2', '2022-03-23 17:24:37', '2022-03-23 20:15:22', 'f7903d79-5d5d-4395-904a-9fbde62e3389', '420f2f0b-1f7d-4250-9b63-664c8d48c743', '2a3eb7f8-8a64-40b2-9752-b82a84732f99', 'INV/AYO-KEU/23032022172437/UD/000001', 250000, 10000, 260000, NULL, NULL, NULL, 'Pay', '7a144eda-77bc-493b-acf2-7e6c7cfc3725');
INSERT INTO `orders` VALUES ('9ffe3f12-b9cb-4fca-ad21-c770a834fc03', '2022-03-25 13:51:50', '2022-03-25 13:51:50', 'f7903d79-5d5d-4395-904a-9fbde62e3389', 'b36f231c-db80-4a5a-8663-178dc5772fd7', '19bd06b7-15c9-451d-b028-373eadcb1aff', 'INV/BA-UA/25032022135150/BA-UA/000001', 250000, 10000, 260000, NULL, NULL, NULL, 'Pay', '7a144eda-77bc-493b-acf2-7e6c7cfc3725');

-- ----------------------------
-- Table structure for orders_history
-- ----------------------------
DROP TABLE IF EXISTS `orders_history`;
CREATE TABLE `orders_history`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_history_order_id_foreign`(`order_id` ASC) USING BTREE,
  CONSTRAINT `order_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_history
-- ----------------------------
INSERT INTO `orders_history` VALUES ('58c3e991-7f52-41d7-8f27-866815e390b2', '2022-03-23 17:24:37', '2022-03-23 17:24:37', '5eb2e0a0-45e1-4555-80b6-b692c89fedb2', 'Waiting For Payment', '2022-03-23 17:24:37');
INSERT INTO `orders_history` VALUES ('baba4269-eabf-45e6-89b9-50aec0d338dd', '2022-03-25 13:51:50', '2022-03-25 13:51:50', '9ffe3f12-b9cb-4fca-ad21-c770a834fc03', 'Waiting For Payment', '2022-03-25 13:51:50');

-- ----------------------------
-- Table structure for package_order
-- ----------------------------
DROP TABLE IF EXISTS `package_order`;
CREATE TABLE `package_order`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expired_at` timestamp NOT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pay_at` timestamp NULL DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `po_ci_fk`(`company_id` ASC) USING BTREE,
  CONSTRAINT `package_order_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of package_order
-- ----------------------------
INSERT INTO `package_order` VALUES ('13d5ba20-8f8e-4365-83e8-da9f06ee5a1a', '2022-03-22 08:36:08', '2022-03-22 08:44:04', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'https://checkout-staging.xendit.co/web/62392808ec1bf85d1d82ac93', 'XENDIT', '2022-03-23 08:36:08', 'INV/AYO-KEU/2203220836/BA/000001', 'Main Package', 'MANDIRI', 1028000, 'Paid', NULL, NULL, '{\"main_package\":{\"help_desk\":{\"type\":\"Premium\",\"price\":\"Rp 599.000,00\\/month\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 Online accounts with 8 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":599000,\"qty\":1},\"in_app_call\":{\"type\":\"Basic\",\"price\":\"Rp 280.000,00\",\"expired\":\"Apr 21, 2022\",\"description\":\"2 seconds call per month\",\"balance\":\"2 Seconds\",\"fix_price\":280000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"1 Online account = <b>Rp 99.000,00<\\/b>\",\"information\":\"1 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"1\"},\"in_app_call\":null},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Call Agent\"]},\"total_product\":\"Rp 1.028.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 1.028.000,00\",\"val\":1028000},\"admin_login_limit\":2,\"user_limit\":8,\"user_online_limit\":5,\"call_balance\":310000,\"call_cost\":2,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}');
INSERT INTO `package_order` VALUES ('48beee2b-9965-4457-b967-6ed063b0f9a6', '2022-03-28 11:42:10', '2022-03-28 11:42:10', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'https://checkout-staging.xendit.co/web/62413ca04c9bc5a0d6862158', 'XENDIT', '2022-03-29 11:42:09', 'INV/AYO-KEU/2803221142/BA/000002', 'Main Package', 'PERMATA', 648000, 'Unpaid', NULL, NULL, '{\"main_package\":{\"help_desk\":{\"type\":\"Lite\",\"price\":\"Rp 249.000,00\\/month\",\"expired\":\"Apr 27, 2022\",\"description\":\"2 Online accounts with 4 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":249000,\"qty\":1},\"in_app_call\":{\"type\":\"Lite\",\"price\":\"Rp 180.000,00\\/account\",\"expired\":\"Apr 27, 2022\",\"description\":\"3 seconds call per month\",\"balance\":\"3 Seconds\",\"fix_price\":180000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"1 Online account = <b>Rp 99.000,00<\\/b>\",\"information\":\"1 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"1\"},\"in_app_call\":{\"price\":\"Rp 250.000\",\"description\":\"Rp 250.000,00<\\/b>\",\"information\":\"3 seconds call per month\",\"balance\":\"3 Seconds\",\"fix_price\":\"250000\",\"qty\":1}},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Agent Activity\"]},\"total_product\":\"Rp 648.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 648.000,00\",\"val\":648000},\"admin_login_limit\":1,\"user_limit\":4,\"user_online_limit\":3,\"call_balance\":280000,\"call_cost\":3,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}');
INSERT INTO `package_order` VALUES ('5608ecff-9cbc-41ed-b366-c326da562c2c', '2022-03-28 10:17:51', '2022-03-28 10:18:16', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'https://checkout-staging.xendit.co/web/624128ddf6778ca901828e85', 'XENDIT', '2022-03-29 10:17:49', 'INV/AYO-KEU/2803221017/BA/000001', 'Main Package', 'PERMATA', 1287000, 'Paid', NULL, NULL, '{\"main_package\":{\"help_desk\":{\"type\":\"Premium\",\"price\":\"Rp 599.000,00\\/month\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 Online accounts with 8 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":599000,\"qty\":1},\"in_app_call\":{\"type\":\"Premium\",\"price\":\"Rp 380.000,00\\/account\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 seconds call per month\",\"balance\":\"4 Seconds\",\"fix_price\":380000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"2 Online account = <b>Rp 198.000,00<\\/b>\",\"information\":\"2 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"2\"},\"in_app_call\":{\"price\":\"Rp 30.000\",\"description\":\"2 x Rp 30.000  = <b> Rp 60.000,00<\\/b>\",\"information\":\"20 seconds call per month\",\"balance\":\"20 Seconds\",\"fix_price\":30000,\"qty\":\"2\"}},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Agent Activity\"]},\"total_product\":\"Rp 1.287.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 1.287.000,00\",\"val\":1287000},\"admin_login_limit\":2,\"user_limit\":8,\"user_online_limit\":6,\"call_balance\":410000,\"call_cost\":4,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}');
INSERT INTO `package_order` VALUES ('5df8e743-ae1b-49a7-8e22-cfd7a145b2f6', '2022-03-22 08:39:44', '2022-03-22 08:41:17', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'https://checkout-staging.xendit.co/web/623928e0cd7a3bece8687976', 'XENDIT', '2022-03-23 08:39:44', 'INV/AYO-KEU/2203220839/BA/000002', 'Main Package', 'PERMATA', 1287000, 'Unpaid', NULL, NULL, '{\"main_package\":{\"help_desk\":{\"type\":\"Premium\",\"price\":\"Rp 599.000,00\\/month\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 Online accounts with 8 user IDs <br> (combination of Supervisor and Help Desk)\",\"balance\":null,\"fix_price\":599000,\"qty\":1},\"in_app_call\":{\"type\":\"Premium\",\"price\":\"Rp 380.000,00\\/account\",\"expired\":\"Apr 21, 2022\",\"description\":\"4 seconds call per month\",\"balance\":\"4 Seconds\",\"fix_price\":380000,\"qty\":1}},\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"2 Online account = <b>Rp 198.000,00<\\/b>\",\"information\":\"2 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"2\"},\"in_app_call\":{\"price\":\"Rp 30.000\",\"description\":\"2 x Rp 30.000  = <b> Rp 60.000,00<\\/b>\",\"information\":\"20 seconds call per month\",\"balance\":\"20 Seconds\",\"fix_price\":30000,\"qty\":\"2\"}},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 50.000,00\\/month\",\"selected\":[\"Agent Activity\"]},\"total_product\":\"Rp 1.287.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 1.287.000,00\",\"val\":1287000},\"admin_login_limit\":2,\"user_limit\":8,\"user_online_limit\":6,\"call_balance\":410000,\"call_cost\":4,\"recording_type\":\"record\",\"limit_participant\":1000,\"expired_days\":30}');
INSERT INTO `package_order` VALUES ('805bdebe-48f3-43bf-a663-6170e00ae561', '2022-03-28 14:15:25', '2022-03-28 14:15:25', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'https://checkout-staging.xendit.co/web/6241608cb20b1bd4dd584fec', 'XENDIT', '2022-03-29 14:15:24', 'INV/AYO-KEU/2803221415/BA/000003', 'Additional Package', 'PERMATA', 249000, 'Unpaid', NULL, NULL, '{\"additional_package\":{\"online_account\":{\"price\":\"Rp 99.000,00\\/account\",\"description\":\"1 Online account = <b>Rp 99.000,00<\\/b>\",\"information\":\"1 user\",\"balance\":null,\"fix_price\":99000,\"qty\":\"1\"},\"in_app_call\":null},\"recording\":\"WITH Recording\",\"report\":{\"price\":\"Rp 150.000,00\\/month\",\"selected\":[\"Call Tracking\",\"Call Agent\",\"Sales\"]},\"total_product\":\"Rp 249.000,00\",\"ppn\":\"Rp 0,00\",\"total_amount\":{\"rp\":\"Rp 249.000,00\",\"val\":249000},\"user_online_limit\":\"1\",\"call_cost\":20,\"expired_days\":\"2022-04-21 08:39:44\",\"expired_at\":\"Apr 21, 2022\"}');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pre_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('01533cb3-d0e3-4882-8f34-81674e39c6a1', '2022-03-08 08:43:24', 'laililmahvut@gmail.com', 'bGFpbGlsbWFodnV0QGdtYWlsLmNvbTIwMjItMDMtMDggMDk6NDM6MjQ=', '2022-03-08 09:43:24');
INSERT INTO `password_resets` VALUES ('22fddd8a-3657-4f10-95f5-eaf14292bdb2', '2022-03-18 10:57:36', 'rino@mailinator.com', 'cmlub0BtYWlsaW5hdG9yLmNvbXwyMDIyLTAzLTE4IDEwOjU3OjM2', '2022-03-18 11:32:06');
INSERT INTO `password_resets` VALUES ('44a698fa-3d64-478f-8843-01cfa67b54cd', '2022-03-18 11:31:42', 'rino@mailinator.com', 'cmlub0BtYWlsaW5hdG9yLmNvbXwyMDIyLTAzLTE4IDEyOjMxOjQy', '2022-03-18 12:31:42');
INSERT INTO `password_resets` VALUES ('67277c86-9c39-4542-956b-19888314394b', '2022-03-18 12:41:57', 'rino@mailinator.com', 'cmlub0BtYWlsaW5hdG9yLmNvbXwyMDIyLTAzLTE4IDEzOjQxOjU3', '2022-03-18 13:41:57');
INSERT INTO `password_resets` VALUES ('9ae77e50-73ef-4a7e-a42f-d0414186a1e8', '2022-03-08 08:41:50', 'laililmahvut@gmail.com', 'bGFpbGlsbWFodnV0QGdtYWlsLmNvbTIwMjItMDMtMDggMDk6NDE6NTA=', '2022-03-08 09:41:50');
INSERT INTO `password_resets` VALUES ('9c735029-ecc2-488a-ac21-097fb0f3b3c4', '2022-03-08 08:37:50', 'laililmahvut@gmail.com', 'bGFpbGlsbWFodnV0QGdtYWlsLmNvbTIwMjItMDMtMDggMDk6Mzc6NTA=', '2022-03-08 09:37:50');
INSERT INTO `password_resets` VALUES ('c70bb6d8-334e-4ae6-b712-edb18bd53745', '2022-03-06 15:48:12', 'laililmahvut@gmail.com', 'bGFpbGlsbWFodnV0QGdtYWlsLmNvbTIwMjItMDMtMDYgMTY6NDg6MTI=', '2022-03-06 15:48:12');
INSERT INTO `password_resets` VALUES ('f95095ce-cd43-421a-b198-3e391ad81170', '2022-03-18 12:41:02', 'rino@mailinator.com', 'cmlub0BtYWlsaW5hdG9yLmNvbXwyMDIyLTAzLTE4IDEzOjQxOjAy', '2022-03-18 13:41:02');

-- ----------------------------
-- Table structure for payment_callback
-- ----------------------------
DROP TABLE IF EXISTS `payment_callback`;
CREATE TABLE `payment_callback`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_callback
-- ----------------------------

-- ----------------------------
-- Table structure for payment_method
-- ----------------------------
DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_method
-- ----------------------------
INSERT INTO `payment_method` VALUES ('19432596-2ad3-496d-be60-d80704e35e67', '2022-03-08 10:26:26', '2022-03-28 09:30:04', 'OVO', 'OVO', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/ovo%201.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);
INSERT INTO `payment_method` VALUES ('2f8af77d-8702-413d-9628-17eca9875f5c', '2022-03-08 10:26:26', '2022-03-28 09:30:04', 'BCA', 'BCA', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/bca%201.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 5, 1);
INSERT INTO `payment_method` VALUES ('367362b9-c333-4529-970e-75d1fb35eeea', '2022-03-08 10:26:26', '2022-03-28 09:30:04', 'Permata', 'PERMATA', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/permata%201.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 4, 1);
INSERT INTO `payment_method` VALUES ('3703e4fe-bad7-4dfc-b268-5fa1ed1f80ad', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'GOPAY', 'gopay', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/gopay%201.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);
INSERT INTO `payment_method` VALUES ('3f3bc60b-67ef-4cbf-8a9f-f233b0e9edfa', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'BNI', 'BNI', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/bni%201.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 3, 1);
INSERT INTO `payment_method` VALUES ('4d5f2d24-9296-40f8-aa37-74354a33c99b', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'Credit / Debit Card', 'CREDIT_CARD', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/creditcard%201.png', NULL, 2, 1);
INSERT INTO `payment_method` VALUES ('616d9835-f642-439e-9342-ef648879ddd4', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'Linkaja', 'LINKAJA', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/linkaja%201.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);
INSERT INTO `payment_method` VALUES ('62f1b5c2-c53b-4b85-8ed5-bf6668381df3', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'E-wallet / QRIS', 'ewallet', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/ewalet%201.png', NULL, 2, 1);
INSERT INTO `payment_method` VALUES ('7529bd2e-7895-4ec3-a5fd-67f3e51fede8', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'Alfamart', 'ALFAMART', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/alfamart%201.png', 'a4be691e-8275-4e79-97f6-d6b7ded397ea', 1, 1);
INSERT INTO `payment_method` VALUES ('78d8d710-9a13-4f13-b85e-67dabbde1fcb', '2022-03-08 10:26:26', '2022-03-28 09:30:05', 'BSI', 'BNI_SYARIAH', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/bsi%201.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 6, 1);
INSERT INTO `payment_method` VALUES ('98827ea5-d9b4-4284-a2bd-c57f7de6eb6c', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'Indomaret', 'INDOMARET', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/indomaret%201.png', 'a4be691e-8275-4e79-97f6-d6b7ded397ea', 1, 1);
INSERT INTO `payment_method` VALUES ('9cbc6df1-4122-492b-87ed-01d3ac0ec1bf', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'Mandiri', 'MANDIRI', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/mandiri%202.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 1, 1);
INSERT INTO `payment_method` VALUES ('a4be691e-8275-4e79-97f6-d6b7ded397ea', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'Retail Outlets', 'retail', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/creditcard%201.png', NULL, 2, 1);
INSERT INTO `payment_method` VALUES ('ae33c50c-a37c-40f6-952a-2e90a6688b2b', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'Bank Transfer', 'bank_transfer', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/bank%20transfer%201.png', NULL, 1, 1);
INSERT INTO `payment_method` VALUES ('b480940d-1336-4cef-b74c-b2888b588512', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'BRI', 'BRI', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/bri%202.png', 'ae33c50c-a37c-40f6-952a-2e90a6688b2b', 2, 1);
INSERT INTO `payment_method` VALUES ('c22b386d-cf39-4e8c-8569-616837f002dc', '2022-03-08 10:26:26', '2022-03-28 09:30:06', 'ShopeePay', 'SHOPEEPAY', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/shopee%201.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);
INSERT INTO `payment_method` VALUES ('dfd6b198-2497-4d06-a688-1c30cb163344', '2022-03-08 10:26:26', '2022-03-28 09:30:07', 'DANA', 'DANA', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/dana%202.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);
INSERT INTO `payment_method` VALUES ('e96638fe-f882-4fce-8082-a68d3f40174a', '2022-03-08 10:26:26', '2022-03-28 09:30:07', 'Qris', 'QRIS', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/payment/qris%201.png', '62f1b5c2-c53b-4b85-8ed5-bf6668381df3', 1, 1);

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `booking_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `rating` double NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rating_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `rating_users_id_foreign`(`users_id` ASC) USING BTREE,
  INDEX `rating_agent_id_foreign`(`agent_id` ASC) USING BTREE,
  CONSTRAINT `rating_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `rating_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `rating_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rating
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('01a2b87a-b0a2-11ec-bb30-e8f4089635a6', '2022-03-31 10:23:00', '2022-03-31 10:23:00', 'max_ringing_call', '120');
INSERT INTO `settings` VALUES ('5d574966-9d15-11ec-bfcf-e8f4089635a6', '2022-03-06 13:19:17', '2022-03-06 13:19:17', 'term_condition', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.');
INSERT INTO `settings` VALUES ('7b171200-9d15-11ec-bfcf-e8f4089635a6', '2022-03-06 13:20:07', '2022-03-11 08:50:03', 'template_document_aggrement', '<h5>[company_name]</h5>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\n<p>[director_name]</p>');
INSERT INTO `settings` VALUES ('82752ebc-9d15-11ec-bfcf-e8f4089635a6', '2022-03-06 13:19:32', '2022-03-16 13:17:47', 'privacy_policies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit.\r\nTincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla.');
INSERT INTO `settings` VALUES ('a2d6c746-a4ee-11ec-bb30-e8f4089635a6', '2022-03-16 13:02:16', '2022-03-16 13:25:17', 'about_us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci. Volutpat potenti sit cursus ipsum et fringilla nulla feugiat viverra. In id viverra id scelerisque tellus feugiat in id habitasse. In bibendum sagittis arcu sed consectetur malesuada ut phasellus. Velit curabitur nulla quis donec integer habitant tempor, cras blandit. Tincidunt libero maecenas pretium tellus. Luctus dictumst varius vivamus curabitur diam quis diam. Eget id consequat molestie fringilla rhoncus at risus. Sed imperdiet sit id volutpat, duis eros. Lectus tortor aliquam, ante elementum. Pulvinar ullamcorper nulla amet tortor, fusce neque, facilisis accumsan, arcu. Luctus aliquam enim etiam lacinia nam netus ullamcorper aliquam est. Mauris commodo ornare viverra venenatis id mi. Pretium lorem duis nullam consequat aenean bibendum semper at. Molestie amet volutpat proin turpis nec neque, egestas. Odio sit a fermentum, feugiat cursus interdum et nec feugiat. Volutpat viverra porta amet tristique maecenas vitae imperdiet ornare viverra. Praesent amet volutpat maecenas massa. Urna morbi justo nibh ornare penatibus arcu, consectetur fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mus metus, feugiat mattis adipiscing tincidunt orci.');
INSERT INTO `settings` VALUES ('dbb5a76c-afd8-11ec-bb30-e8f4089635a6', '2022-03-30 10:23:11', '2022-03-30 10:23:11', 'customer_play_store', 'https://play.google.com/s');
INSERT INTO `settings` VALUES ('dbb5b642-afd8-11ec-bb30-e8f4089635a6', '2022-03-30 10:23:11', '2022-03-30 10:23:11', 'customer_apps_store', 'https://www.apple.com/id/app-store/');
INSERT INTO `settings` VALUES ('f9ae95ee-aa64-11ec-bb30-e8f4089635a6', '2022-03-23 11:51:33', '2022-03-23 11:51:33', 'order_fee', '10000');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_price` double NULL DEFAULT NULL,
  `product_helpdesk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category` enum('Product','Event','Schedule Doctor','Schedule Other','General') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spv_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `internal_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` enum('Incoming Calls','Callback','Outbound Calls') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ticket_company_id_foreign`(`company_id` ASC) USING BTREE,
  INDEX `ticket_customer_id_foreign`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `ticket_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ticket_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES ('420f2f0b-1f7d-4250-9b63-664c8d48c743', '2022-03-23 17:24:37', '2022-03-25 14:23:23', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'PRO230322172437', '94858345409', '9d281f0c-4f11-4844-80a3-fc3559a65940', 'Makanan Sehat', 250000, 'Information, Complaint, Support', 'Gastropub chillwave lumbersexual umami lyft. Poke austin direct trade, marfa raclette letterpress actually. Chartreuse sriracha pinterest twee lo-fi try-hard. Meditation banh mi kitsch, prism organic.', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/yQLRFAc2EVRrMd2mJxOrvKJxYfdf2xZxTmgNJew0.png', '[{\"file\":\"https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/UZbNYQrcYYjpB7zYOnacIUx7yrf4yatkIzroPBN1.jpg\",\"file_name\":\"download.jpg\",\"title\":\"Informasi Kartu\"},{\"file\":\"https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/MS0cAz3QiDDRFDCwaBG454Xa0C6x3oVvs2Y5bgQp.pdf\",\"file_name\":\"sample.pdf\",\"title\":\"Informasi Terbaru\"}]', 'Product', '78bf287a-9205-45d3-b519-e7bada97c272', '78bf287a-9205-45d3-b519-e7bada97c272', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'Akan segera diproses', 'Pembeli setuju', 'Waiting Payment', 'Incoming Calls', 'f7903d79-5d5d-4395-904a-9fbde62e3389');
INSERT INTO `ticket` VALUES ('b36f231c-db80-4a5a-8663-178dc5772fd7', '2022-03-25 13:51:50', '2022-03-25 14:23:25', '7a144eda-77bc-493b-acf2-7e6c7cfc3725', 'PRO250322135150', '94858345409', '9d281f0c-4f11-4844-80a3-fc3559a65940', 'Makanan Sehat', 250000, 'Information, Complaint, Support', 'Gastropub chillwave lumbersexual umami lyft. Poke austin direct trade, marfa raclette letterpress actually. Chartreuse sriracha pinterest twee lo-fi try-hard. Meditation banh mi kitsch, prism organic.', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/yQLRFAc2EVRrMd2mJxOrvKJxYfdf2xZxTmgNJew0.png', '[{\"file\":\"https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/UZbNYQrcYYjpB7zYOnacIUx7yrf4yatkIzroPBN1.jpg\",\"file_name\":\"download.jpg\",\"title\":\"Informasi Kartu\"},{\"file\":\"https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/MS0cAz3QiDDRFDCwaBG454Xa0C6x3oVvs2Y5bgQp.pdf\",\"file_name\":\"sample.pdf\",\"title\":\"Informasi Terbaru\"}]', 'Product', '78bf287a-9205-45d3-b519-e7bada97c272', '78bf287a-9205-45d3-b519-e7bada97c272', 'f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', 'Akan segera diproses', 'Pembeli setuju', 'Waiting Payment', 'Incoming Calls', 'f7903d79-5d5d-4395-904a-9fbde62e3389');

-- ----------------------------
-- Table structure for ticket_history
-- ----------------------------
DROP TABLE IF EXISTS `ticket_history`;
CREATE TABLE `ticket_history`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ticket_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `internal_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ticket_history_ticket_id_foreign`(`ticket_id` ASC) USING BTREE,
  INDEX `ticket_history_agent_id_foreign`(`agent_id` ASC) USING BTREE,
  INDEX `ticket_history_call_id_foreign`(`call_id` ASC) USING BTREE,
  CONSTRAINT `ticket_history_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ticket_history_call_id_foreign` FOREIGN KEY (`call_id`) REFERENCES `call_history` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ticket_history_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket_history
-- ----------------------------
INSERT INTO `ticket_history` VALUES ('19bd06b7-15c9-451d-b028-373eadcb1aff', '2022-03-25 13:51:50', '2022-03-25 13:51:50', 'b36f231c-db80-4a5a-8663-178dc5772fd7', '78bf287a-9205-45d3-b519-e7bada97c272', 'Akan segera diproses', 'Pembeli setuju', 'Waiting Payment', '8d70039a-0359-4307-8805-07368b67eb3c');
INSERT INTO `ticket_history` VALUES ('2a3eb7f8-8a64-40b2-9752-b82a84732f99', '2022-03-23 17:24:37', '2022-03-23 17:24:37', '420f2f0b-1f7d-4250-9b63-664c8d48c743', '78bf287a-9205-45d3-b519-e7bada97c272', 'Akan segera diproses', 'Pembeli setuju', 'Waiting Payment', '8d70039a-0359-4307-8805-07368b67eb3c');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `regid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `platform` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ue_uq`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0087021a-ddfa-4105-aa80-729c2ac815ac', '2022-03-17 22:00:56', '2022-03-18 08:32:30', 'Yudho Utomo', 'yudho@aseanindo.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2b$10$bnJlf533iLFmP7vyIT5UUugC3hKq5jAMnQHu3Us6656IBX44lLD5G', '085747488595', 'spv', '2022-03-16 22:04:23', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('0b9b839f-75fb-4eb4-ba25-9f7d72bab7cb', '2022-03-16 12:49:52', '2022-03-24 10:04:05', 'Lonzo Grimes Sr.', 'rino@mailinator.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2b$10$4KJ8vb4gdE91ewhxcaOlwei6Mr60Fn1sYfUmWckFjwIIjwQ5I3Lva', '085747589175', 'spv', '2022-03-24 10:04:04', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('0e1335bb-57ba-49b8-b40f-28273e77b5bc', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Tia Satterfield', 'deangelo.turcotte@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747586942', 'spv', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('13d8289c-7243-44c9-93ed-249ac8930830', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Greyson Littel', 'grimes.douglas@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747584783', 'agent', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('21233230-7e59-42d6-8a2a-79cab24b89df', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Nickolas Heathcote', 'saige36@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587914', 'spv', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('39c054ab-c8d5-4ad1-9e39-398c961f223d', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Ross Dare', 'feest.leilani@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585383', 'spv', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('57f434b9-e2ae-4796-b542-8b9799c44631', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Dr. Mathias Stamm PhD', 'leda.morissette@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747588267', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('58636291-e0de-43dd-9332-cc68da5f8fe8', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Florida Boehm PhD', 'flubowitz@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747584959', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('5b0679c9-4ffc-4d90-91bf-ee8132b0fe5e', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Noemy Kuphal', 'carlee19@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747589645', 'agent', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('640f65fa-8524-4b85-8b09-9d922985d9c3', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Prof. Myra Batz PhD', 'krajcik.jorge@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747589396', 'spv', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('653c2dfe-0541-4595-bebc-43bb62a40108', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Armani Hirthe', 'vokon@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747581614', 'spv', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('6cd48e29-e7a9-41c5-91a3-0bf291421339', '2022-03-29 12:56:08', '2022-03-29 12:56:08', 'Rino Mailinator', 'rino2@mailinator.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/0PfD9B8QAvsqGUhjJs5K7b698oE7FB.jpeg', '$2b$10$EAfl8g8w6uZeTlZw.DzlcOfX63RunlLYYAUJNQMD26VneBAx2kEdu', '6285747488595', 'spv', NULL, 'en', NULL, NULL);
INSERT INTO `users` VALUES ('76c120b7-e46d-4a54-bc05-25b63a439234', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Reyna Schowalter', 'smith.saige@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747583423', 'spv', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('78bf287a-9205-45d3-b519-e7bada97c272', '2022-03-15 15:35:26', '2022-03-31 14:14:48', 'Monte Zemlak IV', 'agent@aseanindo.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2b$10$wR7lEg3ke3fQ81.j/BIRo.TnkywjZ1E1pDNyTsOBKgqPS5coy.j0O', '085747585360', 'agent', '2022-03-15 15:35:26', 'en', 'dyzQwysw4Yk:APA91bGLRo-iHcfRuj_QZWbIby4PXYSF45_ReqxaaNnPs9JkJiUtzYhMyqnmMpS2RwK6J-_f0pKmh13dYDylizJBUFfTVSBetFaerlvhyZyxwQ7fHtICuinStdwZLMKvjQR41e2dS6XL', 'ios');
INSERT INTO `users` VALUES ('8a9202e0-1bab-4f3d-9a55-ad1f83b9f875', '2022-03-24 11:24:35', '2022-03-30 10:04:55', 'Customer Crocodic Edited', 'crocodic@customer.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/WDqoU93hGJbihXKzNnZ9Z76iaXhCqM.png', '$2b$10$V2NHn3xOZs.FukGTsQn9a.NfQ7aMnzX1AZ82dFpy.y8lXZWenbIby', '+6281229744559', 'customer', '2022-03-24 11:25:44', 'en', 'dyzQwysw4Yk:APA91bGLRo-iHcfRuj_QZWbIby4PXYSF45_ReqxaaNnPs9JkJiUtzYhMyqnmMpS2RwK6J-_f0pKmh13dYDylizJBUFfTVSBetFaerlvhyZyxwQ7fHtICuinStdwZLMKvjQR41e2dS6XL', 'ios');
INSERT INTO `users` VALUES ('8c2bc040-b805-49c8-bae3-89b5838de59e', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Edgardo Cremin', 'eleonore.hand@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587412', 'spv', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('92b8dd83-43a4-40e2-aa6b-8a26941b34a8', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Mark Trantow', 'alind@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587256', 'spv', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('94f03163-e817-4521-abec-115ddd01058e', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Miss Erika Schiller II', 'ghessel@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585827', 'agent', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('a22ddca1-5ae4-42be-89f9-16141d9473a1', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Savannah Batz', 'olson.darlene@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587818', 'agent', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('b7d0643a-8b76-46e5-89cf-f893d8a67593', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Ms. Herminia Simonis I', 'whomenick@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747586160', 'agent', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('bacb1dd5-12e8-4ada-aa58-a39cef7de4b6', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Mr. Pablo Sawayn', 'else83@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747584401', 'spv', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('bb9ba38b-266d-451f-b374-0d399db7d0a0', '2022-03-18 07:41:55', '2022-03-22 17:12:06', 'Mahfud Mailinator', 'mahfud@mailinator.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2b$10$24rWOqMfyQ9HLMoAym.m0eLXY8GwG3WygAeXdxAaGX5Tdad3xtJ4G', '085747488595', 'spv', NULL, 'en', NULL, NULL);
INSERT INTO `users` VALUES ('bd0ba559-8034-46b0-9cca-c0b68700eb27', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Alexie Fadel', 'ryan.keyon@example.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587920', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('c4490042-b6d6-46fb-ac7b-3eabf564cc10', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Maribel Rath', 'theresia.feil@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747583988', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('c96e244f-b1a0-4527-8a81-c927a617d1eb', '2022-03-17 22:17:49', '2022-03-22 17:12:06', 'Yudho Utomo', 'laililmahvut@gmail.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2b$10$eysdHLydjuosl2twy0W9O.d87gw4EXtbeBFSMgTBxqT27op2gUCTW', '085747488595', 'spv', NULL, 'en', NULL, NULL);
INSERT INTO `users` VALUES ('c9ced493-3e27-40ed-9989-b3b13667f559', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Blake Hodkiewicz', 'carolanne.rice@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585211', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('cd784f75-dfa6-44cf-a14d-b23eeb3ebd62', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Elisha Lesch', 'lubowitz.geovanny@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747586678', 'agent', '2022-03-15 15:35:26', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('eda27324-b904-4f47-a4de-5399bc4079c1', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Davonte Torphy', 'usawayn@example.net', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585678', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('edaa9d44-1300-484e-9e13-5aa741c8972a', '2022-03-16 12:49:52', '2022-03-22 17:12:06', 'Claudia Johns', 'camila.macejkovic@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585496', 'agent', '2022-03-16 12:49:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('f3b1d6e3-ac31-4eeb-9e9b-ebf5aa8ea2bd', '2022-03-12 10:59:52', '2022-03-28 09:01:07', 'Ms. Katheryn Hill MD', 'spv@aseanindo.com', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747584097', 'spv', '2022-03-12 10:59:52', 'en', 'dyzQwysw4Yk:APA91bGLRo-iHcfRuj_QZWbIby4PXYSF45_ReqxaaNnPs9JkJiUtzYhMyqnmMpS2RwK6J-_f0pKmh13dYDylizJBUFfTVSBetFaerlvhyZyxwQ7fHtICuinStdwZLMKvjQR41e2dS6XL', 'ios');
INSERT INTO `users` VALUES ('f6208523-74ae-4fa2-9e23-1e9e0baa2f3f', '2022-03-12 10:59:52', '2022-03-22 17:12:06', 'Burley Hirthe', 'qhickle@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747587121', 'agent', '2022-03-12 10:59:52', 'en', NULL, NULL);
INSERT INTO `users` VALUES ('f7903d79-5d5d-4395-904a-9fbde62e3389', '2022-03-15 15:35:26', '2022-03-22 17:12:06', 'Katelyn Murray', 'kim.cartwright@example.org', 'https://yelow-app-storage.s3.ap-southeast-1.amazonaws.com/dev/jBandcrtgn7a1VdEv7bWM2dfFQn4MC.jpeg', '$2y$10$PVH9TZl4jBapSuIg6XAFNe6CQXAJMWruah6OO90McE7vhb3qifCRO', '085747585500', 'customer', '2022-03-15 15:35:26', 'en', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

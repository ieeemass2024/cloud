/*
 Navicat Premium Data Transfer

 Source Server         : contract
 Source Server Type    : MySQL
 Source Server Version : 50741 (5.7.41-log)
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50741 (5.7.41-log)
 File Encoding         : 65001

 Date: 15/06/2024 17:56:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 'Item Name', 'Item Category', 'Item Description', 100, 29.99, '2024-05-23 15:20:19', '2024-06-06 17:42:11', 1);
INSERT INTO `items` VALUES (6, '物品6', '工具', '多功能手动工具', 100, 250.00, '2023-04-01 13:00:00', '2023-04-24 13:00:00', 2);
INSERT INTO `items` VALUES (7, '物品7', '电子产品', '智能手机', 60, 2000.00, '2023-04-01 14:00:00', '2023-04-24 14:00:00', 3);
INSERT INTO `items` VALUES (8, '物品8', '书籍', '科幻小说', 75, 120.00, '2023-04-01 15:00:00', '2023-04-24 15:00:00', 4);
INSERT INTO `items` VALUES (10, '物品10', '装饰品', '现代艺术雕塑', 15, 1100.00, '2023-04-01 17:00:00', '2023-04-24 17:00:00', 5);
INSERT INTO `items` VALUES (11, '物品11', '工具', '电动钻', 90, 700.00, '2023-04-01 18:00:00', '2023-04-24 18:00:00', 6);
INSERT INTO `items` VALUES (12, '物品12', '电子产品', '高清电视', 70, 3000.00, '2023-04-01 19:00:00', '2023-04-24 19:00:00', 7);
INSERT INTO `items` VALUES (13, '物品13', '书籍', '历史学术书籍', 60, 200.00, '2023-04-01 20:00:00', '2023-04-24 20:00:00', 8);
INSERT INTO `items` VALUES (14, '物品14', '家具', '儿童书桌', 35, 450.00, '2023-04-01 21:00:00', '2023-04-24 21:00:00', 9);
INSERT INTO `items` VALUES (15, '物品15', '装饰品', '花瓶', 55, 180.00, '2023-04-01 22:00:00', '2023-04-24 22:00:00', 10);
INSERT INTO `items` VALUES (19, 'Item Name', 'Item Category', 'Item Description', 100, 29.99, '2024-06-06 17:41:59', '2024-06-06 17:41:59', 11);
INSERT INTO `items` VALUES (20, 'Sample Product', 'Electronics', 'A sample electronic product', 100, 299.99, '2024-06-13 10:49:39', '2024-06-13 10:49:39', 1);
INSERT INTO `items` VALUES (21, 'Sample Product', 'Electronics', 'A sample electronic product', 1200, 2199.99, '2024-06-13 11:19:54', '2024-06-13 11:19:54', 122);
INSERT INTO `items` VALUES (31, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 19:11:03', '2024-06-13 19:11:03', 0);
INSERT INTO `items` VALUES (32, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 19:15:18', '2024-06-13 19:15:18', 0);
INSERT INTO `items` VALUES (33, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 19:15:42', '2024-06-13 19:15:42', 0);
INSERT INTO `items` VALUES (34, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 19:15:59', '2024-06-13 19:15:59', 0);
INSERT INTO `items` VALUES (35, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 19:16:07', '2024-06-13 19:16:07', 0);
INSERT INTO `items` VALUES (36, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 21:57:59', '2024-06-13 21:57:59', 0);
INSERT INTO `items` VALUES (37, 'ee', 'cvv', 'sss', 111, 10.20, '2024-06-13 22:02:13', '2024-06-13 22:02:13', 0);
INSERT INTO `items` VALUES (38, 'Sample Product', 'Electronics', 'A sample electronic product', 1200, 2199.99, '2024-06-13 22:05:03', '2024-06-13 22:05:03', 122);
INSERT INTO `items` VALUES (39, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:10:00', '2024-06-13 22:10:00', 0);
INSERT INTO `items` VALUES (40, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:27:48', '2024-06-13 22:27:48', 0);
INSERT INTO `items` VALUES (41, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:44:15', '2024-06-13 22:44:15', 0);
INSERT INTO `items` VALUES (42, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:45:25', '2024-06-13 22:45:25', 0);
INSERT INTO `items` VALUES (43, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:48:02', '2024-06-13 22:48:02', 0);
INSERT INTO `items` VALUES (44, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 22:54:35', '2024-06-13 22:54:35', 0);
INSERT INTO `items` VALUES (45, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 23:00:25', '2024-06-13 23:00:25', 0);
INSERT INTO `items` VALUES (46, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 23:08:54', '2024-06-13 23:08:54', 0);
INSERT INTO `items` VALUES (47, '1ee', '1cvv', '1sss', 1111, 110.20, '2024-06-13 23:26:08', '2024-06-13 23:26:08', 0);
INSERT INTO `items` VALUES (48, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:28:57', '2024-06-13 23:28:57', 0);
INSERT INTO `items` VALUES (49, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:36:26', '2024-06-13 23:36:26', 0);
INSERT INTO `items` VALUES (50, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:49:16', '2024-06-13 23:49:16', 0);
INSERT INTO `items` VALUES (51, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:50:37', '2024-06-13 23:50:37', 0);
INSERT INTO `items` VALUES (52, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:51:04', '2024-06-13 23:51:04', 0);
INSERT INTO `items` VALUES (53, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:51:09', '2024-06-13 23:51:09', 0);
INSERT INTO `items` VALUES (54, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:54:19', '2024-06-13 23:54:19', 0);
INSERT INTO `items` VALUES (55, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:56:54', '2024-06-13 23:56:54', 0);
INSERT INTO `items` VALUES (56, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 23:57:30', '2024-06-13 23:57:30', 0);
INSERT INTO `items` VALUES (57, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:00:56', '2024-06-14 00:00:56', 0);
INSERT INTO `items` VALUES (58, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:07:02', '2024-06-14 00:07:02', 0);
INSERT INTO `items` VALUES (59, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:08:01', '2024-06-14 00:08:01', 0);
INSERT INTO `items` VALUES (60, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:12:06', '2024-06-14 00:12:06', 0);
INSERT INTO `items` VALUES (61, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:13:00', '2024-06-14 00:13:00', 0);
INSERT INTO `items` VALUES (62, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:15:15', '2024-06-14 00:15:15', 0);
INSERT INTO `items` VALUES (63, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:21:50', '2024-06-14 00:21:50', 0);
INSERT INTO `items` VALUES (64, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:27:13', '2024-06-14 00:27:13', 0);
INSERT INTO `items` VALUES (65, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:29:10', '2024-06-14 00:29:10', 0);
INSERT INTO `items` VALUES (66, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:31:29', '2024-06-14 00:31:29', 0);
INSERT INTO `items` VALUES (67, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:32:21', '2024-06-14 00:32:21', 0);
INSERT INTO `items` VALUES (68, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:38:09', '2024-06-14 00:38:09', 0);
INSERT INTO `items` VALUES (70, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:39:46', '2024-06-14 00:39:46', 0);
INSERT INTO `items` VALUES (72, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:43:35', '2024-06-14 00:43:35', 0);
INSERT INTO `items` VALUES (74, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:48:48', '2024-06-14 00:48:48', 0);
INSERT INTO `items` VALUES (76, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:51:38', '2024-06-14 00:51:38', 0);
INSERT INTO `items` VALUES (78, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:54:43', '2024-06-14 00:54:43', 0);
INSERT INTO `items` VALUES (80, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 00:58:40', '2024-06-14 00:58:40', 2);
INSERT INTO `items` VALUES (81, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (82, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 01:04:27', '2024-06-14 01:04:27', 2);
INSERT INTO `items` VALUES (83, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (84, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 01:06:15', '2024-06-14 01:06:15', 0);
INSERT INTO `items` VALUES (85, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (86, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 01:06:44', '2024-06-14 01:06:44', 0);
INSERT INTO `items` VALUES (87, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (88, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (89, '21ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (90, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (91, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (97, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:37:56', '2024-06-13 10:00:00', 2);
INSERT INTO `items` VALUES (98, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:38:14', NULL, 0);
INSERT INTO `items` VALUES (99, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:39:57', NULL, 0);
INSERT INTO `items` VALUES (100, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:43:33', NULL, 0);
INSERT INTO `items` VALUES (101, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:51:48', NULL, 0);
INSERT INTO `items` VALUES (102, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:54:31', NULL, 0);
INSERT INTO `items` VALUES (103, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 17:57:40', NULL, 0);
INSERT INTO `items` VALUES (104, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:04:01', '2024-06-14 18:04:01', 0);
INSERT INTO `items` VALUES (105, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:04:47', '2024-06-14 18:04:47', 2);
INSERT INTO `items` VALUES (106, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:11:30', '2024-06-14 18:11:30', 2);
INSERT INTO `items` VALUES (107, '213ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:12:27', '2024-06-14 18:12:27', 2);
INSERT INTO `items` VALUES (108, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:14:00', '2024-06-14 18:14:00', 2);
INSERT INTO `items` VALUES (109, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:16:00', '2024-06-14 18:16:00', 2);
INSERT INTO `items` VALUES (110, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:18:26', '2024-06-14 18:18:26', 2);
INSERT INTO `items` VALUES (111, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:18:40', '2024-06-14 18:18:40', 2);
INSERT INTO `items` VALUES (112, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:20:12', '2024-06-14 18:20:12', 2);
INSERT INTO `items` VALUES (113, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:26:13', '2024-06-14 18:26:13', 2);
INSERT INTO `items` VALUES (114, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:31:05', '2024-06-14 18:31:05', 2);
INSERT INTO `items` VALUES (115, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:37:18', '2024-06-14 18:37:18', 2);
INSERT INTO `items` VALUES (116, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:38:43', '2024-06-14 18:38:43', 2);
INSERT INTO `items` VALUES (117, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 18:41:11', '2024-06-14 18:41:11', 0);
INSERT INTO `items` VALUES (118, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 20:05:45', '2024-06-14 20:05:45', 2);
INSERT INTO `items` VALUES (121, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 20:26:02', '2024-06-14 20:26:02', 2);
INSERT INTO `items` VALUES (122, '21311ee', '21cvv', '1sss', 1111, 110.20, '2024-06-14 20:26:56', '2024-06-14 20:26:56', 40);
INSERT INTO `items` VALUES (123, 'Updated Item Name', '21cvv', '1sss', 1234, 150.00, '2024-06-14 20:31:17', '2024-06-14 22:55:13', 41);
INSERT INTO `items` VALUES (124, 'Updated Item Name', '21cvv', '1sss', 1111, 150.00, '2024-06-14 20:31:55', '2024-06-14 22:51:10', 42);
INSERT INTO `items` VALUES (125, 'Updated Item Name', '21cvv', '1sss', 1111, 150.00, '2024-06-14 20:51:10', '2024-06-14 22:48:44', 43);

SET FOREIGN_KEY_CHECKS = 1;

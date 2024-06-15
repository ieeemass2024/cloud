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

 Date: 15/06/2024 17:56:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) NULL DEFAULT NULL,
  `logistics_id` int(20) NULL DEFAULT NULL,
  `payment_id` int(20) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (7, 81, 47, 22, 'Pending');
INSERT INTO `orders` VALUES (8, 83, 49, 23, 'Pending');
INSERT INTO `orders` VALUES (9, 85, 51, 24, 'Pending');
INSERT INTO `orders` VALUES (10, 87, 53, 25, 'Pending');
INSERT INTO `orders` VALUES (11, 88, 54, 26, 'Pending');
INSERT INTO `orders` VALUES (12, 89, 55, 27, 'Pending');
INSERT INTO `orders` VALUES (13, 90, 56, 28, 'Pending');
INSERT INTO `orders` VALUES (14, 91, 57, 29, 'Pending');
INSERT INTO `orders` VALUES (15, 97, 63, 34, 'Pending');
INSERT INTO `orders` VALUES (16, 98, 64, 35, 'Pending');
INSERT INTO `orders` VALUES (17, 99, 65, 36, 'Pending');
INSERT INTO `orders` VALUES (18, 100, 66, 37, 'Pending');
INSERT INTO `orders` VALUES (19, 101, 67, 38, 'Pending');
INSERT INTO `orders` VALUES (20, 102, 68, 39, 'Pending');
INSERT INTO `orders` VALUES (21, 103, 69, 40, 'Pending');
INSERT INTO `orders` VALUES (22, 104, 70, 41, 'Pending');
INSERT INTO `orders` VALUES (23, 105, 71, 42, 'Pending');
INSERT INTO `orders` VALUES (24, 106, 72, 43, 'Pending');
INSERT INTO `orders` VALUES (25, 107, 73, 44, 'Pending');
INSERT INTO `orders` VALUES (26, 108, 74, 45, 'Pending');
INSERT INTO `orders` VALUES (27, 109, 75, 46, 'Pending');
INSERT INTO `orders` VALUES (28, 110, 76, 47, 'Pending');
INSERT INTO `orders` VALUES (29, 111, 77, 48, 'Pending');
INSERT INTO `orders` VALUES (30, 112, 78, 49, 'Pending');
INSERT INTO `orders` VALUES (31, 113, 79, 50, 'Pending');
INSERT INTO `orders` VALUES (32, 114, 80, 51, 'Pending');
INSERT INTO `orders` VALUES (33, 115, 81, 52, 'Pending');
INSERT INTO `orders` VALUES (34, 116, 82, 53, 'Pending');
INSERT INTO `orders` VALUES (35, 117, 83, 54, 'Pending');
INSERT INTO `orders` VALUES (36, 118, 84, 55, 'Pending');
INSERT INTO `orders` VALUES (39, 121, 87, 58, 'Pending');
INSERT INTO `orders` VALUES (40, 122, 88, 59, 'Pending');
INSERT INTO `orders` VALUES (41, 123, 89, 60, 'Pending');
INSERT INTO `orders` VALUES (42, 124, 90, 61, 'Pending');
INSERT INTO `orders` VALUES (43, 125, 91, 62, 'Shipped1\r\n');

SET FOREIGN_KEY_CHECKS = 1;

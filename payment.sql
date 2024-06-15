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

 Date: 15/06/2024 17:57:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `payment_id` int(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(20) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 101, 150.50, 'Completed', 'TXN123456');
INSERT INTO `payment` VALUES (2, 102, 250.75, 'Pending', 'TXN123457');
INSERT INTO `payment` VALUES (3, 103, 99.99, 'Completed', 'TXN123458');
INSERT INTO `payment` VALUES (4, 101, 150.50, 'Completed', 'TXN123456');
INSERT INTO `payment` VALUES (9, 11, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (11, 1, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (13, 2, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (15, 3, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (17, 4, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (19, 5, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (21, 6, 100.00, 'Completed', 'txn_1234567890');
INSERT INTO `payment` VALUES (22, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (23, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (24, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (25, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (26, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (27, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (28, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (29, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (34, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (35, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (36, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (37, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (38, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (39, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (40, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (41, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (42, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (43, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (44, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (45, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (46, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (47, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (48, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (49, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (50, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (51, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (52, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (53, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (54, NULL, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (55, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (58, 1, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (59, 40, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (60, 41, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (61, 42, 100.00, 'Pending', 'txn_1234567890');
INSERT INTO `payment` VALUES (62, 43, 100.00, 'Pending', 'txn_1234567890');

SET FOREIGN_KEY_CHECKS = 1;

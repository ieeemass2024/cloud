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

 Date: 15/06/2024 17:56:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `logistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `shipping_date` date NOT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `carrier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`logistics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES (1, 5, '2024-06-10', '2024-06-15', '456 Test St, Test City, TC', 'Delivered', 'FedEx');
INSERT INTO `logistics` VALUES (2, 2, '2024-06-02', '2024-06-06', '456 Oak St, Othertown, USA', 'Delivered', 'FedEx');
INSERT INTO `logistics` VALUES (3, 3, '2024-06-03', '2024-06-20', '789 Pine St, Sometown, USA', 'In Transit', 'DHL');
INSERT INTO `logistics` VALUES (4, 4, '2024-06-04', '2024-05-23', '321 Maple St, Yourtown, USA', 'Pending', 'USPS');
INSERT INTO `logistics` VALUES (13, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (14, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (15, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (16, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (17, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (18, 0, '2024-06-13', '2024-06-13', 'cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (19, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (20, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (21, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (22, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (23, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (24, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (25, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (26, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (27, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (28, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (29, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (30, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (31, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (32, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (33, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (34, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (36, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (38, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (40, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (42, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (44, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (46, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (47, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (48, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (49, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (50, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (51, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (52, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (53, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (54, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (55, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (56, 2, '2024-06-13', '2024-06-13', '13cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (57, 2, '2024-06-13', '2024-06-13', '13cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (63, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (64, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (65, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (66, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (67, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (68, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (69, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (70, 0, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (71, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (72, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (73, 2, '2024-06-13', '2024-06-13', '1cvv', '111', '10.2');
INSERT INTO `logistics` VALUES (74, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (75, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (76, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (77, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (78, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (79, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (80, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (81, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (82, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (83, 0, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (84, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (87, 2, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (88, 40, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (89, 41, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (90, 42, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');
INSERT INTO `logistics` VALUES (91, 43, '2024-06-13', '2024-06-13', '1c111vv', '111', '10.2');

SET FOREIGN_KEY_CHECKS = 1;

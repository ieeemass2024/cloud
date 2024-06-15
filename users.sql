/*
 Navicat Premium Data Transfer

 Source Server         : test1
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 15/06/2024 23:37:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register_time` datetime NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('user2', 2, 'pass5678', 'user2@example.com', '2023-04-24 00:00:00', 'ADMIN');
INSERT INTO `users` VALUES ('user3', 3, 'pass9101', 'user3@example.com', '2023-04-24 00:00:00', 'USER');
INSERT INTO `users` VALUES ('user4', 4, 'pass1121', 'user4@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user5', 5, 'pass3141', 'user5@example.com', '2023-04-24 00:00:00', '管理员');
INSERT INTO `users` VALUES ('user6', 6, 'pass5161', 'user6@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user7', 7, 'pass7181', 'user7@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user8', 8, 'pass9202', 'user8@example.com', '2023-04-24 00:00:00', '管理员');
INSERT INTO `users` VALUES ('user9', 9, 'pass1222', 'user9@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user10', 10, 'pass3242', 'user10@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user11', 11, 'pass5262', 'user11@example.com', '2023-04-24 00:00:00', '管理员');
INSERT INTO `users` VALUES ('user12', 12, 'pass7282', 'user12@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user13', 13, 'pass9303', 'user13@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user14', 14, 'pass1323', 'user14@example.com', '2023-04-24 00:00:00', '管理员');
INSERT INTO `users` VALUES ('user15', 15, 'pass3343', 'user15@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user16', 16, 'pass5363', 'user16@example.com', '2023-04-24 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user17', 17, 'pass7383', 'user17@example.com', '2023-04-25 00:00:00', '管理员');
INSERT INTO `users` VALUES ('user18', 18, 'pass9404', 'user18@example.com', '2023-04-25 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user19', 19, 'pass1424', 'user19@example.com', '2023-04-25 00:00:00', '普通用户');
INSERT INTO `users` VALUES ('user20', 20, 'pass3444', 'user20@example.com', '2023-04-25 00:00:00', '管理员');

SET FOREIGN_KEY_CHECKS = 1;

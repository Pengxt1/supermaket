/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : supermarket

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 21/09/2020 13:40:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inrecord
-- ----------------------------
DROP TABLE IF EXISTS `inrecord`;
CREATE TABLE `inrecord`  (
  `no` int(11) NOT NULL,
  `Pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `innum` int(11) NOT NULL,
  `intime` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inrecord
-- ----------------------------
INSERT INTO `inrecord` VALUES (14, '口水鸡', 11, '2020-09-19 12:59:18');
INSERT INTO `inrecord` VALUES (15, '脆香米', 50, '2020-09-19 23:22:25');
INSERT INTO `inrecord` VALUES (1, '沙琪玛1', 11, '2020-09-19 23:22:32');
INSERT INTO `inrecord` VALUES (14, '口水鸡', 89, '2020-09-19 23:22:38');
INSERT INTO `inrecord` VALUES (15, '脆香米', 50, '2020-09-19 23:22:42');
INSERT INTO `inrecord` VALUES (2, '巧克力', 16, '2020-09-19 23:22:51');
INSERT INTO `inrecord` VALUES (1, '沙琪玛1', 111, '2020-09-19 23:22:55');
INSERT INTO `inrecord` VALUES (9, '卤鹌鹑蛋', 1, '2020-09-19 23:23:13');

-- ----------------------------
-- Table structure for outrecord
-- ----------------------------
DROP TABLE IF EXISTS `outrecord`;
CREATE TABLE `outrecord`  (
  `no` int(11) NOT NULL,
  `Pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `outnum` int(11) NOT NULL,
  `outtime` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outrecord
-- ----------------------------
INSERT INTO `outrecord` VALUES (2, '巧克力', 1, '2020-09-19 12:50:57');
INSERT INTO `outrecord` VALUES (9, '卤鹌鹑蛋', 6, '2020-09-19 23:23:01');
INSERT INTO `outrecord` VALUES (3, '汉堡包', 4, '2020-09-19 23:23:04');
INSERT INTO `outrecord` VALUES (1, '沙琪玛1', 27, '2020-09-19 23:23:07');
INSERT INTO `outrecord` VALUES (1, '沙琪玛1', 25, '2020-09-19 23:23:50');
INSERT INTO `outrecord` VALUES (2, '巧克力', 25, '2020-09-19 23:23:53');
INSERT INTO `outrecord` VALUES (3, '汉堡包', 25, '2020-09-19 23:23:54');
INSERT INTO `outrecord` VALUES (14, '口水鸡', 25, '2020-09-19 23:23:57');

-- ----------------------------
-- Table structure for perms
-- ----------------------------
DROP TABLE IF EXISTS `perms`;
CREATE TABLE `perms`  (
  `id` int(11) NOT NULL,
  `perm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perms
-- ----------------------------
INSERT INTO `perms` VALUES (1, 'menu0');
INSERT INTO `perms` VALUES (1, 'menu1');
INSERT INTO `perms` VALUES (1, 'menu2');
INSERT INTO `perms` VALUES (1, 'menu3');
INSERT INTO `perms` VALUES (1, 'menu4');
INSERT INTO `perms` VALUES (1, 'menu5');
INSERT INTO `perms` VALUES (1, 'menu6');
INSERT INTO `perms` VALUES (1, 'menu7');
INSERT INTO `perms` VALUES (8, 'menu0');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PPrice` int(11) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `sales_volume` int(11) DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '沙琪玛1', 11, 75, 257);
INSERT INTO `product` VALUES (2, '巧克力', 111, 75, 341);
INSERT INTO `product` VALUES (3, '汉堡包', 13, 75, 158);
INSERT INTO `product` VALUES (9, '卤鹌鹑蛋', 2, 100, 12);
INSERT INTO `product` VALUES (14, '口水鸡', 3, 75, 25);
INSERT INTO `product` VALUES (15, '脆香米', 3, 100, 0);
INSERT INTO `product` VALUES (17, '烧烤土豆', 3, 0, 0);
INSERT INTO `product` VALUES (19, '火鸡面', 3, 0, 0);
INSERT INTO `product` VALUES (20, '小龙虾', 11, 0, 0);
INSERT INTO `product` VALUES (21, '吐司面包', 13, 0, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'pengxuteng', '123456');
INSERT INTO `user` VALUES (2, '201710098105', '123456');
INSERT INTO `user` VALUES (5, '243636', '314124');
INSERT INTO `user` VALUES (6, 'pxt', '123456');
INSERT INTO `user` VALUES (7, 'hwanz', '123456');
INSERT INTO `user` VALUES (8, 'lsj', '123456');
INSERT INTO `user` VALUES (9, 'lqw', '123456');
INSERT INTO `user` VALUES (10, 'bsfb', 'q13123');

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50712
 Source Host           : localhost:3306
 Source Schema         : keyan

 Target Server Type    : MySQL
 Target Server Version : 50712
 File Encoding         : 65001

 Date: 02/01/2020 20:22:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for career
-- ----------------------------
DROP TABLE IF EXISTS `career`;
CREATE TABLE `career`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `people_number` int(10) NOT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of career
-- ----------------------------
INSERT INTO `career` VALUES (200001, '教师', 15, 'A');
INSERT INTO `career` VALUES (200002, '管理者', 10, 'B');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `people_number` int(10) NOT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (100001, '管理部门', 10, 'A');
INSERT INTO `department` VALUES (100002, '审批部门', 10, 'B');
INSERT INTO `department` VALUES (100003, '行政部门', 10, 'B');
INSERT INTO `department` VALUES (100004, '教学部门', 10, 'C');
INSERT INTO `department` VALUES (100005, '其他部门', 13, 'D');
INSERT INTO `department` VALUES (100006, '123', 13, 'D');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `people_number` int(10) NULL DEFAULT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10004 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (10001, '高级教师', 10, 'A');
INSERT INTO `position` VALUES (10002, '高级管理者', 10, 'A');
INSERT INTO `position` VALUES (10003, '普通教师', 3, 'A');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charger_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charger_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `information` varchar(1200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 500005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (500001, '数学研究', 'waiting', '100001', '李霸天', NULL);
INSERT INTO `project` VALUES (500002, '英语研究', 'finish', '100001', '李霸天', NULL);
INSERT INTO `project` VALUES (500003, '物理研究', 'pass', '100001', '李霸天', NULL);
INSERT INTO `project` VALUES (500004, '学术讨论', 'waiting', '100001', '李霸天', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `information` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_id` int(10) NULL DEFAULT NULL,
  `idf` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `career` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `career_id` int(10) NULL DEFAULT NULL,
  `position_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (100001, '李霸天', '男', '最牛逼的老师', '管理部门', 'C', 100001, 'teacher', '教师', '高级教师', 200001, 10001);
INSERT INTO `user` VALUES (100002, '李叶皓', '男', '最牛逼', '教学部门', 'A', 100004, 'teacher', '管理者', '高级管理者', 200002, 10002);
INSERT INTO `user` VALUES (100003, '李维昊', '男', '好人', '教学部门', 'B', 100004, 'teacher', '教师', '普通教师', 200001, 10003);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (100001, '123', '123');
INSERT INTO `user_info` VALUES (100002, '1234', '123');

SET FOREIGN_KEY_CHECKS = 1;

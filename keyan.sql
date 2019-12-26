
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for career
-- ----------------------------
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
INSERT INTO `department` VALUES (100005, '其他部门', 13, 'C');
INSERT INTO `department` VALUES (100006, 'zcvzv', 13, 'D');

-- ----------------------------
-- Table structure for position
-- ----------------------------

CREATE TABLE `position`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `people_number` int(10) NULL DEFAULT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (10001, '高级教师', 10, 'A');

-- ----------------------------
-- Table structure for project
-- ----------------------------
CREATE TABLE `project`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charger_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charger_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 500002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (500001, '数学研究', 'waiting', '300001', '李霸天');

-- ----------------------------
-- Table structure for user
-- ----------------------------
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
INSERT INTO `user` VALUES (300001, '李霸天', '男', '最牛逼的老师', '管理部门', 'C', 100001, 'teacher', '教师', '高级教师', 200001, 10001);

-- ----------------------------
-- Table structure for user_info
CREATE TABLE `user_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idf_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (100001, '123', '123', '123');

SET FOREIGN_KEY_CHECKS = 1;

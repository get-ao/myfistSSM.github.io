/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:08:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student_job
-- ----------------------------
DROP TABLE IF EXISTS `student_job`;
CREATE TABLE `student_job` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `apply_job` varchar(255) DEFAULT NULL,
  `Audit_situation` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_job
-- ----------------------------
INSERT INTO `student_job` VALUES ('20170301', '小明', '前端开发人员', '待审核');
INSERT INTO `student_job` VALUES ('20170302', '小黄', '', '');
INSERT INTO `student_job` VALUES ('20170303', '小艾', '', '');

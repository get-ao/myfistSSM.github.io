/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:08:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for talent_form
-- ----------------------------
DROP TABLE IF EXISTS `talent_form`;
CREATE TABLE `talent_form` (
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `pro` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `results` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talent_form
-- ----------------------------
INSERT INTO `talent_form` VALUES ('20170302', '小黄', '女', '电商一班', '暂无', '学习认真刻苦', 'B');

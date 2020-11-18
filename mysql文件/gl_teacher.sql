/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:07:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gl_teacher
-- ----------------------------
DROP TABLE IF EXISTS `gl_teacher`;
CREATE TABLE `gl_teacher` (
  `gl_Account_id` varchar(255) NOT NULL,
  `gl_Account_name` varchar(255) NOT NULL,
  `gl_outline` varchar(255) NOT NULL COMMENT '大纲',
  PRIMARY KEY (`gl_Account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gl_teacher
-- ----------------------------
INSERT INTO `gl_teacher` VALUES ('jxgl001', '王书记', '针对本校目前在毕业生顶岗实习和就业管理过程中仍然采用人工管理方式、纸质化收集资料、传统的沟通交流方式，没有完善的信 息化系统支持，导致管理效率低、时效性差、准确度不高以及不利于数据的收集和分析，不利于学校、企业、学生三方信息畅通，不能为专业的调整和改进提供有力依据的情况，为此采用 SSM 框架设计并 实现了毕业生的毕业实习与就业管理系统。');

/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:07:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL DEFAULT '',
  `kind` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('2', 'qyt001', '22222', '企业老师', '张老师');
INSERT INTO `account` VALUES ('3', 'qyh001', '33333', '企业负责人', '刘总');
INSERT INTO `account` VALUES ('4', '20170301', 'xm123', '学生', '小明');
INSERT INTO `account` VALUES ('5', '20170302', 'xh123', '学生', '小黄');
INSERT INTO `account` VALUES ('7', 'jxgl001', '44444', '教学管理人员', '王书记');
INSERT INTO `account` VALUES ('8', 'sct001', '11111', '校内老师', '赵老师');
INSERT INTO `account` VALUES ('9', '20170306', '112', '学生', '岳鑫');

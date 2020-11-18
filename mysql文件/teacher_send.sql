/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:09:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for teacher_send
-- ----------------------------
DROP TABLE IF EXISTS `teacher_send`;
CREATE TABLE `teacher_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_user` varchar(255) NOT NULL,
  `st_name` varchar(255) NOT NULL,
  `studen_id` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_send
-- ----------------------------
INSERT INTO `teacher_send` VALUES ('2', 'sct001', '赵老师', '20170301', '小明', '完成java多线程的学习，记得交报告', '2020-11-02 17:12:33');
INSERT INTO `teacher_send` VALUES ('3', 'sct001', '赵老师', '20170301', '小明', '完成Python的学习', '2020-11-02 17:30:20');

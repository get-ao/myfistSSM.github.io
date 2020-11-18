/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:08:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student_attribute
-- ----------------------------
DROP TABLE IF EXISTS `student_attribute`;
CREATE TABLE `student_attribute` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_sex` varchar(255) NOT NULL,
  `student_grade` varchar(255) NOT NULL,
  `weekly` varchar(255) DEFAULT '',
  `attendance` varchar(255) DEFAULT '',
  `inspection_results` int(11) DEFAULT '0' COMMENT '考核成绩',
  `adviser` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_attribute
-- ----------------------------
INSERT INTO `student_attribute` VALUES ('20170301', '小明', '男', '电信一班', '瓦单位让人', '已完成', '87', '待审核');
INSERT INTO `student_attribute` VALUES ('20170302', '小黄', '女', '计科一班', '完成线上运营', '已完成', '95', '暂无审核');
INSERT INTO `student_attribute` VALUES ('20170303', '小艾', '男', '电信一班', '完成嵌入式学习', '已完成', '80', '赵老师');
INSERT INTO `student_attribute` VALUES ('20170304', '若言', '男', '软件一班', '完成html学习', '已完成', '88', '赵老师');
INSERT INTO `student_attribute` VALUES ('20170305', '小明', '男', '电信一班', '', '已完成', '70', '赵老师');
INSERT INTO `student_attribute` VALUES ('20170306', '岳鑫', '男', '计科一班', '', '', null, '王老师');

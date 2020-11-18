/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : employwork

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-11-18 10:08:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qy_job
-- ----------------------------
DROP TABLE IF EXISTS `qy_job`;
CREATE TABLE `qy_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hand_id` varchar(255) NOT NULL,
  `hand_name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `job_need` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_job
-- ----------------------------
INSERT INTO `qy_job` VALUES ('1', 'qyh001', '刘总', 'C语言开发人员', '熟悉C/C++语言，熟悉linux网络编程', '已通过');
INSERT INTO `qy_job` VALUES ('2', 'qy001', '刘总', 'java开发人员', '熟悉java语言', '待审核');
INSERT INTO `qy_job` VALUES ('3', 'qy001', '刘总', '前端开发人员', '熟悉前端UI设计', '已通过');

/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : ssm001

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-04-15 06:32:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '教学部');
INSERT INTO `dept` VALUES ('2', '市场部');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `dept` varchar(32) DEFAULT NULL COMMENT '部门主键',
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', '教员', '1');
INSERT INTO `position` VALUES ('2', '班主任', '1');
INSERT INTO `position` VALUES ('3', '市场专员', '2');
INSERT INTO `position` VALUES ('4', '当面咨询', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `nation` varchar(11) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `card` varchar(18) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `marry` varchar(11) DEFAULT NULL,
  `study` varchar(11) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `home` varchar(255) DEFAULT NULL,
  `homephone` varchar(11) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `officephone` varchar(11) DEFAULT NULL,
  `leave` varchar(11) DEFAULT NULL,
  `leavedate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  KEY `position` (`position`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`id`),
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`position`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('0003', '张学良', 'a', '男', '2009-04-10', '2131231232112', '斯蒂芬斯蒂芬sad', '已婚', '本科', '清华', '音乐', '133213213', 'sdfsfd@164.com', 'sdfsdfsd', '1231231', '1', '1', '2018-04-02', '12312312', '在职', null);
INSERT INTO `teacher` VALUES ('0005', '画的ddddd', 'a', '男', '2009-04-10', '2131231232112', '斯蒂芬斯蒂芬sad', '已婚', '本科', '清华', '音乐', '133213213', 'sdfsfd@164.com', 'sdfsdfsd,sdfsdfsd', '1231231', '2', '2', '2018-04-02', '12312312', '在职', null);
INSERT INTO `teacher` VALUES ('0006', '刘德', 'a', '男', '2009-04-10', '2131231232112', '斯蒂芬斯蒂芬sad', '已婚', '本科', '清华', '音乐', '133213213', 'sdfsfd@164.com', 'sdfsdfsd', '1231231', '2', '3', '2018-04-02', '12312312', '在职', null);
INSERT INTO `teacher` VALUES ('0007', '先看看', 'a', '女', '2009-04-10', '2131231232112', '斯蒂芬斯蒂芬sad', '已婚', '本科', '清华', '音乐', '133213213', 'sdfsfd@164.com', 'sdfsdfsd', '1231231', '1', '4', '2018-04-02', '12312312', '在职', null);
INSERT INTO `teacher` VALUES ('0009', '梨子', 'a', '女', '2009-04-10', '43432423', '斯蒂芬斯蒂芬sad', '已婚', '本科', '清华', '音乐', '1432312321', 'sdfsfd@164.com', 'sdfsdfsd', '1231231', '1', '4', '2018-04-02', '12312312', '离职', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(11) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123');

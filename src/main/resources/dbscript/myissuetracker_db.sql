/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : myissuetracker_db

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-06-27 20:04:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for issues
-- ----------------------------
DROP TABLE IF EXISTS `issues`;
CREATE TABLE `issues` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `issue_name` varchar(500) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` bigint(20) DEFAULT NULL,
  `assign_to` varchar(100) DEFAULT NULL,
  `last_modify_date` bigint(20) DEFAULT NULL,
  `assgin_date` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `issue_type` varchar(50) DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id123` (`project_id`),
  KEY `myissueid` (`id`) USING BTREE,
  CONSTRAINT `project_id123` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of issues
-- ----------------------------
INSERT INTO `issues` VALUES ('1', 'XYZ issue', 'Gokul', '1497768209000', 'Aniket Knase', '1498405120778', '1497968209000', 'CLOSED', 'BUG', 'MODERATE', 'NORMAL', 'error xyz comes in xyz condition', '1');
INSERT INTO `issues` VALUES ('2', 'PQR issue', 'Gokul', '1497768209000', 'Ganesh Jadhav', '1498404366682', '1497968209000', 'NEW', 'BUG', 'MODERATE', 'NORMAL', 'error xyz comes in xyz condition', '1');
INSERT INTO `issues` VALUES ('10', 'ashsh', 'Gokul Sonawane', '1498407530705', null, '1498407530705', null, 'NEW', 'BUG', 'CRITICAL', 'LOW', 'sheshsh', '2');
INSERT INTO `issues` VALUES ('11', 'afawg', 'Gokul Sonawane', '1498407599074', null, '1498407599074', null, 'NEW', 'BUG', 'CRITICAL', 'LOW', 'gwagg', '2');
INSERT INTO `issues` VALUES ('12', 'Top10Doctor-Server', 'Gokul Sonawane', '1498407712970', null, '1498407712970', null, 'NEW', 'BUG', 'CRITICAL', 'LOW', 'Top10Doctor-Server', '2');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(1000) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` bigint(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projectid` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Resto', 'Complete Resturant Mgt Software', 'Gokul', '1497768209000');
INSERT INTO `projects` VALUES ('2', 'Top10Docotr', 'Complete dcotor app software', 'Gokul', '1497768209000');
INSERT INTO `projects` VALUES ('3', 'Cricket', 'CrickBuzz Like app', 'Gokul Sonawane', '1498572082603');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'GPS');
INSERT INTO `test` VALUES ('2', 'Ganesh');
INSERT INTO `test` VALUES ('4', 'gocool');
INSERT INTO `test` VALUES ('5', 'gocool');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `points` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emailid` (`email`(767)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Gokul Sonawane', 'gokul@gmail.com', '202cb962ac59075b964b07152d234b70', '7588551048', '1');
INSERT INTO `user` VALUES ('2', 'Ganesh Jadhav', 'ganesh@gmail.com', '202cb962ac59075b964b07152d234b70', '9874563210', '1');
INSERT INTO `user` VALUES ('3', 'Aniket Knase', 'aniket@gmail.com', '1321321', '5445121212', '1');
INSERT INTO `user` VALUES ('4', 'Abhishek Nalkande', 'abhi@gmail.com', '13213215465', '9874566231', '1');

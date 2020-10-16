/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : other_test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-10-16 23:12:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `forfrenkey`
-- ----------------------------
DROP TABLE IF EXISTS `forfrenkey`;
CREATE TABLE `forfrenkey` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `usen` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users.username` (`usen`),
  CONSTRAINT `users.username` FOREIGN KEY (`usen`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forfrenkey
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'wx', '123456', '男', '8');
INSERT INTO `users` VALUES ('4', '大哥', '123456', '女', '16');
INSERT INTO `users` VALUES ('5', 'wyxw', '123456', '男', '16');
INSERT INTO `users` VALUES ('6', 'oy44', '123456', '男', '16');
INSERT INTO `users` VALUES ('8', 'oy', '123456', '男', '16');

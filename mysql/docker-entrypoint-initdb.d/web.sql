/*
MySQL Backup
Source Server Version: 5.1.73
Source Database: web
Date: 2011-11-11 01:33:12
*/

CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON web.* TO 'tlbb'@'%';
FLUSH PRIVILEGES;
-- --------------------------------------------------------
use `web`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` char(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL,
  `answer` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `qq` varchar(16) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id_type` enum('IdCard') DEFAULT 'IdCard',
  `id_card` varchar(32) DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for `pay`
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `trade_no` varchar(20) NOT NULL,
  `channel` varchar(10) DEFAULT NULL,
  `server_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  PRIMARY KEY (`trade_no`),
  KEY `trade_no` (`trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for `server`
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `host` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('1', '区的名字', '60.173.26.212');
INSERT INTO `account` (`name`,`password`,`point`) VALUES ('1','c4ca4238a0b923820dcc509a6f75849b',0);

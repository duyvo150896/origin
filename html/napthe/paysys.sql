/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : account

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2016-01-18 16:25:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` char(32) NOT NULL,
  `password_hash` char(64) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `jbcoin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '????',
  `ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'tungdigital', 'e10adc3949ba59abbe56e057f20f883e', 'tungdigital@kt2kingsoft.blogspot.com', '0', '');

-- ----------------------------
-- Table structure for `jxsf8_extpoint`
-- ----------------------------
DROP TABLE IF EXISTS `jxsf8_extpoint`;
CREATE TABLE `jxsf8_extpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginName` char(32) CHARACTER SET utf8 NOT NULL,
  `nExtPoint0` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint1` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint2` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '???-???',
  `nExtPoint4` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint5` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint6` int(10) unsigned NOT NULL DEFAULT '0',
  `nExtPoint7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of jxsf8_extpoint
-- ----------------------------

-- ----------------------------
-- Table structure for `jxsf8_transferlog`
-- ----------------------------
DROP TABLE IF EXISTS `jxsf8_transferlog`;
CREATE TABLE `jxsf8_transferlog` (
  `id` bigint(20) unsigned NOT NULL,
  `accountsrc` char(32) CHARACTER SET utf8 NOT NULL,
  `accountdest` char(32) CHARACTER SET utf8 NOT NULL,
  `transferflag` tinyint(10) unsigned NOT NULL,
  `transfertype` tinyint(10) unsigned NOT NULL,
  `extpoint` tinyint(10) unsigned NOT NULL,
  `transferamount` int(10) unsigned NOT NULL,
  `result` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of jxsf8_transferlog
-- ----------------------------

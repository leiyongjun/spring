/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50556
Source Host           : 127.0.0.1:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-02-14 09:29:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hos_district
-- ----------------------------
DROP TABLE IF EXISTS `hos_district`;
CREATE TABLE `hos_district` (
  `DID` int(4) NOT NULL AUTO_INCREMENT,
  `dName` varchar(4) NOT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hos_district
-- ----------------------------
INSERT INTO `hos_district` VALUES ('1', '大祥区');
INSERT INTO `hos_district` VALUES ('2', '双清区');
INSERT INTO `hos_district` VALUES ('3', '北塔区');
INSERT INTO `hos_district` VALUES ('4', '其他区');

-- ----------------------------
-- Table structure for hos_house
-- ----------------------------
DROP TABLE IF EXISTS `hos_house`;
CREATE TABLE `hos_house` (
  `hMID` int(4) NOT NULL AUTO_INCREMENT,
  `UID` int(4) NOT NULL,
  `SID` int(4) NOT NULL,
  `hTID` int(4) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `topic` varchar(50) NOT NULL,
  `contents` varchar(255) NOT NULL,
  `hTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `copy` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`hMID`),
  KEY `fk_house_district` (`UID`),
  KEY `fk_house_street` (`SID`),
  KEY `fk_house_type` (`hTID`),
  CONSTRAINT `fk_house_district` FOREIGN KEY (`UID`) REFERENCES `sys_user` (`UID`),
  CONSTRAINT `fk_house_street` FOREIGN KEY (`SID`) REFERENCES `hos_street` (`SID`),
  CONSTRAINT `fk_house_type` FOREIGN KEY (`hTID`) REFERENCES `hos_type` (`hTID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hos_house
-- ----------------------------
INSERT INTO `hos_house` VALUES ('1', '1', '1', '1', '980.00', '龙辰花园', '好房子', '2019-04-05 07:58:17', '我是备注1');
INSERT INTO `hos_house` VALUES ('2', '2', '2', '2', '880.00', '紫金花园', '好房子', '2019-03-01 07:58:17', '我是备注2');
INSERT INTO `hos_house` VALUES ('3', '2', '3', '1', '1000.00', '商店花园', '好房子', '2019-05-05 07:58:17', '我是备注3');
INSERT INTO `hos_house` VALUES ('4', '3', '4', '1', '900.00', '富商大贾', '好房子', '2019-07-05 07:58:17', '我是备注4');
INSERT INTO `hos_house` VALUES ('5', '4', '5', '2', '780.00', '羊城大厦', '好房子', '2019-08-05 07:58:17', '我是备注5');
INSERT INTO `hos_house` VALUES ('6', '5', '6', '2', '800.00', '西湖大厦', '好房子', '2019-06-05 07:58:17', '我是备注6');
INSERT INTO `hos_house` VALUES ('7', '6', '7', '2', '920.00', '欧赔大厦', '好房子', '2019-04-05 07:58:17', '我是备注7');
INSERT INTO `hos_house` VALUES ('8', '6', '4', '1', '960.00', '积玉桥', '好房子', '2019-08-05 07:58:17', '我是备注8');
INSERT INTO `hos_house` VALUES ('9', '6', '3', '1', '1100.00', 'NEO大厦', '好房子', '2019-07-05 07:58:17', '我是备注8');

-- ----------------------------
-- Table structure for hos_street
-- ----------------------------
DROP TABLE IF EXISTS `hos_street`;
CREATE TABLE `hos_street` (
  `SID` int(4) NOT NULL AUTO_INCREMENT,
  `sName` varchar(50) NOT NULL,
  `sDID` int(4) NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `fk_street_district` (`sDID`),
  CONSTRAINT `fk_street_district` FOREIGN KEY (`sDID`) REFERENCES `hos_district` (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hos_street
-- ----------------------------
INSERT INTO `hos_street` VALUES ('1', '翠园街道', '1');
INSERT INTO `hos_street` VALUES ('2', '红旗路街道', '1');
INSERT INTO `hos_street` VALUES ('3', '塔北路街道', '3');
INSERT INTO `hos_street` VALUES ('4', '西湖街道', '3');
INSERT INTO `hos_street` VALUES ('5', '双坡路街道', '2');
INSERT INTO `hos_street` VALUES ('6', '东风路街道', '2');
INSERT INTO `hos_street` VALUES ('7', '其他街道', '4');

-- ----------------------------
-- Table structure for hos_type
-- ----------------------------
DROP TABLE IF EXISTS `hos_type`;
CREATE TABLE `hos_type` (
  `hTID` int(4) NOT NULL AUTO_INCREMENT,
  `hTName` varchar(10) NOT NULL,
  PRIMARY KEY (`hTID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hos_type
-- ----------------------------
INSERT INTO `hos_type` VALUES ('1', '两室一厅');
INSERT INTO `hos_type` VALUES ('2', '一室一厅');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `UID` int(4) NOT NULL AUTO_INCREMENT,
  `uName` varchar(10) NOT NULL,
  `uPassWord` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '张三', '123456');
INSERT INTO `sys_user` VALUES ('2', '张四', '123456');
INSERT INTO `sys_user` VALUES ('3', '张五', '123456');
INSERT INTO `sys_user` VALUES ('4', '张六', '123456');
INSERT INTO `sys_user` VALUES ('5', '张七', '123456');
INSERT INTO `sys_user` VALUES ('6', '张八', '123456');

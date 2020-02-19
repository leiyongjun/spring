/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50556
Source Host           : 127.0.0.1:3306
Source Database       : myschool

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-02-18 16:02:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `customerName` char(10) DEFAULT NULL,
  `currentMoney` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('张三', '800.00');
INSERT INTO `bank` VALUES ('李四', '201.00');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `gradeID` int(4) NOT NULL COMMENT '年级编号',
  `gradeName` varchar(50) NOT NULL COMMENT '年级名称',
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', 'S1');
INSERT INTO `grade` VALUES ('2', 'S2');
INSERT INTO `grade` VALUES ('3', 'Y2');

-- ----------------------------
-- Table structure for grade_copy
-- ----------------------------
DROP TABLE IF EXISTS `grade_copy`;
CREATE TABLE `grade_copy` (
  `gradeID` int(4) NOT NULL COMMENT '年级编号',
  `gradeName` varchar(50) NOT NULL COMMENT '年级名称',
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade_copy
-- ----------------------------
INSERT INTO `grade_copy` VALUES ('1', 'S1');
INSERT INTO `grade_copy` VALUES ('2', 'S2');
INSERT INTO `grade_copy` VALUES ('3', 'Y2');

-- ----------------------------
-- Table structure for personlist
-- ----------------------------
DROP TABLE IF EXISTS `personlist`;
CREATE TABLE `personlist` (
  `studentNo` int(4) NOT NULL COMMENT '学号',
  `loginPwd` varchar(20) NOT NULL COMMENT '密码',
  `studentName` varchar(50) NOT NULL COMMENT '学生姓名',
  `sex` char(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `gradeId` int(4) unsigned DEFAULT NULL COMMENT '年级编号',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `bornDate` datetime DEFAULT NULL COMMENT '出生时间',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件账号',
  `identityCard` varchar(18) DEFAULT NULL COMMENT '身份证号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personlist
-- ----------------------------

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `studentNo` int(4) NOT NULL COMMENT '学号',
  `subjectNo` int(4) NOT NULL COMMENT '课程编号',
  `examDate` datetime NOT NULL COMMENT '考试日期',
  `studentResult` int(4) NOT NULL COMMENT '考试成绩',
  KEY `index_result` (`studentResult`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('10000', '1', '2016-02-17 00:00:00', '71');
INSERT INTO `result` VALUES ('10000', '3', '2016-02-19 00:00:00', '60');
INSERT INTO `result` VALUES ('10001', '2', '2016-02-26 00:00:00', '46');
INSERT INTO `result` VALUES ('10002', '1', '2016-02-17 00:00:00', '83');
INSERT INTO `result` VALUES ('10003', '2', '2016-02-26 00:00:00', '60');
INSERT INTO `result` VALUES ('10004', '1', '2016-02-17 00:00:00', '60');
INSERT INTO `result` VALUES ('10005', '3', '2016-02-19 00:00:00', '95');
INSERT INTO `result` VALUES ('10006', '1', '2016-02-17 00:00:00', '93');
INSERT INTO `result` VALUES ('10007', '1', '2016-02-17 00:00:00', '23');
INSERT INTO `result` VALUES ('10000', '2', '2016-02-26 00:00:00', '81');
INSERT INTO `result` VALUES ('10001', '2', '2016-02-17 00:00:00', '78');
INSERT INTO `result` VALUES ('10005', '3', '2016-02-19 00:00:00', '90');
INSERT INTO `result` VALUES ('10006', '3', '2016-02-19 00:00:00', '88');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `loginPwd` varchar(20) NOT NULL COMMENT '密码',
  `studentName` varchar(50) NOT NULL COMMENT '学生姓名',
  `sex` char(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `gradeId` int(4) unsigned DEFAULT NULL COMMENT '年级编号',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `bornDate` datetime DEFAULT NULL COMMENT '出生时间',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件账号',
  `identityCard` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`studentNo`),
  UNIQUE KEY `idcard` (`identityCard`),
  KEY `index_name_gradeId` (`studentName`,`gradeId`)
) ENGINE=InnoDB AUTO_INCREMENT=30014 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10000', '123', '郭靖', '男', '1', '13645667783', '天津市河西区', '1990-09-08 00:00:00', null, '1');
INSERT INTO `student` VALUES ('10001', '123', '李文才', '男', '1', '13645667890', '地址不详', '1994-04-12 00:00:00', null, '2');
INSERT INTO `student` VALUES ('10002', '123', '李斯文', '男', '1', '13645556793', '河南洛阳', '1993-07-23 00:00:00', null, '3');
INSERT INTO `student` VALUES ('10003', '123', '张萍', '女', '2', '13642345112', '地址不详', '1995-06-10 00:00:00', null, '4');
INSERT INTO `student` VALUES ('10004', '123', '韩秋洁', '女', '2', '13812344566', '北京市海淀区', '1995-07-15 00:00:00', null, '5');
INSERT INTO `student` VALUES ('10005', '123', '张秋丽', '女', '2', '13567893246', '北京市东城区', '1994-01-17 00:00:00', null, '6');
INSERT INTO `student` VALUES ('10006', '123', '肖梅', '女', '1', '13563456721', '河北省石家庄市', '1991-02-17 00:00:00', null, '7');
INSERT INTO `student` VALUES ('10007', '123', '秦洋', '男', '3', '13056434411', '上海市卢湾区', '1992-04-18 00:00:00', null, '8');
INSERT INTO `student` VALUES ('10008', '123', '何睛睛', '女', '3', '13053445221', '广州市天河区', '1997-07-23 00:00:00', null, '9');
INSERT INTO `student` VALUES ('20000', '123', '王宝宝', '男', '2', '15076552323', '地址不详', '1996-06-05 00:00:00', null, '10');
INSERT INTO `student` VALUES ('20010', '123', '何小华', '女', '2', '13318877954', '地址不详', '1995-09-10 00:00:00', null, '11');
INSERT INTO `student` VALUES ('30011', '123', '陈志强', '男', '3', '13689965430', '地址不详', '1994-09-27 00:00:00', null, '12');
INSERT INTO `student` VALUES ('30012', '123', '李露露', '女', '3', '13685678854', '地址不详', '1992-09-27 00:00:00', null, '13');
INSERT INTO `student` VALUES ('30013', '1234', '张国庆', '1', '2', '13966667777', '湖南邵阳', '1999-02-09 00:00:00', null, '14');

-- ----------------------------
-- Table structure for student2
-- ----------------------------
DROP TABLE IF EXISTS `student2`;
CREATE TABLE `student2` (
  `studentNo` int(4) NOT NULL DEFAULT '0' COMMENT '学号',
  `loginPwd` varchar(20) NOT NULL COMMENT '密码',
  `studentName` varchar(50) NOT NULL COMMENT '学生姓名',
  `sex` char(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `gradeId` int(4) unsigned DEFAULT NULL COMMENT '年级编号',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `bornDate` datetime DEFAULT NULL COMMENT '出生时间',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件账号',
  `identityCard` varchar(18) DEFAULT NULL COMMENT '身份证号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student2
-- ----------------------------
INSERT INTO `student2` VALUES ('10000', '123', '郭靖', '男', '1', '13645667783', '天津市河西区', '1990-09-08 00:00:00', null, '1');
INSERT INTO `student2` VALUES ('10001', '123', '李文才', '男', '1', '13645667890', '地址不详', '1994-04-12 00:00:00', null, '2');
INSERT INTO `student2` VALUES ('10002', '123', '李斯文', '男', '1', '13645556793', '河南洛阳', '1993-07-23 00:00:00', null, '3');
INSERT INTO `student2` VALUES ('10003', '123', '张萍', '女', '2', '13642345112', '地址不详', '1995-06-10 00:00:00', null, '4');
INSERT INTO `student2` VALUES ('10004', '123', '韩秋洁', '女', '2', '13812344566', '北京市海淀区', '1995-07-15 00:00:00', null, '5');
INSERT INTO `student2` VALUES ('10005', '123', '张秋丽', '女', '2', '13567893246', '北京市东城区', '1994-01-17 00:00:00', null, '6');
INSERT INTO `student2` VALUES ('10006', '123', '肖梅', '女', '1', '13563456721', '河北省石家庄市', '1991-02-17 00:00:00', null, '7');
INSERT INTO `student2` VALUES ('10007', '123', '秦洋', '男', '3', '13056434411', '上海市卢湾区', '1992-04-18 00:00:00', null, '8');
INSERT INTO `student2` VALUES ('10008', '123', '何睛睛', '女', '3', '13053445221', '广州市天河区', '1997-07-23 00:00:00', null, '9');
INSERT INTO `student2` VALUES ('20000', '123', '王宝宝', '男', '2', '15076552323', '地址不详', '1996-06-05 00:00:00', null, '10');
INSERT INTO `student2` VALUES ('20010', '123', '何小华', '女', '2', '13318877954', '地址不详', '1995-09-10 00:00:00', null, '11');
INSERT INTO `student2` VALUES ('30011', '123', '陈志强', '男', '3', '13689965430', '地址不详', '1994-09-27 00:00:00', null, '12');
INSERT INTO `student2` VALUES ('30012', '123', '李露露', '女', '3', '13685678854', '地址不详', '1992-09-27 00:00:00', null, '13');
INSERT INTO `student2` VALUES ('30013', '1234', '张国庆', '1', '2', '13966667777', '湖南邵阳', '1999-02-09 00:00:00', null, '14');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subjectNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `subjectName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `classHour` int(4) DEFAULT NULL COMMENT '学时',
  `gradeID` int(4) DEFAULT NULL COMMENT '年级编号',
  PRIMARY KEY (`subjectNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'Logic Java', '220', '1');
INSERT INTO `subject` VALUES ('2', 'HTML', '160', '1');
INSERT INTO `subject` VALUES ('3', 'Java OOP', '230', '2');

-- ----------------------------
-- Table structure for subject_copy
-- ----------------------------
DROP TABLE IF EXISTS `subject_copy`;
CREATE TABLE `subject_copy` (
  `subjectNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `subjectName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `classHour` int(4) DEFAULT NULL COMMENT '学时',
  `gradeID` int(4) DEFAULT NULL COMMENT '年级编号',
  PRIMARY KEY (`subjectNo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of subject_copy
-- ----------------------------
INSERT INTO `subject_copy` VALUES ('4', 'Logic Java', '220', '1');
INSERT INTO `subject_copy` VALUES ('5', 'Logic Java1', '220', '3');
INSERT INTO `subject_copy` VALUES ('6', 'Logic Java2', '220', '33');
INSERT INTO `subject_copy` VALUES ('7', 'Logic Java3', '220', '333');
INSERT INTO `subject_copy` VALUES ('8', 'Logic Java4', '220', '123');

-- ----------------------------
-- View structure for student_result
-- ----------------------------
DROP VIEW IF EXISTS `student_result`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_result` AS select `s`.`studentName` AS `studentName`,`su`.`subjectName` AS `subjectName`,`r`.`studentResult` AS `studentResult`,`r`.`examDate` AS `examDate` from ((`result` `r` left join `student` `s` on((`r`.`studentNo` = `s`.`studentNo`))) left join `subject` `su` on((`su`.`subjectNo` = `r`.`subjectNo`))) ;

-- ----------------------------
-- View structure for view_student_result
-- ----------------------------
DROP VIEW IF EXISTS `view_student_result`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_student_result` AS select `student`.`studentName` AS `姓名`,`student`.`studentNo` AS `学号`,`result`.`studentResult` AS `成绩`,`subject`.`subjectName` AS `课程名称`,`result`.`examDate` AS `考试日期` from ((`student` join `result` on((`student`.`studentNo` = `result`.`studentNo`))) join `subject` on((`result`.`subjectNo` = `subject`.`subjectNo`))) where ((`subject`.`subjectNo` = (select `subject`.`subjectNo` from `subject` where (`subject`.`subjectName` = 'Logic Java'))) and (`result`.`examDate` = (select max(`result`.`examDate`) from (`result` join `subject`) where ((`result`.`subjectNo` = `subject`.`subjectNo`) and (`subject`.`subjectName` = 'Logic Java'))))) ;

-- ----------------------------
-- View structure for v_student_subject_avg
-- ----------------------------
DROP VIEW IF EXISTS `v_student_subject_avg`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_student_subject_avg` AS select `s`.`studentNo` AS `studentNo`,`s`.`studentName` AS `studentNAME`,`su`.`subjectName` AS `subjectName`,avg(`r`.`studentResult`) AS `avg(studentResult)` from ((`result` `r` join `student` `s`) join `subject` `su`) where ((`s`.`studentNo` = `r`.`studentNo`) and (`r`.`subjectNo` = `su`.`subjectNo`)) group by `r`.`studentNo`,`r`.`subjectNo` ;

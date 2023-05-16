/*
Navicat MySQL Data Transfer

Source Server         : 47.101.198.61
Source Server Version : 50505
Source Host           : 47.101.198.61:3306
Source Database       : jsp_personmanager

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-01-09 13:29:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('2', 'admin', 'admin', '超级管理员', '2019-06-12 10:14:33');
INSERT INTO `allusers` VALUES ('5', '111', '111', '超级管理员', '2019-04-10 14:11:05');
INSERT INTO `allusers` VALUES ('6', 'user', '123456', '员工', '2019-07-10 17:40:13');

-- ----------------------------
-- Table structure for `bumenxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE `bumenxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bumen` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bumenxinxi
-- ----------------------------
INSERT INTO `bumenxinxi` VALUES ('3', '销售部', '2019-04-10 04:04:18');
INSERT INTO `bumenxinxi` VALUES ('4', '技术部', '2019-04-10 14:11:13');
INSERT INTO `bumenxinxi` VALUES ('5', '人事部', '2019-04-29 17:58:35');
INSERT INTO `bumenxinxi` VALUES ('6', '测试部', '2019-05-06 12:54:54');

-- ----------------------------
-- Table structure for `gonggaoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL,
  `neirong` longtext DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES ('6', '全县中层女干部集中“充电”', '', '2019-04-29 17:43:09');
INSERT INTO `gonggaoxinxi` VALUES ('7', '钱库藏书家吴荣烈', '', '2019-04-29 17:43:09');
INSERT INTO `gonggaoxinxi` VALUES ('9', '文件上传', '', '2019-05-06 13:40:05');
INSERT INTO `gonggaoxinxi` VALUES ('10', '部门公告', '', '2019-05-06 13:39:38');
INSERT INTO `gonggaoxinxi` VALUES ('11', '123456', '<img src=\"http://localhost:8088/jspmITrlzyxt95/kindeditor_a5/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />', '2019-05-06 13:18:14');
INSERT INTO `gonggaoxinxi` VALUES ('12', '007', '<p>\r\n	<img src=\"/jspmITrlzyxt95/attached/image/20190506/20190506205113_984.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	图片\r\n</p>', '2019-05-06 20:51:28');

-- ----------------------------
-- Table structure for `gongzixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `gongzixinxi`;
CREATE TABLE `gongzixinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `yuefen` varchar(50) DEFAULT NULL,
  `jibengongzi` varchar(50) DEFAULT NULL,
  `jiabanfei` varchar(50) DEFAULT NULL,
  `jiangjin` varchar(50) DEFAULT NULL,
  `chengjin` varchar(50) DEFAULT NULL,
  `kouchuqingjiafeiyong` varchar(50) DEFAULT NULL,
  `kouchukuanggongfeiyong` varchar(50) DEFAULT NULL,
  `kouchushuifei` varchar(50) DEFAULT NULL,
  `kouchubaoxianfei` varchar(50) DEFAULT NULL,
  `kouchugongjijin` varchar(50) DEFAULT NULL,
  `shifagongzi` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gongzixinxi
-- ----------------------------
INSERT INTO `gongzixinxi` VALUES ('1', '002', 'B部门', '员工B', '1月', '2500', '500', '600', '50', '60', '70', '80', '90', '100', '3150.0', '2019-04-10 05:29:25');
INSERT INTO `gongzixinxi` VALUES ('2', '001', 'A部门', '员工A', '1月', '6000', '500', '200', '50', '100', '100', '100', '100', '100', '6150.0', '2019-04-10 05:37:02');
INSERT INTO `gongzixinxi` VALUES ('3', '003', 'C部门', '视频录像', '1月', '5000', '600', '500', '200', '300', '50', '560', '60', '70', '4860.0', '2019-04-10 04:05:58');
INSERT INTO `gongzixinxi` VALUES ('4', '004', 'D部门', '陈先生', '1月', '5000', '300', '500', '300', '200', '500', '300', '20', '30', '4450.0', '2019-06-26 21:55:34');
INSERT INTO `gongzixinxi` VALUES ('5', '222', '人事部', '一二三', '6月', '2000', '200', '0', '50', '0', '0', '0', '10', '0', '2140.0', '2019-06-26 21:55:15');

-- ----------------------------
-- Table structure for `kaoqinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `kaoqinxinxi`;
CREATE TABLE `kaoqinxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `yuefen` varchar(50) DEFAULT NULL,
  `zhengchangshangban` varchar(50) DEFAULT NULL,
  `jiaban` varchar(50) DEFAULT NULL,
  `qingjia` varchar(50) DEFAULT NULL,
  `kuanggong` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqinxinxi
-- ----------------------------
INSERT INTO `kaoqinxinxi` VALUES ('1', '002', 'B部门', '员工B', '1月', '30', '20', '10', '50', '2019-04-10 05:24:21');
INSERT INTO `kaoqinxinxi` VALUES ('2', '003', 'C部门', '视频录像', '1月', '30', '20', '10', '5', '2019-04-10 04:05:27');
INSERT INTO `kaoqinxinxi` VALUES ('3', '004', 'D部门', '陈先生', '2月', '500', '20', '60', '50', '2019-04-10 14:12:23');

-- ----------------------------
-- Table structure for `qingjiaxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `qingjiaxinxi`;
CREATE TABLE `qingjiaxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `kaishishijian` varchar(50) DEFAULT NULL,
  `jieshushijian` varchar(50) DEFAULT NULL,
  `tianshu` varchar(50) DEFAULT NULL,
  `shiyou` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qingjiaxinxi
-- ----------------------------
INSERT INTO `qingjiaxinxi` VALUES ('6', '001', '张三', '2019-05-07', '2019-05-09', '3', '病假', '批准', '2019-05-07 10:03:47');
INSERT INTO `qingjiaxinxi` VALUES ('7', '004', '王先生', '2019-05-08', '2019-05-15', '8', '事假', '批准', '2019-05-07 10:08:08');

-- ----------------------------
-- Table structure for `wenjianxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `wenjianxinxi`;
CREATE TABLE `wenjianxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wenjianbianhao` varchar(50) DEFAULT NULL,
  `wenjianmingcheng` varchar(50) DEFAULT NULL,
  `wenjian` varchar(50) DEFAULT NULL,
  `wenjianjianjie` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjianxinxi
-- ----------------------------
INSERT INTO `wenjianxinxi` VALUES ('1', '4295791594', 'P文件', 'upload/1.zip', 'ok', '2019-04-29 17:43:27');
INSERT INTO `wenjianxinxi` VALUES ('2', '4295745229', 'E文件', 'upload/1.zip', 'ok', '2019-04-29 17:43:27');
INSERT INTO `wenjianxinxi` VALUES ('3', '4295795286', 'Y文件', 'upload/1.zip', '没问题', '2019-04-29 17:43:27');
INSERT INTO `wenjianxinxi` VALUES ('4', '4295795286', 'N文件', 'upload/1.zip', '没问题', '2019-04-29 17:43:27');
INSERT INTO `wenjianxinxi` VALUES ('5', '4295745229', 'G文件', 'upload/1.zip', '无', '2019-04-29 17:43:27');
INSERT INTO `wenjianxinxi` VALUES ('7', '007', '007', 'upload/1557147153552.txt', '007', '2019-05-06 20:53:06');
INSERT INTO `wenjianxinxi` VALUES ('8', 'cc', 'cc', 'upload/1557147298806.txt', 'cc', '2019-05-06 20:55:09');
INSERT INTO `wenjianxinxi` VALUES ('9', '11', '11', 'upload/1557147671125.txt', '', '2019-05-06 21:01:22');

-- ----------------------------
-- Table structure for `yuangongweihu`
-- ----------------------------
DROP TABLE IF EXISTS `yuangongweihu`;
CREATE TABLE `yuangongweihu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `chushengriqi` varchar(50) DEFAULT NULL,
  `xueli` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(50) DEFAULT NULL,
  `hetonghao` varchar(50) DEFAULT NULL,
  `ruzhishijian` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `lizhishijian` varchar(50) DEFAULT NULL,
  `lizhiyuanyin` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuangongweihu
-- ----------------------------
INSERT INTO `yuangongweihu` VALUES ('6', '001', '销售部', '张三', '女', '2019-5-29', '本科', '13769548711', '2352352@qq.com', '鑫和锦园2栋', '001', '2019-5-22', '离职', '2019-04-30', '阿萨德阿萨德阿萨德', '阿萨德阿萨德阿萨德', '2019-05-07 12:22:18');
INSERT INTO `yuangongweihu` VALUES ('7', '004', '人事部', '王先生', '男', '2019-04-01', '本科', '13658996477', '132456@qq.com', '车站大道888号', '0098984', '2019-04-03', '离职', '2019-04-30', '和伽伽加上给大家按时', '阿萨德阿萨德阿斯达四大', '2019-04-29 17:59:37');
INSERT INTO `yuangongweihu` VALUES ('8', '222', '人事部', '一二三', '男', '1998-03-05', '初中', '', '', '农村路乡', '1234', '2019-06-03', '离职', '', '', '', '2019-06-26 21:56:22');

-- ----------------------------
-- Table structure for `yuangongxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yuangongxinxi`;
CREATE TABLE `yuangongxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `chushengriqi` varchar(50) DEFAULT NULL,
  `xueli` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `hetonghao` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `ruzhishijian` varchar(50) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuangongxinxi
-- ----------------------------
INSERT INTO `yuangongxinxi` VALUES ('5', 'user', '123456', '销售部', '张三', '女', '2019-5-29', '本科', '13769548711', '2352352@qq.com', '鑫和锦园2栋', '001', '离职', '2019-05-22', '无', '2019-07-10 17:41:36');
INSERT INTO `yuangongxinxi` VALUES ('7', '003', '003', '人事部', '李四', '男', '2019-04-03', '硕士', '18888888888', 'grorti@qq.com', '车站大道888号', '0078967987', '在职', '2019-04-16', '阿萨德阿萨德阿萨德', '2019-05-07 09:48:56');
INSERT INTO `yuangongxinxi` VALUES ('8', '004', '004', '人事部', '王先生', '男', '2019-04-01', '专科', '13658996477', '132456@qq.com', '集美大道', '0098984', '离职', '2019-04-03', '冲', '2019-06-27 14:49:54');

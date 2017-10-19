/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : hzcrh_db

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-10-17 20:08:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cooler_maintain_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `cooler_maintain_statistics`;
CREATE TABLE `cooler_maintain_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `train_column` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `problem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cooler_maintain_statistics
-- ----------------------------
INSERT INTO `cooler_maintain_statistics` VALUES ('1', '2017-05-31', '15', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('2', '2017-05-31', '41', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('3', '2017-05-31', '17', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('4', '2017-05-31', '46', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('5', '2017-05-31', '47', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('6', '2017-06-01', '44', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('7', '2017-06-01', '45', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('8', '2017-06-01', '28', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('9', '2017-06-01', '57', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('10', '2017-06-01', '55', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('11', '2017-06-02', '39', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('12', '2017-06-02', '48', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('13', '2017-06-02', '16', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('14', '2017-06-02', '49', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('15', '2017-06-02', '51', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('16', '2017-06-02', '24', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('17', '2017-06-03', '38', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('18', '2017-06-03', '19', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('19', '2017-06-03', '35', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('20', '2017-06-03', '42', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('21', '2017-06-04', '52', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('22', '2017-06-04', '65', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('23', '2017-06-05', '59', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('24', '2017-06-05', '60', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('25', '2017-06-05', '36', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('26', '2017-06-05', '30', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('27', '2017-06-05', '53', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('28', '2017-06-05', '18', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('29', '2017-06-06', '12', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('30', '2017-06-06', '14', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('31', '2017-06-06', '26', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('32', '2017-06-07', '21', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('33', '2017-06-07', '13', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('34', '2017-06-07', '33', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('35', '2017-06-07', '40', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('36', '2017-06-07', '43', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('37', '2017-06-08', '29', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('38', '2017-06-08', '58', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('39', '2017-06-08', '22', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('40', '2017-06-08', '15', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('41', '2017-06-08', '17', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('42', '2017-06-09', '47', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('43', '2017-06-09', '46', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('44', '2017-06-09', '20', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('45', '2017-06-09', '50', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('46', '2017-06-09', '61', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('47', '2017-06-10', '55', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('48', '2017-06-10', '57', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('49', '2017-06-10', '54', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('50', '2017-06-10', '48', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('51', '2017-06-10', '39', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('52', '2017-06-11', '16', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('53', '2017-06-11', '56', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('54', '2017-06-11', '44', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('55', '2017-06-11', '45', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('56', '2017-06-12', '53', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('57', '2017-06-12', '42', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('58', '2017-06-12', '31', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('59', '2017-06-12', '41', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('60', '2017-06-12', '38', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('61', '2017-06-12', '12', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('62', '2017-06-13', '51', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('63', '2017-06-13', '49', '1', '');
INSERT INTO `cooler_maintain_statistics` VALUES ('64', '2017-06-13', '18', '1', '');

-- ----------------------------
-- Table structure for `cs_basic_setting`
-- ----------------------------
DROP TABLE IF EXISTS `cs_basic_setting`;
CREATE TABLE `cs_basic_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_no` varchar(50) NOT NULL,
  `bg_color` varchar(50) DEFAULT NULL,
  `header_color` varchar(50) DEFAULT NULL,
  `tb_color` varchar(50) DEFAULT NULL,
  `waiting_color` varchar(50) DEFAULT NULL,
  `working_color` varchar(50) DEFAULT NULL,
  `finish_color` varchar(50) DEFAULT NULL,
  `alert_color` varchar(50) DEFAULT NULL,
  `word_bg_color` varchar(50) DEFAULT NULL,
  `other_title_color` varchar(50) DEFAULT NULL,
  `attention_content` text,
  `moulding_content` text,
  `security_content` text,
  `loop_time` int(11) NOT NULL DEFAULT '15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_basic_setting
-- ----------------------------
INSERT INTO `cs_basic_setting` VALUES ('1', '', '#FFFFFF', '#000000', '#000000', '#000000', '#FF4949', '#13CE66', '#FF4949', '#FF4949', '#20A0FF', '作业注意事项', '立标塑形', '安全预想', '10');

-- ----------------------------
-- Table structure for `cs_clear_staff`
-- ----------------------------
DROP TABLE IF EXISTS `cs_clear_staff`;
CREATE TABLE `cs_clear_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `point_x` int(4) NOT NULL,
  `point_y` int(4) NOT NULL,
  `canvas_width` int(4) NOT NULL,
  `canvas_height` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cs_clear_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_led`
-- ----------------------------
DROP TABLE IF EXISTS `cs_led`;
CREATE TABLE `cs_led` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_no` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `font` text NOT NULL,
  `color` text NOT NULL,
  `display` tinyint(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_led
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_task`
-- ----------------------------
DROP TABLE IF EXISTS `cs_task`;
CREATE TABLE `cs_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `screen_num` int(11) unsigned NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `work_group_no` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `watcher` varchar(50) NOT NULL,
  `dispatcher` varchar(50) NOT NULL,
  `staff` varchar(50) NOT NULL,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_task
-- ----------------------------
INSERT INTO `cs_task` VALUES ('1', '1', '001', '00100102', '3', '151001', '141002', '003', '测试');

-- ----------------------------
-- Table structure for `department_info`
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_no` varchar(50) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('1', '001', '升亮', '总公司');
INSERT INTO `department_info` VALUES ('2', '001001', '上海南服务部', '上海南服务部');

-- ----------------------------
-- Table structure for `filter_cloth_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `filter_cloth_statistics`;
CREATE TABLE `filter_cloth_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `train_column` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `problem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_cloth_statistics
-- ----------------------------
INSERT INTO `filter_cloth_statistics` VALUES ('2', '2017-05-31', '15', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('3', '2017-05-31', '41', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('4', '2017-05-31', '17', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('5', '2017-05-31', '29', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('6', '2017-05-31', '38', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('7', '2017-05-31', '30', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('8', '2017-05-31', '36', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('9', '2017-05-31', '24', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('10', '2017-05-31', '54', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('11', '2017-05-31', '50', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('12', '2017-05-31', '49', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('13', '2017-05-31', '51', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('14', '2017-05-31', '46', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('15', '2017-05-31', '47', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('16', '2017-05-31', '33', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('17', '2017-05-31', '61', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('18', '2017-05-31', '13', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('19', '2017-05-31', '21', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('20', '2017-05-31', '59', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('21', '2017-05-31', '60', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('22', '2017-06-01', '44', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('23', '2017-06-01', '45', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('24', '2017-06-01', '28', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('25', '2017-06-01', '19', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('26', '2017-06-01', '54', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('27', '2017-06-01', '35', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('28', '2017-06-01', '12', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('29', '2017-06-01', '26', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('30', '2017-06-01', '22', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('31', '2017-06-01', '52', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('32', '2017-06-01', '34', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('33', '2017-06-01', '57', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('34', '2017-06-01', '55', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('35', '2017-06-01', '40', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('36', '2017-06-01', '43', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('37', '2017-06-01', '18', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('38', '2017-06-01', '20', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('39', '2017-06-01', '42', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('40', '2017-06-01', '53', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('41', '2017-06-02', '39', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('42', '2017-06-02', '48', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('43', '2017-06-02', '16', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('44', '2017-06-02', '59', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('45', '2017-06-02', '59', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('46', '2017-06-02', '50', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('47', '2017-06-02', '29', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('48', '2017-06-02', '36', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('49', '2017-06-02', '41', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('50', '2017-06-02', '60', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('51', '2017-06-02', '15', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('52', '2017-06-02', '17', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('53', '2017-06-02', '46', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('54', '2017-06-02', '47', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('55', '2017-06-02', '49', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('56', '2017-06-02', '51', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('57', '2017-06-02', '33', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('58', '2017-06-02', '30', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('59', '2017-06-02', '24', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('60', '2017-06-02', '12', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('61', '2017-06-02', '13', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('62', '2017-06-02', '21', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('63', '2017-06-03', '38', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('64', '2017-06-03', '61', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('65', '2017-06-03', '42', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('66', '2017-06-03', '53', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('67', '2017-06-03', '44', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('68', '2017-06-03', '45', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('69', '2017-06-03', '28', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('70', '2017-06-03', '18', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('71', '2017-06-03', '19', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('72', '2017-06-03', '34', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('73', '2017-06-03', '57', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('74', '2017-06-03', '55', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('75', '2017-06-03', '40', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('76', '2017-06-03', '43', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('77', '2017-06-03', '20', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('78', '2017-06-03', '14', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('79', '2017-06-03', '22', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('80', '2017-06-04', '52', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('81', '2017-06-04', '65', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('82', '2017-06-05', '59', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('83', '2017-06-05', '26', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('84', '2017-06-05', '49', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('85', '2017-06-05', '51', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('86', '2017-06-05', '60', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('87', '2017-06-05', '16', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('88', '2017-06-05', '33', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('89', '2017-06-05', '41', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('90', '2017-06-05', '48', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('91', '2017-06-05', '39', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('92', '2017-06-05', '15', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('93', '2017-06-05', '17', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('94', '2017-06-05', '13', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('95', '2017-06-05', '21', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('96', '2017-06-05', '50', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('97', '2017-06-05', '46', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('98', '2017-06-05', '47', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('99', '2017-06-05', '36', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('100', '2017-06-05', '30', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('101', '2017-06-05', '29', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('102', '2017-06-05', '24', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('103', '2017-06-05', '19', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('104', '2017-06-05', '54', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('105', '2017-06-05', '35', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('106', '2017-06-05', '44', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('107', '2017-06-05', '45', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('108', '2017-06-05', '61', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('109', '2017-06-05', '34', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('110', '2017-06-05', '57', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('111', '2017-06-05', '55', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('112', '2017-06-05', '40', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('113', '2017-06-05', '43', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('114', '2017-06-05', '42', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('115', '2017-06-05', '53', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('116', '2017-06-05', '18', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('117', '2017-06-05', '22', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('118', '2017-06-06', '12', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('119', '2017-06-06', '14', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('120', '2017-06-06', '28', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('121', '2017-06-06', '59', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('122', '2017-06-06', '65', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('123', '2017-06-06', '49', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('124', '2017-06-06', '51', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('125', '2017-06-06', '15', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('126', '2017-06-06', '17', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('127', '2017-06-06', '46', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('128', '2017-06-06', '47', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('129', '2017-06-06', '52', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('130', '2017-06-06', '38', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('131', '2017-06-06', '48', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('132', '2017-06-06', '39', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('133', '2017-06-06', '41', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('134', '2017-06-06', '60', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('135', '2017-06-06', '16', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('136', '2017-06-06', '26', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('137', '2017-06-07', '21', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('138', '2017-06-07', '13', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('139', '2017-06-07', '33', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('140', '2017-06-07', '24', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('141', '2017-06-07', '19', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('142', '2017-06-07', '57', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('143', '2017-06-07', '55', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('144', '2017-06-07', '20', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('145', '2017-06-07', '18', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('146', '2017-06-07', '40', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('147', '2017-06-07', '43', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('148', '2017-06-07', '61', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('149', '2017-06-07', '50', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('150', '2017-06-07', '44', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('151', '2017-06-07', '45', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('152', '2017-06-07', '30', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('153', '2017-06-07', '35', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('154', '2017-06-07', '42', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('155', '2017-06-07', '53', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('156', '2017-06-08', '29', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('157', '2017-06-08', '58', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('158', '2017-06-08', '22', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('159', '2017-06-08', '36', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('160', '2017-06-08', '59', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('161', '2017-06-08', '65', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('162', '2017-06-08', '49', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('163', '2017-06-08', '51', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('164', '2017-06-08', '28', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('165', '2017-06-08', '26', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('166', '2017-06-08', '48', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('167', '2017-06-08', '39', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('168', '2017-06-08', '54', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('169', '2017-06-08', '12', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('170', '2017-06-08', '15', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('171', '2017-06-08', '17', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('172', '2017-06-08', '41', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('173', '2017-06-08', '38', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('174', '2017-06-08', '60', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('175', '2017-06-08', '16', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('176', '2017-06-08', '14', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('177', '2017-06-09', '47', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('178', '2017-06-09', '46', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('179', '2017-06-09', '30', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('180', '2017-06-09', '34', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('181', '2017-06-09', '44', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('182', '2017-06-09', '45', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('183', '2017-06-09', '35', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('184', '2017-06-09', '20', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('185', '2017-06-09', '21', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('186', '2017-06-09', '19', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('187', '2017-06-09', '42', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('188', '2017-06-09', '53', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('189', '2017-06-09', '50', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('190', '2017-06-09', '26', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('191', '2017-06-09', '33', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('192', '2017-06-09', '24', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('193', '2017-06-09', '40', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('194', '2017-06-09', '43', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('195', '2017-06-09', '61', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('196', '2017-06-10', '55', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('197', '2017-06-10', '57', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('198', '2017-06-10', '18', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('199', '2017-06-10', '59', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('200', '2017-06-10', '52', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('201', '2017-06-10', '49', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('202', '2017-06-10', '51', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('203', '2017-06-10', '15', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('204', '2017-06-10', '17', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('205', '2017-06-10', '41', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('206', '2017-06-10', '38', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('207', '2017-06-10', '48', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('208', '2017-06-10', '39', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('209', '2017-06-10', '60', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('210', '2017-06-10', '28', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('211', '2017-06-10', '54', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('212', '2017-06-10', '12', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('213', '2017-06-10', '65', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('214', '2017-06-10', '29', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('215', '2017-06-10', '22', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('216', '2017-06-11', '16', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('217', '2017-06-11', '56', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('218', '2017-06-11', '36', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('219', '2017-06-11', '14', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('220', '2017-06-11', '13', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('221', '2017-06-11', '30', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('222', '2017-06-11', '33', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('223', '2017-06-11', '46', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('224', '2017-06-11', '47', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('225', '2017-06-11', '40', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('226', '2017-06-11', '43', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('227', '2017-06-11', '34', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('228', '2017-06-11', '21', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('229', '2017-06-11', '19', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('230', '2017-06-11', '26', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('231', '2017-06-11', '65', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('232', '2017-06-11', '29', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('233', '2017-06-11', '50', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('234', '2017-06-11', '24', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('235', '2017-06-11', '44', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('236', '2017-06-11', '45', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('237', '2017-06-11', '20', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('238', '2017-06-12', '53', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('239', '2017-06-12', '42', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('240', '2017-06-12', '31', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('241', '2017-06-12', '35', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('242', '2017-06-12', '59', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('243', '2017-06-12', '28', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('244', '2017-06-12', '15', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('245', '2017-06-12', '17', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('246', '2017-06-12', '60', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('247', '2017-06-12', '58', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('248', '2017-06-12', '41', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('249', '2017-06-12', '38', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('250', '2017-06-12', '57', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('251', '2017-06-12', '55', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('252', '2017-06-12', '48', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('253', '2017-06-12', '39', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('254', '2017-06-12', '12', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('255', '2017-06-12', '54', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('256', '2017-06-12', '61', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('257', '2017-06-12', '52', '96', '');
INSERT INTO `filter_cloth_statistics` VALUES ('258', '2017-06-13', '51', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('259', '2017-06-13', '49', '48', '');
INSERT INTO `filter_cloth_statistics` VALUES ('260', '2017-06-13', '18', '48', '');

-- ----------------------------
-- Table structure for `filter_dust_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `filter_dust_statistics`;
CREATE TABLE `filter_dust_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `train_column` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `problem` text,
  `train_model` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_dust_statistics
-- ----------------------------
INSERT INTO `filter_dust_statistics` VALUES ('1', '2017-05-31', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('2', '2017-05-31', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('3', '2017-05-31', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('4', '2017-05-31', '29', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('5', '2017-05-31', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('6', '2017-05-31', '30', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('7', '2017-05-31', '36', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('8', '2017-05-31', '24', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('9', '2017-05-31', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('10', '2017-05-31', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('11', '2017-05-31', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('12', '2017-05-31', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('13', '2017-05-31', '33', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('14', '2017-05-31', '61', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('15', '2017-05-31', '13', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('16', '2017-05-31', '21', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('17', '2017-05-31', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('18', '2017-05-31', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('19', '2017-06-01', '44', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('20', '2017-06-01', '45', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('21', '2017-06-01', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('22', '2017-06-01', '19', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('23', '2017-06-01', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('24', '2017-06-01', '35', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('25', '2017-06-01', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('26', '2017-06-01', '26', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('27', '2017-06-01', '22', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('28', '2017-06-01', '52', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('29', '2017-06-01', '34', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('30', '2017-06-01', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('31', '2017-06-01', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('32', '2017-06-01', '40', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('33', '2017-06-01', '43', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('34', '2017-06-01', '18', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('35', '2017-06-01', '20', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('36', '2017-06-01', '42', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('37', '2017-06-01', '53', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('38', '2017-06-02', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('39', '2017-06-02', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('40', '2017-06-02', '16', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('41', '2017-06-02', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('42', '2017-06-02', '50', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('43', '2017-06-02', '29', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('44', '2017-06-02', '36', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('45', '2017-06-02', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('46', '2017-06-02', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('47', '2017-06-02', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('48', '2017-06-02', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('49', '2017-06-02', '46', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('50', '2017-06-02', '47', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('51', '2017-06-02', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('52', '2017-06-02', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('53', '2017-06-02', '33', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('54', '2017-06-02', '30', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('55', '2017-06-02', '24', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('56', '2017-06-02', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('57', '2017-06-02', '13', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('58', '2017-06-02', '21', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('59', '2017-06-03', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('60', '2017-06-03', '61', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('61', '2017-06-03', '42', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('62', '2017-06-03', '53', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('63', '2017-06-03', '44', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('64', '2017-06-03', '45', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('65', '2017-06-03', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('66', '2017-06-03', '18', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('67', '2017-06-03', '19', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('68', '2017-06-03', '34', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('69', '2017-06-03', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('70', '2017-06-03', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('71', '2017-06-03', '40', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('72', '2017-06-03', '43', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('73', '2017-06-03', '20', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('74', '2017-06-03', '14', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('75', '2017-06-03', '22', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('76', '2017-06-03', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('77', '2017-06-03', '35', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('78', '2017-06-04', '52', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('79', '2017-06-04', '65', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('80', '2017-06-05', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('81', '2017-06-05', '26', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('82', '2017-06-05', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('83', '2017-06-05', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('84', '2017-06-05', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('85', '2017-06-05', '16', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('86', '2017-06-05', '33', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('87', '2017-06-05', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('88', '2017-06-05', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('89', '2017-06-05', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('90', '2017-06-05', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('91', '2017-06-05', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('92', '2017-06-05', '13', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('93', '2017-06-05', '21', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('94', '2017-06-05', '50', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('95', '2017-06-05', '46', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('96', '2017-06-05', '47', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('97', '2017-06-05', '36', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('98', '2017-06-05', '30', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('99', '2017-06-05', '29', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('100', '2017-06-05', '24', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('101', '2017-06-05', '19', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('102', '2017-06-05', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('103', '2017-06-05', '35', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('104', '2017-06-05', '44', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('105', '2017-06-05', '45', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('106', '2017-06-05', '61', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('107', '2017-06-05', '34', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('108', '2017-06-05', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('109', '2017-06-05', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('110', '2017-06-05', '40', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('111', '2017-06-05', '43', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('112', '2017-06-05', '42', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('113', '2017-06-05', '53', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('114', '2017-06-05', '18', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('115', '2017-06-05', '22', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('116', '2017-06-06', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('117', '2017-06-06', '14', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('118', '2017-06-06', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('119', '2017-06-06', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('120', '2017-06-06', '65', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('121', '2017-06-06', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('122', '2017-06-06', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('123', '2017-06-06', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('124', '2017-06-06', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('125', '2017-06-06', '46', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('126', '2017-06-06', '47', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('127', '2017-06-06', '52', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('128', '2017-06-06', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('129', '2017-06-06', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('130', '2017-06-06', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('131', '2017-06-06', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('132', '2017-06-06', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('133', '2017-06-06', '16', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('134', '2017-06-06', '26', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('135', '2017-06-07', '21', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('136', '2017-06-07', '13', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('137', '2017-06-07', '33', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('138', '2017-06-07', '24', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('139', '2017-06-07', '19', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('140', '2017-06-07', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('141', '2017-06-07', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('142', '2017-06-07', '20', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('143', '2017-06-07', '18', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('144', '2017-06-07', '40', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('145', '2017-06-07', '43', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('146', '2017-06-07', '61', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('147', '2017-06-07', '50', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('148', '2017-06-07', '44', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('149', '2017-06-07', '45', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('150', '2017-06-07', '30', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('151', '2017-06-07', '35', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('152', '2017-06-07', '42', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('153', '2017-06-07', '53', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('154', '2017-06-08', '29', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('155', '2017-06-08', '58', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('156', '2017-06-08', '22', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('157', '2017-06-08', '11', '4', '', '0');
INSERT INTO `filter_dust_statistics` VALUES ('158', '2017-06-08', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('159', '2017-06-08', '65', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('160', '2017-06-08', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('161', '2017-06-08', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('162', '2017-06-08', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('163', '2017-06-08', '26', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('164', '2017-06-08', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('165', '2017-06-08', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('166', '2017-06-08', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('167', '2017-06-08', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('168', '2017-06-08', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('169', '2017-06-08', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('170', '2017-06-08', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('171', '2017-06-08', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('172', '2017-06-08', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('173', '2017-06-08', '16', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('174', '2017-06-08', '14', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('175', '2017-06-09', '47', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('176', '2017-06-09', '46', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('177', '2017-06-09', '30', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('178', '2017-06-10', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('179', '2017-06-10', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('180', '2017-06-10', '18', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('181', '2017-06-10', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('182', '2017-06-10', '52', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('183', '2017-06-10', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('184', '2017-06-10', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('185', '2017-06-10', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('186', '2017-06-10', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('187', '2017-06-10', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('188', '2017-06-10', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('189', '2017-06-10', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('190', '2017-06-10', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('191', '2017-06-10', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('192', '2017-06-10', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('193', '2017-06-10', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('194', '2017-06-10', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('195', '2017-06-10', '65', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('196', '2017-06-10', '29', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('197', '2017-06-10', '22', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('198', '2017-06-11', '16', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('199', '2017-06-11', '56', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('200', '2017-06-11', '36', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('201', '2017-06-11', '14', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('202', '2017-06-11', '13', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('203', '2017-06-12', '11', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('204', '2017-06-12', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('205', '2017-06-12', '53', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('206', '2017-06-12', '42', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('207', '2017-06-12', '31', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('208', '2017-06-12', '35', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('209', '2017-06-12', '59', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('210', '2017-06-12', '28', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('211', '2017-06-12', '15', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('212', '2017-06-12', '17', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('213', '2017-06-12', '60', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('214', '2017-06-12', '58', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('215', '2017-06-12', '41', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('216', '2017-06-12', '38', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('217', '2017-06-12', '57', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('218', '2017-06-12', '55', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('219', '2017-06-12', '48', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('220', '2017-06-12', '39', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('221', '2017-06-12', '12', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('222', '2017-06-12', '54', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('223', '2017-06-12', '61', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('224', '2017-06-12', '52', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('225', '2017-06-13', '51', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('226', '2017-06-13', '49', '1', '', '1');
INSERT INTO `filter_dust_statistics` VALUES ('227', '2017-06-13', '18', '1', '', '1');

-- ----------------------------
-- Table structure for `filter_element_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `filter_element_statistics`;
CREATE TABLE `filter_element_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `train_column` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `problem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_element_statistics
-- ----------------------------
INSERT INTO `filter_element_statistics` VALUES ('1', '2017-05-31', '61', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('2', '2017-05-31', '21', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('3', '2017-05-31', '60', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('4', '2017-06-01', '54', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('5', '2017-06-01', '12', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('6', '2017-06-01', '57', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('7', '2017-06-01', '55', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('10', '2017-06-02', '46', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('11', '2017-06-02', '13', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('12', '2017-06-03', '45', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('13', '2017-06-03', '40', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('14', '2017-06-03', '43', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('15', '2017-06-05', '26', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('16', '2017-06-05', '15', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('17', '2017-06-05', '50', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('18', '2017-06-05', '44', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('19', '2017-06-05', '34', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('20', '2017-06-05', '53', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('21', '2017-06-05', '18', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('22', '2017-06-05', '22', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('23', '2017-06-06', '59', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('24', '2017-06-06', '52', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('25', '2017-06-07', '19', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('26', '2017-06-07', '35', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('27', '2017-06-07', '42', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('28', '2017-06-08', '48', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('29', '2017-06-08', '17', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('30', '2017-06-08', '60', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('31', '2017-06-09', '20', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('32', '2017-06-09', '21', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('33', '2017-06-09', '61', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('34', '2017-06-10', '49', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('35', '2017-06-10', '54', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('36', '2017-06-10', '12', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('37', '2017-06-11', '30', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('38', '2017-06-11', '47', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('39', '2017-06-11', '40', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('40', '2017-06-11', '43', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('41', '2017-06-11', '26', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('42', '2017-06-11', '65', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('43', '2017-06-11', '24', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('44', '2017-06-11', '45', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('45', '2017-06-12', '15', '24', '');
INSERT INTO `filter_element_statistics` VALUES ('46', '2017-06-12', '38', '24', '');

-- ----------------------------
-- Table structure for `repair_info`
-- ----------------------------
DROP TABLE IF EXISTS `repair_info`;
CREATE TABLE `repair_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_info
-- ----------------------------
INSERT INTO `repair_info` VALUES ('13', '一级修程', '#B01212', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网');
INSERT INTO `repair_info` VALUES ('14', '二级修程', '#1222CF', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网');

-- ----------------------------
-- Table structure for `situation_content`
-- ----------------------------
DROP TABLE IF EXISTS `situation_content`;
CREATE TABLE `situation_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `situation_content` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of situation_content
-- ----------------------------
INSERT INTO `situation_content` VALUES ('6', '测试1', '001001', '#0A349D');
INSERT INTO `situation_content` VALUES ('7', '测试2', '001001', '#A41010');
INSERT INTO `situation_content` VALUES ('9', 'situation', '001001', '#000000');
INSERT INTO `situation_content` VALUES ('10', 'situation34', '001001', '#000000');

-- ----------------------------
-- Table structure for `station_track`
-- ----------------------------
DROP TABLE IF EXISTS `station_track`;
CREATE TABLE `station_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_track_no` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of station_track
-- ----------------------------
INSERT INTO `station_track` VALUES ('15', 'D6-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('14', 'D6-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('13', 'D7-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('9', 'D7-1', '001001', '#DD1818');
INSERT INTO `station_track` VALUES ('16', 'D8-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('17', 'D8-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('18', 'D9-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('19', 'D9-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('20', '17-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('21', '17-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('22', '18-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('23', '18-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('24', '25-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('25', '25-1', '001001', '#000000');
INSERT INTO `station_track` VALUES ('26', '26-2', '001001', '#000000');
INSERT INTO `station_track` VALUES ('27', '26-1', '001001', '#000000');

-- ----------------------------
-- Table structure for `task_content`
-- ----------------------------
DROP TABLE IF EXISTS `task_content`;
CREATE TABLE `task_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_content` varchar(50) NOT NULL,
  `is_statistics` tinyint(4) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_content
-- ----------------------------
INSERT INTO `task_content` VALUES ('7', '车顶清洗', '1', '001001', '#E31818');
INSERT INTO `task_content` VALUES ('13', '吸污', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('14', '污箱冲洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('15', '外皮机洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('16', '外皮精洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('17', '转向架清洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('18', '滤尘网拆洗', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('19', '散热设备保养', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('20', '外皮清洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('21', 'CRH2型动车组滤芯（新）', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('22', 'CRH2型动车组滤芯（旧）', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('23', '滤网布（新）', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('24', '滤网布（旧）', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('26', '绝缘子清洁', '1', '001001', '#000000');

-- ----------------------------
-- Table structure for `task_group`
-- ----------------------------
DROP TABLE IF EXISTS `task_group`;
CREATE TABLE `task_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_group_name` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `group_member` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='作业小组\r\n跟作业计划实施的具体内容关联';

-- ----------------------------
-- Records of task_group
-- ----------------------------
INSERT INTO `task_group` VALUES ('1', '检修一班', '001001', '001,002', '检修');
INSERT INTO `task_group` VALUES ('2', '检修二班', '001001', '001,002', '检修');

-- ----------------------------
-- Table structure for `task_info`
-- ----------------------------
DROP TABLE IF EXISTS `task_info`;
CREATE TABLE `task_info` (
  `list_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `work_status` int(11) NOT NULL,
  `fault_status` int(11) NOT NULL,
  `fault_explain` text NOT NULL,
  `left_hu` varchar(11) NOT NULL,
  `right_hu` varchar(11) NOT NULL,
  `left_hang` varchar(11) NOT NULL,
  `right_hang` varchar(11) NOT NULL,
  `leader_hang` varchar(11) NOT NULL,
  `leader_hu` varchar(11) NOT NULL,
  `quality_test_hang` varchar(11) NOT NULL,
  `quality_test_hu` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_info
-- ----------------------------
INSERT INTO `task_info` VALUES ('2', '这是一个content', '2', '1', '这是一个fault explain', '张三', '李四', '王五', '赵六', '赵四', '奥斯卡', '奥黛丽', '成孔');

-- ----------------------------
-- Table structure for `task_plan`
-- ----------------------------
DROP TABLE IF EXISTS `task_plan`;
CREATE TABLE `task_plan` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `task_number` int(4) unsigned NOT NULL COMMENT '任务编号',
  `work_group_no` varchar(50) NOT NULL,
  `repair_id` bigint(11) NOT NULL,
  `repair_category` varchar(255) NOT NULL,
  `station_track_no` varchar(50) NOT NULL,
  `train_model` varchar(50) NOT NULL,
  `train_number` varchar(50) NOT NULL COMMENT '车次',
  `train_group` varchar(50) NOT NULL,
  `train_column` varchar(50) NOT NULL COMMENT '车列号',
  `task_date` date NOT NULL,
  `task_time` time NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8 COMMENT='作业计划';

-- ----------------------------
-- Records of task_plan
-- ----------------------------
INSERT INTO `task_plan` VALUES ('16', '15', '00100101', '13', '', '13', '1', '', '1', '17', '2017-04-07', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('17', '16', '00100101', '14', '', '16', '1', '', '1', '35', '2017-04-07', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('19', '18', '00100102', '14', '', '19', '1', '', '1', '56', '2017-04-12', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('20', '19', '00100102', '14', '', '18', '1', '', '1', '58', '2017-04-12', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('21', '20', '00100102', '14', '', '15', '1', '', '1', '27', '2017-04-12', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('24', '23', '00100102', '14', '', '19', '1', '', '1', '47', '2017-04-13', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('26', '24', '00100102', '14', '', '18', '1', '', '1', '39', '2017-04-14', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('28', '26', '00100101', '13', '', '9', '1', '', '1', '29', '2017-04-17', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('29', '27', '00100101', '13', '', '18', '5', '', '1', '64', '2017-04-17', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('30', '28', '00100101', '13', '', '16', '1', '', '1', '22', '2017-04-17', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('31', '29', '00100102', '14', '', '17', '1', '', '1', '51', '2017-04-18', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('32', '30', '00100101', '13', '', '15', '1', '', '1', '39', '2017-04-18', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('33', '31', '00100102', '14', '', '18', '1', '', '1', '54', '2017-04-19', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('42', '35', '00100102', '14', '二级修程', '18', '1', '', '1', '40', '2017-05-26', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('45', '36', '00100101', '13', '空调冷凝器测试测试测试长度对对对都是大发发反反复复看哈哈', '18', '1', 'D3055', '1', '22', '2017-05-26', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('46', '37', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'C3636', '1', '17', '2017-05-26', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('47', '38', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D3107', '1', '42', '2017-05-26', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('48', '39', '00100101', '13', '空调冷凝器', '9', '1', 'D3107', '1', '53', '2017-05-26', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('49', '40', '00100101', '13', '空调冷凝器', '15', '1', 'D3205', '1', '30', '2017-05-26', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('50', '41', '00100101', '13', '空调冷凝器', '14', '1', 'C3638', '1', '34', '2017-05-26', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('51', '42', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D3089', '1', '48', '2017-05-26', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('52', '43', '00100101', '13', '空调冷凝器', '17', '1', 'D3089', '1', '39', '2017-05-26', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('53', '44', '00100101', '13', '空调冷凝器', '13', '1', 'D2287', '1', '57', '2017-05-26', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('54', '45', '00100101', '13', '空调冷凝器', '9', '1', 'D2287', '1', '55', '2017-05-26', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('55', '46', '00100101', '13', '空调冷凝器', '18', '1', 'D3201', '1', '54', '2017-05-26', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('56', '47', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,牵引电机进风口,主变压器油冷却器过滤器', '19', '1', 'D3201', '1', '50', '2017-05-26', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('57', '48', '00100101', '13', '空调冷凝器', '15', '1', 'D379', '1', '12', '2017-05-26', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('58', '49', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D379', '1', '14', '2017-05-26', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('59', '50', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D2283', '1', '19', '2017-05-26', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('60', '51', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D2283', '1', '16', '2017-05-26', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('61', '52', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'D2285', '1', '61', '2017-05-26', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('62', '53', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '13', '1', '', '1', '59', '2017-05-27', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('63', '54', '00100102', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网', '15', '1', '', '1', '60', '2017-05-27', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('64', '55', '00100101', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '13', '1', '', '1', '59', '2017-05-27', '15:30:00', '3');
INSERT INTO `task_plan` VALUES ('74', '64', '00100101', '13', '空调冷凝器', '15', '1', 'D3055', '1', '15', '2017-05-28', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('75', '65', '00100101', '13', '空调冷凝器', '14', '1', 'D3055', '1', '29', '2017-05-28', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('76', '66', '00100101', '13', '空调冷凝器', '16', '1', 'D3107', '1', '42', '2017-05-28', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('77', '67', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,牵引电机进风口,主变压器油冷却器过滤器', '17', '1', 'D3107', '1', '53', '2017-05-28', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('78', '68', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D3205', '1', '18', '2017-05-28', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('79', '69', '00100101', '13', '空调冷凝器', '9', '1', 'D3205', '1', '20', '2017-05-28', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('80', '70', '00100101', '13', '空调冷凝器', '18', '1', 'C3680', '1', '17', '2017-05-28', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('81', '71', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2285', '1', '22', '2017-05-28', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('82', '72', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3201', '1', '12', '2017-05-28', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('83', '73', '00100101', '13', '空调冷凝器', '14', '1', 'D3201', '1', '14', '2017-05-28', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('84', '74', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D2287', '1', '57', '2017-05-28', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('85', '75', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D2287', '1', '55', '2017-05-28', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('86', '76', '00100101', '13', '空调冷凝器', '13', '1', 'D3089', '1', '48', '2017-05-28', '01:30:00', '3');
INSERT INTO `task_plan` VALUES ('87', '77', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'D3089', '1', '39', '2017-05-28', '01:30:00', '3');
INSERT INTO `task_plan` VALUES ('88', '78', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D3063', '1', '30', '2017-05-28', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('89', '79', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,牵引电机进风口,主变压器油冷却器过滤器', '19', '1', 'C3088', '1', '34', '2017-05-28', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('90', '80', '00100101', '13', '空调冷凝器', '15', '1', 'D2283', '1', '19', '2017-05-28', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('91', '81', '00100101', '13', '空调冷凝器', '14', '1', 'D2283', '1', '16', '2017-05-28', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('92', '82', '00100101', '13', '空调冷凝器', '16', '1', 'D9493', '1', '26', '2017-05-28', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('93', '83', '00100101', '13', '', '19', '1', 'C3676', '1', '65', '2017-05-28', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('94', '84', '00100101', '14', '空调冷凝器测试测试测试长度对对对都是大发发反反复复看哈哈,主空压机滤尘器,供排气吸入口钢网', '9', '1', '', '1', '50', '2017-05-29', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('95', '85', '00100101', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网', '13', '1', '', '1', '54', '2017-05-29', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('96', '86', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '61', '2017-05-29', '14:10:00', '3');
INSERT INTO `task_plan` VALUES ('97', '87', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '52', '2017-05-29', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('98', '88', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '38', '2017-05-29', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('99', '89', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '59', '2017-05-29', '21:50:00', '3');
INSERT INTO `task_plan` VALUES ('100', '90', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '60', '2017-05-29', '21:50:00', '3');
INSERT INTO `task_plan` VALUES ('101', '91', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '24', '2017-05-29', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('102', '92', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '28', '2017-05-29', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('103', '93', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '13', '2017-05-29', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('104', '94', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '21', '2017-05-29', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('105', '95', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '49', '2017-05-29', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('106', '96', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '51', '2017-05-29', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('107', '97', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '45', '2017-05-29', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('108', '98', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '44', '2017-05-29', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('109', '99', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '46', '2017-05-29', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('110', '100', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '47', '2017-05-29', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('111', '101', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '62', '2017-05-29', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('112', '102', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '36', '2017-05-29', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('113', '103', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '35', '2017-05-29', '04:30:00', '3');
INSERT INTO `task_plan` VALUES ('114', '104', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '33', '2017-05-29', '04:30:00', '3');
INSERT INTO `task_plan` VALUES ('115', '105', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '41', '2017-05-30', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('116', '106', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引电机进风口,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D3107', '1', '42', '2017-05-30', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('117', '107', '00100101', '13', '空调冷凝器', '19', '1', 'D3107', '1', '53', '2017-05-30', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('118', '108', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D2283', '1', '19', '2017-05-30', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('119', '109', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'D2283', '1', '16', '2017-05-30', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('120', '110', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D3089', '1', '48', '2017-05-30', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('121', '111', '00100101', '13', '空调冷凝器', '17', '1', 'D3089', '1', '39', '2017-05-30', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('122', '112', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3201', '1', '40', '2017-05-30', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('123', '113', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D3201', '1', '43', '2017-05-30', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('124', '114', '00100101', '13', '空调冷凝器', '18', '1', 'D379', '1', '12', '2017-05-30', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('125', '115', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D379', '1', '14', '2017-05-30', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('126', '116', '00100101', '13', '空调冷凝器', '13', '1', 'D2287', '1', '57', '2017-05-30', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('127', '117', '00100101', '13', '空调冷凝器', '9', '1', 'D2287', '1', '55', '2017-05-30', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('128', '118', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D3205', '1', '26', '2017-05-30', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('129', '119', '00100101', '13', '空调冷凝器', '17', '1', 'C3088', '1', '34', '2017-05-30', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('130', '120', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'C3676', '1', '65', '2017-05-30', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('131', '121', '00100101', '13', '空调冷凝器', '14', '1', 'C3680', '1', '22', '2017-05-30', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('132', '122', '00100101', '13', '空调冷凝器', '18', '1', 'D2285', '1', '18', '2017-05-30', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('133', '123', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2285', '1', '20', '2017-05-30', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('134', '124', '00100102', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网', '13', '1', '', '1', '15', '2017-05-31', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('135', '125', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '', '1', '41', '2017-05-31', '08:30:00', '3');
INSERT INTO `task_plan` VALUES ('136', '126', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '14', '1', '', '1', '17', '2017-05-31', '13:30:00', '3');
INSERT INTO `task_plan` VALUES ('137', '127', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,裙板滤网', '9', '1', '', '1', '29', '2017-05-31', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('138', '128', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '38', '2017-05-31', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('139', '129', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '30', '2017-05-31', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('140', '130', '00100101', '13', '', '15', '1', '', '1', '62', '2017-05-31', '21:50:00', '3');
INSERT INTO `task_plan` VALUES ('141', '131', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '36', '2017-05-31', '21:50:00', '3');
INSERT INTO `task_plan` VALUES ('142', '132', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '24', '2017-05-31', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('143', '133', '00100101', '13', '', '19', '1', '', '1', '28', '2017-05-31', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('144', '134', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '54', '2017-05-31', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('145', '135', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '50', '2017-05-31', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('146', '136', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '49', '2017-05-31', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('147', '137', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '51', '2017-05-31', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('148', '138', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '46', '2017-05-31', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('149', '139', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '47', '2017-05-31', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('150', '140', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '33', '2017-05-31', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('151', '141', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '61', '2017-05-31', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('152', '142', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '13', '2017-05-31', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('153', '143', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '21', '2017-05-31', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('154', '144', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '59', '2017-05-31', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('155', '145', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '60', '2017-05-31', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('156', '146', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '14', '1', '', '1', '44', '2017-06-01', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('157', '147', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '15', '1', '', '1', '45', '2017-06-01', '08:30:00', '3');
INSERT INTO `task_plan` VALUES ('159', '149', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '19', '2017-06-01', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('160', '150', '00100101', '13', '', '13', '1', '', '1', '14', '2017-06-01', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('161', '151', '00100102', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网', '18', '1', '', '1', '28', '2017-06-01', '13:30:00', '3');
INSERT INTO `task_plan` VALUES ('162', '152', '00100102', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3055', '1', '54', '2017-06-01', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('163', '153', '00100101', '13', '空调冷凝器', '14', '1', 'C3632', '1', '35', '2017-06-01', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('164', '154', '00100102', '13', '', '16', '1', 'D2284', '1', '16', '2017-06-01', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('165', '155', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D2284', '1', '12', '2017-06-01', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('166', '156', '00100102', '13', '空调冷凝器', '13', '1', 'D3205', '1', '26', '2017-06-01', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('167', '157', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'C3638', '1', '22', '2017-06-01', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('168', '158', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'C3636', '1', '52', '2017-06-01', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('169', '159', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2285', '1', '34', '2017-06-01', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('170', '160', '00100102', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,牵引电机进风口,主变压器油冷却器过滤器', '15', '1', 'D3201', '1', '57', '2017-06-01', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('171', '161', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D3201', '1', '55', '2017-06-01', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('172', '162', '00100102', '13', '空调冷凝器', '16', '1', 'D379', '1', '40', '2017-06-01', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('173', '163', '00100101', '13', '空调冷凝器', '17', '1', 'D379', '1', '43', '2017-06-01', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('174', '164', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D3089', '1', '18', '2017-06-01', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('176', '166', '00100101', '13', '空调冷凝器', '9', '1', 'D3089', '1', '20', '2017-06-01', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('177', '167', '00100102', '13', '空调冷凝器', '18', '1', 'D3107', '1', '42', '2017-06-01', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('178', '168', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D3107', '1', '53', '2017-06-01', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('179', '169', '00100102', '13', '', '15', '1', 'D3063', '1', '65', '2017-06-01', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('180', '170', '00100101', '13', '', '26', '1', '备开', '1', '14', '2017-06-01', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('181', '171', '00100101', '13', '', '24', '1', '备开', '1', '44', '2017-06-01', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('182', '172', '00100101', '13', '', '25', '1', '备开', '1', '45', '2017-06-01', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('183', '173', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '17', '1', '', '1', '39', '2017-06-02', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('186', '176', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '16', '2017-06-02', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('187', '177', '00100101', '13', '', '15', '1', '', '1', '26', '2017-06-02', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('188', '178', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '16', '1', '', '1', '48', '2017-06-02', '08:30:00', '3');
INSERT INTO `task_plan` VALUES ('189', '179', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '59', '2017-06-02', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('190', '180', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '50', '2017-06-02', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('191', '181', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '29', '2017-06-02', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('192', '182', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '36', '2017-06-02', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('193', '183', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '41', '2017-06-02', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('194', '184', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '60', '2017-06-02', '22:30:00', '3');
INSERT INTO `task_plan` VALUES ('195', '185', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '15', '2017-06-02', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('196', '186', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '17', '2017-06-02', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('197', '187', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '46', '2017-06-02', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('198', '188', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '47', '2017-06-02', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('199', '189', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '49', '2017-06-02', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('200', '190', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '51', '2017-06-02', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('201', '191', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '33', '2017-06-02', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('202', '192', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '30', '2017-06-02', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('203', '193', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,牵引电机进风口,主变压器油冷却器过滤器', '13', '1', '', '1', '24', '2017-06-02', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('204', '194', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '12', '2017-06-02', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('205', '195', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '13', '2017-06-02', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('206', '196', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '21', '2017-06-02', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('207', '197', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '', '1', '38', '2017-06-03', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('208', '198', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '61', '2017-06-03', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('209', '199', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3107', '1', '42', '2017-06-03', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('210', '200', '00100101', '13', '空调冷凝器', '14', '1', 'D3107', '1', '53', '2017-06-03', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('211', '201', '00100102', '13', '空调冷凝器', '16', '1', 'D3055', '1', '44', '2017-06-03', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('212', '202', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'C3680', '1', '45', '2017-06-03', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('213', '203', '00100102', '13', '空调冷凝器', '13', '1', 'C3676', '1', '28', '2017-06-03', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('214', '204', '00100101', '13', '空调冷凝器', '9', '1', 'D3205', '1', '18', '2017-06-03', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('215', '205', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'C3088', '1', '19', '2017-06-03', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('216', '206', '00100101', '13', '空调冷凝器', '19', '1', 'D2285', '1', '34', '2017-06-03', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('217', '207', '00100102', '13', '空调冷凝器', '15', '1', 'D2287', '1', '57', '2017-06-03', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('218', '208', '00100101', '13', '空调冷凝器', '14', '1', 'D2287', '1', '55', '2017-06-03', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('219', '209', '00100102', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '40', '2017-06-03', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('220', '210', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D9915', '1', '43', '2017-06-03', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('221', '211', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D3063', '1', '20', '2017-06-03', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('222', '212', '00100101', '13', '空调冷凝器', '9', '1', 'D379', '1', '14', '2017-06-03', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('223', '213', '00100101', '13', '空调冷凝器', '19', '1', 'D3089', '1', '22', '2017-06-03', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('224', '214', '00100102', '13', '空调冷凝器', '15', '1', 'D2283', '1', '54', '2017-06-03', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('225', '215', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D2283', '1', '35', '2017-06-03', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('226', '216', '00100101', '13', '', '26', '1', 'D3089', '1', '65', '2017-06-03', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('227', '217', '00100101', '13', '', '26', '1', '备开', '1', '61', '2017-06-03', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('228', '218', '00100101', '13', '', '27', '1', '备开', '1', '38', '2017-06-03', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('229', '219', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '16', '1', '', '1', '52', '2017-06-04', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('230', '220', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '18', '1', '', '1', '65', '2017-06-04', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('232', '221', '00100101', '13', '', '17', '1', '', '1', '38', '2017-06-04', '10:30:00', '3');
INSERT INTO `task_plan` VALUES ('233', '222', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '59', '2017-06-04', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('234', '223', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '26', '2017-06-04', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('235', '224', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '49', '2017-06-04', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('236', '225', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '51', '2017-06-04', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('237', '226', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '60', '2017-06-04', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('238', '227', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '16', '2017-06-04', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('239', '228', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '33', '2017-06-04', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('240', '229', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '41', '2017-06-04', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('241', '230', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '48', '2017-06-04', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('242', '231', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '39', '2017-06-04', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('243', '232', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '15', '2017-06-04', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('244', '233', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '17', '2017-06-04', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('245', '234', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '13', '2017-06-04', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('246', '235', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '21', '2017-06-04', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('247', '236', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '50', '2017-06-04', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('248', '237', '00100101', '13', '', '14', '1', '', '1', '30', '2017-06-04', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('249', '238', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '46', '2017-06-04', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('250', '239', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '47', '2017-06-04', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('251', '240', '00100101', '13', '', '27', '1', '', '1', '52', '2017-06-04', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('252', '241', '00100101', '13', '', '26', '1', '', '1', '38', '2017-06-04', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('253', '242', '00100101', '13', '', '22', '1', '', '1', '65', '2017-06-04', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('254', '243', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '9', '1', '', '1', '36', '2017-06-05', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('255', '244', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '16', '1', 'C3642', '1', '30', '2017-06-05', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('256', '245', '00100102', '13', '', '14', '1', '备开', '1', '20', '2017-06-05', '10:30:00', '3');
INSERT INTO `task_plan` VALUES ('257', '246', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '备开', '1', '29', '2017-06-05', '13:30:30', '3');
INSERT INTO `task_plan` VALUES ('258', '247', '00100102', '13', '空调冷凝器', '13', '1', 'D3055', '1', '24', '2017-06-05', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('259', '248', '00100101', '13', '空调冷凝器', '9', '1', 'C3632', '1', '19', '2017-06-05', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('260', '249', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'D3107', '1', '54', '2017-06-05', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('261', '250', '00100101', '13', '空调冷凝器', '17', '1', 'D3107', '1', '35', '2017-06-05', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('262', '251', '00100102', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3089', '1', '44', '2017-06-05', '22:30:00', '3');
INSERT INTO `task_plan` VALUES ('263', '252', '00100101', '13', '空调冷凝器', '14', '1', 'D3089', '1', '45', '2017-06-05', '22:30:00', '3');
INSERT INTO `task_plan` VALUES ('264', '253', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'C3638', '1', '61', '2017-06-05', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('265', '254', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2285', '1', '34', '2017-06-05', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('266', '255', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D2287', '1', '57', '2017-06-05', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('267', '256', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'D2287', '1', '55', '2017-06-05', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('268', '257', '00100102', '13', '空调冷凝器', '16', '1', 'D9915', '1', '40', '2017-06-05', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('269', '258', '00100101', '13', '空调冷凝器', '17', '1', 'D9915', '1', '43', '2017-06-05', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('270', '259', '00100102', '13', '空调冷凝器', '18', '1', 'D2283', '1', '42', '2017-06-05', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('271', '260', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2283', '1', '53', '2017-06-05', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('272', '261', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3205', '1', '18', '2017-06-05', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('273', '262', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D3201', '1', '22', '2017-06-05', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('274', '263', '00100101', '13', '', '26', '1', '备开', '1', '30', '2017-06-05', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('275', '264', '00100101', '13', '', '27', '1', '备开', '1', '29', '2017-06-05', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('276', '265', '00100102', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '9', '1', '备开', '1', '12', '2017-06-06', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('277', '266', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '13', '1', '备开', '1', '14', '2017-06-06', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('278', '267', '00100101', '13', '', '15', '1', '备开', '1', '54', '2017-06-06', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('279', '268', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '14', '1', '备开', '1', '28', '2017-06-06', '10:30:00', '3');
INSERT INTO `task_plan` VALUES ('280', '269', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '59', '2017-06-06', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('281', '270', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '65', '2017-06-06', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('282', '271', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '49', '2017-06-06', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('283', '272', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '51', '2017-06-06', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('284', '273', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '15', '2017-06-06', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('285', '274', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '17', '2017-06-06', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('286', '275', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '46', '2017-06-06', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('287', '276', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '47', '2017-06-06', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('288', '277', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '52', '2017-06-06', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('289', '278', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '38', '2017-06-06', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('290', '279', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '48', '2017-06-06', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('291', '280', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '39', '2017-06-06', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('292', '281', '00100101', '13', '', '15', '1', '', '1', '33', '2017-06-06', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('293', '282', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '41', '2017-06-06', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('294', '283', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '60', '2017-06-06', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('295', '284', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '16', '2017-06-06', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('296', '285', '00100101', '13', '', '13', '1', '', '1', '34', '2017-06-06', '04:30:00', '3');
INSERT INTO `task_plan` VALUES ('297', '286', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '26', '2017-06-06', '04:30:00', '3');
INSERT INTO `task_plan` VALUES ('298', '287', '00100101', '13', '', '27', '1', '', '1', '12', '2017-06-06', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('299', '288', '00100101', '13', '', '26', '1', '', '1', '14', '2017-06-06', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('300', '289', '00100101', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '17', '1', '', '1', '21', '2017-06-07', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('301', '290', '00100101', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网', '16', '1', '', '1', '13', '2017-06-07', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('302', '291', '00100101', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '', '1', '33', '2017-06-07', '13:30:00', '3');
INSERT INTO `task_plan` VALUES ('303', '292', '00100101', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器', '14', '1', '', '1', '11', '2017-06-07', '10:00:33', '4');
INSERT INTO `task_plan` VALUES ('304', '293', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3055', '1', '24', '2017-06-07', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('305', '294', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'C3632', '1', '19', '2017-06-07', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('306', '295', '00100102', '13', '空调冷凝器', '16', '1', 'D3107', '1', '57', '2017-06-07', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('307', '296', '00100101', '13', '空调冷凝器', '17', '1', 'D3107', '1', '55', '2017-06-07', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('308', '297', '00100101', '13', '空调冷凝器', '13', '1', 'C3636', '1', '20', '2017-06-07', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('309', '298', '00100101', '13', '空调冷凝器', '9', '1', 'D3205', '1', '18', '2017-06-07', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('310', '299', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D9915', '1', '40', '2017-06-07', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('311', '300', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D9915', '1', '43', '2017-06-07', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('312', '301', '00100101', '13', '空调冷凝器', '15', '1', 'D3201', '1', '61', '2017-06-07', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('313', '302', '00100101', '13', '空调冷凝器', '14', '1', 'D379', '1', '50', '2017-06-07', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('314', '303', '00100102', '13', '空调冷凝器', '16', '1', 'D2287', '1', '44', '2017-06-07', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('315', '304', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D2287', '1', '45', '2017-06-07', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('316', '305', '00100102', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D2285', '1', '30', '2017-06-07', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('317', '306', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'C3638', '1', '35', '2017-06-07', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('318', '307', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D2283', '1', '42', '2017-06-07', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('319', '308', '00100101', '13', '空调冷凝器', '19', '1', 'D2283', '1', '53', '2017-06-07', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('320', '309', '00100101', '13', '', '14', '1', 'D3063', '1', '22', '2017-06-07', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('321', '310', '00100101', '13', '', '26', '1', '备开', '1', '21', '2017-06-07', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('322', '311', '00100101', '13', '', '27', '1', '备开', '1', '13', '2017-06-07', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('323', '312', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '16', '1', '备开', '1', '29', '2017-06-08', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('324', '313', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '备开', '1', '58', '2017-06-08', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('325', '314', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网', '14', '1', '备开', '1', '22', '2017-06-08', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('326', '315', '00100101', '13', '', '18', '1', '备开', '1', '52', '2017-06-08', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('327', '316', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,裙板滤网', '17', '1', '备开', '1', '36', '2017-06-08', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('328', '317', '00100101', '13', '', '26', '1', '备开', '1', '52', '2017-06-08', '14:30:00', '3');
INSERT INTO `task_plan` VALUES ('329', '318', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '59', '2017-06-08', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('330', '319', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '65', '2017-06-08', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('331', '320', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '49', '2017-06-08', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('332', '321', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '51', '2017-06-08', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('333', '322', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '28', '2017-06-08', '22:00:00', '3');
INSERT INTO `task_plan` VALUES ('334', '323', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '26', '2017-06-08', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('335', '324', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '48', '2017-06-08', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('336', '325', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '39', '2017-06-08', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('337', '326', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '54', '2017-06-08', '23:30:00', '3');
INSERT INTO `task_plan` VALUES ('338', '327', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '12', '2017-06-08', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('339', '328', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '15', '2017-06-08', '00:50:00', '3');
INSERT INTO `task_plan` VALUES ('340', '329', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '17', '2017-06-08', '00:50:00', '3');
INSERT INTO `task_plan` VALUES ('341', '330', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '', '1', '41', '2017-06-08', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('342', '331', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '38', '2017-06-08', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('343', '332', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '60', '2017-06-08', '02:50:00', '3');
INSERT INTO `task_plan` VALUES ('344', '333', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '16', '2017-06-08', '02:50:00', '3');
INSERT INTO `task_plan` VALUES ('345', '334', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '14', '2017-06-08', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('346', '335', '00100101', '13', '', '26', '1', '', '1', '29', '2017-06-08', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('347', '336', '00100101', '13', '', '27', '1', '', '1', '36', '2017-06-08', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('348', '337', '00100101', '13', '', '22', '1', '', '1', '58', '2017-06-08', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('349', '338', '00100101', '13', '', '23', '1', '', '1', '22', '2017-06-08', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('350', '339', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '14', '1', '', '1', '47', '2017-06-09', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('351', '340', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '', '1', '46', '2017-06-09', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('352', '341', '00100101', '13', '', '13', '1', 'C3642', '1', '13', '2017-06-09', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('353', '342', '00100101', '13', '空调冷凝器', '18', '1', 'D3055', '1', '30', '2017-06-09', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('354', '343', '00100102', '13', '空调冷凝器', '19', '1', 'C3632', '1', '34', '2017-06-09', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('355', '344', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D3107', '1', '44', '2017-06-09', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('356', '345', '00100101', '13', '空调冷凝器', '9', '1', 'D3107', '1', '45', '2017-06-09', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('357', '346', '00100101', '13', '空调冷凝器', '16', '1', 'C3636', '1', '35', '2017-06-09', '22:30:00', '3');
INSERT INTO `task_plan` VALUES ('358', '347', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D3205', '1', '20', '2017-06-09', '22:30:00', '3');
INSERT INTO `task_plan` VALUES ('359', '348', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3089', '1', '21', '2017-06-09', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('360', '349', '00100101', '13', '空调冷凝器', '14', '1', 'D3089', '1', '19', '2017-06-09', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('361', '350', '00100101', '13', '空调冷凝器', '18', '1', 'D2283', '1', '42', '2017-06-09', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('362', '351', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D2283', '1', '53', '2017-06-09', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('363', '352', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D379', '1', '50', '2017-06-09', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('364', '353', '00100101', '13', '空调冷凝器', '9', '1', 'D9481', '1', '26', '2017-06-09', '00:00:00', '3');
INSERT INTO `task_plan` VALUES ('365', '354', '00100101', '13', '空调冷凝器', '16', '1', 'D2285', '1', '33', '2017-06-09', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('366', '355', '00100101', '13', '空调冷凝器', '17', '1', 'C3638', '1', '24', '2017-06-09', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('367', '356', '00100101', '13', '空调冷凝器', '15', '1', 'D9915', '1', '40', '2017-06-09', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('368', '357', '00100101', '13', '空调冷凝器', '14', '1', 'D9915', '1', '43', '2017-06-09', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('369', '358', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D3063', '1', '61', '2017-06-09', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('370', '359', '00100101', '13', '', '26', '1', '备开', '1', '13', '2017-06-09', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('371', '360', '00100101', '13', '', '22', '1', '备开', '1', '46', '2017-06-09', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('372', '361', '00100101', '13', '', '23', '1', '备开', '1', '47', '2017-06-09', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('373', '362', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '9', '1', '备开', '1', '55', '2017-06-10', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('374', '363', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '13', '1', '备开', '1', '57', '2017-06-10', '12:00:00', '3');
INSERT INTO `task_plan` VALUES ('375', '364', '00100101', '13', '', '15', '1', '备开', '1', '58', '2017-06-10', '11:00:00', '3');
INSERT INTO `task_plan` VALUES ('376', '365', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '备开', '1', '18', '2017-06-10', '14:00:00', '3');
INSERT INTO `task_plan` VALUES ('377', '366', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '59', '2017-06-10', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('378', '367', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '52', '2017-06-10', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('379', '368', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '49', '2017-06-10', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('380', '369', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '51', '2017-06-10', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('381', '370', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '15', '2017-06-10', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('382', '371', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '17', '2017-06-10', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('383', '372', '00100101', '13', '空调冷凝器', '15', '1', '', '1', '41', '2017-06-10', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('384', '373', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '38', '2017-06-10', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('385', '374', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '48', '2017-06-10', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('386', '375', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '39', '2017-06-10', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('387', '376', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '60', '2017-06-10', '01:30:00', '3');
INSERT INTO `task_plan` VALUES ('388', '377', '00100101', '13', '空调冷凝器', '9', '1', '', '1', '28', '2017-06-10', '01:30:00', '3');
INSERT INTO `task_plan` VALUES ('389', '378', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调冷凝器,空调蒸发器,空调换气装置滤芯,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '54', '2017-06-10', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('390', '379', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '12', '2017-06-10', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('391', '380', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '65', '2017-06-10', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('392', '381', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '29', '2017-06-10', '03:30:00', '3');
INSERT INTO `task_plan` VALUES ('393', '382', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', '', '1', '22', '2017-06-10', '04:30:00', '3');
INSERT INTO `task_plan` VALUES ('394', '383', '00100101', '13', '', '26', '1', '', '1', '18', '2017-06-10', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('395', '384', '00100101', '13', '', '22', '1', '', '1', '57', '2017-06-10', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('396', '385', '00100101', '13', '', '23', '1', '', '1', '55', '2017-06-10', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('397', '386', '00100102', '14', '空调冷凝器,主空压机滤尘器', '16', '1', '备开', '1', '16', '2017-06-11', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('398', '387', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '9', '1', '备开', '1', '56', '2017-06-11', '13:30:00', '3');
INSERT INTO `task_plan` VALUES ('399', '388', '00100101', '13', '空调冷凝器', '13', '1', '备开', '1', '36', '2017-06-11', '11:00:00', '3');
INSERT INTO `task_plan` VALUES ('400', '389', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '备开', '1', '14', '2017-06-11', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('401', '390', '00100101', '13', '空调冷凝器', '14', '1', '备开', '1', '13', '2017-06-11', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('402', '391', '00100101', '13', '', '26', '1', '备开', '1', '22', '2017-06-11', '11:30:00', '3');
INSERT INTO `task_plan` VALUES ('403', '392', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D3055', '1', '30', '2017-06-11', '21:00:00', '3');
INSERT INTO `task_plan` VALUES ('404', '393', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'C3676', '1', '33', '2017-06-11', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('405', '394', '00100101', '13', '空调冷凝器', '15', '1', 'D2283', '1', '46', '2017-06-11', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('406', '395', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', 'D2283', '1', '47', '2017-06-11', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('407', '396', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', 'D9915', '1', '40', '2017-06-11', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('408', '397', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'D9915', '1', '43', '2017-06-11', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('409', '398', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', 'C3680', '1', '34', '2017-06-11', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('410', '399', '00100101', '13', '空调冷凝器', '17', '1', 'D3201', '1', '21', '2017-06-11', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('411', '400', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', 'D379', '1', '19', '2017-06-11', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('412', '401', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', 'D3063', '1', '26', '2017-06-11', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('413', '402', '00100101', '13', '辅助电源装置,空调换气装置滤芯,换气装置逆变器风机过滤器,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', 'D3089', '1', '65', '2017-06-11', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('414', '403', '00100101', '13', '空调冷凝器', '14', '1', 'D3089', '1', '29', '2017-06-11', '01:00:00', '3');
INSERT INTO `task_plan` VALUES ('415', '404', '00100101', '13', '空调冷凝器', '13', '1', 'D3205', '1', '50', '2017-06-11', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('416', '405', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', 'C3088', '1', '24', '2017-06-11', '02:00:00', '3');
INSERT INTO `task_plan` VALUES ('417', '406', '00100101', '13', '空调冷凝器', '16', '1', 'D3107', '1', '44', '2017-06-11', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('418', '407', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '17', '1', 'D3107', '1', '45', '2017-06-11', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('419', '408', '00100101', '13', '空调冷凝器', '19', '1', 'D2287', '1', '20', '2017-06-11', '04:00:00', '3');
INSERT INTO `task_plan` VALUES ('420', '409', '00100101', '13', '', '26', '1', '备开', '1', '16', '2017-06-11', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('421', '410', '00100101', '13', '', '27', '1', '备开', '1', '36', '2017-06-11', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('422', '411', '00100101', '13', '', '22', '1', '备开', '1', '13', '2017-06-11', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('423', '412', '00100101', '13', '', '23', '1', '备开', '1', '14', '2017-06-11', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('424', '413', '00100102', '14', '空调冷凝器,主空压机滤尘器', '14', '1', '备开', '1', '53', '2017-06-12', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('425', '414', '00100102', '14', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '备开', '1', '42', '2017-06-12', '08:00:00', '3');
INSERT INTO `task_plan` VALUES ('426', '415', '00100102', '14', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '16', '1', '备开', '1', '31', '2017-06-12', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('427', '416', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '18', '1', '备开', '1', '35', '2017-06-12', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('429', '418', '00100101', '13', '', '13', '1', 'C3642', '1', '34', '2017-06-12', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('430', '419', '00100101', '13', '', '26', '1', '备开', '1', '35', '2017-06-12', '12:30:00', '3');
INSERT INTO `task_plan` VALUES ('431', '420', '00100101', '13', '', '27', '1', '备开', '1', '20', '2017-06-12', '12:30:00', '3');
INSERT INTO `task_plan` VALUES ('432', '421', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '59', '2017-06-12', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('433', '422', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '19', '1', '', '1', '28', '2017-06-12', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('434', '423', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '15', '2017-06-12', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('435', '424', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '14', '1', '', '1', '17', '2017-06-12', '21:30:00', '3');
INSERT INTO `task_plan` VALUES ('436', '425', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '16', '1', '', '1', '60', '2017-06-12', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('437', '426', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '58', '2017-06-12', '22:50:00', '3');
INSERT INTO `task_plan` VALUES ('438', '427', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '13', '1', '', '1', '41', '2017-06-12', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('439', '428', '00100101', '13', '辅助电源装置,换气装置逆变器风机过滤器,空调换气装置滤芯,空调冷凝器,空调蒸发器,牵引变流器,牵引电机进风口,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '38', '2017-06-12', '23:00:00', '3');
INSERT INTO `task_plan` VALUES ('440', '429', '00100101', '13', '空调冷凝器', '18', '1', '', '1', '57', '2017-06-12', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('441', '430', '00100101', '13', '空调冷凝器', '19', '1', '', '1', '55', '2017-06-12', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('442', '431', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '15', '1', '', '1', '48', '2017-06-12', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('443', '432', '00100101', '13', '空调冷凝器', '14', '1', '', '1', '39', '2017-06-12', '00:30:00', '3');
INSERT INTO `task_plan` VALUES ('444', '433', '00100101', '13', '空调冷凝器', '16', '1', '', '1', '12', '2017-06-12', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('445', '434', '00100101', '13', '空调冷凝器', '17', '1', '', '1', '54', '2017-06-12', '02:30:00', '3');
INSERT INTO `task_plan` VALUES ('446', '435', '00100101', '13', '空调冷凝器', '13', '1', '', '1', '61', '2017-06-12', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('447', '436', '00100101', '13', '辅助电源装置,空调冷凝器,空调蒸发器,牵引变流器,牵引电机冷风机,主变压器油冷却器过滤器', '9', '1', '', '1', '52', '2017-06-12', '03:00:00', '3');
INSERT INTO `task_plan` VALUES ('448', '437', '00100101', '13', '', '26', '1', '', '1', '34', '2017-06-12', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('449', '438', '00100101', '13', '', '27', '1', '', '1', '31', '2017-06-12', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('450', '439', '00100101', '13', '', '22', '1', '', '1', '42', '2017-06-12', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('451', '440', '00100101', '13', '', '23', '1', '', '1', '53', '2017-06-12', '20:00:00', '3');
INSERT INTO `task_plan` VALUES ('452', '441', '00100102', '14', '空调冷凝器,主空压机滤尘器,裙板滤网', '14', '1', '备开', '1', '51', '2017-06-13', '07:30:00', '3');
INSERT INTO `task_plan` VALUES ('453', '442', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '15', '1', '备开', '1', '49', '2017-06-13', '08:30:00', '3');
INSERT INTO `task_plan` VALUES ('454', '443', '00100102', '14', '空调冷凝器,主空压机滤尘器,供排气吸入口钢网,裙板滤网', '16', '1', '备开', '1', '18', '2017-06-13', '13:30:00', '3');
INSERT INTO `task_plan` VALUES ('455', '444', '00100101', '13', '', '9', '1', 'C3642', '1', '28', '2017-06-13', '09:00:00', '3');
INSERT INTO `task_plan` VALUES ('456', '445', '00100101', '13', '', '18', '1', '备开', '1', '56', '2017-06-13', '13:00:00', '3');
INSERT INTO `task_plan` VALUES ('457', '446', '00100101', '13', '', '17', '1', '备开', '1', '24', '2017-06-13', '15:00:00', '3');
INSERT INTO `task_plan` VALUES ('458', '447', '00100102', '14', '换气装置逆变器风机过滤器,空调换气装置滤芯,空调蒸发器,牵引电机进风口,牵引电机冷风机', '14', '1', '44444444444', '1', '11', '2017-10-17', '11:48:32', '1');

-- ----------------------------
-- Table structure for `task_plan_detail`
-- ----------------------------
DROP TABLE IF EXISTS `task_plan_detail`;
CREATE TABLE `task_plan_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_number` int(11) unsigned NOT NULL,
  `task_content_id` int(11) unsigned NOT NULL,
  `state` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `trouble_maintain_id` text,
  `situation_content_id` text,
  `a_left` text COMMENT '用户ID',
  `a_right` text,
  `b_left` text,
  `b_right` text,
  `a_leader` text,
  `b_leader` text,
  `a_quality` text,
  `b_quality` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_plan_detail
-- ----------------------------
INSERT INTO `task_plan_detail` VALUES ('40', '1', '7', '3', '2017-03-30 13:42:27', '2017-03-30 13:42:40', '', '', '002', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('41', '1', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('42', '2', '7', '3', '2017-03-30 13:50:24', '2017-03-30 13:51:25', '', '', '002', '', '002', '', '003', '', '001', '');
INSERT INTO `task_plan_detail` VALUES ('43', '2', '13', '3', '2017-03-30 13:50:53', '2017-03-30 13:51:28', '', '', '002', '', '', '', '003', '', '002', '');
INSERT INTO `task_plan_detail` VALUES ('44', '2', '15', '3', '2017-03-30 13:51:07', '2017-03-30 13:53:35', '', '', '003', '', '001', '', '003', '', '002', '');
INSERT INTO `task_plan_detail` VALUES ('45', '3', '13', '3', '2017-03-30 15:03:46', '2017-03-30 15:04:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('46', '3', '15', '3', '2017-03-30 15:04:26', '2017-03-30 15:04:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('47', '3', '16', '3', '2017-03-30 15:04:29', '2017-03-30 15:04:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('48', '4', '7', '3', '2017-03-30 16:16:10', '2017-03-30 16:16:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('49', '4', '15', '3', '2017-03-30 16:16:18', '2017-03-30 16:16:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('50', '4', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('51', '5', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('52', '5', '15', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('53', '5', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('54', '6', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('55', '6', '14', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('56', '6', '16', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('57', '7', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('58', '7', '21', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('59', '7', '22', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('60', '7', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('61', '8', '24', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('62', '9', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('63', '9', '14', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('64', '10', '14', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('65', '10', '15', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('66', '10', '16', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('67', '10', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('68', '11', '14', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('69', '11', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('70', '12', '15', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('71', '12', '16', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('72', '13', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('73', '13', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('74', '13', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('75', '13', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('76', '13', '22', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('77', '13', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('78', '14', '18', '2', '2017-04-07 12:40:09', null, '', '', '', '', '017', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('79', '15', '13', '3', '2017-04-07 13:28:46', '2017-04-07 13:46:04', '', '', '005', '', '003,014', '', '006', '', '007', '');
INSERT INTO `task_plan_detail` VALUES ('80', '16', '7', '3', '2017-04-07 14:16:34', '2017-04-07 14:18:53', '', '', '007,010', '032,017', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('81', '16', '13', '3', '2017-04-07 14:18:14', '2017-04-07 14:19:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('82', '16', '17', '3', '2017-04-07 14:18:01', '2017-04-07 14:19:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('83', '16', '18', '3', '2017-04-07 14:18:18', '2017-04-07 14:19:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('84', '17', '7', '2', '2017-04-11 13:18:03', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('85', '18', '7', '3', '2017-04-12 08:15:50', '2017-04-12 08:48:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('86', '18', '13', '3', '2017-04-12 08:16:18', '2017-04-12 09:48:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('87', '18', '17', '3', '2017-04-12 08:16:04', '2017-04-12 14:02:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('88', '18', '18', '3', '2017-04-12 08:29:11', '2017-04-12 09:48:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('89', '18', '19', '3', '2017-04-12 09:13:11', '2017-04-12 14:02:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('90', '18', '23', '3', '2017-04-12 08:30:49', '2017-04-12 09:48:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('91', '19', '7', '3', '2017-04-12 08:25:41', '2017-04-12 10:04:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('92', '19', '13', '3', '2017-04-12 08:26:23', '2017-04-12 10:04:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('93', '19', '17', '3', '2017-04-12 08:25:47', '2017-04-12 14:40:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('94', '19', '18', '3', '2017-04-12 08:29:54', '2017-04-12 10:04:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('95', '19', '19', '3', '2017-04-12 14:41:15', '2017-04-12 15:12:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('96', '19', '23', '3', '2017-04-12 08:26:16', '2017-04-12 10:04:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('97', '20', '7', '3', '2017-04-12 12:12:33', '2017-04-12 15:32:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('98', '20', '13', '3', '2017-04-12 12:12:59', '2017-04-12 15:33:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('99', '20', '17', '3', '2017-04-12 12:12:38', '2017-04-12 15:33:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('100', '20', '18', '3', '2017-04-12 12:12:43', '2017-04-12 15:33:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('101', '20', '19', '3', '2017-04-12 12:57:03', '2017-04-12 15:33:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('102', '20', '23', '3', '2017-04-12 12:12:49', '2017-04-12 15:33:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('103', '21', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('104', '21', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('105', '21', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('106', '21', '18', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('107', '21', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('108', '21', '21', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('109', '21', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('110', '22', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('111', '22', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('112', '22', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('113', '22', '18', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('114', '22', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('115', '22', '21', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('116', '22', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('117', '23', '7', '3', '2017-04-13 07:52:54', '2017-04-13 15:00:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('118', '23', '13', '3', '2017-04-13 15:00:23', '2017-04-13 15:13:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('119', '23', '17', '3', '2017-04-13 07:53:20', '2017-04-13 15:00:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('120', '23', '18', '3', '2017-04-13 07:53:15', '2017-04-13 11:41:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('121', '23', '19', '3', '2017-04-13 15:00:36', '2017-04-13 15:13:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('122', '23', '23', '3', '2017-04-13 07:53:10', '2017-04-13 11:41:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('125', '24', '7', '3', '2017-04-14 08:36:47', '2017-04-14 09:10:40', '', '', '', '121127,131135,151137', '', '', '', '121127', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('127', '24', '17', '3', '2017-04-14 08:36:54', '2017-04-14 11:55:16', '', '', '', '121124,131125,121130', '', '', '', '121124', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('128', '24', '18', '3', '2017-04-14 08:37:02', '2017-04-14 11:55:09', '', '', '', '091121,091119,121117,171150', '', '', '', '091121', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('129', '24', '19', '3', '2017-04-14 09:24:47', '2017-04-14 10:24:19', '', '', '', '131128,141131,101136', '', '', '', '131128', '', '');
INSERT INTO `task_plan_detail` VALUES ('130', '24', '23', '3', '2017-04-14 08:37:08', '2017-04-14 10:24:29', '', '', '', '091121,121113,111111,171150', '', '', '', '091121', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('131', '25', '7', '3', '2017-04-14 11:48:46', '2017-04-14 13:48:18', '', '', '121127,131135,151137', '', '', '', '121127', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('132', '25', '13', '3', '2017-04-14 12:47:12', '2017-04-14 13:47:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('133', '25', '17', '3', '2017-04-14 11:48:55', '2017-04-14 14:38:26', '', '', '121124,131125,121130', '', '', '', '121124', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('134', '25', '18', '3', '2017-04-14 11:49:22', '2017-04-14 13:48:07', '', '', '091121,091119,121117', '', '', '', '091121', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('135', '25', '19', '3', '2017-04-14 12:47:02', '2017-04-14 13:47:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('136', '25', '23', '3', '2017-04-14 11:49:05', '2017-04-14 13:48:11', '', '', '091121,121113,111111,171150', '', '', '', '091121', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('137', '24', '13', '3', '2017-04-14 14:35:00', '2017-04-14 14:35:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('138', '26', '7', '3', '2017-04-17 11:02:03', '2017-04-17 11:42:09', '', '', '131135,151137', '', '', '', '131135', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('139', '27', '7', '3', '2017-04-17 13:38:04', '2017-04-17 14:16:42', '', '', '', '131135,151137', '', '', '', '131135', '', '');
INSERT INTO `task_plan_detail` VALUES ('140', '27', '13', '3', '2017-04-17 13:38:08', '2017-04-17 14:16:46', '', '', '', '071141', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('141', '28', '7', '3', '2017-04-17 13:45:08', '2017-04-17 14:31:18', '', '', '', '131135,151137', '', '', '', '131135', '', '');
INSERT INTO `task_plan_detail` VALUES ('142', '29', '7', '3', '2017-04-18 08:17:54', '2017-04-18 09:03:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('143', '29', '13', '3', '2017-04-18 09:35:48', '2017-04-18 10:28:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('144', '29', '17', '3', '2017-04-18 08:18:14', '2017-04-18 13:50:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('145', '29', '18', '3', '2017-04-18 08:17:59', '2017-04-18 10:28:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('146', '29', '19', '3', '2017-04-18 09:35:43', '2017-04-18 10:28:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('147', '29', '23', '3', '2017-04-18 08:18:05', '2017-04-18 10:28:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('148', '30', '7', '3', '2017-04-18 08:52:28', '2017-04-18 09:35:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('149', '31', '7', '3', '2017-04-19 08:15:20', '2017-04-19 10:29:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('150', '31', '13', '3', '2017-04-19 10:18:23', '2017-04-19 10:38:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('151', '31', '17', '3', '2017-04-19 10:18:28', '2017-04-26 08:02:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('152', '31', '18', '3', '2017-04-19 08:15:27', '2017-04-19 10:29:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('153', '31', '19', '3', '2017-04-19 10:18:18', '2017-04-19 10:38:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('154', '31', '23', '3', '2017-04-19 08:15:31', '2017-04-19 10:29:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('161', '33', '7', '2', '2017-04-26 08:18:12', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('162', '33', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('163', '33', '17', '2', '2017-04-26 08:18:18', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('164', '33', '18', '2', '2017-04-26 08:18:22', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('165', '33', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('166', '33', '23', '2', '2017-04-26 08:18:26', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('167', '34', '7', '2', '2017-04-26 08:56:41', null, '', '', '', '', '131135,151137', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('171', '35', '7', '3', '2017-05-26 11:37:51', '2017-05-26 14:44:59', '', '', '', '', '131128,141131,171153', '', '', '131128', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('172', '35', '13', '3', '2017-05-26 13:27:35', '2017-05-26 14:15:14', '', '', '', '', '081142,071141', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('173', '35', '17', '3', '2017-05-26 11:37:57', '2017-05-26 15:00:22', '', '', '', '', '121130,101129,151137,091132', '', '', '091132', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('174', '35', '18', '3', '2017-05-26 11:38:04', '2017-05-26 14:45:16', '', '', '', '', '091119,121117', '', '', '', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('175', '35', '19', '3', '2017-05-26 12:46:22', '2017-05-26 13:27:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('176', '35', '23', '3', '2017-05-26 12:02:14', '2017-05-26 14:15:32', '', '', '', '', '091121,121113,091114', '', '', '091121', '', '151120');
INSERT INTO `task_plan_detail` VALUES ('184', '36', '7', '3', '2017-05-26 22:10:43', '2017-05-26 22:10:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('185', '36', '13', '3', '2017-05-26 21:47:48', '2017-05-26 21:58:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('186', '36', '18', '3', '2017-05-26 22:17:41', '2017-05-26 22:17:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('187', '36', '20', '3', '2017-05-26 22:22:08', '2017-05-26 22:22:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('189', '36', '23', '3', '2017-05-26 22:17:54', '2017-05-26 22:17:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('190', '37', '7', '3', '2017-05-26 22:02:03', '2017-05-26 22:19:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('191', '37', '13', '3', '2017-05-26 21:58:36', '2017-05-26 22:13:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('192', '37', '18', '3', '2017-05-26 22:02:09', '2017-05-26 22:19:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('193', '37', '20', '3', '2017-05-26 22:22:38', '2017-05-26 22:22:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('195', '37', '23', '3', '2017-05-26 22:02:15', '2017-05-26 22:30:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('196', '38', '7', '3', '2017-05-26 21:21:57', '2017-05-26 21:49:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('197', '38', '13', '3', '2017-05-26 21:23:01', '2017-05-26 21:49:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('198', '38', '14', '3', '2017-05-26 22:22:59', '2017-05-26 22:23:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('199', '38', '18', '3', '2017-05-26 21:22:09', '2017-05-26 22:15:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('202', '38', '23', '3', '2017-05-26 21:22:13', '2017-05-26 22:15:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('203', '39', '7', '3', '2017-05-26 21:26:53', '2017-05-26 21:47:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('204', '39', '13', '3', '2017-05-26 21:28:38', '2017-05-26 21:36:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('205', '39', '18', '3', '2017-05-26 21:28:43', '2017-05-26 22:16:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('206', '39', '20', '3', '2017-05-26 22:23:18', '2017-05-26 22:23:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('208', '39', '23', '3', '2017-05-26 21:28:48', '2017-05-26 22:16:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('209', '40', '7', '3', '2017-05-26 22:57:37', '2017-05-26 23:18:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('210', '40', '13', '3', '2017-05-26 22:57:44', '2017-05-26 23:24:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('211', '40', '18', '3', '2017-05-26 22:57:52', '2017-05-26 23:25:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('212', '40', '20', '3', '2017-05-26 22:58:00', '2017-05-26 23:26:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('213', '40', '23', '3', '2017-05-26 22:57:55', '2017-05-26 23:25:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('215', '38', '20', '3', '2017-05-26 22:23:05', '2017-05-26 22:23:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('216', '41', '7', '3', '2017-05-26 23:07:15', '2017-05-26 23:31:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('217', '41', '13', '3', '2017-05-26 23:07:19', '2017-05-26 23:11:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('218', '41', '18', '3', '2017-05-26 23:07:22', '2017-05-26 23:31:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('219', '41', '20', '3', '2017-05-26 23:07:26', '2017-05-26 23:31:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('220', '41', '23', '3', '2017-05-26 23:07:29', '2017-05-26 23:31:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('221', '42', '7', '3', '2017-05-26 23:36:15', '2017-05-27 00:02:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('222', '42', '13', '3', '2017-05-26 23:24:43', '2017-05-26 23:34:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('223', '42', '18', '3', '2017-05-26 23:36:19', '2017-05-27 00:07:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('224', '42', '20', '3', '2017-05-26 23:36:22', '2017-05-27 00:07:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('225', '42', '23', '3', '2017-05-26 23:36:31', '2017-05-27 00:07:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('226', '43', '7', '3', '2017-05-26 23:36:43', '2017-05-26 23:57:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('227', '43', '13', '3', '2017-05-26 23:35:05', '2017-05-26 23:49:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('228', '43', '18', '3', '2017-05-26 23:36:57', '2017-05-27 00:07:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('229', '43', '20', '3', '2017-05-26 23:38:11', '2017-05-27 00:07:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('230', '43', '23', '3', '2017-05-26 23:38:07', '2017-05-27 00:07:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('231', '44', '7', '3', '2017-05-27 00:34:55', '2017-05-27 00:58:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('232', '44', '13', '3', '2017-05-27 00:34:58', '2017-05-27 00:56:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('233', '44', '14', '3', '2017-05-27 00:35:01', '2017-05-27 01:09:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('234', '44', '18', '3', '2017-05-27 00:35:04', '2017-05-27 01:10:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('235', '44', '20', '3', '2017-05-27 00:35:07', '2017-05-27 01:10:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('236', '44', '23', '3', '2017-05-27 00:35:11', '2017-05-27 01:10:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('237', '45', '7', '3', '2017-05-27 00:35:22', '2017-05-27 01:03:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('238', '45', '13', '3', '2017-05-27 00:35:25', '2017-05-27 00:47:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('239', '45', '14', '3', '2017-05-27 00:35:28', '2017-05-27 01:10:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('240', '45', '18', '3', '2017-05-27 00:35:31', '2017-05-27 01:10:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('241', '45', '20', '3', '2017-05-27 00:35:36', '2017-05-27 01:10:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('242', '45', '23', '3', '2017-05-27 00:35:40', '2017-05-27 01:10:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('243', '46', '7', '3', '2017-05-27 01:37:24', '2017-05-27 02:03:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('244', '46', '13', '3', '2017-05-27 01:37:28', '2017-05-27 01:42:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('245', '46', '18', '3', '2017-05-27 01:37:32', '2017-05-27 02:14:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('246', '46', '20', '3', '2017-05-27 01:37:35', '2017-05-27 02:14:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('247', '46', '23', '3', '2017-05-27 01:37:37', '2017-05-27 02:14:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('248', '47', '7', '3', '2017-05-27 01:37:56', '2017-05-27 02:05:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('249', '47', '13', '3', '2017-05-27 01:26:50', '2017-05-27 01:53:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('250', '47', '18', '3', '2017-05-27 01:37:59', '2017-05-27 02:14:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('251', '47', '20', '3', '2017-05-27 01:38:02', '2017-05-27 02:14:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('252', '47', '23', '3', '2017-05-27 01:38:05', '2017-05-27 02:14:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('253', '48', '7', '3', '2017-05-27 02:09:41', '2017-05-27 02:28:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('254', '48', '13', '3', '2017-05-27 02:09:44', '2017-05-27 03:54:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('255', '48', '18', '3', '2017-05-27 02:09:47', '2017-05-27 03:54:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('256', '48', '20', '3', '2017-05-27 02:09:49', '2017-05-27 03:54:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('257', '48', '23', '3', '2017-05-27 02:09:52', '2017-05-27 03:54:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('259', '49', '7', '3', '2017-05-27 02:10:06', '2017-05-27 02:31:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('260', '49', '13', '3', '2017-05-27 02:10:14', '2017-05-27 03:54:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('261', '49', '18', '3', '2017-05-27 02:10:22', '2017-05-27 03:54:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('262', '49', '20', '3', '2017-05-27 02:10:26', '2017-05-27 03:55:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('264', '49', '23', '3', '2017-05-27 02:10:29', '2017-05-27 03:55:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('265', '50', '7', '3', '2017-05-27 02:37:30', '2017-05-27 02:59:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('266', '50', '13', '3', '2017-05-27 02:37:32', '2017-05-27 02:59:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('267', '50', '18', '3', '2017-05-27 02:37:35', '2017-05-27 03:06:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('268', '50', '20', '3', '2017-05-27 02:37:38', '2017-05-27 03:06:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('269', '50', '23', '3', '2017-05-27 02:37:40', '2017-05-27 03:06:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('270', '51', '7', '3', '2017-05-27 02:37:48', '2017-05-27 02:59:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('271', '51', '13', '3', '2017-05-27 02:37:52', '2017-05-27 02:59:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('272', '51', '18', '3', '2017-05-27 02:37:57', '2017-05-27 03:06:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('273', '51', '20', '3', '2017-05-27 02:38:03', '2017-05-27 03:06:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('274', '51', '23', '3', '2017-05-27 02:38:05', '2017-05-27 03:06:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('275', '52', '7', '3', '2017-05-27 03:57:59', '2017-05-27 04:19:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('276', '52', '13', '3', '2017-05-27 03:53:07', '2017-05-27 04:02:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('277', '52', '18', '3', '2017-05-27 04:19:45', '2017-05-27 04:26:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('278', '52', '20', '3', '2017-05-27 04:19:42', '2017-05-27 04:19:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('279', '52', '23', '3', '2017-05-27 04:19:39', '2017-05-27 04:19:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('280', '47', '21', '3', '2017-05-27 01:38:17', '2017-05-27 02:14:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('281', '49', '21', '3', '2017-05-27 02:10:31', '2017-05-27 03:55:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('282', '53', '7', '3', '2017-05-27 08:10:52', '2017-05-27 09:33:16', '', '', '', '', '131128,141131', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('283', '53', '13', '3', '2017-05-27 09:28:21', '2017-05-27 09:55:54', '', '', '', '', '071141', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('284', '53', '17', '3', '2017-05-27 08:10:59', '2017-05-27 09:56:16', '', '', '', '', '091132,121130', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('285', '53', '18', '3', '2017-05-27 08:11:11', '2017-05-27 10:48:49', '', '', '', '', '171149,141146', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('286', '53', '19', '3', '2017-05-27 09:33:43', '2017-05-27 09:52:27', '', '', '', '', '131128,101136', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('287', '53', '23', '3', '2017-05-27 08:11:05', '2017-05-27 10:48:55', '', '', '', '', '171149,141146', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('288', '54', '13', '3', '2017-05-27 10:52:59', '2017-05-27 11:13:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('289', '54', '7', '3', '2017-05-27 09:47:37', '2017-05-27 13:55:04', '', '', '', '', '131135,151137', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('290', '54', '17', '3', '2017-05-27 10:22:06', '2017-05-27 13:55:14', '', '', '', '', '121130,091132', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('291', '54', '18', '3', '2017-05-27 10:22:13', '2017-05-27 14:40:26', '', '', '', '', '171149,141146', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('292', '54', '19', '3', '2017-05-27 10:22:19', '2017-05-27 11:46:05', '', '', '', '', '131128,101136', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('293', '54', '23', '3', '2017-05-27 10:22:27', '2017-05-27 14:11:57', '', '', '', '', '171149,141146', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('294', '55', '7', '3', '2017-05-27 15:35:56', '2017-05-27 15:38:11', '', '', '', '', '131128', '', '131128', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('295', '55', '13', '3', '2017-05-27 15:38:38', '2017-05-27 15:38:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('296', '55', '18', '3', '2017-05-27 15:38:47', '2017-05-27 15:38:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('297', '55', '23', '3', '2017-05-27 15:38:57', '2017-05-27 15:39:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('348', '64', '7', '3', '2017-05-28 21:02:16', '2017-05-28 21:34:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('349', '64', '13', '3', '2017-05-28 21:02:20', '2017-05-28 21:30:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('350', '64', '20', '3', '2017-05-28 21:02:23', '2017-05-28 21:30:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('351', '64', '23', '3', '2017-05-28 21:02:26', '2017-05-28 21:30:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('352', '64', '18', '3', '2017-05-28 21:02:29', '2017-05-28 21:34:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('353', '65', '7', '3', '2017-05-28 21:02:52', '2017-05-28 21:32:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('354', '65', '13', '3', '2017-05-28 21:02:55', '2017-05-28 21:21:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('355', '65', '14', '3', '2017-05-28 21:02:59', '2017-05-28 21:31:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('356', '65', '18', '3', '2017-05-28 21:03:18', '2017-05-28 22:44:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('357', '65', '20', '3', '2017-05-28 21:03:20', '2017-05-28 21:31:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('358', '65', '23', '3', '2017-05-28 21:03:24', '2017-05-28 21:31:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('359', '66', '7', '3', '2017-05-28 21:59:20', '2017-05-28 22:53:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('360', '66', '13', '3', '2017-05-28 21:59:23', '2017-05-28 22:53:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('361', '66', '18', '3', '2017-05-28 21:59:26', '2017-05-28 22:53:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('362', '66', '20', '3', '2017-05-28 21:59:29', '2017-05-28 22:53:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('363', '66', '23', '3', '2017-05-28 21:59:32', '2017-05-28 22:53:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('364', '65', '19', '3', '2017-05-28 21:03:27', '2017-05-28 22:44:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('365', '67', '7', '3', '2017-05-28 21:59:47', '2017-05-28 22:53:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('366', '67', '13', '3', '2017-05-28 21:59:50', '2017-05-28 22:18:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('367', '67', '18', '3', '2017-05-28 21:59:54', '2017-05-28 22:53:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('369', '67', '23', '3', '2017-05-28 21:59:59', '2017-05-28 22:18:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('370', '67', '20', '3', '2017-05-28 22:00:02', '2017-05-28 22:18:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('371', '68', '7', '3', '2017-05-28 22:54:01', '2017-05-28 23:03:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('372', '68', '13', '3', '2017-05-28 22:20:48', '2017-05-28 22:55:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('373', '68', '18', '3', '2017-05-28 22:54:17', '2017-05-28 22:55:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('374', '68', '20', '3', '2017-05-28 22:54:13', '2017-05-28 22:55:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('375', '68', '21', '3', '2017-05-28 22:54:10', '2017-05-28 22:55:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('376', '68', '23', '3', '2017-05-28 22:54:04', '2017-05-28 23:27:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('377', '69', '7', '3', '2017-05-28 22:54:37', '2017-05-28 23:06:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('378', '69', '13', '3', '2017-05-28 22:18:51', '2017-05-28 22:54:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('379', '69', '18', '3', '2017-05-28 22:54:45', '2017-05-28 22:55:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('380', '69', '20', '3', '2017-05-28 22:54:42', '2017-05-28 22:54:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('381', '69', '23', '3', '2017-05-28 22:54:40', '2017-05-28 23:27:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('382', '70', '7', '3', '2017-05-28 23:22:49', '2017-05-28 23:22:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('383', '70', '13', '3', '2017-05-28 22:38:20', '2017-05-28 23:27:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('384', '70', '18', '3', '2017-05-28 23:22:56', '2017-05-28 23:34:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('385', '70', '20', '3', '2017-05-28 23:23:02', '2017-05-28 23:23:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('386', '70', '23', '3', '2017-05-28 23:22:59', '2017-05-28 23:34:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('387', '71', '7', '3', '2017-05-29 00:01:20', '2017-05-29 00:27:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('388', '71', '13', '3', '2017-05-29 00:01:24', '2017-05-29 00:27:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('389', '71', '18', '3', '2017-05-29 00:01:43', '2017-05-29 00:47:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('390', '71', '20', '3', '2017-05-29 00:01:38', '2017-05-29 00:27:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('391', '71', '23', '3', '2017-05-29 00:01:31', '2017-05-29 00:27:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('393', '72', '7', '3', '2017-05-28 23:56:04', '2017-05-29 00:26:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('394', '72', '13', '3', '2017-05-28 23:56:07', '2017-05-29 00:26:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('395', '72', '18', '3', '2017-05-28 23:56:10', '2017-05-29 00:26:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('396', '72', '20', '3', '2017-05-28 23:56:13', '2017-05-29 00:27:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('397', '72', '23', '3', '2017-05-28 23:56:16', '2017-05-29 00:27:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('398', '73', '7', '3', '2017-05-28 23:56:49', '2017-05-29 00:27:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('399', '73', '18', '3', '2017-05-28 23:56:47', '2017-05-29 00:27:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('400', '73', '20', '3', '2017-05-28 23:56:45', '2017-05-29 00:27:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('401', '73', '23', '3', '2017-05-28 23:56:42', '2017-05-29 00:27:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('402', '74', '7', '3', '2017-05-29 00:53:41', '2017-05-29 01:33:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('403', '74', '13', '3', '2017-05-29 00:46:02', '2017-05-29 00:52:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('404', '74', '18', '3', '2017-05-29 00:53:50', '2017-05-29 01:23:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('405', '74', '20', '3', '2017-05-29 00:53:47', '2017-05-29 01:23:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('406', '74', '23', '3', '2017-05-29 00:53:44', '2017-05-29 01:23:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('407', '75', '7', '3', '2017-05-29 00:55:18', '2017-05-29 01:22:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('408', '75', '13', '3', '2017-05-29 00:46:18', '2017-05-29 01:22:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('409', '75', '18', '3', '2017-05-29 00:55:15', '2017-05-29 01:22:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('410', '75', '20', '3', '2017-05-29 00:55:13', '2017-05-29 01:22:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('411', '75', '23', '3', '2017-05-29 00:55:08', '2017-05-29 01:22:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('412', '76', '7', '3', '2017-05-29 01:19:40', '2017-05-29 02:23:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('413', '76', '13', '3', '2017-05-29 01:19:43', '2017-05-29 02:20:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('414', '76', '18', '3', '2017-05-29 01:19:46', '2017-05-29 02:20:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('415', '76', '20', '3', '2017-05-29 01:19:49', '2017-05-29 02:20:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('416', '76', '23', '3', '2017-05-29 01:19:52', '2017-05-29 02:19:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('417', '77', '7', '3', '2017-05-29 01:20:04', '2017-05-29 02:19:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('418', '77', '13', '3', '2017-05-29 01:20:07', '2017-05-29 02:19:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('419', '77', '18', '3', '2017-05-29 01:20:23', '2017-05-29 02:19:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('420', '77', '20', '3', '2017-05-29 01:20:26', '2017-05-29 02:19:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('421', '77', '23', '3', '2017-05-29 01:20:29', '2017-05-29 02:19:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('422', '78', '7', '3', '2017-05-29 02:30:15', '2017-05-29 03:52:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('423', '78', '13', '3', '2017-05-29 02:30:18', '2017-05-29 03:52:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('424', '78', '19', '3', '2017-05-29 02:30:20', '2017-05-29 03:52:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('425', '78', '18', '3', '2017-05-29 02:30:23', '2017-05-29 03:52:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('426', '78', '20', '3', '2017-05-29 02:30:25', '2017-05-29 03:52:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('427', '78', '23', '3', '2017-05-29 02:30:28', '2017-05-29 03:52:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('428', '79', '7', '3', '2017-05-29 02:43:53', '2017-05-29 03:14:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('429', '79', '13', '3', '2017-05-29 02:43:50', '2017-05-29 03:14:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('430', '79', '18', '3', '2017-05-29 02:43:47', '2017-05-29 03:14:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('431', '79', '20', '3', '2017-05-29 02:43:44', '2017-05-29 03:14:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('432', '79', '23', '3', '2017-05-29 02:43:39', '2017-05-29 03:14:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('434', '80', '7', '3', '2017-05-29 03:35:37', '2017-05-29 04:12:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('435', '80', '13', '3', '2017-05-29 03:35:40', '2017-05-29 03:36:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('436', '80', '14', '3', '2017-05-29 03:35:42', '2017-05-29 04:12:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('437', '80', '18', '3', '2017-05-29 03:35:45', '2017-05-29 04:12:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('438', '80', '20', '3', '2017-05-29 03:35:47', '2017-05-29 03:36:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('439', '80', '23', '3', '2017-05-29 03:35:51', '2017-05-29 04:12:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('440', '81', '7', '3', '2017-05-29 03:36:06', '2017-05-29 04:12:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('441', '81', '13', '3', '2017-05-29 03:36:10', '2017-05-29 03:36:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('442', '81', '14', '3', '2017-05-29 03:36:15', '2017-05-29 04:12:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('443', '81', '18', '3', '2017-05-29 03:36:18', '2017-05-29 04:12:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('444', '81', '20', '3', '2017-05-29 03:36:22', '2017-05-29 03:36:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('445', '81', '23', '3', '2017-05-29 03:36:28', '2017-05-29 04:12:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('446', '82', '7', '3', '2017-05-29 04:13:06', '2017-05-29 04:32:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('447', '82', '13', '3', '2017-05-29 04:13:09', '2017-05-29 04:13:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('448', '82', '14', '3', '2017-05-29 04:13:29', '2017-05-29 04:13:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('449', '82', '16', '3', '2017-05-29 04:13:26', '2017-05-29 04:13:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('450', '82', '18', '3', '2017-05-29 04:13:18', '2017-05-29 04:30:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('451', '82', '20', '3', '2017-05-29 04:13:15', '2017-05-29 04:13:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('452', '82', '23', '2', '2017-05-29 04:13:12', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('453', '83', '13', '3', '2017-05-28 21:34:20', '2017-05-28 21:34:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('454', '71', '22', '3', '2017-05-29 00:01:28', '2017-05-29 00:27:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('455', '67', '22', '3', '2017-05-28 22:00:06', '2017-05-28 22:18:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('456', '79', '22', '3', '2017-05-29 02:43:36', '2017-05-29 03:14:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('457', '84', '7', '3', '2017-05-29 08:14:15', '2017-05-29 08:59:23', '', '', '131135,151137', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('458', '84', '13', '3', '2017-05-29 09:30:09', '2017-05-29 10:15:03', '6', '9', '071141,081142', '071141,081142', '071141,081142', '071141,081142', '071141,081142', '071141,081142', '071141,081142', '071141,081142');
INSERT INTO `task_plan_detail` VALUES ('459', '84', '17', '3', '2017-05-29 08:14:08', '2017-05-29 10:15:08', '5', '10', '131125,121124', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('460', '84', '18', '3', '2017-05-29 08:14:22', '2017-05-29 10:25:14', '5', '6', '121113,141146', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('461', '84', '19', '3', '2017-05-29 09:30:15', '2017-05-29 10:14:56', '6,5', '9,10', '131128,101136', '131128,101136', '131128,101136', '131128,101136', '081138', '131128,101136', '091121', '131128,101136');
INSERT INTO `task_plan_detail` VALUES ('462', '84', '23', '3', '2017-05-29 08:14:28', '2017-05-29 10:25:20', '6', '9', '121113,141146', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('463', '85', '13', '3', '2017-05-29 11:11:08', '2017-05-29 12:43:59', '5', '', '', '', '081142,071141', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('464', '85', '17', '3', '2017-05-29 10:42:17', '2017-05-29 12:44:18', '6', '', '', '', '121124,131125', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('465', '85', '18', '3', '2017-05-29 10:42:24', '2017-05-29 14:40:13', '', '', '', '', '171149,121113', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('466', '85', '19', '3', '2017-05-29 11:20:13', '2017-05-29 12:48:14', '', '', '', '', '131128,101136', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('467', '85', '23', '3', '2017-05-29 10:42:30', '2017-05-29 14:40:25', '', '', '', '', '121113,171149', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('468', '86', '13', '3', '2017-05-29 14:34:19', '2017-05-29 15:01:42', '', '', '', '', '071141', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('469', '86', '23', '3', '2017-05-29 14:34:24', '2017-05-29 15:02:06', '', '', '', '', '141146,091119', '', '', '081138', '', '091121');
INSERT INTO `task_plan_detail` VALUES ('470', '87', '7', '3', '2017-05-29 21:49:01', '2017-05-29 22:33:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('471', '87', '13', '3', '2017-05-29 21:49:05', '2017-05-29 22:34:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('472', '87', '20', '3', '2017-05-29 21:49:14', '2017-05-29 22:34:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('473', '87', '23', '3', '2017-05-29 21:49:20', '2017-05-29 22:34:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('475', '88', '7', '3', '2017-05-29 21:50:19', '2017-05-29 22:26:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('476', '88', '13', '3', '2017-05-29 21:50:25', '2017-05-29 22:26:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('477', '88', '20', '3', '2017-05-29 21:50:33', '2017-05-29 22:26:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('478', '88', '23', '3', '2017-05-29 21:50:38', '2017-05-29 22:27:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('479', '89', '7', '3', '2017-05-29 22:10:49', '2017-05-29 23:03:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('480', '89', '13', '3', '2017-05-29 22:10:56', '2017-05-29 23:03:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('481', '89', '20', '3', '2017-05-29 22:11:04', '2017-05-29 23:03:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('482', '89', '23', '3', '2017-05-29 22:11:07', '2017-05-29 23:03:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('484', '90', '7', '3', '2017-05-29 22:11:43', '2017-05-29 23:04:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('485', '90', '13', '3', '2017-05-29 22:11:46', '2017-05-29 23:04:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('486', '90', '20', '3', '2017-05-29 22:11:55', '2017-05-29 23:04:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('487', '90', '23', '3', '2017-05-29 22:11:59', '2017-05-29 23:04:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('488', '91', '7', '3', '2017-05-29 22:22:34', '2017-05-29 23:07:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('489', '91', '13', '3', '2017-05-29 22:23:30', '2017-05-29 23:07:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('490', '91', '20', '3', '2017-05-29 22:23:33', '2017-05-29 23:07:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('491', '91', '23', '3', '2017-05-29 22:23:37', '2017-05-29 22:26:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('492', '92', '7', '3', '2017-05-29 22:34:44', '2017-05-29 22:54:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('493', '92', '13', '3', '2017-05-29 22:35:07', '2017-05-29 22:54:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('494', '92', '20', '3', '2017-05-29 22:35:13', '2017-05-29 22:54:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('495', '92', '23', '3', '2017-05-29 22:35:27', '2017-05-29 22:54:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('496', '93', '7', '3', '2017-05-30 01:01:38', '2017-05-30 03:05:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('497', '93', '13', '3', '2017-05-30 01:01:30', '2017-05-30 03:05:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('498', '93', '18', '3', '2017-05-30 01:01:49', '2017-05-30 03:05:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('499', '93', '19', '3', '2017-05-30 01:01:53', '2017-05-30 03:05:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('500', '93', '20', '3', '2017-05-30 01:01:59', '2017-05-30 03:05:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('501', '93', '23', '3', '2017-05-30 01:02:02', '2017-05-30 03:05:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('502', '94', '7', '3', '2017-05-30 01:02:20', '2017-05-30 03:06:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('503', '94', '13', '3', '2017-05-30 01:02:25', '2017-05-30 03:06:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('504', '94', '18', '3', '2017-05-30 01:02:33', '2017-05-30 03:06:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('505', '94', '19', '3', '2017-05-30 01:02:41', '2017-05-30 03:06:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('506', '94', '20', '3', '2017-05-30 01:03:15', '2017-05-30 03:06:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('507', '94', '23', '3', '2017-05-30 01:03:43', '2017-05-30 03:06:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('508', '95', '7', '3', '2017-05-30 00:08:29', '2017-05-30 00:43:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('509', '95', '13', '3', '2017-05-30 00:08:33', '2017-05-30 00:43:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('510', '95', '20', '3', '2017-05-30 00:08:36', '2017-05-30 00:43:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('511', '95', '23', '3', '2017-05-30 00:08:40', '2017-05-30 00:43:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('512', '96', '7', '3', '2017-05-30 00:08:53', '2017-05-30 00:44:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('513', '96', '13', '3', '2017-05-30 00:08:57', '2017-05-30 00:44:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('514', '96', '20', '3', '2017-05-30 00:09:00', '2017-05-30 00:44:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('515', '96', '23', '3', '2017-05-30 00:09:04', '2017-05-30 00:44:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('516', '97', '7', '3', '2017-05-30 01:13:38', '2017-05-30 01:53:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('517', '97', '13', '3', '2017-05-30 01:13:42', '2017-05-30 01:53:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('518', '97', '20', '3', '2017-05-30 01:13:45', '2017-05-30 01:53:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('519', '97', '23', '3', '2017-05-30 01:13:48', '2017-05-30 01:53:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('520', '97', '14', '3', '2017-05-30 01:13:52', '2017-05-30 01:54:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('521', '98', '7', '3', '2017-05-30 01:14:04', '2017-05-30 01:54:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('522', '98', '13', '3', '2017-05-30 01:14:07', '2017-05-30 01:54:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('523', '98', '20', '3', '2017-05-30 01:14:11', '2017-05-30 01:54:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('524', '98', '23', '3', '2017-05-30 01:14:14', '2017-05-30 01:54:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('525', '99', '7', '3', '2017-05-30 02:11:59', '2017-05-30 02:42:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('526', '99', '13', '3', '2017-05-30 02:12:04', '2017-05-30 02:42:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('527', '99', '14', '3', '2017-05-30 02:12:13', '2017-05-30 02:42:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('528', '99', '20', '3', '2017-05-30 02:12:27', '2017-05-30 02:42:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('529', '99', '23', '3', '2017-05-30 02:12:35', '2017-05-30 02:42:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('530', '100', '7', '3', '2017-05-30 02:12:59', '2017-05-30 02:43:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('531', '100', '13', '3', '2017-05-30 02:13:02', '2017-05-30 02:43:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('532', '100', '14', '3', '2017-05-30 02:13:04', '2017-05-30 02:43:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('533', '100', '20', '3', '2017-05-30 02:13:12', '2017-05-30 02:43:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('534', '100', '23', '3', '2017-05-30 02:13:15', '2017-05-30 02:43:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('535', '101', '7', '3', '2017-05-30 02:56:17', '2017-05-30 03:39:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('536', '101', '13', '3', '2017-05-30 02:56:21', '2017-05-30 03:39:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('537', '101', '14', '3', '2017-05-30 02:56:24', '2017-05-30 03:39:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('538', '101', '20', '3', '2017-05-30 02:56:28', '2017-05-30 03:39:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('539', '101', '23', '3', '2017-05-30 02:56:32', '2017-05-30 03:39:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('540', '102', '7', '3', '2017-05-30 02:56:48', '2017-05-30 03:40:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('541', '102', '13', '3', '2017-05-30 02:56:53', '2017-05-30 03:40:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('542', '102', '14', '3', '2017-05-30 02:56:57', '2017-05-30 03:40:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('543', '102', '20', '3', '2017-05-30 02:57:00', '2017-05-30 03:40:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('544', '102', '22', '3', '2017-05-30 02:57:03', '2017-05-30 03:40:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('545', '102', '23', '3', '2017-05-30 02:57:06', '2017-05-30 03:40:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('546', '103', '7', '3', '2017-05-30 05:06:02', '2017-05-30 05:43:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('547', '103', '13', '3', '2017-05-30 05:06:05', '2017-05-30 05:43:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('549', '103', '23', '3', '2017-05-30 05:06:09', '2017-05-30 05:43:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('550', '104', '7', '3', '2017-05-30 03:44:26', '2017-05-30 04:19:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('551', '104', '13', '3', '2017-05-30 03:44:29', '2017-05-30 04:19:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('552', '104', '14', '3', '2017-05-30 03:44:32', '2017-05-30 04:19:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('553', '104', '20', '3', '2017-05-30 03:44:35', '2017-05-30 04:19:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('554', '104', '22', '3', '2017-05-30 03:44:38', '2017-05-30 04:19:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('555', '104', '23', '3', '2017-05-30 03:44:42', '2017-05-30 04:19:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('556', '89', '21', '3', '2017-05-29 22:11:14', '2017-05-29 23:03:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('557', '103', '21', '3', '2017-05-30 05:06:13', '2017-05-30 05:43:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('558', '105', '7', '3', '2017-05-30 03:45:02', '2017-05-30 04:15:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('559', '105', '13', '3', '2017-05-30 03:45:04', '2017-05-30 04:15:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('560', '105', '23', '3', '2017-05-30 03:45:07', '2017-05-30 04:15:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('561', '106', '7', '3', '2017-05-30 21:46:19', '2017-05-30 22:13:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('562', '106', '13', '3', '2017-05-30 21:46:16', '2017-05-30 22:13:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('563', '106', '20', '3', '2017-05-30 21:46:13', '2017-05-30 22:13:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('565', '106', '23', '3', '2017-05-30 21:46:10', '2017-05-30 22:33:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('566', '107', '7', '3', '2017-05-30 21:45:46', '2017-05-30 22:14:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('567', '107', '13', '3', '2017-05-30 21:34:38', '2017-05-30 22:14:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('568', '107', '14', '3', '2017-05-30 21:45:48', '2017-05-30 22:14:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('569', '107', '20', '3', '2017-05-30 21:45:51', '2017-05-30 22:14:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('570', '107', '23', '3', '2017-05-30 21:45:55', '2017-05-30 22:33:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('571', '108', '7', '3', '2017-05-30 22:04:36', '2017-05-30 22:34:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('572', '108', '13', '3', '2017-05-30 22:04:39', '2017-05-30 22:34:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('573', '108', '20', '3', '2017-05-30 22:04:43', '2017-05-30 22:34:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('575', '108', '23', '3', '2017-05-30 22:04:46', '2017-05-30 23:01:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('576', '109', '7', '3', '2017-05-30 22:05:17', '2017-05-30 22:35:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('577', '109', '13', '3', '2017-05-30 22:05:14', '2017-05-30 22:35:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('578', '109', '20', '3', '2017-05-30 22:05:11', '2017-05-30 22:35:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('580', '109', '23', '3', '2017-05-30 22:05:06', '2017-05-30 23:01:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('581', '110', '7', '3', '2017-05-30 23:20:00', '2017-05-30 23:46:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('582', '110', '13', '3', '2017-05-30 23:20:04', '2017-05-30 23:46:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('583', '110', '14', '3', '2017-05-30 23:20:09', '2017-05-30 23:46:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('584', '110', '20', '3', '2017-05-30 23:20:14', '2017-05-30 23:47:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('586', '110', '23', '3', '2017-05-30 23:20:19', '2017-05-30 23:59:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('587', '111', '7', '3', '2017-05-30 23:20:38', '2017-05-30 23:42:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('588', '111', '13', '3', '2017-05-30 23:20:54', '2017-05-30 23:42:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('589', '111', '14', '3', '2017-05-30 23:21:00', '2017-05-30 23:42:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('590', '111', '20', '3', '2017-05-30 23:21:05', '2017-05-30 23:42:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('591', '111', '23', '3', '2017-05-30 23:21:08', '2017-05-30 23:59:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('592', '112', '7', '3', '2017-05-30 23:28:20', '2017-05-31 00:07:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('593', '112', '13', '3', '2017-05-30 23:28:25', '2017-05-31 00:07:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('594', '112', '20', '3', '2017-05-30 23:28:29', '2017-05-31 00:07:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('595', '112', '23', '3', '2017-05-30 23:28:31', '2017-05-31 00:14:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('596', '113', '7', '3', '2017-05-30 23:29:01', '2017-05-31 00:08:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('597', '113', '13', '3', '2017-05-30 23:28:57', '2017-05-31 00:08:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('598', '113', '20', '3', '2017-05-30 23:28:51', '2017-05-31 00:08:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('599', '113', '23', '3', '2017-05-30 23:28:47', '2017-05-31 00:14:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('600', '114', '7', '3', '2017-05-31 00:26:16', '2017-05-31 00:58:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('601', '114', '13', '3', '2017-05-31 00:26:19', '2017-05-31 00:58:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('602', '114', '20', '3', '2017-05-31 00:26:21', '2017-05-31 00:58:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('603', '114', '23', '3', '2017-05-31 00:26:25', '2017-05-31 00:58:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('604', '115', '7', '3', '2017-05-31 00:26:42', '2017-05-31 00:59:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('605', '115', '13', '3', '2017-05-31 00:26:44', '2017-05-31 00:59:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('606', '115', '23', '3', '2017-05-31 00:26:47', '2017-05-31 01:00:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('607', '116', '7', '3', '2017-05-31 01:20:14', '2017-05-31 01:40:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('608', '116', '13', '3', '2017-05-31 01:20:09', '2017-05-31 01:40:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('609', '116', '20', '3', '2017-05-31 01:20:05', '2017-05-31 01:40:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('610', '116', '23', '3', '2017-05-31 01:20:02', '2017-05-31 01:40:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('611', '117', '7', '3', '2017-05-31 01:20:50', '2017-05-31 01:41:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('612', '117', '13', '3', '2017-05-31 01:20:44', '2017-05-31 01:41:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('613', '117', '20', '3', '2017-05-31 01:20:40', '2017-05-31 01:41:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('614', '117', '23', '3', '2017-05-31 01:20:36', '2017-05-31 01:41:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('615', '118', '7', '3', '2017-05-31 02:08:30', '2017-05-31 02:24:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('616', '118', '13', '3', '2017-05-31 02:08:26', '2017-05-31 02:24:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('617', '118', '20', '3', '2017-05-31 02:08:22', '2017-05-31 02:24:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('618', '118', '23', '3', '2017-05-31 02:08:18', '2017-05-31 02:55:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('619', '119', '7', '3', '2017-05-31 02:06:40', '2017-05-31 02:25:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('620', '119', '13', '3', '2017-05-31 02:06:43', '2017-05-31 02:25:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('621', '119', '14', '3', '2017-05-31 02:06:46', '2017-05-31 02:24:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('622', '119', '20', '3', '2017-05-31 02:07:02', '2017-05-31 02:24:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('623', '119', '23', '3', '2017-05-31 02:06:57', '2017-05-31 03:37:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('624', '120', '7', '3', '2017-05-31 02:44:44', '2017-05-31 03:19:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('625', '120', '13', '3', '2017-05-31 02:44:41', '2017-05-31 03:19:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('626', '120', '20', '3', '2017-05-31 02:44:38', '2017-05-31 03:19:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('627', '120', '23', '3', '2017-05-31 02:44:33', '2017-05-31 03:19:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('628', '121', '7', '3', '2017-05-31 02:45:17', '2017-05-31 03:49:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('629', '121', '13', '3', '2017-05-31 02:45:13', '2017-05-31 03:49:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('630', '121', '18', '3', '2017-05-31 02:45:10', '2017-05-31 03:49:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('631', '121', '19', '3', '2017-05-31 02:45:06', '2017-05-31 03:49:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('632', '121', '20', '3', '2017-05-31 02:45:03', '2017-05-31 03:49:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('633', '121', '23', '3', '2017-05-31 02:44:56', '2017-05-31 04:26:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('634', '119', '18', '3', '2017-05-31 02:06:53', '2017-05-31 02:55:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('635', '119', '19', '3', '2017-05-31 02:06:50', '2017-05-31 02:55:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('636', '122', '7', '3', '2017-05-31 03:29:55', '2017-05-31 03:49:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('637', '122', '13', '3', '2017-05-31 03:29:52', '2017-05-31 03:49:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('638', '122', '14', '3', '2017-05-31 03:29:49', '2017-05-31 03:49:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('639', '122', '20', '3', '2017-05-31 03:29:46', '2017-05-31 03:49:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('640', '122', '23', '3', '2017-05-31 03:29:43', '2017-05-31 03:59:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('641', '123', '7', '3', '2017-05-31 03:30:21', '2017-05-31 03:49:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('642', '123', '13', '3', '2017-05-31 03:30:17', '2017-05-31 03:49:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('643', '123', '14', '3', '2017-05-31 03:30:14', '2017-05-31 03:49:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('644', '123', '20', '3', '2017-05-31 03:30:10', '2017-05-31 03:49:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('645', '123', '23', '3', '2017-05-31 03:30:07', '2017-05-31 03:59:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('646', '123', '21', '3', '2017-05-31 03:30:04', '2017-05-31 03:48:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('647', '106', '22', '3', '2017-05-30 21:46:04', '2017-05-30 22:14:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('648', '108', '22', '3', '2017-05-30 22:04:51', '2017-05-30 22:34:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('649', '109', '22', '3', '2017-05-30 22:05:03', '2017-05-30 22:34:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('650', '110', '22', '3', '2017-05-30 23:20:24', '2017-05-30 23:47:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('651', '124', '7', '3', '2017-05-31 07:48:30', '2017-05-31 09:06:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('652', '124', '17', '3', '2017-05-31 07:48:40', '2017-05-31 12:07:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('653', '124', '18', '3', '2017-05-31 07:48:52', '2017-05-31 12:07:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('654', '124', '19', '3', '2017-05-31 09:05:58', '2017-05-31 12:07:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('655', '124', '23', '3', '2017-05-31 08:25:07', '2017-05-31 09:06:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('656', '125', '7', '3', '2017-05-31 09:05:27', '2017-05-31 10:15:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('657', '125', '13', '3', '2017-05-31 10:15:12', '2017-05-31 12:08:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('658', '125', '17', '3', '2017-05-31 09:05:32', '2017-05-31 12:08:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('659', '125', '18', '3', '2017-05-31 09:05:38', '2017-05-31 12:08:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('660', '125', '19', '3', '2017-05-31 10:15:15', '2017-05-31 12:08:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('661', '125', '23', '3', '2017-05-31 10:15:20', '2017-05-31 12:08:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('662', '126', '7', '3', '2017-05-31 13:42:20', '2017-05-31 14:13:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('663', '126', '13', '3', '2017-05-31 13:42:23', '2017-05-31 14:13:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('664', '126', '17', '3', '2017-05-31 13:42:28', '2017-05-31 14:13:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('665', '126', '18', '3', '2017-05-31 10:32:41', '2017-05-31 14:26:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('666', '126', '19', '3', '2017-05-31 13:42:16', '2017-05-31 14:13:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('667', '126', '23', '3', '2017-05-31 13:42:32', '2017-05-31 14:13:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('668', '127', '7', '3', '2017-05-31 08:33:33', '2017-05-31 09:12:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('669', '127', '18', '3', '2017-05-31 08:33:37', '2017-05-31 09:07:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('670', '127', '23', '3', '2017-05-31 08:33:41', '2017-05-31 09:07:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('671', '128', '7', '3', '2017-05-31 21:01:19', '2017-05-31 21:38:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('672', '128', '13', '3', '2017-05-31 21:01:22', '2017-05-31 21:38:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('673', '128', '18', '3', '2017-05-31 21:01:26', '2017-05-31 21:38:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('674', '128', '20', '3', '2017-05-31 21:01:29', '2017-05-31 21:38:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('675', '128', '23', '3', '2017-05-31 21:01:32', '2017-05-31 21:38:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('676', '129', '7', '3', '2017-05-31 21:06:28', '2017-05-31 21:39:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('677', '129', '13', '3', '2017-05-31 21:06:31', '2017-05-31 21:39:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('678', '129', '18', '3', '2017-05-31 21:06:33', '2017-05-31 21:39:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('679', '129', '20', '3', '2017-05-31 21:06:37', '2017-05-31 21:39:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('680', '129', '23', '3', '2017-05-31 21:06:40', '2017-05-31 21:39:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('681', '130', '7', '3', '2017-05-31 21:38:27', '2017-05-31 22:04:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('682', '130', '13', '3', '2017-05-31 21:38:30', '2017-05-31 22:04:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('683', '130', '20', '3', '2017-05-31 21:38:33', '2017-05-31 22:04:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('684', '131', '7', '3', '2017-05-31 22:12:25', '2017-05-31 22:35:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('685', '131', '13', '3', '2017-05-31 22:12:28', '2017-05-31 22:35:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('686', '131', '20', '3', '2017-05-31 22:12:31', '2017-05-31 22:35:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('687', '131', '23', '3', '2017-05-31 22:12:34', '2017-05-31 22:35:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('688', '132', '7', '3', '2017-05-31 22:06:02', '2017-05-31 22:35:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('689', '132', '13', '3', '2017-05-31 22:06:05', '2017-05-31 22:35:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('690', '132', '14', '3', '2017-05-31 22:06:08', '2017-05-31 22:35:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('691', '132', '18', '3', '2017-05-31 22:06:11', '2017-05-31 22:36:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('692', '132', '20', '3', '2017-05-31 22:06:14', '2017-05-31 22:36:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('693', '132', '23', '3', '2017-05-31 22:06:17', '2017-05-31 22:36:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('694', '133', '7', '3', '2017-05-31 23:03:11', '2017-05-31 23:19:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('695', '133', '13', '3', '2017-05-31 23:03:14', '2017-05-31 23:19:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('696', '133', '14', '3', '2017-05-31 23:03:20', '2017-05-31 23:19:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('697', '133', '20', '3', '2017-05-31 23:03:23', '2017-05-31 23:19:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('698', '131', '18', '3', '2017-05-31 22:12:38', '2017-05-31 22:35:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('699', '134', '7', '3', '2017-05-31 23:28:47', '2017-05-31 23:55:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('700', '134', '13', '3', '2017-05-31 23:28:50', '2017-05-31 23:55:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('701', '134', '20', '3', '2017-05-31 23:28:52', '2017-05-31 23:55:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('702', '134', '23', '3', '2017-05-31 23:28:56', '2017-05-31 23:55:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('703', '134', '18', '3', '2017-05-31 23:29:00', '2017-05-31 23:56:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('704', '135', '7', '3', '2017-05-31 23:29:17', '2017-06-01 00:05:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('705', '135', '13', '3', '2017-05-31 23:29:20', '2017-06-01 00:05:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('706', '135', '18', '3', '2017-05-31 23:29:23', '2017-06-01 00:05:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('707', '135', '20', '3', '2017-05-31 23:29:26', '2017-06-01 00:06:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('708', '135', '23', '3', '2017-05-31 23:29:30', '2017-06-01 00:06:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('709', '136', '7', '3', '2017-05-31 23:56:43', '2017-06-01 00:20:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('710', '136', '13', '3', '2017-05-31 23:56:46', '2017-06-01 00:20:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('711', '136', '14', '3', '2017-05-31 23:56:52', '2017-06-01 00:20:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('712', '136', '18', '3', '2017-05-31 23:57:05', '2017-06-01 00:20:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('713', '136', '20', '3', '2017-05-31 23:57:07', '2017-06-01 00:20:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('714', '136', '23', '3', '2017-05-31 23:57:10', '2017-06-01 00:20:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('715', '137', '7', '3', '2017-05-31 23:57:25', '2017-06-01 00:21:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('716', '137', '13', '3', '2017-05-31 23:57:28', '2017-06-01 00:21:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('717', '137', '14', '3', '2017-05-31 23:57:30', '2017-06-01 00:21:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('718', '137', '18', '3', '2017-05-31 23:57:33', '2017-06-01 00:21:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('719', '137', '20', '3', '2017-05-31 23:57:36', '2017-06-01 00:21:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('720', '137', '23', '3', '2017-05-31 23:57:39', '2017-06-01 00:21:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('721', '138', '7', '3', '2017-06-01 01:12:48', '2017-06-01 03:18:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('722', '138', '13', '3', '2017-06-01 01:12:52', '2017-06-01 03:18:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('723', '138', '18', '3', '2017-06-01 01:12:56', '2017-06-01 03:18:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('724', '138', '19', '3', '2017-06-01 01:13:01', '2017-06-01 03:18:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('725', '138', '20', '3', '2017-06-01 01:13:06', '2017-06-01 03:19:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('726', '138', '23', '3', '2017-06-01 01:13:11', '2017-06-01 03:19:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('727', '139', '7', '3', '2017-06-01 01:13:31', '2017-06-01 03:19:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('728', '139', '13', '3', '2017-06-01 01:13:33', '2017-06-01 03:19:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('729', '139', '18', '3', '2017-06-01 01:13:39', '2017-06-01 03:19:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('730', '139', '19', '3', '2017-06-01 01:13:41', '2017-06-01 03:19:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('731', '139', '20', '3', '2017-06-01 01:13:54', '2017-06-01 03:19:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('732', '139', '23', '3', '2017-06-01 01:14:11', '2017-06-01 03:19:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('733', '140', '7', '3', '2017-06-01 02:26:15', '2017-06-01 03:04:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('734', '140', '13', '3', '2017-06-01 02:26:18', '2017-06-01 03:04:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('735', '140', '18', '3', '2017-06-01 02:26:53', '2017-06-01 03:04:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('736', '140', '20', '3', '2017-06-01 02:26:56', '2017-06-01 03:04:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('737', '140', '23', '3', '2017-06-01 02:27:00', '2017-06-01 03:04:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('738', '141', '7', '3', '2017-06-01 02:27:12', '2017-06-01 03:05:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('739', '141', '13', '3', '2017-06-01 02:27:26', '2017-06-01 03:05:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('740', '141', '18', '3', '2017-06-01 02:27:34', '2017-06-01 03:05:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('741', '141', '20', '3', '2017-06-01 02:27:37', '2017-06-01 03:05:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('742', '141', '22', '3', '2017-06-01 02:27:40', '2017-06-01 03:05:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('743', '141', '23', '3', '2017-06-01 02:27:43', '2017-06-01 03:05:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('744', '142', '7', '3', '2017-06-01 01:56:49', '2017-06-01 02:33:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('745', '142', '13', '3', '2017-06-01 01:56:55', '2017-06-01 02:33:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('746', '142', '14', '3', '2017-06-01 01:56:58', '2017-06-01 02:33:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('747', '142', '18', '3', '2017-06-01 01:57:02', '2017-06-01 02:33:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('748', '142', '20', '3', '2017-06-01 01:57:10', '2017-06-01 02:33:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('749', '142', '23', '3', '2017-06-01 01:57:13', '2017-06-01 02:33:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('750', '143', '7', '3', '2017-06-01 01:57:34', '2017-06-01 02:34:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('751', '143', '13', '3', '2017-06-01 01:57:38', '2017-06-01 02:34:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('752', '143', '14', '3', '2017-06-01 01:57:58', '2017-06-01 02:34:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('753', '143', '18', '3', '2017-06-01 01:58:05', '2017-06-01 02:34:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('754', '143', '20', '3', '2017-06-01 01:58:10', '2017-06-01 02:34:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('755', '143', '22', '3', '2017-06-01 01:58:15', '2017-06-01 02:34:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('756', '143', '23', '3', '2017-06-01 01:58:19', '2017-06-01 02:34:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('757', '144', '7', '3', '2017-06-01 03:06:42', '2017-06-01 03:43:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('758', '144', '13', '3', '2017-06-01 03:06:44', '2017-06-01 03:43:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('759', '144', '18', '3', '2017-06-01 03:06:58', '2017-06-01 03:44:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('760', '144', '20', '3', '2017-06-01 03:07:01', '2017-06-01 03:44:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('761', '144', '23', '3', '2017-06-01 03:07:04', '2017-06-01 03:44:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('762', '145', '7', '3', '2017-06-01 03:10:42', '2017-06-01 03:51:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('763', '145', '13', '3', '2017-06-01 03:10:45', '2017-06-01 03:51:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('764', '145', '18', '3', '2017-06-01 03:10:47', '2017-06-01 03:51:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('765', '145', '20', '3', '2017-06-01 03:10:53', '2017-06-01 03:51:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('766', '145', '22', '3', '2017-06-01 03:10:56', '2017-06-01 03:51:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('767', '145', '23', '3', '2017-06-01 03:10:59', '2017-06-01 03:51:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('768', '146', '7', '3', '2017-06-01 07:54:52', '2017-06-01 10:01:41', '', '', '131135,151137', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('769', '146', '13', '3', '2017-06-01 08:49:46', '2017-06-01 12:18:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('770', '146', '17', '3', '2017-06-01 08:16:15', '2017-06-01 12:18:25', '', '', '121124,131125', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('771', '146', '18', '3', '2017-06-01 08:16:19', '2017-06-01 12:18:21', '', '', '111111,121113', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('772', '146', '19', '3', '2017-06-01 08:49:51', '2017-06-01 10:02:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('773', '146', '23', '3', '2017-06-01 07:54:57', '2017-06-01 10:01:48', '', '', '121113,111111', '', '', '', '081138', '', '091121', '');
INSERT INTO `task_plan_detail` VALUES ('774', '147', '7', '3', '2017-06-01 08:15:51', '2017-06-01 10:03:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('775', '147', '13', '3', '2017-06-01 09:23:11', '2017-06-01 12:19:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('776', '147', '17', '3', '2017-06-01 08:16:03', '2017-06-01 12:19:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('777', '147', '18', '3', '2017-06-01 09:23:16', '2017-06-01 12:19:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('778', '147', '19', '3', '2017-06-01 09:23:21', '2017-06-01 10:03:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('779', '147', '23', '3', '2017-06-01 08:15:56', '2017-06-01 10:03:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('786', '149', '7', '3', '2017-06-01 09:44:13', '2017-06-01 12:17:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('787', '149', '13', '3', '2017-06-01 09:44:17', '2017-06-01 12:17:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('788', '149', '18', '3', '2017-06-01 09:44:20', '2017-06-01 12:17:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('789', '149', '23', '3', '2017-06-01 09:44:24', '2017-06-01 12:17:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('790', '150', '7', '3', '2017-06-01 12:18:07', '2017-06-01 12:49:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('791', '151', '7', '3', '2017-06-01 12:19:46', '2017-06-01 15:00:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('792', '151', '13', '3', '2017-06-01 14:55:40', '2017-06-01 15:00:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('793', '151', '17', '3', '2017-06-01 14:55:43', '2017-06-01 15:00:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('794', '151', '18', '3', '2017-06-01 14:55:47', '2017-06-01 15:00:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('795', '151', '19', '3', '2017-06-01 14:55:50', '2017-06-01 15:00:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('796', '151', '23', '3', '2017-06-01 14:55:54', '2017-06-01 15:00:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('797', '152', '7', '3', '2017-06-01 20:53:36', '2017-06-01 21:31:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('798', '152', '13', '3', '2017-06-01 20:53:39', '2017-06-01 21:20:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('799', '152', '18', '3', '2017-06-01 20:53:43', '2017-06-01 21:20:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('800', '152', '20', '3', '2017-06-01 20:53:46', '2017-06-01 21:20:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('801', '152', '22', '3', '2017-06-01 20:53:49', '2017-06-01 21:19:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('802', '152', '23', '3', '2017-06-01 20:53:52', '2017-06-01 21:49:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('803', '153', '7', '3', '2017-06-01 20:54:26', '2017-06-01 21:37:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('804', '153', '13', '3', '2017-06-01 20:54:29', '2017-06-01 21:20:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('805', '153', '18', '3', '2017-06-01 20:54:31', '2017-06-01 21:20:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('806', '153', '20', '3', '2017-06-01 20:54:34', '2017-06-01 21:20:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('807', '153', '23', '3', '2017-06-01 20:54:44', '2017-06-01 21:39:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('808', '154', '7', '3', '2017-06-01 21:51:23', '2017-06-01 22:19:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('809', '154', '13', '3', '2017-06-01 21:51:16', '2017-06-01 22:19:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('810', '154', '20', '3', '2017-06-01 21:51:08', '2017-06-01 22:19:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('811', '155', '7', '3', '2017-06-01 21:51:57', '2017-06-01 23:35:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('812', '155', '13', '3', '2017-06-01 21:51:53', '2017-06-01 23:35:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('813', '155', '20', '3', '2017-06-01 21:51:49', '2017-06-01 23:35:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('814', '155', '18', '3', '2017-06-01 21:51:47', '2017-06-01 23:35:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('815', '155', '22', '3', '2017-06-01 21:51:44', '2017-06-01 23:35:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('816', '155', '23', '3', '2017-06-01 21:51:41', '2017-06-01 23:35:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('817', '156', '7', '3', '2017-06-01 22:38:29', '2017-06-01 23:35:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('818', '156', '13', '3', '2017-06-01 22:38:26', '2017-06-01 23:35:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('819', '156', '18', '3', '2017-06-01 22:38:23', '2017-06-01 23:35:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('820', '156', '20', '3', '2017-06-01 22:38:21', '2017-06-01 23:35:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('821', '156', '23', '3', '2017-06-01 22:38:18', '2017-06-01 23:35:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('822', '157', '7', '3', '2017-06-01 22:54:35', '2017-06-01 23:42:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('823', '157', '13', '3', '2017-06-01 22:54:31', '2017-06-01 23:42:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('824', '157', '18', '3', '2017-06-01 22:54:29', '2017-06-01 23:42:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('825', '157', '20', '3', '2017-06-01 22:54:26', '2017-06-01 23:42:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('826', '157', '23', '3', '2017-06-01 22:54:23', '2017-06-01 23:42:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('827', '158', '7', '3', '2017-06-01 22:39:21', '2017-06-01 23:36:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('828', '158', '13', '3', '2017-06-01 22:39:13', '2017-06-01 23:36:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('829', '158', '18', '3', '2017-06-01 22:39:07', '2017-06-01 23:36:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('830', '158', '20', '3', '2017-06-01 22:39:00', '2017-06-01 23:36:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('831', '158', '23', '3', '2017-06-01 22:38:56', '2017-06-01 23:36:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('832', '159', '7', '3', '2017-06-01 23:36:56', '2017-06-02 00:14:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('833', '159', '13', '3', '2017-06-01 23:36:53', '2017-06-02 00:14:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('834', '159', '18', '3', '2017-06-01 23:36:51', '2017-06-02 00:14:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('835', '159', '20', '3', '2017-06-01 23:36:48', '2017-06-02 00:14:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('836', '159', '23', '3', '2017-06-01 23:36:45', '2017-06-02 00:14:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('837', '160', '7', '3', '2017-06-02 00:12:24', '2017-06-02 00:46:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('838', '160', '13', '3', '2017-06-02 00:12:20', '2017-06-02 00:46:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('839', '160', '14', '3', '2017-06-02 00:12:15', '2017-06-02 00:47:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('840', '160', '18', '3', '2017-06-02 00:12:12', '2017-06-02 00:47:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('841', '160', '19', '3', '2017-06-02 00:12:09', '2017-06-02 02:25:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('842', '160', '20', '3', '2017-06-02 00:12:06', '2017-06-02 00:46:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('843', '160', '22', '3', '2017-06-02 00:12:02', '2017-06-02 00:46:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('844', '160', '23', '3', '2017-06-02 00:11:58', '2017-06-02 00:46:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('845', '161', '7', '3', '2017-06-02 00:13:27', '2017-06-02 00:46:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('846', '161', '13', '3', '2017-06-02 00:13:21', '2017-06-02 00:46:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('847', '161', '14', '3', '2017-06-02 00:13:05', '2017-06-02 00:46:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('848', '161', '18', '3', '2017-06-02 00:13:01', '2017-06-02 00:46:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('849', '161', '19', '3', '2017-06-02 00:12:54', '2017-06-02 02:25:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('850', '161', '20', '3', '2017-06-02 00:12:48', '2017-06-02 00:45:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('852', '161', '23', '3', '2017-06-02 00:12:45', '2017-06-02 02:25:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('853', '162', '7', '3', '2017-06-02 01:26:13', '2017-06-02 01:53:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('854', '162', '13', '3', '2017-06-02 01:26:10', '2017-06-02 01:53:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('855', '162', '14', '3', '2017-06-02 01:26:06', '2017-06-02 01:53:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('856', '162', '18', '3', '2017-06-02 01:26:03', '2017-06-02 01:53:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('857', '162', '20', '3', '2017-06-02 01:26:00', '2017-06-02 01:53:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('858', '162', '23', '3', '2017-06-02 01:25:57', '2017-06-02 01:54:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('859', '163', '7', '3', '2017-06-02 01:26:55', '2017-06-02 01:52:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('860', '163', '13', '3', '2017-06-02 01:26:46', '2017-06-02 01:51:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('861', '163', '14', '3', '2017-06-02 01:26:44', '2017-06-02 01:51:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('862', '163', '18', '3', '2017-06-02 01:26:41', '2017-06-02 01:51:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('863', '163', '20', '3', '2017-06-02 01:26:34', '2017-06-02 01:51:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('864', '163', '23', '3', '2017-06-02 01:26:27', '2017-06-02 01:54:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('865', '164', '7', '3', '2017-06-02 02:02:03', '2017-06-02 02:44:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('866', '164', '13', '3', '2017-06-02 02:02:00', '2017-06-02 02:43:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('867', '164', '18', '3', '2017-06-02 02:01:58', '2017-06-02 02:43:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('868', '164', '20', '3', '2017-06-02 02:01:54', '2017-06-02 02:43:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('869', '164', '23', '3', '2017-06-02 02:01:49', '2017-06-02 02:43:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('875', '166', '7', '3', '2017-06-02 02:57:03', '2017-06-02 03:36:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('876', '166', '13', '3', '2017-06-02 02:57:00', '2017-06-02 03:16:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('877', '166', '18', '3', '2017-06-02 02:56:58', '2017-06-02 03:16:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('878', '166', '20', '3', '2017-06-02 02:56:55', '2017-06-02 03:16:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('879', '166', '23', '3', '2017-06-02 02:56:52', '2017-06-02 03:36:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('880', '167', '7', '3', '2017-06-02 02:42:22', '2017-06-02 03:11:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('881', '167', '13', '3', '2017-06-02 02:42:17', '2017-06-02 03:11:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('882', '167', '14', '3', '2017-06-02 02:42:14', '2017-06-02 03:11:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('883', '167', '18', '3', '2017-06-02 02:42:11', '2017-06-02 03:11:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('884', '167', '20', '3', '2017-06-02 02:42:08', '2017-06-02 03:11:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('885', '167', '23', '3', '2017-06-02 02:42:05', '2017-06-02 03:17:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('886', '168', '7', '3', '2017-06-02 02:42:44', '2017-06-02 03:12:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('887', '168', '13', '3', '2017-06-02 02:42:47', '2017-06-02 03:12:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('888', '168', '18', '3', '2017-06-02 02:42:50', '2017-06-02 03:12:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('889', '168', '20', '3', '2017-06-02 02:42:53', '2017-06-02 03:12:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('890', '168', '23', '3', '2017-06-02 02:42:56', '2017-06-02 03:17:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('891', '169', '7', '3', '2017-06-02 03:36:32', '2017-06-02 03:47:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('892', '169', '13', '3', '2017-06-02 03:36:36', '2017-06-02 03:36:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('893', '170', '14', '3', '2017-06-02 03:04:31', '2017-06-02 03:04:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('894', '170', '20', '3', '2017-06-02 03:04:28', '2017-06-02 03:04:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('895', '171', '14', '3', '2017-06-02 03:05:40', '2017-06-02 03:05:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('896', '171', '16', '3', '2017-06-02 03:05:38', '2017-06-02 03:05:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('897', '172', '20', '3', '2017-06-02 03:04:50', '2017-06-02 03:04:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('898', '161', '21', '3', '2017-06-02 00:12:43', '2017-06-02 00:45:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('899', '173', '7', '3', '2017-06-02 08:16:27', '2017-06-02 10:19:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('900', '173', '13', '3', '2017-06-02 09:10:41', '2017-06-02 10:19:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('901', '173', '17', '3', '2017-06-02 08:16:41', '2017-06-02 10:19:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('902', '173', '18', '3', '2017-06-02 08:16:37', '2017-06-02 12:03:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('903', '173', '19', '3', '2017-06-02 10:19:33', '2017-06-02 12:03:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('904', '173', '23', '3', '2017-06-02 08:16:32', '2017-06-02 10:19:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('916', '176', '7', '3', '2017-06-02 09:08:41', '2017-06-02 12:02:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('917', '176', '13', '3', '2017-06-02 10:20:20', '2017-06-02 12:02:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('918', '176', '18', '3', '2017-06-02 09:08:46', '2017-06-02 12:02:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('919', '176', '23', '3', '2017-06-02 09:08:50', '2017-06-02 12:02:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('920', '177', '7', '3', '2017-06-02 09:52:55', '2017-06-02 10:15:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('921', '178', '7', '3', '2017-06-02 12:03:19', '2017-06-02 14:58:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('922', '178', '13', '3', '2017-06-02 12:03:23', '2017-06-02 12:50:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('923', '178', '17', '3', '2017-06-02 12:03:27', '2017-06-02 14:58:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('924', '178', '18', '3', '2017-06-02 10:21:10', '2017-06-02 14:58:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('925', '178', '19', '3', '2017-06-02 12:03:31', '2017-06-02 12:50:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('926', '178', '23', '3', '2017-06-02 12:03:34', '2017-06-02 12:50:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('927', '179', '7', '3', '2017-06-02 21:29:36', '2017-06-02 22:16:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('928', '179', '13', '3', '2017-06-02 21:29:39', '2017-06-02 22:16:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('929', '179', '14', '3', '2017-06-02 21:29:42', '2017-06-02 22:16:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('930', '179', '18', '3', '2017-06-02 21:29:45', '2017-06-02 22:16:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('931', '179', '20', '3', '2017-06-02 21:29:48', '2017-06-02 22:16:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('932', '179', '23', '3', '2017-06-02 21:29:51', '2017-06-02 22:16:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('933', '180', '7', '3', '2017-06-02 21:04:40', '2017-06-02 21:42:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('934', '180', '13', '3', '2017-06-02 21:04:43', '2017-06-02 21:42:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('935', '180', '14', '3', '2017-06-02 21:04:46', '2017-06-02 21:42:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('936', '180', '18', '3', '2017-06-02 21:04:49', '2017-06-02 21:42:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('937', '180', '20', '3', '2017-06-02 21:04:52', '2017-06-02 21:42:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('938', '180', '23', '3', '2017-06-02 21:04:56', '2017-06-02 21:43:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('939', '181', '7', '3', '2017-06-02 21:48:16', '2017-06-02 22:30:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('940', '181', '13', '3', '2017-06-02 21:48:19', '2017-06-02 22:30:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('941', '181', '18', '3', '2017-06-02 21:48:22', '2017-06-02 22:30:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('942', '181', '20', '3', '2017-06-02 21:48:25', '2017-06-02 22:30:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('943', '181', '23', '3', '2017-06-02 21:48:28', '2017-06-02 22:30:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('944', '182', '7', '3', '2017-06-02 21:48:36', '2017-06-02 22:30:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('945', '182', '13', '3', '2017-06-02 21:48:39', '2017-06-02 22:30:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('946', '182', '18', '3', '2017-06-02 21:48:42', '2017-06-02 22:30:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('947', '182', '20', '3', '2017-06-02 21:48:45', '2017-06-02 22:30:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('948', '182', '23', '3', '2017-06-02 21:48:48', '2017-06-02 22:30:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('949', '183', '7', '3', '2017-06-02 22:16:52', '2017-06-02 22:53:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('950', '183', '13', '3', '2017-06-02 22:16:55', '2017-06-02 22:53:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('951', '183', '14', '3', '2017-06-02 22:16:58', '2017-06-02 22:53:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('952', '183', '18', '3', '2017-06-02 22:17:02', '2017-06-02 22:53:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('953', '183', '20', '3', '2017-06-02 22:17:06', '2017-06-02 22:53:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('954', '183', '23', '3', '2017-06-02 22:17:09', '2017-06-02 22:54:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('955', '184', '7', '3', '2017-06-02 22:17:55', '2017-06-02 22:45:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('956', '184', '13', '3', '2017-06-02 22:17:57', '2017-06-02 22:45:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('957', '184', '14', '3', '2017-06-02 22:18:00', '2017-06-02 22:45:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('958', '184', '18', '3', '2017-06-02 22:18:04', '2017-06-02 22:45:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('959', '184', '20', '3', '2017-06-02 22:18:07', '2017-06-02 22:45:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('960', '184', '23', '3', '2017-06-02 22:18:11', '2017-06-02 22:45:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('961', '185', '7', '3', '2017-06-02 23:04:47', '2017-06-02 23:30:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('962', '185', '13', '3', '2017-06-02 23:04:50', '2017-06-02 23:30:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('963', '185', '18', '3', '2017-06-02 23:04:53', '2017-06-02 23:30:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('964', '185', '20', '3', '2017-06-02 23:04:56', '2017-06-02 23:30:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('965', '185', '23', '3', '2017-06-02 23:04:59', '2017-06-02 23:30:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('966', '186', '7', '3', '2017-06-02 23:05:07', '2017-06-02 23:30:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('967', '186', '13', '3', '2017-06-02 23:05:10', '2017-06-02 23:30:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('968', '186', '18', '3', '2017-06-02 23:05:14', '2017-06-02 23:30:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('969', '186', '20', '3', '2017-06-02 23:05:17', '2017-06-02 23:30:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('970', '186', '23', '3', '2017-06-02 23:05:20', '2017-06-02 23:30:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('971', '187', '7', '3', '2017-06-03 01:00:59', '2017-06-03 02:02:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('972', '187', '13', '3', '2017-06-03 01:01:02', '2017-06-03 02:02:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('973', '187', '18', '3', '2017-06-03 01:01:06', '2017-06-03 02:02:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('974', '187', '20', '3', '2017-06-03 01:01:09', '2017-06-03 02:02:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('976', '187', '23', '3', '2017-06-03 01:01:15', '2017-06-03 02:02:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('977', '188', '7', '3', '2017-06-03 01:01:27', '2017-06-03 02:03:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('978', '188', '13', '3', '2017-06-03 01:01:29', '2017-06-03 02:03:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('979', '188', '18', '3', '2017-06-03 01:01:32', '2017-06-03 02:03:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('980', '188', '20', '3', '2017-06-03 01:01:36', '2017-06-03 02:03:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('981', '188', '23', '3', '2017-06-03 01:01:39', '2017-06-03 02:03:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('982', '189', '7', '3', '2017-06-03 00:33:53', '2017-06-03 02:39:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('983', '189', '13', '3', '2017-06-03 00:33:59', '2017-06-03 02:39:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('984', '189', '18', '3', '2017-06-03 00:34:03', '2017-06-03 02:39:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('985', '189', '20', '3', '2017-06-03 00:34:06', '2017-06-03 02:39:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('987', '189', '23', '3', '2017-06-03 00:34:10', '2017-06-03 02:39:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('988', '190', '7', '3', '2017-06-03 00:34:33', '2017-06-03 02:40:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('989', '190', '13', '3', '2017-06-03 00:34:38', '2017-06-03 02:40:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('990', '190', '18', '3', '2017-06-03 00:34:49', '2017-06-03 02:40:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('991', '190', '19', '3', '2017-06-03 00:35:00', '2017-06-03 02:40:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('993', '190', '23', '3', '2017-06-03 00:35:06', '2017-06-03 02:40:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('994', '191', '7', '3', '2017-06-03 02:19:13', '2017-06-03 02:56:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('995', '191', '13', '3', '2017-06-03 02:19:16', '2017-06-03 02:56:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('996', '191', '18', '3', '2017-06-03 02:19:20', '2017-06-03 02:56:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('997', '191', '20', '3', '2017-06-03 02:19:23', '2017-06-03 02:56:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('998', '191', '23', '3', '2017-06-03 02:19:26', '2017-06-03 02:56:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('999', '192', '7', '3', '2017-06-03 02:19:35', '2017-06-03 02:55:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1000', '192', '13', '3', '2017-06-03 02:19:38', '2017-06-03 02:55:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1001', '192', '14', '3', '2017-06-03 02:19:41', '2017-06-03 02:55:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1002', '192', '18', '3', '2017-06-03 02:19:44', '2017-06-03 02:55:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1003', '192', '20', '3', '2017-06-03 02:19:48', '2017-06-03 02:55:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1004', '192', '22', '3', '2017-06-03 02:19:51', '2017-06-03 02:56:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1005', '192', '23', '3', '2017-06-03 02:19:54', '2017-06-03 02:56:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1006', '193', '7', '3', '2017-06-03 03:00:41', '2017-06-03 04:21:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1007', '193', '13', '3', '2017-06-03 03:00:45', '2017-06-03 04:22:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1008', '193', '18', '3', '2017-06-03 03:00:48', '2017-06-03 04:22:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1009', '193', '23', '3', '2017-06-03 03:00:51', '2017-06-03 04:22:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1010', '193', '19', '3', '2017-06-03 03:00:54', '2017-06-03 04:22:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1011', '193', '21', '3', '2017-06-03 03:00:57', '2017-06-03 04:22:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1012', '194', '7', '3', '2017-06-03 03:28:12', '2017-06-03 03:40:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1013', '194', '13', '3', '2017-06-03 03:28:14', '2017-06-03 03:40:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1014', '194', '18', '3', '2017-06-03 03:28:17', '2017-06-03 03:40:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1015', '194', '23', '3', '2017-06-03 03:28:20', '2017-06-03 03:40:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1016', '195', '7', '3', '2017-06-03 04:09:08', '2017-06-03 04:48:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1017', '195', '13', '3', '2017-06-03 04:09:11', '2017-06-03 04:49:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1018', '195', '18', '3', '2017-06-03 04:09:14', '2017-06-03 04:49:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1019', '195', '20', '3', '2017-06-03 04:09:18', '2017-06-03 04:49:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1020', '195', '22', '3', '2017-06-03 04:09:21', '2017-06-03 04:49:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1021', '195', '23', '3', '2017-06-03 04:09:24', '2017-06-03 04:49:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1022', '196', '7', '3', '2017-06-03 04:09:34', '2017-06-03 04:49:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1023', '196', '13', '3', '2017-06-03 04:09:38', '2017-06-03 04:49:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1024', '196', '18', '3', '2017-06-03 04:09:41', '2017-06-03 04:49:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1025', '196', '20', '3', '2017-06-03 04:09:44', '2017-06-03 04:49:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1026', '196', '23', '3', '2017-06-03 04:09:50', '2017-06-03 04:49:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1027', '189', '21', '3', '2017-06-03 00:34:13', '2017-06-03 02:39:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1028', '189', '19', '3', '2017-06-03 00:34:18', '2017-06-03 02:39:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1029', '190', '20', '3', '2017-06-03 00:35:27', '2017-06-03 02:40:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1030', '190', '21', '3', '2017-06-03 00:35:32', '2017-06-03 02:40:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1031', '187', '21', '3', '2017-06-03 01:01:18', '2017-06-03 02:02:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1032', '197', '7', '3', '2017-06-03 08:11:22', '2017-06-03 10:50:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1033', '197', '13', '3', '2017-06-03 09:32:55', '2017-06-03 10:10:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1034', '197', '17', '3', '2017-06-03 08:11:27', '2017-06-03 10:50:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1035', '197', '18', '3', '2017-06-03 08:11:31', '2017-06-03 10:50:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1036', '197', '19', '3', '2017-06-03 09:32:59', '2017-06-03 10:10:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1037', '197', '23', '3', '2017-06-03 08:11:36', '2017-06-03 10:10:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1038', '198', '7', '3', '2017-06-03 13:59:30', '2017-06-03 20:58:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1039', '198', '13', '3', '2017-06-03 13:59:34', '2017-06-03 20:58:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1040', '198', '18', '3', '2017-06-03 13:59:38', '2017-06-03 20:58:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1041', '198', '23', '3', '2017-06-03 13:59:42', '2017-06-03 20:58:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1042', '199', '7', '3', '2017-06-03 21:28:10', '2017-06-03 23:04:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1043', '199', '13', '3', '2017-06-03 21:28:07', '2017-06-03 21:45:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1044', '199', '18', '3', '2017-06-03 21:28:05', '2017-06-03 21:45:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1045', '199', '20', '3', '2017-06-03 21:28:01', '2017-06-03 21:45:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1046', '199', '23', '3', '2017-06-03 21:27:58', '2017-06-03 23:05:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1047', '199', '19', '3', '2017-06-03 21:27:54', '2017-06-03 23:04:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1048', '200', '7', '3', '2017-06-03 21:29:27', '2017-06-03 22:08:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1049', '200', '13', '3', '2017-06-03 21:29:24', '2017-06-03 21:44:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1050', '200', '14', '3', '2017-06-03 21:29:22', '2017-06-03 21:44:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1051', '200', '20', '3', '2017-06-03 21:29:20', '2017-06-03 21:44:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1052', '200', '18', '3', '2017-06-03 21:28:24', '2017-06-03 21:44:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1053', '200', '23', '3', '2017-06-03 21:28:20', '2017-06-03 22:08:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1054', '201', '7', '3', '2017-06-03 20:59:08', '2017-06-03 21:29:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1055', '201', '13', '3', '2017-06-03 20:59:04', '2017-06-03 21:29:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1056', '201', '18', '3', '2017-06-03 20:59:02', '2017-06-03 21:29:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1057', '201', '20', '3', '2017-06-03 20:58:59', '2017-06-03 21:29:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1058', '201', '23', '3', '2017-06-03 20:58:55', '2017-06-03 21:29:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1059', '202', '7', '3', '2017-06-03 22:34:48', '2017-06-03 23:04:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1060', '202', '18', '3', '2017-06-03 22:34:44', '2017-06-03 23:04:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1061', '202', '20', '3', '2017-06-03 22:34:39', '2017-06-03 23:04:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1062', '202', '22', '3', '2017-06-03 22:34:35', '2017-06-03 23:04:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1063', '202', '23', '3', '2017-06-03 22:34:31', '2017-06-03 23:15:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1064', '202', '13', '3', '2017-06-03 22:02:12', '2017-06-03 22:02:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1065', '203', '7', '3', '2017-06-03 22:24:54', '2017-06-03 22:54:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1066', '203', '13', '3', '2017-06-03 21:58:20', '2017-06-03 21:58:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1067', '203', '18', '3', '2017-06-03 22:24:51', '2017-06-03 22:55:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1068', '203', '20', '3', '2017-06-03 22:24:47', '2017-06-03 22:55:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1069', '203', '23', '3', '2017-06-03 22:24:43', '2017-06-03 22:55:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1070', '204', '7', '3', '2017-06-03 22:59:39', '2017-06-03 23:30:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1071', '204', '13', '3', '2017-06-03 22:28:17', '2017-06-03 22:28:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1072', '204', '18', '3', '2017-06-03 22:59:49', '2017-06-03 23:30:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1073', '204', '20', '3', '2017-06-03 22:59:44', '2017-06-03 23:30:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1074', '204', '23', '3', '2017-06-03 22:59:42', '2017-06-03 23:30:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1075', '205', '7', '3', '2017-06-03 23:00:14', '2017-06-03 23:19:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1076', '205', '13', '3', '2017-06-03 23:00:12', '2017-06-03 23:19:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1077', '205', '18', '3', '2017-06-03 23:00:09', '2017-06-03 23:20:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1078', '205', '19', '3', '2017-06-03 23:00:07', '2017-06-04 00:16:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1079', '205', '20', '3', '2017-06-03 23:00:04', '2017-06-03 23:19:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1080', '205', '23', '3', '2017-06-03 23:00:01', '2017-06-04 00:17:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1081', '206', '7', '3', '2017-06-03 23:37:44', '2017-06-04 00:04:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1082', '206', '13', '3', '2017-06-03 23:37:40', '2017-06-04 00:04:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1083', '206', '18', '3', '2017-06-03 23:37:37', '2017-06-04 00:04:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1084', '206', '20', '3', '2017-06-03 23:37:34', '2017-06-04 00:04:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1085', '206', '23', '3', '2017-06-03 23:37:31', '2017-06-04 00:04:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1086', '207', '7', '3', '2017-06-04 00:44:49', '2017-06-04 01:07:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1087', '207', '13', '3', '2017-06-04 00:44:43', '2017-06-04 01:07:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1088', '207', '18', '3', '2017-06-04 00:44:39', '2017-06-04 01:07:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1089', '207', '20', '3', '2017-06-04 00:44:30', '2017-06-04 01:07:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1090', '207', '23', '3', '2017-06-04 00:44:26', '2017-06-04 01:09:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1091', '208', '7', '3', '2017-06-04 00:44:15', '2017-06-04 01:07:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1092', '208', '13', '3', '2017-06-04 00:44:10', '2017-06-04 01:07:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1093', '208', '18', '3', '2017-06-04 00:44:07', '2017-06-04 01:07:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1094', '208', '20', '3', '2017-06-04 00:44:03', '2017-06-04 01:07:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1095', '208', '23', '3', '2017-06-04 00:44:01', '2017-06-04 01:09:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1096', '209', '7', '3', '2017-06-04 01:10:37', '2017-06-04 01:33:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1097', '209', '13', '3', '2017-06-04 01:10:41', '2017-06-04 01:32:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1098', '209', '18', '3', '2017-06-04 01:10:45', '2017-06-04 01:33:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1099', '209', '20', '3', '2017-06-04 01:10:49', '2017-06-04 01:33:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1100', '209', '22', '3', '2017-06-04 01:10:51', '2017-06-04 01:34:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1101', '209', '23', '3', '2017-06-04 01:10:54', '2017-06-04 01:45:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1102', '210', '7', '3', '2017-06-04 01:11:28', '2017-06-04 01:34:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1103', '210', '13', '3', '2017-06-04 01:11:24', '2017-06-04 01:34:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1104', '210', '18', '3', '2017-06-04 01:11:21', '2017-06-04 01:34:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1105', '210', '20', '3', '2017-06-04 01:11:17', '2017-06-04 01:34:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1106', '210', '22', '3', '2017-06-04 01:11:14', '2017-06-04 01:34:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1107', '210', '23', '3', '2017-06-04 01:11:10', '2017-06-04 01:51:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1108', '211', '7', '3', '2017-06-04 02:37:03', '2017-06-04 03:06:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1109', '211', '13', '3', '2017-06-04 02:36:58', '2017-06-04 03:07:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1110', '211', '18', '3', '2017-06-04 02:36:50', '2017-06-04 03:07:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1111', '211', '20', '3', '2017-06-04 02:36:39', '2017-06-04 03:07:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1112', '211', '23', '3', '2017-06-04 02:36:35', '2017-06-04 03:07:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1113', '212', '7', '3', '2017-06-04 02:45:36', '2017-06-04 03:11:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1114', '212', '13', '3', '2017-06-04 02:45:32', '2017-06-04 03:11:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1115', '212', '18', '3', '2017-06-04 02:45:28', '2017-06-04 03:11:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1116', '212', '20', '3', '2017-06-04 02:45:25', '2017-06-04 03:11:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1117', '212', '23', '3', '2017-06-04 02:45:22', '2017-06-04 03:11:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1118', '213', '7', '3', '2017-06-04 02:51:49', '2017-06-04 03:27:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1119', '213', '13', '3', '2017-06-04 02:51:45', '2017-06-04 03:27:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1120', '213', '14', '3', '2017-06-04 02:51:41', '2017-06-04 03:27:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1121', '213', '18', '3', '2017-06-04 02:51:37', '2017-06-04 03:27:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1122', '213', '20', '3', '2017-06-04 02:51:33', '2017-06-04 03:27:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1123', '213', '23', '3', '2017-06-04 02:51:28', '2017-06-04 03:27:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1124', '214', '7', '3', '2017-06-04 03:54:21', '2017-06-04 04:11:40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1125', '214', '13', '3', '2017-06-04 03:54:35', '2017-06-04 04:11:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1126', '214', '14', '3', '2017-06-04 03:54:42', '2017-06-04 04:11:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1127', '214', '18', '3', '2017-06-04 03:54:46', '2017-06-04 04:11:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1128', '214', '20', '3', '2017-06-04 03:54:52', '2017-06-04 04:12:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1129', '214', '23', '3', '2017-06-04 03:54:56', '2017-06-04 04:41:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1130', '215', '7', '3', '2017-06-04 03:55:24', '2017-06-04 05:06:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1131', '215', '13', '3', '2017-06-04 03:55:21', '2017-06-04 05:06:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1132', '215', '18', '3', '2017-06-04 03:55:17', '2017-06-04 05:06:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1133', '215', '20', '3', '2017-06-04 03:55:10', '2017-06-04 05:06:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1134', '215', '23', '3', '2017-06-04 03:55:06', '2017-06-04 05:06:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1135', '216', '13', '3', '2017-06-04 04:02:40', '2017-06-04 04:02:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1136', '216', '20', '3', '2017-06-04 04:02:38', '2017-06-04 04:02:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1137', '217', '20', '3', '2017-06-04 04:02:26', '2017-06-04 04:02:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1138', '218', '16', '3', '2017-06-04 04:02:02', '2017-06-04 04:02:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1139', '218', '14', '3', '2017-06-04 04:01:59', '2017-06-04 04:02:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1140', '219', '7', '3', '2017-06-04 07:47:29', '2017-06-04 08:20:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1141', '219', '13', '3', '2017-06-04 09:07:24', '2017-06-04 09:36:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1142', '219', '17', '3', '2017-06-04 07:47:42', '2017-06-04 10:17:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1143', '219', '18', '3', '2017-06-04 07:47:51', '2017-06-04 10:17:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1144', '219', '19', '3', '2017-06-04 09:07:27', '2017-06-04 09:36:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1145', '219', '23', '3', '2017-06-04 07:47:46', '2017-06-04 09:36:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1146', '220', '7', '3', '2017-06-04 09:07:01', '2017-06-04 13:18:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1147', '220', '17', '3', '2017-06-04 10:17:55', '2017-06-04 13:18:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1148', '220', '18', '3', '2017-06-04 09:07:11', '2017-06-04 13:18:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1149', '220', '19', '3', '2017-06-04 13:18:24', '2017-06-04 13:43:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1150', '220', '23', '3', '2017-06-04 09:07:06', '2017-06-04 13:18:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1152', '221', '26', '3', '2017-06-04 10:17:17', '2017-06-04 13:18:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1153', '222', '7', '3', '2017-06-04 20:54:49', '2017-06-04 22:32:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1154', '222', '13', '3', '2017-06-04 20:54:52', '2017-06-04 22:32:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1155', '222', '18', '3', '2017-06-04 20:54:55', '2017-06-04 22:32:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1156', '222', '19', '3', '2017-06-04 20:54:57', '2017-06-04 22:32:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1157', '222', '20', '3', '2017-06-04 20:55:00', '2017-06-04 22:32:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1158', '222', '23', '3', '2017-06-04 20:55:03', '2017-06-04 22:32:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1159', '222', '26', '3', '2017-06-04 20:55:07', '2017-06-04 22:32:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1160', '223', '7', '3', '2017-06-04 21:45:00', '2017-06-04 22:32:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1161', '223', '13', '3', '2017-06-04 21:45:04', '2017-06-04 22:32:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1162', '223', '18', '3', '2017-06-04 21:45:06', '2017-06-04 22:32:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1163', '223', '20', '3', '2017-06-04 21:45:10', '2017-06-04 22:33:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1164', '223', '22', '3', '2017-06-04 21:45:13', '2017-06-04 22:33:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1165', '223', '23', '3', '2017-06-04 21:45:17', '2017-06-04 22:33:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1166', '223', '26', '3', '2017-06-04 21:45:20', '2017-06-04 22:33:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1167', '224', '7', '3', '2017-06-04 21:34:46', '2017-06-04 22:06:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1168', '224', '13', '3', '2017-06-04 21:34:49', '2017-06-04 22:06:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1169', '224', '18', '3', '2017-06-04 21:34:52', '2017-06-04 22:06:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1170', '224', '20', '3', '2017-06-04 21:34:56', '2017-06-04 22:06:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1171', '224', '23', '3', '2017-06-04 21:35:00', '2017-06-04 22:06:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1172', '224', '26', '3', '2017-06-04 21:35:03', '2017-06-04 22:06:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1173', '225', '7', '3', '2017-06-04 21:35:12', '2017-06-04 22:07:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1174', '225', '13', '3', '2017-06-04 21:35:17', '2017-06-04 22:07:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1175', '225', '18', '3', '2017-06-04 21:35:20', '2017-06-04 22:07:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1176', '225', '20', '3', '2017-06-04 21:35:24', '2017-06-04 22:07:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1177', '225', '23', '3', '2017-06-04 21:35:28', '2017-06-04 22:07:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1178', '225', '26', '3', '2017-06-04 21:35:32', '2017-06-04 22:07:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1179', '226', '7', '3', '2017-06-04 22:45:03', '2017-06-05 00:02:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1180', '226', '13', '3', '2017-06-04 22:45:05', '2017-06-05 00:02:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1181', '226', '18', '3', '2017-06-04 22:45:09', '2017-06-05 00:02:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1182', '226', '19', '3', '2017-06-04 22:45:12', '2017-06-05 00:02:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1183', '226', '20', '3', '2017-06-04 22:45:17', '2017-06-05 00:02:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1184', '226', '23', '3', '2017-06-04 22:45:24', '2017-06-05 00:02:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1185', '226', '26', '3', '2017-06-04 22:45:27', '2017-06-05 00:02:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1186', '227', '7', '3', '2017-06-04 22:50:35', '2017-06-04 23:36:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1187', '227', '13', '3', '2017-06-04 22:50:38', '2017-06-04 23:36:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1188', '227', '14', '3', '2017-06-04 22:50:40', '2017-06-04 23:36:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1189', '227', '18', '3', '2017-06-04 22:50:46', '2017-06-04 23:37:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1190', '227', '20', '3', '2017-06-04 22:50:49', '2017-06-04 23:37:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1191', '227', '23', '3', '2017-06-04 22:50:51', '2017-06-04 23:37:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1192', '227', '26', '3', '2017-06-04 22:50:55', '2017-06-04 23:37:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1193', '228', '7', '3', '2017-06-04 23:20:26', '2017-06-04 23:52:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1194', '228', '13', '3', '2017-06-04 23:20:30', '2017-06-04 23:52:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1195', '228', '18', '3', '2017-06-04 23:20:41', '2017-06-04 23:53:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1196', '228', '20', '3', '2017-06-04 23:20:45', '2017-06-04 23:53:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1197', '228', '23', '3', '2017-06-04 23:20:48', '2017-06-04 23:53:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1198', '228', '26', '3', '2017-06-04 23:20:51', '2017-06-04 23:53:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1199', '229', '7', '3', '2017-06-04 23:20:59', '2017-06-04 23:56:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1200', '229', '13', '3', '2017-06-04 23:21:02', '2017-06-04 23:56:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1201', '229', '18', '3', '2017-06-04 23:21:05', '2017-06-04 23:56:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1202', '229', '20', '3', '2017-06-04 23:21:08', '2017-06-04 23:56:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1203', '229', '23', '3', '2017-06-04 23:21:11', '2017-06-04 23:56:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1204', '229', '26', '3', '2017-06-04 23:21:13', '2017-06-04 23:56:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1205', '230', '7', '3', '2017-06-05 01:08:07', '2017-06-05 01:47:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1206', '230', '13', '3', '2017-06-05 01:08:10', '2017-06-05 01:47:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1207', '230', '14', '3', '2017-06-05 01:08:15', '2017-06-05 01:47:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1208', '230', '18', '3', '2017-06-05 01:08:19', '2017-06-05 01:47:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1209', '230', '23', '3', '2017-06-05 01:08:25', '2017-06-05 01:47:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1210', '230', '20', '3', '2017-06-05 01:08:43', '2017-06-05 01:47:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1211', '230', '26', '3', '2017-06-05 01:08:49', '2017-06-05 01:47:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1212', '231', '7', '3', '2017-06-05 01:09:30', '2017-06-05 01:48:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1213', '231', '13', '3', '2017-06-05 01:09:34', '2017-06-05 01:48:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1214', '231', '14', '3', '2017-06-05 01:09:39', '2017-06-05 01:48:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1215', '231', '18', '3', '2017-06-05 01:09:42', '2017-06-05 01:48:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1216', '231', '20', '3', '2017-06-05 01:09:53', '2017-06-05 01:49:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1217', '231', '23', '3', '2017-06-05 01:09:59', '2017-06-05 01:49:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1218', '231', '26', '3', '2017-06-05 01:10:04', '2017-06-05 01:49:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1219', '232', '7', '3', '2017-06-05 01:32:41', '2017-06-05 02:09:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1220', '232', '13', '3', '2017-06-05 01:33:03', '2017-06-05 02:09:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1221', '232', '18', '3', '2017-06-05 01:33:13', '2017-06-05 02:09:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1222', '232', '20', '3', '2017-06-05 01:33:17', '2017-06-05 02:09:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1223', '232', '22', '3', '2017-06-05 01:33:23', '2017-06-05 02:09:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1224', '232', '23', '3', '2017-06-05 01:33:26', '2017-06-05 02:09:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1225', '232', '26', '3', '2017-06-05 01:33:32', '2017-06-05 02:10:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1226', '233', '7', '3', '2017-06-05 01:33:42', '2017-06-05 02:10:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1227', '233', '13', '3', '2017-06-05 01:33:48', '2017-06-05 02:10:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1228', '233', '18', '3', '2017-06-05 01:33:50', '2017-06-05 02:10:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1229', '233', '20', '3', '2017-06-05 01:34:01', '2017-06-05 02:10:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1230', '233', '23', '3', '2017-06-05 01:34:04', '2017-06-05 02:10:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1231', '233', '26', '3', '2017-06-05 01:34:29', '2017-06-05 02:10:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1232', '234', '7', '3', '2017-06-05 03:03:19', '2017-06-05 03:33:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1233', '234', '13', '3', '2017-06-05 03:03:22', '2017-06-05 03:33:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1234', '234', '18', '3', '2017-06-05 03:03:25', '2017-06-05 03:33:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1235', '234', '20', '3', '2017-06-05 03:03:28', '2017-06-05 03:33:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1236', '234', '23', '3', '2017-06-05 03:03:31', '2017-06-05 03:33:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1237', '234', '26', '3', '2017-06-05 03:03:34', '2017-06-05 03:33:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1238', '235', '7', '3', '2017-06-05 03:03:46', '2017-06-05 03:34:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1239', '235', '13', '3', '2017-06-05 03:03:49', '2017-06-05 03:34:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1240', '235', '18', '3', '2017-06-05 03:03:51', '2017-06-05 03:34:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1241', '235', '20', '3', '2017-06-05 03:03:54', '2017-06-05 03:34:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1242', '235', '23', '3', '2017-06-05 03:03:57', '2017-06-05 03:34:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1243', '235', '26', '3', '2017-06-05 03:04:00', '2017-06-05 03:34:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1244', '236', '7', '3', '2017-06-05 03:11:39', '2017-06-05 03:53:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1245', '236', '13', '3', '2017-06-05 03:11:42', '2017-06-05 03:53:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1246', '236', '18', '3', '2017-06-05 03:11:45', '2017-06-05 03:53:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1248', '236', '22', '3', '2017-06-05 03:11:48', '2017-06-05 03:53:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1249', '236', '23', '3', '2017-06-05 03:11:53', '2017-06-05 03:53:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1250', '236', '26', '3', '2017-06-05 03:11:56', '2017-06-05 03:54:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1251', '237', '7', '3', '2017-06-05 03:21:48', '2017-06-05 03:54:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1252', '237', '13', '3', '2017-06-05 03:21:52', '2017-06-05 03:54:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1253', '237', '26', '3', '2017-06-05 03:21:56', '2017-06-05 03:54:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1254', '238', '7', '3', '2017-06-05 03:43:55', '2017-06-05 04:16:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1255', '238', '13', '3', '2017-06-05 03:43:58', '2017-06-05 04:16:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1256', '238', '14', '3', '2017-06-05 03:44:01', '2017-06-05 04:16:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1257', '238', '18', '3', '2017-06-05 03:44:05', '2017-06-05 04:17:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1258', '238', '20', '3', '2017-06-05 03:45:13', '2017-06-05 04:17:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1259', '238', '23', '3', '2017-06-05 03:45:16', '2017-06-05 04:17:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1260', '238', '26', '3', '2017-06-05 03:45:19', '2017-06-05 04:17:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1261', '239', '7', '3', '2017-06-05 03:45:26', '2017-06-05 04:17:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1262', '239', '13', '3', '2017-06-05 03:45:28', '2017-06-05 04:17:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1263', '239', '14', '3', '2017-06-05 03:45:31', '2017-06-05 04:18:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1264', '239', '18', '3', '2017-06-05 03:45:34', '2017-06-05 04:18:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1265', '239', '20', '3', '2017-06-05 03:45:37', '2017-06-05 04:18:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1267', '239', '23', '3', '2017-06-05 03:45:40', '2017-06-05 04:18:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1268', '239', '26', '3', '2017-06-05 03:45:43', '2017-06-05 04:18:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1269', '240', '14', '3', '2017-06-04 20:55:27', '2017-06-04 21:29:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1270', '240', '16', '3', '2017-06-04 20:55:30', '2017-06-04 21:29:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1271', '240', '20', '3', '2017-06-04 20:55:33', '2017-06-04 21:29:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1272', '241', '20', '3', '2017-06-04 20:55:48', '2017-06-04 21:29:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1273', '242', '20', '3', '2017-06-04 20:56:02', '2017-06-04 21:29:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1274', '239', '21', '3', '2017-06-05 03:45:48', '2017-06-05 04:18:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1275', '243', '7', '3', '2017-06-05 08:17:42', '2017-06-05 08:56:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1276', '243', '13', '3', '2017-06-05 10:52:50', '2017-06-05 11:26:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1277', '243', '17', '3', '2017-06-05 08:17:46', '2017-06-05 11:26:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1278', '243', '18', '3', '2017-06-05 08:17:51', '2017-06-05 11:26:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1279', '243', '19', '3', '2017-06-05 10:52:54', '2017-06-05 11:26:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1280', '243', '23', '3', '2017-06-05 08:17:55', '2017-06-05 11:26:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1281', '244', '7', '3', '2017-06-05 11:26:14', '2017-06-05 14:55:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1282', '244', '13', '3', '2017-06-05 13:11:44', '2017-06-05 14:55:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1283', '244', '17', '3', '2017-06-05 11:26:19', '2017-06-05 14:55:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1284', '244', '18', '3', '2017-06-05 11:26:23', '2017-06-05 14:55:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1285', '244', '19', '3', '2017-06-05 13:11:48', '2017-06-05 14:55:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1286', '244', '23', '3', '2017-06-05 11:26:27', '2017-06-05 14:55:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1287', '245', '26', '3', '2017-06-05 10:16:32', '2017-06-05 10:52:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1288', '246', '18', '3', '2017-06-05 14:10:26', '2017-06-05 14:55:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1289', '246', '23', '3', '2017-06-05 14:10:29', '2017-06-05 14:55:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1290', '246', '26', '3', '2017-06-05 09:27:17', '2017-06-05 09:52:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1291', '247', '7', '3', '2017-06-05 20:57:06', '2017-06-05 21:27:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1292', '247', '13', '3', '2017-06-05 20:57:08', '2017-06-05 21:27:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1293', '247', '14', '3', '2017-06-05 20:57:03', '2017-06-05 21:26:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1294', '247', '20', '3', '2017-06-05 20:57:00', '2017-06-05 21:26:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1295', '247', '18', '3', '2017-06-05 20:56:58', '2017-06-05 21:26:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1296', '247', '23', '3', '2017-06-05 20:56:55', '2017-06-05 21:26:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1297', '248', '7', '3', '2017-06-05 20:57:38', '2017-06-05 21:26:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1298', '248', '13', '3', '2017-06-05 20:57:35', '2017-06-05 21:26:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1299', '248', '14', '3', '2017-06-05 20:57:33', '2017-06-05 21:26:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1300', '248', '18', '3', '2017-06-05 20:57:30', '2017-06-05 21:26:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1301', '248', '20', '3', '2017-06-05 20:57:28', '2017-06-05 21:26:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1302', '248', '23', '3', '2017-06-05 20:57:25', '2017-06-05 21:26:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1303', '249', '7', '3', '2017-06-05 21:45:55', '2017-06-05 22:18:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1304', '249', '13', '3', '2017-06-05 21:45:51', '2017-06-05 22:17:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1305', '249', '18', '3', '2017-06-05 21:45:48', '2017-06-05 22:17:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1306', '249', '20', '3', '2017-06-05 21:45:44', '2017-06-05 22:17:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1307', '249', '23', '3', '2017-06-05 21:45:42', '2017-06-05 22:17:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1308', '250', '7', '3', '2017-06-05 21:46:26', '2017-06-05 22:13:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1309', '250', '13', '3', '2017-06-05 21:46:22', '2017-06-05 22:12:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1310', '250', '18', '3', '2017-06-05 21:46:18', '2017-06-05 22:12:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1311', '250', '20', '3', '2017-06-05 21:46:15', '2017-06-05 22:12:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1312', '250', '23', '3', '2017-06-05 21:46:11', '2017-06-05 22:12:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1313', '251', '7', '3', '2017-06-05 23:14:27', '2017-06-05 23:55:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1314', '251', '13', '3', '2017-06-05 23:14:20', '2017-06-05 23:55:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1315', '251', '18', '3', '2017-06-05 23:14:16', '2017-06-05 23:55:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1316', '251', '20', '3', '2017-06-05 23:14:13', '2017-06-05 23:55:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1317', '251', '23', '3', '2017-06-05 23:14:10', '2017-06-05 23:55:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1318', '251', '22', '3', '2017-06-05 23:14:06', '2017-06-05 23:55:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1319', '252', '7', '3', '2017-06-05 23:15:00', '2017-06-05 23:56:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1320', '252', '13', '3', '2017-06-05 23:14:57', '2017-06-05 23:56:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1321', '252', '18', '3', '2017-06-05 23:14:53', '2017-06-05 23:56:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1322', '252', '20', '3', '2017-06-05 23:14:49', '2017-06-05 23:56:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1323', '252', '23', '3', '2017-06-05 23:14:46', '2017-06-05 23:56:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1324', '253', '7', '3', '2017-06-05 22:56:03', '2017-06-05 23:26:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1325', '253', '13', '3', '2017-06-05 22:56:01', '2017-06-05 23:26:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1326', '253', '14', '3', '2017-06-05 22:55:56', '2017-06-05 23:26:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1327', '253', '18', '3', '2017-06-05 22:55:53', '2017-06-05 23:26:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1328', '253', '20', '3', '2017-06-05 22:55:50', '2017-06-05 23:26:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1329', '253', '23', '3', '2017-06-05 22:55:46', '2017-06-05 23:26:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1330', '254', '7', '3', '2017-06-05 23:43:26', '2017-06-06 00:19:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1331', '254', '13', '3', '2017-06-05 23:43:24', '2017-06-06 00:19:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1332', '254', '14', '3', '2017-06-05 23:43:20', '2017-06-06 00:19:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1333', '254', '18', '3', '2017-06-05 23:43:16', '2017-06-06 00:19:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1334', '254', '20', '3', '2017-06-05 23:43:11', '2017-06-06 00:19:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1335', '254', '22', '3', '2017-06-05 23:43:07', '2017-06-06 00:19:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1336', '254', '23', '3', '2017-06-05 23:43:04', '2017-06-06 00:19:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1337', '255', '7', '3', '2017-06-06 00:39:13', '2017-06-06 01:12:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1338', '255', '13', '3', '2017-06-06 00:39:08', '2017-06-06 01:12:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1339', '255', '18', '3', '2017-06-06 00:38:59', '2017-06-06 01:12:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1340', '255', '20', '3', '2017-06-06 00:38:56', '2017-06-06 01:12:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1341', '255', '23', '3', '2017-06-06 00:38:52', '2017-06-06 01:12:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1342', '256', '7', '3', '2017-06-06 00:39:53', '2017-06-06 01:12:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1343', '256', '13', '3', '2017-06-06 00:39:50', '2017-06-06 01:12:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1344', '256', '18', '3', '2017-06-06 00:39:45', '2017-06-06 01:12:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1345', '256', '20', '3', '2017-06-06 00:39:39', '2017-06-06 01:12:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1346', '256', '23', '3', '2017-06-06 00:39:36', '2017-06-06 01:12:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1347', '257', '7', '3', '2017-06-06 01:46:08', '2017-06-06 02:08:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1348', '257', '13', '3', '2017-06-06 01:46:03', '2017-06-06 02:08:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1349', '257', '18', '3', '2017-06-06 01:45:56', '2017-06-06 02:08:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1350', '257', '20', '3', '2017-06-06 01:45:52', '2017-06-06 02:08:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1351', '257', '23', '3', '2017-06-06 01:45:48', '2017-06-06 02:08:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1352', '258', '7', '3', '2017-06-06 01:46:46', '2017-06-06 02:09:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1353', '258', '13', '3', '2017-06-06 01:46:41', '2017-06-06 02:09:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1354', '258', '18', '3', '2017-06-06 01:46:39', '2017-06-06 02:09:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1355', '258', '20', '3', '2017-06-06 01:46:36', '2017-06-06 02:08:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1356', '258', '23', '3', '2017-06-06 01:46:32', '2017-06-06 02:08:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1357', '259', '7', '3', '2017-06-06 03:07:32', '2017-06-06 04:32:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1358', '259', '13', '3', '2017-06-06 03:07:28', '2017-06-06 04:32:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1359', '259', '18', '3', '2017-06-06 03:07:25', '2017-06-06 04:32:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1360', '259', '20', '3', '2017-06-06 03:07:22', '2017-06-06 04:31:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1361', '259', '23', '3', '2017-06-06 03:07:20', '2017-06-06 04:31:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1362', '260', '7', '3', '2017-06-06 03:08:20', '2017-06-06 04:32:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1363', '260', '13', '3', '2017-06-06 03:08:16', '2017-06-06 04:32:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1364', '260', '18', '3', '2017-06-06 03:08:12', '2017-06-06 04:32:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1365', '260', '20', '3', '2017-06-06 03:08:08', '2017-06-06 04:32:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1366', '260', '23', '3', '2017-06-06 03:08:03', '2017-06-06 04:32:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1367', '260', '22', '3', '2017-06-06 03:07:59', '2017-06-06 04:32:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1368', '260', '19', '3', '2017-06-06 03:07:55', '2017-06-06 04:32:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1369', '261', '7', '3', '2017-06-06 02:43:59', '2017-06-06 04:08:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1370', '261', '13', '3', '2017-06-06 02:43:55', '2017-06-06 04:07:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1371', '261', '14', '3', '2017-06-06 02:43:39', '2017-06-06 04:07:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1372', '261', '18', '3', '2017-06-06 02:43:36', '2017-06-06 04:07:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1373', '261', '19', '3', '2017-06-06 02:43:34', '2017-06-06 04:07:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1374', '261', '20', '3', '2017-06-06 02:43:29', '2017-06-06 04:07:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1375', '261', '22', '3', '2017-06-06 02:43:25', '2017-06-06 04:07:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1376', '261', '23', '3', '2017-06-06 02:43:22', '2017-06-06 04:07:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1377', '262', '7', '3', '2017-06-06 02:11:08', '2017-06-06 04:08:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1378', '262', '13', '3', '2017-06-06 02:11:05', '2017-06-06 04:08:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1379', '262', '18', '3', '2017-06-06 02:10:54', '2017-06-06 04:08:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1380', '262', '20', '3', '2017-06-06 02:10:52', '2017-06-06 04:08:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1381', '262', '22', '3', '2017-06-06 02:10:48', '2017-06-06 04:08:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1382', '262', '23', '3', '2017-06-06 02:10:45', '2017-06-06 04:08:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1383', '263', '16', '3', '2017-06-06 03:08:49', '2017-06-06 03:08:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1384', '264', '20', '3', '2017-06-06 03:08:36', '2017-06-06 03:08:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1385', '265', '7', '3', '2017-06-06 08:00:03', '2017-06-06 10:01:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1386', '265', '13', '3', '2017-06-06 09:21:23', '2017-06-06 10:01:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1387', '265', '17', '3', '2017-06-06 08:00:08', '2017-06-06 14:01:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1388', '265', '18', '3', '2017-06-06 08:00:11', '2017-06-06 14:01:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1389', '265', '19', '3', '2017-06-06 09:21:28', '2017-06-06 10:01:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1390', '265', '23', '3', '2017-06-06 08:00:15', '2017-06-06 10:01:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1391', '265', '26', '3', '2017-06-06 07:59:59', '2017-06-06 09:09:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1392', '266', '7', '3', '2017-06-06 11:03:28', '2017-06-06 14:01:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1393', '266', '13', '3', '2017-06-06 14:01:27', '2017-06-06 14:39:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1394', '266', '17', '3', '2017-06-06 11:03:44', '2017-06-06 14:01:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1395', '266', '18', '3', '2017-06-06 11:03:34', '2017-06-06 14:01:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1396', '266', '19', '3', '2017-06-06 14:01:31', '2017-06-06 14:40:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1397', '266', '23', '3', '2017-06-06 11:03:40', '2017-06-06 14:01:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1398', '266', '26', '3', '2017-06-06 09:08:40', '2017-06-06 14:01:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1399', '267', '26', '3', '2017-06-06 09:38:59', '2017-06-06 10:00:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1400', '268', '13', '3', '2017-06-06 10:00:56', '2017-06-06 11:00:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1401', '268', '18', '3', '2017-06-06 10:01:00', '2017-06-06 11:00:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1402', '268', '23', '3', '2017-06-06 10:00:52', '2017-06-06 11:00:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1403', '268', '26', '3', '2017-06-06 10:00:48', '2017-06-06 10:19:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1404', '269', '13', '3', '2017-06-06 21:05:51', '2017-06-06 21:50:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1405', '269', '18', '3', '2017-06-06 21:05:54', '2017-06-06 21:50:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1406', '269', '20', '3', '2017-06-06 21:05:56', '2017-06-06 21:51:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1407', '269', '22', '3', '2017-06-06 21:06:00', '2017-06-06 21:51:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1408', '269', '23', '3', '2017-06-06 21:06:03', '2017-06-06 21:51:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1409', '269', '26', '3', '2017-06-06 21:06:06', '2017-06-06 21:51:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1410', '270', '13', '3', '2017-06-06 21:05:12', '2017-06-06 21:35:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1411', '270', '18', '3', '2017-06-06 21:05:15', '2017-06-06 21:35:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1412', '270', '20', '3', '2017-06-06 21:05:18', '2017-06-06 21:35:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1413', '270', '23', '3', '2017-06-06 21:05:41', '2017-06-06 21:35:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1414', '270', '26', '3', '2017-06-06 21:05:45', '2017-06-06 21:36:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1415', '271', '13', '3', '2017-06-06 21:41:24', '2017-06-06 22:16:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1416', '271', '14', '3', '2017-06-06 21:41:30', '2017-06-06 22:16:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1417', '271', '18', '3', '2017-06-06 21:41:38', '2017-06-06 22:16:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1418', '271', '20', '3', '2017-06-06 21:41:43', '2017-06-06 22:16:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1419', '271', '23', '3', '2017-06-06 21:41:52', '2017-06-06 22:16:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1420', '271', '26', '3', '2017-06-06 21:41:58', '2017-06-06 22:16:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1421', '272', '13', '3', '2017-06-06 21:42:12', '2017-06-06 22:16:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1422', '272', '14', '3', '2017-06-06 21:42:25', '2017-06-06 22:16:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1423', '272', '18', '3', '2017-06-06 21:42:28', '2017-06-06 22:17:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1424', '272', '20', '3', '2017-06-06 21:42:30', '2017-06-06 22:17:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1425', '272', '23', '3', '2017-06-06 21:42:35', '2017-06-06 22:17:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1426', '272', '26', '3', '2017-06-06 21:42:38', '2017-06-06 22:17:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1427', '273', '13', '3', '2017-06-06 22:35:15', '2017-06-06 23:15:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1428', '273', '14', '3', '2017-06-06 22:35:20', '2017-06-06 23:16:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1429', '273', '18', '3', '2017-06-06 22:35:23', '2017-06-06 23:16:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1430', '273', '20', '3', '2017-06-06 22:35:26', '2017-06-06 23:16:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1431', '273', '23', '3', '2017-06-06 22:35:29', '2017-06-06 23:16:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1432', '273', '26', '3', '2017-06-06 22:35:32', '2017-06-06 23:16:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1433', '274', '13', '3', '2017-06-06 22:36:04', '2017-06-06 23:16:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1434', '274', '18', '3', '2017-06-06 22:36:08', '2017-06-06 23:16:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1435', '274', '20', '3', '2017-06-06 22:36:10', '2017-06-06 23:17:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1436', '274', '23', '3', '2017-06-06 22:36:14', '2017-06-06 23:17:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1437', '274', '26', '3', '2017-06-06 22:36:17', '2017-06-06 23:17:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1438', '275', '13', '3', '2017-06-06 23:00:13', '2017-06-06 23:30:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1439', '275', '18', '3', '2017-06-06 23:00:15', '2017-06-06 23:30:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1440', '275', '20', '3', '2017-06-06 23:00:18', '2017-06-06 23:30:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1441', '275', '23', '3', '2017-06-06 23:00:26', '2017-06-06 23:30:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1442', '275', '26', '3', '2017-06-06 23:00:28', '2017-06-06 23:30:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1443', '276', '13', '3', '2017-06-06 23:00:38', '2017-06-06 23:30:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1444', '276', '18', '3', '2017-06-06 23:00:41', '2017-06-06 23:30:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1445', '276', '20', '3', '2017-06-06 23:00:43', '2017-06-06 23:30:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1446', '276', '23', '3', '2017-06-06 23:00:46', '2017-06-06 23:30:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1447', '276', '26', '3', '2017-06-06 23:00:50', '2017-06-06 23:15:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1448', '277', '13', '3', '2017-06-06 23:58:04', '2017-06-07 00:40:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1449', '277', '18', '3', '2017-06-06 23:58:24', '2017-06-07 00:41:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1450', '277', '20', '3', '2017-06-06 23:58:27', '2017-06-07 00:41:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1451', '277', '22', '3', '2017-06-06 23:58:29', '2017-06-07 00:41:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1452', '277', '23', '3', '2017-06-06 23:58:32', '2017-06-07 00:41:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1453', '277', '26', '3', '2017-06-06 23:58:36', '2017-06-07 00:41:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1454', '278', '13', '3', '2017-06-07 00:24:48', '2017-06-07 00:50:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1455', '278', '18', '3', '2017-06-07 00:25:02', '2017-06-07 00:50:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1456', '278', '20', '3', '2017-06-07 00:25:05', '2017-06-07 00:50:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1457', '278', '23', '3', '2017-06-07 00:25:09', '2017-06-07 00:50:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1458', '278', '26', '3', '2017-06-07 00:25:12', '2017-06-07 00:50:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1459', '279', '13', '3', '2017-06-07 00:41:34', '2017-06-07 01:13:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1460', '279', '18', '3', '2017-06-07 00:41:38', '2017-06-07 01:13:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1461', '279', '20', '3', '2017-06-07 00:41:42', '2017-06-07 01:13:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1462', '279', '23', '3', '2017-06-07 00:41:46', '2017-06-07 01:13:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1463', '279', '26', '3', '2017-06-07 00:41:48', '2017-06-07 01:13:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1464', '280', '13', '3', '2017-06-07 00:41:55', '2017-06-07 01:13:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1465', '280', '18', '3', '2017-06-07 00:41:58', '2017-06-07 01:13:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1466', '280', '20', '3', '2017-06-07 00:42:00', '2017-06-07 01:14:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1467', '280', '23', '3', '2017-06-07 00:42:03', '2017-06-07 01:14:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1468', '280', '26', '3', '2017-06-07 00:42:05', '2017-06-07 01:14:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1469', '281', '13', '3', '2017-06-07 01:56:07', '2017-06-07 02:21:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1470', '281', '14', '3', '2017-06-07 01:56:10', '2017-06-07 02:21:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1471', '281', '20', '3', '2017-06-07 01:56:14', '2017-06-07 02:22:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1472', '281', '26', '3', '2017-06-07 01:56:17', '2017-06-07 02:22:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1473', '282', '13', '3', '2017-06-07 02:05:03', '2017-06-07 02:36:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1474', '282', '18', '3', '2017-06-07 02:05:15', '2017-06-07 02:36:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1475', '282', '20', '3', '2017-06-07 02:05:20', '2017-06-07 02:36:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1476', '282', '23', '3', '2017-06-07 02:05:23', '2017-06-07 02:36:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1477', '282', '26', '3', '2017-06-07 02:05:29', '2017-06-07 02:36:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1478', '283', '13', '3', '2017-06-07 02:56:03', '2017-06-07 03:11:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1479', '283', '18', '3', '2017-06-07 02:56:06', '2017-06-07 03:11:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1480', '283', '20', '3', '2017-06-07 02:56:08', '2017-06-07 03:11:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1481', '283', '23', '3', '2017-06-07 02:56:11', '2017-06-07 03:11:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1482', '283', '26', '3', '2017-06-07 02:56:14', '2017-06-07 03:11:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1483', '284', '13', '3', '2017-06-07 02:56:21', '2017-06-07 03:11:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1484', '284', '18', '3', '2017-06-07 02:56:23', '2017-06-07 03:11:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1485', '284', '20', '3', '2017-06-07 02:56:26', '2017-06-07 03:11:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1486', '284', '23', '3', '2017-06-07 02:56:29', '2017-06-07 03:11:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1487', '284', '26', '3', '2017-06-07 02:56:31', '2017-06-07 03:11:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1488', '285', '26', '3', '2017-06-07 04:07:03', '2017-06-07 04:28:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1489', '286', '13', '3', '2017-06-07 04:21:36', '2017-06-07 06:13:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1490', '286', '18', '3', '2017-06-07 04:21:41', '2017-06-07 06:13:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1491', '286', '19', '3', '2017-06-07 04:21:44', '2017-06-07 06:13:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1492', '286', '23', '3', '2017-06-07 04:21:48', '2017-06-07 06:13:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1493', '286', '26', '3', '2017-06-07 04:21:51', '2017-06-07 06:13:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1494', '287', '14', '3', '2017-06-07 03:10:07', '2017-06-07 03:10:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1495', '287', '16', '3', '2017-06-07 03:10:11', '2017-06-07 03:10:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1496', '287', '20', '3', '2017-06-07 03:10:13', '2017-06-07 03:10:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1497', '288', '20', '3', '2017-06-07 03:10:21', '2017-06-07 03:10:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1498', '289', '7', '3', '2017-06-07 08:07:06', '2017-06-07 09:49:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1499', '289', '13', '3', '2017-06-07 09:49:41', '2017-06-07 10:19:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1500', '289', '17', '3', '2017-06-07 08:07:23', '2017-06-07 09:49:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1501', '289', '19', '3', '2017-06-07 09:49:48', '2017-06-07 10:19:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1502', '289', '23', '3', '2017-06-07 08:07:30', '2017-06-07 10:19:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1503', '289', '26', '3', '2017-06-07 08:07:36', '2017-06-07 10:18:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1504', '290', '7', '3', '2017-06-07 08:31:44', '2017-06-07 09:50:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1505', '290', '13', '3', '2017-06-07 09:50:57', '2017-06-07 10:46:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1506', '290', '17', '3', '2017-06-07 08:31:50', '2017-06-07 09:50:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1507', '290', '18', '3', '2017-06-07 08:31:55', '2017-06-07 13:23:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1508', '290', '19', '3', '2017-06-07 09:50:53', '2017-06-07 10:46:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1509', '290', '23', '3', '2017-06-07 08:32:01', '2017-06-07 13:23:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1510', '290', '26', '3', '2017-06-07 08:32:08', '2017-06-07 09:50:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1511', '291', '7', '3', '2017-06-07 13:18:16', '2017-06-07 15:08:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1512', '291', '13', '3', '2017-06-07 13:18:22', '2017-06-07 13:46:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1513', '291', '17', '3', '2017-06-07 13:18:30', '2017-06-07 15:08:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1514', '291', '18', '3', '2017-06-07 13:18:37', '2017-06-07 15:08:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1515', '291', '19', '3', '2017-06-07 13:18:49', '2017-06-07 13:46:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1516', '291', '21', '3', '2017-06-07 13:18:56', '2017-06-07 13:47:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1517', '291', '23', '3', '2017-06-07 13:19:06', '2017-06-07 15:08:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1518', '291', '26', '3', '2017-06-07 13:19:16', '2017-06-07 13:46:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1519', '292', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1520', '292', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1521', '292', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1522', '292', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1523', '292', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1524', '293', '13', '3', '2017-06-07 20:48:21', '2017-06-07 21:35:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1525', '293', '18', '3', '2017-06-07 20:48:18', '2017-06-07 21:35:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1526', '293', '20', '3', '2017-06-07 20:48:14', '2017-06-07 21:34:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1527', '293', '23', '3', '2017-06-07 20:48:11', '2017-06-07 21:34:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1528', '293', '26', '3', '2017-06-07 20:48:05', '2017-06-07 21:34:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1529', '294', '13', '3', '2017-06-07 20:56:11', '2017-06-07 21:53:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1530', '294', '18', '3', '2017-06-07 20:56:03', '2017-06-07 21:53:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1531', '294', '20', '3', '2017-06-07 20:55:58', '2017-06-07 21:53:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1532', '294', '22', '3', '2017-06-07 20:55:54', '2017-06-07 21:53:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1533', '294', '23', '3', '2017-06-07 20:55:50', '2017-06-07 21:53:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1534', '294', '26', '3', '2017-06-07 20:55:46', '2017-06-07 21:52:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1535', '295', '13', '3', '2017-06-07 21:28:15', '2017-06-07 22:05:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1536', '295', '18', '3', '2017-06-07 21:28:11', '2017-06-07 22:05:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1537', '295', '20', '3', '2017-06-07 21:28:08', '2017-06-07 22:05:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1539', '295', '23', '3', '2017-06-07 21:28:00', '2017-06-07 22:05:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1540', '295', '26', '3', '2017-06-07 21:27:55', '2017-06-07 22:05:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1541', '296', '13', '3', '2017-06-07 21:27:43', '2017-06-07 22:06:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1542', '296', '18', '3', '2017-06-07 21:27:39', '2017-06-07 22:06:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1543', '296', '20', '3', '2017-06-07 21:27:35', '2017-06-07 22:06:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1544', '296', '23', '3', '2017-06-07 21:27:31', '2017-06-07 22:06:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1545', '296', '26', '3', '2017-06-07 21:27:27', '2017-06-07 22:05:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1546', '297', '13', '3', '2017-06-07 22:06:56', '2017-06-07 22:30:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1547', '297', '14', '3', '2017-06-07 22:06:52', '2017-06-07 22:30:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1548', '297', '18', '3', '2017-06-07 22:06:48', '2017-06-07 22:30:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1549', '297', '20', '3', '2017-06-07 22:06:43', '2017-06-07 22:30:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1550', '297', '23', '3', '2017-06-07 22:06:40', '2017-06-07 22:29:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1551', '297', '26', '3', '2017-06-07 22:06:37', '2017-06-07 22:29:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1552', '298', '13', '3', '2017-06-07 22:09:57', '2017-06-07 22:35:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1553', '298', '18', '3', '2017-06-07 22:09:54', '2017-06-07 22:35:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1554', '298', '20', '3', '2017-06-07 22:09:50', '2017-06-07 22:35:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1555', '298', '23', '3', '2017-06-07 22:09:46', '2017-06-07 22:35:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1556', '298', '26', '3', '2017-06-07 22:09:41', '2017-06-07 22:35:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1557', '299', '13', '3', '2017-06-07 22:33:51', '2017-06-07 22:59:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1558', '299', '18', '3', '2017-06-07 22:33:48', '2017-06-07 22:59:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1559', '299', '20', '3', '2017-06-07 22:33:44', '2017-06-07 22:58:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1560', '299', '23', '3', '2017-06-07 22:33:41', '2017-06-08 00:37:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1561', '299', '26', '3', '2017-06-07 22:33:38', '2017-06-07 22:58:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1562', '300', '13', '3', '2017-06-07 22:34:30', '2017-06-08 00:38:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1563', '300', '18', '3', '2017-06-07 22:34:26', '2017-06-07 22:58:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1564', '300', '23', '3', '2017-06-07 22:34:22', '2017-06-07 22:58:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1565', '300', '26', '3', '2017-06-07 22:34:17', '2017-06-07 22:58:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1566', '300', '20', '3', '2017-06-07 22:34:13', '2017-06-07 22:58:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1567', '300', '19', '3', '2017-06-07 22:34:01', '2017-06-07 22:58:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1568', '299', '19', '3', '2017-06-07 22:33:34', '2017-06-07 22:58:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1569', '301', '13', '3', '2017-06-08 00:17:26', '2017-06-08 00:40:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1570', '301', '18', '3', '2017-06-08 00:17:22', '2017-06-08 00:40:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1571', '301', '20', '3', '2017-06-08 00:17:19', '2017-06-08 00:40:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1572', '301', '23', '3', '2017-06-08 00:17:16', '2017-06-08 00:40:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1573', '301', '26', '3', '2017-06-08 00:17:11', '2017-06-08 00:40:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1574', '302', '13', '3', '2017-06-08 00:16:56', '2017-06-08 00:42:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1575', '302', '18', '3', '2017-06-08 00:16:50', '2017-06-08 00:42:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1576', '302', '20', '3', '2017-06-08 00:16:46', '2017-06-08 00:42:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1577', '302', '23', '3', '2017-06-08 00:16:41', '2017-06-08 00:44:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1578', '302', '26', '3', '2017-06-08 00:16:37', '2017-06-08 00:42:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1579', '303', '13', '3', '2017-06-08 00:47:52', '2017-06-08 01:20:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1580', '303', '18', '3', '2017-06-08 00:47:49', '2017-06-08 01:20:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1581', '303', '20', '3', '2017-06-08 00:47:43', '2017-06-08 01:20:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1582', '303', '23', '3', '2017-06-08 00:47:39', '2017-06-08 01:20:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1583', '303', '26', '3', '2017-06-08 00:47:34', '2017-06-08 01:20:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1584', '304', '13', '3', '2017-06-08 00:47:20', '2017-06-08 01:22:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1585', '304', '14', '3', '2017-06-08 00:47:17', '2017-06-08 01:21:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1586', '304', '18', '3', '2017-06-08 00:47:13', '2017-06-08 01:21:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1587', '304', '20', '3', '2017-06-08 00:47:10', '2017-06-08 01:21:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1588', '304', '23', '3', '2017-06-08 00:47:07', '2017-06-08 01:21:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1589', '304', '26', '3', '2017-06-08 00:47:03', '2017-06-08 01:20:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1590', '305', '13', '3', '2017-06-08 01:43:35', '2017-06-08 02:14:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1591', '305', '18', '3', '2017-06-08 01:43:29', '2017-06-08 02:14:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1592', '305', '20', '3', '2017-06-08 01:43:23', '2017-06-08 02:14:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1593', '305', '23', '3', '2017-06-08 01:43:18', '2017-06-08 02:14:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1594', '305', '26', '3', '2017-06-08 01:43:12', '2017-06-08 02:14:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1595', '306', '13', '3', '2017-06-08 01:23:08', '2017-06-08 02:07:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1596', '306', '14', '3', '2017-06-08 01:23:04', '2017-06-08 02:06:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1597', '306', '18', '3', '2017-06-08 01:23:00', '2017-06-08 02:06:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1598', '306', '20', '3', '2017-06-08 01:22:57', '2017-06-08 02:06:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1599', '306', '23', '3', '2017-06-08 01:22:54', '2017-06-08 02:06:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1600', '306', '22', '3', '2017-06-08 01:22:51', '2017-06-08 02:06:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1601', '306', '26', '3', '2017-06-08 01:22:48', '2017-06-08 02:06:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1602', '307', '13', '3', '2017-06-08 02:40:54', '2017-06-08 03:22:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1603', '307', '14', '3', '2017-06-08 02:40:51', '2017-06-08 03:22:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1604', '307', '18', '3', '2017-06-08 02:40:46', '2017-06-08 03:22:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1605', '307', '20', '3', '2017-06-08 02:40:44', '2017-06-08 03:22:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1606', '307', '23', '3', '2017-06-08 02:40:36', '2017-06-08 03:22:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1607', '307', '22', '3', '2017-06-08 02:40:32', '2017-06-08 03:22:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1608', '307', '26', '3', '2017-06-08 02:40:24', '2017-06-08 03:22:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1609', '308', '13', '3', '2017-06-08 02:41:12', '2017-06-08 03:22:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1610', '308', '18', '3', '2017-06-08 02:41:10', '2017-06-08 03:22:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1611', '308', '20', '3', '2017-06-08 02:41:07', '2017-06-08 03:22:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1612', '308', '23', '3', '2017-06-08 02:41:05', '2017-06-08 03:22:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1613', '308', '26', '3', '2017-06-08 02:41:02', '2017-06-08 03:22:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1614', '309', '26', '3', '2017-06-08 02:11:11', '2017-06-08 02:11:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1615', '309', '13', '3', '2017-06-08 02:11:05', '2017-06-08 02:11:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1616', '310', '14', '3', '2017-06-08 02:10:47', '2017-06-08 02:10:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1617', '310', '16', '3', '2017-06-08 02:10:44', '2017-06-08 02:10:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1618', '311', '14', '3', '2017-06-08 02:10:18', '2017-06-08 02:10:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1619', '311', '20', '3', '2017-06-08 02:10:15', '2017-06-08 02:10:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1620', '312', '7', '3', '2017-06-08 07:46:54', '2017-06-08 11:48:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1621', '312', '13', '3', '2017-06-08 09:39:16', '2017-06-08 11:48:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1622', '312', '17', '3', '2017-06-08 07:46:59', '2017-06-08 11:48:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1623', '312', '18', '3', '2017-06-08 07:47:04', '2017-06-08 11:48:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1624', '312', '19', '3', '2017-06-08 09:39:20', '2017-06-08 11:48:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1625', '312', '23', '3', '2017-06-08 07:46:49', '2017-06-08 11:48:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1626', '312', '26', '3', '2017-06-08 07:46:44', '2017-06-08 11:48:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1627', '313', '7', '3', '2017-06-08 09:39:49', '2017-06-08 13:24:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1628', '313', '13', '3', '2017-06-08 09:13:18', '2017-06-08 14:06:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1629', '313', '17', '3', '2017-06-08 09:13:23', '2017-06-08 14:06:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1630', '313', '18', '3', '2017-06-08 09:13:28', '2017-06-08 14:06:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1631', '313', '19', '3', '2017-06-08 09:13:36', '2017-06-08 14:06:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1632', '313', '23', '3', '2017-06-08 09:13:42', '2017-06-08 13:23:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1633', '313', '26', '3', '2017-06-08 09:13:13', '2017-06-08 13:23:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1634', '314', '7', '3', '2017-06-08 13:24:14', '2017-06-08 14:06:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1635', '314', '17', '3', '2017-06-08 13:24:19', '2017-06-08 14:06:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1636', '314', '18', '3', '2017-06-08 13:24:22', '2017-06-08 14:40:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1637', '314', '19', '3', '2017-06-08 13:24:26', '2017-06-08 14:06:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1638', '314', '23', '3', '2017-06-08 13:24:30', '2017-06-08 14:06:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1639', '314', '26', '3', '2017-06-08 09:47:28', '2017-06-08 14:06:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1640', '315', '26', '3', '2017-06-08 10:31:53', '2017-06-08 11:48:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1641', '316', '13', '3', '2017-06-08 09:12:32', '2017-06-08 09:27:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1642', '316', '18', '3', '2017-06-08 09:12:37', '2017-06-08 09:27:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1643', '316', '23', '3', '2017-06-08 09:12:42', '2017-06-08 09:27:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1644', '316', '26', '3', '2017-06-08 09:12:49', '2017-06-08 09:38:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1645', '317', '20', '3', '2017-06-08 15:02:21', '2017-06-08 15:31:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1646', '318', '13', '3', '2017-06-08 21:07:08', '2017-06-08 21:38:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1647', '318', '14', '3', '2017-06-08 21:07:11', '2017-06-08 21:38:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1648', '318', '18', '3', '2017-06-08 21:07:14', '2017-06-08 21:38:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1649', '318', '20', '3', '2017-06-08 21:07:16', '2017-06-08 21:39:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1650', '318', '23', '3', '2017-06-08 21:07:19', '2017-06-08 21:39:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1651', '318', '26', '3', '2017-06-08 21:07:22', '2017-06-08 21:39:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1652', '319', '13', '3', '2017-06-08 21:14:23', '2017-06-08 21:55:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1653', '319', '14', '3', '2017-06-08 21:14:26', '2017-06-08 21:55:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1654', '319', '18', '3', '2017-06-08 21:14:28', '2017-06-08 21:55:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1655', '319', '20', '3', '2017-06-08 21:14:31', '2017-06-08 21:55:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1656', '319', '23', '3', '2017-06-08 21:14:34', '2017-06-08 21:56:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1657', '319', '26', '3', '2017-06-08 21:14:38', '2017-06-08 21:56:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1658', '320', '13', '3', '2017-06-08 21:36:39', '2017-06-08 22:08:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1659', '320', '18', '3', '2017-06-08 21:36:42', '2017-06-08 22:08:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1660', '320', '20', '3', '2017-06-08 21:36:45', '2017-06-08 22:08:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1661', '320', '23', '3', '2017-06-08 21:36:48', '2017-06-08 22:09:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1662', '320', '26', '3', '2017-06-08 21:36:51', '2017-06-08 22:09:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1663', '321', '13', '3', '2017-06-08 21:37:10', '2017-06-08 22:09:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1664', '321', '18', '3', '2017-06-08 21:37:15', '2017-06-08 22:09:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1665', '321', '20', '3', '2017-06-08 21:37:18', '2017-06-08 22:09:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1666', '321', '23', '3', '2017-06-08 21:37:22', '2017-06-08 22:09:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1667', '321', '26', '3', '2017-06-08 21:37:46', '2017-06-08 22:09:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1668', '322', '13', '3', '2017-06-08 22:10:45', '2017-06-08 23:01:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1669', '322', '18', '3', '2017-06-08 22:10:47', '2017-06-08 23:01:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1670', '322', '20', '3', '2017-06-08 22:10:50', '2017-06-08 23:01:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1672', '322', '23', '3', '2017-06-08 22:10:53', '2017-06-08 23:02:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1673', '322', '26', '3', '2017-06-08 22:10:57', '2017-06-08 23:02:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1674', '323', '13', '3', '2017-06-08 22:10:27', '2017-06-08 23:02:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1675', '323', '18', '3', '2017-06-08 22:10:30', '2017-06-08 23:02:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1676', '323', '20', '3', '2017-06-08 22:10:33', '2017-06-08 23:02:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1677', '323', '23', '3', '2017-06-08 22:10:35', '2017-06-08 23:02:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1678', '323', '26', '3', '2017-06-08 22:10:38', '2017-06-08 23:02:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1679', '324', '13', '3', '2017-06-08 23:02:59', '2017-06-08 23:49:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1680', '324', '18', '3', '2017-06-08 23:03:01', '2017-06-08 23:49:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1681', '324', '20', '3', '2017-06-08 23:03:04', '2017-06-08 23:49:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1682', '324', '22', '3', '2017-06-08 23:03:07', '2017-06-08 23:49:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1683', '324', '23', '3', '2017-06-08 23:03:10', '2017-06-08 23:49:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1684', '324', '26', '3', '2017-06-08 23:03:13', '2017-06-08 23:49:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1685', '325', '13', '3', '2017-06-08 23:03:20', '2017-06-08 23:49:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1686', '325', '18', '3', '2017-06-08 23:03:23', '2017-06-08 23:49:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1687', '325', '20', '3', '2017-06-08 23:03:26', '2017-06-08 23:49:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1688', '325', '23', '3', '2017-06-08 23:03:29', '2017-06-08 23:49:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1689', '325', '26', '3', '2017-06-08 23:03:31', '2017-06-08 23:49:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1690', '326', '13', '3', '2017-06-09 00:32:43', '2017-06-09 00:59:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1691', '326', '18', '3', '2017-06-09 00:32:46', '2017-06-09 01:00:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1692', '326', '20', '3', '2017-06-09 00:32:49', '2017-06-09 01:00:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1693', '326', '23', '3', '2017-06-09 00:32:51', '2017-06-09 01:00:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1694', '326', '26', '3', '2017-06-09 00:32:54', '2017-06-09 01:00:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1695', '327', '13', '3', '2017-06-09 00:21:48', '2017-06-09 00:46:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1696', '327', '18', '3', '2017-06-09 00:21:55', '2017-06-09 00:46:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1697', '327', '20', '3', '2017-06-09 00:22:04', '2017-06-09 00:46:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1698', '327', '23', '3', '2017-06-09 00:22:08', '2017-06-09 00:47:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1699', '327', '26', '3', '2017-06-09 00:22:11', '2017-06-09 00:47:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1700', '328', '13', '3', '2017-06-09 01:05:29', '2017-06-09 03:23:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1701', '328', '18', '3', '2017-06-09 01:05:32', '2017-06-09 03:23:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1702', '328', '19', '3', '2017-06-09 01:05:35', '2017-06-09 03:23:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1703', '328', '20', '3', '2017-06-09 01:05:38', '2017-06-09 03:23:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1704', '328', '23', '3', '2017-06-09 01:05:40', '2017-06-09 03:23:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1705', '328', '26', '3', '2017-06-09 01:05:43', '2017-06-09 03:23:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1706', '329', '13', '3', '2017-06-09 01:05:49', '2017-06-09 03:23:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1707', '329', '18', '3', '2017-06-09 01:05:53', '2017-06-09 03:23:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1708', '329', '19', '3', '2017-06-09 01:05:55', '2017-06-09 03:23:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1709', '329', '20', '3', '2017-06-09 01:05:59', '2017-06-09 03:23:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1710', '329', '22', '3', '2017-06-09 01:06:02', '2017-06-09 03:23:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1711', '329', '23', '3', '2017-06-09 01:06:06', '2017-06-09 03:23:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1712', '329', '26', '3', '2017-06-09 01:06:09', '2017-06-09 03:24:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1713', '330', '13', '3', '2017-06-09 02:13:58', '2017-06-09 03:04:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1714', '330', '14', '3', '2017-06-09 02:14:00', '2017-06-09 03:04:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1715', '330', '18', '3', '2017-06-09 02:14:03', '2017-06-09 03:04:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1716', '330', '20', '3', '2017-06-09 02:14:06', '2017-06-09 03:04:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1718', '330', '23', '3', '2017-06-09 02:14:09', '2017-06-09 03:04:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1719', '330', '26', '3', '2017-06-09 02:14:12', '2017-06-09 03:04:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1720', '331', '13', '3', '2017-06-09 02:14:30', '2017-06-09 03:04:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1721', '331', '14', '3', '2017-06-09 02:14:33', '2017-06-09 03:04:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1722', '331', '18', '3', '2017-06-09 02:14:36', '2017-06-09 03:05:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1723', '331', '20', '3', '2017-06-09 02:14:40', '2017-06-09 03:04:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1724', '331', '23', '3', '2017-06-09 02:14:49', '2017-06-09 03:04:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1725', '331', '26', '3', '2017-06-09 02:14:53', '2017-06-09 03:05:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1726', '332', '13', '3', '2017-06-09 02:04:01', '2017-06-09 02:48:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1727', '332', '14', '3', '2017-06-09 02:04:05', '2017-06-09 02:48:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1728', '332', '18', '3', '2017-06-09 02:04:07', '2017-06-09 02:48:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1729', '332', '20', '3', '2017-06-09 02:04:10', '2017-06-09 02:48:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1730', '332', '22', '3', '2017-06-09 02:04:14', '2017-06-09 02:48:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1731', '332', '23', '3', '2017-06-09 02:04:17', '2017-06-09 02:49:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1732', '332', '26', '3', '2017-06-09 02:04:19', '2017-06-09 02:49:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1733', '333', '13', '3', '2017-06-09 02:04:26', '2017-06-09 02:49:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1734', '333', '18', '3', '2017-06-09 02:04:29', '2017-06-09 02:49:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1735', '333', '20', '3', '2017-06-09 02:04:32', '2017-06-09 02:49:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1737', '333', '23', '3', '2017-06-09 02:04:35', '2017-06-09 02:49:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1738', '333', '26', '3', '2017-06-09 02:04:37', '2017-06-09 02:49:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1739', '334', '13', '3', '2017-06-09 03:05:30', '2017-06-09 03:42:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1740', '334', '18', '3', '2017-06-09 03:05:32', '2017-06-09 03:42:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1741', '334', '23', '3', '2017-06-09 03:05:35', '2017-06-09 03:42:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1742', '334', '26', '3', '2017-06-09 03:05:38', '2017-06-09 03:42:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1743', '335', '20', '3', '2017-06-08 20:37:21', '2017-06-08 21:14:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1744', '336', '14', '3', '2017-06-08 20:37:29', '2017-06-08 21:15:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1745', '336', '20', '3', '2017-06-08 20:37:32', '2017-06-08 21:15:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1746', '337', '14', '3', '2017-06-08 20:37:47', '2017-06-08 21:15:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1747', '337', '20', '3', '2017-06-08 20:37:50', '2017-06-08 21:15:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1748', '338', '16', '3', '2017-06-08 20:38:05', '2017-06-08 21:15:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1749', '338', '20', '3', '2017-06-08 20:38:08', '2017-06-08 21:15:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1750', '322', '21', '3', '2017-06-08 22:11:04', '2017-06-08 23:02:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1751', '330', '21', '3', '2017-06-09 02:14:16', '2017-06-09 03:04:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1752', '333', '21', '3', '2017-06-09 02:04:40', '2017-06-09 02:49:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1753', '339', '7', '3', '2017-06-09 08:12:32', '2017-06-09 09:46:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1754', '339', '13', '3', '2017-06-09 08:12:40', '2017-06-09 09:46:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1755', '339', '17', '3', '2017-06-09 08:22:18', '2017-06-09 09:51:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1756', '339', '18', '3', '2017-06-09 08:12:44', '2017-06-09 12:09:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1757', '339', '19', '3', '2017-06-09 09:33:58', '2017-06-09 09:51:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1758', '339', '23', '3', '2017-06-09 08:12:36', '2017-06-09 09:46:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1759', '339', '26', '3', '2017-06-09 08:12:29', '2017-06-09 09:46:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1760', '340', '7', '3', '2017-06-09 12:08:47', '2017-06-09 14:20:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1761', '340', '13', '3', '2017-06-09 12:08:50', '2017-06-09 13:09:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1762', '340', '17', '3', '2017-06-09 12:08:54', '2017-06-09 14:21:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1763', '340', '18', '3', '2017-06-09 12:08:58', '2017-06-09 14:21:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1764', '340', '19', '3', '2017-06-09 12:09:01', '2017-06-09 13:09:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1765', '340', '23', '3', '2017-06-09 12:09:06', '2017-06-09 14:21:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1766', '340', '26', '3', '2017-06-09 12:08:44', '2017-06-09 13:09:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1767', '341', '26', '3', '2017-06-09 09:37:49', '2017-06-09 10:31:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1768', '341', '13', '3', '2017-06-09 09:37:53', '2017-06-09 10:31:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1769', '342', '13', '3', '2017-06-09 20:51:43', '2017-06-09 21:29:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1770', '342', '18', '3', '2017-06-09 20:51:40', '2017-06-09 21:29:45', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1771', '342', '20', '3', '2017-06-09 20:51:38', '2017-06-09 21:29:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1772', '342', '23', '3', '2017-06-09 20:51:36', '2017-06-09 21:29:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1773', '342', '26', '3', '2017-06-09 20:51:33', '2017-06-09 21:29:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1774', '343', '13', '3', '2017-06-09 20:59:36', '2017-06-09 21:20:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1775', '343', '18', '3', '2017-06-09 20:59:33', '2017-06-09 21:19:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1776', '343', '20', '3', '2017-06-09 20:59:30', '2017-06-09 21:19:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1777', '343', '23', '3', '2017-06-09 20:59:26', '2017-06-09 21:19:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1778', '343', '26', '3', '2017-06-09 20:59:24', '2017-06-09 21:19:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1779', '344', '13', '3', '2017-06-09 21:45:06', '2017-06-09 22:27:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1780', '344', '14', '3', '2017-06-09 21:45:04', '2017-06-09 22:27:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1781', '344', '18', '3', '2017-06-09 21:45:02', '2017-06-09 22:27:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1782', '344', '20', '3', '2017-06-09 21:44:59', '2017-06-09 22:27:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1783', '344', '23', '3', '2017-06-09 21:44:56', '2017-06-09 22:33:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1784', '344', '26', '3', '2017-06-09 21:44:50', '2017-06-09 22:27:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1785', '345', '13', '3', '2017-06-09 21:45:24', '2017-06-09 22:28:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1786', '345', '18', '3', '2017-06-09 21:45:21', '2017-06-09 22:28:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1787', '345', '20', '3', '2017-06-09 21:45:19', '2017-06-09 22:28:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1788', '345', '23', '3', '2017-06-09 21:45:16', '2017-06-09 22:33:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1789', '345', '26', '3', '2017-06-09 21:45:14', '2017-06-09 22:27:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1790', '346', '13', '3', '2017-06-09 22:05:34', '2017-06-09 22:27:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1791', '346', '18', '3', '2017-06-09 22:05:31', '2017-06-09 22:27:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1792', '346', '20', '3', '2017-06-09 22:05:36', '2017-06-09 22:27:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1793', '346', '23', '3', '2017-06-09 22:05:29', '2017-06-09 22:27:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1794', '346', '26', '3', '2017-06-09 22:05:21', '2017-06-09 22:32:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1795', '347', '13', '3', '2017-06-09 22:29:24', '2017-06-09 23:24:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1796', '347', '18', '3', '2017-06-09 22:29:27', '2017-06-09 23:24:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1797', '347', '19', '3', '2017-06-09 22:29:29', '2017-06-09 23:24:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1798', '347', '20', '3', '2017-06-09 22:29:32', '2017-06-09 23:25:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1799', '347', '22', '3', '2017-06-09 22:29:40', '2017-06-09 23:24:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1800', '347', '23', '3', '2017-06-09 22:29:37', '2017-06-09 23:43:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1801', '347', '26', '3', '2017-06-09 22:29:34', '2017-06-09 23:24:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1802', '348', '13', '3', '2017-06-09 23:25:19', '2017-06-10 00:04:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1803', '348', '18', '3', '2017-06-09 23:25:22', '2017-06-10 00:04:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1804', '348', '20', '3', '2017-06-09 23:25:25', '2017-06-10 00:05:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1805', '348', '22', '3', '2017-06-09 23:25:27', '2017-06-10 00:05:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1806', '348', '23', '3', '2017-06-09 23:25:30', '2017-06-10 00:05:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1807', '348', '26', '3', '2017-06-09 23:25:32', '2017-06-10 00:05:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1808', '349', '13', '3', '2017-06-09 23:25:53', '2017-06-09 23:54:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1809', '349', '18', '3', '2017-06-09 23:25:50', '2017-06-09 23:54:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1810', '349', '20', '3', '2017-06-09 23:25:47', '2017-06-09 23:54:33', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1811', '349', '23', '3', '2017-06-09 23:25:44', '2017-06-09 23:54:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1812', '349', '26', '3', '2017-06-09 23:25:42', '2017-06-09 23:54:27', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1813', '350', '13', '3', '2017-06-10 00:54:10', '2017-06-10 01:38:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1814', '350', '18', '3', '2017-06-10 00:54:13', '2017-06-10 01:38:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1815', '350', '20', '3', '2017-06-10 00:54:16', '2017-06-10 01:38:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1816', '350', '23', '3', '2017-06-10 00:54:18', '2017-06-10 01:38:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1817', '350', '26', '3', '2017-06-10 00:54:21', '2017-06-10 01:38:35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1818', '351', '13', '3', '2017-06-10 00:53:59', '2017-06-10 01:38:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1819', '351', '14', '3', '2017-06-10 00:54:01', '2017-06-10 01:38:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1820', '351', '18', '3', '2017-06-10 00:53:56', '2017-06-10 01:38:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1821', '351', '20', '3', '2017-06-10 00:53:54', '2017-06-10 01:39:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1822', '351', '23', '3', '2017-06-10 00:53:51', '2017-06-10 01:39:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1823', '351', '26', '3', '2017-06-10 00:53:46', '2017-06-10 01:39:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1824', '352', '13', '3', '2017-06-10 00:13:55', '2017-06-10 01:40:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1825', '352', '14', '3', '2017-06-10 00:13:57', '2017-06-10 01:40:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1826', '352', '18', '3', '2017-06-10 00:13:59', '2017-06-10 01:40:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1827', '352', '19', '3', '2017-06-10 00:14:01', '2017-06-10 01:40:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1828', '352', '20', '3', '2017-06-10 00:14:04', '2017-06-10 01:40:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1829', '352', '23', '3', '2017-06-10 00:14:06', '2017-06-10 01:48:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1830', '352', '26', '3', '2017-06-10 00:14:09', '2017-06-10 01:39:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1831', '353', '13', '3', '2017-06-10 01:04:21', '2017-06-10 01:40:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1832', '353', '14', '3', '2017-06-10 01:04:26', '2017-06-10 01:40:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1833', '353', '18', '3', '2017-06-10 01:04:19', '2017-06-10 01:40:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1834', '353', '20', '3', '2017-06-10 01:04:28', '2017-06-10 01:40:24', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1835', '353', '23', '3', '2017-06-10 01:04:17', '2017-06-10 01:55:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1836', '353', '26', '3', '2017-06-10 01:04:15', '2017-06-10 01:40:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1837', '354', '13', '3', '2017-06-10 01:39:51', '2017-06-10 01:58:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1838', '354', '18', '3', '2017-06-10 01:39:48', '2017-06-10 01:58:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1839', '354', '20', '3', '2017-06-10 01:39:45', '2017-06-10 01:58:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1840', '354', '23', '3', '2017-06-10 01:39:42', '2017-06-10 02:03:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1841', '354', '26', '3', '2017-06-10 01:39:39', '2017-06-10 01:58:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1842', '355', '13', '3', '2017-06-10 01:58:29', '2017-06-10 02:04:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1843', '355', '18', '3', '2017-06-10 01:58:27', '2017-06-10 02:04:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1844', '355', '20', '3', '2017-06-10 01:58:25', '2017-06-10 02:04:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1845', '355', '23', '3', '2017-06-10 01:58:21', '2017-06-10 02:22:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1846', '355', '26', '3', '2017-06-10 01:58:17', '2017-06-10 02:04:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1847', '356', '13', '3', '2017-06-10 02:17:43', '2017-06-10 02:44:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1848', '356', '14', '3', '2017-06-10 02:17:41', '2017-06-10 02:44:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1849', '356', '18', '3', '2017-06-10 02:17:37', '2017-06-10 02:44:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1850', '356', '20', '3', '2017-06-10 02:17:34', '2017-06-10 02:44:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1851', '356', '23', '3', '2017-06-10 02:17:32', '2017-06-10 02:44:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1852', '356', '26', '3', '2017-06-10 02:17:25', '2017-06-10 02:44:37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1853', '357', '13', '3', '2017-06-10 02:18:28', '2017-06-10 02:45:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1854', '357', '14', '3', '2017-06-10 02:18:22', '2017-06-10 02:45:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1855', '357', '18', '3', '2017-06-10 02:18:17', '2017-06-10 02:45:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1856', '357', '20', '3', '2017-06-10 02:18:31', '2017-06-10 02:45:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1857', '357', '23', '3', '2017-06-10 02:18:09', '2017-06-10 02:45:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1858', '357', '26', '3', '2017-06-10 02:18:06', '2017-06-10 02:45:01', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1859', '358', '13', '3', '2017-06-10 03:38:40', '2017-06-10 04:32:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1860', '358', '18', '3', '2017-06-10 03:38:44', '2017-06-10 04:32:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1861', '358', '19', '3', '2017-06-10 03:38:47', '2017-06-10 04:32:32', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1862', '358', '22', '3', '2017-06-10 03:38:56', '2017-06-10 04:32:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1863', '358', '23', '3', '2017-06-10 03:38:52', '2017-06-10 04:32:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1864', '358', '26', '3', '2017-06-10 03:38:50', '2017-06-10 04:32:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1865', '359', '20', '3', '2017-06-10 03:19:07', '2017-06-10 03:19:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1866', '360', '20', '3', '2017-06-10 03:17:57', '2017-06-10 03:17:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1867', '361', '16', '3', '2017-06-10 03:16:49', '2017-06-10 03:16:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('1868', '362', '7', '3', '2017-06-10 08:11:34', '2017-06-10 09:42:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1869', '362', '13', '3', '2017-06-10 09:16:48', '2017-06-10 13:14:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1870', '362', '17', '3', '2017-06-10 08:11:50', '2017-06-10 13:14:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1871', '362', '18', '3', '2017-06-10 08:11:41', '2017-06-10 13:14:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1872', '362', '19', '3', '2017-06-10 09:16:51', '2017-06-10 09:42:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1873', '362', '23', '3', '2017-06-10 08:11:45', '2017-06-10 09:43:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1874', '362', '26', '3', '2017-06-10 08:11:29', '2017-06-10 09:42:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1875', '363', '7', '3', '2017-06-10 13:05:03', '2017-06-10 14:57:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1876', '363', '13', '3', '2017-06-10 13:05:07', '2017-06-10 13:15:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1877', '363', '17', '3', '2017-06-10 13:05:10', '2017-06-10 14:57:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1878', '363', '18', '3', '2017-06-10 13:05:14', '2017-06-10 14:57:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1879', '363', '19', '3', '2017-06-10 13:05:20', '2017-06-10 13:14:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1880', '363', '23', '3', '2017-06-10 13:04:59', '2017-06-10 13:14:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1881', '363', '26', '3', '2017-06-10 09:48:09', '2017-06-10 13:14:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1882', '364', '13', '3', '2017-06-10 10:05:14', '2017-06-10 10:40:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1883', '364', '26', '3', '2017-06-10 10:05:10', '2017-06-10 10:40:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1884', '365', '13', '3', '2017-06-10 15:19:36', '2017-06-10 15:31:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1885', '365', '18', '3', '2017-06-10 15:19:40', '2017-06-10 15:31:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1886', '365', '23', '3', '2017-06-10 15:19:43', '2017-06-10 15:31:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1887', '365', '26', '3', '2017-06-10 15:19:34', '2017-06-10 15:31:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1888', '366', '13', '3', '2017-06-10 21:04:28', '2017-06-10 22:09:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1889', '366', '14', '3', '2017-06-10 21:04:31', '2017-06-10 22:09:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1890', '366', '18', '3', '2017-06-10 21:04:34', '2017-06-10 22:09:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1891', '366', '20', '3', '2017-06-10 21:04:37', '2017-06-10 22:09:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1892', '366', '23', '3', '2017-06-10 21:04:43', '2017-06-10 22:09:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1893', '366', '26', '3', '2017-06-10 21:04:47', '2017-06-10 22:09:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1894', '367', '13', '3', '2017-06-10 22:10:40', '2017-06-10 22:13:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1895', '367', '18', '3', '2017-06-10 22:10:53', '2017-06-10 22:13:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1896', '367', '20', '3', '2017-06-10 22:11:00', '2017-06-10 22:13:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1897', '367', '23', '3', '2017-06-10 22:11:02', '2017-06-10 22:13:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1898', '367', '26', '3', '2017-06-10 22:11:05', '2017-06-10 22:13:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1899', '368', '13', '3', '2017-06-10 21:32:03', '2017-06-10 22:56:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1900', '368', '18', '3', '2017-06-10 21:32:06', '2017-06-10 22:56:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1901', '368', '20', '3', '2017-06-10 21:32:09', '2017-06-10 22:56:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1902', '368', '22', '3', '2017-06-10 21:32:12', '2017-06-10 22:56:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1903', '368', '23', '3', '2017-06-10 21:32:16', '2017-06-10 22:56:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1904', '368', '26', '3', '2017-06-10 21:32:19', '2017-06-10 22:56:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1905', '369', '13', '3', '2017-06-10 21:32:26', '2017-06-10 22:57:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1906', '369', '18', '3', '2017-06-10 21:32:29', '2017-06-10 22:57:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1907', '369', '20', '3', '2017-06-10 21:32:32', '2017-06-10 22:57:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1909', '369', '23', '3', '2017-06-10 21:32:35', '2017-06-10 22:57:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1910', '369', '26', '3', '2017-06-10 21:32:37', '2017-06-10 22:57:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1911', '370', '13', '3', '2017-06-10 23:31:17', '2017-06-10 23:57:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1912', '370', '18', '3', '2017-06-10 23:31:19', '2017-06-10 23:57:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1913', '370', '20', '3', '2017-06-10 23:31:22', '2017-06-10 23:58:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1914', '370', '23', '3', '2017-06-10 23:31:26', '2017-06-10 23:58:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1915', '370', '26', '3', '2017-06-10 23:31:29', '2017-06-10 23:58:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1916', '371', '13', '3', '2017-06-10 23:31:35', '2017-06-10 23:58:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1917', '371', '14', '3', '2017-06-10 23:31:38', '2017-06-10 23:58:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1918', '371', '18', '3', '2017-06-10 23:31:41', '2017-06-10 23:58:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1919', '371', '20', '3', '2017-06-10 23:31:44', '2017-06-10 23:58:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1920', '371', '23', '3', '2017-06-10 23:31:47', '2017-06-10 23:58:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1921', '371', '26', '3', '2017-06-10 23:31:50', '2017-06-10 23:58:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1922', '372', '13', '3', '2017-06-11 00:25:50', '2017-06-11 00:50:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1923', '372', '18', '3', '2017-06-11 00:25:52', '2017-06-11 00:51:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1924', '372', '20', '3', '2017-06-11 00:25:55', '2017-06-11 00:51:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1925', '372', '23', '3', '2017-06-11 00:25:57', '2017-06-11 00:51:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1926', '372', '26', '3', '2017-06-11 00:26:00', '2017-06-11 00:51:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1927', '373', '13', '3', '2017-06-11 00:26:07', '2017-06-11 00:51:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1928', '373', '18', '3', '2017-06-11 00:26:10', '2017-06-11 00:51:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1929', '373', '20', '3', '2017-06-11 00:26:13', '2017-06-11 00:51:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1930', '373', '23', '3', '2017-06-11 00:26:15', '2017-06-11 00:51:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1931', '373', '26', '3', '2017-06-11 00:26:18', '2017-06-11 00:51:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1932', '374', '13', '3', '2017-06-11 01:20:51', '2017-06-11 03:22:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1933', '374', '18', '3', '2017-06-11 01:20:56', '2017-06-11 03:22:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1934', '374', '19', '3', '2017-06-11 01:20:59', '2017-06-11 03:22:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1935', '374', '20', '3', '2017-06-11 01:21:10', '2017-06-11 03:22:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1936', '374', '23', '3', '2017-06-11 01:21:14', '2017-06-11 03:22:38', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1937', '374', '26', '3', '2017-06-11 01:21:20', '2017-06-11 03:22:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1938', '375', '13', '3', '2017-06-11 01:21:27', '2017-06-11 03:22:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1939', '375', '18', '3', '2017-06-11 01:21:30', '2017-06-11 03:22:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1940', '375', '19', '3', '2017-06-11 01:21:35', '2017-06-11 03:22:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1941', '375', '20', '3', '2017-06-11 01:21:53', '2017-06-11 03:22:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1943', '375', '23', '3', '2017-06-11 01:21:56', '2017-06-11 03:22:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1944', '375', '26', '3', '2017-06-11 01:21:59', '2017-06-11 03:23:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1945', '376', '13', '3', '2017-06-11 01:28:28', '2017-06-11 02:00:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1946', '376', '18', '3', '2017-06-11 01:28:31', '2017-06-11 02:00:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1947', '376', '20', '3', '2017-06-11 01:28:33', '2017-06-11 02:00:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1948', '376', '23', '3', '2017-06-11 01:28:36', '2017-06-11 02:00:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1949', '376', '26', '3', '2017-06-11 01:28:38', '2017-06-11 02:00:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1950', '377', '13', '3', '2017-06-11 01:28:45', '2017-06-11 02:02:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1951', '377', '14', '3', '2017-06-11 01:28:47', '2017-06-11 02:02:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1952', '377', '18', '3', '2017-06-11 01:28:51', '2017-06-11 02:02:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1953', '377', '20', '3', '2017-06-11 01:28:53', '2017-06-11 02:02:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1954', '377', '23', '3', '2017-06-11 01:28:56', '2017-06-11 02:02:31', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1955', '377', '26', '3', '2017-06-11 01:28:58', '2017-06-11 02:02:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1956', '378', '13', '3', '2017-06-11 03:08:19', '2017-06-11 04:29:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1957', '378', '14', '3', '2017-06-11 03:08:22', '2017-06-11 04:29:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1958', '378', '18', '3', '2017-06-11 03:08:26', '2017-06-11 04:29:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1959', '378', '19', '3', '2017-06-11 03:08:29', '2017-06-11 04:30:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1960', '378', '20', '3', '2017-06-11 03:08:32', '2017-06-11 04:30:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1961', '378', '22', '3', '2017-06-11 03:08:36', '2017-06-11 04:30:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1962', '378', '23', '3', '2017-06-11 03:08:39', '2017-06-11 04:30:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1963', '378', '26', '3', '2017-06-11 03:08:41', '2017-06-11 04:30:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1964', '379', '13', '3', '2017-06-11 03:08:49', '2017-06-11 03:43:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1965', '379', '18', '3', '2017-06-11 03:08:52', '2017-06-11 03:43:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1966', '379', '20', '3', '2017-06-11 03:08:55', '2017-06-11 03:43:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1967', '379', '22', '3', '2017-06-11 03:08:58', '2017-06-11 03:43:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1968', '379', '23', '3', '2017-06-11 03:09:00', '2017-06-11 03:44:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1969', '379', '26', '3', '2017-06-11 03:09:03', '2017-06-11 03:44:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1970', '380', '13', '3', '2017-06-11 02:40:16', '2017-06-11 03:16:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1971', '380', '18', '3', '2017-06-11 02:40:19', '2017-06-11 03:16:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1972', '380', '20', '3', '2017-06-11 02:40:22', '2017-06-11 03:16:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1973', '380', '23', '3', '2017-06-11 02:40:25', '2017-06-11 03:16:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1974', '380', '26', '3', '2017-06-11 02:40:28', '2017-06-11 03:16:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1975', '381', '13', '3', '2017-06-11 02:40:37', '2017-06-11 03:18:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1976', '381', '18', '3', '2017-06-11 02:40:39', '2017-06-11 03:19:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1977', '381', '20', '3', '2017-06-11 02:40:42', '2017-06-11 03:19:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1979', '381', '23', '3', '2017-06-11 02:40:45', '2017-06-11 03:19:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1980', '381', '26', '3', '2017-06-11 02:40:48', '2017-06-11 03:19:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1981', '382', '13', '3', '2017-06-11 05:01:27', '2017-06-11 05:39:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1982', '382', '18', '3', null, '2017-06-11 05:39:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1983', '382', '23', '3', '2017-06-11 05:01:29', '2017-06-11 05:39:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1984', '382', '26', '3', '2017-06-11 05:01:33', '2017-06-11 05:39:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1985', '383', '20', '3', '2017-06-10 20:50:19', '2017-06-10 21:32:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1986', '384', '16', '3', '2017-06-10 20:50:29', '2017-06-10 21:33:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1987', '384', '14', '3', '2017-06-10 20:50:33', '2017-06-10 21:33:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1988', '384', '20', '3', '2017-06-10 20:50:36', '2017-06-10 21:33:09', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1989', '385', '14', '3', '2017-06-10 20:50:42', '2017-06-10 21:33:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1990', '385', '20', '3', '2017-06-10 20:50:44', '2017-06-10 21:33:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1991', '369', '21', '3', '2017-06-10 21:32:41', '2017-06-10 22:57:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1992', '375', '21', '3', '2017-06-11 01:22:02', '2017-06-11 03:23:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1993', '381', '21', '3', '2017-06-11 02:40:51', '2017-06-11 03:19:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1994', '386', '7', '3', '2017-06-11 08:18:50', '2017-06-11 09:33:53', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1995', '386', '13', '3', '2017-06-11 08:18:55', '2017-06-11 09:33:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1996', '386', '17', '3', '2017-06-11 08:19:04', '2017-06-11 09:56:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1997', '386', '18', '3', '2017-06-11 08:19:00', '2017-06-11 11:48:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1998', '386', '19', '3', '2017-06-11 09:08:24', '2017-06-11 09:56:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('1999', '386', '23', '3', '2017-06-11 08:19:08', '2017-06-11 09:33:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2000', '386', '26', '3', '2017-06-11 08:18:47', '2017-06-11 09:33:39', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2001', '387', '7', '3', '2017-06-11 15:06:12', '2017-06-11 16:57:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2002', '387', '13', '3', '2017-06-11 15:06:06', '2017-06-11 16:57:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2003', '387', '17', '3', '2017-06-11 15:06:03', '2017-06-11 16:57:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2004', '387', '18', '3', '2017-06-11 15:06:00', '2017-06-11 16:57:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2005', '387', '19', '3', '2017-06-11 15:18:15', '2017-06-11 16:56:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2006', '387', '23', '3', '2017-06-11 15:05:56', '2017-06-11 18:44:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2007', '387', '26', '3', '2017-06-11 15:05:53', '2017-06-11 15:18:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2008', '388', '13', '3', '2017-06-11 10:32:27', '2017-06-11 10:58:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2009', '388', '26', '3', '2017-06-11 10:32:30', '2017-06-11 12:07:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2010', '389', '13', '3', '2017-06-11 11:46:00', '2017-06-11 12:40:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2011', '389', '26', '3', '2017-06-11 11:46:11', '2017-06-11 12:40:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2012', '389', '23', '3', '2017-06-11 11:46:15', '2017-06-11 12:41:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2013', '389', '18', '3', '2017-06-11 11:46:19', '2017-06-11 13:21:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2014', '390', '13', '3', '2017-06-11 11:46:54', '2017-06-11 12:41:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2015', '390', '18', '3', '2017-06-11 11:46:58', '2017-06-11 13:21:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2016', '390', '23', '3', '2017-06-11 11:47:02', '2017-06-11 12:41:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2017', '390', '26', '3', '2017-06-11 11:47:06', '2017-06-11 12:41:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2018', '388', '18', '3', '2017-06-11 10:32:33', '2017-06-11 12:07:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2019', '388', '23', '3', '2017-06-11 10:32:36', '2017-06-11 10:58:28', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2020', '391', '20', '3', '2017-06-11 12:42:37', '2017-06-11 13:21:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2021', '392', '13', '3', '2017-06-11 20:57:17', '2017-06-11 21:28:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2022', '392', '14', '3', '2017-06-11 20:57:12', '2017-06-11 21:28:17', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2023', '392', '18', '3', '2017-06-11 20:57:10', '2017-06-11 21:28:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2024', '392', '20', '3', '2017-06-11 20:57:03', '2017-06-11 21:28:05', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2026', '392', '23', '3', '2017-06-11 20:56:48', '2017-06-11 21:34:56', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2027', '392', '26', '3', '2017-06-11 20:56:46', '2017-06-11 21:27:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2028', '393', '13', '3', '2017-06-11 21:35:33', '2017-06-11 21:56:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2029', '393', '18', '3', '2017-06-11 21:35:28', '2017-06-11 21:56:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2030', '393', '20', '3', '2017-06-11 21:35:25', '2017-06-11 21:56:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2031', '393', '23', '3', '2017-06-11 21:35:22', '2017-06-11 22:09:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2032', '393', '26', '3', '2017-06-11 21:35:18', '2017-06-11 21:56:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2033', '394', '13', '3', '2017-06-11 22:15:14', '2017-06-11 22:41:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2034', '394', '14', '3', '2017-06-11 22:15:11', '2017-06-11 22:41:20', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2035', '394', '18', '3', '2017-06-11 22:15:07', '2017-06-11 22:41:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2036', '394', '20', '3', '2017-06-11 22:15:03', '2017-06-11 22:40:59', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2037', '394', '23', '3', '2017-06-11 22:14:59', '2017-06-11 23:06:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2038', '394', '26', '3', '2017-06-11 22:14:55', '2017-06-11 22:40:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2039', '395', '13', '3', '2017-06-11 22:16:17', '2017-06-11 22:42:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2040', '395', '14', '3', '2017-06-11 22:16:11', '2017-06-11 22:42:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2041', '395', '18', '3', '2017-06-11 22:15:51', '2017-06-11 22:42:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2042', '395', '20', '3', '2017-06-11 22:15:45', '2017-06-11 22:42:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2043', '395', '23', '3', '2017-06-11 22:15:41', '2017-06-11 23:06:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2044', '395', '26', '3', '2017-06-11 22:15:36', '2017-06-11 22:42:47', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2045', '396', '13', '3', '2017-06-11 22:28:22', '2017-06-11 23:04:28', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2046', '396', '18', '3', '2017-06-11 22:28:19', '2017-06-11 23:04:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2047', '396', '20', '3', '2017-06-11 22:28:14', '2017-06-11 23:04:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2049', '396', '23', '3', '2017-06-11 22:28:10', '2017-06-11 23:18:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2050', '396', '26', '3', '2017-06-11 22:28:07', '2017-06-11 23:04:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2051', '395', '21', '3', '2017-06-11 22:15:31', '2017-06-11 22:42:43', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2052', '397', '13', '3', '2017-06-11 22:27:46', '2017-06-11 23:05:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2053', '397', '18', '3', '2017-06-11 22:27:40', '2017-06-11 23:05:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2054', '397', '20', '3', '2017-06-11 22:27:36', '2017-06-11 23:05:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2055', '397', '21', '3', '2017-06-11 22:27:31', '2017-06-11 23:05:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2056', '397', '23', '3', '2017-06-11 22:27:27', '2017-06-11 23:18:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2057', '397', '26', '3', '2017-06-11 22:27:22', '2017-06-11 23:04:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2058', '398', '13', '3', '2017-06-11 22:37:23', '2017-06-11 23:13:25', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2059', '398', '20', '3', '2017-06-11 22:37:20', '2017-06-11 23:13:22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2060', '398', '18', '3', '2017-06-11 22:37:16', '2017-06-11 23:13:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2061', '398', '23', '3', '2017-06-11 22:37:13', '2017-06-11 23:24:04', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2062', '398', '26', '3', '2017-06-11 22:36:56', '2017-06-11 23:13:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2063', '399', '13', '3', '2017-06-12 00:25:29', '2017-06-12 00:47:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2064', '399', '18', '3', '2017-06-12 00:25:26', '2017-06-12 00:47:15', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2065', '399', '20', '3', '2017-06-12 00:25:23', '2017-06-12 00:47:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2066', '399', '23', '3', '2017-06-12 00:25:21', '2017-06-12 00:47:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2067', '399', '26', '3', '2017-06-12 00:25:18', '2017-06-12 00:47:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2068', '400', '13', '3', '2017-06-12 00:40:03', '2017-06-12 01:19:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2069', '400', '18', '3', '2017-06-12 00:40:01', '2017-06-12 01:19:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2070', '400', '20', '3', '2017-06-12 00:39:58', '2017-06-12 01:18:57', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2071', '400', '23', '3', '2017-06-12 00:39:56', '2017-06-12 01:18:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2072', '400', '26', '3', '2017-06-12 00:39:54', '2017-06-12 01:18:52', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2073', '401', '13', '3', '2017-06-12 00:51:20', '2017-06-12 01:27:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2074', '401', '18', '3', '2017-06-12 00:51:24', '2017-06-12 01:27:14', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2075', '401', '20', '3', '2017-06-12 00:51:26', '2017-06-12 01:27:12', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2076', '401', '21', '3', '2017-06-12 00:51:29', '2017-06-12 01:27:09', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2077', '401', '23', '3', '2017-06-12 00:51:31', '2017-06-12 01:27:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2078', '401', '26', '3', '2017-06-12 00:51:34', '2017-06-12 01:27:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2079', '402', '13', '3', '2017-06-12 03:45:45', '2017-06-12 04:17:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2080', '402', '18', '3', '2017-06-12 03:45:43', '2017-06-12 04:17:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2081', '402', '20', '3', '2017-06-12 03:45:38', '2017-06-12 04:17:48', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2083', '402', '23', '3', '2017-06-12 03:45:35', '2017-06-12 04:17:44', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2084', '402', '26', '3', '2017-06-12 03:45:33', '2017-06-12 04:17:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2085', '403', '13', '3', '2017-06-12 03:46:05', '2017-06-12 04:18:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2086', '403', '18', '3', '2017-06-12 03:46:03', '2017-06-12 04:18:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2087', '403', '20', '3', '2017-06-12 03:46:01', '2017-06-12 04:18:41', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2088', '403', '23', '3', '2017-06-12 03:45:58', '2017-06-12 04:18:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2089', '403', '26', '3', '2017-06-12 03:45:56', '2017-06-12 04:18:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2090', '404', '13', '3', '2017-06-12 01:49:41', '2017-06-12 02:14:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2091', '404', '18', '3', '2017-06-12 01:49:39', '2017-06-12 02:14:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2092', '404', '20', '3', '2017-06-12 01:49:37', '2017-06-12 02:14:21', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2093', '404', '23', '3', '2017-06-12 01:49:35', '2017-06-12 02:14:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2094', '404', '26', '3', '2017-06-12 01:49:32', '2017-06-12 02:14:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2095', '405', '13', '3', '2017-06-12 01:50:08', '2017-06-12 02:30:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2096', '405', '18', '3', '2017-06-12 01:50:06', '2017-06-12 02:30:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2097', '405', '20', '3', '2017-06-12 01:50:03', '2017-06-12 02:30:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2098', '405', '21', '3', '2017-06-12 01:50:01', '2017-06-12 02:30:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2099', '405', '23', '3', '2017-06-12 01:49:58', '2017-06-12 02:30:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2100', '405', '26', '3', '2017-06-12 01:49:50', '2017-06-12 02:30:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2101', '406', '13', '3', '2017-06-12 01:19:55', '2017-06-12 03:25:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2102', '406', '18', '3', '2017-06-12 01:19:53', '2017-06-12 03:25:39', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2103', '406', '20', '3', '2017-06-12 01:19:51', '2017-06-12 03:25:36', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2104', '406', '23', '3', '2017-06-12 01:19:48', '2017-06-12 03:25:34', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2105', '406', '26', '3', '2017-06-12 01:19:46', '2017-06-12 03:25:31', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2106', '407', '13', '3', '2017-06-12 01:19:14', '2017-06-12 03:25:19', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2107', '407', '18', '3', '2017-06-12 01:19:17', '2017-06-12 03:25:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2108', '407', '19', '3', '2017-06-12 01:19:20', '2017-06-12 03:25:13', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2109', '407', '20', '3', '2017-06-12 01:19:22', '2017-06-12 03:25:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2110', '407', '21', '3', '2017-06-12 01:19:32', '2017-06-12 03:25:08', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2111', '407', '23', '3', '2017-06-12 01:19:30', '2017-06-12 03:25:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2112', '407', '26', '3', '2017-06-12 01:19:25', '2017-06-12 03:25:03', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2113', '406', '19', '3', '2017-06-12 01:19:43', '2017-06-12 03:25:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2114', '408', '13', '3', '2017-06-12 04:22:19', '2017-06-12 04:43:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2115', '408', '20', '3', '2017-06-12 04:22:17', '2017-06-12 04:43:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2116', '408', '18', '3', '2017-06-12 04:22:15', '2017-06-12 04:43:06', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2117', '408', '23', '2', '2017-06-12 04:22:12', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2118', '408', '26', '3', '2017-06-12 04:22:10', '2017-06-12 04:42:58', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2119', '409', '16', '3', '2017-06-12 04:19:09', '2017-06-12 04:19:10', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2120', '409', '14', '3', '2017-06-12 04:19:03', '2017-06-12 04:19:07', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2121', '410', '20', '3', '2017-06-12 04:18:51', '2017-06-12 04:18:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2122', '411', '20', '3', '2017-06-12 04:11:10', '2017-06-12 04:11:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2123', '412', '14', '3', '2017-06-12 04:08:44', '2017-06-12 04:08:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2124', '412', '20', '3', '2017-06-12 04:08:41', '2017-06-12 04:08:49', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2125', '392', '22', '3', '2017-06-11 21:27:46', '2017-06-11 21:27:50', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2126', '396', '22', '3', '2017-06-11 22:28:03', '2017-06-11 23:04:11', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2127', '402', '22', '3', '2017-06-12 03:45:30', '2017-06-12 04:17:38', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2128', '413', '7', '3', '2017-06-12 08:02:02', '2017-06-12 13:30:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2129', '413', '13', '3', '2017-06-12 08:02:06', '2017-06-12 13:30:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2130', '413', '17', '3', '2017-06-12 08:02:16', '2017-06-12 13:30:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2131', '413', '18', '3', '2017-06-12 08:02:13', '2017-06-12 13:30:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2132', '413', '19', '3', '2017-06-12 09:14:37', '2017-06-12 13:30:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2133', '413', '23', '3', '2017-06-12 08:02:09', '2017-06-12 13:30:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2134', '413', '26', '3', '2017-06-12 08:01:59', '2017-06-12 08:55:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2135', '414', '7', '3', '2017-06-12 08:11:44', '2017-06-12 10:52:34', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2136', '414', '13', '3', '2017-06-12 08:11:48', '2017-06-12 09:42:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2137', '414', '17', '3', '2017-06-12 08:11:59', '2017-06-12 13:30:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2138', '414', '18', '3', '2017-06-12 08:11:56', '2017-06-12 13:30:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2139', '414', '19', '3', '2017-06-12 09:42:39', '2017-06-12 10:52:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2140', '414', '23', '3', '2017-06-12 08:11:52', '2017-06-12 09:42:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2141', '414', '26', '3', '2017-06-12 08:11:40', '2017-06-12 09:42:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2142', '415', '7', '3', '2017-06-12 13:05:37', '2017-06-12 14:28:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2143', '415', '13', '3', '2017-06-12 13:05:41', '2017-06-12 14:28:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2144', '415', '17', '3', '2017-06-12 13:05:44', '2017-06-12 14:29:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2145', '415', '18', '3', '2017-06-12 13:05:48', '2017-06-12 14:43:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2146', '415', '19', '3', '2017-06-12 13:05:51', '2017-06-12 13:31:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2147', '415', '23', '3', '2017-06-12 12:10:11', '2017-06-12 13:31:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2148', '415', '26', '3', '2017-06-12 12:10:03', '2017-06-12 13:31:10', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2149', '416', '13', '3', '2017-06-12 08:55:11', '2017-06-12 09:27:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2150', '416', '18', '3', '2017-06-12 08:55:08', '2017-06-12 09:27:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2151', '416', '23', '3', '2017-06-12 08:55:04', '2017-06-12 09:27:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2152', '416', '26', '3', '2017-06-12 08:55:00', '2017-06-12 09:27:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2154', '418', '26', '3', '2017-06-12 09:43:07', '2017-06-12 10:21:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2155', '418', '13', '3', '2017-06-12 09:43:10', '2017-06-12 10:21:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2156', '419', '15', '3', '2017-06-12 15:25:18', '2017-06-12 16:05:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2157', '420', '15', '3', '2017-06-12 15:25:26', '2017-06-12 16:05:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2158', '421', '13', '3', '2017-06-12 21:08:59', '2017-06-12 21:43:49', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2159', '421', '18', '3', '2017-06-12 21:09:07', '2017-06-12 21:43:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2160', '421', '20', '3', '2017-06-12 21:09:09', '2017-06-12 21:43:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2161', '421', '23', '3', '2017-06-12 21:09:12', '2017-06-12 21:43:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2162', '421', '26', '3', '2017-06-12 21:09:15', '2017-06-12 21:44:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2163', '422', '13', '3', '2017-06-12 21:10:15', '2017-06-12 21:46:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2164', '422', '18', '3', '2017-06-12 21:10:19', '2017-06-12 21:46:03', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2165', '422', '20', '3', '2017-06-12 21:10:21', '2017-06-12 21:46:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2166', '422', '23', '3', '2017-06-12 21:10:26', '2017-06-12 21:46:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2167', '422', '26', '3', '2017-06-12 21:10:29', '2017-06-12 21:46:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2168', '423', '13', '3', '2017-06-12 21:46:48', '2017-06-12 22:26:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2169', '423', '14', '3', '2017-06-12 21:46:55', '2017-06-12 22:26:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2170', '423', '18', '3', '2017-06-12 21:46:59', '2017-06-12 22:26:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2171', '423', '20', '3', '2017-06-12 21:47:02', '2017-06-12 22:26:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2172', '423', '22', '3', '2017-06-12 21:47:05', '2017-06-12 22:26:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2173', '423', '23', '3', '2017-06-12 21:47:08', '2017-06-12 22:26:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2174', '423', '26', '3', '2017-06-12 21:47:11', '2017-06-12 22:26:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2175', '424', '13', '3', '2017-06-12 21:47:19', '2017-06-12 22:26:44', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2176', '424', '18', '3', '2017-06-12 21:47:21', '2017-06-12 22:26:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2177', '424', '20', '3', '2017-06-12 21:47:24', '2017-06-12 22:26:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2178', '424', '23', '3', '2017-06-12 21:47:27', '2017-06-12 22:26:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2179', '424', '26', '3', '2017-06-12 21:47:29', '2017-06-12 22:27:00', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2180', '425', '13', '3', '2017-06-12 22:14:23', '2017-06-12 22:44:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2181', '425', '18', '3', '2017-06-12 22:14:25', '2017-06-12 22:45:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2182', '425', '20', '3', '2017-06-12 22:14:28', '2017-06-12 22:45:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2183', '425', '23', '3', '2017-06-12 22:14:30', '2017-06-12 22:45:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2184', '425', '26', '3', '2017-06-12 22:14:33', '2017-06-12 22:45:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2185', '426', '13', '3', '2017-06-12 22:59:19', '2017-06-12 23:23:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2186', '426', '18', '3', '2017-06-12 22:59:22', '2017-06-12 23:23:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2187', '426', '20', '3', '2017-06-12 22:59:24', '2017-06-12 23:23:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2188', '426', '23', '3', '2017-06-12 22:59:27', '2017-06-12 23:23:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2189', '426', '26', '3', '2017-06-12 22:59:29', '2017-06-12 23:23:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2190', '427', '13', '3', '2017-06-12 23:09:26', '2017-06-13 01:50:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2191', '427', '18', '3', '2017-06-12 23:09:28', '2017-06-13 01:50:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2192', '427', '19', '3', '2017-06-12 23:09:31', '2017-06-13 01:50:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2193', '427', '20', '3', '2017-06-12 23:09:35', '2017-06-13 01:50:36', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2194', '427', '23', '3', '2017-06-12 23:09:39', '2017-06-13 01:50:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2195', '427', '26', '3', '2017-06-12 23:09:42', '2017-06-13 01:50:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2196', '428', '13', '3', '2017-06-12 23:09:52', '2017-06-13 01:51:47', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2197', '428', '18', '3', '2017-06-12 23:09:54', '2017-06-13 01:51:54', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2198', '428', '19', '3', '2017-06-12 23:09:57', '2017-06-13 01:51:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2199', '428', '20', '3', '2017-06-12 23:10:02', '2017-06-13 01:52:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2200', '428', '22', '3', '2017-06-12 23:10:04', '2017-06-13 01:52:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2201', '428', '23', '3', '2017-06-12 23:10:13', '2017-06-13 01:52:11', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2202', '428', '26', '3', '2017-06-12 23:10:08', '2017-06-13 01:52:14', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2203', '429', '13', '3', '2017-06-13 01:14:43', '2017-06-13 01:43:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2204', '429', '18', '3', '2017-06-13 01:14:46', '2017-06-13 01:43:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2205', '429', '20', '3', '2017-06-13 01:14:48', '2017-06-13 01:43:30', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2206', '429', '23', '3', '2017-06-13 01:14:51', '2017-06-13 01:43:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2207', '429', '26', '3', '2017-06-13 01:14:54', '2017-06-13 01:43:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2208', '430', '13', '3', '2017-06-13 01:15:01', '2017-06-13 01:43:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2209', '430', '18', '3', '2017-06-13 01:15:03', '2017-06-13 01:43:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2210', '430', '20', '3', '2017-06-13 01:15:06', '2017-06-13 01:44:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2211', '430', '23', '3', '2017-06-13 01:15:09', '2017-06-13 01:44:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2212', '430', '26', '3', '2017-06-13 01:15:12', '2017-06-13 01:44:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2213', '431', '13', '3', '2017-06-13 00:35:55', '2017-06-13 01:10:15', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2214', '431', '14', '3', '2017-06-13 00:36:04', '2017-06-13 01:10:18', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2215', '431', '18', '3', '2017-06-13 00:36:07', '2017-06-13 01:10:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2216', '431', '20', '3', '2017-06-13 00:36:12', '2017-06-13 01:10:23', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2217', '431', '23', '3', '2017-06-13 00:36:15', '2017-06-13 01:10:26', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2218', '431', '26', '3', '2017-06-13 00:36:18', '2017-06-13 01:10:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2219', '432', '13', '3', '2017-06-13 00:36:34', '2017-06-13 01:10:42', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2220', '432', '14', '3', '2017-06-13 00:36:40', '2017-06-13 01:10:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2221', '432', '18', '3', '2017-06-13 00:36:43', '2017-06-13 01:10:50', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2222', '432', '20', '3', '2017-06-13 00:36:46', '2017-06-13 01:10:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2223', '432', '23', '3', '2017-06-13 00:36:50', '2017-06-13 01:11:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2224', '432', '26', '3', '2017-06-13 00:36:53', '2017-06-13 01:11:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2225', '433', '13', '3', '2017-06-13 01:52:28', '2017-06-13 03:02:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2226', '433', '14', '3', '2017-06-13 01:52:30', '2017-06-13 03:02:56', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2227', '433', '18', '3', '2017-06-13 01:52:36', '2017-06-13 03:02:59', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2228', '433', '19', '3', '2017-06-13 01:52:39', '2017-06-13 03:03:02', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2229', '433', '20', '3', '2017-06-13 01:52:46', '2017-06-13 03:03:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2230', '433', '23', '3', '2017-06-13 01:52:48', '2017-06-13 03:05:45', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2231', '433', '26', '3', '2017-06-13 01:52:53', '2017-06-13 03:05:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2232', '434', '13', '3', '2017-06-13 01:59:10', '2017-06-13 02:32:41', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2233', '434', '18', '3', '2017-06-13 01:59:14', '2017-06-13 02:32:43', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2234', '434', '20', '3', '2017-06-13 01:59:16', '2017-06-13 02:32:46', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2235', '434', '23', '3', '2017-06-13 01:59:19', '2017-06-13 02:32:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2236', '434', '26', '3', '2017-06-13 01:59:22', '2017-06-13 02:32:55', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2237', '435', '13', '3', '2017-06-13 03:24:31', '2017-06-13 03:46:13', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2238', '435', '18', '3', '2017-06-13 03:24:33', '2017-06-13 03:46:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2239', '435', '23', '3', '2017-06-13 03:24:36', '2017-06-13 03:46:21', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2240', '435', '26', '3', '2017-06-13 03:24:38', '2017-06-13 03:46:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2241', '436', '13', '3', '2017-06-13 03:24:46', '2017-06-13 03:58:05', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2242', '436', '18', '3', '2017-06-13 03:24:49', '2017-06-13 03:58:12', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2243', '436', '23', '3', '2017-06-13 03:24:52', '2017-06-13 03:58:17', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2244', '436', '26', '3', '2017-06-13 03:24:54', '2017-06-13 03:58:20', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2245', '437', '14', '3', '2017-06-12 20:53:03', '2017-06-12 21:17:16', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2246', '437', '20', '3', '2017-06-12 20:53:06', '2017-06-12 21:17:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2247', '438', '14', '3', '2017-06-12 20:53:14', '2017-06-12 21:17:35', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2248', '438', '16', '3', '2017-06-12 20:53:17', '2017-06-12 21:17:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2249', '438', '20', '3', '2017-06-12 20:53:20', '2017-06-12 21:17:40', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2250', '439', '20', '3', '2017-06-12 20:53:27', '2017-06-12 21:17:52', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2251', '440', '16', '3', '2017-06-12 20:53:34', '2017-06-12 21:18:06', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2252', '440', '20', '3', '2017-06-12 20:53:37', '2017-06-12 21:18:08', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2253', '441', '7', '3', '2017-06-13 07:52:32', '2017-06-13 10:15:48', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2254', '441', '13', '3', '2017-06-13 07:52:35', '2017-06-13 10:15:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2255', '441', '17', '3', '2017-06-13 07:52:39', '2017-06-13 10:16:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2256', '441', '18', '3', '2017-06-13 07:52:53', '2017-06-13 10:41:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2257', '441', '19', '3', '2017-06-13 09:29:37', '2017-06-13 10:16:24', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2258', '441', '23', '3', '2017-06-13 07:52:46', '2017-06-13 10:16:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2259', '441', '26', '3', '2017-06-13 07:52:26', '2017-06-13 08:52:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2260', '442', '7', '3', '2017-06-13 08:12:28', '2017-06-13 11:13:07', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2261', '442', '13', '3', '2017-06-13 08:12:42', '2017-06-13 11:13:04', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2262', '442', '17', '3', '2017-06-13 08:12:45', '2017-06-13 11:13:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2263', '442', '18', '3', '2017-06-13 08:12:38', '2017-06-13 11:12:57', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2264', '442', '19', '3', '2017-06-13 09:56:45', '2017-06-13 11:12:54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2265', '442', '23', '3', '2017-06-13 08:12:48', '2017-06-13 11:12:51', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2266', '442', '26', '3', '2017-06-13 08:12:25', '2017-06-13 09:56:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2267', '443', '7', '3', '2017-06-13 11:49:26', '2017-06-13 15:21:22', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2268', '443', '13', '3', '2017-06-13 14:10:28', '2017-06-13 15:21:25', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2269', '443', '17', '3', '2017-06-13 11:49:23', '2017-06-13 15:21:29', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2270', '443', '18', '3', '2017-06-13 14:10:25', '2017-06-13 15:21:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2271', '443', '19', '3', '2017-06-13 11:49:39', '2017-06-13 15:21:33', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2272', '443', '23', '3', '2017-06-13 11:49:31', '2017-06-13 15:21:19', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2273', '443', '26', '3', '2017-06-13 10:21:40', '2017-06-13 14:10:32', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2274', '444', '26', '3', '2017-06-13 09:04:18', '2017-06-13 09:22:58', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2275', '444', '13', '3', '2017-06-13 09:06:08', '2017-06-13 09:23:01', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2276', '445', '26', '3', '2017-06-13 11:12:24', '2017-06-13 11:37:27', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2277', '446', '26', '3', '2017-06-13 10:43:00', '2017-06-13 11:12:37', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('2278', '447', '7', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2279', '447', '14', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2280', '447', '21', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2281', '447', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2282', '447', '17', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2283', '447', '16', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2284', '447', '15', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2285', '447', '18', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2286', '447', '22', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2287', '447', '24', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2288', '447', '23', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2289', '447', '26', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('2290', '447', '20', '1', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `task_port`
-- ----------------------------
DROP TABLE IF EXISTS `task_port`;
CREATE TABLE `task_port` (
  `id` int(4) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `a_left` varchar(50) NOT NULL,
  `a_right` varchar(50) NOT NULL,
  `b_left` varchar(50) NOT NULL,
  `b_right` varchar(50) NOT NULL,
  `a_leader` varchar(50) NOT NULL,
  `b_leader` varchar(50) NOT NULL,
  `a_quality` varchar(50) NOT NULL,
  `b_quality` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_port
-- ----------------------------
INSERT INTO `task_port` VALUES ('0', '001001', '一列位一', ' 一列位二', ' 二列位一', '  二列位二', '一列位一', '二列位一', '一列位二', '二列位二');

-- ----------------------------
-- Table structure for `train_column`
-- ----------------------------
DROP TABLE IF EXISTS `train_column`;
CREATE TABLE `train_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `train_column` varchar(50) NOT NULL,
  `train_model` varchar(50) NOT NULL,
  `train_group` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train_column
-- ----------------------------
INSERT INTO `train_column` VALUES ('11', '2002A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('12', '2003A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('13', '2004A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('14', '2005A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('15', '2006A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('16', '2007A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('17', '2008A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('18', '2009A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('19', '2012A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('20', '2014A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('21', '2015A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('22', '2016A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('23', '2018A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('24', '2020A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('25', '2021A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('26', '2024A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('27', '2025A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('28', '2026A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('29', '2028A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('30', '2030A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('31', '2031A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('32', '2044A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('33', '2057A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('34', '2058A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('35', '2153A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('36', '2154A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('37', '2156A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('38', '2158A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('39', '2159A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('40', '2160A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('41', '2161A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('42', '2166A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('43', '2167A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('44', '2168A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('45', '2174A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('46', '2175A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('47', '2176A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('48', '2177A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('49', '2181A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('50', '2182A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('51', '2183A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('52', '2184A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('53', '2186A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('54', '2187A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('55', '2188A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('56', '2189A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('57', '2194A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('58', '2195A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('59', '2196A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('60', '2202A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('61', '2203A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('62', '2204A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('63', '2037A', '1', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('64', '动检车', '5', '1', '001001', '#000000');
INSERT INTO `train_column` VALUES ('65', '2001A', '1', '1', '001001', '#000000');

-- ----------------------------
-- Table structure for `train_data`
-- ----------------------------
DROP TABLE IF EXISTS `train_data`;
CREATE TABLE `train_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `train_line` int(11) NOT NULL,
  `train_style` int(11) NOT NULL,
  `gudao` int(11) NOT NULL,
  `xiucheng` int(11) NOT NULL,
  `train_group` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of train_data
-- ----------------------------
INSERT INTO `train_data` VALUES ('1', '2017-03-08', '00:20:00', '2', '4', '6', '7', '8', '1');

-- ----------------------------
-- Table structure for `train_group`
-- ----------------------------
DROP TABLE IF EXISTS `train_group`;
CREATE TABLE `train_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train_group
-- ----------------------------
INSERT INTO `train_group` VALUES ('1', '8');
INSERT INTO `train_group` VALUES ('2', '16');

-- ----------------------------
-- Table structure for `train_model`
-- ----------------------------
DROP TABLE IF EXISTS `train_model`;
CREATE TABLE `train_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `train_model` varchar(50) NOT NULL,
  `rubbish_box` tinyint(4) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  `parent_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train_model
-- ----------------------------
INSERT INTO `train_model` VALUES ('1', 'CRH2A', '4', '001001', '#000000', '0');

-- ----------------------------
-- Table structure for `trouble_maintain`
-- ----------------------------
DROP TABLE IF EXISTS `trouble_maintain`;
CREATE TABLE `trouble_maintain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trouble_maintain
-- ----------------------------
INSERT INTO `trouble_maintain` VALUES ('5', 'ddddddddddddddddddddddddddddwww金黄色的环境建设看看人人二哥哥哥', '001001', '#000000', 'fffffffffffffffff');
INSERT INTO `trouble_maintain` VALUES ('6', 'weihufffffffffffffffffffff合适的话阿卡卡速度加快速度加快v开始', '001001', '#000000', 'feefr');
INSERT INTO `trouble_maintain` VALUES ('7', 'weihugggggggggggggggggggggg', '001001', '#000000', 'dfdfdfdf');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `department_no` varchar(50) NOT NULL DEFAULT '0',
  `work_group_no` varchar(50) DEFAULT NULL,
  `work_post` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `short_number` varchar(50) DEFAULT '',
  `address` varchar(200) DEFAULT '',
  `sort_id` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rolecs_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rolebs_id` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('22', 'admin', '管理员', 'admin', '001', null, '1', '男', '', '', '', '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('317', '001', '上南操作员', '001', '001001', '', '值班员', '男', '18217760853', '', null, '0', '0', '0', '4');
INSERT INTO `user_info` VALUES ('7', '002', '俞1', '002', '001001', '00100101', '作业人员', '男', '13606641570', '', '', '3', '0', '0', '2');
INSERT INTO `user_info` VALUES ('50', '003', '陈2', '111111', '001001', '00100102', '作业人员', '男', '11111111111', '', '', '0', '0', '0', '4');
INSERT INTO `user_info` VALUES ('51', '3', '张笑', '3', '001001', '00100101', '当班经理', '男', '11111111111', '', '', '0', '0', '0', '2');
INSERT INTO `user_info` VALUES ('85', '151001', '胡满红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('86', '141002', '徐强', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('87', '121003', '丁守东', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('88', '101004', '张保锐', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('89', '101005', '李怀青', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('90', '101006', '王可友', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('91', '101007', '程德伟', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('92', '101008', '唐政芳', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('93', '141009', '孙木才', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('94', '151010', '殷文斌', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('95', '131011', '王才森', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('96', '141012', '宁益光', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('97', '131013', '王团飞', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('98', '111014', '王尚国', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('99', '121015', '司兴华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('100', '151016', '周良雄', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('101', '101017', '李勇克', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('102', '071018', '郑兴华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('103', '111019', '赵大平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('104', '121020', '徐后虎', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('105', '101021', '程方全', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('106', '131022', '方有贵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('107', '101023', '刘明彦', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('108', '111024', '毛德运', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('109', '071025', '邢华初', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('110', '091026', '韩荣林', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('111', '111027', '袁广兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('112', '151028', '刘维', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('113', '111029', '赵秋生', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('114', '111030', '周积兴', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('115', '091031', '丁修刚', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('116', '081032', '胡青春', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('117', '101033', '叶树全', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('118', '111034', '周正好', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('119', '171035', '余裕寿', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('120', '121036', '李福昌', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('121', '141037', '方少明', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('122', '101038', '张传见', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('123', '081039', '张伟', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('124', '131040', '刘红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('125', '141041', '杨先龙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('126', '151042', '周广六', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('127', '151043', '江正前', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('128', '151044', '祝先明', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('129', '151045', '张延福', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('130', '141046', '陈振庆', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('131', '121047', '傅维全', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('132', '121048', '罗其伦', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('133', '131049', '寇俊', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('134', '101050', '石朝高', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('135', '141051', '李平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('136', '121052', '王忠川', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('137', '071053', '李长富', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('138', '141054', '张定祥', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('139', '131055', '秦树杰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('140', '131056', '王丽', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('141', '101057', '黄显祥', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('142', '091058', '陈光余', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('143', '101059', '廖运橼', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('144', '131060', '余长征', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('145', '121061', '王鸭华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('146', '111062', '龙如全', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('147', '121063', '刘丝藜', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('148', '101064', '方守信', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('149', '171065', '刘世奇', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('150', '171066', '陈鹏', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('151', '141067', '杨培磊', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('152', '101068', '郇新华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('153', '151069', '池振超', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('154', '111070', '王李明', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('155', '111071', '何祥', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('156', '151072', '金明生', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('157', '101073', '任延庆', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('158', '151074', '洪小安', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('159', '101075', '陆建华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('160', '121076', '张立', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('161', '111077', '许承桂', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('162', '141078', '陶西山', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('163', '111079', '石朝均', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('164', '121080', '朱昌红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('165', '111081', '王行虎', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('166', '161082', '吴孝平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('167', '161083', '管杰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('168', '131084', '闫凤琼', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('169', '091085', '马长丰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('170', '101086', '杨兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('171', '151087', '丁素红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('172', '141088', '胡廷翠', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('173', '141089', '方平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('174', '81090', '崔正平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('175', '101091', '何秀兰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('176', '091092', '晏金仙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('177', '101093', '钟绍国', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('178', '151094', '潘博', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('179', '151095', '曹准北', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('180', '131096', '洪安全', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('181', '141097', '陈石仓', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('182', '91098', '李怀专', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('183', '131099', '袁江', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('184', '111100', '赵海洋', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('185', '101101', '孙修芳', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('186', '121102', '马风秀', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('187', '091103', '葛平凤', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('188', '131104', '侯莹莹', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('189', '161105', '何啟陆', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('190', '071106', '王爱华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('191', '101107', '易丽群', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('192', '111108', '陆扣马', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('193', '131109', '王维', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('194', '071110', '游小卫', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('195', '111111', '杨金龙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('196', '151112', '芮绍林', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('197', '121113', '王涛', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('198', '091114', '徐礼富', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('199', '091115', '罗太平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('200', '121116', '彭泽为', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('201', '121117', '高祥红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('202', '101118', '杨标', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('203', '091119', '张贵龙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('204', '151120', '张俊', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('205', '091121', '吴塘海', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('206', '151122', '薛章祥', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('207', '101123', '陈海贵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('208', '121124', '邱金火', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('209', '131125', '王安平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('210', '091126', '平家勤', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('211', '121127', '周英', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('212', '131128', '胡岭', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('213', '101129', '程正贵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('214', '121130', '朱永霞', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('215', '141131', '邢万玉', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('216', '091132', '骆德财', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('217', '081133', '张学兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('218', '091134', '张祥启', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('219', '131135', '潘红梅', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('220', '101136', '谢海', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('221', '151137', '孙继兰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('222', '081138', '刘现连', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('223', '161139', '丁学光', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('224', '161140', '陆惠萍', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('225', '071141', '饶绍涛', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('226', '081142', '莘红俊', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('227', '121143', '甄燕林', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('228', '131144', '张莉', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('229', '091145', '杨丽', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('230', '141146', '纪晓东', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('231', '161147', '王艺', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('232', '161148', '高小平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('233', '171149', '李朝帅', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('234', '171150', '陈晴', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('235', '171151', '张兴旺', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('236', '171152', '韩冬', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('237', '171153', '张雨秋', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('238', '171154', '李琪', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('239', '091155', '唐定友', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('240', '081156', '刘现团', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('241', '091157', '叶险锋', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('242', '091158', '骆德富', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('243', '091159', '张建冬', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('244', '091160', '葛小兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('245', '101161', '刘书艳', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('246', '101162', '平国艳', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('247', '121163', '陈明锔', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('248', '101164', '李清敏', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('249', '091165', '高一瑞', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('250', '101166', '张侠', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('251', '141167', '黄德军', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('252', '121168', '罗启昌', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('253', '151169', '陈远杰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('254', '101170', '张伯生', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('255', '101171', '孙良', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('256', '091172', '黄治重', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('257', '151173', '刘振华', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('258', '101174', '徐永光', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('259', '91175', '刘聚章', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('260', '131176', '钟祥兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('261', '071177', '王文双', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('262', '091178', '陆来苟', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('263', '091179', '汤海军', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('264', '091180', '徐士元', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('265', '121181', '刘明记', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('266', '131182', '陈昌云', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('267', '081183', '周诗尧', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('268', '101184', '曾令象', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('269', '091185', '张争君', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('270', '091186', '冉瑞兵', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('271', '111187', '曹先堂', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('272', '121188', '陶廷献', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('273', '151189', '陶利', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('274', '091190', '刘运达', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('275', '161191', '吴平安', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('276', '161192', '张有雷', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('277', '161193', '滕维飞', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('278', '161194', '汪英来', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('279', '171195', '李井龙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('280', '171196', '韦海明', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('281', '111197', '张笑', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('282', '121198', '梁启磊', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('283', '111199', '向海林', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('284', '101200', '李孟林', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('285', '101201', '刘文喜', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('286', '121202', '崔海丰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('287', '071203', '汪显英', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('288', '151204', '郑衰彩', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('289', '101205', '余兰仙', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('290', '151206', '彭泽兰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('291', '091207', '彭景荣', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('292', '071208', '王伏美', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('293', '081209', '韩家珍', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('294', '131210', '郜红荣', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('295', '131211', '姜仁敏', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('296', '101212', '黎定秀', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('297', '121213', '丰韦兰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('298', '071214', '徐坤凤', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('299', '141215', '王燕', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('300', '131216', '陈德梅', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('301', '091217', '徐芹', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('302', '121218', '吕自珍', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('303', '131219', '席春梅', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('304', '101220', '黎晓红', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('305', '171221', '陆文斌', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('306', '171222', '姚尚银', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('307', '071223', '朱文辉', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('308', '091224', '季成刚', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('309', '071225', '孙金友', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('310', '111226', '陆鹏飞', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('311', '141227', '顾永辉', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('312', '111228', '苏文生', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('313', '081229', '陈青国', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('314', '081230', '张苏平', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('315', '111231', '黄敬', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('316', '161232', '胡永峰', '', '001001', null, '', '', '', '', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` tinyint(4) NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL DEFAULT '',
  `comment` text,
  `sort_id` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `role_scope` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '公司管理员', '管理员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[\"/home/statistics/clean_summary\",\"/home/statistics/clean_query\",\"/home/statistics/task_statistics\",\"/home/statistics/train_lw_summary\",\"/home/statistics/lw_clean_statistics\",\"/home/statistics/filter_element_query_statistics\",\"/home/statistics/cooler_maintain_query_statistics\"],\"basic\":[\"/home/basic_data/train_style\",\"/home/basic_data/gudao\",\"/home/basic_data/xiucheng\",\"/home/basic_data/train_num\",\"/home/basic_data/task_port\",\"/home/basic_data/task_content\",\"/home/basic_data/maintain\",\"/home/basic_data/status_report\"],\"system\":[\"/home/system/part_manage\",\"/home/system/work_group_manage\",\"/home/system/task_group_manage\",\"/home/system/user_manage\",\"/home/system/role_manage\"]}');
INSERT INTO `user_role` VALUES ('2', '1', '服务部管理员', '管理员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[\"/home/statistics/clean_summary\",\"/home/statistics/clean_query\",\"/home/statistics/task_statistics\",\"/home/statistics/train_lw_summary\",\"/home/statistics/lw_clean_statistics\",\"/home/statistics/filter_element_query_statistics\",\"/home/statistics/cooler_maintain_query_statistics\"],\"basic\":[\"/home/basic_data/train_style\",\"/home/basic_data/gudao\",\"/home/basic_data/xiucheng\",\"/home/basic_data/train_num\",\"/home/basic_data/task_port\",\"/home/basic_data/task_content\",\"/home/basic_data/maintain\",\"/home/basic_data/status_report\"],\"system\":[\"/home/system/part_manage\",\"/home/system/work_group_manage\",\"/home/system/task_group_manage\",\"/home/system/user_manage\",\"/home/system/role_manage\"]}');
INSERT INTO `user_role` VALUES ('3', '1', '服务部调度员', '调度员', '0', '0', null);
INSERT INTO `user_role` VALUES ('4', '1', '服务部操作员', '操作员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[],\"basic\":[],\"system\":[]}');
INSERT INTO `user_role` VALUES ('5', '0', '服务部操作员', 'C/S操作员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[],\"basic\":[],\"system\":[]}');

-- ----------------------------
-- Table structure for `work_group`
-- ----------------------------
DROP TABLE IF EXISTS `work_group`;
CREATE TABLE `work_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_group_no` varchar(50) NOT NULL COMMENT '工作组编号',
  `work_group_name` varchar(50) NOT NULL,
  `department_no` varchar(50) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='工作班组\r\n跟作业计划关联';

-- ----------------------------
-- Records of work_group
-- ----------------------------
INSERT INTO `work_group` VALUES ('1', '00100101', '工作组一', '001001', '工作组一');
INSERT INTO `work_group` VALUES ('2', '00100102', '工作组二', '001001', '工作组二');
INSERT INTO `work_group` VALUES ('3', '00100103', '工作组三', '001001', '工作组三');

-- ----------------------------
-- View structure for `task_plan_detail_view`
-- ----------------------------
DROP VIEW IF EXISTS `task_plan_detail_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `task_plan_detail_view` AS select `tpd`.`id` AS `id`,`tpd`.`task_number` AS `task_number`,`tpd`.`task_content_id` AS `task_content_id`,`tpd`.`state` AS `state`,`tpd`.`trouble_maintain_id` AS `trouble_maintain_id`,`tpd`.`situation_content_id` AS `situation_content_id`,`tpd`.`a_left` AS `a_left`,`tpd`.`a_right` AS `a_right`,`tpd`.`b_left` AS `b_left`,`tpd`.`b_right` AS `b_right`,`tpd`.`a_leader` AS `a_leader`,`tpd`.`b_leader` AS `b_leader`,`tpd`.`a_quality` AS `a_quality`,`tpd`.`b_quality` AS `b_quality`,`tp`.`work_group_no` AS `work_group_no`,`tp`.`repair_id` AS `repair_id`,`tp`.`station_track_no` AS `station_track_no`,`tp`.`train_model` AS `train_model`,`tp`.`train_number` AS `train_number`,`tp`.`train_column` AS `train_column`,`tp`.`task_date` AS `task_date`,`tp`.`task_time` AS `task_time`,`tp`.`state` AS `task_state`,`tc`.`task_content` AS `task_content`,`tc`.`is_statistics` AS `is_statistics`,`wg`.`work_group_name` AS `work_group_name`,`di`.`department_no` AS `department_no`,`di`.`department_name` AS `department_name`,`t_colum`.`train_column` AS `train_column_name`,`t_colum`.`train_group` AS `train_group_id`,`tg`.`name` AS `train_group_name`,`sc`.`situation_content` AS `situation_content`,`ri`.`name` AS `repair_name`,`tm`.`train_model` AS `train_model_name`,`tm`.`rubbish_box` AS `rubbish_box`,`st`.`station_track_no` AS `station_track_name`,(case when ((`t_colum`.`train_group` = '2') and (`tc`.`task_content` like '%清洗%')) then '2' else '1' end) AS `train_task_count` from ((((((((((`task_plan_detail` `tpd` left join `task_plan` `tp` on((`tpd`.`task_number` = `tp`.`task_number`))) left join `task_content` `tc` on((`tpd`.`task_content_id` = `tc`.`id`))) left join `work_group` `wg` on((`tp`.`work_group_no` = `wg`.`work_group_no`))) left join `department_info` `di` on((`wg`.`department_no` = `di`.`department_no`))) left join `train_column` `t_colum` on((`t_colum`.`id` = `tp`.`train_column`))) left join `train_model` `tm` on((`tm`.`id` = `tp`.`train_model`))) left join `train_group` `tg` on((`t_colum`.`train_group` = `tg`.`id`))) left join `repair_info` `ri` on((`tp`.`repair_id` = `ri`.`id`))) left join `situation_content` `sc` on((`tpd`.`situation_content_id` = `sc`.`id`))) left join `station_track` `st` on((`tp`.`station_track_no` = `st`.`id`))) ;

-- ----------------------------
-- View structure for `user_info_view`
-- ----------------------------
DROP VIEW IF EXISTS `user_info_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_info_view` AS select `u`.`id` AS `id`,`u`.`account` AS `account`,`u`.`name` AS `name`,`u`.`password` AS `password`,`u`.`department_no` AS `department_no`,`u`.`work_group_no` AS `work_group_no`,`u`.`work_post` AS `work_post`,`u`.`sex` AS `sex`,`u`.`phone` AS `phone`,`u`.`short_number` AS `short_number`,`u`.`address` AS `address`,`u`.`sort_id` AS `sort_id`,`u`.`status` AS `status`,`u`.`rolecs_id` AS `rolecs_id`,`u`.`rolebs_id` AS `rolebs_id`,`rcs`.`role_name` AS `rolecs_name`,`rcs`.`role_scope` AS `rolecs_scope`,`rbs`.`role_name` AS `rolebs_name`,`rbs`.`role_scope` AS `rolebs_scope`,`d`.`department_name` AS `department_name` from (((`user_info` `u` left join `user_role` `rcs` on((`u`.`rolecs_id` = `rcs`.`id`))) left join `user_role` `rbs` on((`u`.`rolebs_id` = `rbs`.`id`))) left join `department_info` `d` on((`u`.`department_no` = `d`.`department_no`))) ;

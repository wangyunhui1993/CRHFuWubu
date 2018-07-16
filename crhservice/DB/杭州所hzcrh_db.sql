/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hzcrh_db

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-06-14 08:49:48
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
  `department_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cooler_maintain_statistics
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_basic_setting
-- ----------------------------
INSERT INTO `cs_basic_setting` VALUES ('1', '', '#FFFFFF', '#000000', '#000000', '#000000', '#FF4949', '#13CE66', '#FF4949', '#FF4949', '#20A0FF', '222222', '立标塑形', '安全预想', '10');
INSERT INTO `cs_basic_setting` VALUES ('2', '001001', '#CFBCBC', '#E70B0B', '#09823B', '#000000', '#B80707', '#13CE66', '#0FBF12', '#01061A', '#CD06C3', '1、车顶作业请系好安全带。2、滤网传递。呼唤应答，提拿要稳。防止物体打击伤害。3、库内外严禁抢越股道。', '三个重中之重：\n1.坚持把高铁安全作为安全工作的重中之重；\n 2.把加强安全管理作为安全各项工作的重中之重；\n3.把抓落实作为安全管理工作的重中之重。', '1.安全，是铁路运输企业的生命线。\n2.安全作业，确认无电，防止触电伤害。\n3.机动车辆，小心驾驶，滤网推车，谨防自留。', '10');

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cs_clear_staff
-- ----------------------------
INSERT INTO `cs_clear_staff` VALUES ('2', '沈翠玲', '001001', '110', '820', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('3', '余莲芝', '001001', '2240', '822', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('4', '沈翠霞', '001001', '2573', '786', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('5', '章欢芳', '001001', '2734', '949', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('20', '章忠法', '001001', '2367', '949', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('7', '刘素梅', '001001', '964', '755', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('8', '刘云', '001001', '460', '756', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('9', '胡国蕊', '001001', '381', '751', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('10', '李斯良', '001001', '410', '941', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('11', '陆海民', '001001', '535', '940', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('12', '李士军', '001001', '1024', '836', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('13', '徐高水', '001001', '2355', '920', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('14', '黄秀芳', '001001', '2483', '919', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('22', '阳明', '001001', '352', '27', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('18', '蒋永芬', '001001', '2568', '821', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('19', '张忆明', '001001', '2483', '949', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('25', '朱广波', '001001', '282', '24', '2051', '940');
INSERT INTO `cs_clear_staff` VALUES ('23', '张灵', '001001', '166', '121', '2051', '940');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_led
-- ----------------------------
INSERT INTO `cs_led` VALUES ('1', '001001', '欢迎领导莅临检查！', '32*32', '红色', '1');
INSERT INTO `cs_led` VALUES ('2', '001001', '安全作业，确认无电，防止触电伤害。', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('3', '001001', '车库两端请勿滞留，横越股道注意观望，防止车辆伤害。', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('4', '001001', '穿越平交道，严格执行\"一停，二看，三通过”规定。', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('5', '', '强基达标 提质增效 ,深入开展安全生产月活动，确保运输安全持续稳定', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('6', '', '积极响应上级要求于7月至10月在公司开展安全生产大检查 。', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('7', '', '知路爱路护路，共筑平安铁路', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('8', '', '安全作业，确认无电，防止触电伤害。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('9', '', '车库两端请勿滞留，横越股道注意观望，防止车辆伤害。', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('10', '', '天气闷热人易疲劳，注意休息防中暑。', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('11', '', '穿越平交道，严格执行\"一停，二看，三通过”规定。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('12', '', '加强高铁保障服务，做好动车组库内保洁作业。', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('13', '', '坚持问题导向和源头治理，做好安全风险管控和安全隐患排查治理', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('14', '', '规范管理，强化基础，盯控关键，狠抓落实。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('15', '', '线路行走“四不”制度  1、直行线路时不走道路心、道木头  2、横越线路时不抢道，不得从停有车辆的轨道下穿过 3、吸污车、电瓶车未经停车确认不得通过平交道  4、不得在车辆移动时爬上爬下', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('16', '', '三点安全共识:1.把安全生产作为第一位的工作；2.始终保持安全敏感性和敬畏感；3.把安全问题作为最重要的问题首先解决', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('17', '', '                                             安全问题，标本兼治。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('18', '', '进一步加强安全生产工作，确保公司安全生产持续稳定，为党的十九大胜利召开营造稳定的安全生产环境。', '24*24', '绿色', '1');
INSERT INTO `cs_led` VALUES ('19', '001001', '加强高铁保障服务，做好动车组库内保洁作业。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('20', '001001', '坚持问题导向和源头治理，做好安全风险管控和安全隐患排查治理！', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('21', '001001', '规范管理，强化基础，盯控关键，狠抓落实。', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('22', '001001', '线路行走“四不”制度  1、直行线路时不走道路心、道木头  2、横越线路时不抢道，不得从停有车辆的轨道下穿过 3、吸污车、电瓶车未经停车确认不得通过平交道  4、不得在车辆移动时爬上爬下', '16*16', '红色', '1');
INSERT INTO `cs_led` VALUES ('23', '001001', '三点安全共识:1.把安全生产作为第一位的工作；2.始终保持安全敏感性和敬畏感；3.把安全问题作为最重要的问题首先解决', '16*16', '绿色', '1');
INSERT INTO `cs_led` VALUES ('24', '001001', '以铁路强国为实现中华民族伟大复兴中国梦当好先行！', '16*16', '红色', '1');
INSERT INTO `cs_led` VALUES ('25', '001001', '进一步增强政治意识、大局意识、核心意识、看齐意识！', '16*16', '绿色', '1');
INSERT INTO `cs_led` VALUES ('26', '001001', '认真学习贯彻党的十九大精神、努力开创铁路改革发展新局面！', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('27', '001001', '贯彻创新、协调、绿色、开放、共享的发展理念', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('28', '001001', '天气寒冷，行动不便，注意安全！', '24*24', '红色', '1');
INSERT INTO `cs_led` VALUES ('29', '001001', '坚持生命至上、安全第一。', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('30', '001001', '不忘初心、牢记使命，交通强国、铁路先行', '24*24', '黄色', '1');
INSERT INTO `cs_led` VALUES ('31', '001001', '吸取劳动安全事故教训，强化劳动安全“五项纪律”。', '24*24', '绿色', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cs_task
-- ----------------------------
INSERT INTO `cs_task` VALUES ('10', '1', '001', '00100102', 'lyc', 'qwj', '', '', '');
INSERT INTO `cs_task` VALUES ('11', '1', '001001', '00100102', 'qwj', 'zp', '', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('1', '001', '迅安', '总公司');
INSERT INTO `department_info` VALUES ('8', '001001', '杭州服务部', '');

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
  `department_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_cloth_statistics
-- ----------------------------

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
  `department_no` varchar(50) DEFAULT NULL,
  `train_model` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_dust_statistics
-- ----------------------------

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
  `department_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filter_element_statistics
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_info
-- ----------------------------
INSERT INTO `repair_info` VALUES ('16', '一级修', '#000000', '一级修');
INSERT INTO `repair_info` VALUES ('17', '二级修', '#000000', '二级修');
INSERT INTO `repair_info` VALUES ('18', '专项修', '#000000', '1M0,1M1,1M2,1M3,1M4,1M5,3M0,3M1,3M2,3M3');
INSERT INTO `repair_info` VALUES ('19', '机器清洗', '#000000', '机器清洗');
INSERT INTO `repair_info` VALUES ('20', '外墙人工洗', '#000000', '外墙人工洗');
INSERT INTO `repair_info` VALUES ('21', '外墙人工精洗', '#000000', '外墙人工精洗');
INSERT INTO `repair_info` VALUES ('23', '库外人工洗', '#000000', '库外人工洗');
INSERT INTO `repair_info` VALUES ('24', '库外人工精洗', '#000000', '库外人工精洗');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of situation_content
-- ----------------------------
INSERT INTO `situation_content` VALUES ('11', '鲁一聪 12.30', '001001', '#000000');
INSERT INTO `situation_content` VALUES ('10', '鲁一聪 10:32', '001001', '#000000');
INSERT INTO `situation_content` VALUES ('12', '111', '001001', '#000000');
INSERT INTO `situation_content` VALUES ('13', '11122', '001001', '#000000');

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of station_track
-- ----------------------------
INSERT INTO `station_track` VALUES ('20', 'D3', '001001', '#000000');
INSERT INTO `station_track` VALUES ('21', 'D4', '001001', '#000000');
INSERT INTO `station_track` VALUES ('22', 'D5', '001001', '#000000');
INSERT INTO `station_track` VALUES ('23', 'D6', '001001', '#000000');
INSERT INTO `station_track` VALUES ('24', 'D7', '001001', '#000000');
INSERT INTO `station_track` VALUES ('25', 'D8', '001001', '#000000');
INSERT INTO `station_track` VALUES ('26', 'D10', '001001', '#000000');
INSERT INTO `station_track` VALUES ('27', 'D14', '001001', '#000000');
INSERT INTO `station_track` VALUES ('28', 'D33', '001001', '#000000');

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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_content
-- ----------------------------
INSERT INTO `task_content` VALUES ('7', '吸污作业', '1', '001001', '#E31919');
INSERT INTO `task_content` VALUES ('13', '瓷瓶擦拭', '1', '001001', '#FA0202');
INSERT INTO `task_content` VALUES ('14', '底部卫生', '0', '001001', '#F50000');
INSERT INTO `task_content` VALUES ('15', '广告巡查', '0', '001001', '#F70505');
INSERT INTO `task_content` VALUES ('16', '车内换书', '0', '001001', '#F70202');
INSERT INTO `task_content` VALUES ('17', '转向架油迹清洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('72', '滤网布（新）', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('82', '转向架清洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('69', '设备仓清灰', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('68', '滤尘网拆洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('47', '车顶拖洗', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('46', '圆弧清洗', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('29', '库内人工洗车', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('83', '库外人工洗车', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('74', '滤网布（旧）', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('48', '防松标记', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('49', '库外单项吸污', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('50', '裙板滤网', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('51', '二层平台', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('52', '更换牵引变流器滤棉', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('53', '冲洗牵引变流器冷却格栅', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('54', '更换牵引变压器滤棉', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('55', '冲洗牵引变压器冷却格栅', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('56', '机器清洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('57', '库内补洗车头', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('58', '车体外皮擦拭', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('59', '裙板擦拭', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('60', '污物箱冲洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('61', '牵引通风滤网', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('62', '空调冷凝器冲洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('63', '空调蒸发器冲洗', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('64', '空调蒸发器吹灰', '0', '001001', '#000000');
INSERT INTO `task_content` VALUES ('65', '拆除牵引变压器滤棉', '1', '001001', '#000000');
INSERT INTO `task_content` VALUES ('66', '拆除牵引变流器滤棉', '1', '001001', '#000000');

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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='作业小组\r\n跟作业计划实施的具体内容关联';

-- ----------------------------
-- Records of task_group
-- ----------------------------
INSERT INTO `task_group` VALUES ('18', '吸污一沪', '001001', 'cyg', '');
INSERT INTO `task_group` VALUES ('19', '吸污一杭', '001001', 'sls', '');
INSERT INTO `task_group` VALUES ('20', '吸污二沪', '001001', 'zky', '');
INSERT INTO `task_group` VALUES ('21', '吸污二杭', '001001', 'lyl', '');
INSERT INTO `task_group` VALUES ('22', '吸污三沪', '001001', 'wzh', '');
INSERT INTO `task_group` VALUES ('23', '吸污三杭', '001001', 'hgg', '');
INSERT INTO `task_group` VALUES ('49', '一组沪', '001001', 'hxf,lmy,mjy,zyf', '');
INSERT INTO `task_group` VALUES ('25', '一组杭', '001001', 'zsm,xy,whz,zbj', '');
INSERT INTO `task_group` VALUES ('26', '二组沪', '001001', 'zjy,wjr,hl,xxy', '');
INSERT INTO `task_group` VALUES ('27', '二组杭', '001001', 'dzw,lwf,mxq,dxl', '');
INSERT INTO `task_group` VALUES ('28', '三组沪', '001001', 'zyb,yzc,zhx,sjb', '');
INSERT INTO `task_group` VALUES ('29', '三组杭', '001001', 'nfs,xyk,db,wzb', '');
INSERT INTO `task_group` VALUES ('30', '四组沪', '001001', 'wt,zjp,ykx,xx', '');
INSERT INTO `task_group` VALUES ('31', '四组杭', '001001', 'dsd,fwz,wfx,qwj', '');
INSERT INTO `task_group` VALUES ('54', '洗车组长', '001001', 'yqh,zwc', '');
INSERT INTO `task_group` VALUES ('32', '底部卫生1', '001001', 'ylk,wzy', '');
INSERT INTO `task_group` VALUES ('33', '底部卫生2', '001001', 'dzf,00100104', '');
INSERT INTO `task_group` VALUES ('38', '机动1组沪', '001001', 'zcj,zyc,ykm,zmx', '');
INSERT INTO `task_group` VALUES ('39', '机动1组杭', '001001', 'yhs,ylh,zyl', '');
INSERT INTO `task_group` VALUES ('40', '机动2组沪', '001001', 'qxt,wsz,wny', '');
INSERT INTO `task_group` VALUES ('41', '机动2组杭', '001001', 'xwg ,xsj,xl', '');
INSERT INTO `task_group` VALUES ('45', '库内补洗车头沪', '001001', 'dsx,lgl,pdn,wqx,zgf,zhs', '');
INSERT INTO `task_group` VALUES ('46', '库内补洗车头杭', '001001', 'fjj,fjl,llb,wzl,zjc,zqw', '');
INSERT INTO `task_group` VALUES ('47', '库内人工洗车沪', '001001', 'hgp,lg,lqa,qdw,zh,zdf,lwh', '');
INSERT INTO `task_group` VALUES ('48', '库内人工洗车杭', '001001', 'hxr,ndj,wq,xxh,zhj,zsb,ztc', '');
INSERT INTO `task_group` VALUES ('52', '车内换书', '001001', 'zwh,wgf', '');
INSERT INTO `task_group` VALUES ('53', '广告巡查', '001001', 'scl,xgs', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业计划';

-- ----------------------------
-- Records of task_plan
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

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
INSERT INTO `task_plan_detail` VALUES ('84', '17', '7', '2', '2017-04-11 13:18:03', null, null, null, null, null, null, null, null, null, null, null);
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
INSERT INTO `task_plan_detail` VALUES ('131', '25', '7', '3', '2017-04-14 11:48:46', '2017-04-14 13:48:18', '', '', '121127,131135,151137', '', '', '', '121127', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('132', '25', '13', '3', '2017-04-14 12:47:12', '2017-04-14 13:47:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('133', '25', '17', '3', '2017-04-14 11:48:55', '2017-04-14 14:38:26', '', '', '121124,131125,121130', '', '', '', '121124', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('134', '25', '18', '3', '2017-04-14 11:49:22', '2017-04-14 13:48:07', '', '', '091121,091119,121117', '', '', '', '091121', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('135', '25', '19', '3', '2017-04-14 12:47:02', '2017-04-14 13:47:46', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('136', '25', '23', '3', '2017-04-14 11:49:05', '2017-04-14 13:48:11', '', '', '091121,121113,111111,171150', '', '', '', '091121', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('161', '33', '7', '2', '2017-04-26 08:18:12', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('162', '33', '13', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('163', '33', '17', '2', '2017-04-26 08:18:18', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('164', '33', '18', '2', '2017-04-26 08:18:22', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('165', '33', '19', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `task_plan_detail` VALUES ('166', '33', '23', '2', '2017-04-26 08:18:26', null, '', '', '', '', '', '', '', '', '', '');
INSERT INTO `task_plan_detail` VALUES ('167', '34', '7', '2', '2017-04-26 08:56:41', null, '', '', '', '', '131135,151137', '', '', '', '', '');

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
INSERT INTO `task_port` VALUES ('0', '001001', '沪左', '沪右', '杭左', '杭右', '沪端 ', '杭端 ', '沪端 ', '杭端 ');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train_column
-- ----------------------------
INSERT INTO `train_column` VALUES ('1', '1041', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('2', '1042', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('3', '1043', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('4', '1044', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('5', '1045', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('6', '1047', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('7', '1048', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('8', '1049', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('9', '1050', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('10', '1051', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('11', '3501', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('12', '3502', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('13', '3503', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('14', '3504', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('15', '3505', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('16', '3506', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('17', '3507', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('18', '3508', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('19', '3509', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('20', '3510', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('21', '3511', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('22', '3512', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('23', '3513', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('24', '3514', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('25', '3515', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('26', '3516', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('27', '3521', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('28', '3523', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('29', '3524', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('30', '3528', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('31', '3529', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('32', '3530', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('33', '3532', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('34', '3533', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('35', '3534', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('36', '3535', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('37', '3537', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('38', '3553', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('39', '3735', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('40', '3564', '6', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('41', '1053', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('42', '1052', '1', '2', '001001', '#000000');
INSERT INTO `train_column` VALUES ('43', '3525', '6', '2', '001001', '#000000');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train_model
-- ----------------------------
INSERT INTO `train_model` VALUES ('1', 'CRH1B', '15', '001001', '#000000', '0');
INSERT INTO `train_model` VALUES ('6', 'CRH380BL', '15', '001001', '#000000', '0');
INSERT INTO `train_model` VALUES ('7', 'CRH380B', '15', '001001', '#000000', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trouble_maintain
-- ----------------------------
INSERT INTO `trouble_maintain` VALUES ('5', '风挡', '001001', '#000000', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=670 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('22', 'admin', '管理员', 'admin', '001', null, '1', '男', '', '', '', '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('317', '001', '杭州迅安管理员', '1', '001001', '', '管理员', '男', '', '', '', '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('569', 'lyc', '鲁一聪', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('651', 'qwj', '齐为井', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('567', 'xyk', '徐玉宽', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('536', 'zp', '周蓬', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('535', 'zxh', '章孝华', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('534', 'zqb', '张齐彬', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('654', 'hkx', '胡凯旋', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('521', 'gzj', '高宗建', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('557', 'ykx', '叶坤喜', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('649', 'xx', '徐兴', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('551', 'wzh', '王照华', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('548', 'yzc', '于志春', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('549', 'zyb', '章银波', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('345', 'zhx', '张红新', '1', '001001', '00100103', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('505', 'zwg', '张卫国', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('507', 'sls', '沈林山', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('508', 'ylh', '俞路红', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('652', 'sjb', '苏建波', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('510', 'zjy', '章建尧', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('511', 'ylk', '俞路宽', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('512', 'cyg', '陈亚刚', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('329', 'cgm', '陈国民', '1', '001001', '00100102', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('328', 'XA0011', '王天才', '1', '001001', '00100102', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('327', 'XA0010', '王朝晖', '1', '001001', '00100102', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('326', 'lzj ', '刘子军', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('324', 'dsp', '杜士普', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('323', 'txt', '涂显涛', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('322', 'yyq ', '袁永强', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('321', 'wxl', '王晓林', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('660', 'zb', '张波', '111111', '001001', '00100101', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('318', 'cwh', '陈卫红', '1', '001001', '00100101', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('550', 'wt', '王涛', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('552', 'xl', '徐龙', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('647', 'zwx', '赵伍喜', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('555', 'wqg', '王其刚', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('522', 'whz', '王洪中', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('524', 'ykm', '叶坤明', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('525', 'mjy', '牟家友', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('648', 'wzb', '王准备', '111111', '001001', '00100109', '', '男', '', '', '', '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('527', 'lyl', '李玉龙', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('528', 'zmx', '章淼信', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('644', 'zbj', '章柏坚', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('530', 'yhs', '俞和松', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('531', 'zky', '周可以', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('533', 'wjr', '王金荣', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('632', 'lgl', '刘国乐', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('588', 'zzx', '章忠信', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('589', 'scq', '司长权', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('590', 'cgy', '陈国裕', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('561', 'dsd', '董少东', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('646', 'lhf', '李海峰', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('615', 'qhq', '齐海强', '111111', '001001', '00100101', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('669', 'hgg', '候广干', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('655', '00100102', '支毓勇', '111111', '001001', '00100102', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('566', 'wny', '王乃银', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('650', 'dxl', '董绪龙', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('542', 'dzf', '董治发', '111111', '001001', '00100104', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('543', 'nfs', '年福山', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('653', 'zcj', '朱长军', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('630', 'zwh', '张文汉', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('547', 'db', '丁兵', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('595', 'qdw', '秦大伟', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('596', 'zsb', '张世斌', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('597', 'pdn', '彭党年', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('598', 'hhf', '候红飞', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('599', 'xxh', '徐兴华', '111111', '001001', '00100105', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('600', 'lhy', '李虎友', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('601', 'zhj', '张恒建', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('575', 'xjp', '宣建平', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('576', 'zqw', '章钦文', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('577', 'zgf', '章国飞', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('578', 'zjr', '朱建荣', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('579', 'lkj', '李奎军', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('503', 'gkh', '高可虎', '111111', '001001', '00100101', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('582', 'hgp', '侯光普', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('583', 'ztc', '章天成', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('584', 'dsx', '杜世轩', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('585', 'hxr', '侯相瑞', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('461', 'zjy2', '祝军英', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('460', 'clx', '柴金秀', '1', '001001', '00100106', '广告巡查', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('459', 'lmq', '李明清', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('458', 'lmy', '李美英', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('457', 'hxf', '黄秀芳', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('456', 'ycf', '袁朝芬', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('455', 'lhy2', '李华玉', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('454', 'zdf', '章忠法', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('453', 'xh', '徐欢', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('451', 'flz', '冯连珍', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('450', 'lhm', '陆海民', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('449', 'zch', '赵春华', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('448', 'wzl2', '王照玲', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('447', 'lsj', '李士军', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('445', 'lsl', '李斯良', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('444', 'xgs', '徐高水', '1', '001001', '00100106', '广告巡查', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('443', 'zl', '张灵', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('442', 'ly', '刘云', '1', '001001', '00100106', '广告巡查', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('441', 'xpc', '徐培春', '1', '001001', '00100106', '广告巡查', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('612', 'zhf', '章欢芳', '111111', '001001', '00100106', '', '女', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('439', 'lsm', '刘素梅', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('438', 'hgr', '胡国蕊', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('437', 'scx', '沈翠霞', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('436', 'jyf', '蒋永芬', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('435', 'ylz', '余莲枝', '1', '001001', '00100106', '广告巡查', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('434', 'ym', '阳明', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('433', 'zgb', '朱广波', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('663', '001001', '沈衍芝', '111111', '001001', '00100106', '', '女', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('664', 'zjp', '朱建平', '111111', '001001', '', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('666', 'fwz', '方卫忠', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('667', 'zzy', '周正宇', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('668', 'xy', '徐英', '111111', '001001', '00100106', '', '女', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('465', 'zym', '张忆明', '1', '001001', '00100106', '', '男', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('464', 'zsm', '张树梅', '1', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('462', 'scl', '沈翠玲', '1', '001001', '00100106', '广告巡查', '女', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('519', 'zmm', '章明民', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('518', 'wzy', '王照友', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('515', 'dzw', '董志文', '111111', '001001', '00100103', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('514', 'hl', '韩林', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('513', 'xwg ', '夏文光', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('504', 'mxq', '梅新启', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('645', 'xxy', '谢孝永', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('495', 'XA0178', '谭明华', '1', '001001', '00100107', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('494', 'XA0177', '韩文', '1', '001001', '00100107', '', '', '', '', '', '0', '0', '0', '0');
INSERT INTO `user_info` VALUES ('661', 'lwh', '聂卫红', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('570', 'sjj', '沈佳佳', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('586', 'wzl', '王增林', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('558', 'wfx', '王峰晓', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('559', 'qxt', '齐现涛', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('560', 'xsj', '徐善计', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('537', 'fzr', '樊中瑞', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('539', 'wm', '王明', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('540', 'lhb', '李洪兵', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('532', 'zlx', '朱立祥', '111111', '001001', '00100103', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('591', 'zwc', '张万成', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('592', 'zhs', '张海曙', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('593', 'fjj', '方金江', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('594', 'yqh', '于庆红', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('572', 'ndj', '牛灯杰', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('573', 'zh', '张华', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('574', 'ysq', '姚守青', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('580', 'wq', '王青', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('581', 'lg', '罗滚', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('662', '00100104', '刘培红', '111111', '001001', '00100104', '', '男', '', '', '', '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('611', 'lyq', '李园清', '111111', '001001', '00100106', '', '女', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('610', 'zy', '张源', '111111', '001001', '00100108', '', '男', '', '', null, '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('637', 'zy0', '朱玥 ', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('496', 'fyx', '费逸宪', '111111', '001001', '00100108', '', '男', '', '', '', '0', '0', '0', '2');
INSERT INTO `user_info` VALUES ('497', 'ywj', '俞武君', '111111', '001001', '00100108', '', '男', '', '', '', '0', '0', '0', '2');
INSERT INTO `user_info` VALUES ('498', 'wjh', '武吉航', '111111', '001001', '00100108', '', '男', '', '', '', '0', '0', '0', '2');
INSERT INTO `user_info` VALUES ('499', 'gwb', '郭文斌', '111111', '001001', '00100108', '', '男', '', '', '', '0', '0', '0', '2');
INSERT INTO `user_info` VALUES ('500', 'my', '茅毅', '111111', '001001', '00100108', '', '男', '', '', '', '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('571', 'qwm', '齐为美', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('602', 'fjl', '付建力', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('603', 'zjc', '章建成', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('604', 'xj', '夏进', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('605', 'zjh', '章金欢', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('606', 'lqa', '李青爱', '111111', '001001', '00100105', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('607', 'zhs1', '章欢松', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('608', 'llb', '李礼宝', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('609', 'zxf', '章祥富', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('613', 'zcj1', '赵从静', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('616', 'wch', '王朝辉', '111111', '001001', '00100104', '', '男', '', '', '', '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('617', 'zjd', '章加达', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('618', 'lwf', '廖文飞', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('619', 'zyl', '张玉龙', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('620', 'zyc', '章幼成', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('643', 'zyf', '章益富', '111111', '001001', '00100109', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('622', 'yyj', '袁永俊', '111111', '001001', '00100103', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('624', 'lph', '刘 培红', '111111', '001001', '00100104', '', '男', '', '', '', '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('625', 'wsz', '王士照', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('656', '00100106', '支毓永', '111111', '001001', '00100106', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('627', 'cdf', '陈大福', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('629', 'xjh', '须剑虹', '111111', '001001', '00100108', '', '男', '', '', null, '0', '0', '0', '1');
INSERT INTO `user_info` VALUES ('631', 'wgf', '王谷富', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');
INSERT INTO `user_info` VALUES ('633', 'zym0', '章一敏', '111111', '001001', '00100105', '', '男', '', '', '', '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('634', 'wqx', '王其续', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('635', 'zjy0', '章建云', '111111', '001001', '00100105', '', '男', '', '', null, '0', '0', '0', '13');
INSERT INTO `user_info` VALUES ('636', 'ycm', '袁从明', '111111', '001001', '00100104', '', '男', '', '', null, '0', '0', '0', '14');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '公司管理员', '管理员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[\"/home/statistics/clean_summary\",\"/home/statistics/clean_query\",\"/home/statistics/task_statistics\",\"/home/statistics/train_lw_summary\",\"/home/statistics/lw_clean_statistics\",\"/home/statistics/filter_element_query_statistics\",\"/home/statistics/cooler_maintain_query_statistics\"],\"basic\":[\"/home/basic_data/train_style\",\"/home/basic_data/gudao\",\"/home/basic_data/xiucheng\",\"/home/basic_data/train_num\",\"/home/basic_data/task_port\",\"/home/basic_data/task_content\"],\"system\":[\"/home/system/part_manage\",\"/home/system/work_group_manage\",\"/home/system/task_group_manage\",\"/home/system/user_manage\",\"/home/system/role_manage\"]}');
INSERT INTO `user_role` VALUES ('2', '1', '服务部管理员', '管理员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[\"/home/statistics/clean_summary\",\"/home/statistics/clean_query\",\"/home/statistics/task_statistics\",\"/home/statistics/train_lw_summary\",\"/home/statistics/lw_clean_statistics\",\"/home/statistics/filter_element_query_statistics\",\"/home/statistics/cooler_maintain_query_statistics\"],\"basic\":[\"/home/basic_data/train_style\",\"/home/basic_data/gudao\",\"/home/basic_data/xiucheng\",\"/home/basic_data/train_num\",\"/home/basic_data/task_port\",\"/home/basic_data/task_content\",\"/home/basic_data/maintain\",\"/home/basic_data/status_report\"],\"system\":[\"/home/system/part_manage\",\"/home/system/work_group_manage\",\"/home/system/task_group_manage\",\"/home/system/user_manage\",\"/home/system/role_manage\"]}');
INSERT INTO `user_role` VALUES ('3', '1', '服务部调度员', '调度员', '0', '0', null);
INSERT INTO `user_role` VALUES ('4', '1', '服务部操作员', '操作员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[],\"basic\":[],\"system\":[]}');
INSERT INTO `user_role` VALUES ('5', '0', '服务部操作员', 'C/S操作员', '0', '0', '{\"task\":[\"/home/task/add_task\",\"/home/task/manage_task\",\"/home/task/task_operate\",\"/home/task/train_data\",\"/home/task/filter_statistics\",\"/home/task/filter_statistics_manage\",\"/home/task/filter_dust_statistics\",\"/home/task/filter_dust_statistics_manage\",\"/home/task/filter_element_statistics\",\"/home/task/filter_element_statistics_manage\",\"/home/task/cooler_maintain_statistics\",\"/home/task/cooler_maintain_statistics_manage\"],\"statistic\":[],\"basic\":[],\"system\":[]}');
INSERT INTO `user_role` VALUES ('13', '1', '保洁', '', null, null, '{\"task\":[],\"statistic\":[],\"basic\":[],\"system\":[]}');
INSERT INTO `user_role` VALUES ('14', '1', '劳务工', '', null, null, '{\"task\":[],\"statistic\":[],\"basic\":[],\"system\":[]}');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='工作班组\r\n跟作业计划关联';

-- ----------------------------
-- Records of work_group
-- ----------------------------
INSERT INTO `work_group` VALUES ('10', '00100101', '质检', '001001', '');
INSERT INTO `work_group` VALUES ('11', '00100102', '检一', '001001', '');
INSERT INTO `work_group` VALUES ('13', '00100104', '检二', '001001', '朱建平');
INSERT INTO `work_group` VALUES ('14', '00100105', '洗车', '001001', '');
INSERT INTO `work_group` VALUES ('15', '00100106', '保洁', '001001', '');
INSERT INTO `work_group` VALUES ('18', '00100109', '组长', '001001', '');
INSERT INTO `work_group` VALUES ('17', '00100108', '当班经理', '001001', '');

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

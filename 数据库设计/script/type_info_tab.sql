/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:15:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for type_info_tab
-- ----------------------------
DROP TABLE IF EXISTS `type_info_tab`;
CREATE TABLE `type_info_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '类型名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type_info_tab
-- ----------------------------

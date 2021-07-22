/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:15:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_info_tab
-- ----------------------------
DROP TABLE IF EXISTS `user_info_tab`;
CREATE TABLE `user_info_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(36) NOT NULL COMMENT '用户名',
  `email` varchar(36) DEFAULT NULL COMMENT '邮件地址',
  `phone` int(11) DEFAULT NULL COMMENT '手机号码',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `head_portrait_path` text COMMENT '用户头像图片路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info_tab
-- ----------------------------

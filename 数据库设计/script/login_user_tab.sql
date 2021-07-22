/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:15:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for login_user_tab
-- ----------------------------
DROP TABLE IF EXISTS `login_user_tab`;
CREATE TABLE `login_user_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(36) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT 'MD5加密后的密码',
  `salt` varchar(4) DEFAULT NULL COMMENT '加密用的盐值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_user_tab
-- ----------------------------
INSERT INTO `login_user_tab` VALUES ('1', 'zhangs', 'e10adc3949ba59abbe56e057f20f883e', null, '2021-06-15 17:54:58', '2021-06-15 17:55:03', '2021-06-15 17:55:06');

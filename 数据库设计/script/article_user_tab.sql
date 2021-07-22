/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:14:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_user_tab
-- ----------------------------
DROP TABLE IF EXISTS `article_user_tab`;
CREATE TABLE `article_user_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `flag` int(1) DEFAULT NULL COMMENT '收藏/点赞的标志：0 收藏；1点赞',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_user_tab
-- ----------------------------

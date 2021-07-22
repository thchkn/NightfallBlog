/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:14:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment_info_tab
-- ----------------------------
DROP TABLE IF EXISTS `comment_info_tab`;
CREATE TABLE `comment_info_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text NOT NULL COMMENT '评论内容',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级评论id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `reply_user_id` int(11) DEFAULT NULL COMMENT '回复的用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_info_tab
-- ----------------------------

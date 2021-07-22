/*
Navicat MySQL Data Transfer

Source Server         : remote_server
Source Server Version : 50642
Source Host           : 1.15.188.150:3306
Source Database       : nightfall

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-06-21 10:14:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_info_tab
-- ----------------------------
DROP TABLE IF EXISTS `article_info_tab`;
CREATE TABLE `article_info_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `md_content` text COMMENT 'markdown格式文章内容',
  `html_content` text COMMENT 'html格式文章内容',
  `summary` text COMMENT '用于展示的简短内容',
  `author` varchar(36) DEFAULT NULL COMMENT '作者',
  `main_type_id` int(11) NOT NULL COMMENT '文章的主要类型id',
  `state` int(1) NOT NULL COMMENT '文章的状态：0 发布；1 草稿',
  `delete_flag` int(1) NOT NULL COMMENT '删除标志：0 未删除；1 已删除',
  `read_number` int(11) NOT NULL DEFAULT '0' COMMENT '文章阅读量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_info_tab
-- ----------------------------

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

-- ----------------------------
-- Table structure for login_role_tab
-- ----------------------------
DROP TABLE IF EXISTS `login_role_tab`;
CREATE TABLE `login_role_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(15) NOT NULL COMMENT '角色名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_role_tab
-- ----------------------------

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

-- ----------------------------
-- Table structure for tag_info_tab
-- ----------------------------
DROP TABLE IF EXISTS `tag_info_tab`;
CREATE TABLE `tag_info_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '标签名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_info_tab
-- ----------------------------

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
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

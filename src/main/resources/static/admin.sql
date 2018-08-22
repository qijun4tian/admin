/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : oauth

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 22/08/2018 10:32:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES (1, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (2, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (4, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (5, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (6, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (7, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (8, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (9, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (10, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (11, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (12, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (13, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (14, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (15, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (16, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (17, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (18, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (19, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (20, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (21, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (22, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (23, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (24, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (25, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (26, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (27, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (28, '测试1', '大大是飞洒地方', '2018-08-21 16:19:01');
INSERT INTO `demo` VALUES (29, 'cs2', 'sdsafdsf', '2018-08-21 16:19:10');
INSERT INTO `demo` VALUES (30, 'csadfcds', 'dcsfrds', '2018-08-21 16:19:16');
INSERT INTO `demo` VALUES (32, 'zy', 'fdssf', '2018-08-15 17:09:46');
INSERT INTO `demo` VALUES (33, 'dsf', 'fdsg', '2018-08-16 17:09:54');
INSERT INTO `demo` VALUES (34, 'zy1', 'fdsfd', '2018-08-12 17:10:05');
INSERT INTO `demo` VALUES (38, '哈咯1', '比比比2', '2018-08-21 18:12:38');

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities`  (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `authority_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称',
  `authority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权标识',
  `menu_url` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `parent_id` int(11) NOT NULL DEFAULT -1 COMMENT '父id',
  `is_menu` int(1) NOT NULL DEFAULT 0 COMMENT '0菜单，1按钮',
  `order_number` int(3) NOT NULL DEFAULT 0 COMMENT '排序号',
  `menu_icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`authority_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
INSERT INTO `sys_authorities` VALUES (1, '系统管理', NULL, NULL, -1, 0, 1, 'layui-icon-set', '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (2, '用户管理', NULL, '/system/user', 1, 0, 2, NULL, '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (3, '查询用户', 'user:view', '', 2, 1, 3, '', '2018-07-21 13:54:16', '2018-07-21 13:54:16');
INSERT INTO `sys_authorities` VALUES (4, '添加用户', 'user:add', NULL, 2, 1, 4, NULL, '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (5, '修改用户', 'user:edit', NULL, 2, 1, 5, NULL, '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (6, '删除用户', 'user:delete', NULL, 2, 1, 6, NULL, '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (7, '角色管理', NULL, '/system/role', 1, 0, 7, NULL, '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (8, '查询角色', 'role:view', '', 7, 1, 8, '', '2018-07-21 13:54:59', '2018-07-21 13:54:58');
INSERT INTO `sys_authorities` VALUES (9, '添加角色', 'role:add', '', 7, 1, 9, '', '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (10, '修改角色', 'role:edit', '', 7, 1, 10, '', '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (11, '删除角色', 'role:delete', '', 7, 1, 11, '', '2018-06-29 11:05:41', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (12, '角色权限管理', 'role:auth', '', 7, 1, 12, '', '2018-06-29 11:05:41', '2018-07-13 15:27:18');
INSERT INTO `sys_authorities` VALUES (13, '权限管理', NULL, '/system/authorities', 1, 0, 13, NULL, '2018-06-29 11:05:41', '2018-07-13 15:45:13');
INSERT INTO `sys_authorities` VALUES (14, '查询权限', 'authorities:view', '', 13, 1, 14, '', '2018-07-21 13:55:57', '2018-07-21 13:55:56');
INSERT INTO `sys_authorities` VALUES (15, '添加权限', 'authorities:add', '', 13, 1, 15, '', '2018-06-29 11:05:41', '2018-06-29 11:05:41');
INSERT INTO `sys_authorities` VALUES (16, '修改权限', 'authorities:edit', '', 13, 1, 16, '', '2018-07-13 09:13:42', '2018-07-13 09:13:42');
INSERT INTO `sys_authorities` VALUES (17, '删除权限', 'authorities:delete', '', 13, 1, 17, '', '2018-06-29 11:05:41', '2018-06-29 11:05:41');
INSERT INTO `sys_authorities` VALUES (18, '登录日志', NULL, '/system/loginRecord', 1, 0, 18, NULL, '2018-06-29 11:05:41', '2018-06-29 11:05:41');
INSERT INTO `sys_authorities` VALUES (19, '查询登录日志', 'loginRecord:view', '', 18, 1, 19, '', '2018-07-21 13:56:43', '2018-07-21 13:56:43');
INSERT INTO `sys_authorities` VALUES (20, '测试', 'test:test', ' ', 1, 0, 1, NULL, '2018-08-20 15:43:02', '2018-08-20 15:43:02');
INSERT INTO `sys_authorities` VALUES (21, '测试列表', 'test:list', '/test', 20, 0, 0, NULL, '2018-08-20 15:44:06', '2018-08-20 15:44:05');
INSERT INTO `sys_authorities` VALUES (24, '测试列表1', 'test:list1', NULL, 20, 0, 1, NULL, '2018-08-20 16:21:17', '2018-08-20 16:21:16');
INSERT INTO `sys_authorities` VALUES (25, '测试列表2', 'test:list2', NULL, 20, 0, 2, NULL, '2018-08-20 16:21:42', '2018-08-20 16:21:42');
INSERT INTO `sys_authorities` VALUES (26, '查询', 'test:view', NULL, 21, 1, 0, NULL, '2018-08-21 18:20:35', '2018-08-21 18:20:35');
INSERT INTO `sys_authorities` VALUES (27, '添加', 'test:add', NULL, 21, 1, 1, NULL, '2018-08-21 18:21:12', '2018-08-21 18:21:12');
INSERT INTO `sys_authorities` VALUES (28, '修改', 'test:edit', NULL, 21, 1, 2, NULL, '2018-08-21 18:21:50', '2018-08-21 18:21:49');
INSERT INTO `sys_authorities` VALUES (29, '删除', 'test:delete', NULL, 21, 1, 3, NULL, '2018-08-21 18:22:16', '2018-08-21 18:22:16');

-- ----------------------------
-- Table structure for sys_login_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_record`;
CREATE TABLE `sys_login_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `os_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `device` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备名',
  `browser_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `ip_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `create_time` datetime(0) NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sys_login_record_user`(`user_id`) USING BTREE,
  CONSTRAINT `sys_login_record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_record
-- ----------------------------
INSERT INTO `sys_login_record` VALUES (1, 2, 'Windows 10', 'Windows 10', 'Chrome', '192.168.2.145', '2018-02-14 20:38:08');
INSERT INTO `sys_login_record` VALUES (2, 2, 'Android Mobile', 'MI 6', 'Chrome Mobile', '220.249.67.55', '2018-02-18 09:29:51');
INSERT INTO `sys_login_record` VALUES (3, 2, 'Windows 7', 'Windows 7', 'Chrome', '14.155.89.210', '2018-02-22 13:42:23');
INSERT INTO `sys_login_record` VALUES (4, 2, 'Windows 7', 'Windows 7', 'Chrome', '14.155.89.210', '2018-02-22 13:44:58');
INSERT INTO `sys_login_record` VALUES (5, 2, 'Windows 10', 'Windows 10', 'Firefox', '223.64.149.65', '2018-02-22 23:17:06');
INSERT INTO `sys_login_record` VALUES (6, 2, 'Android Mobile', 'MI 6', 'Chrome Mobile', '192.168.1.153', '2018-02-23 12:37:24');
INSERT INTO `sys_login_record` VALUES (7, 2, 'Android Mobile', 'MI 6', 'Chrome Mobile', '192.168.1.153', '2018-02-23 12:37:49');
INSERT INTO `sys_login_record` VALUES (8, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:34:50');
INSERT INTO `sys_login_record` VALUES (9, 2, 'Windows 7', 'Windows 7', 'Chrome 63', '192.168.0.108', '2018-08-21 15:35:24');
INSERT INTO `sys_login_record` VALUES (10, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:36:08');
INSERT INTO `sys_login_record` VALUES (11, 2, 'Windows 7', 'Windows 7', 'Chrome 63', '192.168.0.108', '2018-08-21 15:36:25');
INSERT INTO `sys_login_record` VALUES (12, 2, 'Android 7.x', 'SM-G9550', 'Chrome Mobile', '192.168.0.121', '2018-08-21 15:37:41');
INSERT INTO `sys_login_record` VALUES (13, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:38:18');
INSERT INTO `sys_login_record` VALUES (14, 4, 'Android 7.x', 'SM-G9550', 'Chrome Mobile', '192.168.0.121', '2018-08-21 15:40:46');
INSERT INTO `sys_login_record` VALUES (15, 4, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:43:06');
INSERT INTO `sys_login_record` VALUES (16, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:45:04');
INSERT INTO `sys_login_record` VALUES (17, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:46:20');
INSERT INTO `sys_login_record` VALUES (18, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 15:52:46');
INSERT INTO `sys_login_record` VALUES (19, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 16:14:21');
INSERT INTO `sys_login_record` VALUES (20, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 16:14:51');
INSERT INTO `sys_login_record` VALUES (21, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 16:34:35');
INSERT INTO `sys_login_record` VALUES (22, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 16:45:21');
INSERT INTO `sys_login_record` VALUES (23, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 17:01:35');
INSERT INTO `sys_login_record` VALUES (24, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 17:09:14');
INSERT INTO `sys_login_record` VALUES (25, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 17:35:46');
INSERT INTO `sys_login_record` VALUES (26, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 17:53:08');
INSERT INTO `sys_login_record` VALUES (27, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 17:53:45');
INSERT INTO `sys_login_record` VALUES (28, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:01:11');
INSERT INTO `sys_login_record` VALUES (29, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:05:33');
INSERT INTO `sys_login_record` VALUES (30, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:13:51');
INSERT INTO `sys_login_record` VALUES (31, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:19:20');
INSERT INTO `sys_login_record` VALUES (32, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:25:25');
INSERT INTO `sys_login_record` VALUES (33, 4, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 18:26:18');
INSERT INTO `sys_login_record` VALUES (34, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-21 19:01:31');
INSERT INTO `sys_login_record` VALUES (35, 5, 'Android 7.x', 'SM-G9550', 'Chrome Mobile', '192.168.0.121', '2018-08-21 19:06:24');
INSERT INTO `sys_login_record` VALUES (36, 2, 'Windows 7', 'Windows 7', 'Chrome', '192.168.0.108', '2018-08-22 10:02:11');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `comments` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_delete` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '超级管理员', 0, '2018-07-21 09:58:31', '2018-07-21 11:07:16');
INSERT INTO `sys_role` VALUES (2, '管理员', '系统管理员', 0, '2018-07-21 09:58:35', '2018-07-21 11:07:18');
INSERT INTO `sys_role` VALUES (3, '普通用户', '系统普通用户', 0, '2018-07-21 09:58:39', '2018-07-21 11:07:23');
INSERT INTO `sys_role` VALUES (6, '财务', '财务啊', 0, '2018-08-20 15:19:10', '2018-08-20 15:19:10');

-- ----------------------------
-- Table structure for sys_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authorities`;
CREATE TABLE `sys_role_authorities`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `authority_id` int(11) NOT NULL COMMENT '权限id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sys_role_permission_pm`(`authority_id`) USING BTREE,
  INDEX `FK_sys_role_permission_role`(`role_id`) USING BTREE,
  CONSTRAINT `sys_role_authorities_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_authorities_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `sys_authorities` (`authority_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 287 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_authorities
-- ----------------------------
INSERT INTO `sys_role_authorities` VALUES (227, 1, 1, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (228, 1, 20, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (229, 1, 21, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (230, 1, 26, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (231, 1, 27, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (232, 1, 28, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (233, 1, 29, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (234, 1, 24, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (235, 1, 25, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (236, 1, 2, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (237, 1, 3, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (238, 1, 4, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (239, 1, 5, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (240, 1, 6, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (241, 1, 7, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (242, 1, 8, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (243, 1, 9, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (244, 1, 10, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (245, 1, 11, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (246, 1, 12, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (247, 1, 13, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (248, 1, 14, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (249, 1, 15, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (250, 1, 16, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (251, 1, 17, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (252, 1, 18, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (253, 1, 19, '2018-08-21 18:22:54');
INSERT INTO `sys_role_authorities` VALUES (254, 2, 1, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (255, 2, 20, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (256, 2, 21, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (257, 2, 26, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (258, 2, 27, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (259, 2, 28, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (260, 2, 29, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (261, 2, 24, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (262, 2, 25, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (263, 2, 2, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (264, 2, 3, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (265, 2, 4, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (266, 2, 5, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (267, 2, 6, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (268, 2, 7, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (269, 2, 8, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (270, 2, 9, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (271, 2, 10, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (272, 2, 11, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (273, 2, 12, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (274, 2, 13, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (275, 2, 14, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (276, 2, 15, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (277, 2, 16, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (278, 2, 17, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (279, 2, 18, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (280, 2, 19, '2018-08-21 18:22:58');
INSERT INTO `sys_role_authorities` VALUES (281, 3, 1, '2018-08-21 18:23:13');
INSERT INTO `sys_role_authorities` VALUES (282, 3, 20, '2018-08-21 18:23:13');
INSERT INTO `sys_role_authorities` VALUES (283, 3, 21, '2018-08-21 18:23:13');
INSERT INTO `sys_role_authorities` VALUES (284, 3, 26, '2018-08-21 18:23:13');
INSERT INTO `sys_role_authorities` VALUES (285, 3, 2, '2018-08-21 18:23:13');
INSERT INTO `sys_role_authorities` VALUES (286, 3, 3, '2018-08-21 18:23:13');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nick_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `email_verified` int(11) NULL DEFAULT NULL COMMENT '邮箱是否验证，0未验证，1已验证',
  `person_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '人员id,关联person表',
  `person_type` int(11) NULL DEFAULT NULL COMMENT '人员类型,比如:0学生,1教师',
  `state` int(1) NOT NULL DEFAULT 0 COMMENT '状态，0正常，1冻结',
  `create_time` datetime(0) NOT NULL COMMENT '注册时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_account`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'superadmin', '{bcrypt}$2a$10$eZP2cliAaUwBG30B1OxD1eCLm.pLsbcAENbmXP3eYOJ53IyESnQ5a', '超级管理员1', NULL, '女', '12345678901', NULL, NULL, NULL, NULL, 0, '2018-07-21 10:03:40', '2018-08-20 15:13:01');
INSERT INTO `sys_user` VALUES (2, 'admin', '{bcrypt}$2a$10$USMjYiBSbl046Jf00jWSJetvNXlLEYAlaMQqMDvKncTnSegu4pD.6', '管理员', NULL, '男', '12345678901', NULL, NULL, NULL, NULL, 0, '2018-07-21 10:50:18', '2018-08-20 18:31:44');
INSERT INTO `sys_user` VALUES (3, 'zy', '{bcrypt}$2a$10$qrL6p6FKEitfGQnVRa.PPO.PsOJ4Dj9BSjEXll6fnruqBXABb/51O', '普通用户', NULL, '男', '18682028853', NULL, NULL, NULL, NULL, 0, '2018-08-17 17:04:22', '2018-08-17 17:04:25');
INSERT INTO `sys_user` VALUES (4, 'zy1', '{bcrypt}$2a$10$teSnq/mCoatcUb2nzNDZdu9SYpwGgD/D9PcnyhlKGUriqk1XinW26', '张杨', NULL, '男', '18682028853', NULL, NULL, NULL, NULL, 0, '2018-08-18 14:56:33', '2018-08-21 10:14:31');
INSERT INTO `sys_user` VALUES (5, 'zhangyang', '{bcrypt}$2a$10$RWr.Hfqq2M9R6T3ss9/zEed.sCcATH1ywEGEi6gGwLjxZzU7cT8Qq', 'zhangyang', NULL, '男', '18682028853', NULL, NULL, NULL, NULL, 0, '2018-08-21 19:05:18', '2018-08-21 19:05:18');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_time` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sys_user_role`(`user_id`) USING BTREE,
  INDEX `FK_sys_user_role_role`(`role_id`) USING BTREE,
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 2, 2, '2018-07-19 09:48:33');
INSERT INTO `sys_user_role` VALUES (3, 3, 3, '2018-08-17 17:04:41');
INSERT INTO `sys_user_role` VALUES (7, 1, 1, '2018-08-18 15:44:36');
INSERT INTO `sys_user_role` VALUES (8, 4, 3, '2018-08-20 15:12:29');
INSERT INTO `sys_user_role` VALUES (9, 5, 2, '2018-08-21 19:05:18');

-- ----------------------------
-- Table structure for userconnection
-- ----------------------------
DROP TABLE IF EXISTS `userconnection`;
CREATE TABLE `userconnection`  (
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `providerId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `providerUserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `displayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `profileUrl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imageUrl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `accessToken` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `secret` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `refreshToken` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expireTime` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`userId`, `providerId`, `providerUserId`) USING BTREE,
  UNIQUE INDEX `UserConnectionRank`(`userId`, `providerId`, `rank`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userconnection
-- ----------------------------
INSERT INTO `userconnection` VALUES ('zy', 'github', '30037532', 1, 'AndyZhangdsa', 'https://github.com/AndyZhangdsa', 'https://avatars1.githubusercontent.com/u/30037532?v=4', '81efac07a2607846eb10c79eb2f694e324f7e03b', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

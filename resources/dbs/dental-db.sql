/*
 Navicat Premium Data Transfer

 Source Server         : local_u
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : dental-db

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 29/10/2023 23:18:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单号',
  `customer_id` int UNSIGNED NULL DEFAULT NULL COMMENT '顾客',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `team_id` int UNSIGNED NULL DEFAULT NULL COMMENT '团队id',
  `dept_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门路径',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `real_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '折后金额',
  `paid_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '已支付金额',
  `debt_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '回收上月欠款',
  `refund_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款',
  `link_id` int UNSIGNED NULL DEFAULT NULL COMMENT '关联订单',
  `trade_at` datetime NULL DEFAULT NULL COMMENT '交易日期',
  `trade_type` tinyint NULL DEFAULT NULL COMMENT '交易类型1 成交 2补尾款  3补上月欠款 10退款',
  `dental_count` tinyint NULL DEFAULT NULL COMMENT '颗数',
  `brand` tinyint NULL DEFAULT NULL COMMENT '品牌',
  `implanted_count` tinyint NULL DEFAULT NULL COMMENT '已种颗数',
  `implant` tinyint NULL DEFAULT NULL COMMENT '种植状态：1 未种 2部分 3已种',
  `implant_date` datetime NULL DEFAULT NULL COMMENT '植入日期',
  `doctor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生',
  `pack` tinyint NULL DEFAULT NULL COMMENT '1 普通 2 半口 3 全口',
  `payback_date` datetime NULL DEFAULT NULL COMMENT '预定回款日期',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签',
  `prj_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目',
  `other_prj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其他项目',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int UNSIGNED NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_bill_create_by`(`create_by` ASC) USING BTREE,
  INDEX `idx_bill_update_by`(`update_by` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (1, '20231025113256764792', 1, 2, 1, '/0/1/2', 0.00, 1000.00, 1000.00, 0.00, 0.00, 0, '2023-10-25 22:27:14', 1, 0, 1, 0, 1, NULL, '王院', 1, NULL, '', '', '', '', '2023-10-25 22:27:14', '2023-10-25 22:29:31', 0, 2);
INSERT INTO `bill` VALUES (2, '20231025113341960401', 1, 2, 1, '', 0.00, 1000.00, 1000.00, 0.00, 0.00, 0, '2023-10-25 11:33:42', 1, 1, 1, 1, 3, '2023-10-25 11:33:42', '', 1, NULL, '', '', '', '', '2023-10-25 11:33:42', '2023-10-25 11:33:42', 0, 0);
INSERT INTO `bill` VALUES (3, '20231025113457859242', 1, 2, 1, '/0/1/2', 0.00, 0.00, 10000.00, 0.00, 0.00, 0, '2023-10-25 11:34:58', 1, 0, 1, 0, 1, NULL, '', 2, NULL, '', '', '', '', '2023-10-25 11:34:58', '2023-10-25 22:29:59', 0, 2);
INSERT INTO `bill` VALUES (4, '20231025123301632579', 1, 2, 1, '', 0.00, 35000.00, 10000.00, 0.00, 0.00, 0, '2023-10-24 08:00:00', 0, 6, 0, 6, 3, '2023-10-24 08:00:00', '', 2, NULL, '', '种植', '', '', '2023-10-25 12:33:02', '2023-10-25 13:32:33', 0, 0);
INSERT INTO `bill` VALUES (5, '20231025134021589152', 1, 2, 1, '', 0.00, 10000.00, 10000.00, 0.00, 0.00, 0, '2023-10-24 08:00:00', 2, 0, 0, 0, 1, NULL, '', 1, NULL, '', '', '', '补尾款', '2023-10-25 13:40:22', '2023-10-25 13:40:22', 0, 0);
INSERT INTO `bill` VALUES (6, '20231025150624242326', 2, 2, 1, '', 0.00, 0.00, 10000.00, 0.00, 0.00, 0, '2023-10-24 08:00:00', 2, 0, 0, 0, 1, NULL, '', 1, NULL, '', '', '', '补尾款', '2023-10-25 15:06:24', '2023-10-25 15:06:24', 0, 0);
INSERT INTO `bill` VALUES (7, '20231025152223307412', 3, 5, 1, '', 0.00, 5980.00, 5980.00, 0.00, 0.00, 0, '2023-10-24 08:00:00', 1, 1, 4, 0, 1, NULL, '', 1, NULL, '', '种植', '', '', '2023-10-25 15:22:23', '2023-10-25 15:27:05', 0, 2);
INSERT INTO `bill` VALUES (8, '20231025153053670816', 4, 5, 1, '/0/1/2', 0.00, 12200.00, 11200.00, 0.00, 0.00, 0, '2023-10-22 08:00:00', 1, 2, 3, 0, 1, NULL, '', 1, NULL, '', '种植', '', '', '2023-10-25 15:30:54', '2023-10-25 15:30:54', 2, 0);
INSERT INTO `bill` VALUES (9, '20231026211057191585', 5, 2, 1, '/0/1/2', 0.00, 19200.00, 19200.00, 0.00, 0.00, 0, '2023-10-25 08:00:00', 1, 0, 1, 0, 1, NULL, '', 1, NULL, '', '种植', '', '', '2023-10-26 21:10:57', '2023-10-26 21:10:57', 2, 0);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `py` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名拼音',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `wechat` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信号',
  `gender` tinyint NULL DEFAULT NULL COMMENT '性别',
  `age` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `birthday` bigint NULL DEFAULT NULL COMMENT '生日',
  `source` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `team_id` int UNSIGNED NULL DEFAULT NULL COMMENT '团队id',
  `dept_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门路径',
  `inviter` int UNSIGNED NULL DEFAULT NULL COMMENT '邀请人',
  `inviter_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请人名',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int UNSIGNED NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_customer_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_customer_team_id`(`team_id` ASC) USING BTREE,
  INDEX `idx_customer_create_by`(`create_by` ASC) USING BTREE,
  INDEX `idx_customer_update_by`(`update_by` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '李杏利', NULL, '', '', 0, 0, 0, '', '', '', 2, 1, '', 0, '', '2023-10-25 11:32:57', '2023-10-25 11:32:57', 0, 0);
INSERT INTO `customer` VALUES (2, '傅见英', NULL, '', '', 0, 0, 0, '', '', '', 2, 1, '', 0, '', '2023-10-25 15:06:24', '2023-10-25 15:06:24', 0, 0);
INSERT INTO `customer` VALUES (3, '鲁慧萍', NULL, '', '', 0, 0, 0, '', '', '', 5, 1, '', 0, '', '2023-10-25 15:22:23', '2023-10-25 15:22:23', 0, 0);
INSERT INTO `customer` VALUES (4, '孔友祥', NULL, '', '', 0, 0, 0, '', '', '', 5, 1, '', 0, '', '2023-10-25 15:30:54', '2023-10-25 15:30:54', 2, 0);
INSERT INTO `customer` VALUES (5, '诸红夏', 'zhu-hong-xia', '', '', 0, 0, 0, '', '', '', 2, 1, '/0/1/2', 0, '', '2023-10-26 21:10:57', '2023-10-26 21:10:57', 2, 0);

-- ----------------------------
-- Table structure for event_day_st
-- ----------------------------
DROP TABLE IF EXISTS `event_day_st`;
CREATE TABLE `event_day_st`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `day` date NULL DEFAULT NULL COMMENT '时间',
  `team_id` int UNSIGNED NULL DEFAULT NULL COMMENT '团队id',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `dept_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门路径',
  `new_customer_cnt` int UNSIGNED NULL DEFAULT NULL COMMENT '留存',
  `first_diagnosis` int UNSIGNED NULL DEFAULT NULL COMMENT '初诊',
  `further_diagnosis` int UNSIGNED NULL DEFAULT NULL COMMENT '复诊',
  `deal` int UNSIGNED NULL DEFAULT NULL COMMENT '成交',
  `invitation` int UNSIGNED NULL DEFAULT NULL COMMENT '明日邀约',
  `rest` tinyint NULL DEFAULT NULL COMMENT ' 1上班 2休息',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int UNSIGNED NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_event_day_st_create_by`(`create_by` ASC) USING BTREE,
  INDEX `idx_event_day_st_update_by`(`update_by` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of event_day_st
-- ----------------------------
INSERT INTO `event_day_st` VALUES (1, '2023-10-01', 1, 2, '', 0, 0, 0, 0, 0, 1, '2023-10-03 18:32:55', '2023-10-03 18:32:55', 0, 0);
INSERT INTO `event_day_st` VALUES (2, '2023-10-27', 1, 2, '/0/1/2/', 1, 0, 0, 0, 0, 1, '2023-10-27 20:29:08', '2023-10-27 20:29:08', 2, 0);

-- ----------------------------
-- Table structure for summary_plan_day
-- ----------------------------
DROP TABLE IF EXISTS `summary_plan_day`;
CREATE TABLE `summary_plan_day`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `day` int UNSIGNED NULL DEFAULT NULL COMMENT '天',
  `team_id` int UNSIGNED NULL DEFAULT NULL COMMENT '团队id',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `dept_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门路径',
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '今日总结',
  `plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '明日计划',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int UNSIGNED NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_summary_plan_day_create_by`(`create_by` ASC) USING BTREE,
  INDEX `idx_summary_plan_day_update_by`(`update_by` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of summary_plan_day
-- ----------------------------
INSERT INTO `summary_plan_day` VALUES (1, 20231001, 1, 2, '/0/1/2/', '今日休息，督促组员邀约初诊', '明日有事休息，组内有两个初诊，已安排同事帮忙接待，督促组员邀约初诊以及提高留存数量', '2023-10-03 17:19:57', '2023-10-27 20:22:42', 0, 0);
INSERT INTO `summary_plan_day` VALUES (2, 20231002, 1, 2, '/0/1/2/', '今日休息，督促组员邀约初诊', '上午去场地留存，下午参加市场大会，晚上集体打邀约初诊', '2023-10-03 17:21:29', '2023-10-27 20:24:34', 0, 0);
INSERT INTO `summary_plan_day` VALUES (3, 20231027, 1, 3, '/0/1/2/', '订单到', '订单到', '2023-10-27 20:23:30', '2023-10-27 20:23:30', 0, 0);

-- ----------------------------
-- Table structure for target_task
-- ----------------------------
DROP TABLE IF EXISTS `target_task`;
CREATE TABLE `target_task`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `day_type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '时间类型:月 30,周 7',
  `day` int UNSIGNED NULL DEFAULT NULL COMMENT '时间:202310',
  `team_id` int UNSIGNED NULL DEFAULT NULL COMMENT '团队id',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `dept_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门路径',
  `task_type` int UNSIGNED NULL DEFAULT NULL COMMENT '任务类型 1正式 算人员数量',
  `new_customer_cnt` int UNSIGNED NULL DEFAULT NULL COMMENT '留存任务',
  `first_diagnosis` int UNSIGNED NULL DEFAULT NULL COMMENT '导诊任务',
  `deal` int UNSIGNED NULL DEFAULT NULL COMMENT '成交任务',
  `create_by` int UNSIGNED NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT NULL COMMENT '更新者',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_target_task_create_by`(`create_by` ASC) USING BTREE,
  INDEX `idx_target_task_update_by`(`update_by` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of target_task
-- ----------------------------
INSERT INTO `target_task` VALUES (1, 30, 202310, 1, 2, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:21:04');
INSERT INTO `target_task` VALUES (2, 30, 202310, 1, 3, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:22:14');
INSERT INTO `target_task` VALUES (3, 30, 202310, 1, 4, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:22:17');
INSERT INTO `target_task` VALUES (4, 30, 202310, 1, 5, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:22:20');
INSERT INTO `target_task` VALUES (5, 30, 202310, 1, 6, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:22:24');
INSERT INTO `target_task` VALUES (6, 30, 202310, 1, 7, '/0/1/2/', NULL, 72, 16, 80000, NULL, 2, NULL, '2023-10-27 20:22:27');
INSERT INTO `target_task` VALUES (7, 7, 20231023, 1, 3, '/0/1/2/', 0, 10, 10, 20000, 0, 2, '2023-10-27 20:18:28', '2023-10-27 20:22:30');
INSERT INTO `target_task` VALUES (8, 7, 20231023, 1, 2, '/0/1/2/', 0, 1, 2, 2, 2, 2, '2023-10-27 20:22:03', '2023-10-27 20:26:40');

SET FOREIGN_KEY_CHECKS = 1;

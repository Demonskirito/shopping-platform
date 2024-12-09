/*
 Navicat Premium Data Transfer

 Source Server         : Demonskirito
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : shopping

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 08/12/2024 23:08:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `onlyid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (2, '1-0-1', 'a2', '苹果12', 'https://tvax4.sinaimg.cn/mw690/008FQ8N7ly1hwa4b0m040j30cr0gen01.jpg', '2000元');
INSERT INTO `car` VALUES (3, '1-0-1', '4', '苹果14', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '5000元');
INSERT INTO `car` VALUES (6, '1-0-1', 'a4', '苹果14', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '5000元');
INSERT INTO `car` VALUES (7, '1-0-1', 'a4', '苹果14', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '5000元');
INSERT INTO `car` VALUES (8, '1-0-1', 'a5', '苹果10', 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '3000元');
INSERT INTO `car` VALUES (9, '1-0-1', 'a5', '苹果10', 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '3000元');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `information` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `onlyid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 'be7b0cb3-48b4-4bc2-ae1f-6faae952d918', '2000元', '2024-12-05 15:01:20', '购买 苹果13', '1-0-1', 1);
INSERT INTO `payment` VALUES (2, '2cd0cc0c-d1aa-4188-8153-a0df600f56aa', '5000元', '2024-12-05 15:34:28', '购买 苹果14', '1-0-1', 1);
INSERT INTO `payment` VALUES (3, '36b86dce-af0e-4d2b-ad6a-c599d50ddd0f', '3000元', '2024-12-06 01:55:16', '购买 苹果10', '1-0-1', 0);
INSERT INTO `payment` VALUES (4, '16d4-f9e5-7ecf-5120', '8000.00元', '2024-12-06 14:29:32', '购买了苹果14, 苹果10', '1-0-1', 1);
INSERT INTO `payment` VALUES (5, '1bc73379-8552-44eb-9108-6dccf1809c43', '3000元', '2024-12-07 04:02:55', '购买 苹果10', '1-0-1', 0);

-- ----------------------------
-- Table structure for payment_image
-- ----------------------------
DROP TABLE IF EXISTS `payment_image`;
CREATE TABLE `payment_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_image
-- ----------------------------
INSERT INTO `payment_image` VALUES (4, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '2cd0cc0c-d1aa-4188-8153-a0df600f56aa');
INSERT INTO `payment_image` VALUES (5, 'https://tvax4.sinaimg.cn/mw690/008FQ8N7ly1hwa4b0m040j30cr0gen01.jpg', 'e4f40205-6f87-4648-92a2-6a57f150bc3a');
INSERT INTO `payment_image` VALUES (6, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', 'd75fd940-ce04-498f-8049-007a055db461');
INSERT INTO `payment_image` VALUES (7, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4brozi8j30l40pggxv.jpg', '65e7385a-d624-4832-8825-dc952789471c');
INSERT INTO `payment_image` VALUES (8, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '3d6f559f-4609-418c-81ba-4d73d80231ea');
INSERT INTO `payment_image` VALUES (9, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '19775a3a-4ce5-41cd-903f-92b99ca1ade6');
INSERT INTO `payment_image` VALUES (10, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', 'bf9ff838-ff01-474e-a522-54eb597f9efc');
INSERT INTO `payment_image` VALUES (11, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '36b86dce-af0e-4d2b-ad6a-c599d50ddd0f');
INSERT INTO `payment_image` VALUES (12, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', NULL);
INSERT INTO `payment_image` VALUES (13, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', NULL);
INSERT INTO `payment_image` VALUES (14, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', 'fd02-5530-481c-5bc9');
INSERT INTO `payment_image` VALUES (15, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', 'fd02-5530-481c-5bc9');
INSERT INTO `payment_image` VALUES (16, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', 'bfe3-043e-d809-272d');
INSERT INTO `payment_image` VALUES (17, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', 'f77f-e6a2-c972-0df8');
INSERT INTO `payment_image` VALUES (18, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', 'f77f-e6a2-c972-0df8');
INSERT INTO `payment_image` VALUES (19, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', 'ccc8-728b-3ba3-ca62');
INSERT INTO `payment_image` VALUES (20, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', 'ccc8-728b-3ba3-ca62');
INSERT INTO `payment_image` VALUES (21, 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '16d4-f9e5-7ecf-5120');
INSERT INTO `payment_image` VALUES (22, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '16d4-f9e5-7ecf-5120');
INSERT INTO `payment_image` VALUES (23, 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '1bc73379-8552-44eb-9108-6dccf1809c43');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_number` int NULL DEFAULT NULL,
  `dirid` int NULL DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'a1', 'https://tvax2.sinaimg.cn/mw690/008FQ8N7ly1hwa47jh0jrj30cq0f5whq.jpg', '苹果11', '3000元', '手机详细', 1000, 1);
INSERT INTO `product` VALUES (2, 'a2', 'https://tvax4.sinaimg.cn/mw690/008FQ8N7ly1hwa4b0m040j30cr0gen01.jpg', '苹果12', '2000元', '手机详细', 2000, 1);
INSERT INTO `product` VALUES (3, 'a3', 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4brozi8j30l40pggxv.jpg', '苹果13', '2000元', '手机详细', 1500, 1);
INSERT INTO `product` VALUES (4, 'a4', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4ck2j4bj30f60fswfx.jpg', '苹果14', '5000元', '手机详细', 1000, 1);
INSERT INTO `product` VALUES (5, 'a5', 'https://tvax1.sinaimg.cn/mw690/008FQ8N7ly1hwa4dacskqj30f80kon1o.jpg', '苹果10', '3000元', '手机详细', 1600, 1);
INSERT INTO `product` VALUES (6, 'a6', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4e0vx7nj30jd0mhjxl.jpg', '苹果15', '4000元', '手机详细', 1500, 1);
INSERT INTO `product` VALUES (7, 'a7', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4erc86yj30lx0pkafx.jpg', 'OPPOA1', '2000元', '手机详细', 1800, 1);
INSERT INTO `product` VALUES (8, 'a8', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hwa4fo20tkj30kl0nb46a.jpg', '华为A3', '3000元', '手机详细', 1600, 1);
INSERT INTO `product` VALUES (9, 'a9', 'https://tvax4.sinaimg.cn/mw690/008FQ8N7ly1hwa4hg77m2j30fd0jc783.jpg', '苹果13', '2500元', '手机详细', 1700, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `mobile` bigint NULL DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `portrait` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `onlyid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '唯一id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 13866352913, 'demons', 'https://tvax3.sinaimg.cn/mw690/008FQ8N7ly1hw9xxyatzhj31z41404qp.jpg', '20050101', '1-0-1');

SET FOREIGN_KEY_CHECKS = 1;

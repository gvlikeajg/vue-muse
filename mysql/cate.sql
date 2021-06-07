/*
 Navicat Premium Data Transfer

 Source Server         : data
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : cate

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 25/05/2021 19:54:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, 'https://img95.699pic.com/photo/50140/6207.jpg_wh300.jpg');
INSERT INTO `carousel` VALUES (2, 'https://img95.699pic.com/photo/50134/5023.jpg_wh300.jpg');
INSERT INTO `carousel` VALUES (3, 'https://img95.699pic.com/photo/50082/6444.jpg_wh300.jpg');
INSERT INTO `carousel` VALUES (4, 'https://img95.699pic.com/photo/50044/9286.jpg_wh300.jpg');

-- ----------------------------
-- Table structure for caterecommend
-- ----------------------------
DROP TABLE IF EXISTS `caterecommend`;
CREATE TABLE `caterecommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caterecommend
-- ----------------------------
INSERT INTO `caterecommend` VALUES (1, '杰米田园', '荤素搭配 营养翻倍', '五花肉、豆角', 'https://st-cn.meishij.net/r/121/15/3441371/s3441371_162088411988581.jpg', 0);
INSERT INTO `caterecommend` VALUES (2, '浅夏.', '椰汁青瓜柠檬饮', '青瓜、椰子汁', 'https://st-cn.meishij.net/r/121/248/2562121/s2562121_162087774367113.jpg', 1);
INSERT INTO `caterecommend` VALUES (3, '浅夏.', '玫瑰花枸杞茶', '玫瑰花、枸杞、冰糖', 'https://st-cn.meishij.net/r/121/248/2562121/s2562121_162087625410817.jpg', 2);
INSERT INTO `caterecommend` VALUES (4, '杰米3428382857', '韩式烤肉', '羊肉、鱼丸、辣白菜、苏子叶', 'https://st-cn.meishij.net/r/196/70/14955196/s14955196_162086717170066.jpg', 3);
INSERT INTO `caterecommend` VALUES (5, '云朵上的蓝格格zdm', '西蓝花炒鸡丁', '胡萝卜、鸡胸肉', 'https://st-cn.meishij.net/r/223/82/8333223/s8333223_162086359758361.jpg', 4);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (2, '理想', '韩式烤肉', 'https://st-cn.meishij.net/r/196/70/14955196/s14955196_162086717170066.jpg');
INSERT INTO `collect` VALUES (5, '理想', '\n                                   红烧排骨                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154086590124836.jpg');
INSERT INTO `collect` VALUES (6, '理想', '\n                                   家常酸菜鱼                                ', 'http://st-cn.meishij.net/r/226/161/9040476/a9040476_148136605973695.jpg');
INSERT INTO `collect` VALUES (7, '理想', '\n                                   开胃酸菜鱼 ,鱼香肉丝                               ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_161553856069058.jpg');
INSERT INTO `collect` VALUES (8, '理想', '\n                                   无油版可乐鸡翅                                ', 'http://st-cn.meishij.net/r/117/242/1123117/a1123117_71437.jpg');
INSERT INTO `collect` VALUES (9, '理想', '\n                                   喜欢的味道--番茄糖醋豆腐                                ', 'http://st-cn.meishij.net/r/239/15/2378989/a2378989_151306363520298.jpg');
INSERT INTO `collect` VALUES (10, '凡凡', '\n                                   家常菜之十八                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155318187522429.jpg');
INSERT INTO `collect` VALUES (11, '凡凡', '\n                                   家常菜之十八                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155318187522429.jpg');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, '旺旺', '123456', 'https://img2.baidu.com/it/u=2306696130,3636777462&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `login` VALUES (2, '李四', '123456', 'https://img1.baidu.com/it/u=3905966094,2907968810&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `login` VALUES (7, '理想', '123456', NULL);
INSERT INTO `login` VALUES (8, '凡凡', '123456', NULL);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('快手菜', 'https://www.meishij.net/fenlei/kuaishoucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_1.png', '1', '0');
INSERT INTO `menu` VALUES ('下饭菜', 'https://www.meishij.net/fenlei/xiafancai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_2.png', '2', '0');
INSERT INTO `menu` VALUES ('应季时蔬', 'https://www.meishij.net/fenlei/yingjishishu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_3.png', '3', '0');
INSERT INTO `menu` VALUES ('素食', 'https://www.meishij.net/fenlei/sushi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_4.png', '4', '0');
INSERT INTO `menu` VALUES ('肉食', 'https://www.meishij.net/fenlei/roushi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_5.png', '5', '0');
INSERT INTO `menu` VALUES ('汤', 'https://www.meishij.net/fenlei/tang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_shiyongfenlei_6.png', '6', '0');
INSERT INTO `menu` VALUES ('家常菜', 'https://www.meishij.net/fenlei/jiachangcai/', 'https://cs-cn.meishij.net/zt/images/fenlei_xihongshichaojidan1.png', '7', '0');
INSERT INTO `menu` VALUES ('早餐', 'https://www.meishij.net/fenlei/zaocan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_sancan_1.png', '8', '1');
INSERT INTO `menu` VALUES ('午餐', 'https://www.meishij.net/fenlei/wucan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_sancan_2.png', '9', '1');
INSERT INTO `menu` VALUES ('下午茶', 'https://www.meishij.net/fenlei/xiawucha/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_sancan_3.png', '10', '1');
INSERT INTO `menu` VALUES ('晚餐', 'https://www.meishij.net/fenlei/wancan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_sancan_4.png', '11', '1');
INSERT INTO `menu` VALUES ('夜宵', 'https://www.meishij.net/fenlei/yexiao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_sancan_5.png', '12', '1');
INSERT INTO `menu` VALUES ('炒饭', 'https://www.meishij.net/fenlei/chaofan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_1.png', '13', '2');
INSERT INTO `menu` VALUES ('焖饭', 'https://www.meishij.net/fenlei/menfan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_2.png', '14', '2');
INSERT INTO `menu` VALUES ('烩饭', 'https://www.meishij.net/fenlei/huifan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_3.png', '15', '2');
INSERT INTO `menu` VALUES ('饭', 'https://www.meishij.net/fenlei/fan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_4.png', '16', '2');
INSERT INTO `menu` VALUES ('方便面', 'https://www.meishij.net/fenlei/fangbianmian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_5.png', '17', '2');
INSERT INTO `menu` VALUES ('焖面', 'https://www.meishij.net/fenlei/menmian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_6.png', '18', '2');
INSERT INTO `menu` VALUES ('拌面', 'https://www.meishij.net/fenlei/banmian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_7.png', '19', '2');
INSERT INTO `menu` VALUES ('面', 'https://www.meishij.net/fenlei/mian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_8.png', '20', '2');
INSERT INTO `menu` VALUES ('饼', 'https://www.meishij.net/fenlei/bing/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_9.png', '21', '2');
INSERT INTO `menu` VALUES ('包子', 'https://www.meishij.net/fenlei/baozi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_10.png', '22', '2');
INSERT INTO `menu` VALUES ('饺子', 'https://www.meishij.net/fenlei/jiaozi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_11.png', '23', '2');
INSERT INTO `menu` VALUES ('馄饨', 'https://www.meishij.net/fenlei/hundun/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_12.png', '24', '2');
INSERT INTO `menu` VALUES ('粥', 'https://www.meishij.net/fenlei/zhou/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhushi_13.png', '25', '2');
INSERT INTO `menu` VALUES ('热菜', 'https://www.meishij.net/fenlei/recai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_1.png', '26', '3');
INSERT INTO `menu` VALUES ('凉菜', 'https://www.meishij.net/fenlei/liangcai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_2.png', '27', '3');
INSERT INTO `menu` VALUES ('素菜', 'https://www.meishij.net/fenlei/sucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_3.png', '28', '3');
INSERT INTO `menu` VALUES ('靓汤', 'https://www.meishij.net/fenlei/liangtang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_4.png', '29', '3');
INSERT INTO `menu` VALUES ('粥品', 'https://www.meishij.net/fenlei/zhoupin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_5.png', '30', '3');
INSERT INTO `menu` VALUES ('主食', 'https://www.meishij.net/fenlei/zhushi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_6.png', '31', '3');
INSERT INTO `menu` VALUES ('点心', 'https://www.meishij.net/fenlei/dianxin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_7.png', '32', '3');
INSERT INTO `menu` VALUES ('卤味', 'https://www.meishij.net/fenlei/luwei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_8.png', '33', '3');
INSERT INTO `menu` VALUES ('微波炉', 'https://www.meishij.net/fenlei/weibolu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_9.png', '34', '3');
INSERT INTO `menu` VALUES ('海鲜', 'https://www.meishij.net/fenlei/haixian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_10.png', '35', '3');
INSERT INTO `menu` VALUES ('火锅', 'https://www.meishij.net/fenlei/huoguo/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_11.png', '36', '3');
INSERT INTO `menu` VALUES ('酱料蘸料', 'https://www.meishij.net/fenlei/jiangliaozhanliao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_12.png', '37', '3');
INSERT INTO `menu` VALUES ('干果零食', 'https://www.meishij.net/fenlei/ganguolingshi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_13.png', '38', '3');
INSERT INTO `menu` VALUES ('饮品', 'https://www.meishij.net/fenlei/yinpin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_14.png', '39', '3');
INSERT INTO `menu` VALUES ('孕妇', 'https://www.meishij.net/jiankang/yunfu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_15.png', '40', '3');
INSERT INTO `menu` VALUES ('产妇', 'https://www.meishij.net/jiankang/chanfu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_16.png', '41', '3');
INSERT INTO `menu` VALUES ('宝宝', 'https://www.meishij.net/jiankang/youer/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_17.png', '42', '3');
INSERT INTO `menu` VALUES ('老人', 'https://www.meishij.net/jiankang/laoren/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_18.png', '43', '3');
INSERT INTO `menu` VALUES ('美容', 'https://www.meishij.net/jiankang/meirong/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_19.png', '44', '3');
INSERT INTO `menu` VALUES ('瘦身', 'https://www.meishij.net/jiankang/jianfei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_jiachangcaipu_20.png', '45', '3');
INSERT INTO `menu` VALUES ('山西菜', 'https://www.meishij.net/caixi/shanxicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_1.png', '46', '4');
INSERT INTO `menu` VALUES ('江西菜', 'https://www.meishij.net/caixi/jiangxicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_2.png', '47', '4');
INSERT INTO `menu` VALUES ('川菜', 'https://www.meishij.net/caixi/chuancai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_3.png', '48', '4');
INSERT INTO `menu` VALUES ('鲁菜', 'https://www.meishij.net/caixi/lucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_4.png', '49', '4');
INSERT INTO `menu` VALUES ('粤菜', 'https://www.meishij.net/caixi/yuecai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_5.png', '50', '4');
INSERT INTO `menu` VALUES ('湘菜', 'https://www.meishij.net/caixi/xiangcai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_6.png', '51', '4');
INSERT INTO `menu` VALUES ('闽菜', 'https://www.meishij.net/caixi/mincai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_7.png', '52', '4');
INSERT INTO `menu` VALUES ('浙菜', 'https://www.meishij.net/caixi/zhecai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_8.png', '53', '4');
INSERT INTO `menu` VALUES ('苏菜', 'https://www.meishij.net/caixi/sucai1/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_9.png', '54', '4');
INSERT INTO `menu` VALUES ('徽菜', 'https://www.meishij.net/caixi/huicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_10.png', '55', '4');
INSERT INTO `menu` VALUES ('京菜', 'https://www.meishij.net/caixi/jingcai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_11.png', '56', '4');
INSERT INTO `menu` VALUES ('沪菜', 'https://www.meishij.net/caixi/hucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_12.png', '57', '4');
INSERT INTO `menu` VALUES ('豫菜', 'https://www.meishij.net/caixi/yucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_13.png', '58', '4');
INSERT INTO `menu` VALUES ('湖北菜', 'https://www.meishij.net/caixi/hubeicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_14.png', '59', '4');
INSERT INTO `menu` VALUES ('东北菜', 'https://www.meishij.net/caixi/dongbeicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_15.png', '60', '4');
INSERT INTO `menu` VALUES ('西北菜', 'https://www.meishij.net/caixi/xibeicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_16.png', '61', '4');
INSERT INTO `menu` VALUES ('云贵菜', 'https://www.meishij.net/caixi/yunguicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_17.png', '62', '4');
INSERT INTO `menu` VALUES ('清真菜', 'https://www.meishij.net/caixi/qingzhencai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_18.png', '63', '4');
INSERT INTO `menu` VALUES ('广西菜', 'https://www.meishij.net/caixi/guangxicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_19.png', '64', '4');
INSERT INTO `menu` VALUES ('港台菜', 'https://www.meishij.net/caixi/gangtaicai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_20.png', '65', '4');
INSERT INTO `menu` VALUES ('其它菜', 'https://www.meishij.net/caixi/qitacai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zhonghuacaixi_21.png', '66', '4');
INSERT INTO `menu` VALUES ('云南菜', 'https://www.meishij.net/caixi/yunnancai/', 'https://cs-cn.meishij.net/zt/images/fenlei_yunnan.png', '67', '4');
INSERT INTO `menu` VALUES ('贵州菜', 'https://www.meishij.net/caixi/guizhoucai/', 'https://cs-cn.meishij.net/zt/images/fenlei_guizhou.png', '68', '4');
INSERT INTO `menu` VALUES ('淮扬菜', 'https://www.meishij.net/caixi/huaiyangcai/', 'https://cs-cn.meishij.net/zt/images/fenlei_huaiyang.png', '69', '4');
INSERT INTO `menu` VALUES ('北京小吃', 'https://www.meishij.net/xiaochi/beijingxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_1.png', '70', '5');
INSERT INTO `menu` VALUES ('天津小吃', 'https://www.meishij.net/xiaochi/tianjinxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_2.png', '71', '5');
INSERT INTO `menu` VALUES ('河北小吃', 'https://www.meishij.net/xiaochi/hebeixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_3.png', '72', '5');
INSERT INTO `menu` VALUES ('山西小吃', 'https://www.meishij.net/xiaochi/shanxixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_4.png', '73', '5');
INSERT INTO `menu` VALUES ('蒙古小吃', 'https://www.meishij.net/xiaochi/mengguxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_5.png', '74', '5');
INSERT INTO `menu` VALUES ('上海小吃', 'https://www.meishij.net/xiaochi/shanghaixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_6.png', '75', '5');
INSERT INTO `menu` VALUES ('山东小吃', 'https://www.meishij.net/xiaochi/shandongxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_7.png', '76', '5');
INSERT INTO `menu` VALUES ('江苏小吃', 'https://www.meishij.net/xiaochi/jiangsuxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_8.png', '77', '5');
INSERT INTO `menu` VALUES ('浙江小吃', 'https://www.meishij.net/xiaochi/zhejiangxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_9.png', '78', '5');
INSERT INTO `menu` VALUES ('安徽小吃', 'https://www.meishij.net/xiaochi/anhuixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_10.png', '79', '5');
INSERT INTO `menu` VALUES ('成都小吃', 'https://www.meishij.net/xiaochi/chengduxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_11.png', '80', '5');
INSERT INTO `menu` VALUES ('吉林小吃', 'https://www.meishij.net/xiaochi/jilinxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_12.png', '81', '5');
INSERT INTO `menu` VALUES ('辽宁小吃', 'https://www.meishij.net/xiaochi/liaoningxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_13.png', '82', '5');
INSERT INTO `menu` VALUES ('陕西小吃', 'https://www.meishij.net/xiaochi/shanxixiaochi1/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_14.png', '83', '5');
INSERT INTO `menu` VALUES ('新疆小吃', 'https://www.meishij.net/xiaochi/xinjiangxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_15.png', '84', '5');
INSERT INTO `menu` VALUES ('宁夏小吃', 'https://www.meishij.net/xiaochi/ningxiaxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_16.png', '85', '5');
INSERT INTO `menu` VALUES ('甘肃小吃', 'https://www.meishij.net/xiaochi/gansuxaiochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_17.png', '86', '5');
INSERT INTO `menu` VALUES ('青海小吃', 'https://www.meishij.net/xiaochi/qinghaixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_18.png', '87', '5');
INSERT INTO `menu` VALUES ('湖北小吃', 'https://www.meishij.net/xiaochi/hubeixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_19.png', '88', '5');
INSERT INTO `menu` VALUES ('湖南小吃', 'https://www.meishij.net/xiaochi/hunanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_20.png', '89', '5');
INSERT INTO `menu` VALUES ('河南小吃', 'https://www.meishij.net/xiaochi/henanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_21.png', '90', '5');
INSERT INTO `menu` VALUES ('江西小吃', 'https://www.meishij.net/xiaochi/jiangxixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_22.png', '91', '5');
INSERT INTO `menu` VALUES ('重庆小吃', 'https://www.meishij.net/xiaochi/chongqingxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_23.png', '92', '5');
INSERT INTO `menu` VALUES ('四川小吃', 'https://www.meishij.net/xiaochi/sichuanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_24.png', '93', '5');
INSERT INTO `menu` VALUES ('云南小吃', 'https://www.meishij.net/xiaochi/yunnanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_25.png', '94', '5');
INSERT INTO `menu` VALUES ('贵州小吃', 'https://www.meishij.net/xiaochi/guizhouxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_26.png', '95', '5');
INSERT INTO `menu` VALUES ('西藏小吃', 'https://www.meishij.net/xiaochi/xizangxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_27.png', '96', '5');
INSERT INTO `menu` VALUES ('广东小吃', 'https://www.meishij.net/xiaochi/guangdongxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_28.png', '97', '5');
INSERT INTO `menu` VALUES ('福建小吃', 'https://www.meishij.net/xiaochi/fujianxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_29.png', '98', '5');
INSERT INTO `menu` VALUES ('广西小吃', 'https://www.meishij.net/xiaochi/guangxixiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_30.png', '99', '5');
INSERT INTO `menu` VALUES ('海南小吃', 'https://www.meishij.net/xiaochi/hainanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_31.png', '100', '5');
INSERT INTO `menu` VALUES ('香港小吃', 'https://www.meishij.net/xiaochi/xianggangxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_32.png', '101', '5');
INSERT INTO `menu` VALUES ('台湾小吃', 'https://www.meishij.net/xiaochi/taiwanxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_33.png', '102', '5');
INSERT INTO `menu` VALUES ('特色小吃', 'https://www.meishij.net/xiaochi/tesexiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_34.png', '103', '5');
INSERT INTO `menu` VALUES ('黑龙江小吃', 'https://www.meishij.net/xiaochi/heilongjiangxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_gedixiaochi_35.png', '104', '5');
INSERT INTO `menu` VALUES ('日本料理', 'https://www.meishij.net/fenlei/ribenliaoli/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_1.png', '105', '6');
INSERT INTO `menu` VALUES ('韩国料理', 'https://www.meishij.net/fenlei/hanguoliaoli/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_2.png', '106', '6');
INSERT INTO `menu` VALUES ('美国家常菜', 'https://www.meishij.net/fenlei/meiguojiachangcai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_3.png', '107', '6');
INSERT INTO `menu` VALUES ('意大利餐', 'https://www.meishij.net/fenlei/yidalican/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_4.png', '108', '6');
INSERT INTO `menu` VALUES ('法国菜', 'https://www.meishij.net/fenlei/faguocai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_5.png', '109', '6');
INSERT INTO `menu` VALUES ('墨西哥菜', 'https://www.meishij.net/fenlei/moxigecai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_6.png', '110', '6');
INSERT INTO `menu` VALUES ('澳大利亚菜', 'https://www.meishij.net/fenlei/aodaliyacai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_7.png', '111', '6');
INSERT INTO `menu` VALUES ('东南亚菜', 'https://www.meishij.net/fenlei/dongnanyacai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_8.png', '112', '6');
INSERT INTO `menu` VALUES ('西餐面点', 'https://www.meishij.net/fenlei/xicanmiandian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_9.png', '113', '6');
INSERT INTO `menu` VALUES ('餐前小吃', 'https://www.meishij.net/fenlei/canqianxiaochi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_10.png', '114', '6');
INSERT INTO `menu` VALUES ('汤品', 'https://www.meishij.net/fenlei/tangpin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_11.png', '115', '6');
INSERT INTO `menu` VALUES ('主菜', 'https://www.meishij.net/fenlei/zhucai/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_12.png', '116', '6');
INSERT INTO `menu` VALUES ('主食', 'https://www.meishij.net/fenlei/zhushi1/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_13.png', '117', '6');
INSERT INTO `menu` VALUES ('甜点', 'https://www.meishij.net/fenlei/tiandain/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_14.png', '118', '6');
INSERT INTO `menu` VALUES ('饮品', 'https://www.meishij.net/fenlei/yinpin1/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_15.png', '119', '6');
INSERT INTO `menu` VALUES ('其他国家', 'https://www.meishij.net/fenlei/qitaguojia/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_waiguocaipu_16.png', '120', '6');
INSERT INTO `menu` VALUES ('蛋糕面包', 'https://www.meishij.net/fenlei/dangaomianbao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_1.png', '121', '7');
INSERT INTO `menu` VALUES ('饼干配方', 'https://www.meishij.net/fenlei/bingganpeifang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_2.png', '122', '7');
INSERT INTO `menu` VALUES ('甜品点心', 'https://www.meishij.net/fenlei/tianpindianxin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_3.png', '123', '7');
INSERT INTO `menu` VALUES ('蛋糕', 'https://www.meishij.net/fenlei/dangao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_4.png', '124', '7');
INSERT INTO `menu` VALUES ('面包', 'https://www.meishij.net/fenlei/mianbao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_5.png', '125', '7');
INSERT INTO `menu` VALUES ('翻糖', 'https://www.meishij.net/fenlei/fantang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_hongbei_6.png', '126', '7');
INSERT INTO `menu` VALUES ('烘焙常识', 'https://www.meishij.net/fenlei/hongbeichangshi/', 'https://cs-cn.meishij.net/zt/images/fenlei_hongpeichangshi.png', '127', '7');
INSERT INTO `menu` VALUES ('烘焙工具', 'https://www.meishij.net/fenlei/hongbeigongju/', 'https://cs-cn.meishij.net/zt/images/fenlei_hongpeigongju.png', '128', '7');
INSERT INTO `menu` VALUES ('烘焙原料', 'https://www.meishij.net/fenlei/hongbeiyuanliao/', 'https://cs-cn.meishij.net/zt/images/fenlei_hongpeiyuanliao.png', '129', '7');
INSERT INTO `menu` VALUES ('男人', 'https://www.meishij.net/jiankang/nanren/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_nanren1.png', '130', '8');
INSERT INTO `menu` VALUES ('更年期', 'https://www.meishij.net/jiankang/gengnianqi/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_gengnianqi1.png', '131', '8');
INSERT INTO `menu` VALUES ('孕妇', 'https://www.meishij.net/jiankang/yunfu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_1.png', '132', '8');
INSERT INTO `menu` VALUES ('婴儿', 'https://www.meishij.net/jiankang/yinger/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_5.png', '133', '8');
INSERT INTO `menu` VALUES ('女性', 'https://www.meishij.net/jiankang/nvxing/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_nvxing1.png', '134', '8');
INSERT INTO `menu` VALUES ('儿童', 'https://www.meishij.net/jiankang/ertong/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_ertong2.png', '135', '8');
INSERT INTO `menu` VALUES ('幼儿', 'https://www.meishij.net/jiankang/youer/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_3.png', '136', '8');
INSERT INTO `menu` VALUES ('老人', 'https://www.meishij.net/jiankang/laoren/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_6.png', '137', '8');
INSERT INTO `menu` VALUES ('产妇', 'https://www.meishij.net/jiankang/chanfu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_2.png', '138', '8');
INSERT INTO `menu` VALUES ('白领', 'https://www.meishij.net/jiankang/bailing/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_bailing1.png', '139', '8');
INSERT INTO `menu` VALUES ('青少年', 'https://www.meishij.net/jiankang/qingshaonian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_7.png', '140', '8');
INSERT INTO `menu` VALUES ('运动员', 'https://www.meishij.net/jiankang/yundongyuan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_8.png', '141', '8');
INSERT INTO `menu` VALUES ('学龄前儿童', 'https://www.meishij.net/jiankang/xuelingqianertong/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_10.png', '142', '8');
INSERT INTO `menu` VALUES ('考生', 'https://www.meishij.net/jiankang/kaosheng/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_kaosheng1.png', '143', '8');
INSERT INTO `menu` VALUES ('小白', 'https://www.meishij.net/jiankang/xiaobai/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_xiaobai2.png', '144', '8');
INSERT INTO `menu` VALUES ('懒人', 'https://www.meishij.net/jiankang/lanren/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_lanren2.png', '145', '8');
INSERT INTO `menu` VALUES ('学龄期儿童', 'https://www.meishij.net/jiankang/xuelingqiertong/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_11.png', '146', '8');
INSERT INTO `menu` VALUES ('高温环境作业人群', 'https://www.meishij.net/jiankang/gaowenhuanjingzuoyerenqun/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_12.png', '147', '8');
INSERT INTO `menu` VALUES ('低温环境作业人群', 'https://www.meishij.net/jiankang/diwenhuanjingzuoyerenqun/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_13.png', '148', '8');
INSERT INTO `menu` VALUES ('接触电离辐射人员', 'https://www.meishij.net/jiankang/jiechudianlifusherenyuan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_14.png', '149', '8');
INSERT INTO `menu` VALUES ('接触化学毒素人员', 'https://www.meishij.net/jiankang/jiechuhuaxuedusurenyuan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_renqun_15.png', '150', '8');
INSERT INTO `menu` VALUES ('术后', 'https://www.meishij.net/jiankang/shuhou/', 'https://cs-cn.meishij.net/zt/images/fl_renqun_shuhou1.png', '151', '8');
INSERT INTO `menu` VALUES ('炒锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_1.png', '152', '9');
INSERT INTO `menu` VALUES ('煎锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_2.png', '153', '9');
INSERT INTO `menu` VALUES ('蒸锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_3.png', '154', '9');
INSERT INTO `menu` VALUES ('汤锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_4.png', '155', '9');
INSERT INTO `menu` VALUES ('砂锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_5.png', '156', '9');
INSERT INTO `menu` VALUES ('炖锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_6.png', '157', '9');
INSERT INTO `menu` VALUES ('塔吉锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_7.png', '158', '9');
INSERT INTO `menu` VALUES ('高压锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_8.png', '159', '9');
INSERT INTO `menu` VALUES ('空气炸锅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_9.png', '160', '9');
INSERT INTO `menu` VALUES ('电饭煲', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_10.png', '161', '9');
INSERT INTO `menu` VALUES ('炖盅', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_11.png', '162', '9');
INSERT INTO `menu` VALUES ('烤箱', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_12.png', '163', '9');
INSERT INTO `menu` VALUES ('冰箱', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_13.png', '164', '9');
INSERT INTO `menu` VALUES ('微波炉', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_14.png', '165', '9');
INSERT INTO `menu` VALUES ('烧烤炉', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_15.png', '166', '9');
INSERT INTO `menu` VALUES ('电饼铛', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_16.png', '167', '9');
INSERT INTO `menu` VALUES ('面包机', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_17.png', '168', '9');
INSERT INTO `menu` VALUES ('面条机', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_18.png', '169', '9');
INSERT INTO `menu` VALUES ('榨汁机', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_19.png', '170', '9');
INSERT INTO `menu` VALUES ('料理机', 'https://www.meishij.net/caipufenlei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_chuju_20.png', '171', '9');
INSERT INTO `menu` VALUES ('二人世界', 'https://so.meishi.cc/index.php?q=%E4%BA%8C%E4%BA%BA%E4%B8%96%E7%95%8C', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_changjing_1.png', '172', '10');
INSERT INTO `menu` VALUES ('野餐', 'https://so.meishi.cc/index.php?q=%E9%87%8E%E9%A4%90', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_changjing_2.png', '173', '10');
INSERT INTO `menu` VALUES ('大姨妈来了', 'https://so.meishi.cc/index.php?q=%E5%A4%A7%E5%A7%A8%E5%A6%88%E6%9D%A5%E4%BA%86', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_changjing_3.png', '174', '10');
INSERT INTO `menu` VALUES ('懒人专用', 'https://so.meishi.cc/index.php?q=%E6%87%92%E4%BA%BA%E4%B8%93%E7%94%A8', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_changjing_4.png', '175', '10');
INSERT INTO `menu` VALUES ('朋友聚餐', 'https://so.meishi.cc/index.php?q=%E6%9C%8B%E5%8F%8B%E8%81%9A%E9%A4%90', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_changjing_5.png', '176', '10');
INSERT INTO `menu` VALUES ('咳喘', 'https://www.meishij.net/jiankang/kesou/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_1.png', '177', '11');
INSERT INTO `menu` VALUES ('补心', 'https://www.meishij.net/jiankang/buxin/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_2.png', '178', '11');
INSERT INTO `menu` VALUES ('养肝', 'https://www.meishij.net/jiankang/yanggan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_3.png', '179', '11');
INSERT INTO `menu` VALUES ('补脾', 'https://www.meishij.net/jiankang/bupi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_4.png', '180', '11');
INSERT INTO `menu` VALUES ('养肺', 'https://www.meishij.net/jiankang/yangfei/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_5.png', '181', '11');
INSERT INTO `menu` VALUES ('补肾', 'https://www.meishij.net/jiankang/bushen/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_6.png', '182', '11');
INSERT INTO `menu` VALUES ('补气', 'https://www.meishij.net/jiankang/buqi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_7.png', '183', '11');
INSERT INTO `menu` VALUES ('补血', 'https://www.meishij.net/jiankang/buxue/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_8.png', '184', '11');
INSERT INTO `menu` VALUES ('哮喘', 'https://www.meishij.net/jiankang/xiaochuan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_9.png', '185', '11');
INSERT INTO `menu` VALUES ('感冒', 'https://www.meishij.net/jiankang/ganmao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_10.png', '186', '11');
INSERT INTO `menu` VALUES ('腹泻', 'https://www.meishij.net/jiankang/fuxie/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_11.png', '187', '11');
INSERT INTO `menu` VALUES ('癫痫', 'https://www.meishij.net/jiankang/dianxian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_12.png', '188', '11');
INSERT INTO `menu` VALUES ('水肿', 'https://www.meishij.net/jiankang/shuizhong/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_13.png', '189', '11');
INSERT INTO `menu` VALUES ('便秘', 'https://www.meishij.net/jiankang/bianmi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_14.png', '190', '11');
INSERT INTO `menu` VALUES ('失眠', 'https://www.meishij.net/jiankang/shimian/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_15.png', '191', '11');
INSERT INTO `menu` VALUES ('健忘', 'https://www.meishij.net/jiankang/jianwang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_16.png', '192', '11');
INSERT INTO `menu` VALUES ('利尿', 'https://www.meishij.net/jiankang/liniao/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_17.png', '193', '11');
INSERT INTO `menu` VALUES ('心悸', 'https://www.meishij.net/jiankang/xinji/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_18.png', '194', '11');
INSERT INTO `menu` VALUES ('痢疾', 'https://www.meishij.net/jiankang/liji/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_19.png', '195', '11');
INSERT INTO `menu` VALUES ('呕吐', 'https://www.meishij.net/jiankang/outu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_20.png', '196', '11');
INSERT INTO `menu` VALUES ('胃调养', 'https://www.meishij.net/jiankang/weitiaoyang/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_21.png', '197', '11');
INSERT INTO `menu` VALUES ('气血双补', 'https://www.meishij.net/jiankang/qixueshuangbu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_22.png', '198', '11');
INSERT INTO `menu` VALUES ('活血化瘀', 'https://www.meishij.net/jiankang/huoxuehuayu/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_23.png', '199', '11');
INSERT INTO `menu` VALUES ('止血调理', 'https://www.meishij.net/jiankang/zhixuetiaoli/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_24.png', '200', '11');
INSERT INTO `menu` VALUES ('疏肝理气', 'https://www.meishij.net/jiankang/shuganliqi/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_25.png', '201', '11');
INSERT INTO `menu` VALUES ('阳痿早泄', 'https://www.meishij.net/jiankang/yangweizaoxie/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_26.png', '202', '11');
INSERT INTO `menu` VALUES ('自汗盗汗', 'https://www.meishij.net/jiankang/zihandaohan/', 'https://cs-cn.meishij.net/images/get3/fenlei/fl_zangfutiaoli_27.png', '203', '11');
INSERT INTO `menu` VALUES (NULL, NULL, NULL, '204', NULL);

-- ----------------------------
-- Table structure for menusearch
-- ----------------------------
DROP TABLE IF EXISTS `menusearch`;
CREATE TABLE `menusearch`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `label2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `label3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menusearch
-- ----------------------------
INSERT INTO `menusearch` VALUES ('\n                                   家常菜                                ', 'https://st-cn.meishij.net/r/181/118/6092181/a6092181_156764228903176.jpg', '家常菜,不限', '1', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜                                ', 'https://st-cn.meishij.net/r/157/177/13919407/a13919407_156670861556468.jpg', '家常菜,不限', '2', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之25                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155341433841454.jpg', '家常菜,不限', '3', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十八                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155318187522429.jpg', '家常菜,不限', '4', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之31                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155407676682389.jpg', '家常菜,不限', '5', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155098293115818.jpg', '家常菜,不限', '6', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之40                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155601243114971.jpg', '家常菜,不限', '7', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之六                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155084700696142.jpg', '家常菜,不限', '8', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之24                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155331977571729.jpg', '家常菜,不限', '9', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之27                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155351885550199.jpg', '家常菜,不限', '10', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之42                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155668974801710.jpg', '家常菜,不限', '11', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之29                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155407682346279.jpg', '家常菜,不限', '12', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之三                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155084401415300.jpg', '家常菜,不限', '13', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之28                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155402371464017.jpg', '家常菜,不限', '14', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十七                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155318147711638.jpg', '家常菜,不限', '15', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常凉菜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154460619678068.jpg', '家常菜,不限', '16', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十五                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155187415438145.jpg', '家常菜,不限', '17', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之38                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155550566871564.jpg', '家常菜,不限', '18', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   经典的东北家常菜——地三鲜                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_160844630352241.jpg', '家常菜,不限,煮,', '19', '家常菜,不限,煮,', '家常菜,不限,煮,');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之43                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155740451516836.jpg', '家常菜,不限', '20', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之37                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155541273768140.jpg', '家常菜,不限', '21', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   美味家常菜：木耳炒肉丝，好吃又好做                                ', 'https://st-cn.meishij.net/r/235/229/13994985/a13994985_161159266808973.jpg', '家常菜,不限,炒,初级入门,', '22', '家常菜,不限,炒,初级入门,', '家常菜,不限,炒,初级入门,');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十三                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155110274397668.jpg', '家常菜,不限', '23', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十一                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155099047237193.jpg', '家常菜,不限', '24', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之36                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155525229859402.jpg', '家常菜,不限', '25', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之33                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155464146891439.jpg', '家常菜,不限', '26', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之十二                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155110241633976.jpg', '家常菜,不限', '27', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之31                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155437017507327.jpg', '家常菜,不限', '28', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之二                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155084360855282.jpg', '家常菜,不限', '29', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之41                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155668963639920.jpg', '家常菜,不限', '30', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之22                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155326506623658.jpg', '家常菜,不限', '31', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜炒油豆腐                                ', 'https://st-cn.meishij.net/r/151/106/13651651/a13651651_155713798044080.jpg', '家常菜,不限,炒,麻辣,初级入门', '32', '家常菜,不限,炒,麻辣,初级入门', '家常菜,不限,炒,麻辣,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之四                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155084563602636.jpg', '家常菜,不限', '33', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之35                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155525137375415.jpg', '家常菜,不限', '34', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之34                                ', 'https://st-cn.meishij.net/r/109/94/3273609/a3273609_155495705023766.jpg', '家常菜,不限', '35', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之茄子炒肉                                ', 'http://st-cn.meishij.net/r/238/08/10252238/a10252238_150639718944857.jpg', '家常菜,不限,炒,新手尝试,', '58', '家常菜,不限,炒,新手尝试,', '家常菜,不限,炒,新手尝试,');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜 之 家焖大黄花鱼～                                ', 'https://st-cn.meishij.net/r/65/54/13451065/a13451065_155170215376393.jpg', '家常菜,不限,煮,鱼香味', '59', '家常菜,不限,煮,鱼香味', '家常菜,不限,煮,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   馋哭的家常菜，鳗鱼这样红烧❗️超美味❗️                                ', 'https://st-cn.meishij.net/r/108/140/4035108/a4035108_160533153805895.jpg', '家常菜,不限,鱼香味,', '60', '家常菜,不限,鱼香味,', '家常菜,不限,鱼香味,');
INSERT INTO `menusearch` VALUES ('\n                                   经典家常菜…酸辣包菜                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_160326805503573.jpg', '家常菜,不限,甜味,', '61', '家常菜,不限,甜味,', '家常菜,不限,甜味,');
INSERT INTO `menusearch` VALUES ('\n                                   皖北特色美食，快手家常菜~蒜苗炒豆饼                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_160709260808242.jpg', '家常菜,不限,炒,初中水平', '62', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   家常芹菜炒肉                                ', 'https://st-cn.meishij.net/r/02/111/13402752/a13402752_161715946896668.jpg', '家常菜,不限,炒,新手尝试', '130', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常酸菜鱼                                ', 'http://st-cn.meishij.net/r/157/64/8453657/a8453657_147822948067505.jpg', '家常菜,不限,炖,鱼香味', '131', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   香辣冒菜家常做法                                ', 'http://st-cn.meishij.net/r/15/08/4877015/a4877015_144721502443896.jpg', '家常菜,不限,香辣味,', '132', '家常菜,不限,香辣味,', '家常菜,不限,香辣味,');
INSERT INTO `menusearch` VALUES ('\n                                   简单家常下饭菜~毛豆烧豆腐                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_160082397761344.jpg', '家常菜,不限,中级掌勺,', '133', '家常菜,不限,中级掌勺,', '家常菜,不限,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   家常版干锅有机菜花                                ', 'https://st-cn.meishij.net/r/201/93/9960951/a9960951_156897376349255.jpg', '家常菜,不限,高级厨师', '134', '家常菜,不限,高级厨师', '家常菜,不限,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   家常烤韭菜                                ', 'https://st-cn.meishij.net/r/67/44/13761067/a13761067_162117065257315.jpg', '家常菜,不限,厨神级', '135', '家常菜,不限,厨神级', '家常菜,不限,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   十分钟就上桌的家常小菜。清脆爽口，莴苣炒香肠                                ', 'https://st-cn.meishij.net/r/02/111/13402752/a13402752_161183976862845.jpg', '家常菜,不限,蒜香,家常味,', '136', '家常菜,不限,蒜香,家常味,', '家常菜,不限,蒜香,家常味,');
INSERT INTO `menusearch` VALUES ('\n                                   家常白菜卷                                ', 'http://st-cn.meishij.net/r/10/231/5932760/a5932760_150293787385532.jpg', '家常菜,不限,家常味', '137', '家常菜,不限,家常味', '家常菜,不限,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   芹菜炒魔芋-家常小炒菜                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_154875243599905.jpg', '家常菜,不限,炒,家常味,新手尝试', '138', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常肉片炖白菜                                ', 'https://st-cn.meishij.net/r/169/94/8586169/a8586169_157827002992905.jpg', '家常菜,不限,炖,新手尝试,家常味', '139', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   豆浆蟹柳蒸水蛋（经典家常粤菜）                                ', 'https://st-cn.meishij.net/r/97/178/13669597/a13669597_156847985546571.jpg', '家常菜,不限,蒸,家常味,初级入门', '140', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜之蒜茄子                                ', 'http://st-cn.meishij.net/r/119/71/5642869/a5642869_146884251422372.jpg', '家常菜,不限,炒,蒜香,中级水平', '141', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   家常白菜这样炒，好吃又下饭！                                ', 'https://st-cn.meishij.net/r/132/146/13849132/a13849132_156069637893482.jpg', '家常菜,不限,炒,新手尝试,家常味', '142', '家常菜,不限,炒,新手尝试,家常味', '家常菜,不限,炒,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   超下饭的家常小炒菜-黄豆芽炒油渣                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_159451800772567.jpg', '家常菜,不限,炒,香辣味,中级掌勺,', '143', '家常菜,不限,炒,香辣味,中级掌勺,', '家常菜,不限,炒,香辣味,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   家常嫩滑牛肉丝这样做超下饭…芹菜炒牛肉丝                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_161485268143844.jpg', '家常菜,不限,炒,香辣味,高级厨师,', '144', '家常菜,不限,炒,香辣味,高级厨师,', '家常菜,不限,炒,香辣味,高级厨师,');
INSERT INTO `menusearch` VALUES ('\n                                   家常的美食猪肉白菜包                                ', 'http://st-cn.meishij.net/r/176/16/3879176/a3879176_151187317186438.jpg', '家常菜,不限,煮,麻辣,厨神级', '145', '家常菜,不限,煮,麻辣,厨神级', '家常菜,不限,煮,麻辣,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   家常下饭菜-豆角炒肉丝                                ', 'http://st-cn.meishij.net/r/06/177/6419256/a6419256_149191627612927.jpg', '家常菜,不限,炒,香辣味,高级厨师', '146', '家常菜,不限,炒,香辣味,高级厨师', '家常菜,不限,炒,香辣味,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   手撕包菜的家常做法                                ', 'https://st-cn.meishij.net/r/23/191/5110273/a5110273_156094740104866.jpg', '家常菜,不限,炒,家常味,新手尝试', '147', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常头菜蒸鱼头                                ', 'http://st-cn.meishij.net/r/23/12/6628023/a6628023_151020216727135.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '148', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   家常凉拌小菜                                ', 'http://st-cn.meishij.net/r/55/153/8413305/a8413305_147962388201695.jpg', '家常菜,不限,炖,蒜香,初级入门', '149', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   东北口味的家常凉菜                                ', 'http://st-cn.meishij.net/r/68/114/6028568/a6028568_147149280117673.jpg', '家常菜,不限,炸,蒜香,初级入门', '150', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常白菜炖土豆                                ', 'http://st-cn.meishij.net/r/213/70/4205213/a4205213_147737354189834.jpg', '家常菜,不限,炖,甜味,新手尝试', '151', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   黄豆烧猪尾！超级好吃的家常菜，学会了这道菜，谁还去吃红烧肉和大猪蹄子啊？                                ', 'https://st-cn.meishij.net/r/198/143/14160948/a14160948_158114968569194.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '152', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   家常蔬菜饭                                ', 'http://st-cn.meishij.net/r/225/44/10198725/a10198725_150244401556572.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '153', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常下酒菜-盐炒花生                                ', 'http://st-cn.meishij.net/r/228/166/5166728/a5166728_149329947749305.jpg', '家常菜,不限,炒,蒜香,初级入门', '154', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   粤菜传统名菜简易家常版－珍珠南瓜，清甜软糯，老人孩子都爱吃                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_160284129210551.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '155', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   家常下酒菜，酸酸甜甜让你停不下来的醋泡花生米                                ', 'https://st-cn.meishij.net/r/235/229/13994985/a13994985_160247535937054.jpg', '家常菜,不限,炖,甜味,新手尝试', '156', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常快手菜❗银丝白这样炒，味道鲜美超好吃                                ', 'https://st-cn.meishij.net/r/108/140/4035108/a4035108_160293109433376.jpg', '家常菜,不限,炒,香辣味,厨神级', '157', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   家常圆白菜炒蘑菇                                ', 'http://s1.ig.meishij.net/p/20111211/f647335927f9a4e5e8083719d2f3d7ed.jpg', '家常菜,不限,炒,家常味,新手尝试', '158', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常花菜这样炒，肉嫩菜脆，少油更美味                                ', 'https://st-cn.meishij.net/r/108/140/4035108/a4035108_160246433394683.jpg', '家常菜,不限,早餐,', '159', '家常菜,不限,早餐,初中水平', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   家常凉拌菜                                ', 'https://st-cn.meishij.net/r/106/232/3995606/a3995606_156039762435731.jpg', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '160', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常小炒—杏鲍菇炒香菜                                ', 'https://st-cn.meishij.net/r/181/169/2979931/a2979931_154883032087609.jpg', '家常菜,不限,炒,初中水平', '161', '家常菜,不限,炒,初中水平,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   家常下饭菜！窝蛋头菜蒸猪肉                                ', 'http://st-cn.meishij.net/r/138/70/8892638/a8892638_147981350656198.jpg', '家常菜,不限,炒,新手尝试', '162', '家常菜,不限,炒,新手尝试初中水平', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常版韩式辣白菜                                ', 'http://s1.ig.meishij.net/p/20120131/13c81e2ef0e50436cb05ebf3e785694a.jpg', '家常菜,不限,炖,鱼香味', '163', '家常菜,不限,炖,鱼香味,,初中水平', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   家常韭菜盒子                                ', 'https://st-cn.meishij.net/r/181/98/13899681/a13899681_158864536182180.jpg', '家常菜,不限,香辣味,', '164', '家常菜,不限,香辣味,', '家常菜,不限,香辣味,');
INSERT INTO `menusearch` VALUES ('\n                                   家常酸菜鱼                                ', 'http://st-cn.meishij.net/r/226/161/9040476/a9040476_148136605973695.jpg', '家常菜,不限,中级掌勺,', '165', '家常菜,不限,中级掌勺,', '家常菜,不限,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   家常版蚝油香菇炒青菜，用料简单又营养                                ', 'https://st-cn.meishij.net/r/235/229/13994985/a13994985_161958066364040.jpg', '家常菜,不限,高级厨师', '166', '家常菜,不限,高级厨师', '家常菜,不限,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   最家常的冬季暖锅，百吃不厌~白菜粉条牛肉锅                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_160930115322260.jpg', '家常菜,不限,厨神级', '167', '家常菜,不限,厨神级', '家常菜,不限,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   辣子鸡丁                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,蒜香,家常味,', '168', '家常菜,不限,蒜香,家常味,', '家常菜,不限,蒜香,家常味,');
INSERT INTO `menusearch` VALUES ('\n                                   家常凉菜                                ', 'http://st-cn.meishij.net/r/81/72/9268081/a9268081_148379334273981.jpg', '家常菜,不限,家常味', '169', '家常菜,不限,家常味', '家常菜,不限,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   蒜苗回锅肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_155082461119028.jpg', '家常菜,不限,炒,家常味,新手尝试', '170', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   爆炒腰花                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炒,香辣味,厨神级', '171', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   冬日暖胃家常菜－豆腐粉丝煲，荤素搭配，经济实惠又美味                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_160595047258689.jpg', '家常菜,不限,香辣味,', '172', '家常菜,不限,香辣味,', '家常菜,不限,香辣味,');
INSERT INTO `menusearch` VALUES ('\n                                   家常炖菜                                ', 'https://st-cn.meishij.net/r/59/27/3319309/a3319309_155577199432875.jpg', '家常菜,不限,中级掌勺,', '173', '家常菜,不限,中级掌勺,', '家常菜,不限,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   骨头汤                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154466995425636.jpg', '家常菜,不限,高级厨师', '174', '家常菜,不限,高级厨师', '家常菜,不限,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   炸蘑菇                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468465500830.jpg', '家常菜,不限,厨神级', '184', '家常菜,不限,厨神级', '家常菜,不限,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   京酱肉丝                                ', 'https://st-cn.meishij.net/r/64/39/13384814/a13384814_156655215206760.jpg', '家常菜,不限,炒,香辣味,厨神级', '185', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   杀猪菜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154527699160056.jpg', '家常菜,不限,香辣味,', '186', '家常菜,不限,香辣味,', '家常菜,不限,香辣味,');
INSERT INTO `menusearch` VALUES ('\n                                   烤生蚝                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,中级掌勺,', '187', '家常菜,不限,中级掌勺,', '家常菜,不限,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   家常梅菜肉                                ', 'http://s1.ig.meishij.net/p/20110729/7955a073e2635a5227b5ac29d1e3af82.jpg', '家常菜,不限,高级厨师', '188', '家常菜,不限,高级厨师', '家常菜,不限,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   西兰花炒虾仁                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468435572979.jpg', '家常菜,不限,厨神级', '196', '家常菜,不限,厨神级', '家常菜,不限,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   腐竹炒肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468179763724.jpg', '家常菜,不限,蒜香,家常味,', '197', '家常菜,不限,蒜香,家常味,', '家常菜,不限,蒜香,家常味,');
INSERT INTO `menusearch` VALUES ('\n                                   木耳炒肉                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炒,香辣味,中级掌勺,', '198', '家常菜,不限,炒,香辣味,中级掌勺,', '家常菜,不限,炒,香辣味,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   肉骨茶                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炒,家常味,新手尝试', '199', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   爆炒大虾                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,新手尝试,家常味', '200', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   水煮虾                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154596715159848.jpg', '家常菜,不限,蒸,家常味,初级入门', '201', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   牛尾汤                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468281562195.jpg', '家常菜,不限,炒,蒜香,中级水平', '202', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   红萝卜和娃娃菜，加点面粉抓一抓，可以当主食的“家常麦饭”                                ', 'https://st-cn.meishij.net/r/235/229/13994985/a13994985_160465517702962.jpg', '家常菜,不限,炒,香辣味,高级厨师', '203', '家常菜,不限,炒,香辣味,高级厨师', '家常菜,不限,炒,香辣味,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   上班族超爱的快手家常菜蚝油手撕包菜                                ', 'https://st-cn.meishij.net/r/143/54/3701143/a3701143_160767485548271.jpg', '家常菜,不限,炒,家常味,新手尝试', '204', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   土豆烧鸡                                ', 'http://st-cn.meishij.net/r/246/137/1534496/a1534496_151308404534718.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '205', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   家常炒油菜条                                ', 'https://st-cn.meishij.net/r/208/121/13280458/a13280458_154968990149605.jpg', '家常菜,不限,炖,蒜香,初级入门', '206', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   牛肉面                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,蒜香,初级入门', '207', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   爆炒鱿鱼                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,甜味,新手尝试', '208', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   爆炒猪肝                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '209', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   芝士火腿                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154527218730966.jpg', '家常菜,不限,炒,家常味,新手尝试', '210', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   空气炸锅版韭菜炒鸡蛋                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161858437386869.jpg', '家常菜,不限,炖,新手尝试,家常味', '211', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   蒜蓉烤茄子                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161562140455534.jpg', '家常菜,不限,蒸,家常味,初级入门', '212', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   香辣烤藕片                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161556326526250.jpg', '家常菜,不限,炒,蒜香,中级水平', '213', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   虾仁蛋滑西蓝花                                ', 'https://st-cn.meishij.net/r/193/77/14894443/a14894443_161546700272669.jpg', '家常菜,不限,家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '214', '家常菜,不限,家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   土豆丝卷饼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154285777846962.jpg', '家常菜,不限,炒,家常味,新手尝试', '215', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   腌笃鲜                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_161629082509192.jpg', '家常菜,不限,炖,新手尝试,家常味', '216', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   粉蒸肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154089380437680.jpg', '家常菜,不限,蒸,家常味,初级入门', '217', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常风味蔬菜包子                                ', 'https://st-cn.meishij.net/r/71/146/14036571/a14036571_156741621010268.jpg', '家常菜,不限,炒,蒜香,中级水平', '218', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   西葫芦炒肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154467209158238.jpg', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   麻辣豆腐                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154173548326786.jpg', '家常菜,不限,炒,家常味,新手尝试', '220', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   湖南小炒肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154337413041590.jpg', '家常菜,不限,炖,新手尝试,家常味', '221', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   酱茄子                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154752341043039.jpg', '家常菜,不限,炒,家常味,新手尝试', '222', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常火腿蒲菜汤                                ', 'http://st-cn.meishij.net/r/223/140/2660223/a2660223_143753986875377.jpg', '家常菜,不限,炖,新手尝试,家常味', '223', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   毛血旺                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,蒸,家常味,初级入门', '224', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   西湖醋鱼                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炒,蒜香,中级水平', '225', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   盐焗鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154338658073949.jpg', '家常菜,不限,炒,香辣味,厨神级', '226', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   红烧鱼块                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154337102842238.jpg', '家常菜,不限,炒,家常味,新手尝试\r\n家常菜,不限,炖,新手尝试,家常味\r\n家常菜,不限,蒸,家常味,初级入门\r\n家常菜,不限,炒,蒜香,中级水平\r\n家常菜,不限,炒,新手尝试,家常味\r\n家常菜,不限,炒,香辣味,中级掌勺,\r\n家常菜,不限,炒,香辣味,高级厨师,\r\n家常菜,不限,煮,麻辣,厨神级', '227', '家常菜,不限,炒,家常味,新手尝试\r\n家常菜,不限,炖,新手尝试,家常味\r\n家常菜,不限,蒸,家常味,初级入门\r\n家常菜,不限,炒,蒜香,中级水平\r\n家常菜,不限,炒,新手尝试,家常味\r\n家常菜,不限,炒,香辣味,中级掌勺,\r\n家常菜,不限,炒,香辣味,高级厨师,\r\n家常菜,不限,煮,麻辣,厨神级', '家常菜,不限,炒,家常味,新手尝试\r\n家常菜,不限,炖,新手尝试,家常味\r\n家常菜,不限,蒸,家常味,初级入门\r\n家常菜,不限,炒,蒜香,中级水平\r\n家常菜,不限,炒,新手尝试,家常味\r\n家常菜,不限,炒,香辣味,中级掌勺,\r\n家常菜,不限,炒,香辣味,高级厨师,\r\n家常菜,不限,煮,麻辣,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   香煎鸡胸肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154285846628886.jpg', '家常菜,不限,炒,香辣味,高级厨师', '228', '家常菜,不限,炒,香辣味,高级厨师', '家常菜,不限,炒,香辣味,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   空心菜炒鸡蛋                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_161572990497548.jpg', '家常菜,不限,炒,家常味,新手尝试', '229', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   烤红薯                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161547791412062.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '230', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   蒜香辣子鸡                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161539038091178.png', '家常菜,不限,炖,蒜香,初级入门', '231', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   蚝油生菜                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,蒜香,初级入门', '232', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常蔬菜挂面                                ', 'https://st-cn.meishij.net/r/181/98/13899681/a13899681_160240578337753.jpg', '家常菜,不限,煮,家常味,新手尝试', '233', '家常菜,不限,煮,家常味,新手尝试', '家常菜,不限,煮,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   香辣脆脆黄瓜条                                ', 'https://st-cn.meishij.net/r/239/17/2941989/a2941989_161517878455552.jpg', '家常菜,不限,炒,香辣味,厨神级', '234', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   红烧土豆                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,香辣味,新手尝试', '235', '家常菜,不限,炸,香辣味,新手尝试', '家常菜,不限,炸,香辣味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   红烧肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087184225820.jpg', '家常菜,不限,炒,家常味,新手尝试', '236', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   油焖大虾                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154088971881773.jpg', '家常菜,不限,炖,新手尝试,家常味', '237', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   西红柿炒鸡蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154088896161458.jpg', '家常菜,不限,蒸,家常味,初级入门', '238', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   剁椒鱼头                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154088321157598.jpg', '家常菜,不限,炒,家常味,新手尝试', '239', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   酱油炒饭                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154138872743828.jpg', '家常菜,不限,炖,新手尝试,家常味', '240', '家常菜,不限,炖,新手尝试,家常味', '家常菜,不限,炖,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   家常豆腐                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154113052576061.jpg', '家常菜,不限,蒸,家常味,初级入门', '241', '家常菜,不限,蒸,家常味,初级入门', '家常菜,不限,蒸,家常味,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   红烧茄子                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087038216790.jpg', '家常菜,不限,炒,蒜香,中级水平', '242', '家常菜,不限,炒,蒜香,中级水平', '家常菜,不限,炒,蒜香,中级水平');
INSERT INTO `menusearch` VALUES ('\n                                   包菜粉丝                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_155116308380402.jpg', '家常菜,不限,炒,新手尝试,家常味', '243', '家常菜,不限,炒,新手尝试,家常味', '家常菜,不限,炒,新手尝试,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   麻辣拌                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161530098960567.png', '家常菜,不限,炒,香辣味,中级掌勺,', '244', '家常菜,不限,炒,香辣味,中级掌勺,', '家常菜,不限,炒,香辣味,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   酸甜爽脆的洋花萝卜                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161494949085254.jpg', '家常菜,不限,炒,香辣味,高级厨师,', '245', '家常菜,不限,炒,香辣味,高级厨师,', '家常菜,不限,炒,香辣味,高级厨师,');
INSERT INTO `menusearch` VALUES ('\n                                   杏鲍菇炒肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154347583132722.jpg', '家常菜,不限,煮,麻辣,厨神级', '246', '家常菜,不限,煮,麻辣,厨神级', '家常菜,不限,煮,麻辣,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   酱猪蹄                                ', 'https://st-cn.meishij.net/r/24/14/6816024/a6816024_154521703466037.jpg', '家常菜,不限,煮,麻辣,厨神级', '247', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   椒麻鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154338744381823.jpg', '家常菜,不限,炒,初中水平', '248', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   Q弹爽口~锤子肉片                                ', 'https://st-cn.meishij.net/r/193/77/14894443/a14894443_161544879517402.jpg', '家常菜,不限,炒,新手尝试', '249', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   炒豆芽                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,鱼香味', '250', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   干锅土豆香辣虾                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161517833401208.jpg', '家常菜,不限,香辣味,', '251', '家常菜,不限,香辣味,', '家常菜,不限,香辣味,');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜大盘鸡                                ', 'http://st-cn.meishij.net/r/150/195/8986400/a8986400_147982084349351.jpg', '家常菜,不限,中级掌勺,', '252', '家常菜,不限,中级掌勺,', '家常菜,不限,中级掌勺,');
INSERT INTO `menusearch` VALUES ('\n                                   蒜薹炒牛肚                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_158237894162425.jpg', '家常菜,不限,高级厨师', '253', '家常菜,不限,高级厨师', '家常菜,不限,高级厨师');
INSERT INTO `menusearch` VALUES ('\n                                   拔丝地瓜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339971201661.jpg', '家常菜,不限,厨神级', '254', '家常菜,不限,厨神级', '家常菜,不限,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   红烧鸡块                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,蒜香,家常味,', '255', '家常菜,不限,蒜香,家常味,', '家常菜,不限,蒜香,家常味,');
INSERT INTO `menusearch` VALUES ('\n                                   水煮肉片                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154088128763034.jpg', '家常菜,不限,家常味', '256', '家常菜,不限,家常味', '家常菜,不限,家常味');
INSERT INTO `menusearch` VALUES ('\n                                   干锅排骨                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154337357184697.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '257', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   家常凉菜                                ', 'https://st-cn.meishij.net/r/211/229/14744961/a14744961_159787524607464.jpg', '家常菜,不限,炖,蒜香,初级入门', '258', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   胡萝卜炒鸡蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468840645681.jpg', '家常菜,不限,炸,蒜香,初级入门', '259', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   干锅牛蛙                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339745191141.jpg', '家常菜,不限,炖,甜味,新手尝试', '260', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   清炖全鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339829025137.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '261', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   煲仔饭                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154089314708674.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '263', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   黄桥烧饼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468866798732.jpg', '家常菜,不限,炒,蒜香,初级入门', '264', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   风味茄子                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154752330916905.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '266', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   孜然烤翅                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161553068762990.jpg', '家常菜,不限,炖,甜味,新手尝试', '267', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   鲜掉眉毛的丸子煮干丝                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161441087683687.jpg', '家常菜,不限,炒,香辣味,厨神级', '268', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   又香又酥的干炸带鱼                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161435032585824.jpg', '家常菜,不限,炒,家常味,新手尝试', '269', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   凉拌鸡胸肉                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161918992859497.jpg', '家常菜,不限,早餐,', '270', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   土豆饼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154276962954921.jpg', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '271', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   炒腊肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_155116392681600.jpg', '家常菜,不限,炒,初中水平', '272', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   大盘鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154045325367062.jpg', '家常菜,不限,炒,新手尝试', '273', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   喜欢的味道--番茄糖醋豆腐                                ', 'http://st-cn.meishij.net/r/239/15/2378989/a2378989_151306363520298.jpg', '家常菜,不限,炖,鱼香味', '274', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   腌菜花炝毛豆米                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161356668833954.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '277', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   馋嘴香辣鸡翅尖                                ', 'https://st-cn.meishij.net/r/145/214/5241145/a5241145_159549361015332.jpg', '家常菜,不限,炖,蒜香,初级入门', '278', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   白斩鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339906610925.jpg', '家常菜,不限,炸,蒜香,初级入门', '279', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   寿司                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154089112724690.jpg', '家常菜,不限,炖,甜味,新手尝试', '280', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   家常小炒之电饼铛版韭菜炒鸡蛋                                ', 'https://st-cn.meishij.net/r/13/90/4835013/a4835013_154097421304361.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '281', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   冰糖炖雪梨                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154089388601634.jpg', '家常菜,不限,炖,蒜香,初级入门', '282', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   冬瓜肉卷                                ', 'https://st-cn.meishij.net/r/193/77/14894443/a14894443_161314730874302.jpg', '家常菜,不限,炸,蒜香,初级入门', '283', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   香煎培根金针菇卷                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_155072773527434.jpg', '家常菜,不限,炖,甜味,新手尝试', '284', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   年夜饭快手下饭小炒：酸豆角炒腊肉                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161391492707528.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '285', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   一炉两吃的照烧鸡腿，你GET哪一款呢?                                ', 'https://st-cn.meishij.net/r/73/127/10031823/a10031823_161202183581985.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '286', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   干锅花菜                                ', 'http://st-cn.meishij.net/r/134/121/30384/a30384_151600294048975.jpg', '家常菜,不限,炒,蒜香,初级入门', '287', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   西兰花别再凉拌了，碗里加2个鸡蛋一搅一蒸，健康营养不流失                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161447929199282.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '288', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   可乐鸡翅                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087881446260.jpg', '家常菜,不限,炖,甜味,新手尝试', '289', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   柠香鸡翅                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_162031554023765.jpg', '家常菜,不限,炒,香辣味,厨神级', '290', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   凉拌面                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468262279785.jpg', '家常菜,不限,炒,家常味,新手尝试', '291', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   一碗酱汁锅里一倒，出锅太香了！鲜嫩入味比饭店实惠多了                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_161448265252915.jpg', '家常菜,不限,早餐,', '292', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   炒饼                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '293', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   西烩牛肉                                ', 'https://st-cn.meishij.net/r/135/164/14853635/a14853635_160912014617368.jpg', '家常菜,不限,炒,初中水平', '294', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   清蒸鲈鱼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154088721133269.jpg', '家常菜,不限,炒,新手尝试', '295', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   千页豆腐                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468323703816.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '296', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   奥尔良烤鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154475499023783.jpg', '家常菜,不限,炖,蒜香,初级入门', '297', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   黄焖鸡米饭                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,蒜香,初级入门', '298', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   卤蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154467245326147.jpg', '家常菜,不限,炖,甜味,新手尝试', '299', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   老北京炸酱面                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087941086653.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '300', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   金昌鱼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154530068428679.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '301', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   榴莲炖鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154337673914563.jpg', '家常菜,不限,炒,家常味,新手尝试', '302', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   肉末蒸蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154233840474589.jpg', '家常菜,不限,早餐,', '308', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   芝士火鸡                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161484585132860.png', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '309', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   蒜泥黄瓜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468146959491.jpg', '家常菜,不限,炒,初中水平', '310', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   秘制蒜香鸡爪                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161530250890369.png', '家常菜,不限,炒,新手尝试', '311', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   酱炒芹菜豆腐干                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_161555715055187.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '312', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   老虎菜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154467107023083.jpg', '家常菜,不限,炒,新手尝试', '313', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   拔丝芋头                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154529714198489.jpg', '家常菜,不限,炖,鱼香味', '318', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   火树银花                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154467366852788.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '319', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   红烧鳝鱼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468650537397.jpg', '家常菜,不限,炖,蒜香,初级入门', '320', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   美极焗鸡翅                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161408662539964.jpg', '家常菜,不限,炸,蒜香,初级入门', '321', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   口蘑小馒头                                ', 'http://st-cn.meishij.net/r/51/205/2301301/a2301301_151308276990219.jpg', '家常菜,不限,炖,甜味,新手尝试', '322', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   宫保鸡丁                                ', 'http://st-cn.meishij.net/r/207/11/9502957/a9502957_151304147951837.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '323', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   酸辣鸡胗                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_161242632156535.jpg', '家常菜,不限,炖,蒜香,初级入门', '324', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   香烤口蘑鹌鹑蛋                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_161499688851730.jpg', '家常菜,不限,炸,蒜香,初级入门', '325', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   炒凉粉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339387324043.jpg', '家常菜,不限,炖,甜味,新手尝试', '329', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   红烧排骨                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154086590124836.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '330', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   糖醋鲤鱼                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,煮,家常味,甜味,新手尝试', '331', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   关东煮                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154086913945705.jpg', '家常菜,不限,炒,蒜香,初级入门', '332', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   西葫芦炒鸡蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154338597808683.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '333', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   西红柿炒鸡蛋                                ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_162090199026801.jpg', '家常菜,不限,炖,甜味,新手尝试', '334', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   东北内蒙特色家常美食－芸豆柳蒿芽，春天囤地野菜秋冬来解馋                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_160543163990990.jpg', '家常菜,不限,炒,香辣味,厨神级', '335', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,鱼香味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   卤鸡爪                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炒,家常味,新手尝试', '336', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   蒜黄炒鸡蛋，自带清香，简单又营养，5分钟上桌                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_161443487855559.jpg', '家常菜,不限,早餐,', '337', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   香烤猪蹄                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161553383838028.jpg', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '338', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   四季豆炒扇贝肉                                ', 'https://st-cn.meishij.net/r/197/182/6108197/a6108197_159344816124603.jpg', '家常菜,不限,炒,初中水平', '339', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   粉丝蒸茄子                                ', 'https://st-cn.meishij.net/r/184/180/4420184/a4420184_159331176900198.jpg', '家常菜,不限,炒,新手尝试', '340', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   茄子烩豆腐                                ', 'https://st-cn.meishij.net/r/246/137/1534496/a1534496_159616536523745.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '341', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   口水鸡                                ', 'http://st-cn.meishij.net/r/246/212/8615746/a8615746_151315032027643.jpg', '家常菜,不限,炖,蒜香,初级入门', '342', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   糖醋牛肉丸子                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_161544393114402.jpg', '家常菜,不限,炒,新手尝试', '343', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   水煮锤肉片                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161491500341349.jpg', '家常菜,不限,炖,鱼香味', '344', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   小葱拌豆腐,早餐                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154294389455680.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '345', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   我炖羊排从来不放盐，蘸着椒盐吃它不香吗？                                ', 'https://st-cn.meishij.net/r/235/229/13994985/a13994985_161194016925694.jpg', '家常菜,不限,炖,蒜香,初级入门', '346', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   蛤蜊的正确清洗方法                                ', 'https://st-cn.meishij.net/r/72/104/4151072/a4151072_161236239706967.jpg', '家常菜,不限,炸,蒜香,初级入门', '347', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   糖醋牛肉丸子，好吃下饭又营养                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_161711702711428.jpg', '家常菜,不限,炖,甜味,新手尝试', '348', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   葱花饼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154028911700643.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '349', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   鱼香茄子                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_160138816823573.jpg', '家常菜,不限,炖,蒜香,初级入门', '350', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   大盘鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087914034172.jpg', '家常菜,不限,炸,蒜香,初级入门', '353', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   土豆炖豆角 ,早餐                               ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154345720925673.jpg', '家常菜,不限,炖,甜味,新手尝试', '356', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   葱花鸡蛋饼                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154089039590408.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '360', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   京酱肉丝                                ', 'http://st-cn.meishij.net/r/60/186/2859060/a2859060_151667430362799.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '364', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   溜肉段                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_161060996876910.jpg', '家常菜,不限,炒,蒜香,初级入门', '365', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   蛤蜊炖蛋                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_155125613880505.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '366', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   炒合菜                                ', 'https://st-cn.meishij.net/r/201/93/9960951/a9960951_157967468573124.jpg', '家常菜,不限,炖,甜味,新手尝试', '367', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   麻辣羊蝎子                                ', 'https://st-cn.meishij.net/r/141/154/4351141/a4351141_161218886245798.jpg', '家常菜,不限,炒,香辣味,厨神级', '368', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   空气炸锅版烤羊排                                ', 'https://st-cn.meishij.net/r/117/249/5187367/a5187367_161239827546161.jpg', '家常菜,不限,炒,家常味,新手尝试', '369', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   红烧狮子头                                ', 'http://st-cn.meishij.net/r/86/63/1640836/a1640836_151543003415109.jpg', '家常菜,不限,早餐,', '370', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   煎米饼 ,早餐                               ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154340022529574.jpg', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '371', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   复制于谦老师的白斩鸡，简单又美味，年夜饭下酒菜就吃它了                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161209528419985.jpg', '家常菜,不限,炒,初中水平', '372', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   糯米鸡                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154469240717762.jpg', '家常菜,不限,炒,新手尝试', '373', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   肉丁炸酱                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468350329185.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '376', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   凉拌腐竹                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339799435130.jpg', '家常菜,不限', '377', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   凉拌金针菇                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154087154004269.jpg', '家常菜,不限', '378', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   炒粉丝                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限', '379', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   炒青菜                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154466662191710.jpg', '家常菜,不限', '380', '家常菜,不限', '家常菜,不限');
INSERT INTO `menusearch` VALUES ('\n                                   盐蒸橙子                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154345749882285.jpg', '家常菜,不限,炒,新手尝试', '383', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   炸鸡                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,鱼香味', '384', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   开胃酸菜鱼 ,鱼香肉丝                               ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_161553856069058.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '385', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   无油可乐鸡翅                                ', 'https://st-cn.meishij.net/r/150/151/14787900/a14787900_161545896864154.jpg', '家常菜,不限,炖,蒜香,初级入门', '386', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   牛尾冬瓜汤                                ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_161823332253980.jpg', '家常菜,不限,炸,蒜香,初级入门', '387', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   肉末烤茄子                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_162108771174599.jpg', '家常菜,不限,炖,甜味,新手尝试', '388', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   芝士烤鸡翅                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161552913424435.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '389', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   无油版可乐鸡翅                                ', 'http://st-cn.meishij.net/r/117/242/1123117/a1123117_71437.jpg', '家常菜,不限,炖,蒜香,初级入门', '390', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   年糕                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炸,蒜香,初级入门', '391', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   蒜末粉丝蒸海虾                                ', 'https://st-cn.meishij.net/r/197/182/6108197/a6108197_157625036531106.jpg', '家常菜,不限,炖,甜味,新手尝试', '392', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   茄子烧豆角                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_159784491517174.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '393', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   蜜汁叉烧                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161625744348074.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '394', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   火锅鸡的家常做法，香辣过瘾简单易做，配米饭太下饭啦                                ', 'https://st-cn.meishij.net/r/143/203/14613393/a14613393_161123206467981.jpg', '家常菜,不限,炒,蒜香,初级入门', '395', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   地锅鸡                                ', 'https://st-cn.meishij.net/r/10/120/30010/a30010_161499107565637.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '396', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   口水鸡                                ', 'https://st-cn.meishij.net/r/208/102/1025708/a1025708_156075524649874.jpg', '家常菜,不限,炖,甜味,新手尝试', '397', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   蒜蓉粉丝烤海鲜碗                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161556049161228.jpg', '家常菜,不限,炒,香辣味,厨神级', '398', '家常菜,不限,炒,香辣味,厨神级', '家常菜,不限,炒,香辣味,厨神级');
INSERT INTO `menusearch` VALUES ('\n                                   拔丝地瓜                                ', 'http://st-cn.meishij.net/r/190/114/4278690/a4278690_151314807913948.jpg', '家常菜,不限,炒,家常味,新手尝试', '399', '家常菜,不限,炒,家常味,新手尝试', '家常菜,不限,炒,家常味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   蒸鲈鱼                                ', 'https://st-cn.meishij.net/r/208/102/1025708/a1025708_156345334153163.jpg', '家常菜,不限,早餐,', '400', '家常菜,不限,早餐,', '家常菜,不限,早餐,');
INSERT INTO `menusearch` VALUES ('\n                                   蒜蓉剁椒烤扇贝                                ', 'https://st-cn.meishij.net/r/197/182/6108197/a6108197_159232162947225.jpg', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '401', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   南瓜刺猬豆沙包                                ', 'http://st-cn.meishij.net/r/95/144/5286095/a5286095_151306280919227.jpg', '家常菜,不限,炒,初中水平', '402', '家常菜,不限,炒,初中水平', '家常菜,不限,炒,初中水平');
INSERT INTO `menusearch` VALUES ('\n                                   地三鲜                                ', 'http://st-cn.meishij.net/r/25/20/10817525/a10817525_151295677138670.jpg', '家常菜,不限,炒,新手尝试', '403', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   鹌鹑蛋韭菜盒子                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_161158598640311.jpg', '家常菜,不限,炖,鱼香味', '404', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   香辣干锅虾                                ', 'https://st-cn.meishij.net/r/06/177/6419256/a6419256_157727346717346.jpg', '家常菜,不限,炒,新手尝试', '405', '家常菜,不限,炒,新手尝试', '家常菜,不限,炒,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   西兰花炒杏鲍菇                                ', 'https://st-cn.meishij.net/r/120/39/13134870/a13134870_157633407134263.jpg', '家常菜,不限,炖,鱼香味', '406', '家常菜,不限,炖,鱼香味', '家常菜,不限,炖,鱼香味');
INSERT INTO `menusearch` VALUES ('\n                                   空气炸锅宫保鸡丁                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161832664566670.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '407', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   麻婆豆腐                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_160414594065558.jpg', '家常菜,不限,炖,蒜香,初级入门', '408', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   家常菜豆腐                                ', 'http://s1.ig.meishij.net/p/20120904/a2a017dcd93483320470602a86acdab0.jpg', '家常菜,不限,炸,蒜香,初级入门', '409', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   梭子蟹                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339002006963.jpg', '家常菜,不限,炖,甜味,新手尝试', '410', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   海鲜火锅                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154339497636062.jpg', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '411', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝', '家常菜,不限,蒸,鱼香味,中级掌勺,鱼香肉丝');
INSERT INTO `menusearch` VALUES ('\n                                   泥鳅汤                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,蒜香,初级入门', '412', '家常菜,不限,炖,蒜香,初级入门', '家常菜,不限,炖,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   鸡蛋的2种新吃法                                ', 'https://st-cn.meishij.net/r/239/17/2941989/a2941989_161441700176231.jpg', '家常菜,不限,炸,蒜香,初级入门', '413', '家常菜,不限,炸,蒜香,初级入门', '家常菜,不限,炸,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   酱肉鸡                                ', 'https://s1.c.meishij.net/images/nopic.gif', '家常菜,不限,炖,甜味,新手尝试', '414', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   金针菇白玉卷~金玉满堂迎新春                                ', 'https://st-cn.meishij.net/r/193/77/14894443/a14894443_161312898667353.jpg', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '415', '家常菜,不限,炸,麻辣,家常味,中级掌勺', '家常菜,不限,炸,麻辣,家常味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   秘制卤叉烧                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161216628277611.jpg', '家常菜,不限,煮,家常味,甜味,新手尝试', '416', '家常菜,不限,煮,家常味,甜味,新手尝试', '家常菜,不限,煮,家常味,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   清蒸比目鱼                                ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_161802003159049.jpg', '家常菜,不限,炒,蒜香,初级入门', '417', '家常菜,不限,炒,蒜香,初级入门', '家常菜,不限,炒,蒜香,初级入门');
INSERT INTO `menusearch` VALUES ('\n                                   西兰花虾仁炒饭                                ', 'https://st-cn.meishij.net/r/96/157/2664346/a2664346_160962626327587.jpg', '家常菜,不限,蒸,甜味,中级掌勺', '418', '家常菜,不限,蒸,甜味,中级掌勺', '家常菜,不限,蒸,甜味,中级掌勺');
INSERT INTO `menusearch` VALUES ('\n                                   蘑菇藕片炒鸡蛋                                ', 'https://st-cn.meishij.net/r/06/177/6419256/a6419256_157753741219423.jpg', '家常菜,不限,炖,甜味,新手尝试', '419', '家常菜,不限,炖,甜味,新手尝试', '家常菜,不限,炖,甜味,新手尝试');
INSERT INTO `menusearch` VALUES ('\n                                   茄子焖土豆                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_159836440323027.jpg', '家常菜,不限', '420', '家常菜,不限', '家常菜,不限');

-- ----------------------------
-- Table structure for recommendh2
-- ----------------------------
DROP TABLE IF EXISTS `recommendh2`;
CREATE TABLE `recommendh2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommendh2
-- ----------------------------
INSERT INTO `recommendh2` VALUES (1, '新鲜推荐');
INSERT INTO `recommendh2` VALUES (2, '时令菜肴');
INSERT INTO `recommendh2` VALUES (3, '肉食精选');
INSERT INTO `recommendh2` VALUES (4, '健康素食');
INSERT INTO `recommendh2` VALUES (5, '烘焙');

-- ----------------------------
-- Table structure for sancan
-- ----------------------------
DROP TABLE IF EXISTS `sancan`;
CREATE TABLE `sancan`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sancan
-- ----------------------------
INSERT INTO `sancan` VALUES ('1', 'https://s1.st.meishij.net/r/41/212/5178041/s5178041_154097434142725.jpg', '蛋炒饭', '营养丰富,早餐最爱', 0);
INSERT INTO `sancan` VALUES ('2', 'https://s1.st.meishij.net/r/134/61/5140384/s5140384_154095056853069.jpeg', '绿豆红枣粥', '美味可口，营养丰富', 0);
INSERT INTO `sancan` VALUES ('3', 'https://s1.st.meishij.net/r/235/48/3699735/s3699735_154098433416863.jpeg?imageMogr2/gravity/Center/crop/330x330', '番茄鸡蛋馄饨', '简单美味，几分钟搞定早餐', 0);
INSERT INTO `sancan` VALUES ('4', 'https://s1.st.meishij.net/r/184/229/5557434/s5557434_148833766064252.jpg?imageMogr2/gravity/Center/crop/330x330', '焖猪手', '色香味俱佳，惊艳味蕾', 1);
INSERT INTO `sancan` VALUES ('5', 'https://s1.st.meishij.net/r/141/154/4351141/s4351141_148828326423395.jpg?imageMogr2/gravity/Center/crop/330x330', '回锅焖子【沙茶美食】', '经济实惠，有滋有味', 1);
INSERT INTO `sancan` VALUES ('6', 'https://s1.st.meishij.net/r/141/154/4351141/s4351141_148828359928925.jpg?imageMogr2/gravity/Center/crop/330x330', '洋芋牛肉粒【沙茶美食】', '鲜美入味，好吃到爆', 1);
INSERT INTO `sancan` VALUES ('7', 'https://s1.st.meishij.net/r/172/188/7672172/s7672172_153784403423971.jpeg?imageMogr2/gravity/Center/crop/330x330', '冰皮月饼', '香气扑鼻，好吃过瘾', 2);
INSERT INTO `sancan` VALUES ('8', 'https://s1.st.meishij.net/r/162/177/3544412/s3544412_148470763300382.jpg?imageMogr2/gravity/Center/crop/330x330', '双色蜂蜜面包', '无比美味，吃一口就爱上', 2);
INSERT INTO `sancan` VALUES ('9', 'https://s1.st.meishij.net/r/51/205/2301301/s2301301_154098446340239.jpg?imageMogr2/gravity/Center/crop/330x330', '胡萝卜脆底排包', '惊艳味蕾，好吃到爆', 2);
INSERT INTO `sancan` VALUES ('10', 'https://s1.st.meishij.net/r/89/219/2929839/s2929839_151245238107488.jpg?imageMogr2/gravity/Center/crop/330x330', '酱焖豆腐', '美味飘香，满足味蕾', 3);
INSERT INTO `sancan` VALUES ('11', 'https://s1.st.meishij.net/r/87/02/6625587/s6625587_151239609489270.jpg?imageMogr2/gravity/Center/crop/330x330', '酸菜鲈鱼锅', '家常经典，上桌被抢光', 3);
INSERT INTO `sancan` VALUES ('12', 'https://s1.st.meishij.net/r/235/48/3699735/s3699735_151239402013600.jpg?imageMogr2/gravity/Center/crop/330x330', '营养美味一锅炖', '香味浓郁，让人食欲大增', 3);
INSERT INTO `sancan` VALUES ('13', 'https://s1.st.meishij.net/r/21/119/2654771/s2654771_142061366837482.jpg?imageMogr2/gravity/Center/crop/330x330', '香菇炒饭', '味道超赞，无比解馋', 4);
INSERT INTO `sancan` VALUES ('14', 'https://s1.st.meishij.net/r/246/137/1534496/s1534496_153442558293160.jpg?imageMogr2/gravity/Center/crop/330x330', '番茄鸡蛋疙瘩面', '鲜香美味，让人口水直流', 4);
INSERT INTO `sancan` VALUES ('15', 'https://s1.st.meishij.net/r/195/50/2137695/s2137695_145085270703859.jpg?imageMogr2/gravity/Center/crop/330x330', '自制辣椒酱', '美味过瘾，好吃停不下嘴', 4);

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `similarcpbtn_链接` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `similarcpbtn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('\n                                   酥炸小黄鱼                                ', 'http://st-cn.meishij.net/r/54/216/9241554/a9241554_151553960904006.jpg', 'http://so.meishi.cc/index.php?q=%E9%85%A5%E7%82%B8%E5%B0%8F%E9%BB%84%E9%B1%BC&gy=153&kw=188&mt=4&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   肉桂苹果卷                                ', 'http://st-cn.meishij.net/r/169/156/2789169/a2789169_151307285924280.jpg', 'http://so.meishi.cc/index.php?q=%E8%82%89%E6%A1%82%E8%8B%B9%E6%9E%9C%E5%8D%B7&gy=220&kw=185&mt=8&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   干煸花菜                                ', 'https://st-cn.meishij.net/r/208/102/1025708/a1025708_158625050834750.jpg', 'http://so.meishi.cc/index.php?q=%E5%B9%B2%E7%85%B8%E8%8A%B1%E8%8F%9C&gy=192&kw=187&mt=3&md=4&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   网格鸡蛋饼                                ', 'http://st-cn.meishij.net/r/210/167/9979460/a9979460_151315005294281.jpg', 'http://so.meishi.cc/index.php?q=%E7%BD%91%E6%A0%BC%E9%B8%A1%E8%9B%8B%E9%A5%BC&gy=252&kw=189&mt=2&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   粉蒸排骨                                ', 'http://st-cn.meishij.net/r/22/225/5306272/a5306272_151260699253009.jpg', 'http://so.meishi.cc/index.php?q=%E7%B2%89%E8%92%B8%E6%8E%92%E9%AA%A8&gy=156&kw=160&mt=6&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   猪肚鸡（汤，火锅底）                                ', 'http://st-cn.meishij.net/r/87/178/5169587/a5169587_151589189128468.jpg', 'http://so.meishi.cc/index.php?q=%E7%8C%AA%E8%82%9A%E9%B8%A1%EF%BC%88%E6%B1%A4%EF%BC%8C%E7%81%AB%E9%94%85%E5%BA%95%EF%BC%89&gy=194&kw=189&mt=8&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   烤茄子                                ', 'https://st-cn.meishij.net/r/06/177/6419256/a6419256_159611416395041.jpg', 'http://so.meishi.cc/index.php?q=%E7%83%A4%E8%8C%84%E5%AD%90&gy=130&kw=168&mt=4&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   酥肉                                ', 'https://st-cn.meishij.net/r/41/203/113291/a113291_154468380576743.jpg', 'http://so.meishi.cc/index.php?q=%E9%85%A5%E8%82%89&gy=153&kw=160&mt=2&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   干锅花菜                                ', 'https://st-cn.meishij.net/r/246/245/13936496/a13936496_159869398019752.jpg', 'http://so.meishi.cc/index.php?q=%E5%B9%B2%E9%94%85%E8%8A%B1%E8%8F%9C&gy=192&kw=168&mt=1&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   油焖大虾                                ', 'http://st-cn.meishij.net/r/139/60/2827639/a2827639_151556829530544.jpg', 'http://so.meishi.cc/index.php?q=%E6%B2%B9%E7%84%96%E5%A4%A7%E8%99%BE&gy=192&kw=168&mt=2&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   干锅                                ', 'https://st-cn.meishij.net/r/208/102/1025708/a1025708_156084571545742.jpg', 'http://so.meishi.cc/index.php?q=%E5%B9%B2%E9%94%85&gy=149&kw=168&mt=3&md=4&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   鲜姜炒鸡翅                                ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_157753918989408.jpg', 'http://so.meishi.cc/index.php?q=%E9%B2%9C%E5%A7%9C%E7%82%92%E9%B8%A1%E7%BF%85&gy=192&kw=187&mt=2&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   西葫芦炒腊肉                                ', 'https://st-cn.meishij.net/r/06/177/6419256/a6419256_160146270062539.jpg', 'http://so.meishi.cc/index.php?q=%E8%A5%BF%E8%91%AB%E8%8A%A6%E7%82%92%E8%85%8A%E8%82%89&gy=192&kw=168&mt=1&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   南瓜盅豉香蒸排骨                                ', 'http://st-cn.meishij.net/r/14/171/5480264/a5480264_151487634221279.jpg', 'http://so.meishi.cc/index.php?q=%E5%8D%97%E7%93%9C%E7%9B%85%E8%B1%89%E9%A6%99%E8%92%B8%E6%8E%92%E9%AA%A8&gy=156&kw=168&mt=6&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   自制潮汕贡菜——潮汕人独有的家常小菜                                ', 'https://st-cn.meishij.net/r/247/15/4941497/a4941497_157478506224476.jpg', 'http://so.meishi.cc/index.php?q=%E8%87%AA%E5%88%B6%E6%BD%AE%E6%B1%95%E8%B4%A1%E8%8F%9C%E2%80%94%E2%80%94%E6%BD%AE%E6%B1%95%E4%BA%BA%E7%8B%AC%E6%9C%89%E7%9A%84%E5%AE%B6%E5%B8%B8%E5%B0%8F%E8%8F%9C&gy=134&kw=168&mt=2&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   糖醋里脊                                ', 'http://st-cn.meishij.net/r/49/144/4036049/a4036049_151612021318795.jpg', 'http://so.meishi.cc/index.php?q=%E7%B3%96%E9%86%8B%E9%87%8C%E8%84%8A&gy=153&kw=182&mt=3&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   胡萝卜黑麦机车八爪鱼面包                                ', 'http://st-cn.meishij.net/r/113/25/2256363/a2256363_55724.jpg', 'http://so.meishi.cc/index.php?q=%E8%83%A1%E8%90%9D%E5%8D%9C%E9%BB%91%E9%BA%A6%E6%9C%BA%E8%BD%A6%E5%85%AB%E7%88%AA%E9%B1%BC%E9%9D%A2%E5%8C%85&gy=220&kw=185&mt=6&md=3&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   蚝油生菜                                ', 'https://st-cn.meishij.net/r/120/39/13134870/a13134870_159561309112981.jpg', 'http://so.meishi.cc/index.php?q=%E8%9A%9D%E6%B2%B9%E7%94%9F%E8%8F%9C&gy=194&kw=183&mt=2&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   蒜香炸鸡翅                                ', 'https://st-cn.meishij.net/r/57/65/14891307/a14891307_161495648601529.png', 'http://so.meishi.cc/index.php?q=%E8%92%9C%E9%A6%99%E7%82%B8%E9%B8%A1%E7%BF%85&gy=153&kw=183&mt=4&md=2&recipe_type=3', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   少油地三鲜                                ', 'https://st-cn.meishij.net/r/50/123/6030800/a6030800_155132958475694.jpg', 'http://so.meishi.cc/index.php?q=%E5%B0%91%E6%B2%B9%E5%9C%B0%E4%B8%89%E9%B2%9C&gy=149&kw=168&mt=1&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   金色馒头片                                ', 'http://st-cn.meishij.net/r/143/162/2728143/a2728143_151262145746755.jpg', 'http://so.meishi.cc/index.php?q=%E9%87%91%E8%89%B2%E9%A6%92%E5%A4%B4%E7%89%87&gy=129&kw=168&mt=2&md=1&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   好吃入味的板栗炖鸡                                ', 'https://st-cn.meishij.net/r/121/39/13134871/a13134871_161330497062406.jpg', 'http://so.meishi.cc/index.php?q=%E5%A5%BD%E5%90%83%E5%85%A5%E5%91%B3%E7%9A%84%E6%9D%BF%E6%A0%97%E7%82%96%E9%B8%A1&gy=144&kw=160&mt=4&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   红烧茄子                                ', 'https://st-cn.meishij.net/r/120/39/13134870/a13134870_159619408507943.jpg', 'http://so.meishi.cc/index.php?q=%E7%BA%A2%E7%83%A7%E8%8C%84%E5%AD%90&gy=149&kw=168&mt=3&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   白萝卜牛肉丸子煲                                ', 'https://st-cn.meishij.net/r/13/90/4835013/a4835013_154330439930304.jpg', 'http://so.meishi.cc/index.php?q=%E7%99%BD%E8%90%9D%E5%8D%9C%E7%89%9B%E8%82%89%E4%B8%B8%E5%AD%90%E7%85%B2&gy=194&kw=160&mt=4&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   莴笋炒肉丝                                ', 'http://st-cn.meishij.net/r/67/36/4071567/a4071567_151540051408904.jpg', 'http://so.meishi.cc/index.php?q=%E8%8E%B4%E7%AC%8B%E7%82%92%E8%82%89%E4%B8%9D&gy=192&kw=168&mt=2&md=4&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   香辣干锅鸡                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_158117060063662.jpg', 'http://so.meishi.cc/index.php?q=%E9%A6%99%E8%BE%A3%E5%B9%B2%E9%94%85%E9%B8%A1&gy=192&kw=187&mt=4&md=4&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   啤酒酱焖海鲈鱼                                ', 'https://st-cn.meishij.net/r/197/182/6108197/a6108197_157589601564162.jpg', 'http://so.meishi.cc/index.php?q=%E5%95%A4%E9%85%92%E9%85%B1%E7%84%96%E6%B5%B7%E9%B2%88%E9%B1%BC&gy=144&kw=160&mt=4&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   梅菜扣肉                                ', 'https://st-cn.meishij.net/r/60/35/3321310/a3321310_154891634276312.jpg', 'http://so.meishi.cc/index.php?q=%E6%A2%85%E8%8F%9C%E6%89%A3%E8%82%89&gy=156&kw=168&mt=4&md=4&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   泡椒蒸鲳鳊                                ', 'https://st-cn.meishij.net/r/23/197/5111773/a5111773_161356949493735.jpg', 'http://so.meishi.cc/index.php?q=%E6%B3%A1%E6%A4%92%E8%92%B8%E9%B2%B3%E9%B3%8A&gy=156&kw=187&mt=4&md=2&recipe_type=3', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   川味鱼香茄子-简单几步 赶紧学起来                                ', 'https://st-cn.meishij.net/r/217/185/2921467/a2921467_155231645248345.jpg', 'http://so.meishi.cc/index.php?q=%E5%B7%9D%E5%91%B3%E9%B1%BC%E9%A6%99%E8%8C%84%E5%AD%90-%E7%AE%80%E5%8D%95%E5%87%A0%E6%AD%A5%20%E8%B5%B6%E7%B4%A7%E5%AD%A6%E8%B5%B7%E6%9D%A5&gy=192&kw=180&mt=3&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   鹌鹑蛋烧豆腐                                ', 'http://st-cn.meishij.net/r/25/03/10375775/a10375775_151290500048912.jpg', 'http://so.meishi.cc/index.php?q=%E9%B9%8C%E9%B9%91%E8%9B%8B%E7%83%A7%E8%B1%86%E8%85%90&gy=149&kw=170&mt=3&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   梅菜扣肉                                ', 'https://st-cn.meishij.net/r/97/36/13384097/a13384097_156292886798228.jpg', 'http://so.meishi.cc/index.php?q=%E6%A2%85%E8%8F%9C%E6%89%A3%E8%82%89&gy=156&kw=168&mt=6&md=2&recipe_type=3', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   清蒸罗非鱼                                ', 'https://st-cn.meishij.net/r/06/177/6419256/a6419256_160906407992708.jpg', 'http://so.meishi.cc/index.php?q=%E6%B8%85%E8%92%B8%E7%BD%97%E9%9D%9E%E9%B1%BC&gy=156&kw=168&mt=3&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   酸萝卜炒肉皮                                ', 'https://st-cn.meishij.net/r/241/24/818741/a818741_157927124392736.jpg', 'http://so.meishi.cc/index.php?q=%E9%85%B8%E8%90%9D%E5%8D%9C%E7%82%92%E8%82%89%E7%9A%AE&gy=192&kw=180&mt=2&md=3&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   粉蒸肉                                ', 'https://st-cn.meishij.net/r/207/244/2811207/a2811207_155942722316311.jpg', 'http://so.meishi.cc/index.php?q=%E7%B2%89%E8%92%B8%E8%82%89&gy=156&kw=168&mt=5&md=2&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   家常炖酸菜                                ', 'http://s1.ig.meishij.net/p/20111125/0ece69d408c2cb16a4c1f07ae474feb9.jpg', 'http://so.meishi.cc/index.php?q=%E5%AE%B6%E5%B8%B8%E7%82%96%E9%85%B8%E8%8F%9C&gy=124&kw=266&mt=0&md=0&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   剁椒蒸鸡翅                                ', 'https://st-cn.meishij.net/r/145/214/5241145/a5241145_156182512737305.jpg', 'http://so.meishi.cc/index.php?q=%E5%89%81%E6%A4%92%E8%92%B8%E9%B8%A1%E7%BF%85&gy=156&kw=187&mt=4&md=3&recipe_type=0', '找相似菜谱');
INSERT INTO `search` VALUES ('\n                                   自制凉粉                                ', 'https://st-cn.meishij.net/r/206/144/5098706/a5098706_156220185920016.jpg', 'http://so.meishi.cc/index.php?q=%E8%87%AA%E5%88%B6%E5%87%89%E7%B2%89&gy=259&kw=168&mt=4&md=0&recipe_type=0', '找相似菜谱');

SET FOREIGN_KEY_CHECKS = 1;

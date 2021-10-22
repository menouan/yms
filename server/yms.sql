/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : yms

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 22/10/2021 15:00:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yms_address
-- ----------------------------
DROP TABLE IF EXISTS `yms_address`;
CREATE TABLE `yms_address`  (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `d_number` int(11) DEFAULT NULL,
  `d_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `d_ptit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE,
  INDEX `d_number`(`d_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_address
-- ----------------------------
INSERT INTO `yms_address` VALUES (1, '北京', 10, 'beijing.jpg', '天安门');
INSERT INTO `yms_address` VALUES (2, '上海', 20, 'shanghai.jpg', '外滩');
INSERT INTO `yms_address` VALUES (3, '秦皇岛', 30, 'qinhuangdao.jpg', '渤海');
INSERT INTO `yms_address` VALUES (4, '青岛', 40, 'qingdao.jpg', '蓬莱阁');
INSERT INTO `yms_address` VALUES (5, '厦门', 50, 'xiamen.jpg', '鼓浪屿');
INSERT INTO `yms_address` VALUES (6, '成都', 60, 'chengdu.jpg', '杜甫草堂');
INSERT INTO `yms_address` VALUES (7, '杭州', 70, 'hangzhou.jpg', '太子湾');
INSERT INTO `yms_address` VALUES (8, '大连', 80, 'dalian.jpg', '老虎滩');
INSERT INTO `yms_address` VALUES (9, '重庆', 90, 'chongqing.jpg', '洪崖洞');
INSERT INTO `yms_address` VALUES (10, '广州', 100, 'guangzhou.jpg', '广州天际线');

-- ----------------------------
-- Table structure for yms_order
-- ----------------------------
DROP TABLE IF EXISTS `yms_order`;
CREATE TABLE `yms_order`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `r_id` int(11) DEFAULT NULL,
  `o_bgt` date DEFAULT NULL,
  `o_edt` date DEFAULT NULL,
  `o_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`o_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  CONSTRAINT `yms_order_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `yms_room` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `yms_order_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `yms_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_order
-- ----------------------------
INSERT INTO `yms_order` VALUES (1, 1, 1, 50, '2021-10-22', '2021-10-23', '2021-10-22 04:01:19');
INSERT INTO `yms_order` VALUES (2, 1, 2, 45, '2021-10-22', '2021-10-24', '2021-10-22 07:01:42');
INSERT INTO `yms_order` VALUES (3, 1, 3, 25, '2021-10-22', '2021-10-23', '2021-10-22 09:02:02');
INSERT INTO `yms_order` VALUES (4, 1, 4, 3, '2021-10-23', '2021-10-27', '2021-10-22 09:02:12');
INSERT INTO `yms_order` VALUES (5, 1, 5, 8, '2021-11-10', '2021-11-11', '2021-11-11 09:03:14');
INSERT INTO `yms_order` VALUES (6, 1, 6, 6, '2021-10-31', '2021-11-01', '2021-11-01 10:30:25');
INSERT INTO `yms_order` VALUES (7, 2, 1, 33, '2021-10-22', '2021-10-28', '2021-10-23 09:05:02');
INSERT INTO `yms_order` VALUES (8, 2, 2, 44, '2021-10-22', '2021-10-26', '2021-10-23 09:05:07');
INSERT INTO `yms_order` VALUES (9, 2, 3, 22, '2021-10-22', '2021-10-25', '2021-10-23 09:05:10');
INSERT INTO `yms_order` VALUES (10, 2, 4, 5, '2021-10-12', '2021-10-20', '2021-10-30 09:55:42');
INSERT INTO `yms_order` VALUES (11, 2, 5, 9, '2021-10-22', '2021-10-23', '2021-10-23 09:06:27');
INSERT INTO `yms_order` VALUES (12, 2, 6, 2, '2021-10-22', '2021-10-24', '2021-10-23 09:06:31');
INSERT INTO `yms_order` VALUES (13, 3, 1, 36, '2021-10-22', '2021-10-24', '2021-10-23 09:06:23');
INSERT INTO `yms_order` VALUES (14, 3, 2, 40, '2021-10-22', '2021-10-24', '2021-10-22 09:06:34');
INSERT INTO `yms_order` VALUES (15, 3, 3, 15, '2021-10-22', '2021-10-23', '2021-10-22 09:06:37');
INSERT INTO `yms_order` VALUES (16, 3, 4, 26, '2021-10-22', '2021-10-25', '2021-10-22 09:06:39');
INSERT INTO `yms_order` VALUES (17, 3, 5, 31, '2021-10-22', '2021-10-26', '2021-10-22 09:06:42');
INSERT INTO `yms_order` VALUES (18, 3, 6, 26, '2021-10-22', '2021-10-25', '2021-10-22 09:06:44');
INSERT INTO `yms_order` VALUES (19, 4, 1, 41, '2021-10-22', '2021-10-23', '2021-10-22 09:06:49');
INSERT INTO `yms_order` VALUES (20, 4, 2, 28, '2021-10-22', '2021-10-24', '2021-10-22 09:06:52');
INSERT INTO `yms_order` VALUES (21, 4, 3, 27, '2021-10-22', '2021-10-25', '2021-10-23 09:06:54');
INSERT INTO `yms_order` VALUES (22, 4, 4, 39, '2021-10-22', '2021-10-23', '2021-10-22 09:13:31');
INSERT INTO `yms_order` VALUES (23, 4, 5, 11, '2021-10-22', '2021-10-24', '2021-10-22 09:13:33');
INSERT INTO `yms_order` VALUES (24, 4, 6, 1, '2021-10-22', '2021-10-23', '2021-10-22 09:13:35');
INSERT INTO `yms_order` VALUES (25, 5, 1, 6, '2021-10-22', '2021-10-23', '2021-10-22 09:13:37');
INSERT INTO `yms_order` VALUES (26, 5, 2, 8, '2021-10-22', '2021-10-23', '2021-10-22 09:13:42');
INSERT INTO `yms_order` VALUES (27, 5, 3, 47, '2021-10-22', '2021-10-24', '2021-10-22 09:13:40');
INSERT INTO `yms_order` VALUES (28, 5, 4, 18, '2021-10-22', '2021-10-24', '2021-10-22 09:13:50');
INSERT INTO `yms_order` VALUES (29, 5, 5, 14, '2021-10-22', '2021-10-28', '2021-10-22 09:13:45');
INSERT INTO `yms_order` VALUES (30, 5, 6, 17, '2021-10-22', '2021-10-24', '2021-10-23 09:11:30');
INSERT INTO `yms_order` VALUES (31, 6, 1, 16, '2021-10-22', '2021-10-22', '2021-10-23 09:12:53');
INSERT INTO `yms_order` VALUES (32, 6, 2, 29, '2021-10-22', '2021-10-23', '2021-10-24 09:12:47');
INSERT INTO `yms_order` VALUES (33, 6, 3, 47, '2021-10-22', '2021-10-23', '2021-10-23 09:12:39');
INSERT INTO `yms_order` VALUES (34, 6, 4, 43, '2021-10-22', '2021-10-23', '2021-10-23 09:12:31');
INSERT INTO `yms_order` VALUES (35, 6, 5, 41, '2021-10-22', '2021-10-23', '2021-10-23 09:12:33');
INSERT INTO `yms_order` VALUES (36, 6, 6, 49, '2021-10-22', '2021-10-23', '2021-10-23 09:11:39');
INSERT INTO `yms_order` VALUES (37, 7, 1, 23, '2021-10-22', '2021-10-22', '2021-10-23 09:12:20');
INSERT INTO `yms_order` VALUES (38, 7, 2, 45, '2021-10-22', '2021-10-23', '2021-10-22 09:12:13');
INSERT INTO `yms_order` VALUES (39, 7, 3, 36, '2021-10-22', '2021-10-23', '2021-10-23 09:12:08');
INSERT INTO `yms_order` VALUES (40, 7, 4, 37, '2021-10-22', '2021-10-23', '2021-11-05 09:11:43');
INSERT INTO `yms_order` VALUES (41, 7, 5, 43, '2021-10-22', '2021-10-23', '2021-10-23 09:11:52');
INSERT INTO `yms_order` VALUES (42, 7, 6, 42, '2021-10-22', '2021-10-30', '2021-10-10 13:07:07');
INSERT INTO `yms_order` VALUES (43, 8, 1, 19, '2021-10-22', '2021-10-30', '2021-10-15 10:07:38');
INSERT INTO `yms_order` VALUES (44, 8, 2, 5, '2021-10-12', '2021-10-22', '2021-10-13 13:08:01');
INSERT INTO `yms_order` VALUES (45, 8, 3, 36, '2021-10-22', '2021-10-23', '2021-10-23 09:11:10');
INSERT INTO `yms_order` VALUES (46, 8, 4, 17, '2021-10-22', '2021-10-23', '2021-10-24 09:09:34');
INSERT INTO `yms_order` VALUES (47, 8, 5, 29, '2021-10-22', '2021-10-24', '2021-10-30 09:09:44');
INSERT INTO `yms_order` VALUES (48, 8, 6, 18, '2021-10-22', '2021-10-23', '2021-10-23 09:10:52');
INSERT INTO `yms_order` VALUES (49, 9, 1, 12, '2021-10-23', '2021-10-25', '2021-10-23 09:10:58');
INSERT INTO `yms_order` VALUES (50, 9, 2, 23, '2021-10-22', '2021-10-24', '2021-10-23 09:10:44');
INSERT INTO `yms_order` VALUES (51, 9, 3, 46, '2021-10-22', '2021-10-23', '2021-10-23 09:10:37');
INSERT INTO `yms_order` VALUES (52, 9, 4, 37, '2021-10-22', '2021-10-27', '2021-10-23 09:10:25');
INSERT INTO `yms_order` VALUES (53, 9, 5, 17, '2021-10-07', '2021-10-08', '2021-10-06 09:03:58');
INSERT INTO `yms_order` VALUES (54, 9, 6, 42, '2021-10-10', '2021-10-11', '2021-10-10 09:03:32');
INSERT INTO `yms_order` VALUES (55, 10, 1, 26, '2021-10-01', '2021-10-07', '2021-10-01 09:03:23');
INSERT INTO `yms_order` VALUES (56, 10, 2, 32, '2021-10-02', '2021-10-05', '2021-10-01 09:03:10');
INSERT INTO `yms_order` VALUES (57, 10, 3, 37, '2021-10-01', '2021-10-02', '2021-09-30 09:00:43');
INSERT INTO `yms_order` VALUES (58, 10, 4, 36, '2021-09-04', '2021-09-05', '2021-09-03 09:00:28');
INSERT INTO `yms_order` VALUES (59, 10, 5, 2, '2021-09-03', '2021-09-02', '2021-09-01 08:59:50');
INSERT INTO `yms_order` VALUES (60, 10, 6, 47, '2021-07-05', '2021-07-08', '2021-06-29 08:59:41');

-- ----------------------------
-- Table structure for yms_room
-- ----------------------------
DROP TABLE IF EXISTS `yms_room`;
CREATE TABLE `yms_room`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_number` int(11) DEFAULT NULL,
  `title` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(6, 2) DEFAULT NULL,
  `r_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `r_ads` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `r_like` int(11) DEFAULT NULL,
  `r_member` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `d_number`(`d_number`) USING BTREE,
  CONSTRAINT `yms_room_ibfk_1` FOREIGN KEY (`d_number`) REFERENCES `yms_address` (`d_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_room
-- ----------------------------
INSERT INTO `yms_room` VALUES (1, 10, '轻奢风多风格豪华两居三床5-6人', 698.00, '普通公寓', '北京-朝阳区-广渠路36号', 61, 5);
INSERT INTO `yms_room` VALUES (2, 10, '百子湾桥边大成国际公寓短租房-北', 438.00, '普通公寓', '北京-朝阳区-东四环中路80号楼-大成国际公寓', 66, 2);
INSERT INTO `yms_room` VALUES (3, 10, '百子湾大成国际公寓', 518.00, '普通公寓', '北京-朝阳区-东四环中路80号楼', 168, 2);
INSERT INTO `yms_room` VALUES (4, 10, '【这家儿】美式工业风LO', 599.00, '普通公寓', '鲁谷路136号院', 26, 7);
INSERT INTO `yms_room` VALUES (5, 10, '【来宿】（整套Loft）（北欧风', 200.00, 'Loft公寓', '良乡大学城-旭辉天地', 136, 4);
INSERT INTO `yms_room` VALUES (6, 20, '泰安路老洋房徐汇淮海路商圈直达各', 498.00, '老洋房', '泰安路62号二楼', 35, 2);
INSERT INTO `yms_room` VALUES (7, 20, '（网红民宿）迪士尼两站梦幻火烈鸟', 368.00, '普通公寓', '环桥路1137弄', 56, 4);
INSERT INTO `yms_room` VALUES (8, 20, '厢间民宿-202 亲子乐园/儿童', 268.00, '小区住宅', '川沙新镇新春村汤顾家宅88号', 159, 2);
INSERT INTO `yms_room` VALUES (9, 20, '\r\n【迪尚】唐老鸭米奇梦幻主题', 499.00, '客栈名宿', '川沙新镇川图路300号', 193, 4);
INSERT INTO `yms_room` VALUES (10, 20, '（艾莎公主城堡）别墅主题房，大床', 950.00, '独栋别墅', '川沙新镇民义村1542号', 168, 4);
INSERT INTO `yms_room` VALUES (11, 30, '两室两厅独卫家庭自助公寓', 298.00, '普通公寓', '联峰北路12号', 156, 4);
INSERT INTO `yms_room` VALUES (12, 30, '美户吉兰·精品大床', 338.00, '普通公寓', '迎宾路106号', 128, 2);
INSERT INTO `yms_room` VALUES (13, 30, '南戴河避暑花园 近海豪华装修两居', 288.00, '小区住宅', '南戴河-南戴河风景区宁海路与前进路交汇处北200米-避暑花园', 132, 4);
INSERT INTO `yms_room` VALUES (14, 30, '鸽子窝豪装140平榻榻米三室两厅', 138.00, '\r\n普通公寓', '北戴河区-单赤路-东山小区西区', 136, 5);
INSERT INTO `yms_room` VALUES (15, 30, '山海关乐岛海洋公园附近/老龙头/', 416.00, '普通公寓', '山海关区-山海关沟渠-金龙湾小区', 145, 6);
INSERT INTO `yms_room` VALUES (16, 40, '\r\n町说·童心 近金沙滩/啤酒节', 300.00, '普通公寓', '黄岛区-罗浮山路228号-恒大金沙滩公寓', 129, 3);
INSERT INTO `yms_room` VALUES (17, 40, '\r\n一路有你海景民宿【六】『白日', 720.00, '\r\n普通公寓', '市南区-汇泉路17号-东海国际大厦', 58, 6);
INSERT INTO `yms_room` VALUES (18, 40, '火车站/栈桥/天主教堂/复式简约', 180.00, '\r\nLoft公寓', '市南区-四川路23号-金茂湾', 169, 2);
INSERT INTO `yms_room` VALUES (19, 40, '近栈桥火车站醉美海景民宿风两居三', 298.00, '普通公寓', '市南区-四川路19号甲-蓝石海景', 125, 6);
INSERT INTO `yms_room` VALUES (20, 40, '\r\n金沙滩红树林东方影都270度', 326.00, '酒店式公寓', '黄岛区-滨海大道1999号-万达公馆C区', 178, 5);
INSERT INTO `yms_room` VALUES (21, 50, '独栋别墅大碗泳池｜可停车｜KTV', 3499.00, '独栋别墅', '思明区-黄厝村-塔头社', 155, 14);
INSERT INTO `yms_room` VALUES (22, 50, '厦门曾厝垵内丨INS风大床房丨撸', 150.00, '客栈民宿', '思明区-滨海街道-曾厝垵', 166, 2);
INSERT INTO `yms_room` VALUES (23, 50, '艾窝民宿『北欧简约现代』近会展中', 318.00, '小区住宅', '思明区-吕岭路-新景花园', 154, 2);
INSERT INTO `yms_room` VALUES (24, 50, '中山路/轮渡/2大床/日式风情公', 458.00, '普通公寓', '思明区-湖滨西路1号银行中心宾楼-大同学府', 126, 4);
INSERT INTO `yms_room` VALUES (25, 50, '世茂海峡彼岸高端海景 大床房', 528.00, '普通公寓', '思明区-演武西路-世茂海峡大厦', 148, 2);
INSERT INTO `yms_room` VALUES (26, 60, '全景落地窗投影仪大床房/直达东客', 185.00, '普通公寓', '成华区-二仙桥东路48号-鼎城上都', 194, 2);
INSERT INTO `yms_room` VALUES (27, 60, '【风笙】全景拍照打卡/玻璃吊球网', 446.00, '普通公寓', '锦江区-合江亭大慈寺路3号-朗御', 158, 4);
INSERT INTO `yms_room` VALUES (28, 60, '【香槟·粉】春熙路太古里/宽窄巷', 148.00, '酒店式公寓', '青羊区-人民中路三段1号-壹号公馆', 154, 2);
INSERT INTO `yms_room` VALUES (29, 60, '童话院子地铁七号线旁/锦里/主题', 129.00, '普通公寓', '武侯区-晋平街-红运花园', 163, 2);
INSERT INTO `yms_room` VALUES (30, 60, '锦里蝴蝶3床套二武侯祠锦里宽窄巷', 298.00, '小区住宅', '武侯区-武侯祠大街4号- 四川省农业厅', 123, 5);
INSERT INTO `yms_room` VALUES (31, 70, '\r\n丛林秘境 杭州东站-15分钟', 207.00, 'Loft公寓', '江干区-明月桥路与天城路交汇处-东亚新干线', 155, 4);
INSERT INTO `yms_room` VALUES (32, 70, '萧山国际机场时光宜家名宿24小时', 268.00, '普通公寓', '萧山区-靖江街道青六南路1111号-空港新天地', NULL, 2);
INSERT INTO `yms_room` VALUES (33, 70, '【云深】现代风落地窗Loft浙大', 228.00, 'Loft公寓', '拱墅区-石祥路-中铁建国际城', NULL, 2);
INSERT INTO `yms_room` VALUES (34, 70, '近东站 双地铁口 直达西湖 黑白', 308.00, 'Loft公寓', '江干区-笕桥街道天城路-东亚新干线', NULL, 6);
INSERT INTO `yms_room` VALUES (35, 70, '西湖 市中心 地铁口温馨两居室', 399.00, '普通公寓', '上城区-西湖大道-万科金色城品149号', NULL, 6);
INSERT INTO `yms_room` VALUES (36, 80, '【四时海语之202蜜糖】老虎滩海', 1045.00, '客栈民宿', '大连-中山区-滨海东路66号', NULL, 4);
INSERT INTO `yms_room` VALUES (37, 80, '星海广场 地铁1号线 《阁楼上的', 348.00, '小区住宅', ' 大连-沙河口区-星海广场B3区', NULL, 4);
INSERT INTO `yms_room` VALUES (38, 80, 'ins风小公寓 开发区万达广场', 188.00, '普通公寓', '大连-开发区-辽河西路117号-万达广场', NULL, 2);
INSERT INTO `yms_room` VALUES (39, 80, '【海眠?美宿】《念白》高新万达广', 168.00, '小区住宅', '大连-高新园区-万达广场-海景公寓', NULL, 2);
INSERT INTO `yms_room` VALUES (40, 80, '星海音乐喷泉 豪华八人套房', 699.00, '普通公寓', '大连-沙河口区-中山路584号 -东方星海', NULL, 8);
INSERT INTO `yms_room` VALUES (41, 90, '[告白气球]浪漫气球投影房/观音', 198.00, '小区住宅', '重庆-江北区-北城天街46号-九街高屋', NULL, 2);
INSERT INTO `yms_room` VALUES (42, 90, '杨家坪商圈动物园轻轨站豪华两室两', 398.00, '小区住宅', '重庆-九龙坡区-西郊路34号-圣悦新都', NULL, 4);
INSERT INTO `yms_room` VALUES (43, 90, '现代简欧轻奢风投影单居室/磁器口', 211.00, '普通公寓', '重庆-沙坪坝区-金磁路12号-碧桂园摩卡', NULL, 2);
INSERT INTO `yms_room` VALUES (44, 90, '原木北欧解放碑洪崖洞长江索道八一', 300.00, '小区住宅', '重庆-渝中区-解放碑街道民生路5号-美力大厦', NULL, 2);
INSERT INTO `yms_room` VALUES (45, 90, '＜里舍＞•北欧White.Roo', 240.00, '普通公寓', '重庆-渝中区-民权路88号-解放碑一号', NULL, 2);
INSERT INTO `yms_room` VALUES (46, 100, '无死角江景 城景 夜景商务度假', 688.00, '小区住宅', '广州-海珠区-新港东路-琶洲新村', NULL, 2);
INSERT INTO `yms_room` VALUES (47, 100, '广州清远美林湖美築苑', 2980.00, '独栋别墅', '广州-花都区-山前大道-美林湖金色溪谷一路西三街2A', NULL, 11);
INSERT INTO `yms_room` VALUES (48, 100, '科学城美式乡村复古双人大床房整租', 190.00, '普通公寓', '广州-天河区-华观路-万科云城米酷', NULL, 2);
INSERT INTO `yms_room` VALUES (49, 100, '广州南站,长隆景区,复式清新超大', 178.00, '小区住宅', '广州-番禺区-石壁街汉溪大道西283号-奥园越时代广场', NULL, 2);
INSERT INTO `yms_room` VALUES (50, 100, '南洲路 东晓南地铁站2房可住4人', 358.00, '小区住宅', '广州-海珠区-盈丰路106号 -万华花园六星台', NULL, 4);
INSERT INTO `yms_room` VALUES (51, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for yms_room_pic
-- ----------------------------
DROP TABLE IF EXISTS `yms_room_pic`;
CREATE TABLE `yms_room_pic`  (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `yms_room_pic_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `yms_room` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_room_pic
-- ----------------------------
INSERT INTO `yms_room_pic` VALUES (1, 'bjrom1.jpg', 1);
INSERT INTO `yms_room_pic` VALUES (2, 'bjrom2.jpg', 1);
INSERT INTO `yms_room_pic` VALUES (3, 'bjrom3.jpg', 1);
INSERT INTO `yms_room_pic` VALUES (4, 'bjrom4.jpg', 1);
INSERT INTO `yms_room_pic` VALUES (5, 'bjrom5.jpeg', 2);
INSERT INTO `yms_room_pic` VALUES (6, ' bjrom6.jpeg', 2);
INSERT INTO `yms_room_pic` VALUES (7, 'bjrom7.jpeg', 2);
INSERT INTO `yms_room_pic` VALUES (8, 'bjrom8.jpeg', 2);
INSERT INTO `yms_room_pic` VALUES (9, 'bjrom9.jpeg', 3);
INSERT INTO `yms_room_pic` VALUES (10, 'bjrom10.jpeg', 3);
INSERT INTO `yms_room_pic` VALUES (55, 'bjrom11.jpeg', 3);
INSERT INTO `yms_room_pic` VALUES (56, 'bjrom12.jpeg', 3);
INSERT INTO `yms_room_pic` VALUES (57, 'bjrom13.jpg', 4);
INSERT INTO `yms_room_pic` VALUES (58, 'bjrom14.jpg', 4);
INSERT INTO `yms_room_pic` VALUES (59, 'bjrom15.jpg', 4);
INSERT INTO `yms_room_pic` VALUES (60, 'bjrom16.jpg', 4);
INSERT INTO `yms_room_pic` VALUES (61, 'bjrom17.jpg', 5);
INSERT INTO `yms_room_pic` VALUES (62, 'bjrom18.jpg', 5);
INSERT INTO `yms_room_pic` VALUES (63, 'bjrom19.jpg', 5);
INSERT INTO `yms_room_pic` VALUES (64, 'bjrom20.jpg', 5);
INSERT INTO `yms_room_pic` VALUES (65, 'shrom1.jpg', 6);
INSERT INTO `yms_room_pic` VALUES (66, 'shrom2.jpg', 6);
INSERT INTO `yms_room_pic` VALUES (67, 'shrom3.jpg', 6);
INSERT INTO `yms_room_pic` VALUES (68, 'shrom4.jpg', 6);
INSERT INTO `yms_room_pic` VALUES (69, 'shrom5.jpg', 7);
INSERT INTO `yms_room_pic` VALUES (70, 'shrom6.jpg', 7);
INSERT INTO `yms_room_pic` VALUES (71, 'shrom7.jpg', 7);
INSERT INTO `yms_room_pic` VALUES (72, 'rom4.jpg', 7);
INSERT INTO `yms_room_pic` VALUES (73, 'shrom8.jpg', 7);
INSERT INTO `yms_room_pic` VALUES (74, 'shrom9.jpg', 8);
INSERT INTO `yms_room_pic` VALUES (75, 'shrom10.jpg', 8);
INSERT INTO `yms_room_pic` VALUES (76, 'shrom11.jpg', 8);
INSERT INTO `yms_room_pic` VALUES (77, 'rom4.jpg', 8);
INSERT INTO `yms_room_pic` VALUES (78, 'shrom12.jpg', 8);
INSERT INTO `yms_room_pic` VALUES (79, 'shrom13.jpg', 9);
INSERT INTO `yms_room_pic` VALUES (80, 'shrom14.jpg', 9);
INSERT INTO `yms_room_pic` VALUES (81, 'shrom15.jpg', 9);
INSERT INTO `yms_room_pic` VALUES (82, 'shrom16.jpg', 9);
INSERT INTO `yms_room_pic` VALUES (83, 'shrom17.jpg', 10);
INSERT INTO `yms_room_pic` VALUES (84, 'shrom18.jpg', 10);
INSERT INTO `yms_room_pic` VALUES (85, 'shrom19.jpg', 10);
INSERT INTO `yms_room_pic` VALUES (86, 'shrom20.jpg', 10);
INSERT INTO `yms_room_pic` VALUES (87, 'qhd1.jpg', 11);
INSERT INTO `yms_room_pic` VALUES (88, 'qhd2.jpg', 11);
INSERT INTO `yms_room_pic` VALUES (89, 'qhd3.jpg', 11);
INSERT INTO `yms_room_pic` VALUES (90, 'qhd4.jpg', 11);
INSERT INTO `yms_room_pic` VALUES (91, 'qhd5.jpg', 12);
INSERT INTO `yms_room_pic` VALUES (92, 'qhd6.jpg', 12);
INSERT INTO `yms_room_pic` VALUES (93, 'qhd7.jpg', 12);
INSERT INTO `yms_room_pic` VALUES (94, 'qhd8.jpg', 12);
INSERT INTO `yms_room_pic` VALUES (95, 'qhd9.jpeg', 13);
INSERT INTO `yms_room_pic` VALUES (96, 'qhd10.jpeg', 13);
INSERT INTO `yms_room_pic` VALUES (97, 'qhd11.jpeg', 13);
INSERT INTO `yms_room_pic` VALUES (98, 'qhd12.jpeg', 13);
INSERT INTO `yms_room_pic` VALUES (99, 'qhd13.jpg', 14);
INSERT INTO `yms_room_pic` VALUES (100, 'qhd14.jpg', 14);
INSERT INTO `yms_room_pic` VALUES (101, 'qhd15.jpg', 14);
INSERT INTO `yms_room_pic` VALUES (102, 'qhd16.jpg', 14);
INSERT INTO `yms_room_pic` VALUES (103, 'qhd17.jpg', 15);
INSERT INTO `yms_room_pic` VALUES (104, 'qhd18.jpg', 15);
INSERT INTO `yms_room_pic` VALUES (105, 'qhd19.jpg', 15);
INSERT INTO `yms_room_pic` VALUES (106, 'qhd20.jpg', 15);
INSERT INTO `yms_room_pic` VALUES (107, 'a20c65c549334e.jpg', 47);
INSERT INTO `yms_room_pic` VALUES (108, '1de307fea91d4a.jpg', 47);
INSERT INTO `yms_room_pic` VALUES (109, '41d96700f9e841.jpg', 47);
INSERT INTO `yms_room_pic` VALUES (110, '5190107727ad45.jpg', 47);
INSERT INTO `yms_room_pic` VALUES (111, '11de9deda74.jpg', 50);
INSERT INTO `yms_room_pic` VALUES (112, 'f16e3cc996d.jpg', 50);
INSERT INTO `yms_room_pic` VALUES (113, 'fa37bca2556.jpg', 50);
INSERT INTO `yms_room_pic` VALUES (114, '4aeec6ec595.jpg', 50);
INSERT INTO `yms_room_pic` VALUES (115, 'db725df22165.jpg', 49);
INSERT INTO `yms_room_pic` VALUES (116, '12c0e4077953.jpg', 49);
INSERT INTO `yms_room_pic` VALUES (117, '2bdc542027fe4.jpg', 49);
INSERT INTO `yms_room_pic` VALUES (118, 'eb5d81a520094.jpg', 49);
INSERT INTO `yms_room_pic` VALUES (119, '6bc7c54e84dc.jpg', 48);
INSERT INTO `yms_room_pic` VALUES (120, 'ee6e8e2920e2.jpg', 48);
INSERT INTO `yms_room_pic` VALUES (121, '00001c41082c4.jpg', 48);
INSERT INTO `yms_room_pic` VALUES (122, '65e20b3bd726.jpg', 48);
INSERT INTO `yms_room_pic` VALUES (123, 'dea6a2efb81b40f3.jpg', 42);
INSERT INTO `yms_room_pic` VALUES (124, '1c1fc903a7524e878.jpg', 42);
INSERT INTO `yms_room_pic` VALUES (125, '4849dabb46aa42e.jpg', 42);
INSERT INTO `yms_room_pic` VALUES (126, '4af7195a9a744951.jpg', 42);
INSERT INTO `yms_room_pic` VALUES (127, '689b048e2dc04b2.jpg', 41);
INSERT INTO `yms_room_pic` VALUES (128, '0c9a6c1a40f540a4.jpg', 41);
INSERT INTO `yms_room_pic` VALUES (129, '29ddd4bcb1ec422.jpg', 41);
INSERT INTO `yms_room_pic` VALUES (130, '3407905a38fd4488.jpg', 41);
INSERT INTO `yms_room_pic` VALUES (131, 'd85db269ee2243f8.jpg', 40);
INSERT INTO `yms_room_pic` VALUES (132, '0538813484874e25.jpg', 40);
INSERT INTO `yms_room_pic` VALUES (133, '0f6b3798274a483fa.jpg', 40);
INSERT INTO `yms_room_pic` VALUES (134, '2485a9916e68411a.jpg', 40);
INSERT INTO `yms_room_pic` VALUES (135, 'c59c84d327dd4e5e.jpg', 39);
INSERT INTO `yms_room_pic` VALUES (136, '055559d75bf94dcfa.jpg', 39);
INSERT INTO `yms_room_pic` VALUES (137, '3c6a65ee66b746719.jpg', 39);
INSERT INTO `yms_room_pic` VALUES (138, '8a0dfc7903044985.jpg', 39);
INSERT INTO `yms_room_pic` VALUES (139, '88428aa7dcd74dc75.jpg', 38);
INSERT INTO `yms_room_pic` VALUES (140, '48ed1985da32404a.jpg', 38);
INSERT INTO `yms_room_pic` VALUES (141, '867d11a114a34400a.jpg', 38);
INSERT INTO `yms_room_pic` VALUES (142, '9e6414ef4186434d83.jpg', 38);
INSERT INTO `yms_room_pic` VALUES (143, 'b8994197d9f54480b.jpg', 37);
INSERT INTO `yms_room_pic` VALUES (144, '0263b066527847c5a.jpg', 37);
INSERT INTO `yms_room_pic` VALUES (145, '212a0a2faxawxzs1b5.jpg', 37);
INSERT INTO `yms_room_pic` VALUES (146, '56c68af71b224bef84.jpg', 37);
INSERT INTO `yms_room_pic` VALUES (147, 'ad7451aacc0447c595.jpg', 36);
INSERT INTO `yms_room_pic` VALUES (148, '170fed0fee534e859f4.jpg', 36);
INSERT INTO `yms_room_pic` VALUES (149, '30622635b8e84c87a5.jpg', 36);
INSERT INTO `yms_room_pic` VALUES (150, '8f4cdc86d6db46dfb7.jpg', 36);
INSERT INTO `yms_room_pic` VALUES (151, 'qd1.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (152, 'qd2.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (153, 'qd2.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (154, 'qd3.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (155, 'qd4.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (156, 'qd4.jpg', 16);
INSERT INTO `yms_room_pic` VALUES (157, 'qd5.jpg', 17);
INSERT INTO `yms_room_pic` VALUES (158, 'qd6.jpg', 17);
INSERT INTO `yms_room_pic` VALUES (159, 'qd7.jpg', 17);
INSERT INTO `yms_room_pic` VALUES (160, 'qd8.jpg', 17);
INSERT INTO `yms_room_pic` VALUES (161, 'qd9.jpg', 18);
INSERT INTO `yms_room_pic` VALUES (162, 'qd10.jpg', 18);
INSERT INTO `yms_room_pic` VALUES (163, 'qd11.jpg', 18);
INSERT INTO `yms_room_pic` VALUES (164, 'qd12.jpg', 18);
INSERT INTO `yms_room_pic` VALUES (165, 'qd13.jpg', 19);
INSERT INTO `yms_room_pic` VALUES (166, 'qd14.jpg', 19);
INSERT INTO `yms_room_pic` VALUES (167, 'qd15.jpg', 19);
INSERT INTO `yms_room_pic` VALUES (168, 'qd16.jpg', 19);
INSERT INTO `yms_room_pic` VALUES (169, 'qd17.jpg', 20);
INSERT INTO `yms_room_pic` VALUES (170, 'qd18.jpg', 20);
INSERT INTO `yms_room_pic` VALUES (171, 'qd19.jpg', 20);
INSERT INTO `yms_room_pic` VALUES (172, 'qd20.jpg', 20);
INSERT INTO `yms_room_pic` VALUES (173, 'c0c2.jpg_610_385.jpg', 21);
INSERT INTO `yms_room_pic` VALUES (174, '0edafc7b5.jpg_610_385.jpg', 21);
INSERT INTO `yms_room_pic` VALUES (175, '9d.jpg_610_385.jpg', 21);
INSERT INTO `yms_room_pic` VALUES (176, '7.jpg_610_385.jpg', 21);
INSERT INTO `yms_room_pic` VALUES (177, '80622085605384.jpg_610_385.jpg', 22);
INSERT INTO `yms_room_pic` VALUES (178, 'abf20180622085525596.jpg_610_385.jpg', 22);
INSERT INTO `yms_room_pic` VALUES (179, '5720180622085743535.jpg_610_385.jpg', 22);
INSERT INTO `yms_room_pic` VALUES (180, '220180622085754463.jpg_610_385.jpg', 22);
INSERT INTO `yms_room_pic` VALUES (181, NULL, NULL);
INSERT INTO `yms_room_pic` VALUES (182, NULL, NULL);
INSERT INTO `yms_room_pic` VALUES (183, '847f7820180817160732976.jpg_610_385.jpg', 23);
INSERT INTO `yms_room_pic` VALUES (184, '20180817160745586.jpg_610_385.jpg', 23);
INSERT INTO `yms_room_pic` VALUES (185, '0180817160646759.jpg_610_385.jpg', 23);
INSERT INTO `yms_room_pic` VALUES (186, '0180817160756420.jpg_610_385.jpg', 23);
INSERT INTO `yms_room_pic` VALUES (187, '24c32cc.jpg_610_385.jpg', 24);
INSERT INTO `yms_room_pic` VALUES (188, '4dde4eac.jpg_610_385.jpg', 24);
INSERT INTO `yms_room_pic` VALUES (189, '2608b394a.jpg_610_385.jpg', 24);
INSERT INTO `yms_room_pic` VALUES (190, '6a574b8cc1eb.jpg_610_385.jpg', 24);
INSERT INTO `yms_room_pic` VALUES (191, '5b5585c439d0881.jpg_610_385.jpg', 25);
INSERT INTO `yms_room_pic` VALUES (192, 'ae108fe0fd5e7.jpg_610_385.jpg', 25);
INSERT INTO `yms_room_pic` VALUES (193, '218d7.jpg_610_385.jpg', 25);
INSERT INTO `yms_room_pic` VALUES (194, '475eb366c9.jpg_610_385.jpg', 25);
INSERT INTO `yms_room_pic` VALUES (195, '00fbd90e3.jpg_610_385.jpg', 26);
INSERT INTO `yms_room_pic` VALUES (196, '06e596479.jpg_610_385.jpg', 26);
INSERT INTO `yms_room_pic` VALUES (197, '9fdffee.jpg_610_385.jpg', 26);
INSERT INTO `yms_room_pic` VALUES (198, '484c37c.jpg_610_385.jpg', 26);
INSERT INTO `yms_room_pic` VALUES (199, '10c08d59d2634.jpg', 46);
INSERT INTO `yms_room_pic` VALUES (200, '4eeaee38ee5248.jpg', 46);
INSERT INTO `yms_room_pic` VALUES (201, '968011b02f3d41.jpg', 46);
INSERT INTO `yms_room_pic` VALUES (202, 'b0b3036412925.jpg', 46);
INSERT INTO `yms_room_pic` VALUES (203, '37bb3d8efe824.jpg', 45);
INSERT INTO `yms_room_pic` VALUES (204, '55d0123f85d147.jpg', 45);
INSERT INTO `yms_room_pic` VALUES (205, 'dd57e8b0dbbb.jpg', 45);
INSERT INTO `yms_room_pic` VALUES (206, '7a8bf7a2ad104.jpg', 45);
INSERT INTO `yms_room_pic` VALUES (207, '0caa93c1196b40.jpg', 44);
INSERT INTO `yms_room_pic` VALUES (208, '19bff689de54496.jpg', 44);
INSERT INTO `yms_room_pic` VALUES (209, '595a6bef4a1f494.jpg', 44);
INSERT INTO `yms_room_pic` VALUES (210, 'e2923d4b537e4.jpg', 44);
INSERT INTO `yms_room_pic` VALUES (211, '1ab7ce296c24483.jpeg', 43);
INSERT INTO `yms_room_pic` VALUES (212, '22eb45bd1fd9431.jpeg', 43);
INSERT INTO `yms_room_pic` VALUES (213, 'b3920a383bd4447.jpeg', 43);
INSERT INTO `yms_room_pic` VALUES (214, 'f1694debf7cf4e2.jpeg', 43);
INSERT INTO `yms_room_pic` VALUES (215, 'ee16b1e28cbb.jpg_610_385.jpg', 27);
INSERT INTO `yms_room_pic` VALUES (216, 'e16b1e28cbb.jpg_610_385.jpg', 27);
INSERT INTO `yms_room_pic` VALUES (217, '653d7.jpg_610_385.jpg', 27);
INSERT INTO `yms_room_pic` VALUES (218, 'bc3f562.jpg_610_385.jpg', 27);
INSERT INTO `yms_room_pic` VALUES (219, 'a1bcf088.jpg_610_385.jpg', 28);
INSERT INTO `yms_room_pic` VALUES (220, 'fbea1bcf088.jpg_610_385.jpg', 28);
INSERT INTO `yms_room_pic` VALUES (221, 'pg_610_385.jpg', 28);
INSERT INTO `yms_room_pic` VALUES (222, '1e9e39c8178.jpg_610_385.jpg', 28);
INSERT INTO `yms_room_pic` VALUES (223, '26fede2b0.jpg_610_385.jpg', 29);
INSERT INTO `yms_room_pic` VALUES (224, 'e21ad.jpg_610_385.jpg', 29);
INSERT INTO `yms_room_pic` VALUES (225, '7b126a9d.jpg_610_385.jpg', 29);
INSERT INTO `yms_room_pic` VALUES (226, '21c48c79.jpg_610_385.jpg', 29);
INSERT INTO `yms_room_pic` VALUES (227, '9e852de7.jpg_610_385.jpg', 30);
INSERT INTO `yms_room_pic` VALUES (228, '4e443.jpg_610_385.jpg', 30);
INSERT INTO `yms_room_pic` VALUES (229, '4cc5a584.jpg_610_385.jpg', 30);
INSERT INTO `yms_room_pic` VALUES (230, '4b27e62f.jpg_610_385.jpg', 30);
INSERT INTO `yms_room_pic` VALUES (231, 'fb0bccd32c61.jpg_610_385.jpg', 31);
INSERT INTO `yms_room_pic` VALUES (232, 'dcfdf20190115113003952.jpg_610_385.jpg', 31);
INSERT INTO `yms_room_pic` VALUES (233, 'cc20190115112943269.jpg_610_385.jpg', 31);
INSERT INTO `yms_room_pic` VALUES (234, 'b35e41e322.jpg_610_385.jpg', 31);
INSERT INTO `yms_room_pic` VALUES (235, 'b2c5c5bca.jpg_610_385.jpg', 32);
INSERT INTO `yms_room_pic` VALUES (236, 'b1be55.jpg_610_385.jpg', 32);
INSERT INTO `yms_room_pic` VALUES (237, 'ae3c.jpg_610_385.jpg', 32);
INSERT INTO `yms_room_pic` VALUES (238, 'acb35e41e322.jpg_610_385.jpg', 32);
INSERT INTO `yms_room_pic` VALUES (239, 'ac6220180705154435696.jpg_610_385.jpg', 33);
INSERT INTO `yms_room_pic` VALUES (240, 'ab4d2385d9.jpg_610_385.jpg', 33);
INSERT INTO `yms_room_pic` VALUES (241, '620180705154430523.jpg_610_385.jpg', 33);
INSERT INTO `yms_room_pic` VALUES (242, '0180705154518332.jpg_610_385.jpg', 33);
INSERT INTO `yms_room_pic` VALUES (243, '5112924298.jpg_610_385.jpg', 34);
INSERT INTO `yms_room_pic` VALUES (244, '7375ac9ba0d.jpg_610_385.jpg', 34);
INSERT INTO `yms_room_pic` VALUES (245, '4298.jpg_610_385.jpg', 34);
INSERT INTO `yms_room_pic` VALUES (246, '2147ea7aa.jpg_610_385.jpg', 34);
INSERT INTO `yms_room_pic` VALUES (247, '557df334.jpg_610_385.jpg', 35);
INSERT INTO `yms_room_pic` VALUES (248, '33a5d2a0.jpg_610_385.jpg', 35);
INSERT INTO `yms_room_pic` VALUES (249, '31.jpg_610_385.jpg', 35);
INSERT INTO `yms_room_pic` VALUES (250, '8fb0fcc.jpg_610_385.jpg', 35);

-- ----------------------------
-- Table structure for yms_story
-- ----------------------------
DROP TABLE IF EXISTS `yms_story`;
CREATE TABLE `yms_story`  (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `s_text` varchar(16384) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `s_imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  CONSTRAINT `yms_story_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `yms_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_story
-- ----------------------------
INSERT INTO `yms_story` VALUES (0, NULL, '', '[\"lunbo1.jpg\",\"lunbo2.jpg\",\"lunbo3.jpg\",\"lunbo4.jpg\",\"lunbo5.jpg\"]', 3);
INSERT INTO `yms_story` VALUES (1, '1cq.jpg', '超强重庆攻略!喝着豆奶吃火锅,望着江水爬山坡\r\n\r\n近几年，国内的旅游业发展得很快，一到节假日各大景区都是人山人海。对于出行目的地的选择，有人喜欢那些历史悠久的著名景区，有些人喜欢被捧红的热门景区，然而对于热门景区的评价大家都是褒贬不一的。\r\n但是，国内有个几乎零差评的旅游城市——重庆。我们知道重庆，最开始都是因为它火辣辣的美食小吃了，但是仿佛就是一夜之间重庆的景区们就走红了!其中，洪崖洞竟然入围国内旅游热点目的地榜单，排名仅次于故宫！于是我和男朋友去重庆体验一次传说中的零差评旅游城市，走起！\r\n关于交通：\r\n大家都知道，重庆是山城，交通稍微有些不是很方便，爬上爬下的，出行还是坐公共交通吧！\r\n关于住宿：\r\n我们是在有间民宿上找到一家位于重庆渝中区，朝天门广场附近的民宿，我就看中了它的地理位置，走路到长江索道15分钟，到解放碑20分钟，到洪崖洞20分钟。到了民宿，是个很温馨的小家呢！62平，有一个带大飘窗的卧室，带壁炉的客厅，开放式厨房，干湿分区的卫生间以及一个小阳台\r\n关于景点：\r\n磁器口古镇\r\n交通：乘坐轻轨1号线在磁器口站下车，免门票\r\n每个城市都有一条特色的古街，北京有王府井，武汉有户部巷，南京有夫子庙，西安有回民一条街，之于重庆，那磁器口当仁不让。主街上依旧有着浓浓的商业气息，但旁边的小巷子还是别具特色的。\r\n毛血旺、千张皮和椒盐花生是镇上的“美食三绝”。更出名的是“陈麻花”，镇上有很多家“陈麻花”，哪家最正宗？可以看看哪家门店前排队最长。\r\n解放碑步行街\r\n步行街“三多”，商场多，小吃多，美女多。周边的小吃以酸辣粉为主，我点的是好又来酸辣粉，好麻辣啊~~~解放碑真的不愧为重庆的CBD，白天夜晚人都是爆满的，建议来重庆的住在解放碑，路近又方便。解放碑夜晚景色比较好，离洪崖洞也不远，可以去洪崖洞看看夜景~去解放碑步行街听新年钟声，是重庆市民跨年的首选方式之一。\r\n好吃街\r\n在渝中区解放碑八一路\r\n必吃的好又来酸辣粉，那叫一个酸辣，边吃边呼过瘾！小面嘛，几乎每家店都有，味道都差不多，可以试吃一碗，味道还不错。街道两边会有各种烤串的，个人比较推荐烤鱿鱼和烤田螺，多放辣椒，吃着过瘾死了。必吃的山城小汤圆，我个人吃着跟家里边的味道差不多。来重庆必吃的就是麻辣火锅啦，不吃等于白来！我能不能说我是挨个问着味道找个火锅店，哈哈，终于被我找到了这家涝锅火锅店，把特色推荐菜品全点了一遍，过瘾啊，只不过中辣就已经狠辣了。\r\n来重庆必吃的就是麻辣火锅啦，不吃等于白来！我能不能说我是挨个问着味道找个火锅店，哈哈，终于被我找到了这家涝锅火锅店，把特色推荐菜品全点了一遍，过瘾啊，只不过中辣就已经狠辣了。从洪崖洞走出来，一定要走到千厮门嘉陵江大桥上看洪崖洞夜景，美轮美奂。\r\n\r\n长江索道\r\n“不览夜景，未到重庆”，长江索道可以近距离俯看重庆夜景：灯火辉煌的渝中半岛、璀璨夺目的滨江路、波光粼粼的长江水、流光溢彩的跨江大桥，交相辉映。\r\n30块钱往返，这里曾是《极限挑战》的取景点，索道快速滑行的同时，还要记忆旁边大楼上的字，着实是有些刺激。一列车里拥着很多人，想要占据好位置拍照时，还要靠运气才行。\r\n南山一棵树观景台\r\n来南山一棵树最好的方式是坐公交到四中站下车，然后往回沿着公交刚才来的方向走900多米就到了，门票特别贵，30块一张，严重吐槽！\r\n鹅岭\r\n公园免费的，地铁1号线鹅岭站出口往鹅岭小学走。被《从你的全世界路过》电影带火，很多文艺青年都来这里拍照！\r\n梦幻奥陶纪\r\n一个抖音捧红的地方，注意景区内很多大项目都是有身高，体重限制的， 尤其是悬崖秋千，上去之前还要测量血压，称体重，合格才可以（小的4米的不用），但景区只有通票，游乐项目不单卖票的。\r\n不要大雾天去！不要节假日去！看好天气，大雾没了刺激的感觉。节假日人太多，排队三小时，享受一分钟！怕玻璃栈道的，建议先荡秋千，就什么都不怕啦哈哈哈\r\n四川美院涂鸦街\r\n地点：重庆市九龙坡区黄桷坪四川美术学院\r\n交通：轻轨二号线杨家坪站下车打车过去\r\n门票：无\r\n长度不过几百米左右，但是沿街大楼全被画上了各种涂鸦，乍一看，还以为来到了美国纽约。这些画大多色彩鲜艳，内容抽象，大多是比较新奇的图案，有种后现代loft的风格。逛完涂鸦街还可以去这条街上吃有名的梯坎豆花饭，叫上一碗豆花，就着麻辣的蘸水，新鲜的豆汁与米香混合在一起，与当地人混迹一起吃食，倒是很有一种本地风情。逛完涂鸦街还可以去这条街上吃有名的梯坎豆花饭，叫上一碗豆花，就着麻辣的蘸水，新鲜的豆汁与米香混合在一起，与当地人混迹一起吃食，倒是很有一种本地风情', '[\"1cq1.jpg\",1cq2.jpg\"]', 5);
INSERT INTO `yms_story` VALUES (2, '2sh.jpg', '创新与传承 欣赏新老上海的完美融合 上海3日游\r\n上海滩、大上海、夜上海，这些词语让人浮想到上海之前的繁华景象；外滩、东方明珠等又代表着上海如今翻天覆地的变化。既有对古老文化的传承，又有随着改革开放和科技进步所带来的创新变化，这也许就是上海这个城市的魅力所在吧。\r\n这次借着公司福利，有机会来欣赏一下上海新老交汇的完美融合。一共3天时间，大家可以自由活动。（PS：虽然是公司组织，但是公司还是很尊重大家的意愿，除了路上往返和住宿之外的时间，大家都可以选择自由行。）\r\n前一天晚上到达上海，整顿休憩。我跟同屋的小伙伴最后确认一下首日出行线路，期待着明天的大上海之行。\r\n\r\nDAY1： 豫园 > 上海城隍庙 > 杜莎夫人蜡像馆 > 南京路步行街 > 外滩\r\n游玩的第一天，就先从附近的景点开始。今天游玩的线路，主要是感受上海文化、品尝特色小吃以及欣赏外滩夜景。\r\n第一站先到豫园。这里是全国四大文化市场之一，里面各种古建筑，让你感觉仿佛穿越来到了百年之前上海的繁华集市。园子里有明代京南园林建筑风格的景观，感兴趣的可以多转转多看看，其实还蛮有意思的。\r\n从豫园出来前往上海城隍庙，虽然不是假期，但路上还是可以看到熙熙攘攘的人群，顺便解决一下午饭。这里真是美食的天堂，各种小吃让你吃到过瘾，据说这里完全可以媲美济南的芙蓉街和西安的回民街，绝对不虚此行。\r\n西洋镜\r\n吃得饱饱的前往人民广场搭乘地铁，顺便消食，有幸看到了人民广场的喷泉，一堆小孩子在那里玩得很开心。\r\n坐地铁前往杜莎夫人蜡像馆，这里真是个拍照的好地方，你可以和你喜欢的各种明星名人的蜡像合影，一阵狂拍之后，我和小伙伴莫名的都有一种明星的感觉，两个人忍不住笑了。\r\n从蜡像馆出来，天色逐渐暗下来，在南京步行街上吃吃喝喝散散步，在外滩欣赏黄浦江的美景，东方明珠也是美不胜收，我跟小伙伴看的都有点恋恋不舍。\r\n晚上回到住处，同事们有的已经回来了，大家坐在客厅里一起聊聊今天去过的景点和见闻，相互分享着出游的喜悦，这是跟以前住酒店感觉非常不同的，这一次必须给老板选的民宿点个赞。而且，房间装修真的很漂亮哦，我们都很喜欢，大家趁着这次难得的机会住在一起，深入了解，加深革命友谊，简直完美。\r\n客厅，这是入住之前拍的，后来就成为了大家畅聊的根据地\r\n我们分到的民族风卧室,白屋里的一抹绿很亮眼哦\r\nDAY2： 东方明珠广播电视塔 > 金茂大厦 > 上海环球金融中心 > 田子坊\r\n第二天的主题是感受大都市的繁华。早上坐地铁前往浦东新区黄浦江畔的陆家嘴金融贸易区，观摩东方明珠电视塔、金茂大厦和环球金融中心。这三个景点离得很近，都可以买票登高观光。当然我们是三个都去了，那我就说说自己的感受。东方明珠电视塔建议上去，虽然高度比较低，但是这里属于上海历史博物馆的一部分，有玻璃地坪，还有很多适合大人和孩子游玩的设施，可以多玩一会。金茂大厦是最无聊的一个，可以忽略。上海环球金融中心呢，是目前中国最高的观景台，当然票价也是最贵的，这里也有透明玻璃地板，恐高的就不要考虑的，其实还蛮恐怖的，当然，这里也是观赏东方明珠的最佳视角，你可以俯瞰上海的灯火辉煌（可惜我们登顶的时候还是白天）。\r\n登过三个观光塔之后，去田子坊体会一下小资的文艺气息。女生嘛，对于这种地方总是没有什么抵抗力的，值得一去哦。\r\nDAY3：徐家汇天主教堂 > 静安古寺 > 外白渡桥 > 回程\r\n本来是打算去世博会园区看看的，但是听说大部分场馆都拆了，目前只有世博会纪念展（原城市足迹馆址）开放，由于兴趣不大，担心时间紧张没有去。房东知道我们是第三天晚上的返程机票，提前跟我们说，可以把行李寄存在他这里，方便游玩，房东人真的超级好哦。\r\n第三天我们直接去参观徐家汇天主教堂，它是中国著名的天主教堂，也是国内为数不多可以举行教堂婚礼的地方。这里属于仿法国中世纪哥特建筑，十分特别，攻略里说如果能遇到有人在这里办婚礼，也可以见证一对新人共同迈入婚姻殿堂，也是一件很开心的事情。只可惜我们去的时候，它还在修葺中。\r\n外白渡桥\r\n远观整个大桥\r\n最后一天的行程安排比较松，在走走停停中感受上海风情，虽然这几天都不是晴天，也没有去迪士尼乐园，但是我想以后还有机会来玩，上海，期待我们的下一次相见吧！', '[\"2sh1.jpg\",2bj2.jpg\"]', 8);
INSERT INTO `yms_story` VALUES (3, '3bj.jpg', '北京深秋的味道\r\n【北京的秋天】\r\n不想去做景点的沙丁鱼罐头，我选择在这个时节来到北京。\r\n北京的秋天，很短暂。半个月不到的时间，一场雨，从短袖，短裙就可以直接过渡到长袖、长裤。刚刚从一场大雨中苏醒，风吹过的街道，还留下阵阵凉气。傻傻的我穿着短裙，举着湿漉漉的雨伞，漫步在北京的街头。\r\n站在天桥上，看到的是川流不息的车和人群，形色匆匆，如同这个忙碌的城市。\r\n而我，一个游客，一个局外人，才会静静的站在这里，看着北京这个城市在我眼前，忙碌。\r\n\r\n【寂静的故宫】\r\n雨后的天空有着不一样的蓝色，棉花糖一般的白云将天空装点的像是壁画一样漂亮。我站在太和殿前的广场上，看着一朵云和阳光从金色的屋顶走过，时光的轨迹印刻在这座金黄与朱红的宫殿间，斗转星移。\r\n\r\n穿过狭长的走廊，从一间院子到另一个屋里。脑海中想起电视剧里的场景。多少悲欢离合、尔虞我诈、勾心斗角在这里上演。女人与女人之间的战争，就在这方寸之间，你生我死。\r\n这一座座小院里的时光像是静止一般，日复一日的重复。阳光洒落的位置，千年不变，唯一只有时空的变换。\r\n\r\n【生机的古巷】\r\n南锣鼓巷，一个已经被商业化的古典胡同，曾经老北京的气息已经荡然无存。走在这里，感受到的只有新新世界的繁华。\r\n左手边的奶茶店，右手边的饰品店。穿着着古典外衣的小巷，繁华而喧嚣。\r\n夜幕下的南锣鼓巷，正迎来一批批的游客。我站在这里，心却在时光里。\r\n\r\n那些曾经住在这里的北京人，那些满口的京味，都已经流走，时光剩下的只是这一栋栋的建筑。繁华过后，换上新的衣装，这里又是人们欢聚的地方。\r\n\r\n【北京的老院子】\r\n走过灰色的小巷，穿过朱红的大门，踏入其中，看见一院子的时光印记。这里就是老北京胡同。\r\n住在这里，睡上床榻，夜晚，没有都市的喧嚣与热闹，只留下一片寂静和偶尔的犬吠。\r\n舒适的大床、安静的环境、古典的气氛，好似穿越一般，让人觉得醒来，又回到清明两代。\r\n亲切的房东，便捷的交通，便利的设施又把你拉回这繁华的现代。\r\n闹中取静，门里门外，两个世界。\r\n住在四合院里，关上门，整个世界仿佛只剩下自己。坐在院子里，看着日升月落，品一壶茶，感时光流逝。', '[\"3bj1.jpg\",3bj2.jpg\"]', 7);
INSERT INTO `yms_story` VALUES (4, '4km.jpg', '温润如玉 迟来的云南昆明二日游\r\n转眼毕业已经三年多，恰逢昆明的铁哥们大婚，再有机会相聚。依稀记得大学时期的聚餐中，众北方人表现出对南方的无限向往之后，他曾信誓旦旦地表示有机会带大家逛逛美丽的春城。学生时期的诺言，他却依然记得，就足够令人感动。\r\n他提前在有间民宿上帮我们定的房子，就在他家小区里，还有免费的接机服务，房东大叔人也很好，房子更是我喜欢的小清新风格，不得不说，要结婚的人越来越心细了。婚礼举办之后，稍作休整。第二天便开启了我们迟来的云南昆明二日游。\r\n游玩第一天： 翠湖公园 云南大学 讲武堂 文林街 金马碧鸡坊\r\n第一天行程主要在昆明市里。早起，吃过早饭之后，迎着朝阳，我们来到了昆明市中心的翠湖公园。听说每年11月到次年3月，这里都会聚集大批的红嘴鸥。另外，对于习惯了冬天雾霾天气的北方人来说，这里的空气简直是好到爆棚。逛逛公园，拍拍海鸥，让人觉得很惬意。\r\n杭州有翠堤春晓，这里有翠湖春晓\r\n从翠湖公园的南门出来，云南大学就在不远处。不得不说，云大的校园古香古色，让人流连忘返。校园里除了盛开的鲜艳花朵，还有成群的小松鼠，丝毫不怕人，甚是可爱。\r\n从云南大学出来，我们直奔讲武堂。不得不说，这座历经百年风雨的老四合院，除了给人古色古香的感觉之外，似乎还自带强大气场。这里其实就是一个军校博物馆，还有免费的讲解，让你对这里有更多的认识和了解。听完讲解，我对于这个黄色建筑的敬畏之情油然而生。（讲武堂）\r\n东陆书院\r\n午饭肯定是要吃些云南特色的，米线和汽锅鸡必不可少，味道都还不错，但是强烈推荐汽锅鸡，肉质酥软，鸡汤鲜嫩。\r\n下午去到了金马碧鸡坊，这里简直是吃货的福地，这里汇聚了许多各色小吃，让你吃到停不下来。来到金马碧鸡坊，才知道名字的由来，是因为有金马河碧鸡的两个牌坊得名，据说这里始建于明朝，距今有四百年历史。其实是因为看过《遇见王沥川》，对于金马碧鸡坊有着特殊的情感，还一起去吃了同款的老滇味过桥米线。这一天，也算是圆满了。\r\n游玩第二天：石林九乡\r\n第二天，老同学开车，我们直奔石林九乡。听他说，只要是昆明人，都有小时候被大人带着来这里玩的记忆。这里距离市区100公里，特别适合集体出游，也是他特别推荐的一个地方。\r\n这里的喀斯特地貌非常有特点，是非常珍贵的剑状喀斯特地质，景区里小景点随处可见，让人咋舌兴奋。老同学建议，清晨早些出发，可留出足够的时间游览。\r\n车统一都要停在在距离景区3公里的停车场，然后步行到景区，这样不会打扰景区的静谧，更好的保留景区自身的特点。\r\n进到景区里面，能看到有些出来玩的家庭，三五一群坐在草坪或者树荫下听鸟语闻花香，还有的打牌、野餐，会让整个人都安静许多。绝对是一个度假郊游的好去处。\r\n地下看九乡，神奇的喀斯特地貌\r\n昆明四季如春，温润的气候也养成了昆明人喜欢缓慢而温情的游玩及生活方式。如果你打算来云南游玩，不妨就像当地人一样，多给昆明一点时间和耐心，慢慢去品味她历久弥新的人文气质和千般美意，相信你也会跟我一样爱上这里。', '[\"4km1.jpg\",4km2.jpg\"]', 5);
INSERT INTO `yms_story` VALUES (5, '5xa.jpg', '西安，西安\r\n对西安的向往全来自于在那里上学的高中同学，她是我高中最好的闺蜜，比如城墙，比如兵马俑，比如羊肉泡馍···\r\n闺蜜因为宿舍考研，害怕影响其他人休息，便帮我预定了木鸟短租的房东，这是我第一次住在一个完全陌生人的房子，接通房东电话时候，那颗小心脏扑通扑通跳，讲电话的声音是个爽快的女性，告诉我怎么坐车到，还问我有没有人来车站接我，其实包括我在内的中国人一直都是不怎么习惯和陌生人接触的，但她让我舒服。\r\n到了以后，我和闺蜜住的标间，房间还算干净，比酒店要便宜好多，最主要的是离钟楼比较近。房东姐姐挺好的，像朋友一样聊天，闺蜜没到的时候，她怕我无聊，告诉我wifi密码，推荐我去吃楼下的美食街逛下，很贴心，感觉像是认识很久了一样。\r\n好久没见闺蜜了，这娃果然在西安养胖不少。第一站必然是离住的地方很近的钟鼓楼和回民街觅食。\r\n我和闺蜜属于一张嘴就停不下来那种货，但我俩最明智的就是少吃多餐，在这种原则的支撑之下，我们吃一半就吃不动了，因为真的很好吃，各种羊肉泡馍，当然老米家泡馍还是我的最爱。本次觅食真的弥补了我在火车站的各种肚子饿。\r\n第二天逛了北院门144号以及陕西博物馆，虽然景点不多，但是最重要的是对于文科生而言，特别是对一个喜欢古历史的我而言，这些景点都是非常长见识的，且非常费时间的，中午还是在回民街解决了吃饭问题，乘坐了西安的地铁公交。\r\n晚饭过后登上了钟楼，晚上景色非常美，但我不合时宜的非常肚子痛，闺蜜笑骂我，关键时刻掉链子，但还是非常细心的照顾我。\r\n\r\n第三天天气有点热，闺蜜带我一日游兵马俑，半坡遗址、华清池和骊山，有闺蜜在，再也不担心被宰了，来西安上述景点还是要看的，否则就和没来一样。\r\n因为今天的行程安排的比较满，就像赶鸭子一样的走马观花游览景点。下午走不动了便打算去闺蜜的学校参观下，很漂亮的学校，图书馆非常壮观，用闺蜜的卡进去溜了一圈，暑假的学生自习热情依然很高，回到家都将近十点了，在此非常感谢房东姐姐给准备的茶水，那么晚回家都没有责备我们。\r\n同样来西安，女生最要去的就是城墙。因为西安最适合拍照的好地方莫过于城墙了，城墙有很多租单车的地方，骑上单车俩人自由自在的游览自拍，当然又是走回去回民街解决的吃饭问题，钟鼓楼简直是我的最爱，这次还不小心吃到了裤带面，分量非常足，耐饱，关键是好吃。\r\n在西安的七天之旅瞬间结束了，好不舍得。闺蜜对历史是不怎么感兴趣的，但是为了我，她还是非常有耐心的陪伴我。对于陌生的热情我一开始是拒绝的，但这个房东姐姐让我很舒服。对于这场看似流水账的七天，收获的那份历史历史敬畏感或许只有我知道，感谢西安，感谢我遇到的一切。', '[\"5xa1.jpg\",5xa2.jpg\"]', 6);
INSERT INTO `yms_story` VALUES (6, '6heb.jpg', '邂逅冰天雪地的浪漫 哈尔滨4日游\r\n作为一个北方姑娘，我并未感受过零下三十度的寒冬，却对于这样的温度有着迷之向往。哈尔滨，一个零下几十度的北方城市，终于有机会和你亲密接触了。\r\n初到哈尔滨，扑面而来的冷气让我颤栗，呼啸的北风拂面，真的有种刀割的感觉，第一次，对于小学语文课上的造句“风吹到脸上像刀割一样”有了真实体会，so，提醒一下冬天到哈尔滨的朋友们，保暖工作是必须要做的，手套、帽子、口罩缺一不可哦！\r\nDAY1：索菲亚大教堂——中央大街\r\n提前在木鸟短租上定的房子，订房的时候房东已经贴心推荐了各种保暖设备，才省去到这里之后临时购置的麻烦，房间位置在中央大街附近，很繁华，交通也很方便。放下行李，就近逛逛，步行前往中央大街。\r\n中央大街人真的超级多哎，据说这里是亚洲最大的步行街，这里不仅仅是单纯的购物街，周围的建筑也是年代久远，欧式、仿欧式、巴洛克式建筑应有尽有，使得中央大街也成为了一条建筑的艺术长廊。\r\n马迭尔冰棍前排的长队，超级火爆，各种口味的冰糖葫芦\r\n来中央大街一定要吃的就是马迭尔冰棍，试想一下在零下20多度的室外吃冰棍是一种怎样的体验，这冰凉简直无法用语言形容。这里还有各式各样的小吃，走走停停逛逛街，也是个不错的选择。\r\n逛完中央大街，直奔索菲亚大教堂。出门之前，房东告诉我们，这两个地方间隔不远，步行就能到，省去了坐车的麻烦。这里是典型的俄式建筑，洋葱头的造型还是很可爱的。教堂里面主要是哈尔滨的发展历史呈现，教堂外面有鸽子或飞翔或低头觅食，教堂加鸽子，立马有信仰的感觉，其实单看这个教堂，也还是很美的。哈尔滨的冬天天黑的早，有幸拍到了教堂的夜景图。教堂内饰，豪华顶灯，教堂外景鸽子一角，晚上的教堂别有一番韵味\r\n第一天的行程比较简单，晚上回到住处，房东的屋子简直暖和的像天堂，听房东说，东北就是这样，屋里屋外两极天。屋里的装修温馨又温暖，我很喜欢哦。\r\nDAY2：极地馆——冰雪大世界\r\n第二天，我们来到哈尔滨极地馆。这里的极地生物种类繁多，大都很好可爱，还有海狮表演，最震撼人的就是那个海洋之心的表演，需要人和白鲸足够默契的配合，据说水下温度也非常低，对于表演者来说也是个极大的考验。我只想说，我看了2遍表演没看够，真真是太精彩了，绝对推荐。门票150元，还是很值的，里面可以看到的动物和表演还是很多的。哈尔滨极地馆，精彩的海狮表演，梦幻水母，震撼的海洋之心压轴\r\n从极地馆出来，凭借门票可以搭乘免费的车到冰雪大世界。冰雪大世界的夜景也超级美的，建议最好下午过去，多玩一会，还可以看夜景。我们去的比较晚，据说有免费滑雪的地方，但那时候已经关闭了。冰雪大世界人也巨多，门票300元一个人，学生票有专门的购买通道，检查非常之严格。冰雪大世界里有许多冰滑梯，超级好玩，有大有小，有一个最大的，滑下去大概要3~5分钟，超级过瘾，不过排队的人也很多，推荐一定要玩。当然，也有一些室内的表演是免费的，俄罗斯风情表演等等，各种冰雕，将近零下30度，玩了4个小时的两个人均表示没玩够，我们是一直到闭馆才走的。冰雪大世界占地面积之大，可以多留出些游玩时间。\r\n冰雪大世界夜景，哈尔滨冰雪大世界入口处，真的是零下28度哦，巨大滑梯一角，绝对值得一玩\r\nDAY3-4：龙江公路——雪乡大雪谷——雪乡——梦幻家园\r\n随着爸爸去哪儿的热播，一直心心念念想去雪乡看看。因为雪乡不属于哈尔滨市，而是海林市，路况不好，房东建议我们跟团出游，也给我们简单讲了讲参团注意事项。导游虽然有些坑，但是这并不足以影响我们出游的心情。\r\n雪乡真的是一个很美的地方，我们去的时候恰逢大雪纷飞，雪中的雪乡别有一番味道，冒雪登顶梦幻家园，俯瞰整个雪乡，雾蒙蒙一片，我想要是晴天一定很美吧。\r\n雪的厚度真是到大腿根哦\r\n两天的雪乡之旅结束，也为我们这次哈尔滨之行划上了一个句号。虽然是去年的事情，但是这些场景记忆犹新，好像发生在昨天一样。冬天的哈尔滨虽然是最冷的时候，却也是最美的时候。约上三五好友，一起去哈尔滨吧，感受一下冰天雪地的浪漫，你一定会不虚此行！', '[\"6heb1.jpg\",6heb2.jpg\"]', 9);
INSERT INTO `yms_story` VALUES (7, '7sy.jpg', '忘了三亚这才是吃货天堂\r\n民宿老板接到我们之后一上来就问：“你们是来海口玩吗？但是我们海口没什么好玩的，就主要是吃东西啦！”\r\n那一瞬间，我觉得我选对了旅行地，选对了民宿，看好老板！\r\n老板说，作为海口人，我建议你们海鲜尝一次就好了。我想推荐给你们的是我们本地人回去吃的东西。\r\n我说，我也有一根想要去吃的海口小吃清单。\r\n然后，我们就像地下党接头一样对了一边暗号，我的海口美食之旅就这样正式开始了。\r\n俗话说得好，民以食为天。去到一个陌生的城市，探索当地美食才是一段旅程中最重要的环节之一。而我，怎么就是管不住自己的嘴，作为一名热爱旅行的吃货，真的不能放弃任何一个地区的美食，从云南吃到重庆，从香港吃到吉林，从西安吃到了现在的这里——海口。\r\n这次的旅行本是订好了酒店，但因为临时多一个同行的伙伴，一共三个人，这就让我为难了。订一间房因为酒店的床本来就不大，三个人没有办法住开，而订两间高昂的酒店费用占到我们此次旅行总费用的将近一半，这当然不是明智的选择。考虑过后，决定试试朋友之前说过的民宿，在木鸟短租上输入“海口”真的有好多很漂亮的民宿跳出来在眼前，而且性价比总体来说很高，不过起初会担心房源的真实性，但入住之后才发现担忧其实是多余的。\r\n这就是我们这次在海口住的木鸟短租的民宿了，318元一晚，人均100，简直不能再实惠了！小区里边就像是花园一样，花团锦簇，在蓝天白云的映衬下，好像是一幅美丽的画卷在眼前展开。\r\n客厅外边还有一个大大的露天阳台，超喜欢蓝天白云微风的我当然不能放过这个尽情享受的机会。从外边吃的回来，就会一头扎进阳台，一个人坐在这里发呆，风吹过来，眯起眼睛看整个海口景色，真的可以忘记所有的烦恼。\r\n言归正传，说一下这次最大的收获吧。在和木鸟短租民宿房东核对“美食清单”的时候，他极力推荐我把“辣汤饭”放在最后品尝，理由也可以说是非常有道理了，他说“你吃完这个就不想吃其他的了，所有一定要最后吃，才不会遗憾。”\r\n遵从房东的嘱咐，我真的最后选择了吃辣汤饭，而这一吃，真的就忘不掉了。\r\n骑楼水巷口一条街都是辣汤饭店，而且每一间都是老字号：陈记、姚记、梁记，说是饭店，其实不过是骑楼下的一间间小铺，除了辣汤饭，还可以任选小菜，一般默认的选项就是辣肠和煎蛋。\r\n辣汤饭其实就是酸菜猪杂汤配饭，传说是从前海口开埠时，码头工人们的早餐，用来补足一天所需的能量。\r\n猪杂汤里有猪肚猪心猪肝猪小肠和猪血，满满一大碗但是汤很清澈，一点都不油腻。内脏处理得很干净，炖到软烂，配菜都是小小一碟，味道却并不马虎。热滚滚的汤里有浓浓的胡椒香，一口喝下去感觉因为头一天胡吃海塞紧绷着的胃一下子就舒展开来了。', '[\"7sy1.jpg\",7sy2.jpg\"]', 2);
INSERT INTO `yms_story` VALUES (8, '8cd.jpg', '去成都吃火锅住民宿\r\n刘程是我的发小，读完高中死活不想上学了，于是便给自家的小厂做起了苦工，但毕竟是自己家的厂子，苦活哪轮得到他干，无非是开车送送货见见客户而已，搁北京这就是一顽主。\r\n上周抽空去他家找他玩，还没进门就听见了屋里大音响放着赵雷的“成都”，哥们正横在床上唉声叹气，我给了他一拳：“又瞎矫情什么呢。”\r\n刘程作黛玉状，张口跟着音响唱了起来：“和我在成都的街头走一走喔哦喔哦~”\r\n“也就是我跟你熟，要搁别人，早吐你一身了。”\r\n他这才正常了起来，换了一个方向继续横着：“林哥，你说咱什么时候也去一趟成都啊。”\r\n我一听感情这丫是想出去浪了，于是回他：“你想去我就陪你去，没事少在家瞎矫情。”\r\n他从床上坐了起来：“不过我听说成都的酒店可一点不比咱这便宜啊，咱俩去这一趟得造多少钱呐。”\r\n我打开手机，亮到他眼前：“看见没有，哥们最近发现一新大陆。”\r\n刘程很兴奋：“你这壁纸真不错，这你新交的女朋友啊。”\r\n我夺过手机：“废什么话啊，让你看这软件呢，木鸟短租，这上边租房特合适，我这就给咱定一成都的民宿，明天咱就启程南下。”\r\n第二天收拾妥当，刘程开上他爸的七座神车，拉上我一路往南开，刘程只开到高速口就和我换了过来，说昨天太兴奋没睡着觉，要在车上补一觉，去了成都好有精力玩，九个半小时路程，终于赶到了歌里的成都。\r\n从木鸟短租找到房东电话，驱车赶往住处，一下车浓浓的文艺气息铺面而来，首先映入眼帘的就是下边那个橘色单车。\r\n再往里走，见到了这家民宿的房东，房东姓徐，年近六十，不到一米七的个头倒也显得十分硬朗，是一个退了休的某外企高管，家里恰逢拆迁，房本加起来应该有手机那么高，是竖着的手机。\r\n我们作完自我介绍，老徐笑呵呵的说：“你们也别见外，就叫我老徐吧。”\r\n我俩受宠若惊：“别别别，徐叔徐叔，还是叫徐叔。”\r\n老徐边介绍边带我们走进室内，一进屋刘程邪恶的和我对视一眼，我当然懂他的意思“这房间，怎么说呢，很情趣。”\r\n\r\n我还是不禁问出了我心中的疑问：“徐叔，您现在也算是不愁吃喝了，还办这民宿干嘛呀。”\r\n老徐像是早会料到我会这么问，他递给我一杯水，说：“经常有人这么问我，我也承认，我现在是有一些积蓄，开这家民宿呢，也不算是爱好，就是这人一上了年纪吧，总是需要一些朝气来支撑的，来成都玩的都是年轻人，我喜欢年轻人。”\r\n刘程在旁边似懂非懂的点了点头，然后把包放下，老徐接了一个电话，安排好我们住处后就离开了。\r\n我俩随便转了转，刘程一脸深沉的跟我说：“你还别说，这木鸟短租还真挺适合情侣租房呢。”\r\n我让他滚，然后来到阳台，阳台放着一副不知画没画完的画，应该是上一家租户留下的，坐在一个小单人沙发上，旁边的桌子上摆着盆栽，阳光洒进来，那一刻感觉很好，如果把刘程换成女朋友就更好了，我心想。\r\n\r\n刘程走过来挤在沙发边上，打破了这份意境，“老林，听说成都被称为成姆斯特丹， 既然是成姆斯特丹，那这里的火锅一定棒棒的。”\r\n我把他踹下去：“你这什么鬼逻辑？”\r\n他掩面哭泣：“还说是我好基友，连我想吃火锅都看不出来！”\r\n“晚上就去晚上就去。”谁让我是他好基友呢。\r\n头饭点刘程非得拉着我去问问老徐哪的火锅好吃，我告诉他，这里是成都，哪儿的火锅都好吃，结果拗不过他，老徐一听我们要吃火锅就来劲了，强烈推荐我们去水碾河北二街上的那家。\r\n晚上6点刚过，刘程叫的车就到了，我也只好答应现在就去。\r\n走了大概半小时，来到了老徐推荐的这家火锅店。\r\n火锅店不大，但不难看出这家店生意的火爆，我们来的够早了，还是差点没位子。\r\n架锅上菜，当我看到这一锅辣椒时，第一反应竟然不是辣，而是一定贼香。\r\n\r\n我还在拍照，刘程的肉已经烫好了，扔进干碟里胡乱搅拌一通，然后塞进嘴里一脸满足。\r\n\r\n这点我和他不一样，我还是比较喜欢吃油碟，倒上香油，放蒜蓉、椒盐、味精、耗油、葱花、香菜，我有一个特别的习惯，葱花香菜单独哪个我都不爱吃，但当这两样碰在一起的时候，味道就发生了神奇的化学反应，这或许也是我爱吃煎饼的原因。\r\n\r\n两个人吃到九点，刘程拍着肚子说：“能吃到这么正宗的火锅，也不虚老夫此行了，那么接下来，咱们去哪里。”\r\n我也撑得走不动道：“你还有兴致呢，你不是昨天就没睡吗。”\r\n刘程把手搭在我肩上：“人生怎么能把时间浪费在睡觉上呢，走，去酒吧！”\r\n回来已是半夜两点，这时刘程告诉我：“林哥我先睡了啊，我昨天晚上就没睡。”\r\n呼噜声是在“睡”字的三秒后响起，我也撑不住了，躺下便睡了过去。\r\n接下来的几天，我们又去了宽窄巷子、春熙路、玉林路，玉林路是刘程非拉着我去的，美其名曰：感受一下赵雷歌里的成都。???????\r\n很快，到了要离开的日子，这时再听《成都》，似乎是另一首歌了，“成都，带不走的，只有你。”\r\n我想这个“你”并不是指姑娘，而是成都的路，成都的夜，还有对成都的牵绊。\r\n老徐把我们送到门口，刘程递给老徐一支烟，老徐摆摆手：“早就戒了，你们路上注意安全，下次来成都还住我这。”\r\n告别了老徐，告别了成都，车上刘程问我：“林哥，我咋没见房东退你押金呢？”\r\n我白了他一眼：“乡巴佬了吧，哥们芝麻信用早就过六百了，木鸟短租上免押金。”', '[\"8cd1.jpg\",8cd2.jpg\"]', 1);
INSERT INTO `yms_story` VALUES (9, '9gz.jpg', '带上闺蜜们去广州，我们一起貌美如花，看遍羊城繁华\r\n虽然我的广州之行已经结束，但也许你的旅程即将开始，所以，如果我的游记能够对你有所帮助那就再好不过咯。\r\n对深圳来说，广州应该算是最熟悉的邻居了，以特色美食著称，甚至从前外国朋友来到深圳，总要习惯性地去广州吃一圈。掐指一算，我来深圳已经超过一年了，一直想去广州游玩，但实际上除了工作需要，我真的很少去那里。终于挤出时间，在这个春意盎然的4月某周末，我和闺蜜们订下行程，完成了期待已久的广州之旅。\r\n第一天：广州北京路步行街→越秀公园→广州博物馆→珠江码头夜游\r\n去广州旅行的第一件事当然是解决住宿问题。这次来广州，我们提前在木鸟短租预订了漂亮的民宿。这个民宿颜值高，位置好，距离北京路步行街5分钟即到，“吃喝玩乐”就更不用发愁了，北京路步行街可以满足我们的所有需求。这家民宿499/晚，可以住5人，性价比非常高。\r\n我们在有间民宿网站预订的这家民宿非常个性。房间采用欧式工业风，地面铺的是原生态的原木地板，墙上挂着工业风的壁画，床上铺着简约明亮的欧式床上用品。这种强调返璞归真的民宿状态正适合我们这些80后、90后的生活态度。\r\n客厅墙上，房东还贴满了他和历届房客的合影，有户外的旅行照，也有室内聚餐、打牌照片。从这些照片能看得出来，房东是一个很热情也很有故事的广州人。\r\n我们欣赏完民宿之后，才出去玩。步行不到5分钟，我们到了传说中的广州北京路步行街。\r\n虽然广东真正的历史不长，但是近代以来只能用壕来形容，另外民族融合、东西交汇，造就了这一片土地不一样的风情，北京路步行街便是如此。这条街上既有林立的古董、美食老字号，更有琳琅满目的国外流行商品，它们凑在一起不仅没有丝毫违和感，还显得更有特色了。\r\n繁华的广州北京路步行街旁边有条隐秘的小巷，小巷里面有栋破旧的老屋，老屋顶层有家安静的烧烤档。地方不大，位置不多，上菜不快，价格不贵，味道不错，如果你有密友，一定要带他来此品味一番。当然，我们更不应该错过街边的老字号美食。\r\n从步行街出来，我们几人去了越秀公园。它是广州最大的综合性公园，有楚庭和佛山牌坊，古城墙、四方炮台、中山纪念碑等景点，自元代以来一直是羊城八景之一，现在公园又加入了现代化的设计，变得更加引人注目。我和好友们一起散步园内，感受这古今佳作。\r\n公园不远处有广州博物馆。博物馆是免费开放的，人很多，都在排队，里面很漂亮，当然，建筑也很美。\r\n博物馆内收藏了很多珍贵的艺术品，我们跟着导游一起感受广州虽不悠久却精致的历史文化。\r\n博物馆出来之后，我们丝毫不觉得疲惫，紧接着开始夜游珠江码头。这儿不愧是广州的地标建筑中心，震撼我得小心脏啊。两座高楼拔地而起，与小蛮腰等边三角形傲然屹立，简直不要太壮观。\r\n告别高耸夜空的小蛮腰，我们回到了民宿。木鸟短租这家民宿都采用淡橘色灯光设计，晚上打开灯，整个房间变得非常温馨，这算是给晚归的我们的一个惊喜了。我们奔波一天，最需要这么一个温暖的小窝了。就这样，在温暖和开心中，我们结束了第一天的行程。\r\n第二天：石室圣心教堂→沙面公园→上下九步行街→深圳\r\n早晨，闺蜜退了房。房东非常热情，临走时他还说下次我们可以8折来住。\r\n告别房东，我们去了石室圣心教堂。这是国内现存最宏伟的双尖塔哥特式建筑。1888年竣工，主体建筑由花岗岩砌造，屋顶的尖拱、高耸的塔楼、巨型的石柱、精美的彩绘玻璃窗，是哥特式建筑群的精华之作。\r\n在参观的线路看着听着，我真的让人有恍若隔世悠悠一梦醒来的感觉。想想人还是太渺小啊！有千年的树，千年的建筑，有千年的人么？所以活着的痛苦和压力又算得上什么？\r\n沙面公园离教堂很近，我们只是顺带游览，但真正进入园内以后，我们才觉得来这儿是个正确的选择。\r\n广州沙面现在是侨办、海关、使馆的所在地，一个小岛在广州这样高楼群立的大都市里却有这么一个惬意的角落。当地的阿姨叔叔们唱歌跳舞，茂密的枝叶当头，阵阵微风，旁边应该就是珠江。这情景不禁让人感觉身心舒畅，烦恼一扫而光。\r\n最后一个目的地是上下九步行街。我们为当地美食而来，广州有很多知名的美食，像沙茶面、煲仔饭、肠粉和艇仔粥等等。好吃地让人流连忘返。\r\n一不留神时间就过去了，下午5点的高铁，我们不得不告别广州美食和美景。这次广州周末行非常棒，虽然时间很短，但闺蜜们共同经历了好多欢乐的时光；我们一起住了大house，体验了民宿的乐趣；一起品尝广州美食，让蓓蕾也更加幸福。这是一次结束，更是新的开始，我期待闺蜜们下一次的相约！', '[\"9gz1.jpg\",9gz2.jpg\"]', 4);
INSERT INTO `yms_story` VALUES (10, '10yn.jpg', '最靠近天堂的地方 我和香格里拉有个约会\r\n香格里拉，单听名字就觉得这是一个梦幻的地方，直到有机会亲密接触之后，被这里的美景深深吸引。这个最靠近天堂的地方，果然是理想中的样子。其实是4月下旬去的，只是一直没有时间整理，但是游玩场景至今记忆犹新。\r\n我们的香格里拉之行从丽江出发，香格里拉虽然名气大，但是这里的许多景点交通不便，最好是包车或者跟团，可以解决交通问题，性价比也还不错。这里盘山公路比较多，不建议自驾游，报团也有许多纯游玩的团可以选择。\r\n\r\n第一天：丽江——金沙江（虎跳峡）——独克宗古城——纳帕海依拉草原\r\n想着今天就能去香格里拉，心情有些小激动，早晨推开窗户，阳光很好，等着集合向香格里拉进发。\r\n此次云南游一直是在木鸟短租上定的房子，房东听说我们要去香格里拉，跟我们聊了许多的注意事项：香格里拉温差比较大，要带长袖早晚冷，白天出太阳紫外线又比较强；那里海拔平均3100米，到达第一天不建议洗澡，以防感冒。必须要特别鸣谢贴心的房东。\r\n回归正题，集合完毕上车，天气相当给力，一路上可以远眺玉龙雪山，拉海市。沿途还初见金沙江。美丽热情的纳西族人民就住在金沙江畔\r\n这个民族以胖为美的特色，让我的小伙伴很欣喜，决定以后想嫁人的时候可以嫁到这里来（偷笑）。\r\n玉龙雪山十三峰\r\n欣赏完虎跳峡的雄伟气派，很快又被独克宗古城多彩的经幡吸引。世界最大的经筒都不愿去看了，只好远眺一下啦。听导游说，藏民族认为雪域藏地的崇山峻岭、大江莽原的守护神是天上的赞神和地上的年神，他们经常骑着风马在雪山、森林、草原、峡谷中巡视，保护雪域部落的安宁祥和，抵御魔怪和邪恶的入侵。这种意识是用经幡上印有一匹背驮象征福禄寿财兴旺的“诺布末巴”（圆锥形火焰图案）行走的马，以及印在经幡上的咒语、经文或祈愿文的图像来表达的。（这一段说辞可是经过导游认证之后发的票圈留存，是不是很专业啊！）\r\n刚刚被文化震撼到，又被美景震惊。海拔3280米的香格里拉纳帕海依拉草原，在这里与牦牛相伴，大地共舞，春风相依，久久不愿离去。\r\n草原上的牦牛，草原上的低云和经幡，木栈道通向远方，牵手陪你看遍世界\r\n跟团回到独克宗古城，晚上看看当地人载歌载舞的表演，早早入眠。这一次还是在木鸟短租上定的房子，房东是当地藏民，朴实又热情，环境也不错。', '[\"10yn1.jpg\",10yn2.jpg\"]', 3);
INSERT INTO `yms_story` VALUES (11, '11xz.jpg', '西藏拉萨，我和Rachel一路向西的朝圣\r\n一直想去西藏转转，去看看那湛蓝的天，白色的云，感受那稀薄的空气，去见识藏民的信仰，入住到拉萨藏民的家中，尝尝他们亲手做的甜茶。\r\n伴着大风起飞了，我们越过一座座白色翻滚的山，越过白云，不断往上爬升。与高原反应头疼相比，我和Rachel更多的是兴奋。\r\n一路跌跌撞撞，终于到了布达拉宫附近。在拉萨这种地方一定要去传统藏民多的地方住一下，你会有意外的收获。\r\n木鸟短租上的藏族民宿是驴友推荐的，听他说口碑很棒，我和Rachel在有间民宿大概浏览了下图片，就直接订下了。\r\n到了之后，果然非同凡响。老板很热情，还有吧台，人不是很多。等房期间，尝到了老板自家做得甜茶。\r\n还听到老板讲了甜茶的来历。大概有两个传说，一种是两百年前，英军攻入西藏，他们很懂得享受生活，所以这些人喝茶的习惯也渐渐影响了藏民，藏民也开始喝起来了“下午茶”。还有个传说，大批的克什米尔难民（回民）逃难到西藏，在这里扎根，当时吐番的领导者，在拉萨现在的西郊，批了一块五个箭射程的地，为他们建起清真寺，这就是当时西藏最早的穆斯林。他们为了生活，开始了买甜茶的生意......\r\n有间民宿，有故事，有朋友，还有酒，这才是我想要拉萨生活。\r\n听完故事，喝完茶，认识了店里和我一样来自北京的女孩，阿狸。拿到房门钥匙，打开房间，我和Rachel很惊喜。\r\n藏式茶几，藏式抱枕，很有质感的床品，出了门还能看见远处的山，美爆了。\r\n感叹完毕，顾不上休息，收拾妥当，俩人就奔出了门。\r\n木鸟短租这个民宿离大昭寺很近。出门就发现了，果真像房东老板说的那样，甜茶馆遍布拉萨的各个角落。从大昭寺周围到各个不知名的小巷子里，我们随处可以找到各种甜茶馆，而且进进出出喝茶的人络绎不绝。\r\n因为计划第二天再去布达拉宫，所以这个短暂的时间只是在大昭寺广场晒晒太阳，看看周围的人。大昭寺广场每一个入口都有安检。广场真的聚集着很多磕长头朝拜的藏民，和很多人一样，看到过很多这种照片，但当藏民真真正正地为信仰祈祷的时候，我有那种前所未有的震撼。人生在世，难免会迷失方向，有信仰是一件多么幸福、多么值得尊敬的事情。\r\n在为数不多的时间里，感受了一把拉萨的气质。嗯，高冷范儿，有信仰。晚餐是在附近的餐馆解决的，回到民宿看到有文艺女青年在弹吉他，但Rachel已经很累了，没有时间去欣赏。\r\n第二天我们要去美丽的布拉达。进去的时候，看到一个人背着老母亲去朝拜。拉萨斑驳的墙壁，有着时光的味道。来之前，木鸟短租的老板还跟我们说，去布达拉宫最好不要拍照。一方面是出于对藏民的尊重，另一方面是对佛祖的尊重。人们现在素质都很高了，也看不到什么乱拍的人。\r\n\r\n蓝天之下，明黄色的墙，色彩鲜艳的藏文，各种不同的颜色交织成一幅美丽的画卷。\r\n一路走来，每个房间都看到很多佛像，当地的藏民都在用各自的方式，朝拜或者上香，为心中所爱祈福。\r\n\r\nRachel走得很慢很慢，她说很享受这种慢慢游逛的感觉。你要是这时候在美丽的布达拉宫，能发现两个龟速少女。\r\n中午吃了自带的零食。继续边晒太阳，边走。在这个不一样的世界里慢慢行走。\r\n从布达拉宫出来都已经两三点了。我们去八廓街转转。门外的这条路凝聚了上千年的历史。行走其中，好像真的能看见历史一样。\r\n路上游客都是慢悠悠的姿态，我觉得拉萨比其他旅游城市，更能让人体会慢生活。找了个餐馆，我和Rachel一人一大份耗牛肉焖面，一份甜茶。量大，味儿足，我俩吃到撑。\r\n晚上回到民宿，店里正在播放一首歌，在那东方高高的山顶上，升起一轮皎洁的月亮，未嫁娇娘的面容，时时浮现在我的眼前。旋律和歌词都很美，让我想起来白天走过的布达拉宫和八廓街。问过老板才知道一首诗《在那东方的山顶上》，是说玛吉阿米和仓央嘉措浪漫相遇的故事，然后一个房客自己把诗谱成了歌。啧啧，民宿好像还成了才花横溢青年们的聚集地，哈哈。\r\n这天打算去西藏博物馆。博物馆作为免费开放的景点，每个城市的博物馆都有它的独特之处，也是整个城市的精华所在。来西藏，一定要来博物馆，看看西藏的过去和未来，感受下这个文化载体，相信我们都会有所收获。\r\n我们租了语音导览器，方便随时了解。博物馆内有史前文化遗物和众多宗教造像，还有一些手工艺品，石锛、石斧、石凿和新石器时代晚期的石簇、骨锥、骨针和各种红陶、灰陶、黑陶器具等等。静静观赏这些，忍不住为古人的才智赞叹。\r\n唐卡艺术，我对画画很感兴趣。不过，这次看到唐卡这种太特色的绘画方式，也是开了眼界。据说还有长618米，宽2.5米的画卷，不过我们去的那天这个唐卡没开展。\r\n从博物馆出来，我们去了罗布林卡。这是一座典型的藏式风格园林。据说这里奇花异草非常漂亮，可惜冬季还是很萧条，人也不多。从博物馆走到罗布林卡，用了半个多小时吧，顺便在附近吃了一碗藏面做午餐。在罗布林卡遇上一群转经的老妇人。\r\n是否有那么一个地方，你不曾来过，初次邂逅却有阔别经年之感，那里的一草一木，一尘一土，都在梦里呈现，带着一种隔世的陌生和熟悉，也许这就是佛家说的缘分，因为有缘，所以才会一件倾心......\r\n在西藏的这几天，心情很不错，感受到云淡风轻的拉萨美。但夜晚来临，我和Rachel却不得不离开。告别了木鸟短租的民宿老板。我真的很喜欢这个老板，是一个很有才学、很有内涵，也有信仰的人。拉着行李去机场，我们静静告别拉萨，不过来年春天我们会马上相见。', '[\"11xz1.jpg\",11xz2.jpg\"]', 4);
INSERT INTO `yms_story` VALUES (12, '12cbs.jpg', '长白山颠的那一抹回忆\r\n最想去的并不是长白山，而是西藏雪山，奈何从身体到路线种种问题让这个愿望一直无法实现，但是太过于渴望雪山的美景，恰逢有机会，便和朋友一起去探访长白山。\r\n飞机直飞松江河镇，下了飞机还需要再坐车到镇里，这一路一走就是一天。晚上到提前预订的房间入住，正赶上主人在家，安排好我们的住宿后还特地请我们吃了当地特色的炖菜。东北的第一顿饭我吃的是有滋有味，不知道是饭菜太美味还是奔波了一天太疲倦，狼吞虎咽一口气吃了三碗饭。饭饱酒足，躺在床上，仔细研究明天的行程，不知不觉，便睡了过去。\r\n9月的长白山还不太冷，但与夏日里20余度的气温比较起来还是低了一些。套上防风外套，带上必备的小件背包，我和朋友开始了这一天的旅程。昨天到松江镇提前预约了出租车，今天直接包车上路。师傅开的很稳当，不到一个小时，我们便到了西坡景区。进入景区，雪山的风景便一览无余了。换成汽车，到山顶，天池就近在眼前了。\r\n远观，天池仿佛被群山捧在掌心一般，如明珠一样耀眼。近看，远处天水一色，天池仿佛是天融化在水里一样。我们运气极好，景区的工作人员说今天是最近天气最好的时候了。虽然身边风呼啸而过，即使穿了棉大衣的我依旧冷的不行，但眼前最美的景色能够洗净一切，让我暂时忘却身体的寒冷。想起观世音菩萨的六字大明咒——嗡嘛呢呗咪吽。就着这山巅的明珠，轻轻诵出，好像整个人都从世间混沌中超脱出来。一切语言说教都比不上大自然的洗礼。在这里，我得到的不仅是一种震撼，更是一种解脱，世间万物比起这一方景色来说又是什么？人生在世短短几十年，比起这一山一水，一草一木来说，不过都是过眼云烟。人生的烦恼又算什么，也不过是短暂的痛苦。自然的这一番洗礼，才是最直接，最彻底的心灵顿悟。\r\n乘车驶离了天池，但我的心还没有平静。下一站，是绿渊潭，出发之前我还和朋友调侃，这绿渊潭与北京的玉渊潭怕只是一个颜色吧。然而我却忽略了它“小九寨”的称号。直到来到这里，才发现自己的嘲笑是多么可鄙；这里真的可以和九寨沟相媲美。我们去的时候，天色很好没有雾，据说，有雾的时候，它更像是一块在云雾中的绿宝石。\r\n今天的最后一站是谷底森林，这是山谷中的一片森林，是长白山海拔最低的景点。由于地壳活动，造成大面积地层下塌，形成巨大的山谷，使整片森林沉入谷底。人在大自然面前更显得渺小，深入这一片森林，总有种感觉如果掉队便会丢了，所以我紧紧拉着朋友的手，生怕自己丢了。朋友笑我“像个孩子一样”，与这威武雄壮、巧夺天工的自然相比，我们也都是自然的孩子。\r\n回去的路上，我睡着了，到了目的地才醒来。虽然身体很累，但心灵却很清澈，好像这一天就是去接受心灵的洗礼了。如果有机会，下一次我还会来这里，据说冬天的天池景区更美丽，雪雾缭绕下的森林更显出“魔界”一般的神奇景色。\r\n长白山，等着我，我还会，回来的。', '[\"12cbs1.jpg\",12cbs2.jpg\"]', 7);

-- ----------------------------
-- Table structure for yms_talk
-- ----------------------------
DROP TABLE IF EXISTS `yms_talk`;
CREATE TABLE `yms_talk`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `t_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `yms_talk_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `yms_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `yms_talk_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `yms_room` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_talk
-- ----------------------------
INSERT INTO `yms_talk` VALUES (1, 1, 31, '很喜欢的格调，温馨舒适典雅。当晚没房房东人很nice入住前协商给调了房间，性价比也很高。完美的入住体验。');
INSERT INTO `yms_talk` VALUES (2, 3, 2, '布置的特别温馨，也特别的有感觉，还会再次入住。');
INSERT INTO `yms_talk` VALUES (3, 7, 37, '房东姐姐人超级好，很细心，准备了各种吃的用的东西，很贴心，就跟家里没有什么区别。收拾的干干净净，住的很舒服，家里还有只超级乖巧的美短，以后定点住这里。完美！');
INSERT INTO `yms_talk` VALUES (4, 5, 3, '房子收拾的干净，饭做的也很好吃，特别满意，房东人也很热情.');
INSERT INTO `yms_talk` VALUES (5, 4, 23, '房东人很好 房间布置的很温馨 要是有一次性拖鞋就更好了.');
INSERT INTO `yms_talk` VALUES (6, 2, 4, '特地为了小木屋床和滑滑梯带孩子来住的，孩子很喜欢，兴奋的不得了，说还想来住，但客观来说，房间的卫生情况一般，希望有所改善。');
INSERT INTO `yms_talk` VALUES (7, 6, 12, '很好前台小姐姐特别好！！');
INSERT INTO `yms_talk` VALUES (8, 9, 39, '房东超级贴心，一应俱全，只有你想不到的！环境舒适，夜景很赞，离奥特莱斯很近，强力推荐！');
INSERT INTO `yms_talk` VALUES (9, 10, 17, '房东人超好的，然后因为房间问题帮我们换了套，特别棒，下次来还住这边.');
INSERT INTO `yms_talk` VALUES (10, 4, 9, '房间不算太大，整体配套还是可以的，地点也挺好找，老小区里面还是比较安静的。房东还是比较热情的，有问题及时给解决.');
INSERT INTO `yms_talk` VALUES (11, 8, 41, '老板人很好，房间干净设施很齐全，必须好评.');
INSERT INTO `yms_talk` VALUES (12, 10, 4, '交通很方便，房子干净装修也有心思，满意！');
INSERT INTO `yms_talk` VALUES (13, 10, 27, '环境优越，房间很高级，周边景色很美，房间宽敞舒适，住得舒心，喜欢这里有机会还来再来.');
INSERT INTO `yms_talk` VALUES (14, 7, 34, '好喜欢房间里的飘窗，交通方便楼下就有地铁，出行很方便！');
INSERT INTO `yms_talk` VALUES (15, 6, 35, '位置不错，游玩方便，装修的挺好看，房间干净整洁，色彩搭配看着舒服，服务态度好，满意');
INSERT INTO `yms_talk` VALUES (16, 8, 49, '这边是不错的选择，空气特别的好，房间也好，舒适干净，布置的很漂亮，服务态度很好，各方面都很周到，满意');
INSERT INTO `yms_talk` VALUES (17, 3, 35, '装修很有格调很喜欢，配置很全，环境非常好，安静优雅，卫生干净整洁，特别舒适');
INSERT INTO `yms_talk` VALUES (18, 6, 23, '作为重庆打卡第一站的地理位置，加上独有的江景，这个性价比还有谁？服务热情周到，真实不枉此行！');
INSERT INTO `yms_talk` VALUES (19, 4, 5, '非常喜欢的民宿，而且可以在浴缸里看重庆夜景，干净卫生。交通便利，在解放碑这里，离哪里都很近，楼下有地铁口，还有很多小吃。会推荐给朋友');
INSERT INTO `yms_talk` VALUES (20, 9, 19, '房间跟图片一模一样，之前被照骗过，超出我期望太多，各方面都非常满意！');
INSERT INTO `yms_talk` VALUES (21, 5, 45, '房间很好很舒服 很有家的感觉 交通也蛮方便的 投影也很优质 客服小姐姐人很好～');
INSERT INTO `yms_talk` VALUES (22, 4, 11, '老板人很好，很热情，房间可以看到海，到海边5分钟，很方便，楼下很热闹，买什么都特别方便，赞。');
INSERT INTO `yms_talk` VALUES (23, 5, 44, '昨天很晚住了 进去两个人够住了 设备比较齐全 有洗衣机还挺干净的 房东耐心态度好 给力 ?');
INSERT INTO `yms_talk` VALUES (24, 5, 7, '房间很整洁，摆放陈列的所需物品也很贴心，说明在洗手间的门上，写的很详细，房东人也超好，很赞的一次体验～');
INSERT INTO `yms_talk` VALUES (25, 1, 30, '隔音效果非常不好 外面有人拖箱子都听得一清二楚 不过卫生很好 空间很大 空调电视网络都非常好 希望隔音这个问题改进一下');
INSERT INTO `yms_talk` VALUES (26, 8, 7, '货不对板，网上照片与现实一自好大差别，连最简单的窗帘都没有');
INSERT INTO `yms_talk` VALUES (27, 6, 31, '房东人很好，房间也很干净，地理方便，吃的很多，价格适中，以后还会再去');
INSERT INTO `yms_talk` VALUES (28, 7, 46, '房间风格和我想象的差不多，都挺不错的，设施齐全，应有具有，有一种到家了的感觉，总之非常繁华的地段，如果以后还来广州一定还来这里住');
INSERT INTO `yms_talk` VALUES (29, 8, 42, '环境好，在房间里面可以看到完美超级漂亮的美景。房间里面也挺干净的，一尘不染，光线也好，看起来特别舒服。性价比高，所以直接订了2晚，下次来还住这家。');
INSERT INTO `yms_talk` VALUES (30, 10, 46, '房间和图片一样好。环境不错。交通和生活都很便利。房东很贴心，看我太太怀孕，主动给我们换了房间');
INSERT INTO `yms_talk` VALUES (31, 6, 28, '挺好的，就是离地铁站走路不太近，附近有个商场。总体不错。');
INSERT INTO `yms_talk` VALUES (32, 8, 42, '房间非常满意 特别适合拍照');
INSERT INTO `yms_talk` VALUES (33, 1, 20, '初来驾到，到了目的地房东很贴心的下来帮我们拿行李，非常nice！ 小区环境很好，而且非常安全，都设有门禁，这一点让身处异地的我们感觉很好～而且地理位置很方便，下楼就是太古里。 房间一进去的感觉是真的好，干干净净，而且视野开阔，如果能有阳光，估计就更完美了！和照片上的基本一样。床和被子使用起来很舒适，家庭小工具备得也比较齐全，完全不用担心没有用的！房东在我们居住期间也会很贴心的各项备注！ 总体来说，体验感很好！');
INSERT INTO `yms_talk` VALUES (34, 3, 21, '房东非常好，房间整体和图片没有差异，步行到太古里5分钟，很方便');
INSERT INTO `yms_talk` VALUES (35, 2, 1, '无踩雷，酒店真的很好，外面看起来好高大上，夜景很漂亮哟，房东小哥哥人也很好一直给我们推荐成都好吃的，都去过而且都没有踩雷哟，出行方便，前面走一点就是太古里，春熙路，干净卫生，性价比很高，我们因为台风航班取消了，想多住一晚当天预定比较贵小哥哥还给我们便宜了几十块钱，不知道怎么上传不了图片，图片是一样的哟，没有差别，来成都可以首选这家酒店。');
INSERT INTO `yms_talk` VALUES (36, 2, 3, '环境卫生很整洁，床铺柔软舒适,连沐浴露和洗发露都准备了，住着非常满意,房东非常热情,给介绍周边好玩的地方,真心不错,下次还来');
INSERT INTO `yms_talk` VALUES (37, 7, 45, '这个月第二次住了，还是不错');
INSERT INTO `yms_talk` VALUES (38, 1, 39, '出游期间最满意的酒店，没有之一。都不想走了，临时又续住了一天，无论服务卫生环境全无*角，帮忙拿行李，所以后面直接续住了，打扫阿姨也会提前问你需不需要打扫什么的，还帮忙叠了我的衣物，非常贴心，酒店位置闹中取静 最后总结一下，以后身边有朋友来厦门玩肯定全力推荐！');
INSERT INTO `yms_talk` VALUES (39, 9, 12, '设计简直太赞了，非常适合年轻人外出，把需要的都考虑到了，把不必要的都拿走了，所以价格也很好！简直不要太贴心，以后有需要都会选这家。');
INSERT INTO `yms_talk` VALUES (40, 9, 32, '一个人来的厦门~几年前曾经住过鼓浪屿，这次想换个地方，也是买机票之后随手定的这家 机场过来30分钟，在曾厝垵里面，我联系了老板，老板出来接我来着~ 房间环境不错，一个人住很舒服~ 小洁癖，检查过房间，所有东西都挺干净~就是，床真的太软，早上容易睡过头~ 小姐姐人很开朗阳光，进来出去都会打招呼~还给我发了厦门攻略，棒！ 是再来厦门还会想来住的地方！');
INSERT INTO `yms_talk` VALUES (41, 5, 47, '第一次自己去制作旅游路线，这民宿地理位置、环境卫生都好，老板非常好，没散钱坐公交，老板爸爸帮忙去问店铺帮我换散钱，住在曾厝垵中山路里面，一出门就是吃，满足我们吃货的需求。值得称赞系我回去的坐什么车，老板都几次给我确认，去机场跟动车站，只要在曾厝垵公交站旁边购票处，买岛内快线车，15元就可以直达 很方便 老板给的攻略也超级实用');
INSERT INTO `yms_talk` VALUES (42, 9, 43, '民宿挺漂亮的，在曾厝垵里！走路三分钟就是小吃街，特别受小姐姐欢迎，抵达第一天是晚上11点服务真的超棒～前台小哥哥还帮忙提行李！！房间干净，采光也很好！体验感很好！环境也是非常ok～就是投影仪不会怎么操作哈哈哈哈哈，大半夜还让小哥哥上来帮我们弄，怪不好意思的。走的时候还帮我们拿行李超nice！！下次再来厦门还会选择这一家民宿！！！');
INSERT INTO `yms_talk` VALUES (43, 3, 5, '没有什么挑剔的，地段环境卫生各方面都住的很舒服，连续在加两天续房！唯一缺点就是楼下有烧烤摊会吵，但影响不太大。有一堆外卖可以吃，我是省内的，下次还会来住这里。');
INSERT INTO `yms_talk` VALUES (44, 5, 28, '地段很好，房间很舒服，还有阳台晾衣服，真的太棒了！婆婆忘记带毛巾，房东还准备了一次性的，比酒店好多了~而且房间阳光也很好，超赞！');
INSERT INTO `yms_talk` VALUES (45, 1, 22, '非常棒的房间，地理位置极佳，交通便利，去哪都很方便，房间装修也很温馨，下次来还会选择这里的。');
INSERT INTO `yms_talk` VALUES (46, 3, 12, '住的地点位置蛮好的 在这去中山路走路才五分钟 这里晚上可以沿着大马路走去欣赏下晚上的鼓浪屿 这里房间蛮干净的 而且格调布局真的蛮不错的 给人一种特别舒适的感觉 家具一应俱全 值得入住');
INSERT INTO `yms_talk` VALUES (47, 10, 7, '孩子玩的很开心，房间挺干净离沙滩也挺近的这个价钱很良心啊，第二天去了栈桥附近住酒店，同样的价钱，房间小了一半不止啥也没有孩子玩不开而且栈桥附近没啥干净的沙滩，黄岛这边的沙滩小石子很少全是细沙海水也比较干净。下次去还会订这家⭐⭐⭐⭐⭐');
INSERT INTO `yms_talk` VALUES (48, 2, 23, '房间设计很赞，小朋友非常喜欢，有机会再来青岛还住这边');
INSERT INTO `yms_talk` VALUES (49, 4, 6, '还不错，离地铁也不远，环境也挺干净的。还给了能看到海的房子，点赞');
INSERT INTO `yms_talk` VALUES (50, 2, 35, '房间特别好，是我出游住的最好的地方，地理位置优越，装饰舒心，价格可人，房东服务态度超级棒，下次去青岛必住之所。');

-- ----------------------------
-- Table structure for yms_user
-- ----------------------------
DROP TABLE IF EXISTS `yms_user`;
CREATE TABLE `yms_user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_pwd` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'defaultavatar.jpg',
  `u_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_user
-- ----------------------------
INSERT INTO `yms_user` VALUES (1, '15692191068', 'yyds-ggsmd', 'defaultavatar.jpg', '包子两只');
INSERT INTO `yms_user` VALUES (2, '15139485234', 'Lsh123@abc', 'defaultavatar.jpg', '卖包子了');
INSERT INTO `yms_user` VALUES (3, '18203654509', 'Lu#123#.@123', 'defaultavatar.jpg', '张无敌');
INSERT INTO `yms_user` VALUES (4, '18916064066', 'Li%sql', 'defaultavatar.jpg', '热乎乎的包子');
INSERT INTO `yms_user` VALUES (5, '13601641051', 'ZXX.^12&34', 'defaultavatar.jpg', 'L');
INSERT INTO `yms_user` VALUES (6, '15852054301', 'JK(123)_0123', 'defaultavatar.jpg', 'xxxk');
INSERT INTO `yms_user` VALUES (7, '13524031772', 'abcd12345', 'defaultavatar.jpg', '等风来');
INSERT INTO `yms_user` VALUES (8, '18852464562', '@1234567', 'defaultavatar.jpg', '飞翔的河南人');
INSERT INTO `yms_user` VALUES (9, '18930842488', '#123.S', 'defaultavatar.jpg', '小鸡仔');
INSERT INTO `yms_user` VALUES (10, '18508970709', '*123abc', 'defaultavatar.jpg', '小包子');

SET FOREIGN_KEY_CHECKS = 1;

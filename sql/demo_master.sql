/*
Navicat MySQL Data Transfer

Source Server         : localhsot
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : demo_master

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-27 14:05:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_pid` (`pid`),
  CONSTRAINT `fk_pid` FOREIGN KEY (`pid`) REFERENCES `provincial` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO city VALUES ('101', '北京市', '1');
INSERT INTO city VALUES ('201', '天津市', '2');
INSERT INTO city VALUES ('301', '上海市', '3');
INSERT INTO city VALUES ('401', '重庆市', '4');
INSERT INTO city VALUES ('501', '石家庄市', '5');
INSERT INTO city VALUES ('502', '唐山市', '5');
INSERT INTO city VALUES ('503', '秦皇岛市', '5');
INSERT INTO city VALUES ('504', '邯郸市', '5');
INSERT INTO city VALUES ('505', '邢台市', '5');
INSERT INTO city VALUES ('506', '保定市', '5');
INSERT INTO city VALUES ('507', '张家口市', '5');
INSERT INTO city VALUES ('508', '承德市', '5');
INSERT INTO city VALUES ('509', '沧州市', '5');
INSERT INTO city VALUES ('510', '廊坊市', '5');
INSERT INTO city VALUES ('511', '衡水市', '5');
INSERT INTO city VALUES ('601', '太原市', '6');
INSERT INTO city VALUES ('602', '大同市', '6');
INSERT INTO city VALUES ('603', '阳泉市', '6');
INSERT INTO city VALUES ('604', '长治市', '6');
INSERT INTO city VALUES ('605', '晋城市', '6');
INSERT INTO city VALUES ('606', '朔州市', '6');
INSERT INTO city VALUES ('607', '晋中市', '6');
INSERT INTO city VALUES ('608', '运城市', '6');
INSERT INTO city VALUES ('609', '忻州市', '6');
INSERT INTO city VALUES ('610', '临汾市', '6');
INSERT INTO city VALUES ('611', '吕梁市', '6');
INSERT INTO city VALUES ('701', '台北市', '7');
INSERT INTO city VALUES ('702', '高雄市', '7');
INSERT INTO city VALUES ('703', '基隆市', '7');
INSERT INTO city VALUES ('704', '台中市', '7');
INSERT INTO city VALUES ('705', '台南市', '7');
INSERT INTO city VALUES ('706', '新竹市', '7');
INSERT INTO city VALUES ('707', '嘉义市', '7');
INSERT INTO city VALUES ('708', '台北县', '7');
INSERT INTO city VALUES ('709', '宜兰县', '7');
INSERT INTO city VALUES ('710', '桃园县', '7');
INSERT INTO city VALUES ('711', '新竹县', '7');
INSERT INTO city VALUES ('712', '苗栗县', '7');
INSERT INTO city VALUES ('713', '台中县', '7');
INSERT INTO city VALUES ('714', '彰化县', '7');
INSERT INTO city VALUES ('715', '南投县', '7');
INSERT INTO city VALUES ('716', '云林县', '7');
INSERT INTO city VALUES ('717', '嘉义县', '7');
INSERT INTO city VALUES ('718', '台南县', '7');
INSERT INTO city VALUES ('719', '高雄县', '7');
INSERT INTO city VALUES ('720', '屏东县', '7');
INSERT INTO city VALUES ('721', '澎湖县', '7');
INSERT INTO city VALUES ('722', '台东县', '7');
INSERT INTO city VALUES ('723', '花莲县', '7');
INSERT INTO city VALUES ('801', '沈阳市', '8');
INSERT INTO city VALUES ('802', '大连市', '8');
INSERT INTO city VALUES ('803', '鞍山市', '8');
INSERT INTO city VALUES ('804', '抚顺市', '8');
INSERT INTO city VALUES ('805', '本溪市', '8');
INSERT INTO city VALUES ('806', '丹东市', '8');
INSERT INTO city VALUES ('807', '锦州市', '8');
INSERT INTO city VALUES ('808', '营口市', '8');
INSERT INTO city VALUES ('809', '阜新市', '8');
INSERT INTO city VALUES ('810', '辽阳市', '8');
INSERT INTO city VALUES ('811', '盘锦市', '8');
INSERT INTO city VALUES ('812', '铁岭市', '8');
INSERT INTO city VALUES ('813', '朝阳市', '8');
INSERT INTO city VALUES ('814', '葫芦岛市', '8');
INSERT INTO city VALUES ('901', '长春市', '9');
INSERT INTO city VALUES ('902', '吉林市', '9');
INSERT INTO city VALUES ('903', '四平市', '9');
INSERT INTO city VALUES ('904', '辽源市', '9');
INSERT INTO city VALUES ('905', '通化市', '9');
INSERT INTO city VALUES ('906', '白山市', '9');
INSERT INTO city VALUES ('907', '松原市', '9');
INSERT INTO city VALUES ('908', '白城市', '9');
INSERT INTO city VALUES ('909', '延边朝鲜族自治州', '9');
INSERT INTO city VALUES ('1001', '哈尔滨市', '10');
INSERT INTO city VALUES ('1002', '齐齐哈尔市', '10');
INSERT INTO city VALUES ('1003', '鹤 岗 市', '10');
INSERT INTO city VALUES ('1004', '双鸭山市', '10');
INSERT INTO city VALUES ('1005', '鸡 西 市', '10');
INSERT INTO city VALUES ('1006', '大 庆 市', '10');
INSERT INTO city VALUES ('1007', '伊 春 市', '10');
INSERT INTO city VALUES ('1008', '牡丹江市', '10');
INSERT INTO city VALUES ('1009', '佳木斯市', '10');
INSERT INTO city VALUES ('1010', '七台河市', '10');
INSERT INTO city VALUES ('1011', '黑 河 市', '10');
INSERT INTO city VALUES ('1012', '绥 化 市', '10');
INSERT INTO city VALUES ('1013', '大兴安岭地区', '10');
INSERT INTO city VALUES ('1101', '南京市', '11');
INSERT INTO city VALUES ('1102', '无锡市', '11');
INSERT INTO city VALUES ('1103', '徐州市', '11');
INSERT INTO city VALUES ('1104', '常州市', '11');
INSERT INTO city VALUES ('1105', '苏州市', '11');
INSERT INTO city VALUES ('1106', '南通市', '11');
INSERT INTO city VALUES ('1107', '连云港市', '11');
INSERT INTO city VALUES ('1108', '淮安市', '11');
INSERT INTO city VALUES ('1109', '盐城市', '11');
INSERT INTO city VALUES ('1110', '扬州市', '11');
INSERT INTO city VALUES ('1111', '镇江市', '11');
INSERT INTO city VALUES ('1112', '泰州市', '11');
INSERT INTO city VALUES ('1113', '宿迁市', '11');
INSERT INTO city VALUES ('1201', '杭州市', '12');
INSERT INTO city VALUES ('1202', '宁波市', '12');
INSERT INTO city VALUES ('1203', '温州市', '12');
INSERT INTO city VALUES ('1204', '嘉兴市', '12');
INSERT INTO city VALUES ('1205', '湖州市', '12');
INSERT INTO city VALUES ('1206', '绍兴市', '12');
INSERT INTO city VALUES ('1207', '金华市', '12');
INSERT INTO city VALUES ('1208', '衢州市', '12');
INSERT INTO city VALUES ('1209', '舟山市', '12');
INSERT INTO city VALUES ('1210', '台州市', '12');
INSERT INTO city VALUES ('1211', '丽水市', '12');
INSERT INTO city VALUES ('1301', '合肥市', '13');
INSERT INTO city VALUES ('1302', '芜湖市', '13');
INSERT INTO city VALUES ('1303', '蚌埠市', '13');
INSERT INTO city VALUES ('1304', '淮南市', '13');
INSERT INTO city VALUES ('1305', '马鞍山市', '13');
INSERT INTO city VALUES ('1306', '淮北市', '13');
INSERT INTO city VALUES ('1307', '铜陵市', '13');
INSERT INTO city VALUES ('1308', '安庆市', '13');
INSERT INTO city VALUES ('1309', '黄山市', '13');
INSERT INTO city VALUES ('1310', '滁州市', '13');
INSERT INTO city VALUES ('1311', '阜阳市', '13');
INSERT INTO city VALUES ('1312', '宿州市', '13');
INSERT INTO city VALUES ('1313', '巢湖市', '13');
INSERT INTO city VALUES ('1314', '六安市', '13');
INSERT INTO city VALUES ('1315', '亳州市', '13');
INSERT INTO city VALUES ('1316', '池州市', '13');
INSERT INTO city VALUES ('1317', '宣城市', '13');
INSERT INTO city VALUES ('1401', '福州市', '14');
INSERT INTO city VALUES ('1402', '厦门市', '14');
INSERT INTO city VALUES ('1403', '莆田市', '14');
INSERT INTO city VALUES ('1404', '三明市', '14');
INSERT INTO city VALUES ('1405', '泉州市', '14');
INSERT INTO city VALUES ('1406', '漳州市', '14');
INSERT INTO city VALUES ('1407', '南平市', '14');
INSERT INTO city VALUES ('1408', '龙岩市', '14');
INSERT INTO city VALUES ('1409', '宁德市', '14');
INSERT INTO city VALUES ('1501', '南昌市', '15');
INSERT INTO city VALUES ('1502', '景德镇市', '15');
INSERT INTO city VALUES ('1503', '萍乡市', '15');
INSERT INTO city VALUES ('1504', '九江市', '15');
INSERT INTO city VALUES ('1505', '新余市', '15');
INSERT INTO city VALUES ('1506', '鹰潭市', '15');
INSERT INTO city VALUES ('1507', '赣州市', '15');
INSERT INTO city VALUES ('1508', '吉安市', '15');
INSERT INTO city VALUES ('1509', '宜春市', '15');
INSERT INTO city VALUES ('1510', '抚州市', '15');
INSERT INTO city VALUES ('1511', '上饶市', '15');
INSERT INTO city VALUES ('1601', '济南市', '16');
INSERT INTO city VALUES ('1602', '青岛市', '16');
INSERT INTO city VALUES ('1603', '淄博市', '16');
INSERT INTO city VALUES ('1604', '枣庄市', '16');
INSERT INTO city VALUES ('1605', '东营市', '16');
INSERT INTO city VALUES ('1606', '烟台市', '16');
INSERT INTO city VALUES ('1607', '潍坊市', '16');
INSERT INTO city VALUES ('1608', '济宁市', '16');
INSERT INTO city VALUES ('1609', '泰安市', '16');
INSERT INTO city VALUES ('1610', '威海市', '16');
INSERT INTO city VALUES ('1611', '日照市', '16');
INSERT INTO city VALUES ('1612', '莱芜市', '16');
INSERT INTO city VALUES ('1613', '临沂市', '16');
INSERT INTO city VALUES ('1614', '德州市', '16');
INSERT INTO city VALUES ('1615', '聊城市', '16');
INSERT INTO city VALUES ('1616', '滨州市', '16');
INSERT INTO city VALUES ('1617', '菏泽市', '16');
INSERT INTO city VALUES ('1701', '郑州市', '17');
INSERT INTO city VALUES ('1702', '开封市', '17');
INSERT INTO city VALUES ('1703', '洛阳市', '17');
INSERT INTO city VALUES ('1704', '平顶山市', '17');
INSERT INTO city VALUES ('1705', '安阳市', '17');
INSERT INTO city VALUES ('1706', '鹤壁市', '17');
INSERT INTO city VALUES ('1707', '新乡市', '17');
INSERT INTO city VALUES ('1708', '焦作市', '17');
INSERT INTO city VALUES ('1709', '濮阳市', '17');
INSERT INTO city VALUES ('1710', '许昌市', '17');
INSERT INTO city VALUES ('1711', '漯河市', '17');
INSERT INTO city VALUES ('1712', '三门峡市', '17');
INSERT INTO city VALUES ('1713', '南阳市', '17');
INSERT INTO city VALUES ('1714', '商丘市', '17');
INSERT INTO city VALUES ('1715', '信阳市', '17');
INSERT INTO city VALUES ('1716', '周口市', '17');
INSERT INTO city VALUES ('1717', '驻马店市', '17');
INSERT INTO city VALUES ('1718', '济源市', '17');
INSERT INTO city VALUES ('1801', '武汉市', '18');
INSERT INTO city VALUES ('1802', '黄石市', '18');
INSERT INTO city VALUES ('1803', '十堰市', '18');
INSERT INTO city VALUES ('1804', '荆州市', '18');
INSERT INTO city VALUES ('1805', '宜昌市', '18');
INSERT INTO city VALUES ('1806', '襄樊市', '18');
INSERT INTO city VALUES ('1807', '鄂州市', '18');
INSERT INTO city VALUES ('1808', '荆门市', '18');
INSERT INTO city VALUES ('1809', '孝感市', '18');
INSERT INTO city VALUES ('1810', '黄冈市', '18');
INSERT INTO city VALUES ('1811', '咸宁市', '18');
INSERT INTO city VALUES ('1812', '随州市', '18');
INSERT INTO city VALUES ('1813', '仙桃市', '18');
INSERT INTO city VALUES ('1814', '天门市', '18');
INSERT INTO city VALUES ('1815', '潜江市', '18');
INSERT INTO city VALUES ('1816', '神农架林区', '18');
INSERT INTO city VALUES ('1817', '恩施土家族苗族自治州', '18');
INSERT INTO city VALUES ('1901', '长沙市', '19');
INSERT INTO city VALUES ('1902', '株洲市', '19');
INSERT INTO city VALUES ('1903', '湘潭市', '19');
INSERT INTO city VALUES ('1904', '衡阳市', '19');
INSERT INTO city VALUES ('1905', '邵阳市', '19');
INSERT INTO city VALUES ('1906', '岳阳市', '19');
INSERT INTO city VALUES ('1907', '常德市', '19');
INSERT INTO city VALUES ('1908', '张家界市', '19');
INSERT INTO city VALUES ('1909', '益阳市', '19');
INSERT INTO city VALUES ('1910', '郴州市', '19');
INSERT INTO city VALUES ('1911', '永州市', '19');
INSERT INTO city VALUES ('1912', '怀化市', '19');
INSERT INTO city VALUES ('1913', '娄底市', '19');
INSERT INTO city VALUES ('1914', '湘西土家族苗族自治州', '19');
INSERT INTO city VALUES ('2001', '广州市', '20');
INSERT INTO city VALUES ('2002', '深圳市', '20');
INSERT INTO city VALUES ('2003', '珠海市', '20');
INSERT INTO city VALUES ('2004', '汕头市', '20');
INSERT INTO city VALUES ('2005', '韶关市', '20');
INSERT INTO city VALUES ('2006', '佛山市', '20');
INSERT INTO city VALUES ('2007', '江门市', '20');
INSERT INTO city VALUES ('2008', '湛江市', '20');
INSERT INTO city VALUES ('2009', '茂名市', '20');
INSERT INTO city VALUES ('2010', '肇庆市', '20');
INSERT INTO city VALUES ('2011', '惠州市', '20');
INSERT INTO city VALUES ('2012', '梅州市', '20');
INSERT INTO city VALUES ('2013', '汕尾市', '20');
INSERT INTO city VALUES ('2014', '河源市', '20');
INSERT INTO city VALUES ('2015', '阳江市', '20');
INSERT INTO city VALUES ('2016', '清远市', '20');
INSERT INTO city VALUES ('2017', '东莞市', '20');
INSERT INTO city VALUES ('2018', '中山市', '20');
INSERT INTO city VALUES ('2019', '潮州市', '20');
INSERT INTO city VALUES ('2020', '揭阳市', '20');
INSERT INTO city VALUES ('2021', '云浮市', '20');
INSERT INTO city VALUES ('2101', '兰州市', '21');
INSERT INTO city VALUES ('2102', '金昌市', '21');
INSERT INTO city VALUES ('2103', '白银市', '21');
INSERT INTO city VALUES ('2104', '天水市', '21');
INSERT INTO city VALUES ('2105', '嘉峪关市', '21');
INSERT INTO city VALUES ('2106', '武威市', '21');
INSERT INTO city VALUES ('2107', '张掖市', '21');
INSERT INTO city VALUES ('2108', '平凉市', '21');
INSERT INTO city VALUES ('2109', '酒泉市', '21');
INSERT INTO city VALUES ('2110', '庆阳市', '21');
INSERT INTO city VALUES ('2111', '定西市', '21');
INSERT INTO city VALUES ('2112', '陇南市', '21');
INSERT INTO city VALUES ('2113', '临夏回族自治州', '21');
INSERT INTO city VALUES ('2114', '甘南藏族自治州', '21');
INSERT INTO city VALUES ('2201', '成都市', '22');
INSERT INTO city VALUES ('2202', '自贡市', '22');
INSERT INTO city VALUES ('2203', '攀枝花市', '22');
INSERT INTO city VALUES ('2204', '泸州市', '22');
INSERT INTO city VALUES ('2205', '德阳市', '22');
INSERT INTO city VALUES ('2206', '绵阳市', '22');
INSERT INTO city VALUES ('2207', '广元市', '22');
INSERT INTO city VALUES ('2208', '遂宁市', '22');
INSERT INTO city VALUES ('2209', '内江市', '22');
INSERT INTO city VALUES ('2210', '乐山市', '22');
INSERT INTO city VALUES ('2211', '南充市', '22');
INSERT INTO city VALUES ('2212', '眉山市', '22');
INSERT INTO city VALUES ('2213', '宜宾市', '22');
INSERT INTO city VALUES ('2214', '广安市', '22');
INSERT INTO city VALUES ('2215', '达州市', '22');
INSERT INTO city VALUES ('2216', '雅安市', '22');
INSERT INTO city VALUES ('2217', '巴中市', '22');
INSERT INTO city VALUES ('2218', '资阳市', '22');
INSERT INTO city VALUES ('2219', '阿坝藏族羌族自治州', '22');
INSERT INTO city VALUES ('2220', '甘孜藏族自治州', '22');
INSERT INTO city VALUES ('2221', '凉山彝族自治州', '22');
INSERT INTO city VALUES ('2301', '贵阳市', '23');
INSERT INTO city VALUES ('2302', '六盘水市', '23');
INSERT INTO city VALUES ('2303', '遵义市', '23');
INSERT INTO city VALUES ('2304', '安顺市', '23');
INSERT INTO city VALUES ('2305', '铜仁地区', '23');
INSERT INTO city VALUES ('2306', '毕节地区', '23');
INSERT INTO city VALUES ('2307', '黔西南布依族苗族自治州', '23');
INSERT INTO city VALUES ('2308', '黔东南苗族侗族自治州', '23');
INSERT INTO city VALUES ('2309', '黔南布依族苗族自治州', '23');
INSERT INTO city VALUES ('2401', '海口市', '24');
INSERT INTO city VALUES ('2402', '三亚市', '24');
INSERT INTO city VALUES ('2403', '五指山市', '24');
INSERT INTO city VALUES ('2404', '琼海市', '24');
INSERT INTO city VALUES ('2405', '儋州市', '24');
INSERT INTO city VALUES ('2406', '文昌市', '24');
INSERT INTO city VALUES ('2407', '万宁市', '24');
INSERT INTO city VALUES ('2408', '东方市', '24');
INSERT INTO city VALUES ('2409', '澄迈县', '24');
INSERT INTO city VALUES ('2410', '定安县', '24');
INSERT INTO city VALUES ('2411', '屯昌县', '24');
INSERT INTO city VALUES ('2412', '临高县', '24');
INSERT INTO city VALUES ('2413', '白沙黎族自治县', '24');
INSERT INTO city VALUES ('2414', '昌江黎族自治县', '24');
INSERT INTO city VALUES ('2415', '乐东黎族自治县', '24');
INSERT INTO city VALUES ('2416', '陵水黎族自治县', '24');
INSERT INTO city VALUES ('2417', '保亭黎族苗族自治县', '24');
INSERT INTO city VALUES ('2418', '琼中黎族苗族自治县', '24');
INSERT INTO city VALUES ('2501', '昆明市', '25');
INSERT INTO city VALUES ('2502', '曲靖市', '25');
INSERT INTO city VALUES ('2503', '玉溪市', '25');
INSERT INTO city VALUES ('2504', '保山市', '25');
INSERT INTO city VALUES ('2505', '昭通市', '25');
INSERT INTO city VALUES ('2506', '丽江市', '25');
INSERT INTO city VALUES ('2507', '思茅市', '25');
INSERT INTO city VALUES ('2508', '临沧市', '25');
INSERT INTO city VALUES ('2509', '文山壮族苗族自治州', '25');
INSERT INTO city VALUES ('2510', '红河哈尼族彝族自治州', '25');
INSERT INTO city VALUES ('2511', '西双版纳傣族自治州', '25');
INSERT INTO city VALUES ('2512', '楚雄彝族自治州', '25');
INSERT INTO city VALUES ('2513', '大理白族自治州', '25');
INSERT INTO city VALUES ('2514', '德宏傣族景颇族自治州', '25');
INSERT INTO city VALUES ('2515', '怒江傈傈族自治州', '25');
INSERT INTO city VALUES ('2516', '迪庆藏族自治州', '25');
INSERT INTO city VALUES ('2601', '西宁市', '26');
INSERT INTO city VALUES ('2602', '海东地区', '26');
INSERT INTO city VALUES ('2603', '海北藏族自治州', '26');
INSERT INTO city VALUES ('2604', '黄南藏族自治州', '26');
INSERT INTO city VALUES ('2605', '海南藏族自治州', '26');
INSERT INTO city VALUES ('2606', '果洛藏族自治州', '26');
INSERT INTO city VALUES ('2607', '玉树藏族自治州', '26');
INSERT INTO city VALUES ('2608', '海西蒙古族藏族自治州', '26');
INSERT INTO city VALUES ('2701', '西安市', '27');
INSERT INTO city VALUES ('2702', '铜川市', '27');
INSERT INTO city VALUES ('2703', '宝鸡市', '27');
INSERT INTO city VALUES ('2704', '咸阳市', '27');
INSERT INTO city VALUES ('2705', '渭南市', '27');
INSERT INTO city VALUES ('2706', '延安市', '27');
INSERT INTO city VALUES ('2707', '汉中市', '27');
INSERT INTO city VALUES ('2708', '榆林市', '27');
INSERT INTO city VALUES ('2709', '安康市', '27');
INSERT INTO city VALUES ('2710', '商洛市', '27');
INSERT INTO city VALUES ('2801', '南宁市', '28');
INSERT INTO city VALUES ('2802', '柳州市', '28');
INSERT INTO city VALUES ('2803', '桂林市', '28');
INSERT INTO city VALUES ('2804', '梧州市', '28');
INSERT INTO city VALUES ('2805', '北海市', '28');
INSERT INTO city VALUES ('2806', '防城港市', '28');
INSERT INTO city VALUES ('2807', '钦州市', '28');
INSERT INTO city VALUES ('2808', '贵港市', '28');
INSERT INTO city VALUES ('2809', '玉林市', '28');
INSERT INTO city VALUES ('2810', '百色市', '28');
INSERT INTO city VALUES ('2811', '贺州市', '28');
INSERT INTO city VALUES ('2812', '河池市', '28');
INSERT INTO city VALUES ('2813', '来宾市', '28');
INSERT INTO city VALUES ('2814', '崇左市', '28');
INSERT INTO city VALUES ('2901', '拉萨市', '29');
INSERT INTO city VALUES ('2902', '那曲地区', '29');
INSERT INTO city VALUES ('2903', '昌都地区', '29');
INSERT INTO city VALUES ('2904', '山南地区', '29');
INSERT INTO city VALUES ('2905', '日喀则地区', '29');
INSERT INTO city VALUES ('2906', '阿里地区', '29');
INSERT INTO city VALUES ('2907', '林芝地区', '29');
INSERT INTO city VALUES ('3001', '银川市', '30');
INSERT INTO city VALUES ('3002', '石嘴山市', '30');
INSERT INTO city VALUES ('3003', '吴忠市', '30');
INSERT INTO city VALUES ('3004', '固原市', '30');
INSERT INTO city VALUES ('3005', '中卫市', '30');
INSERT INTO city VALUES ('3101', '乌鲁木齐市', '31');
INSERT INTO city VALUES ('3102', '克拉玛依市', '31');
INSERT INTO city VALUES ('3103', '石河子市　', '31');
INSERT INTO city VALUES ('3104', '阿拉尔市', '31');
INSERT INTO city VALUES ('3105', '图木舒克市', '31');
INSERT INTO city VALUES ('3106', '五家渠市', '31');
INSERT INTO city VALUES ('3107', '吐鲁番市', '31');
INSERT INTO city VALUES ('3108', '阿克苏市', '31');
INSERT INTO city VALUES ('3109', '喀什市', '31');
INSERT INTO city VALUES ('3110', '哈密市', '31');
INSERT INTO city VALUES ('3111', '和田市', '31');
INSERT INTO city VALUES ('3112', '阿图什市', '31');
INSERT INTO city VALUES ('3113', '库尔勒市', '31');
INSERT INTO city VALUES ('3114', '昌吉市　', '31');
INSERT INTO city VALUES ('3115', '阜康市', '31');
INSERT INTO city VALUES ('3116', '米泉市', '31');
INSERT INTO city VALUES ('3117', '博乐市', '31');
INSERT INTO city VALUES ('3118', '伊宁市', '31');
INSERT INTO city VALUES ('3119', '奎屯市', '31');
INSERT INTO city VALUES ('3120', '塔城市', '31');
INSERT INTO city VALUES ('3121', '乌苏市', '31');
INSERT INTO city VALUES ('3122', '阿勒泰市', '31');
INSERT INTO city VALUES ('3201', '呼和浩特市', '32');
INSERT INTO city VALUES ('3202', '包头市', '32');
INSERT INTO city VALUES ('3203', '乌海市', '32');
INSERT INTO city VALUES ('3204', '赤峰市', '32');
INSERT INTO city VALUES ('3205', '通辽市', '32');
INSERT INTO city VALUES ('3206', '鄂尔多斯市', '32');
INSERT INTO city VALUES ('3207', '呼伦贝尔市', '32');
INSERT INTO city VALUES ('3208', '巴彦淖尔市', '32');
INSERT INTO city VALUES ('3209', '乌兰察布市', '32');
INSERT INTO city VALUES ('3210', '锡林郭勒盟', '32');
INSERT INTO city VALUES ('3211', '兴安盟', '32');
INSERT INTO city VALUES ('3212', '阿拉善盟', '32');
INSERT INTO city VALUES ('3301', '澳门特别行政区', '33');
INSERT INTO city VALUES ('3401', '香港特别行政区', '34');

-- ----------------------------
-- Table structure for `provincial`
-- ----------------------------
DROP TABLE IF EXISTS `provincial`;
CREATE TABLE `provincial` (
  `pid` int(11) NOT NULL,
  `Provincial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provincial
-- ----------------------------
INSERT INTO provincial VALUES ('1', '北京市');
INSERT INTO provincial VALUES ('2', '天津市');
INSERT INTO provincial VALUES ('3', '上海市');
INSERT INTO provincial VALUES ('4', '重庆市');
INSERT INTO provincial VALUES ('5', '河北省');
INSERT INTO provincial VALUES ('6', '山西省');
INSERT INTO provincial VALUES ('7', '台湾省');
INSERT INTO provincial VALUES ('8', '辽宁省');
INSERT INTO provincial VALUES ('9', '吉林省');
INSERT INTO provincial VALUES ('10', '黑龙江省');
INSERT INTO provincial VALUES ('11', '江苏省');
INSERT INTO provincial VALUES ('12', '浙江省');
INSERT INTO provincial VALUES ('13', '安徽省');
INSERT INTO provincial VALUES ('14', '福建省');
INSERT INTO provincial VALUES ('15', '江西省');
INSERT INTO provincial VALUES ('16', '山东省');
INSERT INTO provincial VALUES ('17', '河南省');
INSERT INTO provincial VALUES ('18', '湖北省');
INSERT INTO provincial VALUES ('19', '湖南省');
INSERT INTO provincial VALUES ('20', '广东省');
INSERT INTO provincial VALUES ('21', '甘肃省');
INSERT INTO provincial VALUES ('22', '四川省');
INSERT INTO provincial VALUES ('23', '贵州省');
INSERT INTO provincial VALUES ('24', '海南省');
INSERT INTO provincial VALUES ('25', '云南省');
INSERT INTO provincial VALUES ('26', '青海省');
INSERT INTO provincial VALUES ('27', '陕西省');
INSERT INTO provincial VALUES ('28', '广西壮族自治区');
INSERT INTO provincial VALUES ('29', '西藏自治区');
INSERT INTO provincial VALUES ('30', '宁夏回族自治区');
INSERT INTO provincial VALUES ('31', '新疆维吾尔自治区');
INSERT INTO provincial VALUES ('32', '内蒙古自治区');
INSERT INTO provincial VALUES ('33', '澳门特别行政区');
INSERT INTO provincial VALUES ('34', '香港特别行政区');

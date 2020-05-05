/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : db_xxpt

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 04/05/2020 19:27:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userPw` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES (1, 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for t_doc
-- ----------------------------
DROP TABLE IF EXISTS `t_doc`;
CREATE TABLE `t_doc` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujianYuanshiming` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_doc
-- ----------------------------
BEGIN;
INSERT INTO `t_doc` VALUES (1, 'Java程序设计 ——U01  Java概述', '/upload/1587913973989.doc', 'U01  Java概述.doc', '2020-02-25', 'no');
INSERT INTO `t_doc` VALUES (2, 'Java程序设计——U02 Java语言的基本元素', '/upload/1587914214579.doc', 'U02 Java语言的基本元素.doc', '2020-03-01', 'no');
INSERT INTO `t_doc` VALUES (3, 'Java程序设计——U03  流程控制--选择', '/upload/1587914313250.doc', 'U03  流程控制--选择.doc', '2020-03-03', 'no');
INSERT INTO `t_doc` VALUES (4, 'Java程序设计——U03  流程控制--循环', '/upload/1587914362720.doc', 'U03  流程控制--循环.doc', '2020-03-09', 'no');
INSERT INTO `t_doc` VALUES (5, 'Java程序设计——U04   方法和数组', '/upload/1587914391223.doc', 'U04   方法和数组.doc', '2020-03-13', 'no');
INSERT INTO `t_doc` VALUES (6, 'Java程序设计——U05  面向对象（1）--类和对象', '/upload/1587914426128.docx', 'U05  面向对象（1）--类和对象.docx', '2020-03-24', 'no');
INSERT INTO `t_doc` VALUES (7, 'Java程序设计——U05  面向对象（2）--构造方法', '/upload/1587914468461.docx', 'U05  面向对象（2）--构造方法.docx', '2020-03-28', 'no');
INSERT INTO `t_doc` VALUES (8, 'Jsp动态网页技术——中级--Servlet（1）', '/upload/1587914563528.ppt', '中级--Servlet（1）.ppt', '2020-04-03', 'no');
INSERT INTO `t_doc` VALUES (9, 'Jsp动态网页技术——中级--JSP（2）', '/upload/1587914595026.ppt', '中级--JSP（2）.ppt', '2020-04-14', 'no');
INSERT INTO `t_doc` VALUES (10, 'Jsp动态网页技术——中级--JSP（3）', '/upload/1587914622561.ppt', '中级--JSP（3） .ppt', '2020-04-20', 'no');
COMMIT;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gonggao_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gonggao_data` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gonggao_del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
BEGIN;
INSERT INTO `t_gonggao` VALUES (1, '欢迎各位同学，我们可以在留言板进行留言啦^-^', '同学们可以分享自己的学习经验和学习方法交流一下~~<br  />', '2020-3-19 12:04:51', NULL);
INSERT INTO `t_gonggao` VALUES (2, '本周一将会进行数据库小测试', '<p>本周一将会进行数据库小测试！</p>\r\n<p>希望同学们积极参加~</p>\r\n<p>相应复习资料已经上传至试题下载板块，同学们可以提前下载进行复习~</p>', '2020-3-25 16:00:02', NULL);
INSERT INTO `t_gonggao` VALUES (3, '教学视频更新了，同学们请及时查看', '<p>MySQL基本理论课程已上传至教学视频板块</p>\r\n<p>请同学们及时观看学习~</p>', '2020-4-03  09:02:02', NULL);
INSERT INTO `t_gonggao` VALUES (4, '本周的相关教学资料已经上传至教学资料板块中', '本周的相关教学资料已经上传至系统中<br  />\r\n<br  />\r\n同学们可以下载下来查看学习~<br  />', '2020-4-12  13:09:57', NULL);
INSERT INTO `t_gonggao` VALUES (5, 'SSM考试试题及答案已上传至系统中', '<p>SSM考试试题及答案已上传至系统中</p>\r\n<p>请同学们查看并检查自己的错题</p>', '2020-4-25  15:29:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
BEGIN;
INSERT INTO `t_grade` VALUES (1, '大一', '2020-05-04 08:41:35', '1');
INSERT INTO `t_grade` VALUES (2, '大二', '2020-05-04 08:41:47', '1');
INSERT INTO `t_grade` VALUES (3, '大三', '2020-05-04 08:41:58', '1');
INSERT INTO `t_grade` VALUES (4, '大四', '2020-05-04 08:42:09', '1');
COMMIT;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` int(11) NOT NULL,
  `neirong` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `liuyanshi` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `huifu` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `huifushi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
BEGIN;
INSERT INTO `t_liuyan` VALUES (1, 'linux兴趣小组成立了，有兴趣联系我', '2020-03-18 22:18', 1, '听起来不错 有点想加入', '2020-03-19 17:28', 1);
INSERT INTO `t_liuyan` VALUES (4, '数据库第二讲课后习题该怎么做呀？有会的小伙伴吗？', '2020-04-09 15:38', 7, '我觉得应该是这样的需求分析阶段、概念结构设计阶段、逻辑结构设计阶段、数据库物理设计阶段、数据库实施阶段、数据库运行和维护阶段。参考一下~', '2020-04-10 17:31', 1);
INSERT INTO `t_liuyan` VALUES (5, '数据的基本类型都有哪些呢？', '2020-04-12 17:25', 7, '我觉得是byte、short、int、long、float、double、boolean、char一种八种', '2020-04-13  14:44', NULL);
INSERT INTO `t_liuyan` VALUES (6, 'java和javascript的区别大家知道是什么吗？', '2020-04-27 12:55', 7, 'javascript与Java代码格式、变量、执行方式均不一样', '2020-04-27 18:02', NULL);
INSERT INTO `t_liuyan` VALUES (7, 'hihi', '2020-04-29 12:27', 7, '嘻嘻嘻嘻嘻', '2020-05-02 17:55', NULL);
INSERT INTO `t_liuyan` VALUES (8, 'kkk', '2020-04-29 19:14', 7, '', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_shipin
-- ----------------------------
DROP TABLE IF EXISTS `t_shipin`;
CREATE TABLE `t_shipin` (
  `shipin_id` int(11) NOT NULL,
  `shipin_name` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shipin_jianjie` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujian` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujianYuanshiming` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`shipin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_shipin
-- ----------------------------
BEGIN;
INSERT INTO `t_shipin` VALUES (1, 'Java基础-Java语言发展史', '主要讲了Java语言的发展史<br  />', '/upload/1588058065029.avi', 'Java基础-Java语言发展史.avi', '2020-03-12', 'no');
INSERT INTO `t_shipin` VALUES (2, 'Java基础-Java语言特性', '主要讲了Java语言的特性.<br  />', '/upload/1588058113129.avi', 'Java基础-Java语言特性.avi', '2020-03-18', 'no');
INSERT INTO `t_shipin` VALUES (3, 'Java基础-编译运行Java程序', '主要讲了如何编译运行Java程序<br  />', '/upload/1588058150294.avi', 'Java基础-编译运行Java程序.avi', '2020-04-01', 'no');
INSERT INTO `t_shipin` VALUES (4, 'Java基础-编译运行Java程序', '主要讲了如何编译运行Java程序<br  />', '/upload/1588058188549.avi', 'Java基础-存储单位.avi', '2020-04-05', 'yes');
INSERT INTO `t_shipin` VALUES (5, 'Java基础-连接运算符', '主要讲了在JAVA中什么叫连接运算符<br  />', '/upload/1588058233979.avi', 'Java基础-连接运算符.avi', '2020-04-13', 'no');
INSERT INTO `t_shipin` VALUES (6, 'Java基础-存储单位', '主要讲了Java的存储单位都包括什么<br  />', '/upload/1588058364214.avi', 'Java基础-存储单位.avi', '2020-04-19', 'no');
INSERT INTO `t_shipin` VALUES (7, 'Java基础-计算机组成', '主要讲了计算机组成都包括什么<br  />', '/upload/1588058413897.avi', 'Java基础-计算机组成.avi', '2020-04-25', 'no');
INSERT INTO `t_shipin` VALUES (8, '版本', '<br  />', '/upload/1588242836462.doc', 'U03  流程控制--选择.doc', '2020-04-30', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for t_shiti
-- ----------------------------
DROP TABLE IF EXISTS `t_shiti`;
CREATE TABLE `t_shiti` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujian` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fujianYuanshiming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_shiti
-- ----------------------------
BEGIN;
INSERT INTO `t_shiti` VALUES (1, 'MySQL复习试题', '/upload/1587982477031.docx', 'MySQL试题--答案--更正.docx', '2020-03-22', 'no');
INSERT INTO `t_shiti` VALUES (2, 'JavaEE插件复习题', '/upload/1587984456984.txt', 'JavaEE插件复习题.txt', '2020-03-27', 'no');
INSERT INTO `t_shiti` VALUES (3, 'JAVA考试试题及答案', '/upload/1587984480745.docx', 'JAVA考试试题及答案.docx', '2020-04-05', 'no');
INSERT INTO `t_shiti` VALUES (4, 'SSM考试试题及答案', '/upload/1587984499627.docx', 'SSM考试试题及答案.docx', '2020-04-11', 'no');
INSERT INTO `t_shiti` VALUES (5, 'UML考试试题及答案', '/upload/1588009721366.doc', 'UML考试试题及答案.doc', '2020-04-19', 'no');
INSERT INTO `t_shiti` VALUES (6, '数据库原理及应用-考试试题及答案', '/upload/1588052592514.doc', '数据库原理及应用-期末考试试题及答案.doc', '2020-04-27', 'no');
COMMIT;

-- ----------------------------
-- Table structure for t_stu
-- ----------------------------
DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `stu_id` int(11) NOT NULL,
  `stu_xuehao` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stu_realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stu_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stu_age` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zhuangtai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xueyuan` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_stu
-- ----------------------------
BEGIN;
INSERT INTO `t_stu` VALUES (1, '16056101', '张杉杉', '女', '21', '0001', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (2, '16056102', '李思思', '男', '21', '0002', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (3, '16056103', '王呜呜', '女', '22', '0003', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (4, '16056104', '赵柳柳', '男', '21', '0004', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (5, '16056105', '孙奕奕', '女', '22', '0005', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (6, '16056106', '朴敏敏', '女', '21', '0006', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (7, '16056107', '贾舒涵', '女', '22', '0007', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (8, '16056108', '闵其其', '男', '22', '0008', 'b', 'no', NULL, NULL);
INSERT INTO `t_stu` VALUES (9, '00', '00', '男', '', '000000', 'a', 'yes', NULL, NULL);
INSERT INTO `t_stu` VALUES (10, '999', 'liujuan', '女', '44', '000000', 'a', 'no', 1, 1);
INSERT INTO `t_stu` VALUES (11, '12112', 'liujuan', '男', '11', '000000', 'a', 'yes', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_tea
-- ----------------------------
DROP TABLE IF EXISTS `t_tea`;
CREATE TABLE `t_tea` (
  `tea_id` int(11) NOT NULL,
  `tea_bianhao` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tea_realname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tea_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tea_age` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tea_xueyuan` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xueyuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_tea
-- ----------------------------
BEGIN;
INSERT INTO `t_tea` VALUES (1, '150101', '金老师', '女', '28', '哈哈嘻嘻', '0001', '0001', 'no', NULL);
INSERT INTO `t_tea` VALUES (3, '150212', '王老师', '女', '30', '嘻嘻', '0003', '0003', 'no', NULL);
INSERT INTO `t_tea` VALUES (4, '150328', '李老师', '男', '32', '妈妈', '0004', '0004', 'no', NULL);
INSERT INTO `t_tea` VALUES (5, '160122', '赵老师', '女', '26', '那你穿', '0005', '0005', 'no', NULL);
INSERT INTO `t_tea` VALUES (6, '160224', '孙老师', '女', '33', '开心', '0006', '0006', 'no', NULL);
INSERT INTO `t_tea` VALUES (7, '160506', '金老师', '男', '27', '你你你', '0007', '0007', 'no', NULL);
INSERT INTO `t_tea` VALUES (8, '160528', '田老师', '男', '35', '你好', '0008', '0008', 'no', NULL);
INSERT INTO `t_tea` VALUES (28, '吧v', '', '男', '', NULL, '', '000000', 'yes', NULL);
INSERT INTO `t_tea` VALUES (29, '长春', '', '男', '', NULL, '', '000000', 'yes', NULL);
INSERT INTO `t_tea` VALUES (30, '版本', '', '男', '', NULL, '', '000000', 'no', NULL);
INSERT INTO `t_tea` VALUES (31, '111', '付亚琴', '女', '24', NULL, 'fuyanqin', '000000', 'no', NULL);
INSERT INTO `t_tea` VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL);
INSERT INTO `t_tea` VALUES (33, '112', 'liuqiang', '男', '25', NULL, 'liuqiang', '000000', 'no', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_timu
-- ----------------------------
DROP TABLE IF EXISTS `t_timu`;
CREATE TABLE `t_timu` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xuanxianga` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xuanxiangb` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xuanxiangc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xuanxiangd` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `daan` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  `del` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fenlei` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_timu
-- ----------------------------
BEGIN;
INSERT INTO `t_timu` VALUES (1, '数据库设计的（  ）阶段进行关系规范化', '需求分析', '概念设计', '逻辑设计', '物理设计', 'C', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (2, '事务的持续性是指（）', '事务中包括的所有操作要么都做，要么不做', '事务一旦提交，对数据库的改变是永久的', ' 一个事务内部的操作及使用的数据对并发的其他事务是隔离的', ' 事务必须是使数据库从一个一致性状态变到另一个一致性状态', 'B', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (3, '用二维表来表示实体及实体之间联系的数据模型称为（  ）', '实体-联系模型', '层次模型', '网状模型', ' 关系模型', 'D', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (4, '数据库事务的4个特征是：原子性、一致性、（  ）、隔离性', '只读性', '封装性', '持续性', '恢复性', 'C', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (5, '将实体-联系模型转换为关系模型时，实体之间多对多联系在关系模型中的实现方式是（  ）', '建立新的关系', ' 建立新的属性', ' 增加新的关键字', '建立新的实体', 'A', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (6, '关于三大范式，说法不正确的是（）', '第一范式是数据库表每一列都是不可分割的基本数据项', '第二范式需要确保数据库表中的每一列都和主键相关，而不能只与主键的某一部分相关', '第三范式应确保数据库表中的每一列数据都和主键直接相关，而不能间接相关', '第三范式简单说就是传递依赖', 'D', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (7, '下列不属于JDBC的步骤的是（）', '加载一个Driver驱动', '创建数据库连接', '创建SQL数据', '处理结果（Select语句和ResultSet），处理完毕后关闭数据库资源。', 'C', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (8, '下列叙述中错误的是 (   )。', '一种数据的逻辑结构可以有多种存储结构', '数据的存储结构与数据的处理效率无关', '数据的存储结构与数据的处理效率密切相关', '数据的存储结构在计算机中所占的空间不一定是连续的', 'B', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (9, '并发事务的交叉执行破坏了事务的（ ）', ' 原子性', '隔离性', '一致性', '永久性', 'B', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (10, '视图是一个“虚表”，视图的构造基于（   ）', '基本表', '视图', '基本表或视图', '数据字典', 'C', 10, 'no', NULL);
INSERT INTO `t_timu` VALUES (11, '12', '21', '21', '21', '21', 'A', 10, 'yes', NULL);
INSERT INTO `t_timu` VALUES (12, '认知与感悟', '1111', '222', '333', '444', 'A', 10, 'no', '语文');
COMMIT;

-- ----------------------------
-- Table structure for t_xueyuan
-- ----------------------------
DROP TABLE IF EXISTS `t_xueyuan`;
CREATE TABLE `t_xueyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_xueyuan
-- ----------------------------
BEGIN;
INSERT INTO `t_xueyuan` VALUES (1, '传媒学院', 1, '2020-05-03');
INSERT INTO `t_xueyuan` VALUES (2, '云计算学院', 1, '2020-05-03');
INSERT INTO `t_xueyuan` VALUES (3, '建筑学院', 1, '2020-05-03');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

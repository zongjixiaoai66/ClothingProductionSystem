/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t066`;
CREATE DATABASE IF NOT EXISTS `t066` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t066`;

DROP TABLE IF EXISTS `chengpinjianyan`;
CREATE TABLE IF NOT EXISTS `chengpinjianyan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengpinbianhao` varchar(200) DEFAULT NULL COMMENT '成品编号',
  `chengpinmingcheng` varchar(200) DEFAULT NULL COMMENT '成品名称',
  `kuanshishifoufuheyangyi` varchar(200) DEFAULT NULL COMMENT '款式是否符合样衣',
  `chicunguigefuheyaoqiu` varchar(200) DEFAULT NULL COMMENT '尺寸规格符合要求',
  `fengheshifouguizhengpingfu` varchar(200) DEFAULT NULL COMMENT '缝合是否规整平服',
  `mianliaoshifouyouhuai` varchar(200) DEFAULT NULL COMMENT '面料是否有坏',
  `xiantoushifouxiujing` varchar(200) DEFAULT NULL COMMENT '线头是否修净',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `jianyanshijian` datetime DEFAULT NULL COMMENT '检验时间',
  `jianyanren` varchar(200) DEFAULT NULL COMMENT '检验人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chengpinbianhao` (`chengpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316553046 DEFAULT CHARSET=utf8mb3 COMMENT='成品检验';

DELETE FROM `chengpinjianyan`;
INSERT INTO `chengpinjianyan` (`id`, `addtime`, `chengpinbianhao`, `chengpinmingcheng`, `kuanshishifoufuheyangyi`, `chicunguigefuheyaoqiu`, `fengheshifouguizhengpingfu`, `mianliaoshifouyouhuai`, `xiantoushifouxiujing`, `shifouhege`, `jianyanshijian`, `jianyanren`) VALUES
	(61, '2021-04-13 11:48:54', '成品编号1', '成品名称1', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人1'),
	(62, '2021-04-13 11:48:54', '成品编号2', '成品名称2', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人2'),
	(63, '2021-04-13 11:48:54', '成品编号3', '成品名称3', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人3'),
	(64, '2021-04-13 11:48:54', '成品编号4', '成品名称4', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人4'),
	(65, '2021-04-13 11:48:54', '成品编号5', '成品名称5', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人5'),
	(66, '2021-04-13 11:48:54', '成品编号6', '成品名称6', '是', '是', '是', '是', '是', '不合格', '2021-04-13 19:48:54', '检验人6'),
	(1618316553045, '2021-04-13 12:22:32', '1618316534043', '测试', '是', '是', '是', '是', '是', '合格', '2021-04-30 00:00:00', '测试');

DROP TABLE IF EXISTS `chengyicangku`;
CREATE TABLE IF NOT EXISTS `chengyicangku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengpinbianhao` varchar(200) DEFAULT NULL COMMENT '成品编号',
  `chengpinmingcheng` varchar(200) DEFAULT NULL COMMENT '成品名称',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `jianyanren` varchar(200) DEFAULT NULL COMMENT '检验人',
  `jianyanshijian` datetime DEFAULT NULL COMMENT '检验时间',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316573100 DEFAULT CHARSET=utf8mb3 COMMENT='成衣仓库';

DELETE FROM `chengyicangku`;
INSERT INTO `chengyicangku` (`id`, `addtime`, `chengpinbianhao`, `chengpinmingcheng`, `shifouhege`, `jianyanren`, `jianyanshijian`, `shuliang`, `rukushijian`) VALUES
	(111, '2021-04-13 11:48:54', '成品编号1', '成品名称1', '是否合格1', '检验人1', '2021-04-13 19:48:54', '数量1', '2021-04-13 19:48:54'),
	(112, '2021-04-13 11:48:54', '成品编号2', '成品名称2', '是否合格2', '检验人2', '2021-04-13 19:48:54', '数量2', '2021-04-13 19:48:54'),
	(113, '2021-04-13 11:48:54', '成品编号3', '成品名称3', '是否合格3', '检验人3', '2021-04-13 19:48:54', '数量3', '2021-04-13 19:48:54'),
	(114, '2021-04-13 11:48:54', '成品编号4', '成品名称4', '是否合格4', '检验人4', '2021-04-13 19:48:54', '数量4', '2021-04-13 19:48:54'),
	(115, '2021-04-13 11:48:54', '成品编号5', '成品名称5', '是否合格5', '检验人5', '2021-04-13 19:48:54', '数量5', '2021-04-13 19:48:54'),
	(116, '2021-04-13 11:48:54', '成品编号6', '成品名称6', '是否合格6', '检验人6', '2021-04-13 19:48:54', '数量6', '2021-04-13 19:48:54'),
	(1618316573099, '2021-04-13 12:22:52', '1618316534043', '测试', '合格', '测试', '2021-04-30 00:00:00', '10', '2021-04-22 00:00:00');

DROP TABLE IF EXISTS `chengyichuku`;
CREATE TABLE IF NOT EXISTS `chengyichuku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengpinbianhao` varchar(200) DEFAULT NULL COMMENT '成品编号',
  `chengpinmingcheng` varchar(200) DEFAULT NULL COMMENT '成品名称',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `jianyanren` varchar(200) DEFAULT NULL COMMENT '检验人',
  `jianyanshijian` datetime DEFAULT NULL COMMENT '检验时间',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `chukuquxiang` varchar(200) DEFAULT NULL COMMENT '出库去向',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='成衣出库';

DELETE FROM `chengyichuku`;
INSERT INTO `chengyichuku` (`id`, `addtime`, `chengpinbianhao`, `chengpinmingcheng`, `shifouhege`, `jianyanren`, `jianyanshijian`, `shuliang`, `chukushijian`, `chukuquxiang`) VALUES
	(121, '2021-04-13 11:48:54', '成品编号1', '成品名称1', '是否合格1', '检验人1', '2021-04-13 19:48:54', '数量1', '2021-04-13 19:48:54', '出库去向1'),
	(122, '2021-04-13 11:48:54', '成品编号2', '成品名称2', '是否合格2', '检验人2', '2021-04-13 19:48:54', '数量2', '2021-04-13 19:48:54', '出库去向2'),
	(123, '2021-04-13 11:48:54', '成品编号3', '成品名称3', '是否合格3', '检验人3', '2021-04-13 19:48:54', '数量3', '2021-04-13 19:48:54', '出库去向3'),
	(124, '2021-04-13 11:48:54', '成品编号4', '成品名称4', '是否合格4', '检验人4', '2021-04-13 19:48:54', '数量4', '2021-04-13 19:48:54', '出库去向4'),
	(125, '2021-04-13 11:48:54', '成品编号5', '成品名称5', '是否合格5', '检验人5', '2021-04-13 19:48:54', '数量5', '2021-04-13 19:48:54', '出库去向5'),
	(126, '2021-04-13 11:48:54', '成品编号6', '成品名称6', '是否合格6', '检验人6', '2021-04-13 19:48:54', '数量6', '2021-04-13 19:48:54', '出库去向6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootww862/upload/1618316695133.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootww862/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootww862/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE IF NOT EXISTS `dingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shengchanwupin` varchar(200) DEFAULT NULL COMMENT '生产物品',
  `shengchanshuliang` varchar(200) DEFAULT NULL COMMENT '生产数量',
  `shengchanyuanliao` longtext COMMENT '生产原料',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `shengchanjindu` varchar(200) DEFAULT NULL COMMENT '生产进度',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316494716 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `dingdan`;
INSERT INTO `dingdan` (`id`, `addtime`, `dingdanbianhao`, `kehuxingming`, `lianxidianhua`, `shengchanwupin`, `shengchanshuliang`, `shengchanyuanliao`, `xiadanshijian`, `shengchanjindu`) VALUES
	(71, '2021-04-13 11:48:54', '订单编号1', '客户姓名1', '联系电话1', '生产物品1', '生产数量1', '生产原料1', '2021-04-13 19:48:54', '0'),
	(72, '2021-04-13 11:48:54', '订单编号2', '客户姓名2', '联系电话2', '生产物品2', '生产数量2', '生产原料2', '2021-04-13 19:48:54', '0'),
	(73, '2021-04-13 11:48:54', '订单编号3', '客户姓名3', '联系电话3', '生产物品3', '生产数量3', '生产原料3', '2021-04-13 19:48:54', '0'),
	(74, '2021-04-13 11:48:54', '订单编号4', '客户姓名4', '联系电话4', '生产物品4', '生产数量4', '生产原料4', '2021-04-13 19:48:54', '0'),
	(75, '2021-04-13 11:48:54', '订单编号5', '客户姓名5', '联系电话5', '生产物品5', '生产数量5', '生产原料5', '2021-04-13 19:48:54', '0'),
	(76, '2021-04-13 11:48:54', '订单编号6', '客户姓名6', '联系电话6', '生产物品6', '生产数量6', '生产原料6', '2021-04-13 19:48:54', '0'),
	(1618316494715, '2021-04-13 12:21:33', '1618316471085', '测试', '12345678912', '测试', '100', '测试', '2021-04-30 00:00:00', '0');

DROP TABLE IF EXISTS `gongzi`;
CREATE TABLE IF NOT EXISTS `gongzi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzinianyue` datetime DEFAULT NULL COMMENT '工资年月',
  `jibengongzi` int DEFAULT NULL COMMENT '基本工资',
  `jiangjin` int DEFAULT NULL COMMENT '奖金',
  `fakuan` int DEFAULT NULL COMMENT '罚款',
  `yingfagongzi` varchar(200) DEFAULT NULL COMMENT '应发工资',
  `jiesuanriqi` datetime DEFAULT NULL COMMENT '结算日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316425184 DEFAULT CHARSET=utf8mb3 COMMENT='工资';

DELETE FROM `gongzi`;
INSERT INTO `gongzi` (`id`, `addtime`, `gongzinianyue`, `jibengongzi`, `jiangjin`, `fakuan`, `yingfagongzi`, `jiesuanriqi`, `zhanghao`, `xingming`) VALUES
	(41, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 1, 1, 1, '应发工资1', '2021-04-13 19:48:54', '账号1', '姓名1'),
	(42, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 2, 2, 2, '应发工资2', '2021-04-13 19:48:54', '账号2', '姓名2'),
	(43, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 3, 3, 3, '应发工资3', '2021-04-13 19:48:54', '账号3', '姓名3'),
	(44, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 4, 4, 4, '应发工资4', '2021-04-13 19:48:54', '账号4', '姓名4'),
	(45, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 5, 5, 5, '应发工资5', '2021-04-13 19:48:54', '账号5', '姓名5'),
	(46, '2021-04-13 11:48:54', '2021-04-13 19:48:54', 6, 6, 6, '应发工资6', '2021-04-13 19:48:54', '账号6', '姓名6'),
	(1618316425183, '2021-04-13 12:20:24', '2021-04-01 00:00:00', 100, 100, 20, '180', '2021-04-30 00:00:00', '11', '测试姓名');

DROP TABLE IF EXISTS `kaoqin`;
CREATE TABLE IF NOT EXISTS `kaoqin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316776851 DEFAULT CHARSET=utf8mb3 COMMENT='考勤';

DELETE FROM `kaoqin`;
INSERT INTO `kaoqin` (`id`, `addtime`, `zhanghao`, `xingming`, `kaoqinleixing`, `dakashijian`, `sfsh`, `shhf`, `longitude`, `latitude`, `fulladdress`) VALUES
	(31, '2021-04-13 11:48:54', '账号1', '姓名1', '上班', '2021-04-13 19:48:54', '是', '', 1, 1, '宇宙银河系地球1号'),
	(32, '2021-04-13 11:48:54', '账号2', '姓名2', '上班', '2021-04-13 19:48:54', '是', '', 2, 2, '宇宙银河系地球2号'),
	(33, '2021-04-13 11:48:54', '账号3', '姓名3', '上班', '2021-04-13 19:48:54', '是', '', 3, 3, '宇宙银河系地球3号'),
	(34, '2021-04-13 11:48:54', '账号4', '姓名4', '上班', '2021-04-13 19:48:54', '是', '', 4, 4, '宇宙银河系地球4号'),
	(35, '2021-04-13 11:48:54', '账号5', '姓名5', '上班', '2021-04-13 19:48:54', '是', '', 5, 5, '宇宙银河系地球5号'),
	(36, '2021-04-13 11:48:54', '账号6', '姓名6', '上班', '2021-04-13 19:48:54', '是', '', 6, 6, '宇宙银河系地球6号'),
	(1618316776850, '2021-04-13 12:26:16', '11', '测试姓名', '上班', '2021-04-13 20:26:03', '是', NULL, 116.319, 39.9636, '北京市海淀区紫竹院街道北京友谊宾馆友谊宫');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316676264 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(131, '2021-04-13 11:48:54', '标题1', '简介1', 'http://localhost:8080/springbootww862/upload/news_picture1.jpg', '内容1'),
	(132, '2021-04-13 11:48:54', '标题2', '简介2', 'http://localhost:8080/springbootww862/upload/news_picture2.jpg', '内容2'),
	(133, '2021-04-13 11:48:54', '标题3', '简介3', 'http://localhost:8080/springbootww862/upload/news_picture3.jpg', '内容3'),
	(134, '2021-04-13 11:48:54', '标题4', '简介4', 'http://localhost:8080/springbootww862/upload/news_picture4.jpg', '内容4'),
	(135, '2021-04-13 11:48:54', '标题5', '简介5', 'http://localhost:8080/springbootww862/upload/news_picture5.jpg', '内容5'),
	(136, '2021-04-13 11:48:54', '标题6', '简介6', 'http://localhost:8080/springbootww862/upload/news_picture6.jpg', '内容6'),
	(1618316676263, '2021-04-13 12:24:35', '测试', '测试', 'http://localhost:8080/springbootww862/upload/1618316670346.png', '<p>测试</p>');

DROP TABLE IF EXISTS `renshianpai`;
CREATE TABLE IF NOT EXISTS `renshianpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `renzhishijian` varchar(200) DEFAULT NULL COMMENT '任职时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316351255 DEFAULT CHARSET=utf8mb3 COMMENT='人事安排';

DELETE FROM `renshianpai`;
INSERT INTO `renshianpai` (`id`, `addtime`, `zhiwei`, `bumen`, `xingming`, `zhaopian`, `renzhishijian`, `beizhu`) VALUES
	(21, '2021-04-13 11:48:53', '职位1', '部门1', '姓名1', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian1.jpg', '任职时间1', '备注1'),
	(22, '2021-04-13 11:48:53', '职位2', '部门2', '姓名2', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian2.jpg', '任职时间2', '备注2'),
	(23, '2021-04-13 11:48:53', '职位3', '部门3', '姓名3', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian3.jpg', '任职时间3', '备注3'),
	(24, '2021-04-13 11:48:53', '职位4', '部门4', '姓名4', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian4.jpg', '任职时间4', '备注4'),
	(25, '2021-04-13 11:48:53', '职位5', '部门5', '姓名5', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian5.jpg', '任职时间5', '备注5'),
	(26, '2021-04-13 11:48:54', '职位6', '部门6', '姓名6', 'http://localhost:8080/springbootww862/upload/renshianpai_zhaopian6.jpg', '任职时间6', '备注6'),
	(1618316351254, '2021-04-13 12:19:11', '测试·', '测试', '测试姓名', 'http://localhost:8080/springbootww862/upload/1618316341846.jpg', '一年', NULL);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'ehqepk1llqa7o1dflz5mmh3bdkdnskrm', '2021-04-13 12:15:30', '2024-01-30 05:44:02'),
	(2, 1618316274132, '11', 'yonghu', '用户', '9j9348w15fwz9ftbemipgt1um0k17tnf', '2021-04-13 12:25:13', '2021-04-13 13:25:14'),
	(3, 11, '用户1', 'yonghu', '用户', 'lzcuqain5mmeiknl5hwph0vtwt9xjeuy', '2024-01-30 04:42:25', '2024-01-30 05:42:26');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-13 11:48:54');

DROP TABLE IF EXISTS `yangban`;
CREATE TABLE IF NOT EXISTS `yangban` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yangbanmingcheng` varchar(200) DEFAULT NULL COMMENT '样板名称',
  `mianliao` varchar(200) DEFAULT NULL COMMENT '面料',
  `fuliao` varchar(200) DEFAULT NULL COMMENT '辅料',
  `yangbanchima` varchar(200) DEFAULT NULL COMMENT '样板尺码',
  `buweichicun` varchar(200) DEFAULT NULL COMMENT '部位尺寸',
  `kuanshixinxi` varchar(200) DEFAULT NULL COMMENT '款式信息',
  `zhuyidian` longtext COMMENT '注意点',
  `zhizuojindu` varchar(200) DEFAULT NULL COMMENT '制作进度',
  `yangbantupian` varchar(200) DEFAULT NULL COMMENT '样板图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316462518 DEFAULT CHARSET=utf8mb3 COMMENT='样板';

DELETE FROM `yangban`;
INSERT INTO `yangban` (`id`, `addtime`, `yangbanmingcheng`, `mianliao`, `fuliao`, `yangbanchima`, `buweichicun`, `kuanshixinxi`, `zhuyidian`, `zhizuojindu`, `yangbantupian`) VALUES
	(51, '2021-04-13 11:48:54', '样板名称1', '面料1', '辅料1', '样板尺码1', '部位尺寸1', '款式信息1', '注意点1', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian1.jpg'),
	(52, '2021-04-13 11:48:54', '样板名称2', '面料2', '辅料2', '样板尺码2', '部位尺寸2', '款式信息2', '注意点2', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian2.jpg'),
	(53, '2021-04-13 11:48:54', '样板名称3', '面料3', '辅料3', '样板尺码3', '部位尺寸3', '款式信息3', '注意点3', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian3.jpg'),
	(54, '2021-04-13 11:48:54', '样板名称4', '面料4', '辅料4', '样板尺码4', '部位尺寸4', '款式信息4', '注意点4', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian4.jpg'),
	(55, '2021-04-13 11:48:54', '样板名称5', '面料5', '辅料5', '样板尺码5', '部位尺寸5', '款式信息5', '注意点5', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian5.jpg'),
	(56, '2021-04-13 11:48:54', '样板名称6', '面料6', '辅料6', '样板尺码6', '部位尺寸6', '款式信息6', '注意点6', '制作中', 'http://localhost:8080/springbootww862/upload/yangban_yangbantupian6.jpg'),
	(1618316462517, '2021-04-13 12:21:02', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '制作中', 'http://localhost:8080/springbootww862/upload/1618316458122.jpg');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316274133 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-04-13 11:48:53', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-04-13 11:48:53', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-04-13 11:48:53', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-04-13 11:48:53', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-04-13 11:48:53', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-04-13 11:48:53', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootww862/upload/yonghu_zhaopian6.jpg'),
	(1618316274132, '2021-04-13 12:17:54', '11', '11', '测试姓名', '男', '12345678912', '1@163.com', '440000000000000000', 'http://localhost:8080/springbootww862/upload/1618316360964.jpg');

DROP TABLE IF EXISTS `yuanliaocangku`;
CREATE TABLE IF NOT EXISTS `yuanliaocangku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanliaobianhao` varchar(200) DEFAULT NULL COMMENT '原料编号',
  `yuanliaomingcheng` varchar(200) DEFAULT NULL COMMENT '原料名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanliaobianhao` (`yuanliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316610528 DEFAULT CHARSET=utf8mb3 COMMENT='原料仓库';

DELETE FROM `yuanliaocangku`;
INSERT INTO `yuanliaocangku` (`id`, `addtime`, `yuanliaobianhao`, `yuanliaomingcheng`, `shuliang`, `guige`, `pinpai`, `jiage`) VALUES
	(81, '2021-04-13 11:48:54', '原料编号1', '原料名称1', '数量1', '规格1', '品牌1', '价格1'),
	(82, '2021-04-13 11:48:54', '原料编号2', '原料名称2', '数量2', '规格2', '品牌2', '价格2'),
	(83, '2021-04-13 11:48:54', '原料编号3', '原料名称3', '数量3', '规格3', '品牌3', '价格3'),
	(84, '2021-04-13 11:48:54', '原料编号4', '原料名称4', '数量4', '规格4', '品牌4', '价格4'),
	(85, '2021-04-13 11:48:54', '原料编号5', '原料名称5', '数量5', '规格5', '品牌5', '价格5'),
	(86, '2021-04-13 11:48:54', '原料编号6', '原料名称6', '数量6', '规格6', '品牌6', '价格6'),
	(1618316610527, '2021-04-13 12:23:29', '1618316595106', '测试', '117', '测试', '测试', '测试');

DROP TABLE IF EXISTS `yuanliaochuku`;
CREATE TABLE IF NOT EXISTS `yuanliaochuku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanliaobianhao` varchar(200) DEFAULT NULL COMMENT '原料编号',
  `yuanliaomingcheng` varchar(200) DEFAULT NULL COMMENT '原料名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316647453 DEFAULT CHARSET=utf8mb3 COMMENT='原料出库';

DELETE FROM `yuanliaochuku`;
INSERT INTO `yuanliaochuku` (`id`, `addtime`, `yuanliaobianhao`, `yuanliaomingcheng`, `shuliang`, `guige`, `pinpai`, `jiage`, `chukushijian`) VALUES
	(101, '2021-04-13 11:48:54', '原料编号1', '原料名称1', '数量1', '规格1', '品牌1', '价格1', '2021-04-13 19:48:54'),
	(102, '2021-04-13 11:48:54', '原料编号2', '原料名称2', '数量2', '规格2', '品牌2', '价格2', '2021-04-13 19:48:54'),
	(103, '2021-04-13 11:48:54', '原料编号3', '原料名称3', '数量3', '规格3', '品牌3', '价格3', '2021-04-13 19:48:54'),
	(104, '2021-04-13 11:48:54', '原料编号4', '原料名称4', '数量4', '规格4', '品牌4', '价格4', '2021-04-13 19:48:54'),
	(105, '2021-04-13 11:48:54', '原料编号5', '原料名称5', '数量5', '规格5', '品牌5', '价格5', '2021-04-13 19:48:54'),
	(106, '2021-04-13 11:48:54', '原料编号6', '原料名称6', '数量6', '规格6', '品牌6', '价格6', '2021-04-13 19:48:54'),
	(1618316647452, '2021-04-13 12:24:06', '1618316595106', '测试', '8', '测试', '测试', '测试', '2021-04-30 00:00:00');

DROP TABLE IF EXISTS `yuanliaoruku`;
CREATE TABLE IF NOT EXISTS `yuanliaoruku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanliaobianhao` varchar(200) DEFAULT NULL COMMENT '原料编号',
  `yuanliaomingcheng` varchar(200) DEFAULT NULL COMMENT '原料名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618316626319 DEFAULT CHARSET=utf8mb3 COMMENT='原料入库';

DELETE FROM `yuanliaoruku`;
INSERT INTO `yuanliaoruku` (`id`, `addtime`, `yuanliaobianhao`, `yuanliaomingcheng`, `shuliang`, `guige`, `pinpai`, `jiage`, `rukushijian`) VALUES
	(91, '2021-04-13 11:48:54', '原料编号1', '原料名称1', '数量1', '规格1', '品牌1', '价格1', '2021-04-13 19:48:54'),
	(92, '2021-04-13 11:48:54', '原料编号2', '原料名称2', '数量2', '规格2', '品牌2', '价格2', '2021-04-13 19:48:54'),
	(93, '2021-04-13 11:48:54', '原料编号3', '原料名称3', '数量3', '规格3', '品牌3', '价格3', '2021-04-13 19:48:54'),
	(94, '2021-04-13 11:48:54', '原料编号4', '原料名称4', '数量4', '规格4', '品牌4', '价格4', '2021-04-13 19:48:54'),
	(95, '2021-04-13 11:48:54', '原料编号5', '原料名称5', '数量5', '规格5', '品牌5', '价格5', '2021-04-13 19:48:54'),
	(96, '2021-04-13 11:48:54', '原料编号6', '原料名称6', '数量6', '规格6', '品牌6', '价格6', '2021-04-13 19:48:54'),
	(1618316626318, '2021-04-13 12:23:45', '1618316595106', '测试', '25', '测试', '测试', '测试', '2021-04-30 00:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

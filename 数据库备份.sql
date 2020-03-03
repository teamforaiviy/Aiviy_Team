/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.0.45-community-nt : Database - aiviy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aiviy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aiviy`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `ad_id` int(8) NOT NULL auto_increment COMMENT '地址编号',
  `ad_address` varchar(55) default NULL COMMENT '收货地址',
  `ad_phone` varchar(11) default NULL COMMENT '收货人电话',
  `ad_sname` varchar(20) default NULL COMMENT '收货人姓',
  `user_id` int(8) default NULL COMMENT '用户id',
  `ad_name` varchar(55) default NULL COMMENT '收货人名',
  PRIMARY KEY  (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `c_id` int(8) NOT NULL auto_increment COMMENT '评论编号（自增）',
  `c_comment` varchar(255) default NULL COMMENT '评论内容',
  `user_id` int(8) default NULL COMMENT '用户id',
  `g_id` int(8) default NULL COMMENT '商品编号',
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `g_id` int(8) NOT NULL auto_increment COMMENT '商品编号',
  `g_name` varchar(255) default NULL COMMENT '商品名',
  `g_price` double default NULL COMMENT '商品价格',
  `g_content` varchar(255) default NULL COMMENT '商品描述',
  `uploadTime` datetime default NULL COMMENT '上传日期',
  `countStatus` int(10) default '0' COMMENT '折扣状态',
  PRIMARY KEY  (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`g_id`,`g_name`,`g_price`,`g_content`,`uploadTime`,`countStatus`) values (1,'Advanced SystemCare 12 Ultimate 清理杀毒软件',129,'全新的反病毒引擎，超敏感的检测和删除最新的病毒，木马软件，间谍软件','2020-02-21 14:21:29',0),(2,'Advanced SystemCare 13 Pro 清理优化工具',149,'一键清理优化和修复、深度您的PC，清理Windows注册表、自动在线反浏览器跟踪保护隐私，提升电脑速度高达200％。','2020-02-25 10:29:23',0),(3,'AMC Security 手机管家- 清理',99,'加速、安全','2020-02-25 10:32:01',0),(4,'Ashampoo Burning Studio 20 刻录软件 许可证',50,'许可证','2020-02-25 10:33:20',0),(5,'Avast Business Antivirus Pro Plus 商业专业增强版 企业全面保护',379,'防护软件','2020-02-25 10:34:32',0),(6,'Avast Business Antivirus Pro Plus 商业专业增强版 企业全面保护',254,'许可证','2020-02-25 10:35:19',0),(7,'Avast Business Antivirus Pro 商业专业版 企业杀毒软件',216,'许可证','2020-02-25 10:35:47',0),(8,'Avast Business Antivirus 商业版 小型企业防病毒软件',230,'许可证','2020-02-25 10:36:11',0),(9,'Avast Premier 杀毒软件 高级版 激活码',99,'许可证','2020-02-25 10:36:53',1),(10,'AVG PC TuneUp 2019 系统优化神器 序列码',152,'序列码','2020-02-25 10:41:10',1),(11,'Axure RP 9.0 PRO 专业版 原型设计软件 一年/终身授权',60,'安全软件','2020-02-25 10:41:12',1),(12,'Bitlocker 赤友数据恢复 PC/Mac 专业版',98,'数据恢复','2020-02-25 10:41:15',1),(13,'Bitl 数据恢复 PC/Mac 专业版',85,'数据恢复2','2020-02-25 10:42:46',0);

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `img_id` int(8) NOT NULL auto_increment COMMENT '图片编号',
  `img_url` varchar(255) default NULL COMMENT '图片路径',
  `g_id` int(8) default NULL COMMENT '商品编号',
  PRIMARY KEY  (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `image` */

insert  into `image`(`img_id`,`img_url`,`g_id`) values (1,'/img/Goods/Aiviy-iobit-asc-box-418x418.jpg',1),(2,'/img/Goods/Aiviy-iobit-ascu-img01-418x418.jpg',1),(3,'/img/Goods/Good2-1.jpg',2),(4,'/img/Goods/Good2-2.png',2),(5,'/img/Goods/Good3-1.jpg',3),(6,'/img/Goods/Good3-2.jpg',3),(7,'/img/Goods/Good4-1.jpg',4),(8,'/img/Goods/Good4-2.jpg',4),(9,'/img/Goods/Good5-1.jpg',5),(10,'/img/Goods/Good5-2.png',5),(11,'/img/Goods/Good6-1.jpg',6),(12,'/img/Goods/Good6-2.png',6),(13,'/img/Goods/Good7-1.jpg',7),(14,'/img/Goods/Good7-2.png',7),(15,'/img/Goods/Good8-1.jpg',8),(16,'/img/Goods/Good8-2.jpg',8),(17,'/img/Goods/Good9-1.jpg',9),(18,'/img/Goods/Good9-2.jpg',9),(19,'/img/Goods/Good10-1.jpg',10),(20,'/img/Goods/Good10-2.jpg',10),(21,'/img/Goods/Good11-1.png',11),(22,'/img/Goods/Good11-2.png',11),(23,'/img/Goods/Good12-1.jpg',12),(24,'/img/Goods/Good12-2.jpg',12),(25,'/img/Goods/Good12-1.jpg',13),(26,'/img/Goods/Good12-2.jpg',13);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `v_id` int(1) NOT NULL auto_increment COMMENT '会员等级（1、2、3、4）',
  `v_name` varchar(4) default NULL COMMENT '等级描述',
  `v_count` double default NULL COMMENT '折扣',
  PRIMARY KEY  (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `member` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `o_id` int(8) NOT NULL auto_increment COMMENT '订单自增id',
  `o_no` varchar(12) NOT NULL COMMENT '订单号',
  `o_state` int(1) NOT NULL default '0' COMMENT '订单状态',
  `o_num` double NOT NULL COMMENT '商品总价',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`o_id`,`o_no`,`o_state`,`o_num`,`user_id`,`createdDate`) values (1,'199717199457',0,272,1,'2020-02-28 00:00:00'),(2,'199729575180',0,272,1,'2020-03-02 19:29:57'),(3,'199746556214',0,272,1,'2020-03-02 19:46:55'),(4,'199747473781',0,272,1,'2020-03-02 19:47:52'),(5,'199748041625',0,272,1,'2020-03-02 19:48:07'),(6,'19975027453',0,272,1,'2020-03-02 19:50:27'),(7,'199751333254',0,272,1,'2020-03-02 19:51:33'),(8,'199753019978',0,272,1,'2020-03-02 19:53:01'),(9,'199754371359',0,272,1,'2020-03-02 19:54:37'),(10,'199759005786',0,272,1,'2020-03-02 19:59:00'),(11,'199759199339',0,272,1,'2020-03-02 19:59:19'),(12,'199701317080',0,272,1,'2020-03-02 20:01:31'),(13,'199703389321',0,272,1,'2020-03-02 20:03:38'),(14,'199758534609',1,410,1,'2020-03-03 08:58:53');

/*Table structure for table `ordertogoodsrelation` */

DROP TABLE IF EXISTS `ordertogoodsrelation`;

CREATE TABLE `ordertogoodsrelation` (
  `id` int(11) NOT NULL auto_increment,
  `o_no` varchar(12) NOT NULL,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ordertogoodsrelation` */

insert  into `ordertogoodsrelation`(`id`,`o_no`,`g_id`) values (1,'199703389321',10),(2,'199703389321',11),(3,'199758534609',9),(4,'199758534609',10),(5,'199758534609',11);

/*Table structure for table `shoppingcar` */

DROP TABLE IF EXISTS `shoppingcar`;

CREATE TABLE `shoppingcar` (
  `s_id` int(11) NOT NULL auto_increment,
  `s_name` varchar(255) NOT NULL,
  `s_price` double NOT NULL,
  `s_num` int(11) NOT NULL,
  `s_total` double NOT NULL,
  `g_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_status` int(11) NOT NULL default '0' COMMENT '默认0表示未生成订单，1表示已生成订单',
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `shoppingcar` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(8) NOT NULL auto_increment COMMENT '自增id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_mail` varchar(35) NOT NULL COMMENT '邮箱',
  `user_phone` varchar(11) NOT NULL COMMENT '电话号码',
  `user_pwd` varchar(20) NOT NULL COMMENT '密码',
  `user_money` double default NULL COMMENT '消费金额',
  `nickname` varchar(20) default '' COMMENT '昵称',
  `v_id` int(8) NOT NULL COMMENT '会员id',
  `createdDate` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY  (`user_id`,`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_mail`,`user_phone`,`user_pwd`,`user_money`,`nickname`,`v_id`,`createdDate`) values (1,'admin','631671241@qq.com','13675141997','123456',NULL,NULL,1,'2020-03-02 16:20:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tushujieyueguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tushujieyueguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tushujieyueguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-02 17:57:59'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-02 17:57:59'),(3,'yonghu_types','账户状态',1,'使用中',NULL,NULL,'2023-03-02 17:57:59'),(4,'yonghu_types','账户状态',2,'已禁用',NULL,NULL,'2023-03-02 17:57:59'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-02 17:57:59'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-02 17:57:59'),(7,'tushu_types','图书类型',1,'图书类型1',NULL,NULL,'2023-03-02 17:57:59'),(8,'tushu_types','图书类型',2,'图书类型2',NULL,NULL,'2023-03-02 17:57:59'),(9,'tushu_types','图书类型',3,'图书类型3',NULL,NULL,'2023-03-02 17:57:59'),(10,'tushu_types','图书类型',4,'图书类型4',NULL,NULL,'2023-03-02 17:57:59'),(11,'tushu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-02 17:58:00'),(12,'tushu_order_types','借阅状态',101,'已申请借阅',NULL,NULL,'2023-03-02 17:58:00'),(13,'tushu_order_types','借阅状态',102,'已取消借阅',NULL,NULL,'2023-03-02 17:58:00'),(14,'tushu_order_types','借阅状态',103,'确认借出',NULL,NULL,'2023-03-02 17:58:00'),(15,'tushu_order_types','借阅状态',104,'确认归还',NULL,NULL,'2023-03-02 17:58:00'),(16,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-02 17:58:00'),(17,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-02 17:58:00'),(18,'tushu_types','图书类型',5,'图书类型5',NULL,'','2023-03-02 19:52:32');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-02 17:59:17','公告详情1','2023-03-02 17:59:17'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-02 17:59:17','公告详情2','2023-03-02 17:59:17'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-02 17:59:17','公告详情3','2023-03-02 17:59:17'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-02 17:59:17','公告详情4','2023-03-02 17:59:17'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-02 17:59:17','公告详情5','2023-03-02 17:59:17'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-02 17:59:17','公告详情6','2023-03-02 17:59:17'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-02 17:59:17','公告详情7','2023-03-02 17:59:17'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-02 17:59:17','公告详情8','2023-03-02 17:59:17'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-02 17:59:17','公告详情9','2023-03-02 17:59:17'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-02 17:59:17','公告详情10','2023-03-02 17:59:17'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-02 17:59:17','公告详情11','2023-03-02 17:59:17'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-02 17:59:17','公告详情12','2023-03-02 17:59:17'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-02 17:59:17','公告详情13','2023-03-02 17:59:17'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-02 17:59:17','公告详情14','2023-03-02 17:59:17');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-02 17:59:17','回复信息1','2023-03-02 17:59:17','2023-03-02 17:59:17'),(2,1,'留言标题2','留言内容2','2023-03-02 17:59:17','回复信息2','2023-03-02 17:59:17','2023-03-02 17:59:17'),(3,3,'留言标题3','留言内容3','2023-03-02 17:59:17','回复信息3','2023-03-02 17:59:17','2023-03-02 17:59:17'),(4,1,'留言标题4','留言内容4','2023-03-02 17:59:17','回复信息4','2023-03-02 17:59:17','2023-03-02 17:59:17'),(5,3,'留言标题5','留言内容5','2023-03-02 17:59:17','回复信息5','2023-03-02 17:59:17','2023-03-02 17:59:17'),(6,2,'留言标题6','留言内容6','2023-03-02 17:59:17','回复信息6','2023-03-02 17:59:17','2023-03-02 17:59:17'),(7,3,'留言标题7','留言内容7','2023-03-02 17:59:17','回复信息7','2023-03-02 17:59:17','2023-03-02 17:59:17'),(8,1,'留言标题8','留言内容8','2023-03-02 17:59:17','回复信息8','2023-03-02 17:59:17','2023-03-02 17:59:17'),(9,1,'留言标题9','留言内容9','2023-03-02 17:59:17','回复信息9','2023-03-02 17:59:17','2023-03-02 17:59:17'),(10,1,'留言标题10','留言内容10','2023-03-02 17:59:17','回复信息10','2023-03-02 17:59:17','2023-03-02 17:59:17'),(11,3,'留言标题11','留言内容11','2023-03-02 17:59:17','回复信息11','2023-03-02 17:59:17','2023-03-02 17:59:17'),(12,2,'留言标题12','留言内容12','2023-03-02 17:59:17','回复信息12','2023-03-02 17:59:17','2023-03-02 17:59:17'),(13,1,'留言标题13','留言内容13','2023-03-02 17:59:17','回复信息13','2023-03-02 17:59:17','2023-03-02 17:59:17'),(14,1,'留言标题14','留言内容14','2023-03-02 17:59:17','回复信息14','2023-03-02 17:59:17','2023-03-02 17:59:17'),(15,4,'有些书籍没有','某某书籍  没有 能不能进一些','2023-03-02 19:50:02','孤独颂歌的','2023-03-02 19:52:59','2023-03-02 19:50:02');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5cyi9p08m274nhblze2lg6crx3oi66qu','2023-03-02 19:06:32','2023-03-02 20:51:57'),(2,1,'a1','yonghu','用户','j49glexcdj10086tvaoyexxna98gb1si','2023-03-02 19:09:32','2023-03-02 20:51:27'),(3,2,'a2','yonghu','用户','jrn0e96vncmwx9jezlhbs299vp76nfou','2023-03-02 19:32:54','2023-03-02 20:32:55'),(4,4,'a5','yonghu','用户','fes9111y0b6wx1550206h1xamaan94q9','2023-03-02 19:48:13','2023-03-02 20:48:13');

/*Table structure for table `tushu` */

DROP TABLE IF EXISTS `tushu`;

CREATE TABLE `tushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_uuid_number` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `tushu_address` varchar(200) DEFAULT NULL COMMENT '图书位置',
  `tushu_types` int(11) DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_kucun_number` int(11) DEFAULT NULL COMMENT '图书数量',
  `tushu_clicknum` int(11) DEFAULT NULL COMMENT '图书热度',
  `tushu_content` text COMMENT '内容介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='图书';

/*Data for the table `tushu` */

insert  into `tushu`(`id`,`tushu_name`,`tushu_uuid_number`,`tushu_photo`,`tushu_address`,`tushu_types`,`tushu_kucun_number`,`tushu_clicknum`,`tushu_content`,`shangxia_types`,`tushu_delete`,`insert_time`,`create_time`) values (1,'图书名称1','1677751157475','upload/tushu1.jpg','图书位置1',3,101,187,'内容介绍1',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(2,'图书名称2','1677751157477','upload/tushu2.jpg','图书位置2',2,102,180,'内容介绍2',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(3,'图书名称3','1677751157498','upload/tushu3.jpg','图书位置3',4,103,309,'内容介绍3',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(4,'图书名称4','1677751157521','upload/tushu4.jpg','图书位置4',3,103,391,'内容介绍4',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(5,'图书名称5','1677751157455','upload/tushu5.jpg','图书位置5',3,105,71,'内容介绍5',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(6,'图书名称6','1677751157510','upload/tushu6.jpg','图书位置6',3,106,290,'内容介绍6',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(7,'图书名称7','1677751157486','upload/tushu7.jpg','图书位置7',3,107,142,'内容介绍7',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(8,'图书名称8','1677751157461','upload/tushu8.jpg','图书位置8',4,108,430,'内容介绍8',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(9,'图书名称9','1677751157510','upload/tushu9.jpg','图书位置9',1,109,286,'内容介绍9',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(10,'图书名称10','1677751157476','upload/tushu10.jpg','图书位置10',1,1010,135,'内容介绍10',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(11,'图书名称11','1677751157478','upload/tushu11.jpg','图书位置11',1,1011,140,'内容介绍11',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(12,'图书名称12','1677751157485','upload/tushu12.jpg','图书位置12',3,1012,145,'内容介绍12',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(13,'图书名称13','1677751157460','upload/tushu13.jpg','图书位置13',2,1013,251,'内容介绍13',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(14,'图书名称14','1677751157543','upload/tushu14.jpg','图书位置14',4,1014,224,'内容介绍14',1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17');

/*Table structure for table `tushu_collection` */

DROP TABLE IF EXISTS `tushu_collection`;

CREATE TABLE `tushu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='图书收藏';

/*Data for the table `tushu_collection` */

insert  into `tushu_collection`(`id`,`tushu_id`,`yonghu_id`,`tushu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(2,2,2,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(3,3,2,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(4,4,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(5,5,3,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(6,6,2,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(7,7,3,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(8,8,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(9,9,3,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(10,10,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(11,11,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(12,12,2,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(13,13,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(14,14,1,1,'2023-03-02 17:59:17','2023-03-02 17:59:17'),(15,3,4,1,'2023-03-02 19:48:38','2023-03-02 19:48:38');

/*Table structure for table `tushu_liuyan` */

DROP TABLE IF EXISTS `tushu_liuyan`;

CREATE TABLE `tushu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='图书留言';

/*Data for the table `tushu_liuyan` */

insert  into `tushu_liuyan`(`id`,`tushu_id`,`yonghu_id`,`tushu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-02 17:59:17','回复信息1','2023-03-02 17:59:17','2023-03-02 17:59:17'),(2,2,3,'留言内容2','2023-03-02 17:59:17','回复信息2','2023-03-02 17:59:17','2023-03-02 17:59:17'),(3,3,2,'留言内容3','2023-03-02 17:59:17','回复信息3','2023-03-02 17:59:17','2023-03-02 17:59:17'),(4,4,2,'留言内容4','2023-03-02 17:59:17','回复信息4','2023-03-02 17:59:17','2023-03-02 17:59:17'),(5,5,3,'留言内容5','2023-03-02 17:59:17','回复信息5','2023-03-02 17:59:17','2023-03-02 17:59:17'),(6,6,3,'留言内容6','2023-03-02 17:59:17','回复信息6','2023-03-02 17:59:17','2023-03-02 17:59:17'),(7,7,3,'留言内容7','2023-03-02 17:59:17','回复信息7','2023-03-02 17:59:17','2023-03-02 17:59:17'),(8,8,2,'留言内容8','2023-03-02 17:59:17','回复信息8','2023-03-02 17:59:17','2023-03-02 17:59:17'),(9,9,1,'留言内容9','2023-03-02 17:59:17','回复信息9','2023-03-02 17:59:17','2023-03-02 17:59:17'),(10,10,1,'留言内容10','2023-03-02 17:59:17','回复信息10','2023-03-02 17:59:17','2023-03-02 17:59:17'),(11,11,1,'留言内容11','2023-03-02 17:59:17','回复信息11','2023-03-02 17:59:17','2023-03-02 17:59:17'),(12,12,3,'留言内容12','2023-03-02 17:59:17','回复信息12','2023-03-02 17:59:17','2023-03-02 17:59:17'),(13,13,3,'留言内容13','2023-03-02 17:59:17','回复信息13','2023-03-02 17:59:17','2023-03-02 17:59:17'),(14,14,3,'留言内容14','2023-03-02 17:59:17','回复信息14','2023-03-02 17:59:17','2023-03-02 17:59:17'),(15,9,1,'广东省发生的','2023-03-02 19:53:08','国风的撒发达','2023-03-02 19:53:18','2023-03-02 19:53:08');

/*Table structure for table `tushu_order` */

DROP TABLE IF EXISTS `tushu_order`;

CREATE TABLE `tushu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '借阅编号 Search111 ',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '借阅数量',
  `tushu_order_time` timestamp NULL DEFAULT NULL COMMENT '还书时间',
  `tushu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='图书借阅';

/*Data for the table `tushu_order` */

insert  into `tushu_order`(`id`,`tushu_order_uuid_number`,`tushu_id`,`yonghu_id`,`buy_number`,`tushu_order_time`,`tushu_order_types`,`insert_time`,`create_time`) values (1,'1677755523880',4,1,1,'2023-07-04 00:00:00',103,'2023-03-02 19:12:04','2023-03-02 19:12:04'),(2,'1677755523880',3,1,1,'2023-07-02 00:00:00',103,'2023-03-02 19:12:04','2023-03-02 19:12:04'),(3,'1677755523880',4,2,1,'2023-07-04 00:00:00',103,'2023-03-02 19:12:04','2023-03-02 19:12:04'),(4,'1677755523880',2,1,1,'2023-07-02 00:00:00',103,'2023-03-02 19:12:04','2023-03-02 19:12:04'),(6,'1677757723957',3,4,1,'2023-03-10 19:48:38',102,'2023-03-02 19:48:44','2023-03-02 19:48:44'),(7,'1677757760851',4,4,1,'2023-03-09 19:49:17',104,'2023-03-02 19:49:21','2023-03-02 19:49:21'),(8,'1677757857192',4,4,1,'2023-03-01 19:50:53',104,'2023-03-02 19:50:57','2023-03-02 19:50:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-02 17:57:59');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-03-02 17:59:17'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com',1,'2023-03-02 17:59:17'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com',1,'2023-03-02 17:59:17'),(4,'a5','123456','张5','17703786905','410224199610232005','upload/1677757706119.jpg',2,'5@qq.com',2,'2023-03-02 19:48:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

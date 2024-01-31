/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot6alf1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot6alf1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot6alf1`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750664018 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (141,'2021-04-30 10:32:31',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (142,'2021-04-30 10:32:31',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (143,'2021-04-30 10:32:31',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (144,'2021-04-30 10:32:31',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (145,'2021-04-30 10:32:31',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (146,'2021-04-30 10:32:31',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619750435177,'2021-04-30 10:40:34',1619750209173,NULL,'电饭锅电饭锅地方刚发的',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619750664017,'2021-04-30 10:44:23',1619750209173,1,NULL,'个地方工号规范化发给发给预约',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot6alf1/upload/1619750309009.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot6alf1/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot6alf1/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750220664 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (22,'2021-04-30 10:32:31','会员2','123456','姓名2','年龄2','男','13823888882','440300199202020002','http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian2.jpg');
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (23,'2021-04-30 10:32:31','会员3','123456','姓名3','年龄3','男','13823888883','440300199303030003','http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian3.jpg');
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (24,'2021-04-30 10:32:31','会员4','123456','姓名4','年龄4','男','13823888884','440300199404040004','http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian4.jpg');
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (25,'2021-04-30 10:32:31','会员5','123456','姓名5','年龄5','男','13823888885','440300199505050005','http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian5.jpg');
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (26,'2021-04-30 10:32:31','会员6','123456','姓名6','年龄6','男','13823888886','440300199606060006','http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian6.jpg');
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (1619750220663,'2021-04-30 10:37:00','22','22','电饭锅','22','女','11122222222','441421199001125847','http://localhost:8080/springboot6alf1/upload/1619750700641.jpg');

/*Table structure for table `huiyuanquxiao` */

DROP TABLE IF EXISTS `huiyuanquxiao`;

CREATE TABLE `huiyuanquxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750857712 DEFAULT CHARSET=utf8 COMMENT='会员取消';

/*Data for the table `huiyuanquxiao` */

insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (81,'2021-04-30 10:32:31','预约编号1','客房号1','是','价格1',1,'总价1','取消原因1','2021-04-30 10:32:31','账号1','姓名1','手机1','身份证1','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (82,'2021-04-30 10:32:31','预约编号2','客房号2','是','价格2',2,'总价2','取消原因2','2021-04-30 10:32:31','账号2','姓名2','手机2','身份证2','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (83,'2021-04-30 10:32:31','预约编号3','客房号3','是','价格3',3,'总价3','取消原因3','2021-04-30 10:32:31','账号3','姓名3','手机3','身份证3','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (84,'2021-04-30 10:32:31','预约编号4','客房号4','是','价格4',4,'总价4','取消原因4','2021-04-30 10:32:31','账号4','姓名4','手机4','身份证4','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (85,'2021-04-30 10:32:31','预约编号5','客房号5','是','价格5',5,'总价5','取消原因5','2021-04-30 10:32:31','账号5','姓名5','手机5','身份证5','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (86,'2021-04-30 10:32:31','预约编号6','客房号6','是','价格6',6,'总价6','取消原因6','2021-04-30 10:32:31','账号6','姓名6','手机6','身份证6','是','','未支付');
insert  into `huiyuanquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1619750857711,'2021-04-30 10:47:37','202143010454285676861','333','是','333',11,'3663','<p>士大夫士大夫</p>','2021-04-30 10:45:51','22','电饭锅','11122222222','441421199001125847','否',NULL,'未支付');

/*Table structure for table `huiyuanruzhu` */

DROP TABLE IF EXISTS `huiyuanruzhu`;

CREATE TABLE `huiyuanruzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `ruzhuyajin` float DEFAULT NULL COMMENT '入住押金',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750893798 DEFAULT CHARSET=utf8 COMMENT='会员入住';

/*Data for the table `huiyuanruzhu` */

insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (101,'2021-04-30 10:32:31','订单编号1','客房号1','客房类型1','所属酒店1','账号1','姓名1','身份证1','手机1','已入住',1,'支付方式1','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (102,'2021-04-30 10:32:31','订单编号2','客房号2','客房类型2','所属酒店2','账号2','姓名2','身份证2','手机2','已入住',2,'支付方式2','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (103,'2021-04-30 10:32:31','订单编号3','客房号3','客房类型3','所属酒店3','账号3','姓名3','身份证3','手机3','已入住',3,'支付方式3','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (104,'2021-04-30 10:32:31','订单编号4','客房号4','客房类型4','所属酒店4','账号4','姓名4','身份证4','手机4','已入住',4,'支付方式4','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (105,'2021-04-30 10:32:31','订单编号5','客房号5','客房类型5','所属酒店5','账号5','姓名5','身份证5','手机5','已入住',5,'支付方式5','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (106,'2021-04-30 10:32:31','订单编号6','客房号6','客房类型6','所属酒店6','账号6','姓名6','身份证6','手机6','已入住',6,'支付方式6','2021-04-30 10:32:31','未支付');
insert  into `huiyuanruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (1619750893797,'2021-04-30 10:48:13','1619750780237','333','士大夫收到','士大夫都是广东省房给对方地方','22','电饭锅','441421199001125847','11122222222','已入住',444,'44发给房东','2021-04-30 10:46:20','未支付');

/*Table structure for table `huiyuantuifang` */

DROP TABLE IF EXISTS `huiyuantuifang`;

CREATE TABLE `huiyuantuifang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ruzhuyajin` varchar(200) DEFAULT NULL COMMENT '入住押金',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750898361 DEFAULT CHARSET=utf8 COMMENT='会员退房';

/*Data for the table `huiyuantuifang` */

insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (121,'2021-04-30 10:32:31','订单编号1','客房号1','客房类型1','所属酒店1','账号1','姓名1','身份证1','手机1','入住押金1','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (122,'2021-04-30 10:32:31','订单编号2','客房号2','客房类型2','所属酒店2','账号2','姓名2','身份证2','手机2','入住押金2','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (123,'2021-04-30 10:32:31','订单编号3','客房号3','客房类型3','所属酒店3','账号3','姓名3','身份证3','手机3','入住押金3','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (124,'2021-04-30 10:32:31','订单编号4','客房号4','客房类型4','所属酒店4','账号4','姓名4','身份证4','手机4','入住押金4','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (125,'2021-04-30 10:32:31','订单编号5','客房号5','客房类型5','所属酒店5','账号5','姓名5','身份证5','手机5','入住押金5','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (126,'2021-04-30 10:32:31','订单编号6','客房号6','客房类型6','所属酒店6','账号6','姓名6','身份证6','手机6','入住押金6','2021-04-30 10:32:31','未支付');
insert  into `huiyuantuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (1619750898360,'2021-04-30 10:48:18','1619750780237','333','士大夫收到','士大夫都是广东省房给对方地方','22','电饭锅','441421199001125847','11122222222','444','2021-04-30 10:46:34','已支付');

/*Table structure for table `huiyuanyuyue` */

DROP TABLE IF EXISTS `huiyuanyuyue`;

CREATE TABLE `huiyuanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750848611 DEFAULT CHARSET=utf8 COMMENT='会员预约';

/*Data for the table `huiyuanyuyue` */

insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (61,'2021-04-30 10:32:31','预约编号1','客房号1','2021-04-30 10:32:31','价格1',1,'总价1','2021-04-30 10:32:31','账号1','姓名1','手机1','身份证1','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (62,'2021-04-30 10:32:31','预约编号2','客房号2','2021-04-30 10:32:31','价格2',2,'总价2','2021-04-30 10:32:31','账号2','姓名2','手机2','身份证2','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (63,'2021-04-30 10:32:31','预约编号3','客房号3','2021-04-30 10:32:31','价格3',3,'总价3','2021-04-30 10:32:31','账号3','姓名3','手机3','身份证3','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (64,'2021-04-30 10:32:31','预约编号4','客房号4','2021-04-30 10:32:31','价格4',4,'总价4','2021-04-30 10:32:31','账号4','姓名4','手机4','身份证4','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (65,'2021-04-30 10:32:31','预约编号5','客房号5','2021-04-30 10:32:31','价格5',5,'总价5','2021-04-30 10:32:31','账号5','姓名5','手机5','身份证5','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (66,'2021-04-30 10:32:31','预约编号6','客房号6','2021-04-30 10:32:31','价格6',6,'总价6','2021-04-30 10:32:31','账号6','姓名6','手机6','身份证6','是','','未支付');
insert  into `huiyuanyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1619750848610,'2021-04-30 10:47:27','202143010454285676861','333','2021-04-30 10:45:43','333',11,'3663','2021-04-30 10:45:43','22','电饭锅','11122222222','441421199001125847','否',NULL,'未支付');

/*Table structure for table `kefangxinxi` */

DROP TABLE IF EXISTS `kefangxinxi`;

CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefanghao` varchar(200) NOT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `chuangxing` varchar(200) NOT NULL COMMENT '床型',
  `kefangtupian` varchar(200) DEFAULT NULL COMMENT '客房图片',
  `fangjianmianji` varchar(200) DEFAULT NULL COMMENT '房间面积',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `weishengqingkuang` varchar(200) DEFAULT NULL COMMENT '卫生情况',
  `kefanghuanjing` varchar(200) DEFAULT NULL COMMENT '客房环境',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `kefangjieshao` longtext COMMENT '客房介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750290378 DEFAULT CHARSET=utf8 COMMENT='客房信息';

/*Data for the table `kefangxinxi` */

insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (41,'2021-04-30 10:32:31','客房号1','客房类型1','床型1','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian1.jpg','房间面积1',1,'已客满','可约时间1','待清扫','客房环境1','所属酒店1','客房介绍1','2021-04-30 10:32:31',1);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (42,'2021-04-30 10:32:31','客房号2','客房类型2','床型2','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian2.jpg','房间面积2',2,'已客满','可约时间2','待清扫','客房环境2','所属酒店2','客房介绍2','2021-04-30 10:32:31',2);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (43,'2021-04-30 10:32:31','客房号3','客房类型3','床型3','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian3.jpg','房间面积3',3,'已客满','可约时间3','待清扫','客房环境3','所属酒店3','客房介绍3','2021-04-30 10:40:31',8);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (44,'2021-04-30 10:32:31','客房号4','客房类型4','床型4','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian4.jpg','房间面积4',4,'已客满','可约时间4','待清扫','客房环境4','所属酒店4','客房介绍4','2021-04-30 10:32:31',4);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (45,'2021-04-30 10:32:31','客房号5','客房类型5','床型5','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian5.jpg','房间面积5',5,'已客满','可约时间5','待清扫','客房环境5','所属酒店5','客房介绍5','2021-04-30 10:32:31',5);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (46,'2021-04-30 10:32:31','客房号6','客房类型6','床型6','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian6.jpg','房间面积6',6,'已客满','可约时间6','待清扫','客房环境6','所属酒店6','客房介绍6','2021-04-30 10:32:31',6);
insert  into `kefangxinxi`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`chuangxing`,`kefangtupian`,`fangjianmianji`,`jiage`,`kefangzhuangtai`,`keyueshijian`,`weishengqingkuang`,`kefanghuanjing`,`suoshujiudian`,`kefangjieshao`,`clicktime`,`clicknum`) values (1619750290377,'2021-04-30 10:38:09','333','士大夫收到','地方收到收到','http://localhost:8080/springboot6alf1/upload/1619750267730.jpg','发给对方',333,'空闲','地方的给对方地方','待清扫','电饭锅地方电饭锅','士大夫都是广东省房给对方地方','<p>士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方</p><p><img src=\"http://localhost:8080/springboot6alf1/upload/1619750283905.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/springboot6alf1/upload/1619750286406.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/springboot6alf1/upload/1619750289104.jpg\"></p><p><br></p>','2021-04-30 10:47:32',11);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750407297 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (171,'2021-04-30 10:32:31',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (172,'2021-04-30 10:32:31',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (173,'2021-04-30 10:32:31',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (174,'2021-04-30 10:32:31',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (175,'2021-04-30 10:32:31',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (176,'2021-04-30 10:32:31',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619750407296,'2021-04-30 10:40:07',1619750209173,'11','发给的广泛地地方给对方',' 恢复供货发给很反感很反感');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750325216 DEFAULT CHARSET=utf8 COMMENT='酒店资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (161,'2021-04-30 10:32:31','标题1','简介1','http://localhost:8080/springboot6alf1/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (162,'2021-04-30 10:32:31','标题2','简介2','http://localhost:8080/springboot6alf1/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (163,'2021-04-30 10:32:31','标题3','简介3','http://localhost:8080/springboot6alf1/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (164,'2021-04-30 10:32:31','标题4','简介4','http://localhost:8080/springboot6alf1/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (165,'2021-04-30 10:32:31','标题5','简介5','http://localhost:8080/springboot6alf1/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (166,'2021-04-30 10:32:31','标题6','简介6','http://localhost:8080/springboot6alf1/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619750325215,'2021-04-30 10:38:44','电饭锅地方地方','个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方','http://localhost:8080/springboot6alf1/upload/1619750316221.png','<p>个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方</p><p><img src=\"http://localhost:8080/springboot6alf1/upload/1619750323530.jpg\"></p>');

/*Table structure for table `qingjierenyuan` */

DROP TABLE IF EXISTS `qingjierenyuan`;

CREATE TABLE `qingjierenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiezhanghao` varchar(200) NOT NULL COMMENT '清洁账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qingjiexingming` varchar(200) DEFAULT NULL COMMENT '清洁姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiezhanghao` (`qingjiezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750230548 DEFAULT CHARSET=utf8 COMMENT='清洁人员';

/*Data for the table `qingjierenyuan` */

insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (31,'2021-04-30 10:32:31','清洁人员1','123456','清洁姓名1','年龄1','男','13823888881','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian1.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (32,'2021-04-30 10:32:31','清洁人员2','123456','清洁姓名2','年龄2','男','13823888882','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian2.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (33,'2021-04-30 10:32:31','清洁人员3','123456','清洁姓名3','年龄3','男','13823888883','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian3.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (34,'2021-04-30 10:32:31','清洁人员4','123456','清洁姓名4','年龄4','男','13823888884','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian4.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (35,'2021-04-30 10:32:31','清洁人员5','123456','清洁姓名5','年龄5','男','13823888885','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian5.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (36,'2021-04-30 10:32:31','清洁人员6','123456','清洁姓名6','年龄6','男','13823888886','http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian6.jpg');
insert  into `qingjierenyuan`(`id`,`addtime`,`qingjiezhanghao`,`mima`,`qingjiexingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1619750230547,'2021-04-30 10:37:10','33','33','电饭锅','33','男','11122233333','http://localhost:8080/springboot6alf1/upload/1619750962831.jpg');

/*Table structure for table `qingsaofangjian` */

DROP TABLE IF EXISTS `qingsaofangjian`;

CREATE TABLE `qingsaofangjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `shifoudasao` varchar(200) DEFAULT NULL COMMENT '是否打扫',
  `dasaoshijian` datetime DEFAULT NULL COMMENT '打扫时间',
  `qingjiezhanghao` varchar(200) DEFAULT NULL COMMENT '清洁账号',
  `qingjiexingming` varchar(200) DEFAULT NULL COMMENT '清洁姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750993208 DEFAULT CHARSET=utf8 COMMENT='清扫房间';

/*Data for the table `qingsaofangjian` */

insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (131,'2021-04-30 10:32:31','客房号1','客房类型1','所属酒店1','是','2021-04-30 10:32:31','清洁账号1','清洁姓名1');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (132,'2021-04-30 10:32:31','客房号2','客房类型2','所属酒店2','是','2021-04-30 10:32:31','清洁账号2','清洁姓名2');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (133,'2021-04-30 10:32:31','客房号3','客房类型3','所属酒店3','是','2021-04-30 10:32:31','清洁账号3','清洁姓名3');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (134,'2021-04-30 10:32:31','客房号4','客房类型4','所属酒店4','是','2021-04-30 10:32:31','清洁账号4','清洁姓名4');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (135,'2021-04-30 10:32:31','客房号5','客房类型5','所属酒店5','是','2021-04-30 10:32:31','清洁账号5','清洁姓名5');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (136,'2021-04-30 10:32:31','客房号6','客房类型6','所属酒店6','是','2021-04-30 10:32:31','清洁账号6','清洁姓名6');
insert  into `qingsaofangjian`(`id`,`addtime`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`shifoudasao`,`dasaoshijian`,`qingjiezhanghao`,`qingjiexingming`) values (1619750993207,'2021-04-30 10:49:53','333','士大夫收到','士大夫都是广东省房给对方地方','是','2021-04-30 10:48:07','33','电饭锅');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750426327 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619750426326,'2021-04-30 10:40:25',1619750209173,43,'kefangxinxi','客房号3','http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian3.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pyam0m1ms202fosd1rmt706nbl11lnah','2021-04-30 10:37:17','2021-04-30 11:50:07');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619750209173,'11','yonghu','用户','ufa6m9n15so0q2564uin9caubgmylr6t','2021-04-30 10:38:52','2021-04-30 11:44:33');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619750220663,'22','huiyuan','会员','npt69ornnij5slvsp26ua4er02h9ms9v','2021-04-30 10:44:44','2021-04-30 11:48:42');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619750230547,'33','qingjierenyuan','清洁人员','0y01n9v7h70gsrhi9n6amo2keyd1f02h','2021-04-30 10:49:17','2021-04-30 11:49:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 10:32:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750209174 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-30 10:32:31','用户1','123456','姓名1','年龄1','男','13823888881','440300199101010001','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (12,'2021-04-30 10:32:31','用户2','123456','姓名2','年龄2','男','13823888882','440300199202020002','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (13,'2021-04-30 10:32:31','用户3','123456','姓名3','年龄3','男','13823888883','440300199303030003','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (14,'2021-04-30 10:32:31','用户4','123456','姓名4','年龄4','男','13823888884','440300199404040004','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (15,'2021-04-30 10:32:31','用户5','123456','姓名5','年龄5','男','13823888885','440300199505050005','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (16,'2021-04-30 10:32:31','用户6','123456','姓名6','年龄6','男','13823888886','440300199606060006','http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (1619750209173,'2021-04-30 10:36:49','11','11','受访人','11','男','11111111121','441421199001125846','http://localhost:8080/springboot6alf1/upload/1619750338056.jpg');

/*Table structure for table `yonghuquxiao` */

DROP TABLE IF EXISTS `yonghuquxiao`;

CREATE TABLE `yonghuquxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750482771 DEFAULT CHARSET=utf8 COMMENT='用户取消';

/*Data for the table `yonghuquxiao` */

insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (71,'2021-04-30 10:32:31','预约编号1','客房号1','是','价格1',1,'总价1','取消原因1','2021-04-30 10:32:31','账号1','姓名1','手机1','身份证1','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (72,'2021-04-30 10:32:31','预约编号2','客房号2','是','价格2',2,'总价2','取消原因2','2021-04-30 10:32:31','账号2','姓名2','手机2','身份证2','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (73,'2021-04-30 10:32:31','预约编号3','客房号3','是','价格3',3,'总价3','取消原因3','2021-04-30 10:32:31','账号3','姓名3','手机3','身份证3','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (74,'2021-04-30 10:32:31','预约编号4','客房号4','是','价格4',4,'总价4','取消原因4','2021-04-30 10:32:31','账号4','姓名4','手机4','身份证4','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (75,'2021-04-30 10:32:31','预约编号5','客房号5','是','价格5',5,'总价5','取消原因5','2021-04-30 10:32:31','账号5','姓名5','手机5','身份证5','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (76,'2021-04-30 10:32:31','预约编号6','客房号6','是','价格6',6,'总价6','取消原因6','2021-04-30 10:32:31','账号6','姓名6','手机6','身份证6','是','','未支付');
insert  into `yonghuquxiao`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`shifouquxiao`,`jiage`,`tianshu`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1619750482770,'2021-04-30 10:41:22','20214301038790860824','333','是','333',22,'7326','<p>房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 </p>','2021-04-30 20:41:29','11','受访人','11111111121','441421199001125846','是','111','已支付');

/*Table structure for table `yonghuruzhu` */

DROP TABLE IF EXISTS `yonghuruzhu`;

CREATE TABLE `yonghuruzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `ruzhuyajin` float DEFAULT NULL COMMENT '入住押金',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750529757 DEFAULT CHARSET=utf8 COMMENT='用户入住';

/*Data for the table `yonghuruzhu` */

insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (91,'2021-04-30 10:32:31','订单编号1','客房号1','客房类型1','所属酒店1','账号1','姓名1','身份证1','手机1','已入住',1,'支付方式1','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (92,'2021-04-30 10:32:31','订单编号2','客房号2','客房类型2','所属酒店2','账号2','姓名2','身份证2','手机2','已入住',2,'支付方式2','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (93,'2021-04-30 10:32:31','订单编号3','客房号3','客房类型3','所属酒店3','账号3','姓名3','身份证3','手机3','已入住',3,'支付方式3','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (94,'2021-04-30 10:32:31','订单编号4','客房号4','客房类型4','所属酒店4','账号4','姓名4','身份证4','手机4','已入住',4,'支付方式4','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (95,'2021-04-30 10:32:31','订单编号5','客房号5','客房类型5','所属酒店5','账号5','姓名5','身份证5','手机5','已入住',5,'支付方式5','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (96,'2021-04-30 10:32:31','订单编号6','客房号6','客房类型6','所属酒店6','账号6','姓名6','身份证6','手机6','已入住',6,'支付方式6','2021-04-30 10:32:31','未支付');
insert  into `yonghuruzhu`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`kefangzhuangtai`,`ruzhuyajin`,`zhifufangshi`,`ruzhushijian`,`ispay`) values (1619750529756,'2021-04-30 10:42:09','1619750415179','333','士大夫收到','士大夫都是广东省房给对方地方','11','受访人','441421199001125846','11111111121','已入住',1111,'发双方各地方地方地方','2021-04-30 10:40:15','已支付');

/*Table structure for table `yonghutuifang` */

DROP TABLE IF EXISTS `yonghutuifang`;

CREATE TABLE `yonghutuifang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ruzhuyajin` varchar(200) DEFAULT NULL COMMENT '入住押金',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750577288 DEFAULT CHARSET=utf8 COMMENT='用户退房';

/*Data for the table `yonghutuifang` */

insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (111,'2021-04-30 10:32:31','订单编号1','客房号1','客房类型1','所属酒店1','账号1','姓名1','身份证1','手机1','入住押金1','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (112,'2021-04-30 10:32:31','订单编号2','客房号2','客房类型2','所属酒店2','账号2','姓名2','身份证2','手机2','入住押金2','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (113,'2021-04-30 10:32:31','订单编号3','客房号3','客房类型3','所属酒店3','账号3','姓名3','身份证3','手机3','入住押金3','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (114,'2021-04-30 10:32:31','订单编号4','客房号4','客房类型4','所属酒店4','账号4','姓名4','身份证4','手机4','入住押金4','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (115,'2021-04-30 10:32:31','订单编号5','客房号5','客房类型5','所属酒店5','账号5','姓名5','身份证5','手机5','入住押金5','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (116,'2021-04-30 10:32:31','订单编号6','客房号6','客房类型6','所属酒店6','账号6','姓名6','身份证6','手机6','入住押金6','2021-04-30 10:32:31','未支付');
insert  into `yonghutuifang`(`id`,`addtime`,`dingdanbianhao`,`kefanghao`,`kefangleixing`,`suoshujiudian`,`zhanghao`,`xingming`,`shenfenzheng`,`shouji`,`ruzhuyajin`,`tuifangshijian`,`ispay`) values (1619750577287,'2021-04-30 10:42:56','1619750415179','333','士大夫收到','士大夫都是广东省房给对方地方','11','受访人','441421199001125846','11111111121','1111','2021-05-26 10:41:08','已支付');

/*Table structure for table `yonghuyuyue` */

DROP TABLE IF EXISTS `yonghuyuyue`;

CREATE TABLE `yonghuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750396715 DEFAULT CHARSET=utf8 COMMENT='用户预约';

/*Data for the table `yonghuyuyue` */

insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (51,'2021-04-30 10:32:31','预约编号1','客房号1','2021-04-30 10:32:31','价格1',1,'总价1','2021-04-30 10:32:31','账号1','姓名1','手机1','身份证1','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (52,'2021-04-30 10:32:31','预约编号2','客房号2','2021-04-30 10:32:31','价格2',2,'总价2','2021-04-30 10:32:31','账号2','姓名2','手机2','身份证2','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (53,'2021-04-30 10:32:31','预约编号3','客房号3','2021-04-30 10:32:31','价格3',3,'总价3','2021-04-30 10:32:31','账号3','姓名3','手机3','身份证3','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (54,'2021-04-30 10:32:31','预约编号4','客房号4','2021-04-30 10:32:31','价格4',4,'总价4','2021-04-30 10:32:31','账号4','姓名4','手机4','身份证4','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (55,'2021-04-30 10:32:31','预约编号5','客房号5','2021-04-30 10:32:31','价格5',5,'总价5','2021-04-30 10:32:31','账号5','姓名5','手机5','身份证5','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (56,'2021-04-30 10:32:31','预约编号6','客房号6','2021-04-30 10:32:31','价格6',6,'总价6','2021-04-30 10:32:31','账号6','姓名6','手机6','身份证6','是','','未支付');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`kefanghao`,`ruzhushijian`,`jiage`,`tianshu`,`zongjia`,`yuyueshijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1619750396714,'2021-04-30 10:39:56','20214301038790860824','333','2021-04-30 10:38:08','333',22,'7326','2021-04-30 10:38:08','11','受访人','11111111121','441421199001125846','是','2222','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

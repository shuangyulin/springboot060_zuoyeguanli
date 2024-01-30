/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootj8m2s
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootj8m2s` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootj8m2s`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootj8m2s/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootj8m2s/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootj8m2s/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`dianhua`,`youxiang`,`zhaopian`) values (21,'2021-04-17 20:31:34','教师1','123456','教师姓名1','男','助教','13823888881','773890001@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-17 20:31:34','教师2','123456','教师姓名2','男','助教','13823888882','773890002@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-17 20:31:34','教师3','123456','教师姓名3','男','助教','13823888883','773890003@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-17 20:31:34','教师4','123456','教师姓名4','男','助教','13823888884','773890004@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-17 20:31:34','教师5','123456','教师姓名5','男','助教','13823888885','773890005@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-17 20:31:34','教师6','123456','教师姓名6','男','助教','13823888886','773890006@qq.com','http://localhost:8080/springbootj8m2s/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefen` int(11) DEFAULT NULL COMMENT '学分',
  `jiaoxuewenjian` varchar(200) DEFAULT NULL COMMENT '教学文件',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618663489677 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`xuefen`,`jiaoxuewenjian`,`shangkedidian`,`kechengxiangqing`,`tupian`) values (51,'2021-04-17 20:31:34','课程编号1','课程名称1','课时1',1,'','上课地点1','课程详情1','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian1.jpg'),(52,'2021-04-17 20:31:34','课程编号2','课程名称2','课时2',2,'','上课地点2','课程详情2','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian2.jpg'),(53,'2021-04-17 20:31:34','课程编号3','课程名称3','课时3',3,'','上课地点3','课程详情3','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian3.jpg'),(54,'2021-04-17 20:31:34','课程编号4','课程名称4','课时4',4,'','上课地点4','课程详情4','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian4.jpg'),(55,'2021-04-17 20:31:34','课程编号5','课程名称5','课时5',5,'','上课地点5','课程详情5','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian5.jpg'),(56,'2021-04-17 20:31:34','课程编号6','课程名称6','课时6',6,'','上课地点6','课程详情6','http://localhost:8080/springbootj8m2s/upload/kecheng_tupian6.jpg'),(1618663489676,'2021-04-17 20:44:49','1618663523507','课程222222222222',NULL,NULL,NULL,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'教师1','jiaoshi','教师','1kxtgslpyzvko1qi9qslx8t8z38l3mv6','2021-04-17 20:40:50','2021-04-17 21:44:12'),(2,11,'学生1','xuesheng','学生','ks5r3g1mgm6pl71q7cd1664xhxrl2zcz','2021-04-17 20:41:48','2021-04-17 21:41:49');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 20:31:35');

/*Table structure for table `xiaozuxinxi` */

DROP TABLE IF EXISTS `xiaozuxinxi`;

CREATE TABLE `xiaozuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaozubianhao` varchar(200) DEFAULT NULL COMMENT '小组编号',
  `xiaozumingcheng` varchar(200) DEFAULT NULL COMMENT '小组名称',
  `zuzhangxuehao` varchar(200) DEFAULT NULL COMMENT '组长学号',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `xiaozurenshu` int(11) DEFAULT NULL COMMENT '小组人数',
  `xiaozuzhineng` longtext COMMENT '小组职能',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaozubianhao` (`xiaozubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='小组信息';

/*Data for the table `xiaozuxinxi` */

insert  into `xiaozuxinxi`(`id`,`addtime`,`xiaozubianhao`,`xiaozumingcheng`,`zuzhangxuehao`,`zuzhangxingming`,`xiaozurenshu`,`xiaozuzhineng`,`xuehao`,`xingming`) values (41,'2021-04-17 20:31:34','小组编号1','小组名称1','组长学号1','组长姓名12222',1,'小组职能1','学号1','姓名1'),(42,'2021-04-17 20:31:34','小组编号2','小组名称2','组长学号2','组长姓名2',2,'小组职能2','学号2','姓名2'),(43,'2021-04-17 20:31:34','小组编号3','小组名称3','组长学号3','组长姓名3',3,'小组职能3','学号3','姓名3'),(44,'2021-04-17 20:31:34','小组编号4','小组名称4','组长学号4','组长姓名4',4,'小组职能4','学号4','姓名4'),(45,'2021-04-17 20:31:34','小组编号5','小组名称5','组长学号5','组长姓名5',5,'小组职能5','学号5','姓名5'),(46,'2021-04-17 20:31:34','小组编号6','小组名称6','组长学号6','组长姓名6',6,'小组职能6','学号6','姓名6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-17 20:31:34','学生1','123456','学生姓名1','男',1,'专业1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-17 20:31:34','学生2','123456','学生姓名2','男',2,'专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-17 20:31:34','学生3','123456','学生姓名3','男',3,'专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-17 20:31:34','学生4','123456','学生姓名4','男',4,'专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-17 20:31:34','学生5','123456','学生姓名5','男',5,'专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-17 20:31:34','学生6','123456','学生姓名6','男',6,'专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootj8m2s/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiezhiriqi` date DEFAULT NULL COMMENT '截止日期',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618663504177 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`faburiqi`,`jiezhiriqi`,`zuoyebiaoti`,`zuoyeneirong`,`tupian`,`userid`) values (61,'2021-04-17 20:31:35','工号1','教师姓名1','2021-04-17','2021-04-17','作业标题1','作业内容1','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian1.jpg',1),(62,'2021-04-17 20:31:35','工号2','教师姓名2','2021-04-17','2021-04-17','作业标题2','作业内容2','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian2.jpg',2),(63,'2021-04-17 20:31:35','工号3','教师姓名3','2021-04-17','2021-04-17','作业标题3','作业内容3','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian3.jpg',3),(64,'2021-04-17 20:31:35','工号4','教师姓名4','2021-04-17','2021-04-17','作业标题4','作业内容4','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian4.jpg',4),(65,'2021-04-17 20:31:35','工号5','教师姓名5','2021-04-17','2021-04-17','作业标题5','作业内容5','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian5.jpg',5),(66,'2021-04-17 20:31:35','工号6','教师姓名6','2021-04-17','2021-04-17','作业标题6','作业内容6','http://localhost:8080/springbootj8m2s/upload/zuoye_tupian6.jpg',6),(1618663504176,'2021-04-17 20:45:03','教师1','教师姓名1',NULL,NULL,'这里发布修改作业',NULL,NULL,NULL);

/*Table structure for table `zuoyehuping` */

DROP TABLE IF EXISTS `zuoyehuping`;

CREATE TABLE `zuoyehuping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `zu` varchar(200) DEFAULT NULL COMMENT '组',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `zuoyezhaopian` varchar(200) DEFAULT NULL COMMENT '作业照片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `fujianming` varchar(200) DEFAULT NULL COMMENT '附件名',
  `fujianbianhao` varchar(200) DEFAULT NULL COMMENT '附件编号',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `hupingjifen` varchar(200) DEFAULT NULL COMMENT '互评给分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fujianbianhao` (`fujianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='作业互评';

/*Data for the table `zuoyehuping` */

insert  into `zuoyehuping`(`id`,`addtime`,`zuoyebianhao`,`timu`,`zu`,`neirong`,`jiaoshi`,`zuoyezhaopian`,`gonghao`,`jiaoshixingming`,`zuoyefujian`,`fujianming`,`fujianbianhao`,`shangchuanshijian`,`xuehao`,`xueshengxingming`,`hupingjifen`) values (71,'2021-04-17 20:31:35','作业编号1','题目1','组1','内容1','教师1','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian1.jpg','工号1','教师姓名1','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian1.jpg','附件名1','附件编号1','2021-04-17 20:31:35','学号1','学生姓名1','互评给分1'),(72,'2021-04-17 20:31:35','作业编号2','题目2','组2','内容2','教师2','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian2.jpg','工号2','教师姓名2','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian2.jpg','附件名2','附件编号2','2021-04-17 20:31:35','学号2','学生姓名2','互评给分2'),(73,'2021-04-17 20:31:35','作业编号3','题目3','组3','内容3','教师3','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian3.jpg','工号3','教师姓名3','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian3.jpg','附件名3','附件编号3','2021-04-17 20:31:35','学号3','学生姓名3','互评给分3'),(74,'2021-04-17 20:31:35','作业编号4','题目4','组4','内容4','教师4','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian4.jpg','工号4','教师姓名4','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian4.jpg','附件名4','附件编号4','2021-04-17 20:31:35','学号4','学生姓名4','互评给分4'),(75,'2021-04-17 20:31:35','作业编号5','题目5','组5','内容5','教师5','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian5.jpg','工号5','教师姓名5','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian5.jpg','附件名5','附件编号5','2021-04-17 20:31:35','学号5','学生姓名5','互评给分5'),(76,'2021-04-17 20:31:35','作业编号6','题目6','组6','内容6','教师6','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyezhaopian6.jpg','工号6','教师姓名6','http://localhost:8080/springbootj8m2s/upload/zuoyehuping_zuoyefujian6.jpg','附件名6','附件编号6','2021-04-17 20:31:35','学号6','学生姓名6','互评给分6');

/*Table structure for table `zuoyepingfen` */

DROP TABLE IF EXISTS `zuoyepingfen`;

CREATE TABLE `zuoyepingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zuoyepingfen` int(11) NOT NULL COMMENT '作业评分',
  `zuoyepingyu` longtext COMMENT '作业评语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618663395456 DEFAULT CHARSET=utf8 COMMENT='作业评分';

/*Data for the table `zuoyepingfen` */

insert  into `zuoyepingfen`(`id`,`addtime`,`zuoyemingcheng`,`kechengmingcheng`,`zuoyetupian`,`xuehao`,`xueshengxingming`,`zuoyepingfen`,`zuoyepingyu`) values (81,'2021-04-17 20:31:35','作业名称1','课程名称1','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian1.jpg','学号1','学生姓名1',1,'作业评语1'),(82,'2021-04-17 20:31:35','作业名称2','课程名称2','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian2.jpg','学号2','学生姓名2',2,'作业评语2'),(83,'2021-04-17 20:31:35','作业名称3','课程名称3','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian3.jpg','学号3','学生姓名3',3,'作业评语3'),(84,'2021-04-17 20:31:35','作业名称4','课程名称4','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian4.jpg','学号4','学生姓名4',4,'作业评语4'),(85,'2021-04-17 20:31:35','作业名称5','课程名称5','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian5.jpg','学号5','学生姓名5',5,'作业评语5'),(86,'2021-04-17 20:31:35','作业名称6','课程名称6','http://localhost:8080/springbootj8m2s/upload/zuoyepingfen_zuoyetupian6.jpg','学号6','学生姓名6',6,'作业评语6'),(1618663395455,'2021-04-17 20:43:14',NULL,'在这里评分',NULL,'学号1','学生姓名1',80,NULL);

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `zu` varchar(200) DEFAULT NULL COMMENT '组',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `zuoyezhaopian` varchar(200) DEFAULT NULL COMMENT '作业照片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `fujianming` varchar(200) DEFAULT NULL COMMENT '附件名',
  `fujianbianhao` varchar(200) DEFAULT NULL COMMENT '附件编号',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `hupingjifen` varchar(200) DEFAULT NULL COMMENT '互评给分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fujianbianhao` (`fujianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618663365691 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`timu`,`zu`,`neirong`,`jiaoshi`,`zuoyezhaopian`,`gonghao`,`jiaoshixingming`,`zuoyefujian`,`fujianming`,`fujianbianhao`,`shangchuanshijian`,`xuehao`,`xueshengxingming`,`hupingjifen`) values (91,'2021-04-17 20:31:35','作业编号1','题目1','组1','内容1','教师1','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian1.jpg','工号1','教师姓名1','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian1.jpg','附件名1','附件编号1','2021-04-17 20:31:35','学号1','学生姓名1','互评给分1'),(92,'2021-04-17 20:31:35','作业编号2','题目2','组2','内容2','教师2','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian2.jpg','工号2','教师姓名2','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian2.jpg','附件名2','附件编号2','2021-04-17 20:31:35','学号2','学生姓名2','互评给分2'),(93,'2021-04-17 20:31:35','作业编号3','题目3','组3','内容3','教师3','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian3.jpg','工号3','教师姓名3','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian3.jpg','附件名3','附件编号3','2021-04-17 20:31:35','学号3','学生姓名3','互评给分3'),(94,'2021-04-17 20:31:35','作业编号4','题目4','组4','内容4','教师4','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian4.jpg','工号4','教师姓名4','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian4.jpg','附件名4','附件编号4','2021-04-17 20:31:35','学号4','学生姓名4','互评给分4'),(95,'2021-04-17 20:31:35','作业编号5','题目5','组5','内容5','教师5','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian5.jpg','工号5','教师姓名5','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian5.jpg','附件名5','附件编号5','2021-04-17 20:31:35','学号5','学生姓名5','互评给分5'),(96,'2021-04-17 20:31:35','作业编号6','题目6','组6','内容6','教师6','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyezhaopian6.jpg','工号6','教师姓名6','http://localhost:8080/springbootj8m2s/upload/zuoyetijiao_zuoyefujian6.jpg','附件名6','附件编号6','2021-04-17 20:31:35','学号6','学生姓名6','互评给分6'),(1618663365690,'2021-04-17 20:42:45','学生在这里提交作业',NULL,NULL,NULL,NULL,NULL,'工号1','教师姓名1',NULL,NULL,NULL,'2021-04-17 20:43:07','学生1','学生姓名1',NULL);

/*Table structure for table `zuzhang` */

DROP TABLE IF EXISTS `zuzhang`;

CREATE TABLE `zuzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuzhangxuehao` varchar(200) NOT NULL COMMENT '组长学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `zuzhangzhaopian` varchar(200) DEFAULT NULL COMMENT '组长照片',
  `suozaixiaozu` varchar(200) DEFAULT NULL COMMENT '所在小组',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuzhangxuehao` (`zuzhangxuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='组长';

/*Data for the table `zuzhang` */

insert  into `zuzhang`(`id`,`addtime`,`zuzhangxuehao`,`mima`,`zuzhangxingming`,`zuzhangzhaopian`,`suozaixiaozu`,`xingbie`,`lianxidianhua`,`sfsh`,`shhf`) values (31,'2021-04-17 20:31:34','组长1','123456','组长姓名1','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian1.jpg','所在小组1','男','13823888881','是',''),(32,'2021-04-17 20:31:34','组长2','123456','组长姓名2','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian2.jpg','所在小组2','男','13823888882','是',''),(33,'2021-04-17 20:31:34','组长3','123456','组长姓名3','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian3.jpg','所在小组3','男','13823888883','是',''),(34,'2021-04-17 20:31:34','组长4','123456','组长姓名4','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian4.jpg','所在小组4','男','13823888884','是',''),(35,'2021-04-17 20:31:34','组长5','123456','组长姓名5','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian5.jpg','所在小组5','男','13823888885','是',''),(36,'2021-04-17 20:31:34','组长6','123456','组长姓名6','http://localhost:8080/springbootj8m2s/upload/zuzhang_zuzhangzhaopian6.jpg','所在小组6','男','13823888886','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

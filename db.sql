/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingdakapingce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingdakapingce` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingdakapingce`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yiqingdakapingce/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yiqingdakapingce/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/yiqingdakapingce/upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_photo` varchar(200) DEFAULT NULL COMMENT '打卡照片',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_photo`,`daka_content`,`insert_time`,`create_time`) values (1,3,'http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg','打卡备注1','2022-03-23','2022-03-23 19:19:12'),(2,3,'http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg','打卡备注2','2022-03-23','2022-03-23 19:19:12'),(3,3,'http://localhost:8080/yiqingdakapingce/upload/yonghu3.jpg','打卡备注3','2022-03-23','2022-03-23 19:19:12'),(4,2,'http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg','打卡备注4','2022-03-23','2022-03-23 19:19:12'),(5,3,'http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg','打卡备注5','2022-03-23','2022-03-23 19:19:12'),(6,1,'http://localhost:8080/yiqingdakapingce/upload/1648036337519.jpg','<p>就会痛苦化工</p>','2022-03-23','2022-03-23 19:52:20');

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

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-23 19:17:07'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-23 19:17:07'),(3,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2022-03-23 19:17:07'),(4,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2022-03-23 19:17:07'),(5,'xueshengjujia_zhuangtai_types','居家状态',1,'正常',NULL,NULL,'2022-03-23 19:17:07'),(6,'xueshengjujia_zhuangtai_types','居家状态',2,'感冒',NULL,NULL,'2022-03-23 19:17:07'),(7,'xueshengjujia_zhuangtai_types','居家状态',3,'感染者',NULL,NULL,'2022-03-23 19:17:07'),(8,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-03-23 19:17:07'),(9,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-03-23 19:17:07'),(10,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-03-23 19:17:07'),(11,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-03-23 19:17:07'),(12,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-03-23 19:17:07'),(13,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-03-23 19:17:07'),(14,'fanxiaoshenqing_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-23 19:17:07'),(15,'fanxiaoshenqing_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-23 19:17:07'),(16,'fanxiaoshenqing_yesno_types','审核状态',2,'拒绝',NULL,NULL,'2022-03-23 19:17:07'),(17,'news_types','资讯类型',3,'资讯类型3',NULL,'','2022-03-23 19:47:32'),(18,'xueshengjujia_zhuangtai_types','居家状态',4,'隔离者',NULL,'','2022-03-23 19:47:52');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'考试试卷1',100,100,1,1,'2022-03-23 19:17:07'),(2,'试卷2',100,100,1,1,'2022-03-23 19:48:35');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'单选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',10,'C','无',1,1,'2022-03-23 19:17:07'),(2,1,'多选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',34,'B,C','无',2,2,'2022-03-23 19:17:07'),(3,1,'填空题(正)_____','[]',41,'正','无',4,3,'2022-03-23 19:17:07'),(4,1,'判断题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',11,'A','无',3,4,'2022-03-23 19:17:07'),(5,1,'单选题2','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',4,'B','无',1,5,'2022-03-23 19:17:07'),(6,2,'题目1(正1)','[]',30,'正1','萨达',4,1,'2022-03-23 19:49:14'),(7,2,'题目2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',40,'B','按时',3,2,'2022-03-23 19:49:39'),(8,2,'题目3','[{\"text\":\"A\",\"code\":\"A\"},{\"text\":\"B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"D\",\"code\":\"D\"}]',14,'C','我说的',1,4,'2022-03-23 19:50:32'),(9,2,'题目4','[{\"text\":\"A\",\"code\":\"A\"},{\"text\":\"B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"正确答案D\",\"code\":\"D\"}]',16,'C,D','dg ',2,5,'2022-03-23 19:51:24');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1648034995446',1,1,15,'2022-03-23 19:29:55','2022-03-23 19:29:55'),(2,'1648035025260',1,1,66,'2022-03-23 19:30:25','2022-03-23 19:30:25'),(3,'1648035049628',1,1,96,'2022-03-23 19:30:50','2022-03-23 19:30:50'),(4,'1648035912965',1,1,48,'2022-03-23 19:45:13','2022-03-23 19:45:13'),(5,'1648036383232',1,2,30,'2022-03-23 19:53:03','2022-03-23 19:53:03');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1648034995446',1,5,'B',4,'2022-03-23 19:30:00'),(2,'1648034995446',1,4,'A',11,'2022-03-23 19:30:08'),(3,'1648034995446',1,3,'fga',0,'2022-03-23 19:30:12'),(4,'1648034995446',1,2,'B,D',0,'2022-03-23 19:30:16'),(5,'1648034995446',1,1,'A',0,'2022-03-23 19:30:21'),(6,'1648035025260',1,5,'B',4,'2022-03-23 19:30:29'),(7,'1648035025260',1,4,'A',11,'2022-03-23 19:30:33'),(8,'1648035025260',1,3,'正',41,'2022-03-23 19:30:39'),(9,'1648035025260',1,2,'B,C,D',0,'2022-03-23 19:30:43'),(10,'1648035025260',1,1,'C',10,'2022-03-23 19:30:46'),(11,'1648035049628',1,5,'A',0,'2022-03-23 19:30:53'),(12,'1648035049628',1,4,'A',11,'2022-03-23 19:30:57'),(13,'1648035049628',1,3,'正',41,'2022-03-23 19:31:02'),(14,'1648035049628',1,2,'B,C',34,'2022-03-23 19:31:08'),(15,'1648035049628',1,1,'C',10,'2022-03-23 19:31:11'),(16,'1648035912965',1,5,'B',4,'2022-03-23 19:45:16'),(17,'1648035912965',1,4,'B',0,'2022-03-23 19:45:19'),(18,'1648035912965',1,3,'54',0,'2022-03-23 19:45:26'),(19,'1648035912965',1,2,'B,C',34,'2022-03-23 19:45:31'),(20,'1648035912965',1,1,'C',10,'2022-03-23 19:45:34'),(21,'1648036383232',1,9,'C,D',16,'2022-03-23 19:53:07'),(22,'1648036383232',1,8,'C',14,'2022-03-23 19:53:09'),(23,'1648036383232',1,7,'A',0,'2022-03-23 19:53:13'),(24,'1648036383232',1,6,'1',0,'2022-03-23 19:53:18');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,1,3,'fga','2022-03-23 19:30:12','2022-03-23 19:30:12'),(2,1,1,2,'B,D','2022-03-23 19:30:16','2022-03-23 19:30:16'),(3,1,1,1,'A','2022-03-23 19:30:21','2022-03-23 19:30:21'),(4,1,1,2,'B,C,D','2022-03-23 19:30:43','2022-03-23 19:30:43'),(5,1,1,5,'A','2022-03-23 19:30:53','2022-03-23 19:30:53'),(6,1,1,4,'B','2022-03-23 19:45:19','2022-03-23 19:45:19'),(7,1,1,3,'54','2022-03-23 19:45:26','2022-03-23 19:45:26'),(8,1,2,7,'A','2022-03-23 19:53:13','2022-03-23 19:53:13'),(9,1,2,6,'1','2022-03-23 19:53:18','2022-03-23 19:53:18');

/*Table structure for table `fanxiaoshenqing` */

DROP TABLE IF EXISTS `fanxiaoshenqing`;

CREATE TABLE `fanxiaoshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fanxiaoshenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `fanxiaoshenqing_time` date DEFAULT NULL COMMENT '申请返校日期',
  `jiankangma_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `xingchengma_photo` varchar(200) DEFAULT NULL COMMENT '行程码',
  `hesuanbaogao_photo` varchar(200) DEFAULT NULL COMMENT '核酸报告',
  `fanxiaoshenqing_content` text COMMENT '申请理由',
  `fanxiaoshenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `fanxiaoshenqing_yesno_text` text COMMENT '审核意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='学生返校申请';

/*Data for the table `fanxiaoshenqing` */

insert  into `fanxiaoshenqing`(`id`,`yonghu_id`,`fanxiaoshenqing_uuid_number`,`insert_time`,`fanxiaoshenqing_time`,`jiankangma_photo`,`xingchengma_photo`,`hesuanbaogao_photo`,`fanxiaoshenqing_content`,`fanxiaoshenqing_yesno_types`,`fanxiaoshenqing_yesno_text`,`update_time`,`create_time`) values (9,1,'1648036312014','2022-03-23 19:52:07','2022-03-10','http://localhost:8080/yiqingdakapingce/upload/1648036316698.jpg','http://localhost:8080/yiqingdakapingce/upload/1648036321436.jpg','http://localhost:8080/yiqingdakapingce/upload/1648036323567.jpg','<p>电话说得好</p>',1,'',NULL,'2022-03-23 19:52:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,'留言标题1','留言内容1','2022-03-23 19:19:12','回复信息1','2022-03-23 19:19:12','2022-03-23 19:19:12'),(2,2,'留言标题2','留言内容2','2022-03-23 19:19:12','回复信息2','2022-03-23 19:19:12','2022-03-23 19:19:12'),(3,1,'留言标题3','留言内容3','2022-03-23 19:19:12','回复信息3','2022-03-23 19:19:12','2022-03-23 19:19:12'),(4,3,'留言标题4','留言内容4','2022-03-23 19:19:12','回复信息4','2022-03-23 19:19:12','2022-03-23 19:19:12'),(5,2,'留言标题5','留言内容5','2022-03-23 19:19:12','回复信息5','2022-03-23 19:19:12','2022-03-23 19:19:12'),(6,1,'111','22222','2022-03-23 19:45:43','2333','2022-03-23 19:48:08','2022-03-23 19:45:43');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int(11) NOT NULL COMMENT '资讯类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `news_content` text COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'资讯名称1','http://localhost:8080/yiqingdakapingce/upload/news1.jpg',1,'2022-03-23 19:19:12','资讯详情1','2022-03-23 19:19:12'),(2,'资讯名称2','http://localhost:8080/yiqingdakapingce/upload/news2.jpg',1,'2022-03-23 19:19:12','资讯详情2','2022-03-23 19:19:12'),(3,'资讯名称3','http://localhost:8080/yiqingdakapingce/upload/news3.jpg',2,'2022-03-23 19:19:12','资讯详情3','2022-03-23 19:19:12'),(4,'资讯名称4','http://localhost:8080/yiqingdakapingce/upload/news4.jpg',2,'2022-03-23 19:19:12','资讯详情4','2022-03-23 19:19:12'),(5,'资讯名称5','http://localhost:8080/yiqingdakapingce/upload/news5.jpg',2,'2022-03-23 19:19:12','资讯详情5','2022-03-23 19:19:12');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','hjho8pf29caw02f7fmoo7xcc4u8ncyrg','2022-03-23 19:28:27','2022-03-23 20:58:52'),(2,1,'a1','yonghu','学生','ffu0bsq54xi81esg0l1zo9yt9yhve593','2022-03-23 19:29:52','2022-03-23 20:51:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xueshengjujia` */

DROP TABLE IF EXISTS `xueshengjujia`;

CREATE TABLE `xueshengjujia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xueshengjujia_zhuangtai_types` int(11) DEFAULT NULL COMMENT '居家状态 Search111 ',
  `jujia_time` date DEFAULT NULL COMMENT '居家日期',
  `xueshengjujia_address` varchar(200) DEFAULT NULL COMMENT '居家位置',
  `xueshengjujia_content` text COMMENT '居家备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='居家';

/*Data for the table `xueshengjujia` */

insert  into `xueshengjujia`(`id`,`yonghu_id`,`xueshengjujia_zhuangtai_types`,`jujia_time`,`xueshengjujia_address`,`xueshengjujia_content`,`create_time`) values (1,3,2,'2022-03-23','居家位置1','居家备注1','2022-03-23 19:19:12'),(2,2,2,'2022-03-23','居家位置2','居家备注2','2022-03-23 19:19:12'),(3,1,1,'2022-03-23','居家位置3','居家备注3','2022-03-23 19:19:12'),(4,3,2,'2022-03-23','居家位置4','居家备注4','2022-03-23 19:19:12'),(5,3,1,'2022-03-23','居家位置5','居家备注5','2022-03-23 19:19:12'),(7,1,1,'2022-03-23','地址1','<p>还没NFC </p>','2022-03-23 19:52:52');

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
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg',1,'1@qq.com','2022-03-23 19:19:12'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg',1,'2@qq.com','2022-03-23 19:19:12'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/yiqingdakapingce/upload/yonghu3.jpg',2,'3@qq.com','2022-03-23 19:19:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

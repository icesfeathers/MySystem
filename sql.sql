/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.0.18-nt : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `test`;

/*Table structure for table `pass` */

DROP TABLE IF EXISTS `pass`;

CREATE TABLE `pass` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `pwd` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `pass` */

insert  into `pass`(`id`,`name`,`pwd`) values (1,'admin','admin');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `sex` varchar(20) default NULL,
  `age` varchar(20) default NULL,
  `school` varchar(100) default NULL,
  `info` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`sex`,`age`,`school`,`info`) values (1,'伊利亚','女','15','圣杯小学','小圣杯啦'),(4,'伊丽莎白','女','20','圣杯小学','爱抖露'),(7,'玉藻前','女','20','圣杯小学','miko'),(9,'BB','女','21','圣杯小学','恶作剧 可爱的BB酱'),(10,'BB','女','20','圣杯小学','恶作剧 可爱的BB酱');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

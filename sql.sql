/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - ignitor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ignitor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ignitor`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`blog_id`,`user_id`,`title`,`details`,`image`,`comments`) values 
(1,3,'hai','hair ','static/images3df8d46b-c752-443e-b7b7-9a8f5aff7d24abc.jpg','good'),
(3,3,'hai','hair ','static/imagesfa9af372-0eea-4c35-8c8b-be7923fe0426abc.jpg','pending'),
(4,3,'hai','hair ','static/images138d38c5-73b1-4bb5-90fe-36a8acbeedc9abc.jpg','pending'),
(5,3,'title','gdgdg','static/uploads/ca3ea673-6994-4038-b358-e71d8b726299abc.jpg','pending'),
(6,5,'sggssg','gsgsgs','static/uploads/ba9e401d-d80d-4d11-b095-e1b4736981c0abc.jpg','pending'),
(7,5,'bddju','hhdhd','static/uploads/c568ee6d-6043-4d2f-a215-79424c0b27f4abc.jpg','pending');

/*Table structure for table `bunk` */

DROP TABLE IF EXISTS `bunk`;

CREATE TABLE `bunk` (
  `bunk_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bunk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `bunk` */

insert  into `bunk`(`bunk_id`,`login_id`,`name`,`place`,`latitude`,`longitude`,`status`) values 
(1,13,'yyyff','ghff','9.9763343','76.2861962','open');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`company_id`,`login_id`,`name`,`place`,`phone`,`email`) values 
(1,16,'reshma','kerala','9495795304','renukakamath2@gmail.com');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`user_id`,`complaint`,`reply`,`date`) values 
(1,5,'ndndb','pending','2023-05-07'),
(2,13,'goid','pending','2023-05-11 13:50:34');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'shhwh','hsywuw','User'),
(2,'hsjw','jeiw','User'),
(14,'me','me','Mechanic'),
(4,'duk','duk','User'),
(5,'user','user','User'),
(6,'boy','boy','Deliveryboy'),
(17,'username','me','Mechanic'),
(16,'co','comp','company'),
(15,'admin','admin','admin'),
(13,'bu','bu','Bunk'),
(18,'u','u','Mechanic'),
(19,'m','m','Mechanic'),
(20,'mech','mech','Mechanic'),
(21,'ananthu','ananthu','Mechanic'),
(22,'boyyy','boyyy','Deliveryboy'),
(23,'deb','deb','Pending'),
(26,'us','us','User'),
(24,'db','db','Pending'),
(25,'meh','meh','pending');

/*Table structure for table `mechanic` */

DROP TABLE IF EXISTS `mechanic`;

CREATE TABLE `mechanic` (
  `mechanic_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`mechanic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `mechanic` */

insert  into `mechanic`(`mechanic_id`,`login_id`,`firstname`,`lastname`,`place`,`phone`,`email`,`latitude`,`longitude`,`image`) values 
(4,14,'hai','ha','dfsgs','23456789','student@gmail.com','9.980736837129689','76.27720255550476',NULL),
(2,17,'me','me','palakkad','9495795304','renukamath2@gmail.com1','9.974678671483936','76.27582926448913',NULL),
(5,20,'mechanic ','bsbsb','ekm','9495795304','mechanic@gmail.com','','',NULL),
(6,21,'hello','bdhdh','dghdhs','123456718818','ananthuanil03@gmail.com','','',NULL),
(7,25,'me','me','ktm','1234567890','me@gmail.com','9.9763009','76.2862446','static/image6291ac64-c017-4d92-80f8-6fa1f73be12dabc.jpg');

/*Table structure for table `mechanicrequest` */

DROP TABLE IF EXISTS `mechanicrequest`;

CREATE TABLE `mechanicrequest` (
  `mrequest_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL,
  `servicceamount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mrequest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `mechanicrequest` */

insert  into `mechanicrequest`(`mrequest_id`,`user_id`,`mechanic_id`,`servicceamount`,`date`,`status`,`details`) values 
(1,3,5,'200','2023-05-11 14:00:27','Paid','chjik'),
(2,3,4,'100','2023-05-30 16:20:03','Paid','chjik'),
(3,3,4,'1000','2023-06-05 15:43:13','Paid','chjik'),
(4,3,4,'1000','2023-06-05 15:43:25','Amountaddred','chjik'),
(5,3,2,'0','2023-06-06 15:15:38','Requested','chjik'),
(6,3,4,'0','2023-06-06 15:46:29','Requested','chjik'),
(7,3,2,'0','2023-06-06 16:03:31','Requested','chjik'),
(8,3,2,'0','2023-06-06 16:06:49','Requested','chjik');

/*Table structure for table `oderdetails` */

DROP TABLE IF EXISTS `oderdetails`;

CREATE TABLE `oderdetails` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `oderdetails` */

insert  into `oderdetails`(`detail_id`,`order_id`,`product_id`,`quantity`,`amount`,`date`) values 
(1,1,1,'4','20000','2023-05-11 14:04:02'),
(2,2,1,'12','60000','2023-06-05 16:33:35'),
(3,3,1,'3','15000','2023-06-05 16:36:43'),
(4,2,2,'3','6000','2023-06-05 16:58:37'),
(5,4,1,'1','5000','2023-06-06 08:38:22'),
(6,5,1,'2','10000','2023-06-06 14:25:05');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order` */

insert  into `order`(`order_id`,`sparepart_id`,`user_id`,`total`,`status`) values 
(1,1,3,'20000','Delivery'),
(2,1,14,'66000','Paid'),
(4,1,3,'5000','Delivery'),
(5,1,3,'10000','pending');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `requested_id` int(11) DEFAULT NULL,
  `requestedfor` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`requested_id`,`requestedfor`,`amount`,`date`,`user_id`) values 
(1,1,'Vehicle request','500','2023-05-11 10:43:07',5),
(2,1,'Recharge request','100','2023-05-11 13:46:53',5),
(3,1,'mechanic booking','200','2023-05-11 14:03:30',5),
(4,2,'Vehicle request','500','2023-05-30 15:50:07',5),
(5,1,'Vehicle request','500','2023-05-30 16:11:36',5),
(6,2,'mechanic booking','100','2023-05-30 16:22:52',5),
(7,1,'Product booking','20000','2023-05-30 16:33:22',5),
(8,2,'Recharge request','1000','2023-06-05 15:31:37',5),
(9,3,'mechanic booking','1000','2023-06-05 15:44:54',5),
(10,2,'mechanic Product booking','66000','2023-06-06 16:13:35',14);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`product_id`,`sparepart_id`,`product_name`,`img`,`stock`,`rate`) values 
(1,1,'product','static/uploads/3a23c326-3d39-4ba1-bed1-2e41b5ecc4ccabc.jpg','500','5000'),
(2,1,'shoe','static/uploads/3a23c326-3d39-4ba1-bed1-2e41b5ecc4ccabc.jpg','500','2000'),
(3,1,'nhdhd','static/uploads/0821517c-1e84-4b32-85f8-510b605a42ecabc.jpg','5','5000');

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `requested_id` int(11) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`rating_id`,`user_id`,`requested_id`,`rating`,`date`,`type`) values 
(1,3,1,'3.0','2023-05-11 10:43:13','vehicles'),
(2,3,1,'4.0','2023-05-11 13:50:58','bunk');

/*Table structure for table `rechargerequest` */

DROP TABLE IF EXISTS `rechargerequest`;

CREATE TABLE `rechargerequest` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bunk_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `rechargerequest` */

insert  into `rechargerequest`(`request_id`,`user_id`,`bunk_id`,`amount`,`date`,`status`) values 
(1,3,1,'100','2023-05-11 13:45:10','Paid'),
(2,3,1,'1000','2023-06-05 15:23:21','Paid'),
(3,3,1,'700','2023-06-06 14:05:01','Amountaddred');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`request_id`,`vehicle_id`,`user_id`,`amount`,`date`,`status`) values 
(1,3,3,'500','2023-05-11 10:42:41','Canceled'),
(2,3,3,'500','2023-05-11 13:44:51','outfordeliver');

/*Table structure for table `sparepart` */

DROP TABLE IF EXISTS `sparepart`;

CREATE TABLE `sparepart` (
  `sparepart_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`sparepart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `sparepart` */

insert  into `sparepart`(`sparepart_id`,`login_id`,`firstname`,`lastname`,`place`,`phone`,`email`,`latitude`,`longitude`,`image`) values 
(1,6,'boy','boy','Ernakulam ','23685699','fchjj@ghhbjj','9.9762897','76.2862164','static/image1227760a-a879-4ce6-b884-951d40290de5abc.jpg'),
(2,22,'user','shhs','dhhd','1234567890','pthalika8@gmail.com','','','static/imaged83b4f81-4be5-4380-8daf-95704b969d18abc.jpg'),
(3,23,'Renuka Kamath','Renuka Kamath','place','1234567890','renukakamath2@gmail.com','9.9762712','76.2862281','static/image08b2af1d-5345-4712-b16e-3493c6f24dd3abc.jpg'),
(4,24,'db','db','ekm','1234567890','db@gmail.com','9.9763174','76.286271','static/image1227760a-a879-4ce6-b884-951d40290de5abc.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `vehicle` varchar(100) DEFAULT NULL,
  `detials` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`login_id`,`first_name`,`last_name`,`place`,`phone`,`email`,`latitude`,`longitude`,`vehicle`,`detials`) values 
(1,3,'dfhjkds','dfhds','dskjfhdks','sjhdbfs','djkhskjfs','9.9762809','76.2862103','0','0'),
(2,4,'xhu','dui','duj','syui','egu','9.9762841','76.2862198','0','0'),
(3,5,'vikkk','fuiii','etuii','9495795304','renukakamath2@gmail.com','9.9762841','76.2862014','Bmw','Details'),
(5,26,'gyvyv','gddv','ekm','1234567890','renukakamath2@gmail.com','9.976304','76.2862355','vxvdhshsh','vxhdhdh');

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `vehicle` varchar(100) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `Dateofpurchase` varchar(100) DEFAULT NULL,
  `servicedate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `vehicles` */

insert  into `vehicles`(`vehicle_id`,`company_id`,`vehicle`,`desc`,`amount`,`image`,`Dateofpurchase`,`servicedate`) values 
(3,1,'staff','qwerty','500','static/image53bd458b-7652-4448-a365-9981e640f6e8IMG_0006 - Copy.JPEG','2023-06-30','0422-04-04'),
(4,1,'user1','jfhjkfh','5000','static/image9133a9d0-c5ad-489e-9deb-cb6653ca4068IMG_0157 - Copy.JPEG','2023-06-30','0422-04-04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

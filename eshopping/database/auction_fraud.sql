create database auction_fraud;

use auction_fraud;



CREATE TABLE `admin` (
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `offers` (
  `pid` varchar(255) NOT NULL,
  `comname` varchar(255) NOT NULL,
  `proname` varchar(255) NOT NULL,
  `wardate` varchar(255) NOT NULL,
  `prorate` varchar(255) NOT NULL,
  `offrate` varchar(255) NOT NULL,
  `offdes` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `sold` varchar(255) NOT NULL,
  `deliver` varchar(255) NOT NULL,
  `missmatch` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `feed` varchar(255) NOT NULL,
  `adminact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `products` (
  `pid` int(11) NOT NULL auto_increment,
  `comname` varchar(255) NOT NULL,
  `proname` varchar(255) NOT NULL,
  `wardate` varchar(255) NOT NULL,
  `proimage` longblob NOT NULL,
  `prorate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `adminact` varchar(255) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



CREATE TABLE `purchased` (
  `pur_id` int(11) NOT NULL auto_increment,
  `uid` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `comname` varchar(255) NOT NULL,
  `proname` varchar(255) NOT NULL,
  `wardate` varchar(255) NOT NULL,
  `prorate` varchar(255) NOT NULL,
  `offrate` varchar(255) NOT NULL,
  `offdes` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY  (`pur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;



CREATE TABLE `seller` (
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `webadd` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `authorize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `user` (
  `uid` varchar(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `offers` VALUES ('8', 'soni', 'Pen Drive', '90', '2000', '1800', 'mega offer', 'Registered', '82', '16', '10', '0', '16', '0', '0', 'banded');
INSERT INTO `offers` VALUES ('6', 'Guptha&co', 'TV', '180', '18000', '16000', 'mega offer', 'Registered', '0', '0', '0', '0', '0', '0', '0', 'Trusted');
INSERT INTO `offers` VALUES ('7', 'Guptha&co', 'smart fridge', '180', '20000', '16000', 'cool offer', 'Registered', '0', '0', '0', '0', '0', '0', '0', 'Trusted');
INSERT INTO `offers` VALUES ('9', 'Erics', 'smart phone', '180', '15000', '14000', 'cool offer', 'Registered', '0', '0', '0', '0', '0', '0', '0', 'Trusted');

INSERT INTO `purchased` VALUES ('14', '2', 'Kalaikumar', '8', 'soni', 'Pen Drive', '06/09/2012 11:48:10', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('15', '7', 'Karthikeyan', '8', 'soni', 'Pen Drive', '06/09/2012 11:48:51', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('16', '3', 'Anandhan', '8', 'soni', 'Pen Drive', '06/09/2012 11:49:08', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('17', '6', 'Hariharan', '8', 'soni', 'Pen Drive', '06/09/2012 11:49:26', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('18', '4', 'Satheshkumar', '8', 'soni', 'Pen Drive', '06/09/2012 11:50:31', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('19', '8', 'Arun', '8', 'soni', 'Pen Drive', '06/09/2012 12:03:19', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `purchased` VALUES ('20', '1', 'Balaji', '8', 'soni', 'Pen Drive', '06/09/2012 12:05:15', '2000', '1800', 'mega offer', 'Registered');
INSERT INTO `seller` VALUES ('2', 'Guptha', 'Guptha&co', 'guppu', 'guppu', '9566370047', 'guppu@gmail.com', 'www.guppu.com', '02/06/2012 01:55:27 PM', 'Registered');
INSERT INTO `seller` VALUES ('8', 'Prasad', 'soni', 'prasad', 'prasad', '9292929292', 'prasad@yahoo.com', 'www.soni.com', '07/06/2012 04:31:09 PM', 'Registered');
INSERT INTO `seller` VALUES ('8', 'Anbarasu', 'Nokio', 'anbu', 'anbu', '9111111111', 'anbu@gmail.com', 'www.nokio.com', '08/06/2012 10:44:46 AM', 'Registered');
INSERT INTO `seller` VALUES ('8', 'Jakson', 'Erics', 'jak', 'jak', '9494949494', 'jakson@yahoo.com', 'www.eric.com', '08/06/2012 12:00:13 PM', 'Registered');
INSERT INTO `user` VALUES ('1', 'Balaji', 'bala', 'bala', '9898989898', 'bala@gmail.com', '02/06/2012 01:04:47 PM');
INSERT INTO `user` VALUES ('2', 'Kalaikumar', 'kalai', 'kalai', '9191919191', 'kalai@yahoo.com', '07/06/2012 11:16:57 AM');
INSERT INTO `user` VALUES ('3', 'Anandhan', 'anand', 'anand', '9777777777', 'ananad@gmail.com', '07/06/2012 11:17:53 AM');
INSERT INTO `user` VALUES ('4', 'Satheshkumar', 'sat', 'sat', '9888888888', 'sathesh@gmail.com', '07/06/2012 11:18:19 AM');
INSERT INTO `user` VALUES ('5', 'GaneshKumar', 'ganesh', 'ganseh', '9595959595', 'ganesh@gmail.com', '07/06/2012 11:18:54 AM');
INSERT INTO `user` VALUES ('6', 'Hariharan', 'hari', 'hari', '9393939393', 'hari@gmail.com', '07/06/2012 11:19:20 AM');
INSERT INTO `user` VALUES ('7', 'Karthikeyan', 'karthi', 'karthi', '9696969696', 'karthi@gmail.com', '07/06/2012 11:20:30 AM');
INSERT INTO `user` VALUES ('8', 'Arun', 'arun', 'arun', '9598959895', 'chennaisunday@gmail.com', '08/06/2012 12:02:40 PM');

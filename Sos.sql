CREATE DATABASE IF NOT EXISTS sos;
USE sos;

--
-- Definition of table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `quser` varchar(45) NOT NULL,
  `cmt` varchar(245) NOT NULL,
  `ans` varchar(245) NOT NULL,
  `iam` varchar(45) NOT NULL,
  `qid` varchar(145) NOT NULL,
  `status_` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` (`id`,`quser`,`cmt`,`ans`,`iam`,`qid`,`status_`) VALUES 
 (6,'raji','Who%20is%20the%20no.%201%20Music%20Dir%20in%20tamilnadu?','ilayaraja','parthy','2','YES'),
 (7,'raji','Who%20is%20the%20no.%201%20Music%20Dir%20in%20tamilnadu?','rahman','kali','2','YES'),
 (8,'raji','Who%20is%20the%20no.%201%20Music%20Dir%20in%20tamilnadu?','ilayaraja','parthy','2','YES');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


--
-- Definition of table `cmt`
--

DROP TABLE IF EXISTS `cmt`;
CREATE TABLE `cmt` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user` varchar(45) NOT NULL,
  `cmt` varchar(245) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmt`
--

/*!40000 ALTER TABLE `cmt` DISABLE KEYS */;
INSERT INTO `cmt` (`id`,`user`,`cmt`) VALUES 
 (1,'raji','Best Music director in India?'),
 (2,'raji','Who is the no. 1 Music Dir in tamilnadu?');
/*!40000 ALTER TABLE `cmt` ENABLE KEYS */;


--
-- Definition of table `frnd`
--

DROP TABLE IF EXISTS `frnd`;
CREATE TABLE `frnd` (
  `user` varchar(45) NOT NULL default '',
  `frnd` varchar(45) NOT NULL default '',
  `status_` varchar(45) NOT NULL default '',
  `id` int(10) unsigned NOT NULL auto_increment,
  `userintr` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frnd`
--

/*!40000 ALTER TABLE `frnd` DISABLE KEYS */;
INSERT INTO `frnd` (`user`,`frnd`,`status_`,`id`,`userintr`) VALUES 
 ('parthy','raji','YES',1,'Music'),
 ('raji','parthy','NO',3,'Education'),
 ('raji','rose','NO',4,'Education'),
 ('raji','ezhil','NO',5,'Education');
/*!40000 ALTER TABLE `frnd` ENABLE KEYS */;


--
-- Definition of table `regpage`
--

DROP TABLE IF EXISTS `regpage`;
CREATE TABLE `regpage` (
  `name` varchar(45) NOT NULL default '',
  `userid` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  `mail` varchar(45) NOT NULL default '',
  `age` varchar(45) NOT NULL default '',
  `loc` varchar(45) NOT NULL default '',
  `sex` varchar(45) NOT NULL default '',
  `time_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regpage`
--

/*!40000 ALTER TABLE `regpage` DISABLE KEYS */;
INSERT INTO `regpage` (`name`,`userid`,`pass`,`mail`,`age`,`loc`,`sex`,`time_`) VALUES 
 ('parthiban','parthy','123','parthiban.bluish@gmail.com','2014-12-18','Music','Male','2014-12-24 10:52:41'),
 ('rajeshwari','raji','123','rajeswary91@gmail.com','2014-12-04','Education','Female','2014-12-24 10:55:05'),
 ('Rose','rose','123','rose@gmail.com','2014-12-24','Music','Female','2014-12-24 10:56:12'),
 ('ezhilarasan','ezhil','123','erte@gmail.com','2014-12-11','Sports','Male','2014-12-24 10:56:50'),
 ('Nadanapathy','nadana','123','nadana@gmail.com','2014-12-12','Education','Male','2014-12-24 10:57:22'),
 ('Santhanam','sandy','123','sandy@gmail.com','2014-12-10','Education','Male','2014-12-24 10:57:49'),
 ('Shalini','shalu','123','shalini@gmail.com','2014-12-18','Music','Female','2014-12-24 10:59:09'),
 ('Kalicharan','kali','123','kali@gmail.com','2014-12-19','Entertainment','Male','2014-12-24 11:00:01'),
 ('Ravidaran','ravi','123','ravi@gmail.com','2015-01-02','Entertainment','Male','2014-12-24 11:00:29');





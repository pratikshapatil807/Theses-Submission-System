# Host: localhost:3307  (Version: 5.0.27-community-nt)
# Date: 2018-11-29 13:00:41
# Generator: MySQL-Front 5.3  (Build 4.205)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "adminlogin"
#

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(40) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "adminlogin"
#

INSERT INTO `adminlogin` VALUES (1,'admin','admin');

#
# Structure for table "external_reg"
#

DROP TABLE IF EXISTS `external_reg`;
CREATE TABLE `external_reg` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `user_name` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `college` varchar(45) default NULL,
  `branch` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "external_reg"
#


#
# Structure for table "hod_login"
#

DROP TABLE IF EXISTS `hod_login`;
CREATE TABLE `hod_login` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "hod_login"
#

INSERT INTO `hod_login` VALUES (1,'Admin','admin');

#
# Structure for table "nomination"
#

DROP TABLE IF EXISTS `nomination`;
CREATE TABLE `nomination` (
  `id` int(11) NOT NULL auto_increment,
  `college` varchar(45) default NULL,
  `branch` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "nomination"
#

INSERT INTO `nomination` VALUES (1,'GECW','CSE'),(2,'APPA','ISE');

#
# Structure for table "nomination_name"
#

DROP TABLE IF EXISTS `nomination_name`;
CREATE TABLE `nomination_name` (
  `id` int(11) NOT NULL auto_increment,
  `Name` varchar(45) default NULL,
  `college` varchar(45) default NULL,
  `Branch` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "nomination_name"
#

INSERT INTO `nomination_name` VALUES (1,'abc','APPA','cse'),(2,'xyz','APPA','cse'),(3,'pqr','PDA','cse'),(4,'hij','PDA','cse');

#
# Structure for table "registration"
#

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `user_name` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `mobileno` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "registration"
#

INSERT INTO `registration` VALUES (1,'Shivaleela','Patil','Shiv','123','8861604118','Kalaburgi'),(2,'Pratiksha Patil','yyy','Pooja','123',NULL,NULL),(3,'Pooja','Patil','Pooja','123',NULL,NULL),(4,'Kartik','Patil','Kartik','456','8861604118','Kalaburgi'),(5,'Kartik','Patil','Kartik','456','8861604118','Kalaburgi'),(6,'Aishwarya','Patil','Aishu','123','8861604118','Kalaburgi'),(7,'Pratiksha Patil','Patil','Aishu','123','8861604118','Kalaburgi');

#
# Structure for table "student_info"
#

DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL auto_increment,
  `college` varchar(45) default NULL,
  `internallecturer` varchar(45) default NULL,
  `student_name` varchar(45) default NULL,
  `study_year` varchar(45) default NULL,
  `usn_no` varchar(45) default NULL,
  `department` varchar(45) default NULL,
  `course` varchar(45) default NULL,
  `course_period` varchar(45) default NULL,
  `contact_no` varchar(45) default NULL,
  `postal_address` varchar(45) default NULL,
  `thesistitle` varchar(45) default NULL,
  `thesis` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "student_info"
#

INSERT INTO `student_info` VALUES (1,'PDA','Rajkumar','BASAVA','2013','3pD09Ec014','ECE','DC','9','9874563210','Kalburgi','Wireless',NULL),(2,'GECW','Shivaleela ','Pratiksha','2018','17SCS111','cse','cse','2','7019078175','Kalburgi','Wireless',NULL),(3,'GECW','Shivaleela ','Pratiksha Patil','2018','17SCS111','cse','cse','2','7019078175','Kalburgi','Wireless',NULL),(4,'GECW','Shivaleela ','Pooja','2018','456','cse','DC','9','7019078175','Kalburgi','Wireless',NULL),(5,'GECW','Shivaleela ','','2018','123','cse','DC','2','7019078175','Kalburgi','xxx',NULL),(6,'Appa','Shivaleela ','Pratiksha Patil','2018','17scs111','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(7,'GECW','Rajkumar','sidharth','2018','3pD09Ec014','ECE','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(8,'GECW','Shivaleela ','Pratiksha Patil','2018','17SCS111','cse','M.tech','2','9874563210','Kalburgi','Evaluvation',NULL),(9,'GECW','Shivaleela ','Pratiksha Patil','2018','17SCS111','cse','M.tech','2','9874563210','Kalburgi','Evaluvation',NULL),(10,'GECW','Shivaleela ','Pratiksha Patil','2018','17SCS111','cse','M.tech','2','9874563210','Kalburgi','Evaluvation',NULL),(11,'GECW','xxx','Pratiksha Patil','2018','17scs111','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(12,'GECW','xxx','Pratiksha Patil','2018','17scs111','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(13,'GECW','xxx','Pratiksha Patil','2018','3pD09Ec014','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(14,'GECW','Shivaleela ','Pratiksha Patil','2018','17scs111','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(15,'GECW','Shivaleela ','Pratiksha Patil','2018','17scs111','cse','M.tech','2','7019078175','Kalburgi','Evaluvation',NULL),(16,'','','','','','','','','','','',NULL),(17,'','','','','','','','','','','',NULL),(18,'','','','','','','','','','','',NULL),(19,'','','','','','','','','','','',NULL),(20,'','','','','','','','','','','',NULL),(21,'','','','','','','','','','','',NULL),(22,'','','','','','','','','','','',NULL);

#
# Structure for table "thesis_information"
#

DROP TABLE IF EXISTS `thesis_information`;
CREATE TABLE `thesis_information` (
  `id` int(11) NOT NULL auto_increment,
  `College` varchar(45) default NULL,
  `internallecturer` varchar(45) default NULL,
  `thesistitle` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "thesis_information"
#

INSERT INTO `thesis_information` VALUES (1,NULL,NULL,NULL),(2,NULL,NULL,NULL),(3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,NULL,NULL),(7,NULL,NULL,NULL),(8,NULL,NULL,NULL),(9,NULL,NULL,NULL);

#
# Structure for table "upload_thesis"
#

DROP TABLE IF EXISTS `upload_thesis`;
CREATE TABLE `upload_thesis` (
  `id` int(11) NOT NULL auto_increment,
  `thesistitle` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "upload_thesis"
#


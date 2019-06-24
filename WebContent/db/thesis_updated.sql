# Host: localhost:3307  (Version: 5.0.27-community-nt)
# Date: 2019-04-17 18:21:24
# Generator: MySQL-Front 5.3  (Build 4.205)

/*!40101 SET NAMES utf8 */;

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
# Structure for table "cloud"
#

DROP TABLE IF EXISTS `cloud`;
CREATE TABLE `cloud` (
  `id` varchar(45) NOT NULL default '',
  `username` int(11) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "cloud"
#


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
# Structure for table "registration"
#

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `mobileno` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "registration"
#

INSERT INTO `registration` VALUES (1,'Maha','pp','pp@gmail.com','123','1234567890','jjj'),(2,'xxx','eee','xx@gmail.com','123','1234567890','kkk'),(3,'shwetha','madival','shwetha@gmail.com','1234','7890654323','Gulbarga'),(4,'preeti','yargol','preeti@gmail.com','123','9876543210','kalaburgi'),(5,'Priya','harsoor','priya123@gmail.com','1234','9876543210','Glb');

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
  `hod_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "student_info"
#

INSERT INTO `student_info` VALUES (1,'Gecw clg','Shivleela','Pratiksha','2018','17scs111','cse','Mtech','2','7894561230','Kalaburgi','Thesis Submission',X'44656D6F2E747874',1),(2,'Appa','Sujata','Ambika','2018','17scs102','cse','Mtech','2','8954703621','Kalaburgi','Scheme and Syllabus',X'73796C6C61627573',1),(3,'PDA','Kartik','Aishwarya','2018','17scs101','cse','Mtech','2','9854763210','Kalaburgi','Fee Management',NULL,1),(4,'KBN','Sidharth','Aniketha','2018','17scs103','cse','Mtech','2','6598743215','Kalaburgi','Job portal',NULL,1),(5,'KSET','Rahul','Harshmitha','2018','17scs109','cse','Mtech','2','9854763215','Kalaburgi','Faculty Registration',X'46494E414C204444534741205245504F525420312E646F6378',1),(17,'FETW College','Shivaleela Patil','Pratiksha','2018','17scs111','cse','Mtech','2','9876543567','Gulbarga','Submission',X'44656D6F2E747874',NULL),(18,'FETW','Shivaleela Patil','Pratiksha','2018','17scs111','cse','Mtech','2','9876543567','Gulbarga','Submission',X'48656C6C6C6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F',NULL),(19,'GECW','Akashata','ambika','2019','1234','cse','mtech','2','5678904321','kalaburgi','solve',X'48656C6C6C6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F',NULL),(20,'GECW college','Shivaleela','Pratiksha','2018','17scs111','CSE','Mtech','2','8796523410','Kalaburgi','Evaluvation',X'44656D6F55706C6F6164312E747874',NULL);

#
# Structure for table "nomination_name"
#

DROP TABLE IF EXISTS `nomination_name`;
CREATE TABLE `nomination_name` (
  `id` int(11) NOT NULL auto_increment,
  `Name` varchar(45) default NULL,
  `college` varchar(45) default NULL,
  `Branch` varchar(45) default NULL,
  `studentId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `foreignky_nominationNmae_idx` (`Name`),
  KEY `foreignky_name_idx` (`college`),
  CONSTRAINT `foreignky_id` FOREIGN KEY (`id`) REFERENCES `student_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "nomination_name"
#

INSERT INTO `nomination_name` VALUES (1,'Ambika','APPA','cse',1),(2,'Aniketha','APPA','cse',1),(3,'Harsh','PDA','cse',2),(4,'Aishwarya','PDA','cse',3);

#
# Structure for table "nomination"
#

DROP TABLE IF EXISTS `nomination`;
CREATE TABLE `nomination` (
  `id` int(11) NOT NULL auto_increment,
  `college` varchar(45) default NULL,
  `branch` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  CONSTRAINT `foreignky_nomination.id` FOREIGN KEY (`id`) REFERENCES `student_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "nomination"
#

INSERT INTO `nomination` VALUES (1,'GECW','CSE'),(2,'APPA','ISE');

#
# Structure for table "hod_login"
#

DROP TABLE IF EXISTS `hod_login`;
CREATE TABLE `hod_login` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  CONSTRAINT `fk_hod.id` FOREIGN KEY (`id`) REFERENCES `student_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "hod_login"
#

INSERT INTO `hod_login` VALUES (1,'Admin','admin');

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


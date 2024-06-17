-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ibedgrading_db
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ibedgrading_db;
USE ibedgrading_db;

--
-- Table structure for table `ibedgrading_db`.`absentlate`
--

DROP TABLE IF EXISTS `absentlate`;
CREATE TABLE `absentlate` (
  `ALNo` int(10) unsigned NOT NULL auto_increment,
  `FMA` varchar(45) NOT NULL default '',
  `FML` varchar(45) NOT NULL default '',
  `SMA` varchar(45) NOT NULL default '',
  `SML` varchar(45) NOT NULL default '0',
  `TMA` varchar(45) NOT NULL default '',
  `TML` varchar(45) NOT NULL default '',
  `GradingPeriod` varchar(45) NOT NULL default '',
  `StudentNo` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ALNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`absentlate`
--

/*!40000 ALTER TABLE `absentlate` DISABLE KEYS */;
INSERT INTO `absentlate` (`ALNo`,`FMA`,`FML`,`SMA`,`SML`,`TMA`,`TML`,`GradingPeriod`,`StudentNo`) VALUES 
 (1,'22','20','22','20','22','20','First',20),
 (2,'22','21','22','21','22','22','First',22),
 (3,'22','22','22','22','22','22','First',21);
/*!40000 ALTER TABLE `absentlate` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `GradeNo` int(10) unsigned NOT NULL auto_increment,
  `StudentNo` int(10) unsigned NOT NULL default '0',
  `GradingPeriod` varchar(45) NOT NULL default '',
  `Filipino` varchar(10) default '0',
  `English` varchar(10) default '0',
  `Math` varchar(10) default '0',
  `Science` varchar(10) default '0',
  `AP` varchar(10) default '0',
  `MAPEH` varchar(10) default '0',
  `Homeroom` varchar(10) default '0',
  `RR` varchar(10) default '0',
  `EP` varchar(10) default '0',
  `CCBA` varchar(10) default '0',
  `Computer` varchar(10) default '0',
  `Language` varchar(10) default '0',
  `CIG` varchar(10) default '0',
  PRIMARY KEY  (`GradeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`grade`
--

/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` (`GradeNo`,`StudentNo`,`GradingPeriod`,`Filipino`,`English`,`Math`,`Science`,`AP`,`MAPEH`,`Homeroom`,`RR`,`EP`,`CCBA`,`Computer`,`Language`,`CIG`) VALUES 
 (40,20,'First','78.20','0','0','81.45','0','0','0','0','93.60','0','83.05','0','80.40'),
 (41,21,'First','0','0','0','86.40','0','0','0','0','0','0','75.00','0','0'),
 (42,22,'First','0','0','0','81.45','0','0','0','0','95.05','0','84.60','0','0'),
 (43,23,'First','84.20','0','0','81.45','0','0','0','0','0','0','0','0','0'),
 (44,20,'Second','88.45','0','0','0','0','0','0','0','0','0','0','0','0');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `SectionNo` int(10) unsigned NOT NULL auto_increment,
  `SectionName` varchar(45) NOT NULL default '',
  `GradeLevel` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`SectionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`section`
--

/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` (`SectionNo`,`SectionName`,`GradeLevel`) VALUES 
 (8,'Section 1','Grade 1'),
 (9,'Section 1','Grade 2'),
 (10,'Section 1','Grade 3'),
 (11,'Section 1','Grade 4'),
 (12,'Section 1','Grade 5'),
 (13,'Section 1','Grade 6'),
 (14,'Section 1','Grade 7'),
 (15,'Section 1','Grade 8'),
 (16,'Section 1','Grade 9'),
 (17,'Section 1','Grade 10'),
 (18,'Section 1','Grade 12');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `StudentNo` int(10) unsigned NOT NULL auto_increment,
  `Lastname` varchar(45) NOT NULL default '',
  `Firstname` varchar(45) NOT NULL default '',
  `MI` varchar(45) NOT NULL default '',
  `SectionNo` varchar(45) NOT NULL default '',
  `Gender` varchar(45) NOT NULL default '',
  `SY` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`StudentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`StudentNo`,`Lastname`,`Firstname`,`MI`,`SectionNo`,`Gender`,`SY`) VALUES 
 (20,'Aznar','John Carlo ','M','14','Male','2014-2015'),
 (21,'Barceleno','Vhon','R','14','Male','2014-2015'),
 (22,'Bansag','Joana','E','14','Female','2014-2015'),
 (23,'Dalino','Chriscian','','14','Female','2014-2015'),
 (24,'Test','Test','T','15','Male','2014-2015'),
 (25,'Nikolas','Test','B','14','Male','2014-2015');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `SubjectNo` int(10) unsigned NOT NULL auto_increment,
  `SubjectName` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`SubjectNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`SubjectNo`,`SubjectName`) VALUES 
 (1,'Filipino'),
 (2,'English'),
 (3,'Mathematics'),
 (4,'Science & Technology'),
 (5,'Araling Panlipunan'),
 (6,'TLE'),
 (7,'MAPEH'),
 (8,'CLE/EsP'),
 (9,'Elective (Advanced Chemistry)');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`subjectgrade`
--

DROP TABLE IF EXISTS `subjectgrade`;
CREATE TABLE `subjectgrade` (
  `SGID` int(10) unsigned NOT NULL auto_increment,
  `KQuiz` varchar(45) NOT NULL default '',
  `KExam` varchar(45) NOT NULL default '',
  `KTotal` varchar(45) NOT NULL default '',
  `KEquivalent` varchar(45) NOT NULL default '',
  `KPercent` varchar(45) NOT NULL default '',
  `PQuiz` varchar(45) NOT NULL default '',
  `PExam` varchar(45) NOT NULL default '',
  `PTotal` varchar(45) NOT NULL default '',
  `PEquivalent` varchar(45) NOT NULL default '',
  `PPercent` varchar(45) NOT NULL default '',
  `UQuiz` varchar(45) NOT NULL default '',
  `UExam` varchar(45) NOT NULL default '',
  `UTotal` varchar(45) NOT NULL default '',
  `UEquivalent` varchar(45) NOT NULL default '',
  `UPercent` varchar(45) NOT NULL default '',
  `PPPP` varchar(45) NOT NULL default '',
  `PPEquivalent` varchar(45) NOT NULL default '',
  `PPPercent` varchar(45) NOT NULL default '',
  `FG` varchar(45) NOT NULL default '',
  `LG` varchar(45) NOT NULL default '',
  `TIQuiz` varchar(45) NOT NULL default '',
  `TIExam` varchar(45) NOT NULL default '',
  `TeacherNo` varchar(45) NOT NULL default '',
  `StudentNo` varchar(45) NOT NULL default '',
  `SY` varchar(45) NOT NULL default '',
  `SectionNo` varchar(45) NOT NULL default '',
  `Subject` varchar(45) NOT NULL default '',
  `GradingPeriod` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`SGID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`subjectgrade`
--

/*!40000 ALTER TABLE `subjectgrade` DISABLE KEYS */;
INSERT INTO `subjectgrade` (`SGID`,`KQuiz`,`KExam`,`KTotal`,`KEquivalent`,`KPercent`,`PQuiz`,`PExam`,`PTotal`,`PEquivalent`,`PPercent`,`UQuiz`,`UExam`,`UTotal`,`UEquivalent`,`UPercent`,`PPPP`,`PPEquivalent`,`PPPercent`,`FG`,`LG`,`TIQuiz`,`TIExam`,`TeacherNo`,`StudentNo`,`SY`,`SectionNo`,`Subject`,`GradingPeriod`) VALUES 
 (16,'22','22','44','87','13.05','22','22','44','84','21.00','22','22','44','90','27.00','22','68','20.40','81.45','AP','66','66','8','20','2014-2015','14','Science','First'),
 (17,'30','30','60','100','15.00','30','30','60','96','24.00','22','22','60','90','27.00','22','68','20.40','86.40','P','82','82','8','21','2014-2015','14','Science','First'),
 (18,'22','22','44','78','11.70','23','43','66','91','22.75','22','33','66','84','25.20','33','78','23.40','83.05','AP','67','98','8','20','2014-2015','14','Comp./Tech and Livelihood Educ.','First'),
 (19,'22','22','44','78','11.70','22','22','44','78','19.50','22','22','44','78','23.40','60','100','30.00','84.60','P','66','66','8','22','2014-2015','14','Comp./Tech and Livelihood Educ.','First'),
 (20,'10','25','35','94','14.10','20','17','37','96','24.00','15','19','37','93','27.90','50','92','27.60','93.60','A','45','61','8','20','2014-2015','14','Edukasyon sa Pagpapakatao','First');
INSERT INTO `subjectgrade` (`SGID`,`KQuiz`,`KExam`,`KTotal`,`KEquivalent`,`KPercent`,`PQuiz`,`PExam`,`PTotal`,`PEquivalent`,`PPercent`,`UQuiz`,`UExam`,`UTotal`,`UEquivalent`,`UPercent`,`PPPP`,`PPEquivalent`,`PPPercent`,`FG`,`LG`,`TIQuiz`,`TIExam`,`TeacherNo`,`StudentNo`,`SY`,`SectionNo`,`Subject`,`GradingPeriod`) VALUES 
 (21,'22','22','44','87','13.05','22','22','44','84','21.00','22','22','44','90','27.00','22','68','20.40','81.45','AP','66','66','8','22','2014-2015','14','Science','First'),
 (22,'20','22','44','81','12.15','22','22','44','87','21.75','22','22','44','87','26.10','22','68','20.40','80.40','AP','66','66','9','20','2014-2015','14','Current Issues/Geography','First'),
 (23,'22','22','44','87','13.05','22','22','44','84','21.00','22','22','44','90','27.00','22','68','20.40','81.45','AP','66','66','8','23','2014-2015','14','Science','First'),
 (24,'22','22','44','78','11.70','22','22','44','78','19.50','22','22','44','78','23.40','22','68','20.40','75.00','D','66','66','8','21','2014-2015','14','Comp./Tech and Livelihood Educ.','First'),
 (25,'20','20','40','100','15.00','15','18','33','91','22.75','16','20','36','95','28.50','55','96','28.80','95.05','A','51','58','8','22','2014-2015','14','Edukasyon sa Pagpapakatao','First');
INSERT INTO `subjectgrade` (`SGID`,`KQuiz`,`KExam`,`KTotal`,`KEquivalent`,`KPercent`,`PQuiz`,`PExam`,`PTotal`,`PEquivalent`,`PPercent`,`UQuiz`,`UExam`,`UTotal`,`UEquivalent`,`UPercent`,`PPPP`,`PPEquivalent`,`PPPercent`,`FG`,`LG`,`TIQuiz`,`TIExam`,`TeacherNo`,`StudentNo`,`SY`,`SectionNo`,`Subject`,`GradingPeriod`) VALUES 
 (26,'22','22','44','79','11.85','22','11','33','83','20.75','22','22','44','78','23.40','22','74','22.20','78.20','D','66','55','8','20','2014-2015','14','Filipino','First'),
 (27,'22','22','44','79','11.85','22','11','33','83','20.75','22','22','44','78','23.40','40','94','28.20','84.20','AP','66','55','8','23','2014-2015','14','Filipino','First'),
 (28,'20','20','40','83','12.45','20','20','40','94','23.50','20','20','40','81','24.30','35','94','28.20','88.45','P','60','60','8','20','2014-2015','14','Filipino','Second');
/*!40000 ALTER TABLE `subjectgrade` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`subjectmaxscore`
--

DROP TABLE IF EXISTS `subjectmaxscore`;
CREATE TABLE `subjectmaxscore` (
  `SMSID` int(10) unsigned NOT NULL auto_increment,
  `KQuiz` varchar(45) NOT NULL default '',
  `KExam` varchar(45) NOT NULL default '',
  `KTotal` varchar(45) NOT NULL default '',
  `PQuiz` varchar(45) NOT NULL default '',
  `PExam` varchar(45) NOT NULL default '',
  `PTotal` varchar(45) NOT NULL default '',
  `UQuiz` varchar(45) NOT NULL default '',
  `UExam` varchar(45) NOT NULL default '',
  `UTotal` varchar(45) NOT NULL default '',
  `PPTotal` varchar(45) NOT NULL default '',
  `TeacherNo` varchar(45) NOT NULL default '',
  `SY` varchar(45) NOT NULL default '',
  `GradeLevel` varchar(45) NOT NULL default '',
  `Subject` varchar(45) NOT NULL default '',
  `GradingPeriod` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`SMSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`subjectmaxscore`
--

/*!40000 ALTER TABLE `subjectmaxscore` DISABLE KEYS */;
INSERT INTO `subjectmaxscore` (`SMSID`,`KQuiz`,`KExam`,`KTotal`,`PQuiz`,`PExam`,`PTotal`,`UQuiz`,`UExam`,`UTotal`,`PPTotal`,`TeacherNo`,`SY`,`GradeLevel`,`Subject`,`GradingPeriod`) VALUES 
 (5,'35','25','60','30','35','65','25','30','55','60','8','2014-2015','Grade 7','Science','First'),
 (6,'30','50','80','30','50','80','30','50','80','60','8','2014-2015','Grade 7','Comp./Tech and Livelihood Educ.','First'),
 (7,'20','20','40','20','20','40','20','20','40','60','8','2014-2015','Grade 7','Edukasyon sa Pagpapakatao','First'),
 (8,'20','25','45','25','30','55','30','30','60','60','9','2014-2015','Grade 7','Current Issues/Geography','First'),
 (9,'15','20','35','25','20','45','20','20','40','50','9','2014-2015','Grade 7','Current Issues/Geography','Second'),
 (10,'30','45','75','30','20','50','40','40','80','45','8','2014-2015','Grade 7','Filipino','First'),
 (11,'40','20','60','20','25','45','30','35','65','40','8','2014-2015','Grade 7','Filipino','Second'),
 (12,'20','20','40','20','20','40','20','20','40','40','8','2014-2015','Grade 7','Science','Second');
/*!40000 ALTER TABLE `subjectmaxscore` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`sy`
--

DROP TABLE IF EXISTS `sy`;
CREATE TABLE `sy` (
  `SYId` int(10) unsigned NOT NULL auto_increment,
  `SYValue` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`SYId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`sy`
--

/*!40000 ALTER TABLE `sy` DISABLE KEYS */;
INSERT INTO `sy` (`SYId`,`SYValue`) VALUES 
 (2,'2015-2016'),
 (7,'2016-2017'),
 (8,'2017-2018'),
 (9,'2018-2019'),
 (10,'2019-2020'),
 (11,'2014-2015');
/*!40000 ALTER TABLE `sy` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `TeacherNo` int(10) unsigned NOT NULL auto_increment,
  `Lastname` varchar(45) default '',
  `Firstname` varchar(45) NOT NULL default '',
  `MI` varchar(45) NOT NULL default '',
  `SectionNo` varchar(45) NOT NULL default '',
  `SY` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`TeacherNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`teacher`
--

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`TeacherNo`,`Lastname`,`Firstname`,`MI`,`SectionNo`,`SY`) VALUES 
 (6,'Snell','Jane','E','8','2014-2015'),
 (7,'Pedroso','Marife','S','9','2014-2015'),
 (8,'Escala','Fritzie','A','18','2014-2015'),
 (9,'Lonzaga','Christian','B','14','2014-2015'),
 (10,'Bolo','Jellie Mae','B','15','2014-2015'),
 (11,'Libre','Delia','V','16','2014-2015');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`teachersubject`
--

DROP TABLE IF EXISTS `teachersubject`;
CREATE TABLE `teachersubject` (
  `TSId` int(10) unsigned NOT NULL auto_increment,
  `Subject` varchar(45) NOT NULL default '',
  `SectionNo` varchar(45) NOT NULL default '',
  `TeacherNo` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`TSId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`teachersubject`
--

/*!40000 ALTER TABLE `teachersubject` DISABLE KEYS */;
INSERT INTO `teachersubject` (`TSId`,`Subject`,`SectionNo`,`TeacherNo`) VALUES 
 (13,'MAPEH','13','6'),
 (14,'Edukasyon sa Pagpapakatao','13','6'),
 (15,'Filipino','13','6'),
 (16,'Comp./Tech and Livelihood Educ.','13','7'),
 (18,'Filipino','14','8'),
 (19,'Mathematics','14','8'),
 (20,'Science','14','8'),
 (21,'Edukasyon sa Pagpapakatao','14','8'),
 (22,'Foreign Language','14','8'),
 (23,'AP','14','11'),
 (24,'Homeroom','14','11'),
 (25,'Current Issues/Geography','14','9'),
 (27,'English','13','8'),
 (28,'Comp./Tech and Livelihood Educ.','15','8');
/*!40000 ALTER TABLE `teachersubject` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`tempgradingreport`
--

DROP TABLE IF EXISTS `tempgradingreport`;
CREATE TABLE `tempgradingreport` (
  `TGRNo` int(10) unsigned NOT NULL auto_increment,
  `StudentName` varchar(128) NOT NULL default '',
  `Filipino` varchar(45) default '',
  `English` varchar(45) default '',
  `Math` varchar(45) default '',
  `Science` varchar(45) default '',
  `AP` varchar(45) default '',
  `Homeroom` varchar(45) default '',
  `MAPEH` varchar(45) default '',
  `FMAL` varchar(45) default '',
  `SMAL` varchar(45) default '',
  `TMAL` varchar(45) default '',
  `Total` varchar(45) default '',
  `Average` varchar(45) default '',
  `Honor` varchar(45) default '',
  `Section` varchar(100) default '',
  `GradingPeriod` varchar(45) default '',
  `RR` varchar(45) default '',
  `EP` varchar(45) default '',
  `CCBA` varchar(45) default '',
  `Computer` varchar(45) default '',
  `Language` varchar(45) default '',
  `CIG` varchar(45) default '',
  PRIMARY KEY  (`TGRNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`tempgradingreport`
--

/*!40000 ALTER TABLE `tempgradingreport` DISABLE KEYS */;
INSERT INTO `tempgradingreport` (`TGRNo`,`StudentName`,`Filipino`,`English`,`Math`,`Science`,`AP`,`Homeroom`,`MAPEH`,`FMAL`,`SMAL`,`TMAL`,`Total`,`Average`,`Honor`,`Section`,`GradingPeriod`,`RR`,`EP`,`CCBA`,`Computer`,`Language`,`CIG`) VALUES 
 (74,'Aznar, John Carlo  M','78 D','','','81 AP','','','','','','','','','','Grade 7 - Section 1','First','','94 A','','83 AP','','80 AP'),
 (75,'Bansag, Joana E','','','','81 AP','','','','','','','','','','Grade 7 - Section 1','First','','95 A','','85 P','',''),
 (76,'Barceleno, Vhon R','','','','86 P','','','','','','','','','','Grade 7 - Section 1','First','','','','75 D','',''),
 (77,'Dalino, Chriscian ','84 AP','','','81 AP','','','','','','','','','','Grade 7 - Section 1','First','','','','','','');
/*!40000 ALTER TABLE `tempgradingreport` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`tempsubjectgrade`
--

DROP TABLE IF EXISTS `tempsubjectgrade`;
CREATE TABLE `tempsubjectgrade` (
  `TSGId` int(10) unsigned NOT NULL auto_increment,
  `kQuiz` varchar(45) NOT NULL default '',
  `KExam` varchar(45) NOT NULL default '',
  `KTotal` varchar(45) NOT NULL default '',
  `KEquivalent` varchar(45) NOT NULL default '',
  `KPercent` varchar(45) NOT NULL default '',
  `PQuiz` varchar(45) NOT NULL default '',
  `PExam` varchar(45) NOT NULL default '',
  `PTotal` varchar(45) NOT NULL default '',
  `PEquivalent` varchar(45) NOT NULL default '',
  `PPercent` varchar(45) NOT NULL default '',
  `UQuiz` varchar(45) NOT NULL default '',
  `UExam` varchar(45) NOT NULL default '',
  `UTotal` varchar(45) NOT NULL default '',
  `UEquivalent` varchar(45) NOT NULL default '',
  `UPercent` varchar(45) NOT NULL default '',
  `PPPP` varchar(45) NOT NULL default '',
  `PPEQuivalent` varchar(45) NOT NULL default '',
  `PPPercent` varchar(45) NOT NULL default '',
  `FG` varchar(45) NOT NULL default '',
  `LG` varchar(45) NOT NULL default '',
  `TIQuiz` varchar(45) NOT NULL default '',
  `TIExam` varchar(45) NOT NULL default '',
  `StudentName` varchar(45) NOT NULL default '',
  `TeacherName` varchar(45) NOT NULL default '',
  `SY` varchar(45) NOT NULL default '',
  `GradeSection` varchar(100) NOT NULL default '',
  `GradeSubject` varchar(100) NOT NULL default '',
  `GradingPeriod` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`TSGId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`tempsubjectgrade`
--

/*!40000 ALTER TABLE `tempsubjectgrade` DISABLE KEYS */;
INSERT INTO `tempsubjectgrade` (`TSGId`,`kQuiz`,`KExam`,`KTotal`,`KEquivalent`,`KPercent`,`PQuiz`,`PExam`,`PTotal`,`PEquivalent`,`PPercent`,`UQuiz`,`UExam`,`UTotal`,`UEquivalent`,`UPercent`,`PPPP`,`PPEQuivalent`,`PPPercent`,`FG`,`LG`,`TIQuiz`,`TIExam`,`StudentName`,`TeacherName`,`SY`,`GradeSection`,`GradeSubject`,`GradingPeriod`) VALUES 
 (167,'30','45','75','','15%','30','20','50','','25%','40','40','50','','30%','45','','30%','100%','','100','105','','Escala, Fritzie A','2014-2015','Grade 7 - Grade 7 - Section 1','Grade 7 Filipino','1st Quarter Grades'),
 (168,'','','','','','','','','','','','','','','','','','','','','','','NAME OF STUDENTS','Escala, Fritzie A','2014-2015','Grade 7 - Grade 7 - Section 1','Grade 7 Filipino','1st Quarter Grades'),
 (169,'22','22','44','79','11.85','22','11','33','83','23.40','22','22','44','78','23.40','22','74','22.20','78.20','D','66','55','Aznar, John Carlo  M','Escala, Fritzie A','2014-2015','Grade 7 - Grade 7 - Section 1','Grade 7 Filipino','1st Quarter Grades'),
 (170,'','','','','','','','','','','','','','','','','','','','','','','GIRLS','Escala, Fritzie A','2014-2015','Grade 7 - Grade 7 - Section 1','Grade 7 Filipino','1st Quarter Grades');
INSERT INTO `tempsubjectgrade` (`TSGId`,`kQuiz`,`KExam`,`KTotal`,`KEquivalent`,`KPercent`,`PQuiz`,`PExam`,`PTotal`,`PEquivalent`,`PPercent`,`UQuiz`,`UExam`,`UTotal`,`UEquivalent`,`UPercent`,`PPPP`,`PPEQuivalent`,`PPPercent`,`FG`,`LG`,`TIQuiz`,`TIExam`,`StudentName`,`TeacherName`,`SY`,`GradeSection`,`GradeSubject`,`GradingPeriod`) VALUES 
 (171,'22','22','44','79','11.85','22','11','33','83','23.40','22','22','44','78','23.40','40','94','28.20','84.20','AP','66','55','Dalino, Chriscian ','Escala, Fritzie A','2014-2015','Grade 7 - Grade 7 - Section 1','Grade 7 Filipino','1st Quarter Grades');
/*!40000 ALTER TABLE `tempsubjectgrade` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`transmutation`
--

DROP TABLE IF EXISTS `transmutation`;
CREATE TABLE `transmutation` (
  `TId` int(10) unsigned NOT NULL auto_increment,
  `Equivalent` varchar(45) NOT NULL default '',
  `Score` varchar(45) NOT NULL default '',
  `Max` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`TId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`transmutation`
--

/*!40000 ALTER TABLE `transmutation` DISABLE KEYS */;
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (1,'99','54','55'),
 (2,'98','53','55'),
 (3,'97','52','55'),
 (4,'96','51','55'),
 (5,'95','50','55'),
 (6,'95','49','55'),
 (7,'94','48','55'),
 (8,'93','47','55'),
 (9,'92','46','55'),
 (10,'91','45','55'),
 (11,'90','44','55'),
 (12,'89','43','55'),
 (13,'88','42','55'),
 (14,'87','41','55'),
 (15,'86','40','55'),
 (16,'85','39','55'),
 (17,'85','38','55'),
 (18,'84','37','55'),
 (19,'83','36','55'),
 (20,'82','35','55'),
 (21,'81','34','55'),
 (22,'80','33','55'),
 (23,'79','32','55'),
 (24,'78','31','55'),
 (25,'77','30','55'),
 (26,'76','29','55'),
 (27,'75','28','55'),
 (28,'75','27','55'),
 (29,'74','26','55'),
 (30,'73','25','55'),
 (31,'72','24','55'),
 (32,'71','23','55'),
 (33,'70','22','55'),
 (34,'69','21','55'),
 (35,'68','20','55'),
 (36,'67','19','55'),
 (37,'66','18','55'),
 (38,'65','17','55'),
 (39,'65','16','55'),
 (40,'64','15','55'),
 (41,'63','14','55'),
 (42,'62','13','55'),
 (43,'61','12','55'),
 (44,'60','11','55');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (45,'59','10','55'),
 (46,'58','9','55'),
 (47,'57','8','55'),
 (48,'56','7','55'),
 (49,'55','6','55'),
 (50,'55','5','55'),
 (51,'54','4','55'),
 (52,'53','3','55'),
 (53,'52','2','55'),
 (54,'51','1','55'),
 (55,'50','0','55'),
 (57,'99','59','60'),
 (58,'98','58','60'),
 (59,'98','57','60'),
 (60,'97','56','60'),
 (61,'96','55','60'),
 (62,'95','54','60'),
 (63,'94','53','60'),
 (64,'93','52','60'),
 (65,'93','51','60'),
 (66,'92','50','60'),
 (67,'91','49','60'),
 (68,'90','48','60'),
 (69,'89','47','60'),
 (70,'88','46','60'),
 (71,'88','45','60'),
 (72,'87','44','60'),
 (73,'86','43','60'),
 (74,'85','42','60'),
 (75,'84','41','60'),
 (76,'83','40','60'),
 (77,'83','39','60'),
 (78,'82','38','60'),
 (79,'81','37','60'),
 (80,'80','36','60'),
 (81,'79','35','60'),
 (82,'78','34','60'),
 (83,'78','33','60'),
 (84,'77','32','60'),
 (85,'76','31','60'),
 (86,'75','30','60'),
 (87,'74','29','60'),
 (88,'73','28','60'),
 (89,'73','27','60');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (90,'72','26','60'),
 (91,'71','25','60'),
 (92,'70','24','60'),
 (93,'69','23','60'),
 (94,'68','22','60'),
 (95,'68','21','60'),
 (96,'67','20','60'),
 (97,'66','19','60'),
 (98,'65','18','60'),
 (99,'64','17','60'),
 (100,'63','16','60'),
 (101,'63','15','60'),
 (102,'62','14','60'),
 (103,'61','13','60'),
 (104,'60','12','60'),
 (105,'59','11','60'),
 (106,'58','10','60'),
 (107,'58','9','60'),
 (108,'57','8','60'),
 (109,'56','7','60'),
 (110,'55','6','60'),
 (111,'54','5','60'),
 (112,'53','4','60'),
 (113,'53','3','60'),
 (114,'52','2','60'),
 (115,'51','1','60'),
 (116,'50','0','60'),
 (117,'100','55','55'),
 (118,'100','60','60'),
 (196,'100','65','65'),
 (197,'99','64','65'),
 (198,'98','63','65'),
 (199,'98','62','65'),
 (200,'97','61','65'),
 (201,'96','60','65'),
 (202,'95','59','65'),
 (203,'95','58','65'),
 (204,'94','57','65'),
 (205,'93','56','65'),
 (206,'92','55','65'),
 (207,'92','54','65'),
 (208,'91','53','65'),
 (209,'90','52','65');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (210,'89','51','65'),
 (211,'88','50','65'),
 (212,'88','49','65'),
 (213,'87','48','65'),
 (214,'86','47','65'),
 (215,'85','46','65'),
 (216,'85','45','65'),
 (217,'84','44','65'),
 (218,'83','43','65'),
 (219,'82','42','65'),
 (220,'82','41','65'),
 (221,'81','40','65'),
 (222,'80','39','65'),
 (223,'79','38','65'),
 (224,'78','37','65'),
 (225,'78','36','65'),
 (226,'77','35','65'),
 (227,'76','34','65'),
 (228,'75','33','65'),
 (229,'75','32','65'),
 (230,'74','31','65'),
 (231,'73','30','65'),
 (232,'72','29','65'),
 (233,'72','28','65'),
 (234,'71','27','65'),
 (235,'70','26','65'),
 (236,'69','25','65'),
 (237,'68','24','65'),
 (238,'68','23','65'),
 (239,'67','22','65'),
 (240,'66','21','65'),
 (241,'65','20','65'),
 (242,'65','19','65'),
 (243,'64','18','65'),
 (244,'63','17','65'),
 (245,'62','16','65'),
 (246,'62','15','65'),
 (247,'61','14','65'),
 (248,'60','13','65'),
 (249,'59','12','65'),
 (250,'58','11','65'),
 (251,'58','10','65');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (252,'57','9','65'),
 (253,'56','8','65'),
 (254,'55','7','65'),
 (255,'55','6','65'),
 (256,'54','5','65'),
 (257,'53','4','65'),
 (258,'52','3','65'),
 (259,'52','2','65'),
 (260,'51','1','65'),
 (261,'50','0','65'),
 (273,'100','70','70'),
 (274,'99','69','70'),
 (275,'99','68','70'),
 (276,'98','67','70'),
 (277,'97','66','70'),
 (278,'96','65','70'),
 (279,'96','64','70'),
 (280,'95','63','70'),
 (281,'94','62','70'),
 (282,'94','61','70'),
 (283,'93','60','70'),
 (284,'92','59','70'),
 (285,'91','58','70'),
 (286,'91','57','70'),
 (287,'90','56','70'),
 (288,'89','55','70'),
 (289,'89','54','70'),
 (290,'88','53','70'),
 (291,'87','52','70'),
 (292,'86','51','70'),
 (293,'86','50','70'),
 (294,'85','49','70'),
 (295,'84','48','70'),
 (296,'84','47','70'),
 (297,'83','46','70'),
 (298,'82','45','70'),
 (299,'81','44','70'),
 (300,'81','43','70'),
 (301,'80','42','70'),
 (302,'79','41','70'),
 (303,'79','40','70'),
 (304,'78','39','70');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (305,'77','38','70'),
 (306,'76','37','70'),
 (307,'76','36','70'),
 (308,'75','35','70'),
 (309,'74','34','70'),
 (310,'74','33','70'),
 (311,'73','32','70'),
 (312,'72','31','70'),
 (313,'71','30','70'),
 (314,'71','29','70'),
 (315,'70','28','70'),
 (316,'69','27','70'),
 (317,'69','26','70'),
 (318,'68','25','70'),
 (319,'67','24','70'),
 (320,'66','23','70'),
 (321,'66','22','70'),
 (322,'65','21','70'),
 (323,'64','20','70'),
 (324,'64','19','70'),
 (325,'63','18','70'),
 (326,'62','17','70'),
 (327,'61','16','70'),
 (328,'61','15','70'),
 (329,'60','14','70'),
 (330,'59','13','70'),
 (331,'59','12','70'),
 (332,'58','11','70'),
 (333,'57','10','70'),
 (334,'56','9','70'),
 (335,'56','8','70'),
 (336,'55','6','70'),
 (337,'55','5','70'),
 (338,'54','4','70'),
 (339,'53','3','70'),
 (340,'52','3','70'),
 (341,'51','2','70'),
 (342,'51','1','70'),
 (343,'50','0','70'),
 (355,'100','75','75'),
 (356,'99','74','75'),
 (357,'99','73','75');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (358,'98','72','75'),
 (359,'97','71','75'),
 (360,'97','70','75'),
 (361,'96','69','75'),
 (362,'95','68','75'),
 (363,'95','67','75'),
 (364,'94','66','75'),
 (365,'93','65','75'),
 (366,'93','64','75'),
 (367,'92','63','75'),
 (368,'91','62','75'),
 (369,'91','61','75'),
 (370,'90','60','75'),
 (371,'89','59','75'),
 (372,'89','58','75'),
 (373,'88','57','75'),
 (374,'87','56','75'),
 (375,'87','55','75'),
 (376,'86','54','75'),
 (377,'85','53','75'),
 (378,'85','52','75'),
 (379,'84','51','75'),
 (380,'83','50','75'),
 (381,'83','49','75'),
 (382,'82','48','75'),
 (383,'81','47','75'),
 (384,'81','46','75'),
 (385,'80','45','75'),
 (386,'79','44','75'),
 (387,'79','43','75'),
 (388,'78','42','75'),
 (389,'77','41','75'),
 (390,'77','40','75'),
 (391,'76','39','75'),
 (392,'75','38','75'),
 (393,'75','37','75'),
 (394,'74','36','75'),
 (395,'73','35','75'),
 (396,'73','34','75'),
 (397,'72','33','75'),
 (398,'71','32','75'),
 (399,'71','31','75');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (400,'70','30','75'),
 (401,'69','29','75'),
 (402,'69','28','75'),
 (403,'68','27','75'),
 (404,'67','26','75'),
 (405,'67','25','75'),
 (406,'66','24','75'),
 (407,'65','23','75'),
 (408,'65','22','75'),
 (409,'64','21','75'),
 (410,'63','20','75'),
 (411,'63','19','75'),
 (412,'62','18','75'),
 (413,'62','17','75'),
 (414,'61','16','75'),
 (415,'60','15','75'),
 (416,'59','14','75'),
 (417,'59','13','75'),
 (418,'58','12','75'),
 (419,'57','11','75'),
 (420,'57','10','75'),
 (421,'56','9','75'),
 (422,'55','8','75'),
 (423,'55','7','75'),
 (424,'54','6','75'),
 (425,'53','5','75'),
 (426,'53','4','75'),
 (427,'52','3','75'),
 (428,'51','2','75'),
 (429,'51','1','75'),
 (430,'50','0','75'),
 (462,'100','80','80'),
 (463,'99','79','80'),
 (464,'99','78','80'),
 (465,'98','77','80'),
 (466,'98','76','80'),
 (467,'97','75','80'),
 (468,'96','74','80'),
 (469,'96','73','80'),
 (470,'95','72','80'),
 (471,'94','71','80'),
 (472,'94','70','80');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (473,'93','69','80'),
 (474,'93','68','80'),
 (475,'92','67','80'),
 (476,'91','66','80'),
 (477,'91','65','80'),
 (478,'90','64','80'),
 (479,'89','63','80'),
 (480,'89','62','80'),
 (481,'88','61','80'),
 (482,'88','60','80'),
 (483,'87','59','80'),
 (484,'86','58','80'),
 (485,'86','57','80'),
 (486,'85','56','80'),
 (487,'84','55','80'),
 (488,'84','54','80'),
 (489,'83','53','80'),
 (490,'83','52','80'),
 (491,'82','51','80'),
 (492,'81','50','80'),
 (493,'81','49','80'),
 (494,'80','48','80'),
 (495,'79','47','80'),
 (496,'79','46','80'),
 (497,'78','45','80'),
 (498,'78','44','80'),
 (499,'77','43','80'),
 (500,'76','42','80'),
 (501,'76','41','80'),
 (502,'75','40','80'),
 (503,'74','39','80'),
 (504,'74','38','80'),
 (505,'73','37','80'),
 (506,'73','36','80'),
 (507,'72','35','80'),
 (508,'71','34','80'),
 (509,'71','33','80'),
 (510,'70','32','80'),
 (511,'69','31','80'),
 (512,'69','30','80'),
 (513,'68','29','80'),
 (514,'68','28','80');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (515,'67','27','80'),
 (516,'66','26','80'),
 (517,'66','25','80'),
 (518,'65','24','80'),
 (519,'64','23','80'),
 (520,'64','22','80'),
 (521,'63','21','80'),
 (522,'63','20','80'),
 (523,'62','19','80'),
 (524,'61','18','80'),
 (525,'61','17','80'),
 (526,'60','16','80'),
 (527,'59','15','80'),
 (528,'59','14','80'),
 (529,'58','13','80'),
 (530,'58','12','80'),
 (531,'57','11','80'),
 (532,'56','10','80'),
 (533,'56','9','80'),
 (534,'55','8','80'),
 (535,'54','7','80'),
 (536,'54','6','80'),
 (537,'53','5','80'),
 (538,'53','4','80'),
 (539,'52','3','80'),
 (540,'51','2','80'),
 (541,'51','1','80'),
 (542,'50','0','80'),
 (543,'100','35','35'),
 (544,'99','34','35'),
 (545,'97','33','35'),
 (546,'96','32','35'),
 (547,'94','31','35'),
 (548,'93','30','35'),
 (549,'91','29','35'),
 (550,'90','28','35'),
 (551,'89','27','35'),
 (552,'87','26','35'),
 (553,'86','25','35'),
 (554,'84','24','35'),
 (555,'83','23','35'),
 (556,'81','22','35');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (557,'80','21','35'),
 (558,'79','20','35'),
 (559,'77','19','35'),
 (560,'76','18','35'),
 (561,'74','17','35'),
 (562,'73','16','35'),
 (563,'71','15','35'),
 (564,'70','14','35'),
 (565,'69','13','35'),
 (566,'67','12','35'),
 (567,'66','11','35'),
 (568,'64','10','35'),
 (569,'63','9','35'),
 (570,'61','8','35'),
 (571,'60','7','35'),
 (572,'59','6','35'),
 (573,'57','5','35'),
 (574,'56','4','35'),
 (575,'54','3','35'),
 (576,'53','2','35'),
 (577,'51','1','35'),
 (578,'50','0','35'),
 (580,'100','40','40'),
 (581,'99','39','40'),
 (582,'98','38','40'),
 (583,'96','37','40'),
 (584,'95','36','40'),
 (585,'94','35','40'),
 (586,'93','34','40'),
 (587,'91','33','40'),
 (588,'90','32','40'),
 (589,'89','31','40'),
 (590,'88','30','40'),
 (591,'86','29','40'),
 (592,'85','28','40'),
 (593,'84','27','40'),
 (594,'83','26','40'),
 (595,'81','25','40'),
 (596,'80','24','40'),
 (597,'79','23','40'),
 (598,'78','22','40'),
 (599,'76','21','40');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (600,'75','20','40'),
 (601,'74','19','40'),
 (602,'73','18','40'),
 (603,'71','17','40'),
 (604,'70','16','40'),
 (605,'69','15','40'),
 (606,'68','14','40'),
 (607,'66','13','40'),
 (608,'65','12','40'),
 (609,'64','11','40'),
 (610,'63','10','40'),
 (611,'61','9','40'),
 (612,'60','8','40'),
 (613,'59','7','40'),
 (614,'58','6','40'),
 (615,'56','5','40'),
 (616,'55','4','40'),
 (617,'54','3','40'),
 (618,'53','2','40'),
 (619,'51','1','40'),
 (620,'50','0','40'),
 (622,'100','45','45'),
 (623,'99','44','45'),
 (624,'98','43','45'),
 (625,'97','42','45'),
 (626,'96','41','45'),
 (627,'94','40','45'),
 (628,'93','39','45'),
 (629,'92','38','45'),
 (630,'91','37','45'),
 (631,'90','36','45'),
 (632,'89','35','45'),
 (633,'88','34','45'),
 (634,'87','33','45'),
 (635,'86','32','45'),
 (636,'84','31','45'),
 (637,'83','30','45'),
 (638,'82','29','45'),
 (639,'81','28','45'),
 (640,'80','27','45'),
 (641,'79','26','45'),
 (642,'78','25','45');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (643,'77','24','45'),
 (644,'76','23','45'),
 (645,'74','22','45'),
 (646,'73','21','45'),
 (647,'72','20','45'),
 (648,'71','19','45'),
 (649,'70','18','45'),
 (650,'69','17','45'),
 (651,'68','16','45'),
 (652,'67','15','45'),
 (653,'66','14','45'),
 (654,'64','13','45'),
 (655,'63','12','45'),
 (656,'62','11','45'),
 (657,'61','10','45'),
 (658,'60','9','45'),
 (659,'59','8','45'),
 (660,'58','7','45'),
 (661,'57','6','45'),
 (662,'56','5','45'),
 (663,'54','4','45'),
 (664,'53','3','45'),
 (665,'52','2','45'),
 (666,'51','1','45'),
 (667,'50','0','45'),
 (669,'100','50','50'),
 (670,'99','49','50'),
 (671,'98','48','50'),
 (672,'97','47','50'),
 (673,'96','46','50'),
 (674,'95','45','50'),
 (675,'94','44','50'),
 (676,'93','43','50'),
 (677,'92','42','50'),
 (678,'91','41','50'),
 (679,'90','40','50'),
 (680,'89','39','50'),
 (681,'88','38','50'),
 (682,'87','37','50'),
 (683,'86','36','50'),
 (684,'85','35','50'),
 (685,'84','34','50');
INSERT INTO `transmutation` (`TId`,`Equivalent`,`Score`,`Max`) VALUES 
 (686,'83','33','50'),
 (687,'82','32','50'),
 (688,'81','31','50'),
 (689,'80','30','50'),
 (690,'79','29','50'),
 (691,'78','28','50'),
 (692,'77','27','50'),
 (693,'76','26','50'),
 (694,'75','25','50'),
 (695,'74','24','50'),
 (696,'73','23','50'),
 (697,'72','22','50'),
 (698,'71','21','50'),
 (699,'70','20','50'),
 (700,'69','19','50'),
 (701,'68','18','50'),
 (702,'67','17','50'),
 (703,'66','16','50'),
 (704,'65','15','50'),
 (705,'64','14','50'),
 (706,'63','13','50'),
 (707,'62','12','50'),
 (708,'61','11','50'),
 (709,'60','10','50'),
 (710,'59','9','50'),
 (711,'58','8','50'),
 (712,'57','7','50'),
 (713,'56','6','50'),
 (714,'55','5','50'),
 (715,'54','4','50'),
 (716,'53','3','50'),
 (717,'52','2','50'),
 (718,'51','1','50'),
 (719,'50','0','50');
/*!40000 ALTER TABLE `transmutation` ENABLE KEYS */;


--
-- Table structure for table `ibedgrading_db`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL default '',
  `pwd` varchar(45) NOT NULL default '',
  `Role` varchar(45) NOT NULL default '',
  `TeacherNo` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibedgrading_db`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`,`pwd`,`Role`,`TeacherNo`) VALUES 
 ('admin','Q+OMq5goFsSncXQ6XUBBuQ==','Admin',0),
 ('chris','RTTLEGfEO8DBgGefLycYOg==','Teacher',9),
 ('fritz','RTTLEGfEO8DBgGefLycYOg==','Teacher',8),
 ('juan','RTTLEGfEO8DBgGefLycYOg==','Teacher',9);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

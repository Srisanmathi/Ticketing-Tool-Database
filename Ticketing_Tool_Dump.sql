-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: fall2018dbsagarsharma.cbtgo1wyo970.us-east-2.rds.amazonaws.com    Database: TicketingToolTest
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account` (
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  UNIQUE KEY `email_id_UNIQUE` (`email_id`),
  KEY `fk_Account_Employee1_idx` (`emp_id`),
  KEY `fk_emp_id_idx` (`emp_id`),
  CONSTRAINT `fk_emp_id` FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES ('ac@chami.com','UWS19VPC7OO',7005),('aliquet.diam@uncc.edu','KLE21PBK6ZQ',7017),('asheesh@uncc.edu','TYHJUIOKFGHNJ',7033),('coby.bass@uncc.edu','VOV21BHO1SH',7000),('Cras.convallis.convallis@chami.com','BTU06FAF2BC',7002),('Curabitur.consequat@chami.com','LQG09VET0ZE',7007),('Curabitur.dictum.Phasellus@uncc.edu','AKT82KVC4GO',7022),('Curabitur.ut@uncc.edu','RSQ76ENZ5SF',7014),('dis.parturient.montes@sibelius.com','ZTW43UBT3ZB',7001),('eget.dictum.placerat@uncc.edu','QXC69XWS7YB',7015),('enim.commodo@uncc.edu','DEQ73EME2VB',7021),('erat.Etiam.vestibulum@uncc.edu','OBF30ZTL5ZE',7006),('faucibus.id.libero@uncc.edu','SNI95NSG6MO',7011),('faucibus.lectus.a@uncc.edu','VHZ63NTM9VX',7008),('gravida@uncc.edu','PAX31DGH0AK',7009),('in.dolor@uncc.edu','QVK09LLV8PS',7026),('ligula.elit.pretium@uncc.edu','IWF71EIG0OY',7016),('lorem@uncc.edu','VRO08MXU2RR',7012),('magnis.dis@sibelius.com','OWF19PND4WA',7020),('malesuada.vel@uncc.edu','AIM00HYV4WG',7004),('malik@uncc.edu','TYHUJIOMNEP',7032),('odio@uncc.edu','GWT55CHR8VY',7019),('parturient.montes@uncc.edu','BMW09YGV7RX',7029),('pk@uncc.edu','OVBNHJKLPSD',7030),('placerat.orci@uncc.edu','RHR22HNQ9UY',7023),('porttitor.tellus@uncc.edu','SPE65CVK7VW',7028),('Proin.vel.arcu@uncc.edu','EES14GLT0US',7010),('skul@uncc.edu','RTYHGJUKILOP',7031),('Suspendisse.aliquet@uncc.edu','KEX91BWK5TD',7003),('ut.quam.vel@uncc.edu','CUG41JLM9GV',7027),('ut@uncc.edu','PNM54XCB8IS',7018),('utfg@uncc.edu','FYK64RNU6TE',7024),('Utn@uncc.edu','CLP31WTY0GA',7013),('volutpat@uncc.edu','YFJ80RDE6FY',7025);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignmentGroup`
--

DROP TABLE IF EXISTS `AssignmentGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignmentGroup` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(40) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `team_lead_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `fk_dept_id_AssignmentGroup` (`department_id`),
  KEY `fk_AssignmentGroup_Employee1_idx` (`team_lead_id`),
  CONSTRAINT `AssignmentGroup_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Department` (`department_id`),
  CONSTRAINT `fk_AssignmentGroup_Employee1` FOREIGN KEY (`team_lead_id`) REFERENCES `Employee` (`reports_to`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignmentGroup`
--

LOCK TABLES `AssignmentGroup` WRITE;
/*!40000 ALTER TABLE `AssignmentGroup` DISABLE KEYS */;
INSERT INTO `AssignmentGroup` VALUES (3000,'Application Development',2001,7005),(3002,'BI tools',2002,7006),(3003,'Infrastructure',2000,7007),(3004,'Visualization',2000,7008),(3005,'Intelligent Apps',2001,7009),(3006,'Cloud',2000,7010),(3007,'Big Data Infrastructure',2000,7011),(3008,'Data Science',2002,7012),(3009,'IOS App development',2001,7013),(3010,'Telecom Infrastructure',2003,7014);
/*!40000 ALTER TABLE `AssignmentGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BusinessUnit`
--

DROP TABLE IF EXISTS `BusinessUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusinessUnit` (
  `business_unit_id` int(11) NOT NULL,
  `business_unit_name` varchar(50) NOT NULL,
  `business_base_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`business_unit_id`),
  FULLTEXT KEY `business_unit_name` (`business_unit_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusinessUnit`
--

LOCK TABLES `BusinessUnit` WRITE;
/*!40000 ALTER TABLE `BusinessUnit` DISABLE KEYS */;
INSERT INTO `BusinessUnit` VALUES (5000,'UNCC IT TEAM',0),(5001,'Adobe',1000),(5002,'Macromedia',950),(5003,'Chami',870),(5004,'Altavista',1250),(5005,'Sibelius',890),(5006,'Apple Systems',6700),(5007,'Microsoft',5670),(5008,'Borland',780),(5009,'Finale',800),(5010,'Lavasoft',980);
/*!40000 ALTER TABLE `BusinessUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(40) NOT NULL,
  `department_code` varchar(40) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `fk_Department_Employee1_idx` (`manager_id`),
  FULLTEXT KEY `department_code` (`department_code`),
  CONSTRAINT `fk_Department_Employee1` FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`reports_to`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (2000,'Oil and Gas','OGIT',7001),(2001,'Finance','FSDC',7002),(2002,'Supply Chain','SCIT',7003),(2003,'Telecom','TLIT',7004);
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `reports_to` int(11) DEFAULT NULL,
  `phone_personal` varchar(11) DEFAULT NULL,
  `phone_business` varchar(11) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `business_unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_business_unit_id` (`business_unit_id`),
  KEY `fk_tech_lead_id` (`reports_to`),
  KEY `fk_Employee_Employee1_idx` (`emp_id`,`reports_to`),
  CONSTRAINT `fk_Employee_Employee1` FOREIGN KEY (`reports_to`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_business_unit_id` FOREIGN KEY (`business_unit_id`) REFERENCES `BusinessUnit` (`business_unit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (7000,'Coby','Bass',0,'11602345696','11751827980','CEO',5000),(7001,'Zelenia','Abbott',7000,'11245747987','11802090839','Manager',5000),(7002,'Diana','Marsh',7000,'12346979120','66775812234','Manager',5000),(7003,'Winter','Bullock',7000,'19464665601','13588247017','Manager',5000),(7004,'Hammett','Mathews',7000,'16845573909','70248475678','Manager',5000),(7005,'Hiram','Santana',7001,'15565575860','12042949162','Team Lead',5000),(7006,'Dominique','Hahn',7002,'17432932678','54999029391','Team Lead',5000),(7007,'Jemima','Hardy',7003,'18297826789','90171767846','Team Lead',5000),(7008,'Wing','Mercado',7004,'19616064050','75672026758','Team Lead',5000),(7009,'Brandon','Juarez',7001,'14522976091','19886700274','Team Lead',5000),(7010,'Melanie','Mcknight',7002,'15185832134','14845361115','Team Lead',5000),(7011,'Lewis','Diaz',7003,'76632334567','12671256612','Team Lead',5000),(7012,'Daquan','Clarke',7004,'70021106754','19121938963','Team Lead',5000),(7013,'Wylie','Witt',7001,'60452425678','17678909364','Team Lead',5000),(7014,'Yoshio','Bonner',7002,'11851064208','24536678877','Team Lead',5000),(7015,'Cameron','Garza',7005,'14568689798','13456787979','Team Lead',5000),(7016,'Athena','Hoover',7006,'12478682679','14356869789','Graduate Engineer',5000),(7017,'Yasir','Estrada',7007,'13575486897','15657798669','Graduate Engineer',5000),(7018,'Amena','Maddox',7008,'14586987976','15679879769','Team Lead',5000),(7019,'Vivien','Joseph',7009,'15688669797','15677989999','Graduate Engineer',5000),(7020,'Isadora','Farley',7010,'14562784898','15675388733','Team Lead',5000),(7021,'Xerxes','Guerrero',7011,'15648883883','15637837484','Graduate Engineer',5000),(7022,'Georgia','Cochran',7012,'17847849839','14536472884','Graduate Engineer',5000),(7023,'Maris','Harrell',7013,'14628394888','16474858598','Manager',5000),(7024,'Wendy','Mathews',7014,'17387567837','18947595789','Graduate Engineer',5000),(7025,'Emerald','Alvarado',7005,'17484783729','14574908378','Graduate Engineer',5000),(7026,'Kirk','Noble',7006,'17497986999','17896932594','Team Lead',5000),(7027,'Bryar','Wong',7007,'16324324979','16345385634','Graduate Engineer',5000),(7028,'Colorado','Ramsey',7008,'13246834567','16834569987','Graduate Engineer',5000),(7029,'Hasad','Phillips',7009,'12394634956','16435943999','Graduate Engineer',5000),(7030,'Pratik','Kontamwar',7010,'12345834699','','Team Lead',5000),(7031,'Sagar','Kulkarni',7011,'17697345294','','Team Lead',5000),(7032,'Abhishek','Malik',7012,'17893579345','15734563484','Team Lead',5000),(7033,'Asheesh','Tripathi',7013,'16768908009','','Team Lead',5000);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeSkill`
--

DROP TABLE IF EXISTS `EmployeeSkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeSkill` (
  `emp_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`skill_id`),
  KEY `fk_emp_id_EmployeeSkill` (`emp_id`),
  KEY `fk_skill_id_EmployeeSkill` (`skill_id`),
  CONSTRAINT `fk_emp_id_EmployeeSkill` FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_skill_id_EmployeeSkill` FOREIGN KEY (`skill_id`) REFERENCES `Skill` (`skill_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeSkill`
--

LOCK TABLES `EmployeeSkill` WRITE;
/*!40000 ALTER TABLE `EmployeeSkill` DISABLE KEYS */;
INSERT INTO `EmployeeSkill` VALUES (7000,4000),(7000,4002),(7000,4007),(7001,4001),(7001,4002),(7001,4003),(7002,4004),(7002,4005),(7002,4006),(7003,4002),(7003,4003),(7003,4004),(7003,4005),(7003,4007),(7003,4008),(7004,4001),(7004,4004),(7004,4008),(7006,4001),(7006,4004),(7006,4007),(7006,4008),(7008,4006),(7009,4003),(7009,4005),(7009,4008),(7010,4001),(7010,4006),(7011,4004),(7011,4005),(7012,4000),(7012,4005),(7013,4003),(7013,4007),(7013,4009),(7014,4000),(7014,4002),(7014,4003),(7014,4009),(7015,4000),(7015,4002),(7015,4003),(7015,4007),(7015,4008),(7015,4009),(7016,4003),(7016,4004),(7016,4005),(7016,4006),(7017,4000),(7017,4005),(7017,4007),(7018,4000),(7018,4002),(7018,4004),(7018,4005),(7018,4009),(7019,4001),(7019,4003),(7019,4007),(7019,4009),(7021,4000),(7022,4002),(7022,4004),(7023,4004),(7023,4007),(7024,4003),(7024,4008),(7025,4002),(7025,4004),(7025,4005),(7025,4007),(7025,4008),(7026,4001),(7026,4007),(7027,4005),(7028,4003),(7028,4007),(7028,4009),(7029,4001);
/*!40000 ALTER TABLE `EmployeeSkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `FSDC_Opened_By_Tickets`
--

DROP TABLE IF EXISTS `FSDC_Opened_By_Tickets`;
/*!50001 DROP VIEW IF EXISTS `FSDC_Opened_By_Tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `FSDC_Opened_By_Tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `FSDC_tickets`
--

DROP TABLE IF EXISTS `FSDC_tickets`;
/*!50001 DROP VIEW IF EXISTS `FSDC_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `FSDC_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OGIT_Opened_By_Tickets`
--

DROP TABLE IF EXISTS `OGIT_Opened_By_Tickets`;
/*!50001 DROP VIEW IF EXISTS `OGIT_Opened_By_Tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `OGIT_Opened_By_Tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OGIT_tickets`
--

DROP TABLE IF EXISTS `OGIT_tickets`;
/*!50001 DROP VIEW IF EXISTS `OGIT_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `OGIT_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `SCIT_Opened_By_Tickets`
--

DROP TABLE IF EXISTS `SCIT_Opened_By_Tickets`;
/*!50001 DROP VIEW IF EXISTS `SCIT_Opened_By_Tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `SCIT_Opened_By_Tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `SCIT_tickets`
--

DROP TABLE IF EXISTS `SCIT_tickets`;
/*!50001 DROP VIEW IF EXISTS `SCIT_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `SCIT_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SLAinfo`
--

DROP TABLE IF EXISTS `SLAinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SLAinfo` (
  `severity` enum('Business Critical','High','Medium','Low') NOT NULL,
  `ticket_type` enum('Change Request','Work Request','Incident','Problem') NOT NULL,
  `permisible_age` int(11) NOT NULL,
  `ticket_base_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`severity`,`ticket_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SLAinfo`
--

LOCK TABLES `SLAinfo` WRITE;
/*!40000 ALTER TABLE `SLAinfo` DISABLE KEYS */;
INSERT INTO `SLAinfo` VALUES ('Business Critical','Incident',1,100),('High','Change Request',3,75),('High','Work Request',2,75),('High','Incident',2,85),('High','Problem',2,85),('Medium','Change Request',4,65),('Medium','Work Request',4,65),('Medium','Incident',4,75),('Medium','Problem',4,75),('Low','Change Request',5,55),('Low','Work Request',5,55),('Low','Incident',5,65),('Low','Problem',5,65);
/*!40000 ALTER TABLE `SLAinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skill`
--

DROP TABLE IF EXISTS `Skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4010 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skill`
--

LOCK TABLES `Skill` WRITE;
/*!40000 ALTER TABLE `Skill` DISABLE KEYS */;
INSERT INTO `Skill` VALUES (4000,'Informatica'),(4001,'Java'),(4002,'Oracle'),(4003,'Java Script'),(4004,'Hadoop'),(4005,'Tableau'),(4006,'OBIEE'),(4007,'Spark'),(4008,'VB'),(4009,'Spring');
/*!40000 ALTER TABLE `Skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `TLIT_Opened_By_Tickets`
--

DROP TABLE IF EXISTS `TLIT_Opened_By_Tickets`;
/*!50001 DROP VIEW IF EXISTS `TLIT_Opened_By_Tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `TLIT_Opened_By_Tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `TLIT_tickets`
--

DROP TABLE IF EXISTS `TLIT_tickets`;
/*!50001 DROP VIEW IF EXISTS `TLIT_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `TLIT_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `end_user_email` varchar(50) NOT NULL,
  `severity` enum('Business Critical','High','Medium','Low') NOT NULL,
  `ticket_type` enum('Change Request','Work Request','Incident','Problem') NOT NULL,
  `opened_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `opened_by` int(11) NOT NULL,
  `status` enum('Resolved','Work In Progress','Open','Closed') DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `resolution` varchar(5000) DEFAULT NULL,
  `end_user_phone_number` varchar(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `last_modified_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `fk_assigned_to` (`assigned_to`),
  KEY `fk_Ticket_SLAinfo1_idx` (`severity`,`ticket_type`),
  KEY `fk_opened_by` (`opened_by`),
  KEY `opened_date_idx` (`opened_date`),
  KEY `closed_date_idx` (`closed_date`),
  KEY `status_idx` (`status`),
  CONSTRAINT `fk_Ticket_SLAinfo1` FOREIGN KEY (`severity`, `ticket_type`) REFERENCES `SLAinfo` (`severity`, `ticket_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_assigned_to0` FOREIGN KEY (`assigned_to`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_opened_by` FOREIGN KEY (`opened_by`) REFERENCES `Employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
INSERT INTO `Ticket` VALUES (1000,'elit@elit.co.uk','Low','Change Request','2010-09-04 12:00:01',NULL,7020,'Open','Upgrading to java 9 for INOSS portal','Change has been effected. Java 9 supported librabries have been incorporated with maven support','14354665465',7009,'2018-12-02 00:04:51'),(1001,'hendrerit.consectetuer.cursus@esttempor.edu','High','Incident','2018-10-18 07:00:00',NULL,7005,'Work In Progress','Data Mismatch between two reports in BOBJ','','17045490550',7022,'2018-12-01 03:54:49'),(1002,'Phasellus@necurnasuscipit.com','High','Change Request','2018-10-17 08:10:00',NULL,7002,'Work In Progress','Dev to Test Migration','','15758977978',7003,'2018-12-01 03:54:49'),(1003,'eu.ultrices@euligulaAenean.net','Business Critical','Change Request','2018-10-22 09:00:00','2018-10-24 15:00:00',7005,'Closed','call centre Agent can\'t Login','Changed the login server credentials and restarted the machine','16785785969',7008,'2018-12-02 00:10:25'),(1004,'at@scelerisque.co.uk','Medium','Change Request','2018-10-22 07:00:05',NULL,7007,'Open','Email being sent from wrong group mail id','','16785879699',7009,'2018-12-01 03:54:49'),(1005,'tristique@diam.com','Business Critical','Work Request','2018-12-22 06:00:04',NULL,7007,'Closed','Agent messaging system not working','Cleared Message Queue. Refresh Message Server, cleared cache',NULL,7006,'2018-12-01 12:14:44'),(1006,'at.fringilla.purus@vellectusCum.net','Low','Work Request','2010-07-14 15:00:00',NULL,7007,'Closed','Test to prod Migration','Files have been migrated from Test to Production',NULL,7032,'2018-12-01 12:14:44'),(1007,'amet.diam@sapien.co.uk','Medium','Work Request','2008-12-18 14:00:00',NULL,7002,'Closed','Changing the I-9 portal SSL encryption from SHA 256 to SHA 512','The Changed request has been completed. Implemented SHA256 SSL library in Java in I-9 portal code','16969608890',7031,'2018-12-01 12:14:44'),(1008,'Cras.dictum.ultricies@Sedmalesuada.ca','High','Work Request','2018-10-22 04:00:00',NULL,7005,'Open','Databse Replication is slow','','15747589587',7016,'2018-12-01 03:54:49'),(1009,'natoque.penatibus@sedturpis.org','Low','Change Request','2018-10-16 16:00:00',NULL,7002,'Work In Progress','Monitoring the scheduled jobs in BOBJ','','14667586896',7015,'2018-12-01 03:54:49'),(1010,'Etiam@Quisquenonummyipsum.net','High','Work Request','2010-05-17 09:00:00',NULL,7002,'Closed','Frequent Database bounce back','Changed the data connection techniques in the java implementation class','16875749879',7018,'2018-12-01 12:14:44'),(1011,'scelerisque.neque@Nullam.ca','High','Change Request','2018-10-15 10:00:00',NULL,7005,'Work In Progress','Granting access to certain Dashboard','',NULL,7003,'2018-12-01 03:54:49'),(1012,'ipsum@congueaaliquet.ca','High','Change Request','2010-03-17 11:00:00',NULL,7007,'Closed','Agent Can\'t Login after 5:00 PM','Changed business implementation class',NULL,7008,'2018-12-01 12:14:44'),(1013,'quis.pede@etnetuset.com','Low','Work Request','2018-10-22 12:00:00',NULL,7007,'Open','Granting access in OBIEE','','16776676879',7009,'2018-12-01 03:54:49'),(1014,'velit.egestas@nec.org','Low','Change Request','2018-10-21 13:00:00','0000-00-00 00:00:00',7005,'Resolved','False alerts for the server degradation','','14565876888',7008,'2018-12-01 03:54:49'),(1015,'vel@Maurisblandit.com','High','Change Request','2018-10-16 14:00:00',NULL,7002,'Closed','Creation of new BOBJ report','All new BOBJ Reports are created','15775667678',7006,'2018-12-01 12:14:44'),(1016,'nulla.vulputate@elitdictum.ca','Medium','Change Request','2018-10-21 15:00:00',NULL,7005,'Open','Disaster recovery of production server','',NULL,7003,'2018-12-01 03:54:49'),(1017,'mauris@vitaeeratVivamus.co.uk','High','Change Request','2018-10-14 16:00:00',NULL,7002,'Work In Progress','Altering the Request tab feature in pro-insurance health calculator','','16585687997',7018,'2018-12-01 03:54:49'),(1018,'ipsum.dolor.sit@blanditmattis.net','Low','Change Request','2018-10-21 17:00:00',NULL,7007,'Open','at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae','',NULL,7016,'2018-12-01 03:54:49'),(1019,'Etiam.imperdiet.dictum@erat.edu','High','Work Request','2018-10-13 15:00:00',NULL,7020,'Work In Progress','Random Number generation sequence not working',NULL,'16768976979',7017,'2018-12-01 03:54:49'),(1020,'natoque.penatibus@enimEtiam.org','Low','Incident','2008-10-09 14:00:00',NULL,7001,'Closed','Data not getting pulled into the BOBJ report','Changed the connection from universe to report','17985895879',7015,'2018-12-01 12:14:44'),(1021,'purus@dis.org','Medium','Change Request','2008-01-04 14:00:00',NULL,7001,'Closed','Altering the URL of iDelivr systems','Change has been effected. URL path has been altered in 1.59 server','19869865879',7014,'2018-12-01 12:14:44'),(1022,'dui@nisi.org','Low','Work Request','2018-09-01 12:00:00',NULL,7001,'Closed','Alerts not getting generated for server degradation','Changed the email gateway',NULL,7014,'2018-12-01 12:14:44'),(1023,'mauris.rhoncus.id@CurabiturdictumPhasellus.net','Business Critical','Work Request','2017-06-05 13:00:00',NULL,7001,'Closed','Perform Production migration testing','Production Migration testing has been completed','19797080809',7015,'2018-12-01 12:14:44'),(1024,'Nullam.feugiat.placerat@mollis.co.uk','Low','Work Request','2018-10-12 08:00:00',NULL,7020,'Work In Progress','Captcha not working','','19679878909',7030,'2018-12-01 03:54:49'),(1025,'nisi.Aenean@Proinnon.com','Low','Work Request','2018-10-11 09:10:00',NULL,7020,'Work In Progress','Frequent call drops','',NULL,7029,'2018-12-01 03:54:49'),(1026,'pede.ultrices@erosNam.ca','High','Change Request','2017-09-15 10:07:00',NULL,7020,'Closed','Adding one-click payment option to groceries.com','Change has been done. Added one click payment option with google pay API','18767858757',7030,'2018-12-01 12:14:44'),(1027,'Maecenas@orciUt.edu','High','Change Request','2018-10-22 07:00:00',NULL,7001,'Open','Not able gto view certain dashboards during first login','','15756876985',7031,'2018-12-01 03:54:49'),(1028,'facilisis.non@tinciduntpedeac.edu','High','Work Request','2018-10-10 08:00:00',NULL,7001,'Work In Progress','Add bar code scanner support in Media maintenance system','',NULL,7018,'2018-12-01 03:54:49'),(1029,'arcu.Morbi.sit@eratVivamusnisi.com','Medium','Work Request','2018-10-09 10:00:00',NULL,7020,'Work In Progress','Delete all the mentioned schedules from enterprise BOBJ as per the attached file in the ticket.','','18696787999',7016,'2018-12-01 03:54:49'),(1030,'elit@elit.co.uk','Low','Change Request','2010-09-04 12:00:01',NULL,7020,'Open','Upgrading to java 9 for INOSS portal','Change has been effected. Java 9 supported librabries  support','14354665465',7009,'2018-12-01 14:26:51');
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 trigger after_ticket_table_insert after INSERT on Ticket
for each row
begin
  insert into TicketActivityLog (ticket_id,activity,past_value,new_value,time_stamp) values
  (new.ticket_id,'Ticket Created',null,null,CURRENT_TIMESTAMP);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 trigger after_ticket_table_update before UPDATE on Ticket
for each row
begin

        if !(NEW.assigned_to <=> OLD.assigned_to) THEN
                insert into TicketActivityLog (ticket_id,activity,past_value,new_value,time_stamp) values
  (new.ticket_id,'Assignment Change',OLD.assigned_to ,NEW.assigned_to,CURRENT_TIMESTAMP);
        end if;
    
    if !(NEW.status <=> OLD.status) THEN
        insert into        TicketActivityLog (ticket_id,activity,past_value,new_value,time_stamp) values
  (new.ticket_id,'Status Change',OLD.status,NEW.status,CURRENT_TIMESTAMP);
        end if;
    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `TicketActivityLog`
--

DROP TABLE IF EXISTS `TicketActivityLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TicketActivityLog` (
  `ticket_id` int(11) NOT NULL,
  `activity` enum('Ticket Created','Assignment Change','Status Change') DEFAULT NULL,
  `past_value` char(10) DEFAULT NULL,
  `new_value` char(10) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`ticket_id`,`time_stamp`),
  CONSTRAINT `TicketActivityLog_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `Ticket` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TicketActivityLog`
--

LOCK TABLES `TicketActivityLog` WRITE;
/*!40000 ALTER TABLE `TicketActivityLog` DISABLE KEYS */;
INSERT INTO `TicketActivityLog` VALUES (1000,'Status Change','Resolved','Closed','2018-12-01 04:27:59'),(1000,'Status Change','Closed','Resolved','2018-12-01 12:22:16'),(1000,'Status Change','Resolved','Closed','2018-12-01 12:23:24'),(1000,'Status Change','Closed','Resolved','2018-12-01 12:38:56'),(1000,'Status Change','Resolved','Closed','2018-12-01 12:39:01'),(1000,'Status Change','Closed','Resolved','2018-12-01 12:45:58'),(1000,'Status Change','Resolved','Closed','2018-12-01 12:46:25'),(1000,'Status Change','Closed','Open','2018-12-01 13:04:35'),(1000,'Assignment Change','7033',NULL,'2018-12-01 13:06:47'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:08:29'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:10:39'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:13:08'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:13:38'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:21:33'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:21:45'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:23:45'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:24:07'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:25:20'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:25:49'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:31:39'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:32:02'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:43:10'),(1000,'Assignment Change','7029',NULL,'2018-12-01 13:47:25'),(1000,'Assignment Change',NULL,'7029','2018-12-01 13:48:28'),(1000,'Assignment Change','7029','7009','2018-12-01 13:48:56'),(1000,'Assignment Change','7009','7001','2018-12-01 14:23:51'),(1000,'Assignment Change','7001','7029','2018-12-01 14:26:08'),(1000,'Assignment Change','7029','7009','2018-12-01 14:26:51'),(1000,'Assignment Change','7009','7019','2018-12-02 00:04:28'),(1000,'Assignment Change','7019','7009','2018-12-02 00:04:51'),(1001,'Assignment Change','7021','7022','2018-12-01 16:23:05'),(1003,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1003,'Status Change','Closed','Resolved','2018-12-01 12:22:16'),(1003,'Status Change','Resolved','Closed','2018-12-02 00:10:25'),(1005,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1006,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1007,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1010,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1012,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1014,'Status Change','Open','Resolved','2018-12-02 00:05:20'),(1015,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1020,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1021,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1022,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1023,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1026,'Status Change','Resolved','Closed','2018-12-01 12:14:44'),(1030,'Ticket Created',NULL,NULL,'2018-12-01 22:20:10');
/*!40000 ALTER TABLE `TicketActivityLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `app_development_tickets`
--

DROP TABLE IF EXISTS `app_development_tickets`;
/*!50001 DROP VIEW IF EXISTS `app_development_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `app_development_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `bi_tools_tickets`
--

DROP TABLE IF EXISTS `bi_tools_tickets`;
/*!50001 DROP VIEW IF EXISTS `bi_tools_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bi_tools_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `big_data_infrastructure_tickets`
--

DROP TABLE IF EXISTS `big_data_infrastructure_tickets`;
/*!50001 DROP VIEW IF EXISTS `big_data_infrastructure_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `big_data_infrastructure_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `cloud_tickets`
--

DROP TABLE IF EXISTS `cloud_tickets`;
/*!50001 DROP VIEW IF EXISTS `cloud_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cloud_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_science_tickets`
--

DROP TABLE IF EXISTS `data_science_tickets`;
/*!50001 DROP VIEW IF EXISTS `data_science_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `data_science_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `infrastructure_tickets`
--

DROP TABLE IF EXISTS `infrastructure_tickets`;
/*!50001 DROP VIEW IF EXISTS `infrastructure_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `infrastructure_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `intelligent_apps_tickets`
--

DROP TABLE IF EXISTS `intelligent_apps_tickets`;
/*!50001 DROP VIEW IF EXISTS `intelligent_apps_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `intelligent_apps_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ios_app_development_tickets`
--

DROP TABLE IF EXISTS `ios_app_development_tickets`;
/*!50001 DROP VIEW IF EXISTS `ios_app_development_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ios_app_development_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_app_development_tickets`
--

DROP TABLE IF EXISTS `opened_by_app_development_tickets`;
/*!50001 DROP VIEW IF EXISTS `opened_by_app_development_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_app_development_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_bi_tools`
--

DROP TABLE IF EXISTS `opened_by_bi_tools`;
/*!50001 DROP VIEW IF EXISTS `opened_by_bi_tools`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_bi_tools` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_big_data_infrastructure`
--

DROP TABLE IF EXISTS `opened_by_big_data_infrastructure`;
/*!50001 DROP VIEW IF EXISTS `opened_by_big_data_infrastructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_big_data_infrastructure` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_cloud`
--

DROP TABLE IF EXISTS `opened_by_cloud`;
/*!50001 DROP VIEW IF EXISTS `opened_by_cloud`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_cloud` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_data_science`
--

DROP TABLE IF EXISTS `opened_by_data_science`;
/*!50001 DROP VIEW IF EXISTS `opened_by_data_science`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_data_science` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_infrastructure`
--

DROP TABLE IF EXISTS `opened_by_infrastructure`;
/*!50001 DROP VIEW IF EXISTS `opened_by_infrastructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_infrastructure` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_intelligent_apps`
--

DROP TABLE IF EXISTS `opened_by_intelligent_apps`;
/*!50001 DROP VIEW IF EXISTS `opened_by_intelligent_apps`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_intelligent_apps` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_ios_app_development`
--

DROP TABLE IF EXISTS `opened_by_ios_app_development`;
/*!50001 DROP VIEW IF EXISTS `opened_by_ios_app_development`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_ios_app_development` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_tel_infra`
--

DROP TABLE IF EXISTS `opened_by_tel_infra`;
/*!50001 DROP VIEW IF EXISTS `opened_by_tel_infra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_tel_infra` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `opened_by_visualiasation`
--

DROP TABLE IF EXISTS `opened_by_visualiasation`;
/*!50001 DROP VIEW IF EXISTS `opened_by_visualiasation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `opened_by_visualiasation` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `opened_by`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_FSDC`
--

DROP TABLE IF EXISTS `skill_set_FSDC`;
/*!50001 DROP VIEW IF EXISTS `skill_set_FSDC`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_FSDC` AS SELECT 
 1 AS `NO_OF_RESOURCES`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_OGIT`
--

DROP TABLE IF EXISTS `skill_set_OGIT`;
/*!50001 DROP VIEW IF EXISTS `skill_set_OGIT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_OGIT` AS SELECT 
 1 AS `NO_OF_RESOURCES`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_SCIT`
--

DROP TABLE IF EXISTS `skill_set_SCIT`;
/*!50001 DROP VIEW IF EXISTS `skill_set_SCIT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_SCIT` AS SELECT 
 1 AS `NO_OF_RESOURCES`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_TLIT`
--

DROP TABLE IF EXISTS `skill_set_TLIT`;
/*!50001 DROP VIEW IF EXISTS `skill_set_TLIT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_TLIT` AS SELECT 
 1 AS `NO_OF_RESOURCES`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_app_development`
--

DROP TABLE IF EXISTS `skill_set_dist_app_development`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_app_development`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_app_development` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_bi_tools`
--

DROP TABLE IF EXISTS `skill_set_dist_bi_tools`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_bi_tools`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_bi_tools` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_big_data_infrastructure`
--

DROP TABLE IF EXISTS `skill_set_dist_big_data_infrastructure`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_big_data_infrastructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_big_data_infrastructure` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_cloud`
--

DROP TABLE IF EXISTS `skill_set_dist_cloud`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_cloud`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_cloud` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_data_science`
--

DROP TABLE IF EXISTS `skill_set_dist_data_science`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_data_science`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_data_science` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_infrastructure`
--

DROP TABLE IF EXISTS `skill_set_dist_infrastructure`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_infrastructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_infrastructure` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_intelligent_apps`
--

DROP TABLE IF EXISTS `skill_set_dist_intelligent_apps`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_intelligent_apps`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_intelligent_apps` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_dist_visualization`
--

DROP TABLE IF EXISTS `skill_set_dist_visualization`;
/*!50001 DROP VIEW IF EXISTS `skill_set_dist_visualization`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_dist_visualization` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_ios_app_development`
--

DROP TABLE IF EXISTS `skill_set_ios_app_development`;
/*!50001 DROP VIEW IF EXISTS `skill_set_ios_app_development`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_ios_app_development` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `skill_set_telecom_infrastructure`
--

DROP TABLE IF EXISTS `skill_set_telecom_infrastructure`;
/*!50001 DROP VIEW IF EXISTS `skill_set_telecom_infrastructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `skill_set_telecom_infrastructure` AS SELECT 
 1 AS `No_of_Employees`,
 1 AS `skill_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `tel_infra_tickets`
--

DROP TABLE IF EXISTS `tel_infra_tickets`;
/*!50001 DROP VIEW IF EXISTS `tel_infra_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tel_infra_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `visualisation_tickets`
--

DROP TABLE IF EXISTS `visualisation_tickets`;
/*!50001 DROP VIEW IF EXISTS `visualisation_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `visualisation_tickets` AS SELECT 
 1 AS `ticket_id`,
 1 AS `opened_date`,
 1 AS `assigned_to`,
 1 AS `status`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'TicketingToolTest'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `auto_assignment_ticket_event` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'UTC' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`admin`@`%`*/ /*!50106 EVENT `auto_assignment_ticket_event` ON SCHEDULE EVERY 1 MINUTE STARTS '2018-12-01 14:21:51' ON COMPLETION NOT PRESERVE ENABLE DO call autoAssignmentTicket() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `auto_closure_ticket_event` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'UTC' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`admin`@`%`*/ /*!50106 EVENT `auto_closure_ticket_event` ON SCHEDULE EVERY 1 MINUTE STARTS '2018-12-01 12:46:25' ON COMPLETION NOT PRESERVE ENABLE DO call autoClosureTicket() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'TicketingToolTest'
--
/*!50003 DROP PROCEDURE IF EXISTS `autoAssignmentTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `autoAssignmentTicket`()
begin
  
  declare status_of_ticket_to_modify VARCHAR(10) DEFAULT 'UNKNOWN';
  declare ticket_to_modify INT;
  declare ticket_last_modified_time datetime;
  
  declare ticket_cursor cursor for select ticket_id from Ticket;
  open ticket_cursor;
  
  get_ticket:loop begin
  
  
  declare reports_to_proc INT;
  declare assigned_to_proc INT;
  fetch ticket_cursor into ticket_to_modify;
 
  select last_modified_date_time,status into ticket_last_modified_time,status_of_ticket_to_modify
  from Ticket where ticket_id = ticket_to_modify;
  set ticket_last_modified_time = date_add(ticket_last_modified_time,INTERVAL 48 hour);
  
  
  if (current_timestamp > ticket_last_modified_time) then
	if(status_of_ticket_to_modify = 'Open') then
		#update Ticket set status = 'Closed' , last_modified_date_time = current_timestamp,
        #closed_date = current_timestamp where ticket_id = ticket_to_modify;
        select assigned_to into @assigned_to_proc from Ticket where ticket_id = ticket_to_modify;
        select @assigned_to_proc;
        select reports_to into @reports_to_proc from Employee where emp_id = @assigned_to_proc;
        
        #select reports_to from Employee where emp_id = 7029;
        
        select @reports_to_proc;
        
        update Ticket set last_modified_date_time = current_timestamp , assigned_to = @reports_to_proc where ticket_id = ticket_to_modify;
        
	end if;
end if;
	end;
 end loop get_ticket;
 
 close ticket_cursor;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoClosureTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `autoClosureTicket`()
begin
  
  declare ticket_to_modify_status VARCHAR(10) DEFAULT 'UNKNOWN';
  declare ticket_to_modify INT;
  declare ticket_last_modified_time datetime;
  declare ticket_cursor cursor for select ticket_id from Ticket;
  open ticket_cursor;
  
  get_ticket:loop
  
  fetch ticket_cursor into ticket_to_modify;
 
  select last_modified_date_time,status into ticket_last_modified_time,ticket_to_modify_status from Ticket where ticket_id = ticket_to_modify;
  #select ticket_to_modify,ticket_last_modified_time,ticket_to_modify_status;
  #if (date_add(@ticket_last_modified_time,INTERVAL 48 hour) < current_timestamp) then
  
  set ticket_last_modified_time = date_add(ticket_last_modified_time,INTERVAL 48 hour);
  
  if (current_timestamp > ticket_last_modified_time) then
	if(ticket_to_modify_status = 'Resolved') then
		update Ticket set status = 'Closed' , last_modified_date_time = current_timestamp,closed_date = current_timestamp where ticket_id = ticket_to_modify;
	end if;
end if;
 end loop get_ticket;
 
 close ticket_cursor;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CEOseesBill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CEOseesBill`(in ceo_id int)
BEGIN
 
 declare business_base_rate int;
 declare tickets_rate int;
 call getBusinessBaseRate(7000,@baserate,@business_unit_id);
 

 select emp_id
from Employee 
where business_unit_id =business_id 
group by ticket_type, severity;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DepartmentPerformance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `DepartmentPerformance`(in manager_id int)
BEGIN
select emp_id ,count(*) 'No of Sla missed'                   
from Employee inner join Ticket on Employee.emp_id = Ticket.assigned_to
inner join SLAinfo on Ticket.ticket_type =SLAinfo.ticket_type
and Ticket.severity = SLAinfo.severity
inner join Department on Employee.emp_id =Department.manager_id
inner join AssignmentGroup on Department.department_id = AssignmentGroup.department_id
where Department.manager_id = manager_id and datediff(now(),opened_date) > permisible_age
group by emp_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `discountOnBills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `discountOnBills`(in bus_id int)
BEGIN
declare n int default 0;
declare d varchar(100) ;
select count(*) 'No of SLA missed'  into n                
from Employee inner join Ticket on Employee.emp_id = Ticket.assigned_to
inner join SLAinfo on Ticket.ticket_type =SLAinfo.ticket_type
and Ticket.severity = SLAinfo.severity
where opened_by in
(select emp_id from Employee
where business_unit_id= bus_id) and datediff(now(),opened_date) > permisible_age
;

if n=0 then set d='no discount';
elseif n<3 then set d='5% discount';
elseif n<6 then set d='10% discount';
else set d='25% discount';
end if;
select bus_id 'Business_Unit_Id', d as 'Discount Offered';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `get_bill`(in bus_id int)
BEGIN
declare brate int;
select business_base_rate into brate from BusinessUnit
where business_unit_id=bus_id;

select bus_id 'Business Unit Id', sum(total)+brate 'Bill' from(
select count(*)*ticket_base_rate as 'total'
from Ticket t inner join SLAinfo s on s.severity = t.severity and s.ticket_type = t.ticket_type
where opened_by in(select emp_id from Employee where business_unit_id = 5003)
group by t.severity,t.ticket_type)  derived;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GraduateEngineerPerformance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GraduateEngineerPerformance`(in manager_id int,in emp_id int)
BEGIN
select emp_id 'Employee Id', count(*) 'No Of SLA missed'
from Employee e inner join Ticket t on e.emp_id = t.assigned_to
inner join SLAinfo s on t.severity = s.severity
and t.ticket_type =s.ticket_type
where e.reports_to = manager_id and e.emp_id = emp_id
and datediff(now(),opened_date) > permisible_age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GroupPerformance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GroupPerformance`(in tech_lead_id int)
BEGIN
select emp_id 'Employee Id', concat_ws(' ',first_name,last_name) 'Full Name',count(*) 'No of SLA missed'                  
from Employee inner join Ticket on Employee.emp_id = Ticket.assigned_to
inner join SLAinfo on Ticket.ticket_type =SLAinfo.ticket_type
and Ticket.severity = SLAinfo.severity
where reports_to = tech_lead_id and datediff(now(),opened_date) > permisible_age
group by emp_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nocursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `nocursor`()
BEGIN
  Declare validId int;
  Declare validName varchar(45);

  -- drop the temporary table if exists
  Drop table if exists `routines_sample`.tmp_validation;
  -- create the temporary table, here you could use Engine=Memory
  Create table `routines_sample`.tmp_validation (`id` int not null, `name` varchar(45) not null, `valid` bit(1) not null) Engine=MyISAM;

  -- insert into the temporary table with a valid flag = 0 (false)    
  Insert into `routines_sample`.tmp_validation (`id`, `name`, `valid`)
  Select tu.id, tu.name, 0
  From `routines_sample`.tmp_user tu;

  -- while exists data to validate on temporary table do something    
  While exists(Select `id` From `tmp_validation` Where `valid` = 0) Do

    Select `id`, `name` Into @validId, @validName From tmp_validation Where `valid` = 0 Limit 1;

    -- do your validation
    Select @validId, @validName;

    -- don't forget to update your validation table, otherwise you get an endless loop    
    Update `tmp_validation` 
    Set `valid` = 1
    Where `id` = @validId;

  END WHILE;

  -- insert only valid rows to your destination table    
  Insert into `routines_sample`.`user` (`name`)
  Select `name` From `tmp_validation`
  Where `valid` = 1;

  -- drop the temporary table    
  DROP TABLE tmp_validation;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `percentageIncreaseInSalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `percentageIncreaseInSalary`(in empid int)
BEGIN

declare n int default 0;
declare p varchar(20);
select count(*) into n
from Ticket where status ='Resolved' and assigned_to = empid and datediff(closed_date,opened_date) <30;
 case n
 when 0 then set p='no increase';
 when 1 then set p='5% increase';
 when 2 then set p='10% increase';
 when 3 then set p='15% increase';
 else set p = '30% increase';
end case;
select p as 'Percentage increase in salary';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResolvedTicketRaisedByOwn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ResolvedTicketRaisedByOwn`(in employee_id int )
BEGIN
select * from Ticket
where assigned_to=employee_id and status='Resolved';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `teamLeadPerformance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `teamLeadPerformance`(in managerid int, in teamleadid int)
BEGIN

select sum(No_of_SLA_missed) 'SLA missed'
from
(select emp_id 'Employee Id', concat_ws(' ',first_name,last_name) 'Full Name',count(*) No_of_SLA_missed                  
from Employee inner join Ticket on Employee.emp_id = Ticket.assigned_to
inner join SLAinfo on Ticket.ticket_type =SLAinfo.ticket_type
and Ticket.severity = SLAinfo.severity
where reports_to = teamleadid and datediff(now(),opened_date) > permisible_age
group by emp_id) derived;


#call GroupPerformance(teamleadid);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TicketRaisedByOwn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `TicketRaisedByOwn`(in employee_id int)
BEGIN
select * from Ticket
where opened_by = employee_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewOwnTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ViewOwnTicket`(in employee_id int)
BEGIN
select * from Ticket
where assigned_to = employee_id and status<>'closed';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `FSDC_Opened_By_Tickets`
--

/*!50001 DROP VIEW IF EXISTS `FSDC_Opened_By_Tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `FSDC_Opened_By_Tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `FSDC_tickets`
--

/*!50001 DROP VIEW IF EXISTS `FSDC_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `FSDC_tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OGIT_Opened_By_Tickets`
--

/*!50001 DROP VIEW IF EXISTS `OGIT_Opened_By_Tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OGIT_Opened_By_Tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OGIT_tickets`
--

/*!50001 DROP VIEW IF EXISTS `OGIT_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OGIT_tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SCIT_Opened_By_Tickets`
--

/*!50001 DROP VIEW IF EXISTS `SCIT_Opened_By_Tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `SCIT_Opened_By_Tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SCIT_tickets`
--

/*!50001 DROP VIEW IF EXISTS `SCIT_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `SCIT_tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TLIT_Opened_By_Tickets`
--

/*!50001 DROP VIEW IF EXISTS `TLIT_Opened_By_Tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `TLIT_Opened_By_Tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`opened_by`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TLIT_tickets`
--

/*!50001 DROP VIEW IF EXISTS `TLIT_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `TLIT_tickets` AS select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `Department`) where ((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`emp_id` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Department` join `Ticket`) join `Employee`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')) union select `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Employee` join `AssignmentGroup`) join `Ticket`) where ((`Employee`.`emp_id` = `Ticket`.`assigned_to`) and `Employee`.`reports_to` in (select `Employee`.`emp_id` from (`Department` join `Employee`) where ((`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `app_development_tickets`
--

/*!50001 DROP VIEW IF EXISTS `app_development_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `app_development_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Application Development')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bi_tools_tickets`
--

/*!50001 DROP VIEW IF EXISTS `bi_tools_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bi_tools_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'BI tools')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `big_data_infrastructure_tickets`
--

/*!50001 DROP VIEW IF EXISTS `big_data_infrastructure_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `big_data_infrastructure_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Big Data Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cloud_tickets`
--

/*!50001 DROP VIEW IF EXISTS `cloud_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cloud_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Cloud')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_science_tickets`
--

/*!50001 DROP VIEW IF EXISTS `data_science_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `data_science_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Data Science')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `infrastructure_tickets`
--

/*!50001 DROP VIEW IF EXISTS `infrastructure_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `infrastructure_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `intelligent_apps_tickets`
--

/*!50001 DROP VIEW IF EXISTS `intelligent_apps_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `intelligent_apps_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Intelligent Apps')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ios_app_development_tickets`
--

/*!50001 DROP VIEW IF EXISTS `ios_app_development_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ios_app_development_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'IOS App development')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_app_development_tickets`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_app_development_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_app_development_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Application Development')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_bi_tools`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_bi_tools`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_bi_tools` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'BI tools')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_big_data_infrastructure`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_big_data_infrastructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_big_data_infrastructure` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Big Data Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_cloud`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_cloud`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_cloud` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Cloud')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_data_science`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_data_science`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_data_science` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Data Science')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_infrastructure`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_infrastructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_infrastructure` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_intelligent_apps`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_intelligent_apps`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_intelligent_apps` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Intelligent Apps')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_ios_app_development`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_ios_app_development`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_ios_app_development` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'IOS App development')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_tel_infra`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_tel_infra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_tel_infra` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Telecom Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opened_by_visualiasation`
--

/*!50001 DROP VIEW IF EXISTS `opened_by_visualiasation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `opened_by_visualiasation` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`opened_by` AS `opened_by`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`opened_by` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`opened_by` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Visualiazation')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_FSDC`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_FSDC`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_FSDC` AS select count(`Employee`.`emp_id`) AS `NO_OF_RESOURCES`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Department`) join `Skill`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`emp_id` = `Department`.`manager_id`) or (`Employee`.`reports_to` = `Department`.`manager_id`) or `Employee`.`reports_to` in (select `Employee`.`emp_id` from ((`Employee` join `AssignmentGroup`) join `Department`) where ((`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'FSDC')))) and (`Department`.`department_code` = 'FSDC')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_OGIT`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_OGIT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_OGIT` AS select count(`Employee`.`emp_id`) AS `NO_OF_RESOURCES`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Department`) join `Skill`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`emp_id` = `Department`.`manager_id`) or (`Employee`.`reports_to` = `Department`.`manager_id`) or `Employee`.`reports_to` in (select `Employee`.`emp_id` from ((`Employee` join `AssignmentGroup`) join `Department`) where ((`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'OGIT')))) and (`Department`.`department_code` = 'OGIT')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_SCIT`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_SCIT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_SCIT` AS select count(`Employee`.`emp_id`) AS `NO_OF_RESOURCES`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Department`) join `Skill`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`emp_id` = `Department`.`manager_id`) or (`Employee`.`reports_to` = `Department`.`manager_id`) or `Employee`.`reports_to` in (select `Employee`.`emp_id` from ((`Employee` join `AssignmentGroup`) join `Department`) where ((`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'SCIT')))) and (`Department`.`department_code` = 'SCIT')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_TLIT`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_TLIT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_TLIT` AS select count(`Employee`.`emp_id`) AS `NO_OF_RESOURCES`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Department`) join `Skill`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`emp_id` = `Department`.`manager_id`) or (`Employee`.`reports_to` = `Department`.`manager_id`) or `Employee`.`reports_to` in (select `Employee`.`emp_id` from ((`Employee` join `AssignmentGroup`) join `Department`) where ((`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`) and (`Employee`.`reports_to` = `Department`.`manager_id`) and (`Department`.`department_code` = 'TLIT')))) and (`Department`.`department_code` = 'TLIT')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_app_development`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_app_development`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_app_development` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Application Development')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_bi_tools`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_bi_tools`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_bi_tools` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'BI tools')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_big_data_infrastructure`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_big_data_infrastructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_big_data_infrastructure` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Big Data Infrastructure')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_cloud`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_cloud`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_cloud` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Cloud')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_data_science`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_data_science`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_data_science` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Data Science')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_infrastructure`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_infrastructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_infrastructure` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Infrastructure')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_intelligent_apps`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_intelligent_apps`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_intelligent_apps` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Intelligent Apps')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_dist_visualization`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_dist_visualization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_dist_visualization` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Visualization')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_ios_app_development`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_ios_app_development`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_ios_app_development` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'IOS App development')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_set_telecom_infrastructure`
--

/*!50001 DROP VIEW IF EXISTS `skill_set_telecom_infrastructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_set_telecom_infrastructure` AS select count(`Employee`.`emp_id`) AS `No_of_Employees`,`Skill`.`skill_name` AS `skill_name` from (((`Employee` join `EmployeeSkill`) join `Skill`) join `AssignmentGroup`) where ((`Employee`.`emp_id` = `EmployeeSkill`.`emp_id`) and (`EmployeeSkill`.`skill_id` = `Skill`.`skill_id`) and ((`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`) or (`Employee`.`emp_id` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Telecom Infrastructure')) group by `Skill`.`skill_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tel_infra_tickets`
--

/*!50001 DROP VIEW IF EXISTS `tel_infra_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tel_infra_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Telecom Infrastructure')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visualisation_tickets`
--

/*!50001 DROP VIEW IF EXISTS `visualisation_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `visualisation_tickets` AS select distinct `Ticket`.`ticket_id` AS `ticket_id`,`Ticket`.`opened_date` AS `opened_date`,`Ticket`.`assigned_to` AS `assigned_to`,`Ticket`.`status` AS `status`,`Ticket`.`description` AS `description` from ((`Ticket` join `Employee`) join `AssignmentGroup`) where ((((`Ticket`.`assigned_to` = `Employee`.`emp_id`) and (`Employee`.`reports_to` = `AssignmentGroup`.`team_lead_id`)) or (`Ticket`.`assigned_to` = `AssignmentGroup`.`team_lead_id`)) and (`AssignmentGroup`.`group_name` = 'Visualization')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-01 20:31:36

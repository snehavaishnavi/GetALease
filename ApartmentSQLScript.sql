-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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

--
-- Table structure for table `available_apartment`
--

DROP TABLE IF EXISTS `available_apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_apartment` (
  `unit` varchar(6) NOT NULL,
  `rent` int(4) DEFAULT NULL,
  `area` int(4) DEFAULT NULL,
  `bhk` int(1) DEFAULT NULL,
  PRIMARY KEY (`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_apartment`
--

LOCK TABLES `available_apartment` WRITE;
/*!40000 ALTER TABLE `available_apartment` DISABLE KEYS */;
INSERT INTO `available_apartment` VALUES ('9545A',1234,1200,2),('9545B',1234,1200,2),('9545C',1234,1200,2),('9545D',1500,1400,3),('9545E',1500,1400,3),('9545F',1500,1400,3);
/*!40000 ALTER TABLE `available_apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `complaint_number` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(6) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `severity` int(1) DEFAULT NULL,
  `description` varchar(60) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `resolved` int(1) DEFAULT NULL,
  `resolved_by` varchar(30) DEFAULT NULL,
  `resolved_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`complaint_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (1,'9855B','Plumbing',2,'eqw',1494336628619,0,NULL,0);
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupied_apartment`
--

DROP TABLE IF EXISTS `occupied_apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupied_apartment` (
  `unit` varchar(6) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `lease_start` date DEFAULT NULL,
  `lease_end` date DEFAULT NULL,
  `bill` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupied_apartment`
--

LOCK TABLES `occupied_apartment` WRITE;
/*!40000 ALTER TABLE `occupied_apartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `occupied_apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp` (
  `otp` int(6) NOT NULL,
  `unit` varchar(6) DEFAULT NULL,
  `lease_start_date` date DEFAULT NULL,
  `Lease_end_date` date DEFAULT NULL,
  PRIMARY KEY (`otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (121212,'9545E','2017-03-25','2018-03-25');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renew_lease`
--

DROP TABLE IF EXISTS `renew_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renew_lease` (
  `email` varchar(40) NOT NULL,
  `unit` varchar(6) DEFAULT NULL,
  `extension_period` int(3) DEFAULT NULL,
  `approval_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renew_lease`
--

LOCK TABLES `renew_lease` WRITE;
/*!40000 ALTER TABLE `renew_lease` DISABLE KEYS */;
INSERT INTO `renew_lease` VALUES ('harsh@uncc.edu','9855B',3,1);
/*!40000 ALTER TABLE `renew_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `unit` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `f1` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('geeta','priyanka','geeta@uncc.edu','123456',2,'9855C'),('Harsh','Hundiwala','harsh@uncc.edu','123456',2,'9855B'),('manager','hundiwala','manager@uncc.edu','123456',0,'NA'),('sneha','gandham','sneha@uncc.edu','123456',2,'9855A'),('sarangdeep','singh','ssingh53@uncc.edu','123456',2,'9855A'),('staff','hundiwala','staff@uncc.edu','123456',1,'NA');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-09 21:21:54

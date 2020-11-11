CREATE DATABASE  IF NOT EXISTS `childtracker` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `childtracker`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: childtracker
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `device` (
  `device_serial_number` varchar(20) NOT NULL,
  `manufacture_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`device_serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('0000-0000-0000-0000','1970-01-01 00:00:00'),('0000-0000-0000-0001','2020-05-05 14:00:00'),('0000-0000-0000-0002','1970-01-01 00:00:00'),('0000-0000-0000-0003','1970-01-01 00:00:00'),('0000-0000-0000-0004','1970-01-01 00:00:00'),('0000-0000-0000-0005','1970-01-01 00:00:00'),('0000-0000-0000-0006','1970-01-01 00:00:00'),('0000-0000-0000-0007','1970-01-01 00:00:00'),('0000-0000-0000-0008','1970-01-01 00:00:00'),('0000-0000-0000-0009','1970-01-01 00:00:00'),('0000-0000-0000-0010','1970-01-01 00:00:00'),('0000-0000-0000-0011','1970-01-01 00:00:00'),('0000-0000-0000-0012','1970-01-01 00:00:00'),('0000-0000-0000-0013','1970-01-01 00:00:00'),('0000-0000-0000-0014','1970-01-01 00:00:00'),('0000-0000-0000-0015','1970-01-01 00:00:00'),('0000-0000-0000-0016','1970-01-01 00:00:00'),('0000-0000-0000-0017','1970-01-01 00:00:00'),('0000-0000-0000-0018','1970-01-01 00:00:00'),('0000-0000-0000-0019','1970-01-01 00:00:00'),('0000-0000-0000-0020','1970-01-01 00:00:00'),('0000-0000-0000-0021','1970-01-01 00:00:00'),('0000-0000-0000-0022','1970-01-01 00:00:00'),('0000-0000-0000-0023','1970-01-01 00:00:00'),('0000-0000-0000-0024','1970-01-01 00:00:00'),('0000-0000-0000-0025','1970-01-01 00:00:00'),('0000-0000-0000-0026','1970-01-01 00:00:00'),('0000-0000-0000-0027','1970-01-01 00:00:00'),('0000-0000-0000-0028','1970-01-01 00:00:00'),('0000-0000-0000-0029','1970-01-01 00:00:00'),('0000-0000-0000-0030','1970-01-01 00:00:00'),('0000-0000-0000-0031','1970-01-01 00:00:00'),('0000-0000-0000-0032','1970-01-01 00:00:00'),('0000-0000-0000-0033','1970-01-01 00:00:00'),('0000-0000-0000-0034','1970-01-01 00:00:00'),('0000-0000-0000-0035','1970-01-01 00:00:00'),('0000-0000-0000-0036','1970-01-01 00:00:00'),('0000-0000-0000-0037','1970-01-01 00:00:00'),('0000-0000-0000-0038','1970-01-01 00:00:00'),('0000-0000-0000-0039','1970-01-01 00:00:00'),('0000-0000-0000-0040','1970-01-01 00:00:00'),('0000-0000-0000-0041','1970-01-01 00:00:00'),('0000-0000-0000-0042','1970-01-01 00:00:00'),('0000-0000-0000-0043','1970-01-01 00:00:00'),('0000-0000-0000-0044','1970-01-01 00:00:00'),('0000-0000-0000-0045','1970-01-01 00:00:00'),('0000-0000-0000-0046','1970-01-01 00:00:00'),('0000-0000-0000-0047','1970-01-01 00:00:00'),('0000-0000-0000-0048','1970-01-01 00:00:00'),('0000-0000-0000-0049','1970-01-01 00:00:00'),('0000-0000-0000-0050','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration` (
  `device_serial_number` varchar(20) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` varchar(10) NOT NULL,
  `device_name` varchar(10) NOT NULL,
  PRIMARY KEY (`device_serial_number`,`id`),
  KEY `device_serial_number_idx` (`device_serial_number`),
  KEY `3_idx` (`id`),
  CONSTRAINT `registration_fk1` FOREIGN KEY (`device_serial_number`) REFERENCES `device` (`device_serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('0000-0000-0000-0001','2020-10-23 04:08:28','admin','어린이 1'),('0000-0000-0000-0020','2020-10-23 04:08:28','admin','어린이 2'),('0000-0000-0000-0022','2020-10-23 04:08:28','admin','민수'),('0000-0000-0000-0024','2020-10-23 04:08:28','a','에어팟');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traces`
--

DROP TABLE IF EXISTS `traces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `traces` (
  `device_serial_number` varchar(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `record_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`device_serial_number`,`record_time`),
  CONSTRAINT `traces_fk` FOREIGN KEY (`device_serial_number`) REFERENCES `device` (`device_serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traces`
--

LOCK TABLES `traces` WRITE;
/*!40000 ALTER TABLE `traces` DISABLE KEYS */;
INSERT INTO `traces` VALUES ('0000-0000-0000-0001',37.53399,127.07925,'2020-06-01 03:34:00'),('0000-0000-0000-0001',37.66,127.1,'2020-06-11 01:24:00'),('0000-0000-0000-0001',37.55,127.13,'2020-06-11 01:25:00'),('0000-0000-0000-0001',37.48,127.12,'2020-06-11 01:26:00'),('0000-0000-0000-0001',37.532092,127.072219,'2020-06-12 01:21:00'),('0000-0000-0000-0001',37.54,127.08,'2020-06-12 01:22:00'),('0000-0000-0000-0001',37.55,127.09,'2020-06-12 01:23:00'),('0000-0000-0000-0001',37.533,127.073,'2020-06-13 01:20:00'),('0000-0000-0000-0001',37.534,127.073,'2020-06-13 01:21:00'),('0000-0000-0000-0001',37.53486,127.07321,'2020-06-13 01:22:00'),('0000-0000-0000-0001',37.536,127.075,'2020-06-13 01:23:00'),('0000-0000-0000-0001',37.55,127.07,'2020-06-14 14:35:00'),('0000-0000-0000-0001',37.53021,127.0802,'2020-06-17 01:26:00'),('0000-0000-0000-0001',37.53031,127.0804,'2020-06-17 01:27:00'),('0000-0000-0000-0001',37.53041,127.0806,'2020-06-17 01:28:00'),('0000-0000-0000-0001',37.53051,127.0805,'2020-06-17 01:29:00'),('0000-0000-0000-0001',37.5324672,127.074304,'2020-10-17 22:12:53'),('0000-0000-0000-0008',37.5324672,127.074304,'2020-10-17 22:07:57'),('0000-0000-0000-0008',37.5324672,127.074304,'2020-10-17 22:12:59'),('0000-0000-0000-0010',37.555,127.075,'2020-06-13 19:20:00'),('0000-0000-0000-0010',37.557,127.0754,'2020-06-13 19:26:00'),('0000-0000-0000-0010',37.54,127.06,'2020-06-17 01:26:00'),('0000-0000-0000-0010',37.53569,127.0602,'2020-06-17 02:30:00'),('0000-0000-0000-0010',37.53739,127.0604,'2020-06-17 03:30:00'),('0000-0000-0000-0021',37.5344125,127.0721573,'2020-10-15 16:00:00'),('0000-0000-0000-0021',37.53465133,127.071235,'2020-10-15 16:02:00'),('0000-0000-0000-0021',37.53507167,127.0700433,'2020-10-15 16:03:00'),('0000-0000-0000-0021',37.53502383,127.0696915,'2020-10-15 16:04:00'),('0000-0000-0000-0021',37.53581783,127.0687982,'2020-10-15 16:05:00'),('0000-0000-0000-0021',37.53656133,127.0691817,'2020-10-15 16:06:00'),('0000-0000-0000-0021',37.53730917,127.0693177,'2020-10-15 16:07:00'),('0000-0000-0000-0021',37.53782867,127.0697948,'2020-10-15 16:08:00'),('0000-0000-0000-0021',37.53880783,127.0701318,'2020-10-15 16:09:00'),('0000-0000-0000-0021',37.5392845,127.0703185,'2020-10-15 16:10:00'),('0000-0000-0000-0021',37.53944883,127.0708173,'2020-10-15 16:11:00'),('0000-0000-0000-0022',37.53901383,127.0737185,'2020-10-15 16:16:00'),('0000-0000-0000-0022',37.53846133,127.074433,'2020-10-15 16:17:00'),('0000-0000-0000-0022',37.53816067,127.0755155,'2020-10-15 16:18:00'),('0000-0000-0000-0022',37.53815767,127.0763535,'2020-10-15 16:19:00'),('0000-0000-0000-0022',37.53805083,127.0770783,'2020-10-15 16:20:00'),('0000-0000-0000-0022',37.53802867,127.0771142,'2020-10-15 16:21:00'),('0000-0000-0000-0022',37.53796033,127.0779332,'2020-10-15 16:22:00'),('0000-0000-0000-0023',37.533928,127.07961,'2020-10-15 21:16:29'),('0000-0000-0000-0023',37.533909,127.07966,'2020-10-15 21:16:36'),('0000-0000-0000-0023',37.53392,127.07954,'2020-10-15 21:17:37'),('0000-0000-0000-0023',37.533897,127.07951,'2020-10-15 21:18:38'),('0000-0000-0000-0023',37.533947,127.07944,'2020-10-15 21:19:39'),('0000-0000-0000-0023',37.533962,127.07944,'2020-10-15 21:21:22'),('0000-0000-0000-0023',37.533981,127.07951,'2020-10-15 21:22:14'),('0000-0000-0000-0023',37.533958,127.07957,'2020-10-15 21:23:15'),('0000-0000-0000-0023',37.533985,127.07954,'2020-10-15 21:24:16'),('0000-0000-0000-0024',37.540222,127.07031,'2020-10-18 23:46:12'),('0000-0000-0000-0024',37.540351,127.07083,'2020-10-18 23:47:13'),('0000-0000-0000-0024',37.540627,127.07081,'2020-10-18 23:48:14'),('0000-0000-0000-0024',37.540921,127.07085,'2020-10-18 23:49:16'),('0000-0000-0000-0024',37.540886,127.06906,'2020-10-19 00:00:45'),('0000-0000-0000-0024',37.54034,127.07002,'2020-10-19 00:01:46'),('0000-0000-0000-0024',37.540386,127.07087,'2020-10-19 00:02:47'),('0000-0000-0000-0024',37.540627,127.07182,'2020-10-19 00:04:15'),('0000-0000-0000-0024',37.541721,127.07113,'2020-10-19 00:05:17'),('0000-0000-0000-0024',37.542194,127.07163,'2020-10-19 00:06:18'),('0000-0000-0000-0024',37.541981,127.07173,'2020-10-19 00:07:19'),('0000-0000-0000-0024',37.541927,127.07182,'2020-10-19 00:08:20'),('0000-0000-0000-0024',37.542362,127.07126,'2020-10-19 00:09:21'),('0000-0000-0000-0024',37.542194,127.07145,'2020-10-19 00:10:22'),('0000-0000-0000-0024',37.542076,127.07153,'2020-10-19 00:11:24'),('0000-0000-0000-0024',37.542175,127.0714,'2020-10-19 00:12:25'),('0000-0000-0000-0024',37.542099,127.07152,'2020-10-19 00:13:26'),('0000-0000-0000-0024',37.542057,127.0716,'2020-10-19 00:14:27'),('0000-0000-0000-0024',37.543648,127.0703,'2020-10-19 00:15:28'),('0000-0000-0000-0024',37.541538,127.07113,'2020-10-19 00:16:29'),('0000-0000-0000-0024',37.540939,127.07046,'2020-10-19 00:17:30'),('0000-0000-0000-0024',37.539448,127.07376,'2020-10-19 00:18:35'),('0000-0000-0000-0024',37.537174,127.07889,'2020-10-19 00:21:02'),('0000-0000-0000-0024',37.536022,127.0793,'2020-10-19 00:22:04'),('0000-0000-0000-0024',37.535461,127.07902,'2020-10-19 00:23:05'),('0000-0000-0000-0024',37.534763,127.0791,'2020-10-19 00:24:06'),('0000-0000-0000-0024',37.533276,127.07903,'2020-10-19 00:25:07'),('0000-0000-0000-0024',37.534096,127.07759,'2020-10-19 00:26:08'),('0000-0000-0000-0024',37.533264,127.07735,'2020-10-19 00:27:09'),('0000-0000-0000-0024',37.533314,127.07767,'2020-10-19 00:28:10'),('0000-0000-0000-0024',37.533691,127.07821,'2020-10-19 00:29:12'),('0000-0000-0000-0024',37.534309,127.07877,'2020-10-19 00:30:13'),('0000-0000-0000-0024',37.534321,127.07985,'2020-10-19 00:31:50');
/*!40000 ALTER TABLE `traces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_number` int(6) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`user_number`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','1234','01041876852','관리자'),(2,'a','aa','01025253626','신소연'),(3,'b','bb','01018438598','한서희'),(4,'c','cc','01049484848','홍길동'),(78,'','','','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'childtracker'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-12  8:42:49
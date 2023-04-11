-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: deep_db
-- ------------------------------------------------------
-- Server version	5.7.8-rc-log

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `fbID` int(11) NOT NULL AUTO_INCREMENT,
  `rating` varchar(45) NOT NULL,
  `feedback_fk_id` int(11) NOT NULL,
  PRIMARY KEY (`fbID`),
  KEY `regID_idx` (`feedback_fk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Good',5),(39,'Excellent',1),(40,'Good',4),(41,'Average',7),(42,'Average',1),(43,'Poor',8),(44,'Good',10),(45,'Poor',5),(46,'Good',3),(47,'Excellent',3),(48,'Average',8),(49,'Excellent',9),(50,'Poor',10),(51,'Excellent',1),(52,'Average',7),(53,'Poor',7),(54,'Poor',1),(55,'Average',1),(56,'Excellent',4),(57,'Average',1),(58,'Good',5),(59,'Poor',6),(60,'Poor',6),(61,'Good',9),(62,'Excellent',10),(63,'Average',2),(64,'Good',2),(65,'Average',3),(66,'Good',5),(67,'Good',1),(68,'Poor',6),(69,'Average',1),(70,'Average',1),(71,'Excellent',5),(72,'Good',5),(73,'Average',3),(74,'Excellent',6),(75,'Average',7),(76,'Poor',10),(77,'Good',8),(78,'Average',4),(79,'Good',3),(80,'Average',9),(81,'Poor',2),(82,'Average',3),(83,'Poor',4),(84,'Average',6),(85,'Good',7),(86,'Excellent',4),(87,'Excellent',1),(88,'Average',2),(89,'Poor',4),(90,'Good',5),(91,'Excellent',6),(92,'Good',7),(93,'Excellent',3),(94,'Poor',53),(95,'Good',10);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-18 14:28:49

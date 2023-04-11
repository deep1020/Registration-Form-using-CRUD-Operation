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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `deptID` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) NOT NULL,
  `dept_fk_id` int(11) NOT NULL,
  PRIMARY KEY (`deptID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'IT',6),(2,'sales',1),(4,'IT',1),(5,'sales',1),(6,'HR',1),(7,'marketing',1),(8,'IT',1),(9,'sales',1),(10,'marketing',1),(12,'marketing',1),(13,'HR',1),(14,'HR',1),(15,'sales',1),(16,'IT',1),(17,'IT',1),(18,'marketing',1),(19,'sales',1),(20,'HR',1),(21,'marketing',1),(22,'HR',1),(23,'sales',1),(24,'HR',3),(25,'marketing',6),(26,'IT',7),(27,'sales',10),(28,'HR',1),(29,'marketing',1),(30,'marketing',3),(31,'sales',9),(32,'HR',2),(33,'sales',3),(34,'HR',4),(35,'sales',6),(36,'IT',7),(37,'sales',4),(38,'HR',4),(39,'IT',1),(40,'marketing',1),(41,'IT',4),(42,'HR',5),(43,'sales',6),(44,'sales',6),(45,'sales',6),(46,'IT',6),(47,'marketing',7),(48,'sales',7),(49,'sales',3),(50,'sales',53),(51,'HR',10);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-18 14:28:48

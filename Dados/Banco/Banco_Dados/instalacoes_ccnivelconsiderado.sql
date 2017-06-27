-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: instalacoes
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `ccnivelconsiderado`
--

DROP TABLE IF EXISTS `ccnivelconsiderado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccnivelconsiderado` (
  `idCCNivelConsiderado` int(11) NOT NULL AUTO_INCREMENT,
  `CorrCCaMontante` int(11) DEFAULT NULL,
  `n1` float DEFAULT NULL,
  `n2` float DEFAULT NULL,
  `n3` float DEFAULT NULL,
  `n4` float DEFAULT NULL,
  `n5` float DEFAULT NULL,
  `n6` float DEFAULT NULL,
  `n7` float DEFAULT NULL,
  `n8` float DEFAULT NULL,
  `n9` float DEFAULT NULL,
  `n10` float DEFAULT NULL,
  `n11` float DEFAULT NULL,
  `n12` float DEFAULT NULL,
  `n13` float DEFAULT NULL,
  `n14` float DEFAULT NULL,
  `n15` float DEFAULT NULL,
  `n16` float DEFAULT NULL,
  `n17` float DEFAULT NULL,
  `n18` float DEFAULT NULL,
  `n19` float DEFAULT NULL,
  `n20` float DEFAULT NULL,
  `n21` float DEFAULT NULL,
  `n22` float DEFAULT NULL,
  `n23` float DEFAULT NULL,
  `n24` float DEFAULT NULL,
  PRIMARY KEY (`idCCNivelConsiderado`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccnivelconsiderado`
--

LOCK TABLES `ccnivelconsiderado` WRITE;
/*!40000 ALTER TABLE `ccnivelconsiderado` DISABLE KEYS */;
INSERT INTO `ccnivelconsiderado` VALUES (1,100,93,88,83,76,65,55,44,35,28,21,17,14,12,9,7.5,5.5,5,4,2.9,2.4,2,1.5,1,0.5),(2,90,84,80,76,70,61,51,41,34,27,21,16,13,11,9,7.5,5.5,4.5,4,2.9,2.4,2,1.5,1,0.5),(3,80,75,72,68,64,56,48,39,32,26,20,16,13,11,9,7.5,5.5,4.5,4,2.9,2.4,2,1.5,1,0.5),(4,70,66,64,61,57,51,44,37,31,25,20,15,13,11,8.5,7,5.5,4.5,4,2.9,2.4,1.9,1.5,1,0.5),(5,60,57,55,53,50,46,40,34,29,24,19,15,12,11,8.5,7,5.5,4.5,3.5,2.8,2.4,1.9,1.5,1,0.5),(6,50,48,47,45,43,40,35,30,26,22,17,14,12,10,8.5,7,5.5,4.5,3.5,2.8,2.4,1.9,1.5,1,0.5),(7,40,39,38,37,36,33,30,26,23,20,16,13,11,10,8,6.5,5,4.5,3.5,2.8,2.3,1.9,1.4,1,0.5),(8,35,34,33,32,31,30,27,24,21,18,15,13,11,9.5,8,6.5,5,4.5,3.5,2.8,2.3,1.9,1.4,1,0.5),(9,30,29,29,28,27,26,24,22,19,17,14,12,10,9,7.5,6.5,5,4.5,3.5,2.7,2.3,1.9,1.4,1,0.5),(10,25,24,24,24,23,22,21,19,17,15,13,11,10,8.5,7,6,5,4,3.5,2.7,2.3,1.8,1.4,1,0.5),(11,20,20,19,19,19,18,17,16,15,13,12,10,9,8,6.5,5.5,4.5,4,3.5,2.6,2.2,1.8,1.4,1,0.5),(12,15,15,15,14,14,14,13,12,12,11,9.5,8.5,7.6,7,6,5,4.5,3.5,3,2.5,2.1,1.8,1.4,0.9,0.5),(13,10,10,10,10,10,10,9,9,8.5,8,7.5,6.5,6,5.5,5,4.5,3.5,3.5,2.8,2.3,2,1.7,1.3,0.9,0.5),(14,7,7,7,7,7,6.5,6.5,6.5,6,6,5.5,5,5,4.5,4,3.5,3,2.9,2.5,2.1,1.8,1.5,1.2,0.9,0.5),(15,5,5,5,5,5,5,5,4.5,4.5,4.5,4,4,4,3.5,3.5,3,2.7,2.5,2.2,1.9,1.7,1.4,1.1,0.8,0.5),(16,4,4,4,4,4,4,4,4,3.5,3.5,3.5,3.5,3,3,2.8,2.7,2.4,2.2,2,1.7,1.5,1.3,1.1,0.8,0.4),(17,3,3,3,3,3,3,2.9,2.9,2.8,2.7,2.7,2.6,2.5,2.4,2.3,2.2,2,1.9,1.7,1.5,1.4,1.2,1,0.7,0.4),(18,2,2,2,2,2,2,2,2,1.9,1.9,1.9,1.8,1.8,1.7,1.7,1.6,1.5,1.4,1.3,1.2,1.1,1,0.8,0.6,0.4),(19,1,1,1,1,1,1,1,1,1,1,1,0.9,0.9,0.9,0.9,0.9,0.9,0.8,0.8,0.7,0.7,0.6,0.5,0.5,0.3);
/*!40000 ALTER TABLE `ccnivelconsiderado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-27 15:05:23

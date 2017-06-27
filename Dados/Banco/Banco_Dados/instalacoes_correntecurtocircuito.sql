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
-- Table structure for table `correntecurtocircuito`
--

DROP TABLE IF EXISTS `correntecurtocircuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correntecurtocircuito` (
  `idCorrenteCurtoCircuito` int(11) NOT NULL AUTO_INCREMENT,
  `potencia` float DEFAULT NULL,
  `correnteCurto1` float DEFAULT NULL,
  `correnteCurto2` float DEFAULT NULL,
  PRIMARY KEY (`idCorrenteCurtoCircuito`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correntecurtocircuito`
--

LOCK TABLES `correntecurtocircuito` WRITE;
/*!40000 ALTER TABLE `correntecurtocircuito` DISABLE KEYS */;
INSERT INTO `correntecurtocircuito` VALUES (1,15,0.8,0.4),(2,16,0.8,0.5),(3,25,1.2,0.7),(4,30,1.6,0.8),(5,45,2.4,1.2),(6,50,2.5,1.5),(7,63,3.1,1.8),(8,75,3.8,2.2),(9,80,4,2.3),(10,100,5,3),(11,112.5,5.6,3.2),(12,150,7.6,4.4),(13,160,8,4.7),(14,200,10,6),(15,225,11,6.5),(16,250,12,7),(17,300,15,9),(18,315,16,9),(19,400,20,12),(20,500,25,14),(21,630,31,18),(22,750,37,22),(23,800,40,23),(24,1000,50,28);
/*!40000 ALTER TABLE `correntecurtocircuito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-27 15:05:24

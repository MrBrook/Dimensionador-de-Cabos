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
-- Table structure for table `niveicurtocircuito`
--

DROP TABLE IF EXISTS `niveicurtocircuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niveicurtocircuito` (
  `idNiveiCurtoCircuito` int(11) NOT NULL,
  `idTensao` int(11) NOT NULL,
  `snKVA` float DEFAULT NULL,
  `iKoKa` float DEFAULT NULL,
  PRIMARY KEY (`idNiveiCurtoCircuito`),
  KEY `fk_NiveiCurtoCircuito_Tensao1_idx` (`idTensao`),
  CONSTRAINT `fk_NiveiCurtoCircuito_Tensao1` FOREIGN KEY (`idTensao`) REFERENCES `tensao` (`idTensao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveicurtocircuito`
--

LOCK TABLES `niveicurtocircuito` WRITE;
/*!40000 ALTER TABLE `niveicurtocircuito` DISABLE KEYS */;
INSERT INTO `niveicurtocircuito` VALUES (1,1,15,0.8),(2,1,16,0.8),(3,1,25,1.2),(4,1,30,1.6),(5,1,45,2.4),(6,1,50,2.5),(7,1,63,3.1),(8,1,75,3.8),(9,1,80,4),(10,1,100,5),(11,1,112.5,5.6),(12,1,150,7.6),(13,1,160,8),(14,1,200,10),(15,1,225,11),(16,1,250,12),(17,1,300,15),(18,1,315,16),(19,1,400,20),(20,1,500,25),(21,1,630,31),(22,1,750,37),(23,1,800,40),(24,1,1000,50),(25,2,15,0.4),(26,2,16,0.5),(27,2,25,0.7),(28,2,30,0.8),(29,2,45,1.2),(30,2,50,1.5),(31,2,63,1.8),(32,2,75,2.2),(33,2,80,2.3),(34,2,100,3),(35,2,112.5,3.2),(36,2,150,4.4),(37,2,160,4.7),(38,2,200,6),(39,2,225,6.5),(40,2,250,7),(41,2,300,9),(42,2,315,9),(43,2,400,12),(44,2,500,14),(45,2,630,18),(46,2,750,22),(47,2,800,23),(48,2,1000,28);
/*!40000 ALTER TABLE `niveicurtocircuito` ENABLE KEYS */;
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

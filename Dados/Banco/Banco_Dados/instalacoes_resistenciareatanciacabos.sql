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
-- Table structure for table `resistenciareatanciacabos`
--

DROP TABLE IF EXISTS `resistenciareatanciacabos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resistenciareatanciacabos` (
  `idResistenciaReatancia` int(11) NOT NULL AUTO_INCREMENT,
  `idCabo` int(11) NOT NULL,
  `rcc` float DEFAULT NULL,
  `rca` float DEFAULT NULL,
  `xl` float DEFAULT NULL,
  PRIMARY KEY (`idResistenciaReatancia`),
  KEY `fk_ResistenciaReatancia_Cabos1_idx` (`idCabo`),
  CONSTRAINT `fk_ResistenciaReatancia_Cabos1` FOREIGN KEY (`idCabo`) REFERENCES `cabos` (`idCabo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resistenciareatanciacabos`
--

LOCK TABLES `resistenciareatanciacabos` WRITE;
/*!40000 ALTER TABLE `resistenciareatanciacabos` DISABLE KEYS */;
INSERT INTO `resistenciareatanciacabos` VALUES (1,4,12.1,14.48,0.16),(2,5,7.41,8.87,0.15),(3,6,4.61,5.52,0.14),(4,7,3.08,3.69,0.13),(5,8,1.83,2.19,0.13),(6,9,1.15,1.38,0.12),(7,10,0.73,0.87,0.12),(8,11,0.52,0.63,0.11),(9,12,0.39,0.47,0.11),(10,13,0.27,0.32,0.1),(11,14,0.19,0.23,0.1),(12,15,0.15,0.19,0.1),(13,16,0.12,0.15,0.1),(14,17,0.099,0.12,0.094),(15,18,0.075,0.094,0.098),(16,19,0.06,0.078,0.097),(17,20,0.047,0.063,0.096),(18,21,0.037,0.052,0.095),(19,22,0.028,0.043,0.093),(20,23,0.022,0.037,0.089),(21,24,0.018,0.033,0.088);
/*!40000 ALTER TABLE `resistenciareatanciacabos` ENABLE KEYS */;
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

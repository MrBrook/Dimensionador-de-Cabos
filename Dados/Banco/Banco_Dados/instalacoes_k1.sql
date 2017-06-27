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
-- Table structure for table `k1`
--

DROP TABLE IF EXISTS `k1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k1` (
  `idK1` int(11) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idIsolante` int(11) NOT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `isolante` float DEFAULT NULL,
  PRIMARY KEY (`idK1`),
  KEY `fk_K1_Correcao1_idx` (`idTipo`),
  KEY `fk_K1_Isolante1` (`idIsolante`),
  CONSTRAINT `fk_K1_Correcao1` FOREIGN KEY (`idTipo`) REFERENCES `correcao` (`idCorrecao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_K1_Isolante1` FOREIGN KEY (`idIsolante`) REFERENCES `isolante` (`idIsolante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k1`
--

LOCK TABLES `k1` WRITE;
/*!40000 ALTER TABLE `k1` DISABLE KEYS */;
INSERT INTO `k1` VALUES (1,1,1,10,1.22),(2,1,1,15,1.17),(3,1,1,20,1.12),(4,1,1,25,1.06),(5,1,1,35,0.94),(6,1,1,40,0.87),(7,1,1,45,0.79),(8,1,1,50,0.71),(9,1,1,55,0.61),(10,1,1,60,0.5),(11,1,1,65,0),(12,1,1,70,0),(13,1,1,75,0),(14,1,1,80,0),(15,1,2,10,1.15),(16,1,2,15,1.12),(17,1,2,20,1.08),(18,1,2,25,1.04),(19,1,2,35,0.96),(20,1,2,40,0.91),(21,1,2,45,0.87),(22,1,2,50,0.82),(23,1,2,55,0.76),(24,1,2,60,0.71),(25,1,2,65,0.65),(26,1,2,70,0.58),(27,1,2,75,0.5),(28,1,2,80,0.41),(29,2,1,10,1.1),(30,2,1,15,1.05),(31,2,1,25,0.95),(32,2,1,30,0.89),(33,2,1,35,0.84),(34,2,1,40,0.77),(35,2,1,45,0.71),(36,2,1,50,0.63),(37,2,1,55,0.55),(38,2,1,60,0.45),(39,2,1,65,0),(40,2,1,70,0),(41,2,1,75,0),(42,2,1,80,0),(43,2,2,10,1.07),(44,2,2,15,1.04),(45,2,2,25,0.96),(46,2,2,30,0.93),(47,2,2,35,0.89),(48,2,2,40,0.85),(49,2,2,45,0.8),(50,2,2,50,0.76),(51,2,2,55,0.71),(52,2,2,60,0.65),(53,2,2,65,60),(54,2,2,70,53),(55,2,2,75,46),(56,2,2,80,38),(57,2,2,30,0.93),(58,2,1,30,0.89),(59,1,1,30,1),(60,1,2,30,1);
/*!40000 ALTER TABLE `k1` ENABLE KEYS */;
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

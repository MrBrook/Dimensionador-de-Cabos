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
-- Table structure for table `cabos`
--

DROP TABLE IF EXISTS `cabos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabos` (
  `idCabo` int(11) NOT NULL,
  `idMaterialCabo` int(11) NOT NULL,
  `diametro` float DEFAULT NULL,
  PRIMARY KEY (`idCabo`),
  KEY `fk_Cabos_Materiais1_idx` (`idMaterialCabo`),
  CONSTRAINT `fk_Cabos_Materiais1` FOREIGN KEY (`idMaterialCabo`) REFERENCES `materiais` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabos`
--

LOCK TABLES `cabos` WRITE;
/*!40000 ALTER TABLE `cabos` DISABLE KEYS */;
INSERT INTO `cabos` VALUES (1,1,0.5),(2,1,0.75),(3,1,1),(4,1,1.5),(5,1,2.5),(6,1,4),(7,1,6),(8,1,10),(9,1,16),(10,1,25),(11,1,35),(12,1,50),(13,1,70),(14,1,95),(15,1,120),(16,1,150),(17,1,185),(18,1,240),(19,1,300),(20,1,400),(21,1,500),(22,1,630),(23,1,800),(24,1,1000),(25,2,16),(26,2,25),(27,2,35),(28,2,50),(29,2,70),(30,2,95),(31,2,120),(32,2,150),(33,2,185),(34,2,240),(35,2,300),(36,2,400),(37,2,500),(38,2,630),(39,2,800),(40,2,1000);
/*!40000 ALTER TABLE `cabos` ENABLE KEYS */;
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

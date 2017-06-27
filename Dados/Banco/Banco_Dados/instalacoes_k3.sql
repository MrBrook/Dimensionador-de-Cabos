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
-- Table structure for table `k3`
--

DROP TABLE IF EXISTS `k3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k3` (
  `idK3` int(11) NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `n1` float DEFAULT NULL,
  `n2` float DEFAULT NULL,
  `n3` float DEFAULT NULL,
  `n4` float DEFAULT NULL,
  `n5` float DEFAULT NULL,
  `n6` float DEFAULT NULL,
  `n7` float DEFAULT NULL,
  `n8` float DEFAULT NULL,
  `n9` float DEFAULT NULL,
  `n12` float DEFAULT NULL,
  `n16` float DEFAULT NULL,
  `n20` float DEFAULT NULL,
  PRIMARY KEY (`idK3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k3`
--

LOCK TABLES `k3` WRITE;
/*!40000 ALTER TABLE `k3` DISABLE KEYS */;
INSERT INTO `k3` VALUES (1,'Feixe de cabos ao ar livre ou sobre superfície: cabos em condutos fechados',1,0.8,0.7,0.65,0.6,0.57,0.54,0.52,0.5,0.45,0.41,0.38),(2,'Camada única sobre parede. piso ou em bandeja não perfurada prateleira',1,0.85,0.79,0.75,0.73,0.72,0.72,0.71,0.7,0.7,0.7,0.7),(3,'Camada única no teto',0.95,0.81,0.72,0.68,0.66,0.64,0.63,0.62,0.61,0.61,0.61,0.61),(4,'Camada única em bandeija perfurada. horizontal ou vertical',1,0.88,0.82,0.77,0.75,0.73,0.73,0.72,0.72,0.72,0.72,0.72),(5,'Camada única em leito. suporte',1,0.87,0.82,0.8,0.8,0.79,0.79,0.78,0.78,0.78,0.78,0.78);
/*!40000 ALTER TABLE `k3` ENABLE KEYS */;
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

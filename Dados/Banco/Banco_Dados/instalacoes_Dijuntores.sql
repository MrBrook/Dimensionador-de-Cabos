-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: instalacoes
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `Dijuntores`
--

DROP TABLE IF EXISTS `Dijuntores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dijuntores` (
  `idDijuntores` int(11) NOT NULL AUTO_INCREMENT,
  `INominal` int(11) DEFAULT NULL,
  `curva` varchar(4) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDijuntores`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dijuntores`
--

LOCK TABLES `Dijuntores` WRITE;
/*!40000 ALTER TABLE `Dijuntores` DISABLE KEYS */;
INSERT INTO `Dijuntores` VALUES (1,2,'C','monopolar/Bipolar/Tripolar'),(2,4,'C','monopolar/Bipolar/Tripolar'),(3,6,'B/C','monopolar/Bipolar/Tripolar'),(4,10,'B/C','monopolar/Bipolar/Tripolar'),(5,16,'B/C','monopolar/Bipolar/Tripolar'),(6,20,'B/C','monopolar/Bipolar/Tripolar'),(7,25,'B/C','monopolar/Bipolar/Tripolar'),(8,32,'B/C','monopolar/Bipolar/Tripolar'),(9,40,'B/C','monopolar/Bipolar/Tripolar'),(10,50,'B/C','monopolar/Bipolar/Tripolar'),(11,63,'B/C','monopolar/Bipolar/Tripolar'),(12,70,'B/C','monopolar/Bipolar/Tripolar'),(13,80,'B/C','monopolar/Bipolar/Tripolar'),(14,100,'B/C','monopolar/Bipolar/Tripolar'),(15,125,'B/C','monopolar/Bipolar/Tripolar');
/*!40000 ALTER TABLE `Dijuntores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-30 23:05:31

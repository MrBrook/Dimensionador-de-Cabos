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
-- Table structure for table `metodo`
--

DROP TABLE IF EXISTS `metodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodo` (
  `idMetodo` int(11) NOT NULL,
  `tipo` varchar(4) DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idMetodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo`
--

LOCK TABLES `metodo` WRITE;
/*!40000 ALTER TABLE `metodo` DISABLE KEYS */;
INSERT INTO `metodo` VALUES (1,'A1','Condutores isolados em eletrocuto de seção circular embutido em parede termicamente isolante'),(2,'A2','Cabo multipolar em eletrocuto de seção circular embutido em parede termicamente isolante'),(3,'B1','Condutores isolados em eletro duto de seção circular sobre parede de madeira'),(4,'B2','Cabo multipolar em eletro duto de seção circular sobre parede de madeira'),(5,'C','Cabos unipolares ou cabo multipolar  sobre parede de madeira'),(6,'D','Cabo multipolar em eletrodo enterrado no solo'),(7,'E','Cabo multipolar ao ar livre'),(8,'F','Cabos unipolares justapostos(na horizontal, vertical ou trifólio) ao ar livre'),(9,'G','Cabos unipolares ao ar livre');
/*!40000 ALTER TABLE `metodo` ENABLE KEYS */;
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

-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: zsa_lab4
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `microwave`
--

DROP TABLE IF EXISTS `microwave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microwave` (
  `id` int NOT NULL AUTO_INCREMENT,
  `microwaveSpecID` int DEFAULT '0',
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Sec` (`microwaveSpecID`),
  CONSTRAINT `Sec` FOREIGN KEY (`microwaveSpecID`) REFERENCES `microwave_spec` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microwave`
--

LOCK TABLES `microwave` WRITE;
/*!40000 ALTER TABLE `microwave` DISABLE KEYS */;
INSERT INTO `microwave` VALUES (1,3,'ARG','MG-2011M'),(2,6,'ARG','MG-2011M');
/*!40000 ALTER TABLE `microwave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microwave_spec`
--

DROP TABLE IF EXISTS `microwave_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microwave_spec` (
  `id` int NOT NULL AUTO_INCREMENT,
  `volume` int DEFAULT NULL,
  `sizes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microwave_spec`
--

LOCK TABLES `microwave_spec` WRITE;
/*!40000 ALTER TABLE `microwave_spec` DISABLE KEYS */;
INSERT INTO `microwave_spec` VALUES (1,17,'45.2x26.2x31.5 sm'),(2,20,'44х35.8х25.9 sm'),(3,20,'291х488х380 mm'),(4,17,'45.2x26.2x31.5 sm'),(5,20,'44х35.8х25.9 sm'),(6,20,'291х488х380 mm');
/*!40000 ALTER TABLE `microwave_spec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-08 15:16:35

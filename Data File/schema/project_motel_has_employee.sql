-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `motel_has_employee`
--

DROP TABLE IF EXISTS `motel_has_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motel_has_employee` (
  `Motel_ID` int NOT NULL,
  `Employee_ID` int NOT NULL,
  PRIMARY KEY (`Motel_ID`,`Employee_ID`),
  KEY `fk_Motel_has_Employee_Employee1_idx` (`Employee_ID`),
  KEY `fk_Motel_has_Employee_Motel_idx` (`Motel_ID`),
  CONSTRAINT `fk_Motel_has_Employee_Employee1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_id`),
  CONSTRAINT `fk_Motel_has_Employee_Motel` FOREIGN KEY (`Motel_ID`) REFERENCES `motel` (`Motel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motel_has_employee`
--

LOCK TABLES `motel_has_employee` WRITE;
/*!40000 ALTER TABLE `motel_has_employee` DISABLE KEYS */;
INSERT INTO `motel_has_employee` VALUES (1001,1),(1002,1),(1005,2),(1006,3),(1004,4),(1008,4),(1007,5),(1003,7),(1013,8),(1011,9),(1012,10),(1009,11),(1010,12);
/*!40000 ALTER TABLE `motel_has_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 21:26:43

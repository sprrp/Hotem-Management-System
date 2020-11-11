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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Payment_Type` varchar(45) NOT NULL,
  `Card_Number` varchar(45) DEFAULT NULL,
  `Expire_Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'SUDHIR','HAG','Credit card','450125 123 4525','4/25'),(2,'BISHKA','ADHIKARI','Debit Card','856 123 235 2356','6/24'),(3,'RABIN','HOLL','Credit Card','758 147 369 8569','2/22'),(4,'ROY','RABIN','Cash','452 632 526 2365','12/27'),(5,'DHAKA','DHAKAL','Credit','123 789 415 1254 ','4/25'),(6,'NARAY','THAPA','Cash','652 852 412 2356','3/22'),(7,'HOLYY','George','cash','856 123 235 2356','1/20'),(8,'MARY','JOHNSON','Card','856 123 235 2356','5/20'),(9,'PATRICIA','JOHNSON','Debit Card','856 123 235 2356','9/21'),(10,'CUSH','CSUDH','Credit Card','856 123 235 1555','10/21'),(11,'JENNIFER','DAVIS','Debit Card','856 123 455 2356','11/24'),(12,'HELEN','WHITE','Credit Card','255 223 235 5574','12/20'),(13,'NANCY','HARRIS','Debit Card','856 123 235 4254','12/24'),(14,'LISA','ANDERSON','Credit Card','135 123 235 2885','10/24'),(15,'Rav','MARK','Credit Card','395 455 456 6691','13/25');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 21:26:44

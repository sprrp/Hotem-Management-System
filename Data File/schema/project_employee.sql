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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'BIHALJ','ROG','225 S knott ave','badhikari@gmail.com','5622314565'),(2,'JAM','ADHIAKRI','224 E ball rd ave','jamuna@gmail.com','7142589656'),(3,'ROY','PAND','789 S la Palma ave','masterji@gmail.com','8915624774'),(4,'PETER','ROBIN','451 S Cypress st.','lohani@gmail.com','5624137898'),(5,'DEV','SUBEDI','714 N valley view st','subedi@gmail.com','7145628923'),(6,'LEE','D','567 W lincoln ave','leed@gmail.com','2134561252'),(7,'VEER','JOHB','452 S beach blvd','virey@yahoo.com','4741253636'),(8,'CHARLENE','CHARLENE','1913 Hanoi Way','CHARLENE.ALVAREZ@gmail.com','875756771675'),(9,'BESSIE','MORRISON','1121 Loja Avenue','BESSIE.MORRISON@saki.com','701457319790'),(10,'DELORES','FERNANDEZ','1566 Inegl Manor','COLLEEN.BURTON@roy.com','707169393853'),(11,'TAMARA','NGUYEN','1795 Santiago de Compostela Way','TAMARA.NGUYEN@gmail.com','23712411567'),(12,'LEAH','CURTIS','929 Tallahassee Loop','PENNY.NEAL@yahoo.com','206841104594');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 21:26:42

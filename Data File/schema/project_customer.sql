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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `ID_UNIQUE` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (100,'SUDHIR','HAG','1224 Huejutla de Reyes Boulevard','12582254','12f2@caush.edu'),(101,'BISHKA','ADHIKARI','687 Alessandria Parkway','7149785262','B@gmail.com'),(102,'RABIN','HOLL','543 Bergamo Avenue','7149783262','jam@gmail.com'),(103,'ROY','RABIN','867 Benin City Avenue','7148785262','Ms@gmail.com'),(104,'DHAKA','DHAKAL','1920 Weifang Avenue','7148775262','ds@gmail.com'),(105,'NARAY','THAPA','456 los santos','7148778262','Ns@gmail.com'),(106,'HOLYY','George','47 MySakila Drive','378318851631','HELEN.HARRIS@yahoo.com'),(107,'MARY','JOHNSON','1913 Hanoi Way','680769493378','NANCY.THOMAS@hotmail.com'),(108,'PATRICIA','JOHNSON','900 Santiago de Compostela Parkway','69493378813','MELISSA.KING@hotmail.com'),(109,'CUSH','CSUDH','Carson St','777777777','asdfg@red.com'),(110,'JENNIFER','DAVIS','1780 Hino Boulevard','800024380485','CAROLYN.PEREZ@gogl.org'),(111,'HELEN','WHITE','334 Munger (Monghyr) Lane','250767749542','BETTY.WHITE@go.com'),(112,'NANCY','HARRIS','671 Graz Street','333489324603','NANCY.THOMAS@scto.com'),(113,'LISA','ANDERSON','42 Brindisi Place','896314772871','DIANE.COLLINS@gov.org'),(114,'Rav','MARK','951 Stara Zagora Manor','181179321332','RAB@hi.com'),(199,'sadasd','asdas','asda','','');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 21:26:41

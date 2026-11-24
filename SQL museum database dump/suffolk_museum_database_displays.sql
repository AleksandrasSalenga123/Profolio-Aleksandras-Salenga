-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: suffolk_museum_database
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `displays`
--

DROP TABLE IF EXISTS `displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `displays` (
  `Display_ID` int NOT NULL,
  `Display_Name` varchar(40) DEFAULT NULL,
  `Room_Num` int DEFAULT NULL,
  PRIMARY KEY (`Display_ID`),
  KEY `Room_Num` (`Room_Num`),
  CONSTRAINT `displays_ibfk_1` FOREIGN KEY (`Room_Num`) REFERENCES `rooms` (`Room_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displays`
--

LOCK TABLES `displays` WRITE;
/*!40000 ALTER TABLE `displays` DISABLE KEYS */;
INSERT INTO `displays` VALUES (101,'Stone Age Tools Case',3),(102,'Bronze Age Case',3),(103,'Iron Age Case',3),(104,'Roman Table Display',4),(105,'Roman Jewellery Case',4),(106,'Roman Coins Case',4),(107,'Medieval Merchants Table',5),(108,'Tudor Schoolroom Case',5),(109,'Medieval Church Case',5),(110,'Civil War Armoury Wall',6),(111,'Civil War Documents Case',6),(112,'Emigration Document Case',7),(113,'Trade and Shipping Case',7),(114,'Farming Machinery Plinth',11),(115,'Factory and Workshop Case',11),(116,'Seaside Leisure Case',11),(117,'Great War Case',12),(118,'Great War Letters Case',12),(119,'Home Front Cabinet',13),(120,'Airfield Wall Display',13),(121,'Evacuee Case',13),(122,'Cold War Corner',14),(123,'Protest and Peace Case',14),(124,'Modern Suffolk Case',15),(125,'Energy and Coast Case',15);
/*!40000 ALTER TABLE `displays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12 18:17:29

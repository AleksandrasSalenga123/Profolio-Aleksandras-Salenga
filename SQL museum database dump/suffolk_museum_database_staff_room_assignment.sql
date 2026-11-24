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
-- Table structure for table `staff_room_assignment`
--

DROP TABLE IF EXISTS `staff_room_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_room_assignment` (
  `Staff_ID` int NOT NULL,
  `Room_Num` int NOT NULL,
  `Assignment_Start_Time_Today` time DEFAULT NULL,
  `Assignment_End_Time_Today` time DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`,`Room_Num`),
  KEY `Room_Num` (`Room_Num`),
  CONSTRAINT `staff_room_assignment_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`),
  CONSTRAINT `staff_room_assignment_ibfk_2` FOREIGN KEY (`Room_Num`) REFERENCES `rooms` (`Room_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_room_assignment`
--

LOCK TABLES `staff_room_assignment` WRITE;
/*!40000 ALTER TABLE `staff_room_assignment` DISABLE KEYS */;
INSERT INTO `staff_room_assignment` VALUES (1,16,'09:00:00','17:00:00'),(2,2,'13:00:00','17:00:00'),(2,16,'09:00:00','12:00:00'),(3,2,'09:00:00','17:00:00'),(4,1,'09:00:00','17:00:00'),(5,16,'09:00:00','17:00:00'),(6,16,'09:00:00','17:00:00'),(7,3,'09:00:00','13:00:00'),(7,4,'13:00:00','17:00:00'),(8,6,'09:00:00','13:00:00'),(8,7,'13:00:00','17:00:00'),(9,11,'09:00:00','13:00:00'),(9,12,'13:00:00','17:00:00'),(10,13,'09:00:00','13:00:00'),(10,14,'13:00:00','17:00:00'),(11,1,'10:00:00','14:00:00'),(12,5,'10:00:00','16:00:00'),(13,15,'10:00:00','16:00:00'),(14,4,'10:00:00','13:00:00'),(15,2,'10:00:00','14:00:00'),(16,6,'10:00:00','14:00:00'),(17,1,'12:00:00','16:00:00'),(18,13,'10:00:00','16:00:00');
/*!40000 ALTER TABLE `staff_room_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12 18:17:28

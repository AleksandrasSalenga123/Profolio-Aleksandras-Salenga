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
-- Table structure for table `on_display_artifacts`
--

DROP TABLE IF EXISTS `on_display_artifacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `on_display_artifacts` (
  `Artifact_ID` int NOT NULL,
  `Display_ID` int DEFAULT NULL,
  PRIMARY KEY (`Artifact_ID`),
  KEY `Display_ID` (`Display_ID`),
  CONSTRAINT `on_display_artifacts_ibfk_1` FOREIGN KEY (`Display_ID`) REFERENCES `displays` (`Display_ID`),
  CONSTRAINT `on_display_artifacts_ibfk_2` FOREIGN KEY (`Artifact_ID`) REFERENCES `artifacts` (`Artifact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `on_display_artifacts`
--

LOCK TABLES `on_display_artifacts` WRITE;
/*!40000 ALTER TABLE `on_display_artifacts` DISABLE KEYS */;
INSERT INTO `on_display_artifacts` VALUES (1001,101),(1003,101),(1004,101),(1005,102),(1006,102),(1007,102),(1009,103),(1010,103),(1011,103),(1013,104),(1014,104),(1015,104),(1016,105),(1017,105),(1018,105),(1019,106),(1020,106),(1023,107),(1024,107),(1025,107),(1031,107),(1029,108),(1030,108),(1026,109),(1027,109),(1028,109),(1034,110),(1035,110),(1036,110),(1037,111),(1038,111),(1040,112),(1041,112),(1042,113),(1043,113),(1045,113),(1046,114),(1047,114),(1048,114),(1049,115),(1050,115),(1051,115),(1052,116),(1053,116),(1054,116),(1058,117),(1059,117),(1060,117),(1061,118),(1062,118),(1064,119),(1065,119),(1066,119),(1067,120),(1068,120),(1069,120),(1070,121),(1071,121),(1074,122),(1075,122),(1076,122),(1077,123),(1078,123),(1082,124),(1083,124),(1080,125),(1081,125);
/*!40000 ALTER TABLE `on_display_artifacts` ENABLE KEYS */;
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

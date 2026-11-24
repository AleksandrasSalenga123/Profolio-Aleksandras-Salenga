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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` int NOT NULL,
  `Staff_Full_Name` varchar(40) DEFAULT NULL,
  `Staff_DOB` date DEFAULT NULL,
  `Staff_GP_Practice` varchar(40) DEFAULT NULL,
  `Staff_Email` varchar(40) DEFAULT NULL,
  `Staff_Phone_Num` varchar(14) DEFAULT NULL,
  `Staff_Emerg_Contact_Phone_Num` varchar(14) DEFAULT NULL,
  `Staff_Emerg_Contact_Name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Eleanor Whitcombe','1978-04-12','Orwell Surgery','e.whitcombe@gvm.example','7700900101','7700900201','Peter Whitcombe'),(2,'Tom Ashby','1985-09-30','Gipping Medical Centre','t.ashby@gvm.example','7700900102','7700900202','Sarah Ashby'),(3,'Priya Nair','1990-01-17','Orwell Surgery','p.nair@gvm.example','7700900103','7700900203','Anil Nair'),(4,'Callum Reeve','1996-06-05','Stour Valley Practice','c.reeve@gvm.example','7700900104','7700900204','Jane Reeve'),(5,'Hannah Clarke','1988-02-14','Deben Health Centre','h.clarke@gvm.example','7700900105','7700900205','Mark Clarke'),(6,'David Okafor','1982-08-23','Gipping Medical Centre','d.okafor@gvm.example','7700900106','7700900206','Ngozi Okafor'),(7,'Sophie Marlow','1994-10-11','Orwell Surgery','s.marlow@gvm.example','7700900107','7700900207','Helen Marlow'),(8,'Ben Hartley','1991-05-03','Deben Health Centre','b.hartley@gvm.example','7700900108','7700900208','Carol Hartley'),(9,'Rosa Delgado','1997-07-27','Stour Valley Practice','r.delgado@gvm.example','7700900109','7700900209','Mateo Delgado'),(10,'Jamie Pryor','1999-12-19','Gipping Medical Centre','j.pryor@gvm.example','7700900110','7700900210','Tracy Pryor'),(11,'Margaret Doyle','1952-11-22','Gipping Medical Centre','m.doyle@gvm.example','7700900111','7700900211','Colm Doyle'),(12,'Harry Fenwick','2001-03-08','Orwell Surgery','h.fenwick@gvm.example','7700900112','7700900212','Linda Fenwick'),(13,'Aisha Rahman','1999-12-02','Stour Valley Practice','a.rahman@gvm.example','7700900113','7700900213','Imran Rahman'),(14,'George Pettit','1948-07-19','Gipping Medical Centre','g.pettit@gvm.example','7700900114','7700900214','Ruth Pettit'),(15,'Doreen Whitlock','1955-01-30','Deben Health Centre','d.whitlock@gvm.example','7700900115','7700900215','Alan Whitlock'),(16,'Kofi Mensah','1990-09-09','Orwell Surgery','k.mensah@gvm.example','7700900116','7700900216','Ama Mensah'),(17,'Lucy Brandon','2003-06-16','Stour Valley Practice','l.brandon@gvm.example','7700900117','7700900217','Sue Brandon'),(18,'Alan Gosling','1950-04-04','Deben Health Centre','a.gosling@gvm.example','7700900118','7700900218','Pat Gosling');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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

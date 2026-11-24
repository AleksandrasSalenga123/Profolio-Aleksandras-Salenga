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
-- Table structure for table `artifacts`
--

DROP TABLE IF EXISTS `artifacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifacts` (
  `Artifact_ID` int NOT NULL,
  `Artifact_Name` varchar(40) DEFAULT NULL,
  `Artifact_Description` varchar(400) DEFAULT NULL,
  `Acquisition_Date` date DEFAULT NULL,
  `Artifact_Type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Artifact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifacts`
--

LOCK TABLES `artifacts` WRITE;
/*!40000 ALTER TABLE `artifacts` DISABLE KEYS */;
INSERT INTO `artifacts` VALUES (1001,'Flint Hand Axe','Knapped flint hand axe found in a gravel pit near the River Gipping.','2004-01-16','Tool'),(1002,'Neolithic Antler Pick','A tool made from a deer antler during the Neolithic period. It was used for digging soil and mining flint.','2001-01-21','Tool'),(1003,'Flint Arrowhead','Barbed-and-tanged flint arrowhead from a burial mound.','1996-09-25','Tool'),(1004,'Polished Stone Axe','Polished flint axe head, traded from a Norfolk flint mine.','1996-01-21','Tool'),(1005,'Bronze Age Socketed Axehead','Cast bronze axehead from a metal-detected hoard.','2012-09-01','Tool'),(1006,'Bronze Spearhead','Leaf-shaped spearhead dredged from a river.','2002-09-25','Weapon'),(1007,'Bronze Age Beaker','Decorated pottery beaker from a round barrow.','2021-09-13','Pottery'),(1008,'Bronze Razor','Small bronze razor from a burial.','2023-05-05','Tool'),(1009,'Iron Age Torc Fragment','Twisted gold-alloy neck ring fragment from a farm field.','2020-05-05','Jewellery'),(1010,'Iron Age Gold Stater','Gold coin of an East Anglian tribe.','2014-09-17','Coin'),(1011,'Iron Age Spindle Whorl','Clay spindle whorl used for spinning wool.','2014-01-01','Tool'),(1012,'Clay Loom Weight',NULL,'2020-01-01','Tool'),(1013,'Roman Samian Ware Bowl','Red-gloss tableware bowl with moulded decoration, 2nd century.','2021-01-01','Pottery'),(1014,'Roman Oil Lamp','Clay oil lamp with a decorated top.','2005-09-25','Pottery'),(1015,'Roman Glass Flask','Blue-green glass flask from a cremation burial.','2002-01-05','Glass'),(1016,'Roman Bronze Brooch','Bow brooch with enamel inlay, found at a villa site.','2023-05-05','Jewellery'),(1017,'Roman Bone Hairpin','Carved bone hairpin with a ball head.','2002-05-17','Jewellery'),(1018,'Roman Finger Ring','Silver ring with a carved gem.','2015-05-25','Jewellery'),(1019,'Roman Coin Hoard Pot','Small pot containing 31 4th-century coins.','2008-09-13','Pottery'),(1020,'Roman Silver Denarius','Silver coin found near Ipswich.','2022-01-21','Coin'),(1021,'Roman Mortarium',NULL,'1999-09-09','Pottery'),(1022,'Roman Roof Tile Fragment','Stamped roofing tile fragment from a villa.','2004-09-13','Building Material'),(1023,'Medieval Pewter Flagon','Lidded pewter drinking vessel with a maker\'s mark.','2009-09-09','Vessel'),(1024,'Lavenham Broadcloth Sample','Blue-dyed wool cloth sample from a 15th-century merchant\'s house.','2023-09-17','Textile'),(1025,'Wool Merchant\'s Seal Matrix','Bronze seal used to mark bales of cloth.','1996-01-25','Tool'),(1026,'Medieval Floor Tile','Glazed floor tile from a priory.','1999-05-17','Building Material'),(1027,'Pilgrim Badge','Lead badge bought at a shrine.','2020-09-05','Badge'),(1028,'Pewter Chalice','Pewter chalice from a village church.','2004-01-17','Vessel'),(1029,'Tudor Hornbook','Horn-covered wooden children\'s lesson board.','1995-05-13','Tool'),(1030,'Tudor Writing Slate','Writing slate and stylus used in a grammar school.','2011-09-09','Tool'),(1031,'Tudor Silver Groat','Silver four-penny coin.','2006-05-13','Coin'),(1032,'Medieval Leather Shoe','Leather shoe found in a waterlogged pit.','2000-09-01','Clothing'),(1033,'Tudor Clay Pipe',NULL,'2009-05-25','Tool'),(1034,'Civil War Pikeman\'s Helmet','Iron pot helmet of the type worn by Parliamentarian infantry.','2019-05-25','Armour'),(1035,'Musket Ball Collection','Lead musket balls recovered from a skirmish site.','1997-05-17','Weapon'),(1036,'Cavalry Sword','Basket-hilted sword, 1640s.','2021-05-13','Weapon'),(1037,'Witch Trial Pamphlet (Copy)','Facsimile of a 17th-century printed pamphlet about East Anglian witch trials.','2002-09-25','Document'),(1038,'Parliamentary Muster Roll','Handwritten list of Suffolk militia recruits, 1643.','2022-09-21','Document'),(1039,'Leather Coin Purse',NULL,'2008-05-25','Equipment'),(1040,'Emigrant Ship Passenger List',NULL,'2011-05-01','Document'),(1041,'Emigrant\'s Prayer Book','Small bible carried to New England in the 1630s.','2014-01-17','Document'),(1042,'Colonial Trade Ledger','Merchant\'s ledger recording cloth exports.','2011-05-17','Document'),(1043,'Ship\'s Compass','Brass compass from a Suffolk-built merchant ship.','2013-05-05','Equipment'),(1044,'Atlantic Trade Pipe Bowl',NULL,'2003-09-25','Equipment'),(1045,'Market Town Trade Token','Copper trade token issued by a Suffolk market town.','2008-05-17','Coin'),(1046,'Seed Drill Model','Working scale model of a horse-drawn seed drill, c.1850.','2023-05-09','Model'),(1047,'Ransomes Plough Share','Cast-iron plough share from an Ipswich-made plough.','2007-01-21','Tool'),(1048,'Steam Engine Governor','Brass governor from a traction engine.','2007-09-09','Equipment'),(1049,'Maltings Shovel','Wooden malt shovel from a Suffolk maltings.','1997-01-13','Tool'),(1050,'Flour Mill Clogs','Wooden clogs worn by a mill worker.','2019-09-01','Clothing'),(1051,'Railway Ticket','Cardboard ticket, Ipswich to Felixstowe, 1890s.','2003-05-05','Document'),(1052,'Victorian Bathing Costume','Wool bathing costume worn at Felixstowe, c.1895.','2008-01-01','Textile'),(1053,'Seaside Postcard','Colour postcard of a Suffolk pier, 1905.','2014-09-09','Document'),(1054,'Bathing Machine Model','Scale model of a horse-drawn bathing machine.','2012-09-17','Model'),(1055,'Horse Brass',NULL,'2009-09-21','Equipment'),(1056,'Victorian School Slate',NULL,'1997-09-01','Tool'),(1057,'Harvest Home Banner','Embroidered village banner from a harvest festival, c.1920.','2019-05-25','Textile'),(1058,'Trench Whistle','Brass officer\'s whistle used on the Western Front, 1916.','2020-09-09','Equipment'),(1059,'Great War Steel Helmet','British Army steel helmet, 1916 pattern.','2021-01-01','Armour'),(1060,'Great War Service Medal','Campaign medal awarded to a Suffolk soldier.','2022-01-21','Medal'),(1061,'Soldier\'s Letter Home','Handwritten letter from the Western Front, 1916.','2008-01-01','Document'),(1062,'Zeppelin Raid Warning Poster','Public warning notice from 1915.','2020-09-25','Document'),(1063,'Recruitment Poster',NULL,'2016-01-01','Document'),(1064,'Home Guard Armband','Cloth armband issued to a Suffolk Home Guard volunteer.','1995-01-25','Textile'),(1065,'Ration Book',NULL,'2002-09-05','Document'),(1066,'Gas Mask in Case','Civilian gas mask in its cardboard box, issued 1939.','2017-09-01','Equipment'),(1067,'Airfield Control Log','Handwritten control tower log from a USAAF base, 1944.','1997-05-09','Document'),(1068,'Airman\'s Flying Jacket','Leather jacket worn by a bomber crew member.','2020-01-25','Clothing'),(1069,'Bomber Propeller Blade','Section of propeller recovered from a crash site.','1996-09-13','Equipment'),(1070,'Evacuee Luggage Label','Brown luggage label worn by a child evacuee.','2006-01-05','Document'),(1071,'Child\'s Gas Mask','Brightly coloured gas mask made for young children.','2019-09-21','Equipment'),(1072,'Blackout Curtain Sample',NULL,'2009-05-13','Textile'),(1073,'Air Raid Warden Helmet',NULL,'2003-09-05','Equipment'),(1074,'Cold War Bunker Telephone','Field telephone from a Royal Observer Corps monitoring post.','2019-09-25','Equipment'),(1075,'Orford Ness Test Photograph','Black and white photograph of a weapons test building, 1960s.','2001-01-09','Document'),(1076,'Civil Defence Leaflet','Government leaflet advising on nuclear attack.','2018-01-25','Document'),(1077,'Bentwaters Protest Badge','Enamel badge from a 1980s peace protest near a US air base.','1995-09-13','Badge'),(1078,'Peace Camp Banner','Hand-painted cloth banner from a 1980s protest.','2009-01-01','Textile'),(1079,'Radar Operator Headset','Headset used at a Cold War radar station.','1999-05-05','Equipment'),(1080,'Wind Turbine Blade Sample','Cut section of an offshore wind turbine blade.','2002-01-21','Equipment'),(1081,'Coast Erosion Map','Survey map recording cliff erosion on the Suffolk coast.','2001-09-21','Document'),(1082,'Early Mobile Phone','Handset from the 1990s used by an Ipswich business.','2004-01-13','Equipment'),(1083,'Lockdown Window Poster','Hand-painted rainbow poster from a 2020 window display.','1999-05-09','Document'),(1084,'Food Bank Collection Crate',NULL,'2020-09-21','Equipment');
/*!40000 ALTER TABLE `artifacts` ENABLE KEYS */;
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

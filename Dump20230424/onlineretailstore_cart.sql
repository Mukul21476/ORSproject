CREATE DATABASE  IF NOT EXISTS `onlineretailstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlineretailstore`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineretailstore
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ProductID` int NOT NULL,
  `custid` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  KEY `ProductID` (`ProductID`),
  KEY `custid` (`custid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`custid`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,30,'Cormier-Bins',3,115.71),(42,16,'Kassulke-Pfeffer',12,140.23),(12,52,'Weber,RathandReilly',11,319.79),(12,72,'Weber,RathandReilly',1,139.90),(10,89,'Herzog,RitchieandWolf',9,277.41),(49,43,'FaheyInc',10,391.28),(61,96,'Lehner,KozeyandKuhlman',12,287.16),(45,17,'Collins-Kiehn',4,198.11),(13,83,'ThielGroup',1,175.22),(78,37,'Herman,McDermottandAltenwerth',4,199.07),(60,36,'Ernser,LeschandWyman',8,463.83),(86,92,'Streich-OConnell',11,262.15),(43,74,'BergstromandSons',8,437.94),(8,70,'Marvin,RutherfordandLynch',5,304.04),(30,35,'Nikolaus,MuellerandJakubowski',10,7.11),(56,28,'Mayer,SatterfieldandKshlerin',3,294.64),(11,51,'FritschGroup',12,441.37),(23,21,'Schuster-Grant',3,442.65),(77,31,'Ratke-Buckridge',12,56.72),(69,49,'WolffGroup',1,279.23),(75,6,'Towne,HettingerandPaucek',1,176.89),(33,74,'Lowe-Fadel',2,381.19),(38,18,'Hane-Hilpert',6,221.36),(83,1,'Stiedemann,MrazandWalter',3,460.57),(51,29,'KleinLLC',7,195.41),(93,90,'Bosco,RoobandSchneider',2,263.82),(86,60,'Streich-OConnell',11,442.41),(47,1,'Harris,WaelchiandMcCullough',9,374.05),(59,49,'Leuschke,GrahamandWalker',8,175.38),(50,67,'Farrell,MarksandLangworth',5,193.60),(11,49,'FritschGroup',5,2.98),(53,98,'Ratke,GoodwinandRussel',6,324.11),(22,34,'Gleason-Muller',9,159.28),(100,57,'McGlynnandSons',3,391.60),(23,10,'Schuster-Grant',9,144.63),(10,36,'Herzog,RitchieandWolf',8,125.34),(46,47,'Berge-Satterfield',9,283.13),(5,7,'Schumm-Skiles',1,385.73),(51,29,'KleinLLC',11,266.07),(6,4,'JohnsLLC',5,113.45),(30,66,'Nikolaus,MuellerandJakubowski',11,293.53),(71,98,'LehnerGroup',2,259.08),(46,40,'Berge-Satterfield',7,489.86),(91,86,'SchowalterInc',5,460.34),(50,84,'Farrell,MarksandLangworth',12,443.80),(31,66,'Fisher,GoldnerandDare',12,27.26),(56,40,'Mayer,SatterfieldandKshlerin',5,459.64),(46,48,'Berge-Satterfield',8,295.80),(93,28,'Bosco,RoobandSchneider',1,208.28),(68,24,'BoyleandSons',12,398.55),(70,80,'Bogisich,BeattyandHirthe',10,70.59),(61,41,'Lehner,KozeyandKuhlman',8,56.18),(93,69,'Bosco,RoobandSchneider',2,27.40),(75,16,'Towne,HettingerandPaucek',2,443.30),(55,53,'WittingInc',2,314.19),(59,98,'Leuschke,GrahamandWalker',1,77.57),(37,47,'Ebert,EmardandWalter',6,65.09),(95,73,'Lockman-Hartmann',2,126.20),(28,8,'NicolasLLC',8,326.27),(77,22,'Ratke-Buckridge',10,18.63),(80,41,'Howell,DickinsonandDietrich',7,223.86),(9,57,'Gutkowski,HilpertandKoch',8,59.41),(44,16,'Gerhold,FeilandRoob',12,172.47),(96,40,'Romaguera,HellerandChamplin',12,222.29),(51,94,'KleinLLC',9,320.50),(97,29,'Bradtke,BeattyandSawayn',10,246.14),(52,92,'Terry-Renner',6,376.30),(24,7,'HintzandSons',6,341.00),(91,15,'SchowalterInc',1,281.34),(42,65,'Kassulke-Pfeffer',6,394.55),(86,17,'Streich-OConnell',6,218.29),(52,17,'Terry-Renner',12,48.62),(31,16,'Fisher,GoldnerandDare',2,159.08),(59,98,'Leuschke,GrahamandWalker',3,88.53),(77,9,'Ratke-Buckridge',4,255.77),(59,11,'Leuschke,GrahamandWalker',11,129.96),(22,85,'Gleason-Muller',9,319.24),(48,3,'KiehnGroup',1,232.24),(56,87,'Mayer,SatterfieldandKshlerin',2,258.39),(8,64,'Marvin,RutherfordandLynch',1,315.03),(77,2,'Ratke-Buckridge',11,372.94),(87,89,'HauckGroup',6,378.57),(36,70,'HagenesLLC',11,211.89),(38,52,'Hane-Hilpert',6,194.87),(94,100,'Williamson,TrantowandKiehn',3,44.34),(62,75,'Robel,SchimmelandMonahan',5,415.04),(96,6,'Romaguera,HellerandChamplin',8,168.94),(47,36,'Harris,WaelchiandMcCullough',11,424.89),(73,53,'Bruen,OsinskiandMante',4,283.30),(85,38,'RippinGroup',8,489.72),(25,68,'HintzInc',1,223.18),(68,100,'BoyleandSons',8,275.15),(10,84,'Herzog,RitchieandWolf',3,90.42),(22,93,'Gleason-Muller',4,74.52),(78,87,'Herman,McDermottandAltenwerth',10,231.09),(89,41,'Pouros-Hilll',12,395.32),(51,37,'KleinLLC',10,1.79),(32,23,'Volkman,GottliebandFay',8,15.23),(2,41,'Wunsch,SkilesandMosciski',2,107.66),(78,79,'Herman,McDermottandAltenwerth',1,225.45);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24  1:03:30

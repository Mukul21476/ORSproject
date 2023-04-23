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
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `ProductID` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `customerID` int NOT NULL,
  KEY `ProductID` (`ProductID`),
  KEY `customerID` (`customerID`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (73,'Bruen,OsinskiandMante',10),(31,'Fisher,GoldnerandDare',32),(82,'KesslerandSons',61),(41,'Lang-Watsica',83),(45,'Collins-Kiehn',31),(63,'Crona,BernierandThompson',25),(84,'Mann-Friesen',13),(40,'Wolff,SchmidtandKeebler',96),(56,'Mayer,SatterfieldandKshlerin',35),(23,'Schuster-Grant',58),(71,'LehnerGroup',71),(67,'VonRuedenGroup',62),(73,'Bruen,OsinskiandMante',67),(21,'Durgan,GoyetteandZemlak',53),(32,'Volkman,GottliebandFay',72),(33,'Lowe-Fadel',20),(56,'Mayer,SatterfieldandKshlerin',61),(83,'Stiedemann,MrazandWalter',15),(81,'Cruickshank,WalkerandBins',1),(87,'HauckGroup',97),(99,'SchuppeInc',30),(77,'Ratke-Buckridge',47),(91,'SchowalterInc',84),(46,'Berge-Satterfield',14),(47,'Harris,WaelchiandMcCullough',66),(52,'Terry-Renner',57),(33,'Lowe-Fadel',2),(83,'Stiedemann,MrazandWalter',22),(37,'Ebert,EmardandWalter',15),(2,'Wunsch,SkilesandMosciski',80),(62,'Robel,SchimmelandMonahan',54),(92,'Kerluke,ToyandCummerata',82),(61,'Lehner,KozeyandKuhlman',14),(33,'Lowe-Fadel',83),(76,'Altenwerth-Daniel',23),(43,'BergstromandSons',38),(39,'SengerGroup',4),(23,'Schuster-Grant',77),(70,'Bogisich,BeattyandHirthe',47),(63,'Crona,BernierandThompson',16),(53,'Ratke,GoodwinandRussel',93),(80,'Howell,DickinsonandDietrich',44),(25,'HintzInc',36),(40,'Wolff,SchmidtandKeebler',98),(17,'DuBuque-Cormier',96),(33,'Lowe-Fadel',76),(91,'SchowalterInc',22),(47,'Harris,WaelchiandMcCullough',13),(64,'RoobInc',13),(72,'MetzLLC',17),(26,'Rosenbaum-Corkery',72),(2,'Wunsch,SkilesandMosciski',27),(27,'Wolf-Halvorson',77),(53,'Ratke,GoodwinandRussel',4),(48,'KiehnGroup',39),(62,'Robel,SchimmelandMonahan',73),(34,'Hodkiewicz-Kessler',58),(39,'SengerGroup',46),(48,'KiehnGroup',23),(35,'BergeLLC',42),(39,'SengerGroup',78),(48,'KiehnGroup',22),(81,'Cruickshank,WalkerandBins',48),(52,'Terry-Renner',51),(19,'Mayert-Glover',76),(87,'HauckGroup',1),(82,'KesslerandSons',76),(35,'BergeLLC',95),(90,'Hartmann-Keebler',54),(51,'KleinLLC',14),(100,'McGlynnandSons',43),(13,'ThielGroup',41),(88,'Swaniawski,NienowandStanton',45),(25,'HintzInc',11),(68,'BoyleandSons',13),(100,'McGlynnandSons',96),(7,'FayGroup',16),(23,'Schuster-Grant',70),(18,'HermannLLC',71),(33,'Lowe-Fadel',39),(30,'Nikolaus,MuellerandJakubowski',57),(83,'Stiedemann,MrazandWalter',76),(20,'Boehm,StrackeandDeckow',14),(89,'Pouros-Hilll',47),(88,'Swaniawski,NienowandStanton',60),(46,'Berge-Satterfield',59),(67,'VonRuedenGroup',11),(53,'Ratke,GoodwinandRussel',76),(65,'Wilkinson,NienowandSchroeder',23),(76,'Altenwerth-Daniel',37),(27,'Wolf-Halvorson',24),(89,'Pouros-Hilll',77),(33,'Lowe-Fadel',61),(50,'Farrell,MarksandLangworth',30),(34,'Hodkiewicz-Kessler',78),(79,'Ritchie-Marquardt',61),(77,'Ratke-Buckridge',11),(88,'Swaniawski,NienowandStanton',88),(66,'Fisher-Parker',27),(22,'Gleason-Muller',69);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
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

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductBrand` varchar(255) NOT NULL,
  `AvailableQty` int DEFAULT NULL,
  `ProductReviews` int DEFAULT NULL,
  `ProductDescription` text,
  `ProductPrice` decimal(10,2) NOT NULL,
  `categoryID` int DEFAULT NULL,
  `ProductSeller` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `categoryID` (`categoryID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `productcategory` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cormier-Bins','Blue Ocean',499,2,'The latest model with advanced features.',6266.00,6,1),(2,'Wunsch,SkilesandMosciski','Radiant',33,5,'A large and powerful tablet.',5575.00,1,2),(3,'Kunze-Kutch','Spark',112,2,'Noise-cancelling and comfortable.',2025.00,4,3),(4,'Heidenreich-Ernser','Evergreen',378,3,'A powerful device for professionals.',9071.00,7,4),(5,'Schumm-Skiles','Skyline',18,3,'A powerful device for professionals.',4127.00,6,5),(6,'JohnsLLC','Thunderbird',20,2,'A large and powerful tablet.',9937.00,7,6),(7,'FayGroup','Apex',370,4,'A smartwatch with health monitoring features.',9298.00,7,7),(8,'Marvin,RutherfordandLynch','Rainbow',150,2,'A powerful device for professionals.',1645.00,5,8),(9,'Gutkowski,HilpertandKoch','Sunrise',290,4,'A powerful device for professionals.',8907.00,4,9),(10,'Herzog,RitchieandWolf','Sunset',94,3,'Noise-cancelling and comfortable.',8012.00,6,10),(11,'FritschGroup','Phoenix',218,3,'Stream 4K HDR content with the latest device and Siri remote.',6949.00,7,11),(12,'Weber,RathandReilly','Dove',496,5,'A powerful device for professionals.',8036.00,2,12),(13,'ThielGroup','Firebird',219,5,'Stream 4K HDR content with the latest device and Siri remote.',5983.00,3,13),(14,'WaelchiGroup','Oceanic',32,4,'A powerful device for professionals.',3629.00,3,14),(15,'Ruecker,MertzandHagenes','Stellar',366,3,'A large and powerful tablet.',8583.00,1,15),(16,'KlockoandSons','Galactic',219,4,'A powerful device for professionals.',8889.00,1,16),(17,'DuBuque-Cormier','Aurora',360,2,'Stream 4K HDR content with the latest device and Siri remote.',3274.00,5,17),(18,'HermannLLC','Skyhawk',309,4,'Stream 4K HDR content with the latest device and Siri remote.',9108.00,2,18),(19,'Mayert-Glover','Eclipse',491,2,'The latest model with advanced features.',2511.00,6,19),(20,'Boehm,StrackeandDeckow','Diamond',305,3,'A powerful device for professionals.',520.00,3,20),(21,'Durgan,GoyetteandZemlak','Golden',117,4,'A powerful device for professionals.',6926.00,5,21),(22,'Gleason-Muller','Silver',167,5,'Stream 4K HDR content with the latest device and Siri remote.',1064.00,1,22),(23,'Schuster-Grant','Bronze',397,5,'A powerful device for professionals.',6025.00,5,23),(24,'HintzandSons','Platinum',211,3,'A smartwatch with health monitoring features.',3246.00,2,24),(25,'HintzInc','Sapphire',82,3,'A smartwatch with health monitoring features.',8436.00,2,25),(26,'Rosenbaum-Corkery','Ruby',377,3,'A smartwatch with health monitoring features.',5585.00,1,26),(27,'Wolf-Halvorson','Emerald',253,2,'A smartwatch with health monitoring features.',7044.00,2,27),(28,'NicolasLLC','Opal',171,2,'A smartwatch with health monitoring features.',4010.00,4,28),(29,'Altenwerth-Thompson','Topaz',115,5,'Stream 4K HDR content with the latest device and Siri remote.',5569.00,2,29),(30,'Nikolaus,MuellerandJakubowski','Pearl',479,4,'A large and powerful tablet.',3190.00,2,30),(31,'Fisher,GoldnerandDare','Diamond',14,3,'A powerful device for professionals.',472.00,6,31),(32,'Volkman,GottliebandFay','Ivory',38,2,'Noise-cancelling and comfortable.',1305.00,6,32),(33,'Lowe-Fadel','Mystic',135,3,'A powerful device for professionals.',6034.00,4,33),(34,'Hodkiewicz-Kessler','Cosmic',353,3,'A large and powerful tablet.',3585.00,1,34),(35,'BergeLLC','Galaxy',329,2,'Stream 4K HDR content with the latest device and Siri remote.',4029.00,2,35),(36,'HagenesLLC','Solar',347,3,'Noise-cancelling and comfortable.',2804.00,1,36),(37,'Ebert,EmardandWalter','Lunar',339,3,'A smartwatch with health monitoring features.',6889.00,5,37),(38,'Hane-Hilpert','Nebula',496,2,'A large and powerful tablet.',8902.00,6,38),(39,'SengerGroup','Meteor',479,5,'The latest model with advanced features.',9492.00,1,39),(40,'Wolff,SchmidtandKeebler','Stardust',13,2,'A smartwatch with health monitoring features.',9243.00,2,40),(41,'Lang-Watsica','Celestial',462,2,'Stream 4K HDR content with the latest device and Siri remote.',3301.00,3,41),(42,'Kassulke-Pfeffer','Galactic',128,4,'A smartwatch with health monitoring features.',1154.00,6,42),(43,'BergstromandSons','Cosmic',123,3,'A large and powerful tablet.',9133.00,3,43),(44,'Gerhold,FeilandRoob','Universe',113,3,'Stream 4K HDR content with the latest device and Siri remote.',9315.00,1,44),(45,'Collins-Kiehn','Orbit',50,3,'A powerful device for professionals.',200.00,4,45),(46,'Berge-Satterfield','Stellar',13,5,'A powerful device for professionals.',5143.00,3,46),(47,'Harris,WaelchiandMcCullough','Meteor',418,3,'A smartwatch with health monitoring features.',6462.00,2,47),(48,'KiehnGroup','Galactic',448,3,'Stream 4K HDR content with the latest device and Siri remote.',1647.00,3,48),(49,'FaheyInc','Solar',338,3,'A powerful device for professionals.',6509.00,1,49),(50,'Farrell,MarksandLangworth','Lunar',463,2,'A large and powerful tablet.',6730.00,7,50),(51,'KleinLLC','Solaris',353,4,'A smartwatch with health monitoring features.',8989.00,3,51),(52,'Terry-Renner','Aquatic',150,2,'The latest model with advanced features.',3011.00,4,52),(53,'Ratke,GoodwinandRussel','Ocean',338,3,'A smartwatch with health monitoring features.',7799.00,5,53),(54,'Kohler-Ondricka','River',240,2,'A smartwatch with health monitoring features.',8874.00,1,54),(55,'WittingInc','Stream',114,3,'Noise-cancelling and comfortable.',533.00,1,55),(56,'Mayer,SatterfieldandKshlerin','Cascade',96,2,'A powerful device for professionals.',9316.00,5,56),(57,'KeeblerLLC','Fountain',21,4,'Stream 4K HDR content with the latest device and Siri remote.',3809.00,5,57),(58,'Sporer-Parisian','River',446,4,'The latest model with advanced features.',7617.00,3,58),(59,'Leuschke,GrahamandWalker','Stream',342,4,'A smartwatch with health monitoring features.',8548.00,3,59),(60,'Ernser,LeschandWyman','Mountain',134,2,'A smartwatch with health monitoring features.',3196.00,3,60),(61,'Lehner,KozeyandKuhlman','Alpine',269,2,'A powerful device for professionals.',4762.00,7,61),(62,'Robel,SchimmelandMonahan','Summit',259,3,'A large and powerful tablet.',8685.00,5,62),(63,'Crona,BernierandThompson','Peak',197,4,'Noise-cancelling and comfortable.',4131.00,4,63),(64,'RoobInc','Mountain',268,5,'Noise-cancelling and comfortable.',2723.00,1,64),(65,'Wilkinson,NienowandSchroeder','Alpine',161,5,'Noise-cancelling and comfortable.',3109.00,1,65),(66,'Fisher-Parker','Summit',29,2,'Noise-cancelling and comfortable.',4698.00,7,66),(67,'VonRuedenGroup','Peak',64,3,'The latest model with advanced features.',9349.00,3,67),(68,'BoyleandSons','Hill',361,4,'Noise-cancelling and comfortable.',7270.00,1,68),(69,'WolffGroup','Valley',400,5,'Stream 4K HDR content with the latest device and Siri remote.',1880.00,5,69),(70,'Bogisich,BeattyandHirthe','Forest',437,3,'A large and powerful tablet.',6876.00,6,70),(71,'LehnerGroup','Jungle',202,2,'The latest model with advanced features.',927.00,3,71),(72,'MetzLLC','Woods',255,4,'A powerful device for professionals.',6946.00,2,72),(73,'Bruen,OsinskiandMante','Rainforest',271,2,'A large and powerful tablet.',9949.00,1,73),(74,'McKenzieGroup','Wild',194,4,'A powerful device for professionals.',7163.00,5,74),(75,'Towne,HettingerandPaucek','Savannah',47,2,'A smartwatch with health monitoring features.',3278.00,6,75),(76,'Altenwerth-Daniel','Prairie',77,4,'A smartwatch with health monitoring features.',411.00,7,76),(77,'Ratke-Buckridge','Desert',253,4,'A powerful device for professionals.',5525.00,2,77),(78,'Herman,McDermottandAltenwerth','Sand',183,4,'A smartwatch with health monitoring features.',5336.00,2,78),(79,'Ritchie-Marquardt','Dunes',346,4,'Stream 4K HDR content with the latest device and Siri remote.',1811.00,1,79),(80,'Howell,DickinsonandDietrich','Rocks',307,2,'A large and powerful tablet.',3444.00,7,80),(81,'Cruickshank,WalkerandBins','Canyon',2,3,'Stream 4K HDR content with the latest device and Siri remote.',2344.00,6,81),(82,'KesslerandSons','Glacier',203,2,'A smartwatch with health monitoring features.',6402.00,1,82),(83,'Stiedemann,MrazandWalter','Arctic',354,3,'A powerful device for professionals.',4116.00,4,83),(84,'Mann-Friesen','Tundra',351,4,'Noise-cancelling and comfortable.',3647.00,5,84),(85,'RippinGroup','Polar',414,3,'Stream 4K HDR content with the latest device and Siri remote.',8301.00,5,85),(86,'Streich-O\'Connell','Arctic',67,5,'A large and powerful tablet.',3929.00,3,86),(87,'HauckGroup','Tundra',105,2,'The latest model with advanced features.',4866.00,7,87),(88,'Swaniawski,NienowandStanton','Polar',324,3,'A powerful device for professionals.',7140.00,1,88),(89,'Pouros-Hilll','Alpine',148,5,'Noise-cancelling and comfortable.',1998.00,4,89),(90,'Hartmann-Keebler','Arctic',401,4,'The latest model with advanced features.',8317.00,3,90),(91,'SchowalterInc','Tundra',265,4,'A powerful device for professionals.',5325.00,2,91),(92,'Kerluke,ToyandCummerata','Polar',117,5,'Noise-cancelling and comfortable.',8304.00,5,92),(93,'Bosco,RoobandSchneider','Highland',168,3,'A large and powerful tablet.',5456.00,1,93),(94,'Williamson,TrantowandKiehn','Country',466,4,'The latest model with advanced features.',1785.00,1,94),(95,'Lockman-Hartmann','River',383,3,'A powerful device for professionals.',9370.00,1,95),(96,'Romaguera,HellerandChamplin','Stream',55,2,'A smartwatch with health monitoring features.',1393.00,4,96),(97,'Bradtke,BeattyandSawayn','Lake',471,4,'A large and powerful tablet.',8949.00,6,97),(98,'Ortiz-Crist','Ocean',485,2,'A powerful device for professionals.',6917.00,7,98),(99,'SchuppeInc','Sea',250,2,'Noise-cancelling and comfortable.',3699.00,7,99),(100,'McGlynnandSons','Beach.',324,3,'Noise-cancelling and comfortable.',9004.00,3,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23  1:26:30

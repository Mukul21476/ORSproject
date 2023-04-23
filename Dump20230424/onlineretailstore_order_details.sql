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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `tracking_id` int NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(80) NOT NULL,
  `location` varchar(90) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'Jason Stone','7173 Yvonne Dale\nNorth Margaretburgh, WV 52109','2023-07-31'),(2,'Samantha Harrison','2407 Daniel Highway\nWest Thomas, MH 67692','2023-06-25'),(3,'Angela Frazier','3985 Robinson Mill\nWaynestad, MO 66257','2023-03-13'),(4,'Lisa Mullins','24269 Lawrence Greens\nPierceberg, VI 78784','2023-11-26'),(5,'Regina Hall','568 Dustin Grove\nNew Amandaborough, DC 38177','2023-05-13'),(6,'Debbie Hoover','89059 Christopher Hills Apt. 657\nEast Olivia, KY 16907','2023-07-13'),(7,'Whitney Reilly','72593 Garcia Ways\nEast Danielfurt, MT 97513','2023-10-24'),(8,'Gary Marks','USNV Watts\nFPO AE 56108','2023-06-17'),(9,'Brian Mosley','48127 Hayes Islands\nWest Micheleberg, GU 65651','2023-01-27'),(10,'Colleen Farley','7596 Taylor Bypass Apt. 725\nNorth Nicole, MS 06088','2023-07-19'),(11,'David Barnes','1834 Jones Island\nLake Patrickbury, NV 72075','2023-02-12'),(12,'Joshua Cervantes','185 Ward Mill Suite 806\nSouth Tracey, WI 47974','2023-04-23'),(13,'Brian Jensen','53289 Howell Junction\nCarterville, WI 96280','2023-01-12'),(14,'Barbara Guzman','544 Rubio Streets Apt. 824\nPetersonfurt, GU 52189','2023-12-30'),(15,'Gregory Cooper','06280 Juan Springs\nAlexandermouth, MT 96134','2023-10-19'),(16,'Theresa Frost','4931 Timothy Skyway Apt. 591\nLake Valeriefurt, AZ 15471','2023-04-01'),(17,'Kristen Murphy','218 Jacob Square Suite 265\nRuizchester, ND 83859','2023-12-05'),(18,'Nathan Myers','816 Angela Court\nJosephberg, PA 23868','2023-06-27'),(19,'Lindsey Cordova','31023 Kevin Extension\nPort Jasonburgh, MD 35594','2023-06-13'),(20,'Karen Clarke','90644 Amy Forest\nNorth Stevenmouth, MN 42802','2023-05-05'),(21,'Cody Evans','USNS Franklin\nFPO AE 74548','2023-05-10'),(22,'Shaun Osborne','09051 Timothy Canyon\nMiachester, MH 38542','2023-10-13'),(23,'Eric Bell','0500 Mike Port\nConwayhaven, TN 29691','2023-09-09'),(24,'James Odom','737 Santos Knoll\nPort Anthony, AS 04383','2023-12-14'),(25,'Russell Davis','96595 Martinez Course Suite 474\nColemouth, MS 15846','2023-12-27'),(26,'Keith Pierce','796 Jennings Unions Suite 018\nNew Anthony, VI 50454','2023-03-13'),(27,'Kendra Bradshaw','7778 Frederick Port Apt. 254\nSouth Scottside, NM 70847','2023-09-07'),(28,'Stephen Brown','70091 Michael Fort\nSilvaberg, GA 83110','2023-09-11'),(29,'Chris James','3214 Theresa Mount\nDeborahburgh, KS 36684','2023-09-18'),(30,'Jennifer Dixon','23375 Johnson Terrace\nDavidmouth, MN 68486','2023-05-31'),(31,'Crystal King','PSC 9118, Box 1805\nAPO AA 43795','2023-12-27'),(32,'Tiffany Walker','93676 Karen Hills\nEast Lauramouth, WI 03118','2023-06-07'),(33,'Victor Davis','183 Thomas Turnpike\nNew Wendy, ND 25372','2023-10-16'),(34,'Francisco Reed','1735 Nelson Plaza Apt. 577\nWest Mark, KY 91013','2023-06-16'),(35,'Stephanie Miller','663 Moon Oval\nJessicaport, MI 32847','2023-08-05'),(36,'Brittany Mathews','Unit 2439 Box 1501\nDPO AP 18448','2023-07-05'),(37,'Michelle Patterson','46711 Cain Ports\nSouth Abigail, MA 69195','2023-12-30'),(38,'Margaret Henderson','20913 Snyder Knolls\nWilsonstad, NV 41814','2023-09-17'),(39,'Kaitlyn Schmidt','398 Cody Flats Suite 927\nNew Josephtown, NY 22495','2023-11-19'),(40,'Cynthia Flores','6418 Wang Mount\nKingmouth, FM 49305','2023-11-13'),(41,'Caleb Schultz','1222 Larry Plaza\nEast Kiarachester, SC 14619','2023-08-17'),(42,'William Munoz','7569 Wells Valleys\nSouth Stevenport, MI 97439','2023-01-30'),(43,'John Atkins','8464 Kevin Turnpike Suite 540\nWilliamchester, AZ 30843','2023-02-12'),(44,'Garrett Thompson','8146 May Tunnel Apt. 297\nNew Andrew, LA 26632','2023-03-08'),(45,'Shawn Chang','89345 Jonathan Plain\nWest Samantha, FM 29400','2023-05-29'),(46,'Kristin Molina','9046 Hunt Roads\nPowershaven, NH 88621','2023-09-05'),(47,'Charles Cross','123 Bell Pines\nSmithburgh, ND 94462','2023-02-20'),(48,'Derrick Howell','8954 Baker Point Suite 462\nNorth Mary, MT 83330','2023-07-13'),(49,'Deanna Cox','968 David Springs Apt. 189\nNorth Shawn, NY 12742','2023-01-07'),(50,'Kevin Brown','7287 Jason Lake Suite 580\nMaxwellview, NE 33560','2023-09-14'),(51,'Amy Frank','088 Clark Station\nDavidmouth, AK 11882','2023-03-10'),(52,'Lance Mcdaniel','PSC 2109, Box 8894\nAPO AA 27245','2023-03-17'),(53,'Cheryl Nguyen','6155 Williamson Harbor\nMargaretstad, OH 98557','2023-04-10'),(54,'Deanna Scott','1946 Carol Flat Apt. 189\nNew Kaitlyn, VI 45399','2023-07-29'),(55,'Beverly Willis','994 Barker Mall\nWest Thomas, GA 89812','2023-07-04'),(56,'Michael Haas','155 Williams Manor Suite 972\nLake Laurenport, DC 73353','2023-04-22'),(57,'Alisha Hall','7253 Johnson Throughway Suite 176\nPort Laurie, CA 02560','2023-03-21'),(58,'Bonnie Clark','6694 Lauren Summit\nNew Laurenmouth, NM 03655','2023-08-18'),(59,'Dana Hunter','4914 Mooney Dam\nMichaelberg, NE 04530','2023-07-22'),(60,'Anthony Taylor','57056 Garza Mews\nLake John, RI 39155','2023-04-30'),(61,'Kyle Webb','37426 Payne Mission\nWest Donaldmouth, HI 63447','2023-05-29'),(62,'Robert Kelley','5478 John Path Apt. 952\nMichelleshire, AR 24287','2023-11-06'),(63,'Paige Hughes','317 Derek Flat Suite 232\nWillismouth, CA 65415','2023-11-14'),(64,'Derek Lynch','43141 David Flat\nLindseyview, MO 02685','2023-03-24'),(65,'Monica Morales','8777 Linda Ferry\nNew Melissa, MN 59773','2023-12-08'),(66,'Crystal Obrien','05585 Foley Springs\nSuarezmouth, PW 32014','2023-04-14'),(67,'Jennifer Scott','USS Callahan\nFPO AP 57013','2023-11-08'),(68,'Melanie Pierce MD','907 Fernandez Common\nWest Tina, AZ 53541','2023-08-08'),(69,'Joshua Adkins','0031 Michele Manor\nBrianburgh, MA 93676','2023-11-15'),(70,'Daniel Jones','63593 Allison Ridges\nWebbborough, TX 84429','2023-12-11'),(71,'Dalton Cisneros','63290 Medina Loop Apt. 801\nSouth Dustin, NJ 33953','2023-11-01'),(72,'Deborah Fry','62395 John Prairie Apt. 669\nMichaelville, MH 54421','2023-11-13'),(73,'Amanda Mason','511 Ashley Branch Suite 412\nHernandezburgh, DC 58563','2023-08-24'),(74,'Brian Ortiz','87416 Richard Trail Apt. 728\nNorth Matthewstad, ME 11916','2023-06-26'),(75,'James Davis','554 Robin Brooks\nJenniferfort, UT 11661','2023-12-20'),(76,'Lynn Parker','85283 Jackson Points\nCarolineton, MP 17796','2023-09-10'),(77,'Richard Francis','986 Alicia Square\nDebbiemouth, MH 66024','2023-06-19'),(78,'Michael Vaughan','878 Gonzalez Summit Apt. 215\nNorth Robertland, CA 27147','2023-10-03'),(79,'Jessica Jennings','203 Cindy Plain Apt. 765\nPort Latoya, AL 04107','2023-03-19'),(80,'Austin Pineda','474 Daniel Avenue Apt. 166\nLake Amyview, IL 67863','2023-02-24'),(81,'Sandra Compton','PSC 1883, Box 0699\nAPO AP 35880','2023-06-08'),(82,'Jose Norton','3779 James Loaf\nMatthewport, CA 38550','2023-10-02'),(83,'Nina Fernandez','Unit 7933 Box 0847\nDPO AP 30711','2023-12-17'),(84,'Todd Rios','54813 Alyssa Prairie Suite 707\nGoodfurt, ME 84978','2023-01-08'),(85,'Mary Cherry','602 Vega Mountain Apt. 338\nPort Lisa, PW 98940','2023-05-25'),(86,'Jessica Sullivan','9834 Janet Shore\nLaurafort, MO 44570','2023-01-22'),(87,'Laura Blair','8169 Albert Forge\nJillfort, RI 36918','2023-03-29'),(88,'James Price','USS Mccoy\nFPO AP 49437','2023-07-10'),(89,'Adam Hampton','560 Adam Point Apt. 575\nJeremyberg, WY 87482','2023-09-15'),(90,'Heather Bennett','951 Casey Hollow Apt. 906\nJohnsonshire, DE 97036','2023-07-01'),(91,'Daniel Clark','PSC 9273, Box 0424\nAPO AP 16336','2023-05-12'),(92,'Richard Wilson','951 Perez Village Suite 140\nPort Brittanychester, OK 43655','2023-02-03'),(93,'Collin Larson','407 Anthony Summit\nPort Timothy, NC 57373','2023-02-20'),(94,'Larry Hughes','PSC 4813, Box 4542\nAPO AE 54365','2023-04-16'),(95,'Mark Moreno','55450 Nathan Fall\nDawnstad, SC 23779','2023-10-18'),(96,'Nicholas Page','0377 Ellison Ford\nJennaland, IN 28118','2023-01-28'),(97,'Erin Saunders','459 French Locks\nNew William, GA 87405','2023-10-30'),(98,'Sheila James DVM','2214 Cruz Lake Apt. 637\nWest Craig, SC 58072','2023-01-01'),(99,'John Hamilton','9890 Robertson Key\nChristinashire, NY 86031','2023-02-12'),(100,'James Friedman','35371 Thompson Greens\nThomasstad, IL 88850','2023-05-23');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24  1:03:28

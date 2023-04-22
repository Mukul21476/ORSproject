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
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` int NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(70) NOT NULL,
  `seller_address` varchar(90) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Crystal Murray','7318 West Brooks Apt. 514\nMcmahonland, DE 09309'),(2,'Derek Roman','00883 Hendrix Mission Apt. 316\nWest Davidview, PR 53806'),(3,'Cody Leon','5574 Wagner Mission Apt. 067\nBakerberg, IL 60094'),(4,'Kendra Arroyo','157 Kyle Field\nWest Danielle, IA 71349'),(5,'Kenneth Johnson','2843 Butler Extensions Suite 952\nThomasville, TN 92987'),(6,'William Jackson','8322 Branch Viaduct\nLestertown, MT 85244'),(7,'Allison Jones','877 Morgan Radial Suite 568\nLake Michele, WA 95810'),(8,'Alyssa Mitchell','069 Sarah Gardens Suite 991\nEast Roberta, WI 40539'),(9,'Patricia Mccullough','667 Robin Coves\nEast Marie, NC 92814'),(10,'Ryan Ramirez','8784 Sweeney Rapid Suite 058\nLake Jamesport, AK 42824'),(11,'Melissa Perez','5426 Brianna Gateway Apt. 563\nHollandfurt, MH 20298'),(12,'Mike Sanchez','Unit 6900 Box 3390\nDPO AE 87534'),(13,'Jordan Shea','PSC 4503, Box 6397\nAPO AA 83404'),(14,'John Rogers','4951 Bryant Trafficway Suite 811\nNorth Bradleyfurt, AK 67620'),(15,'William Potts','6604 David Ferry\nPerezshire, NJ 58871'),(16,'Wyatt Noble','USS Turner\nFPO AP 50724'),(17,'Catherine Braun','23235 Angela Manors\nPatelton, SC 61186'),(18,'Sandra Gilbert','158 Collier Crossroad Apt. 060\nJillbury, GU 47776'),(19,'Mario Randolph','2287 Moore Crossroad\nMccoystad, ND 94686'),(20,'Jody Lowery','2055 Allen View Suite 516\nJacksonport, NJ 91294'),(21,'Christopher Thompson','0808 Jason Loaf\nEast Jeffreyfurt, AR 72696'),(22,'Robert Rodriguez','913 Dunn Mountains\nSouth Christopherton, ME 54454'),(23,'Susan Rodriguez','21033 Angela Common\nTranfurt, UT 32612'),(24,'Stephanie Park','194 Peterson Passage\nNorth Justin, VI 27100'),(25,'Helen Mcdowell','PSC 9047, Box 3239\nAPO AA 19627'),(26,'Patricia Carter','70855 Poole Parkways\nEast Meganburgh, VA 21099'),(27,'Kyle Allen','PSC 6470, Box 8364\nAPO AE 53395'),(28,'Todd Washington','69085 Melissa Rapids Suite 213\nStanleyfurt, MS 81624'),(29,'Micheal Koch','6089 Estrada Stravenue Suite 923\nSouth Charlesstad, ND 43838'),(30,'Benjamin Kaufman','72538 Samuel Islands Suite 157\nWoodardstad, CA 53244'),(31,'Amy Mcmillan','7154 Wilson Circle Apt. 225\nNormaville, WV 96477'),(32,'Sheri Jackson','305 Candace Neck\nAdamsberg, WI 49106'),(33,'Ethan Maldonado','63167 Jacqueline Creek\nLake Richard, PW 49217'),(34,'John Rodgers','8226 Daniel Summit\nWest Rachelland, VA 12175'),(35,'Mrs. Kimberly Phillips','427 Rose Ways Apt. 415\nSharonmouth, AL 59316'),(36,'Kristie Hughes','758 Shaw Islands Apt. 752\nWest Nicole, MS 14402'),(37,'Marissa Jimenez','660 Jackie Vista\nSouth Deborahview, WA 55364'),(38,'Carmen Thomas','5241 Madeline Cliffs Suite 974\nJonesfort, MS 12182'),(39,'Joseph Green','613 Tony Garden Apt. 913\nJohnsonport, AS 97393'),(40,'Anthony Cooper PhD','77943 Aaron Island Apt. 753\nKatelynmouth, GA 57972'),(41,'Elizabeth Ortiz','509 Archer Field Suite 834\nNorth Kevinburgh, AZ 06561'),(42,'Andrew Newman','024 Jennifer Radial Suite 241\nMistyville, MA 43356'),(43,'Peter Hall','9455 Michael Roads\nSouth Barbara, WI 37046'),(44,'Cheryl Griffin','924 Theresa Greens Apt. 847\nBrianville, AK 40402'),(45,'James Thomas','USCGC Haley\nFPO AA 76596'),(46,'Lisa Lopez','272 Bradley Mill\nBrownmouth, ME 14705'),(47,'Angela Kelley','153 Lauren Alley Suite 181\nPort Timothy, AS 12684'),(48,'James Wade','55674 Benson Square\nSouth Gloria, FL 75795'),(49,'John Barnes','445 Case Canyon\nNorth Tracy, SD 20681'),(50,'Dennis Mccormick','285 Miranda Points\nWest Caitlyn, OK 98244'),(51,'Audrey Gonzales','78582 Amanda Green\nNew Robertbury, FL 72148'),(52,'Jacob Harris DDS','134 Melissa Stravenue\nEast James, OK 09852'),(53,'Mrs. Margaret Myers','931 Laura Dam Apt. 371\nMaxtown, IN 83008'),(54,'Daniel Berry','4779 Donna Crest Suite 343\nPort Travis, LA 68827'),(55,'Christopher Walton','22553 Donna Way Suite 658\nWebbberg, ID 29291'),(56,'David Salas','4521 Edgar Wells Apt. 577\nKarenton, AL 06432'),(57,'Shelly Lewis','USNS Wong\nFPO AP 05165'),(58,'Amy Griffith','56407 Kristin Terrace Suite 866\nHamptonstad, HI 84947'),(59,'Renee Crawford','1018 Craig Prairie\nThomasville, PW 89895'),(60,'Jennifer Lane','4964 Lisa Parkway\nDavidmouth, NJ 67263'),(61,'Denise Hernandez','406 Dale Plains Apt. 018\nNorth Lisahaven, CO 12417'),(62,'Susan Patel','603 Montes Road\nWest Kylechester, IA 09693'),(63,'Timothy Martin','523 Medina Circles\nPort Maryhaven, MN 66313'),(64,'Kenneth May','732 Morris Loaf Apt. 009\nGarnerfort, VA 48720'),(65,'Mrs. Erica Peterson','Unit 6767 Box 7248\nDPO AA 32485'),(66,'Frank Thomas','64068 Hendricks Heights Apt. 402\nGonzalezville, GA 95692'),(67,'Seth Carter','22303 Dennis Villages Suite 653\nSharptown, WI 86115'),(68,'Gregory Ho','750 Thompson Streets\nHowellshire, VA 76793'),(69,'Juan Arias','1087 Jerome Mall\nManningside, PW 39575'),(70,'Adrian Holland','768 Chad Harbor\nEast Destinyville, OH 05480'),(71,'Emily Shields','3206 Michael Valleys Suite 917\nNorth Angelaberg, MH 81438'),(72,'Anita Wilson','3264 Joshua Stream Suite 011\nNorth Derek, WY 26188'),(73,'Mrs. Misty Hendricks','8584 Schmitt Hollow Apt. 300\nPort Sarah, VI 21789'),(74,'Alexis Lyons','86964 Todd Court\nWest Matthewmouth, NE 08262'),(75,'Vanessa Kelly','756 Timothy Estate\nDonnaport, SD 43964'),(76,'John Jimenez','039 Waller Junction Apt. 271\nNorth Pamelaside, IL 31170'),(77,'Elizabeth Fox','0622 Donna Loaf\nNorth Paige, TX 75610'),(78,'Shawn Andersen','7257 Claudia Forges Suite 478\nPort Kathleenton, KY 44683'),(79,'Elaine Combs','36923 Alexander Village\nCarrstad, OR 15199'),(80,'Elizabeth Pierce','22422 Michael Place\nPort Jaclynhaven, OR 81509'),(81,'Patricia Walls','271 Shelton Heights\nNorth Melissa, OH 86150'),(82,'Nancy Johnson','9464 Mccormick Drive\nSouth Tracey, SC 94888'),(83,'Kenneth Evans','90255 Fox Lodge Suite 339\nLake Donald, OH 38268'),(84,'James Martin','9673 Wilson Place\nAshleychester, TX 45791'),(85,'Michael Anderson','273 Scott Cove Apt. 449\nWest Joseph, GA 16216'),(86,'Eric Rodriguez','USS Rodriguez\nFPO AE 73431'),(87,'Jessica White','9795 Jared Flat Suite 980\nNew Brittanyside, IL 76485'),(88,'Marvin Ho','7860 Jackson Manor Suite 090\nParsonsland, AK 32610'),(89,'Paul Yu','703 Morris Center Suite 873\nNorth Rodneyport, NM 90364'),(90,'Donna Jones','55979 Tammy Course\nBrownhaven, GU 64445'),(91,'Desiree Stewart','21403 Christopher Highway\nLongstad, DE 72199'),(92,'Nicholas Poole','775 Dustin Well Apt. 614\nNguyenborough, MI 60712'),(93,'Alyssa Mendoza','32512 Jacqueline Garden Apt. 654\nPeterport, MI 09681'),(94,'Kimberly Miller','918 Joseph Extensions\nNicoleton, NM 73166'),(95,'Michele Ford','0964 Colleen Prairie Apt. 359\nLittlechester, AZ 12084'),(96,'Nicolas Guerrero','54299 Aaron Ways Suite 643\nPort Mariaview, CO 06949'),(97,'Dennis Wilson','05057 Alicia Camp\nSouth Joseph, PR 71604'),(98,'Anna Salazar','359 Jackson Tunnel Suite 229\nNorth Barbara, AS 63017'),(99,'Jack Paul','USCGC Zuniga\nFPO AA 14499'),(100,'Lisa Dorsey','2479 Zavala Spur\nNew Tiffanymouth, CT 85222');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23  1:26:28

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `delivery_address` varchar(90) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_amount` int NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `coupon_id` int DEFAULT NULL,
  `tracking_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `tracking_id` (`tracking_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`coupon_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`tracking_id`) REFERENCES `order_details` (`tracking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-04-24 00:57:41','73496 Brown Curve Suite 991\nSouth Allisontown, GU 19447','Delivered',54,'Visa',NULL,26),(2,'2023-04-24 00:57:41','3308 Wilson Pine Suite 075\nDavidview, MA 62104','Delivered',3,'Visa',21,84),(3,'2023-04-24 00:57:41','59732 Dean Knoll\nWest Tammytown, WI 51793','Payment Complete',492,'PayPal',62,83),(4,'2023-04-24 00:57:41','3343 Henderson Springs Suite 350\nNew Christinebury, OH 94731','Delivered',188,'Visa',7,64),(5,'2023-04-24 00:57:41','425 Dorsey Tunnel Suite 844\nDenisebury, ME 58233','Dispatched',284,'Visa',NULL,73),(6,'2023-04-24 00:57:41','4769 Lindsey Ports Suite 584\nNew Gregory, KS 08321','Payment Complete',231,'Mastercard',90,41),(7,'2023-04-24 00:57:41','27036 Ferguson Stream Suite 775\nSouth Alexander, OH 39832','Dispatched',400,'PayPal',1,22),(8,'2023-04-24 00:57:41','37910 Joseph Haven Apt. 090\nLake Allisonside, FM 16561','Payment Complete',464,'Mastercard',34,12),(9,'2023-04-24 00:57:41','PSC 0408, Box 1681\nAPO AP 10852','Delivered',357,'PayPal',15,69),(10,'2023-04-24 00:57:41','74401 Hodges Way\nWest Jennifer, PR 13378','Dispatched',19,'Mastercard',NULL,17),(11,'2023-04-24 00:57:41','6552 Michael Ramp Suite 873\nEast Monique, NH 77401','Dispatched',201,'Visa',NULL,73),(12,'2023-04-24 00:57:41','1930 Leslie Drive Apt. 344\nKimberlystad, GU 06269','Payment Complete',460,'Visa',NULL,26),(13,'2023-04-24 00:57:41','73203 Morris Overpass Apt. 912\nCarlsonhaven, MA 52296','Dispatched',17,'PayPal',NULL,14),(14,'2023-04-24 00:57:41','351 Deborah Plain\nSouth Patrick, AS 50817','Dispatched',41,'PayPal',NULL,25),(15,'2023-04-24 00:57:41','8904 Rachel Tunnel Suite 105\nPort Vanessa, MI 21428','Delivered',384,'PayPal',NULL,97),(16,'2023-04-24 00:57:41','642 Campbell Centers\nWhitestad, KY 36195','Payment Complete',422,'Mastercard',NULL,40),(17,'2023-04-24 00:57:41','8127 Tony Garden\nAliceshire, ND 42109','Payment Complete',190,'Visa',NULL,76),(18,'2023-04-24 00:57:41','4776 Miller Trail Apt. 509\nSouth Chelseabury, MH 88586','Delivered',236,'Mastercard',NULL,20),(19,'2023-04-24 00:57:41','320 Mckee Ferry\nSouth Cameron, WI 31160','Payment Complete',198,'Mastercard',NULL,13),(20,'2023-04-24 00:57:41','8941 Davis Locks Apt. 990\nEast Rebecca, NM 86781','Delivered',432,'PayPal',NULL,15),(21,'2023-04-24 00:57:41','PSC 4731, Box 1487\nAPO AA 82902','Payment Complete',281,'PayPal',NULL,36),(22,'2023-04-24 00:57:41','72365 Phillip Field\nBrettchester, KS 86376','Delivered',276,'PayPal',NULL,32),(23,'2023-04-24 00:57:41','USS Moore\nFPO AE 80572','Delivered',399,'PayPal',NULL,55),(24,'2023-04-24 00:57:41','926 Stephanie Island\nTonyhaven, PW 82388','Payment Complete',215,'PayPal',NULL,28),(25,'2023-04-24 00:57:41','1013 Hubbard Road Apt. 920\nCarlsonton, AL 65140','Payment Complete',214,'Visa',NULL,39),(26,'2023-04-24 00:57:41','165 West Unions\nWest Nicole, SD 43236','Payment Complete',139,'Visa',NULL,57),(27,'2023-04-24 00:57:41','2953 Jones Spring\nBrownberg, RI 86558','Dispatched',208,'Visa',NULL,90),(28,'2023-04-24 00:57:41','693 Jeffrey Courts\nPort Jessica, CT 03817','Delivered',491,'PayPal',NULL,21),(29,'2023-04-24 00:57:41','9005 Kelly Tunnel Apt. 072\nWest Chrisberg, WI 39007','Payment Complete',132,'PayPal',NULL,8),(30,'2023-04-24 00:57:41','97316 Oneal Motorway Apt. 524\nSouth Angelaburgh, IA 48699','Dispatched',496,'PayPal',NULL,80),(31,'2023-04-24 00:57:41','60237 Quinn Ferry Apt. 934\nEast John, SC 38298','Payment Complete',141,'Visa',NULL,52),(32,'2023-04-24 00:57:41','7566 Todd Square\nSouth Jasmine, MO 15814','Delivered',431,'PayPal',NULL,89),(33,'2023-04-24 00:57:41','13803 Carrie Summit\nNew Sarahton, NM 82763','Delivered',211,'Visa',NULL,92),(34,'2023-04-24 00:57:41','1613 Gloria Cape Apt. 295\nWestland, WV 94437','Payment Complete',349,'PayPal',NULL,87),(35,'2023-04-24 00:57:41','PSC 7957, Box 5521\nAPO AP 78982','Dispatched',437,'PayPal',NULL,74),(36,'2023-04-24 00:57:41','0129 King Highway Suite 876\nVegamouth, OK 81159','Dispatched',5,'PayPal',NULL,65),(37,'2023-04-24 00:57:41','657 Christina Avenue Suite 305\nSmithmouth, MO 69894','Dispatched',301,'Mastercard',NULL,5),(38,'2023-04-24 00:57:41','21154 Timothy Well Apt. 097\nPort Marissa, PA 03377','Delivered',484,'Mastercard',NULL,55),(39,'2023-04-24 00:57:41','25014 Donna Viaduct Apt. 008\nSouth Darrell, NV 38695','Dispatched',404,'Mastercard',NULL,66),(40,'2023-04-24 00:57:41','32494 Mark Plain Suite 266\nLake Kelli, MN 08978','Payment Complete',143,'Mastercard',NULL,13),(41,'2023-04-24 00:57:41','7523 Teresa Rapids\nSouth Kathy, FL 61034','Payment Complete',11,'Visa',NULL,41),(42,'2023-04-24 00:57:41','5077 Jeffrey Greens Apt. 968\nGarnertown, AL 49074','Dispatched',496,'PayPal',NULL,99),(43,'2023-04-24 00:57:41','PSC 1056, Box 5531\nAPO AE 90941','Payment Complete',162,'PayPal',NULL,18),(44,'2023-04-24 00:57:41','7540 Kelly Ways\nNorth Miranda, OH 23165','Dispatched',251,'Visa',NULL,62),(45,'2023-04-24 00:57:41','64819 Gomez Hills Suite 628\nEast Jamesside, GU 00611','Dispatched',392,'PayPal',NULL,29),(46,'2023-04-24 00:57:41','49081 Jonathan Radial Suite 388\nJenniferland, KY 66533','Payment Complete',170,'Mastercard',NULL,47),(47,'2023-04-24 00:57:41','8914 Kelli Flats\nAndersonberg, MH 49188','Payment Complete',418,'Mastercard',NULL,65),(48,'2023-04-24 00:57:41','4206 Thomas Cliff\nRaymondside, AL 70338','Dispatched',416,'Mastercard',NULL,32),(49,'2023-04-24 00:57:41','638 Sanders Avenue\nNorth Erikaburgh, WI 15945','Dispatched',92,'Visa',NULL,92),(50,'2023-04-24 00:57:41','63219 Micheal Harbor\nSouth Susanside, OR 61780','Payment Complete',455,'Visa',NULL,44),(51,'2023-04-24 00:57:41','112 Nelson Tunnel\nCraigchester, KS 18548','Dispatched',373,'Visa',NULL,53),(52,'2023-04-24 00:57:41','9498 Jamie Dam\nEileenberg, MT 44045','Delivered',454,'Mastercard',NULL,81),(53,'2023-04-24 00:57:41','503 Jose Village\nDustinchester, VA 76686','Delivered',334,'Visa',NULL,11),(54,'2023-04-24 00:57:41','22734 Forbes Route\nLake Margaret, WV 00823','Dispatched',420,'PayPal',NULL,27),(55,'2023-04-24 00:57:41','582 Andrew Harbor\nPort Melanieborough, CA 19194','Payment Complete',187,'Mastercard',NULL,64),(56,'2023-04-24 00:57:41','0549 Desiree Villages\nBrianfort, TX 88853','Delivered',186,'Visa',NULL,22),(57,'2023-04-24 00:57:41','544 Rivera Brooks\nPort Eric, MT 41216','Dispatched',161,'Mastercard',NULL,80),(58,'2023-04-24 00:57:41','82829 Howard Track\nSouth Christopher, LA 14623','Delivered',262,'PayPal',NULL,54),(59,'2023-04-24 00:57:41','PSC 4131, Box 3543\nAPO AP 12497','Payment Complete',223,'Mastercard',NULL,76),(60,'2023-04-24 00:57:41','224 Mendoza Summit\nHuangport, VT 90509','Delivered',406,'Mastercard',NULL,51),(61,'2023-04-24 00:57:41','137 Catherine Lights\nPort Jessica, MP 08651','Delivered',218,'Mastercard',NULL,47),(62,'2023-04-24 00:57:41','78085 Robert Fall\nNicholasville, WY 62121','Payment Complete',459,'Mastercard',NULL,33),(63,'2023-04-24 00:57:41','676 Perkins Mall\nThompsonmouth, NE 68836','Dispatched',351,'Visa',NULL,10),(64,'2023-04-24 00:57:41','0369 Charles Manors Apt. 685\nWhitechester, AR 59415','Payment Complete',331,'PayPal',NULL,46),(65,'2023-04-24 00:57:41','49537 Buck Trafficway\nEast Russellburgh, MT 95763','Dispatched',295,'PayPal',NULL,74),(66,'2023-04-24 00:57:41','698 Fowler Ports\nKnightburgh, ND 34425','Dispatched',307,'PayPal',NULL,81),(67,'2023-04-24 00:57:41','20500 Bishop Corner Apt. 323\nNew Johnnyhaven, KS 58079','Payment Complete',217,'Mastercard',NULL,23),(68,'2023-04-24 00:57:41','790 Stephen Mountain\nReneeberg, MP 20339','Dispatched',290,'Mastercard',NULL,99),(69,'2023-04-24 00:57:41','379 Brian Turnpike\nEast Tarahaven, CT 94434','Dispatched',86,'Mastercard',NULL,42),(70,'2023-04-24 00:57:41','809 Joseph Fields Suite 099\nNew Jason, MH 06498','Delivered',40,'Visa',NULL,70),(71,'2023-04-24 00:57:41','8902 Fuentes Port\nNorth Sherry, AS 34418','Delivered',257,'Mastercard',NULL,2),(72,'2023-04-24 00:57:41','5677 Sharp Overpass\nEast Anthonychester, CA 67089','Delivered',368,'PayPal',NULL,82),(73,'2023-04-24 00:57:41','595 Williams Mountain Suite 637\nGraymouth, PA 07857','Delivered',315,'PayPal',NULL,33),(74,'2023-04-24 00:57:41','USCGC Farmer\nFPO AP 99131','Payment Complete',429,'Mastercard',NULL,15),(75,'2023-04-24 00:57:41','238 Tammy Spring Suite 272\nSouth Christopherfort, NE 12048','Dispatched',231,'Visa',NULL,72),(76,'2023-04-24 00:57:41','8953 Diana Inlet\nRyanland, MN 84167','Dispatched',116,'Visa',NULL,79),(77,'2023-04-24 00:57:41','USNS Newman\nFPO AP 68885','Delivered',8,'Visa',NULL,65),(78,'2023-04-24 00:57:41','USNV Mercado\nFPO AE 68659','Delivered',210,'PayPal',NULL,64),(79,'2023-04-24 00:57:41','86954 Gallagher Crossroad\nBenjaminton, OH 24606','Dispatched',310,'Mastercard',NULL,56),(80,'2023-04-24 00:57:41','476 Angela Ports Apt. 692\nAdammouth, SC 85608','Delivered',303,'Mastercard',NULL,5),(81,'2023-04-24 00:57:41','473 Juan Loop Suite 304\nLake Kylemouth, VA 48187','Dispatched',95,'PayPal',NULL,81),(82,'2023-04-24 00:57:41','8429 Charlene Throughway\nBrownside, PR 00823','Dispatched',211,'PayPal',NULL,65),(83,'2023-04-24 00:57:41','135 Sean Avenue\nPort Feliciaburgh, SD 07654','Delivered',372,'PayPal',NULL,31),(84,'2023-04-24 00:57:41','25980 Munoz Garden\nRobertton, TX 88019','Payment Complete',467,'PayPal',NULL,14),(85,'2023-04-24 00:57:41','009 Patricia Plains\nEast Robert, FM 62583','Delivered',75,'PayPal',NULL,76),(86,'2023-04-24 00:57:41','76980 Moore Port\nScottburgh, ME 14749','Dispatched',303,'Mastercard',NULL,38),(87,'2023-04-24 00:57:41','4002 David Drive\nAmyberg, VT 51666','Delivered',2,'Visa',NULL,91),(88,'2023-04-24 00:57:41','4914 Jordan Junctions\nEast Amber, MP 78088','Dispatched',283,'PayPal',NULL,58),(89,'2023-04-24 00:57:41','054 Cook Haven\nPort Billy, MO 75838','Payment Complete',120,'PayPal',NULL,78),(90,'2023-04-24 00:57:41','1371 Molly Forges\nJesseview, WV 18402','Dispatched',357,'Mastercard',NULL,32),(91,'2023-04-24 00:57:41','20651 Joshua Village\nRebeccamouth, NY 81799','Delivered',125,'Visa',NULL,37),(92,'2023-04-24 00:57:41','4769 Ramirez Via\nMeredithbury, CT 50118','Payment Complete',382,'PayPal',NULL,76),(93,'2023-04-24 00:57:41','756 Michael Garden\nRichardfort, PW 87436','Delivered',42,'PayPal',NULL,93),(94,'2023-04-24 00:57:41','PSC 5456, Box 6982\nAPO AA 27967','Payment Complete',309,'PayPal',NULL,58),(95,'2023-04-24 00:57:41','89306 Nicole Road Suite 049\nWest Alvin, AS 08993','Dispatched',57,'Mastercard',NULL,26),(96,'2023-04-24 00:57:41','7389 Margaret Point\nWest Kaitlin, AS 92321','Payment Complete',16,'Mastercard',NULL,56),(97,'2023-04-24 00:57:41','04004 Katrina Squares Suite 830\nAshleyville, CO 79862','Delivered',47,'Visa',NULL,97),(98,'2023-04-24 00:57:41','21294 Peterson Point\nEricville, WV 41302','Delivered',438,'PayPal',NULL,67),(99,'2023-04-24 00:57:41','11573 Brown Junctions Apt. 586\nNew Michelle, GA 31881','Dispatched',53,'Visa',NULL,24),(100,'2023-04-24 00:57:41','0246 James Orchard\nSouth Karenside, UT 08007','Payment Complete',442,'PayPal',NULL,49);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24  1:03:29

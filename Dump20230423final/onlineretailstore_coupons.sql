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
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `coupon_id` int NOT NULL AUTO_INCREMENT,
  `coupon_discount` int NOT NULL,
  `expiry_date` date NOT NULL,
  `c_membership` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `fk_membership` (`c_membership`),
  CONSTRAINT `fk_membership` FOREIGN KEY (`c_membership`) REFERENCES `customer` (`CustMembership`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,43,'2023-02-17','Platinum'),(2,43,'2023-05-10','Platinum'),(3,13,'2023-07-02','Platinum'),(4,31,'2023-11-21','Gold'),(5,31,'2023-08-11','Platinum'),(6,27,'2023-11-28','Platinum'),(7,21,'2023-09-15','Platinum'),(8,26,'2023-12-17','Platinum'),(9,36,'2023-07-10','Silver'),(10,31,'2023-11-02','Platinum'),(11,46,'2023-02-02','Gold'),(12,26,'2023-01-27','Platinum'),(13,43,'2023-11-13','Gold'),(14,29,'2023-12-24','Platinum'),(15,43,'2023-03-31','Platinum'),(16,39,'2023-03-21','Gold'),(17,36,'2023-05-22','Gold'),(18,17,'2023-11-15','Platinum'),(19,37,'2023-10-18','Silver'),(20,11,'2023-07-30','Gold'),(21,37,'2023-07-25','Platinum'),(22,35,'2023-08-22','Silver'),(23,20,'2023-08-28','Platinum'),(24,21,'2023-04-26','Platinum'),(25,40,'2023-12-29','Silver'),(26,19,'2023-11-27','Silver'),(27,26,'2023-12-22','Platinum'),(28,10,'2023-01-16','Gold'),(29,12,'2023-07-07','Platinum'),(30,41,'2023-06-06','Platinum'),(31,42,'2023-05-11','Gold'),(32,32,'2023-11-22','Platinum'),(33,30,'2023-12-09','Silver'),(34,50,'2023-06-18','Platinum'),(35,24,'2023-06-20','Silver'),(36,29,'2023-10-24','Platinum'),(37,12,'2023-09-09','Silver'),(38,24,'2023-08-12','Gold'),(39,32,'2023-07-16','Platinum'),(40,27,'2023-11-23','Platinum'),(41,22,'2023-11-07','Silver'),(42,46,'2023-11-15','Platinum'),(43,41,'2023-11-05','Platinum'),(44,42,'2023-05-15','Silver'),(45,45,'2023-10-24','Gold'),(46,21,'2023-07-29','Gold'),(47,26,'2023-01-24','Gold'),(48,27,'2023-01-13','Gold'),(49,36,'2023-10-08','Gold'),(50,15,'2023-04-09','Silver'),(51,16,'2023-01-02','Platinum'),(52,45,'2023-01-15','Platinum'),(53,20,'2023-01-16','Platinum'),(54,10,'2023-12-22','Platinum'),(55,10,'2023-08-28','Platinum'),(56,44,'2023-08-07','Gold'),(57,40,'2023-03-08','Platinum'),(58,42,'2023-12-26','Platinum'),(59,48,'2023-10-30','Silver'),(60,22,'2023-03-23','Gold'),(61,13,'2023-08-31','Gold'),(62,11,'2023-12-14','Silver'),(63,50,'2023-03-20','Platinum'),(64,18,'2023-05-25','Gold'),(65,43,'2023-02-14','Gold'),(66,25,'2023-05-23','Gold'),(67,10,'2023-07-28','Gold'),(68,39,'2023-08-21','Platinum'),(69,22,'2023-02-10','Gold'),(70,25,'2023-07-31','Platinum'),(71,43,'2023-04-21','Platinum'),(72,33,'2023-10-13','Gold'),(73,38,'2023-12-02','Platinum'),(74,17,'2023-10-21','Platinum'),(75,46,'2023-11-24','Silver'),(76,21,'2023-03-16','Platinum'),(77,18,'2023-05-09','Silver'),(78,41,'2023-01-03','Silver'),(79,14,'2023-03-27','Platinum'),(80,21,'2023-02-03','Silver'),(81,40,'2023-06-25','Platinum'),(82,25,'2023-09-26','Gold'),(83,39,'2023-02-10','Gold'),(84,27,'2023-08-01','Gold'),(85,28,'2023-03-20','Silver'),(86,40,'2023-01-18','Platinum'),(87,37,'2023-12-10','Gold'),(88,48,'2023-12-20','Silver'),(89,26,'2023-11-01','Silver'),(90,37,'2023-06-01','Silver'),(91,39,'2023-07-09','Gold'),(92,18,'2023-06-15','Silver'),(93,25,'2023-12-23','Gold'),(94,13,'2023-12-23','Platinum'),(95,13,'2023-10-10','Platinum'),(96,27,'2023-02-27','Silver'),(97,25,'2023-04-11','Silver'),(98,30,'2023-11-30','Silver'),(99,21,'2023-07-11','Silver'),(100,31,'2023-10-25','Platinum');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 22:43:25

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
-- Table structure for table `orderhistory`
--

DROP TABLE IF EXISTS `orderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderhistory` (
  `CustomerID` int NOT NULL,
  `Order_id` int NOT NULL,
  KEY `CustomerID` (`CustomerID`),
  KEY `Order_id` (`Order_id`),
  CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustID`),
  CONSTRAINT `orderhistory_ibfk_2` FOREIGN KEY (`Order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderhistory`
--

LOCK TABLES `orderhistory` WRITE;
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` VALUES (62,37),(75,3),(76,31),(27,45),(48,26),(6,48),(80,75),(88,38),(40,15),(16,3),(33,89),(30,71),(27,29),(86,61),(4,85),(42,93),(34,1),(51,91),(12,4),(89,26),(52,94),(24,62),(33,96),(44,48),(56,63),(26,19),(43,10),(28,96),(24,3),(19,4),(95,94),(40,17),(56,32),(42,38),(98,68),(67,29),(26,22),(70,3),(23,8),(79,88),(47,6),(22,73),(92,77),(49,80),(15,71),(29,27),(48,83),(54,88),(4,76),(49,56),(95,60),(14,55),(59,4),(29,86),(38,67),(95,35),(87,65),(11,9),(74,40),(81,32),(67,47),(54,71),(61,93),(76,96),(68,78),(94,3),(58,92),(87,99),(82,44),(11,54),(4,25),(77,77),(21,49),(54,36),(43,58),(41,90),(31,2),(33,61),(47,80),(11,6),(93,99),(87,78),(63,73),(90,1),(48,68),(33,20),(8,84),(64,71),(66,69),(64,56),(96,94),(15,47),(81,92),(34,61),(36,68),(45,82),(63,60),(15,86),(81,40),(76,64);
/*!40000 ALTER TABLE `orderhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 23:45:31

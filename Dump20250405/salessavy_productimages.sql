CREATE DATABASE  IF NOT EXISTS `salessavy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salessavy`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: salessavy
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimages` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_url` text NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (1,1,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt1.png'),(2,2,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt2.png'),(3,3,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt3.png'),(4,4,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt4.png'),(5,5,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt5.png'),(6,6,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt6.png'),(7,7,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt7.png'),(8,8,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt8.png'),(9,9,'https://kodnest-docs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png'),(10,10,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt10.png'),(11,11,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt11.png'),(12,12,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt12.png'),(13,13,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt12.png'),(14,14,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt14.png'),(15,15,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt15.png'),(17,17,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant2.png'),(18,18,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant3.png'),(19,19,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant4.png'),(20,20,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant5.png'),(21,21,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant6.png'),(22,22,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant7.png'),(23,23,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant8.png'),(24,24,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant9.png'),(25,25,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant10.png'),(26,26,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant11.png'),(30,30,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/pant15.png'),(31,31,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv1.png'),(32,32,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv2.png'),(33,33,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv3.png'),(34,34,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv4.png'),(35,35,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv5.png'),(36,36,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv6.png'),(37,37,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv7.png'),(38,38,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv8.png'),(39,39,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv9.png'),(40,40,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv10.png'),(41,41,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv11.png'),(42,42,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv12.png'),(43,43,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv13.png'),(44,44,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv14.png'),(45,45,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv15.png'),(46,46,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph1.png'),(47,47,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph2.png'),(48,48,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph3.png'),(49,49,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph4.png'),(50,50,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph5.png'),(51,51,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph6.png'),(53,53,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph8.png'),(54,54,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph9.png'),(56,56,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph11.png'),(57,57,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph12.png'),(58,58,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph13.png'),(59,59,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph14.png'),(60,60,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph1.png'),(62,62,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma2.png'),(63,63,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma3.png'),(64,64,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma4.png'),(65,65,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma5.png'),(66,66,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma6.png'),(68,68,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma8.png'),(70,70,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/ma10.png'),(72,72,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/newshirt2.png'),(75,75,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/newshirt2.png'),(76,76,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt10.png'),(77,77,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt2.png'),(79,79,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png'),(80,80,'https://kodnestdocs.bcdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png'),(95,95,'https://kodnestdocs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt13.png');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 10:58:08

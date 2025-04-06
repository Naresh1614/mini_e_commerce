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
-- Table structure for table `jwt_tokens`
--

DROP TABLE IF EXISTS `jwt_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwt_tokens` (
  `token_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` timestamp NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `jwt_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_tokens`
--

LOCK TABLES `jwt_tokens` WRITE;
/*!40000 ALTER TABLE `jwt_tokens` DISABLE KEYS */;
INSERT INTO `jwt_tokens` VALUES (9,2,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJOYXZlZW5LdW1hciIsInJvbGUiOiJBRE1JTiIsImlhdCI6MTczOTE3MzE1MSwiZXhwIjoxNzM5MTc2NzUxfQ.vvjjmkztpUU4Eic3n34qP7yUL547-SuEvf03rXTcrE5nMuvL-vMGeQqvfCrpUp82kGfZpMyJGmHOXgkuUxd61A','2025-02-10 07:39:11','2025-02-10 08:39:12'),(11,3,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c21hbiIsInJvbGUiOiJDVVNUT01FUiIsImlhdCI6MTczOTQyOTYzNCwiZXhwIjoxNzM5NDMzMjM0fQ.R2GbbH_qvQv8UTBwXJvbPs4XZVs-ZLXj8CjBzoHJSQD22qkh0r3vKBFLYzRPu4jOwnSzn44_6l4wudils16eGw','2025-02-13 06:53:54','2025-02-13 07:53:54'),(14,4,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c21hbmJoYWkiLCJyb2xlIjoiQ1VTVE9NRVIiLCJpYXQiOjE3NDM4MzA0MTEsImV4cCI6MTc0MzgzNDAxMX0.qXg17Lk7eyRsMhEMAFMJrKxj-QohmhkvkfwrRqFFtu9SdAgiooeeRZXd8WLHHjsTG1L9LjlmGudblJXGrJMXfQ','2025-04-05 05:20:11','2025-04-05 06:20:11');
/*!40000 ALTER TABLE `jwt_tokens` ENABLE KEYS */;
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

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Shirt1','Stylish Shirt1',499.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(2,'Shirt2','Stylish Shirt2',599.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(3,'Shirt3','Stylish Shirt3',699.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(4,'Shirt4','Stylish Shirt4',799.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(5,'Shirt5','Stylish Shirt5',899.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(6,'Shirt6','Stylish Shirt6',999.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(7,'Shirt7','Stylish Shirt7',1099.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(8,'Shirt8','Stylish Shirt8',1199.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(9,'Shirt9','Stylish Shirt9',1299.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(10,'Shirt10','Stylish Shirt10',1399.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(11,'Shirt11','Stylish Shirt11',1499.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(12,'Shirt12','Best Shirt In the Segment',987.00,200,1,'2025-01-27 09:28:30','2025-02-10 00:05:12'),(13,'Shirt13','Stylish Shirt13',1699.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(14,'Shirt14','Stylish Shirt14',1799.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(15,'Shirt15','Stylish Shirt15',1899.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(16,'Pant1','Stylish Pant1',799.99,50,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(17,'Pant2','Stylish Pant2',899.50,45,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(18,'Pant3','Stylish Pant3',759.99,40,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(19,'Pant4','Stylish Pant4',689.99,55,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(20,'Pant5','Stylish Pant5',999.99,30,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(21,'Pant6','Stylish Pant6',699.99,20,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(22,'Pant7','Stylish Pant7',849.50,35,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(23,'Pant8','Stylish Pant8',799.00,60,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(24,'Pant9','Stylish Pant9',729.99,25,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(25,'Pant10','Stylish Pant10',889.99,50,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(26,'Pant11','Stylish Pant11',819.99,40,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(30,'Pant15','Stylish Pant15',899.99,90,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(31,'TV1','Smart TV1 with HD display',18999.99,20,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(32,'TV2','Smart TV2 with Full HD display',21999.50,15,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(33,'TV3','Smart TV3 with 4K display',29999.00,10,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(34,'TV4','Smart TV4 with HDR and Dolby Vision',25999.99,12,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(35,'TV5','Smart TV5 with Ultra HD screen',34999.99,8,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(36,'TV6','Smart TV6 with Alexa Built-in',27999.50,18,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(37,'TV7','Smart TV7 with Android OS',22999.00,22,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(38,'TV8','Smart TV8 with High Refresh Rate',31999.99,14,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(39,'TV9','Smart TV9 with Thin Bezels',24999.99,20,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(40,'TV10','Smart TV10 with AI Upscaling',39999.00,5,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(41,'Speaker','Worlds BEst',12999.99,50,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(42,'Nikon DSLR','Indias best',8999.50,75,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(43,'NIK DSLR2','Sales Choice',15999.00,40,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(44,'NIC DSLR3','Capture Nik',19999.99,30,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(45,'LAPTOP','Smart TV15 with AI Upscaling',24999.99,25,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(46,'Mobile1','Mobile6 with gaming chipset and high refresh rate',19999.99,50,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(47,'Mobile2','Mobile7 with gaming chipset and high refresh rate',8999.50,55,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(48,'Mobile3','Mobile8 with gaming chipset and high refresh rate',22999.00,50,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(49,'Mobile4','Mobile9 with gaming chipset and high refresh rate',8999.50,55,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(50,'Mobile5','Mobile10 with gaming chipset and high refresh rate',39999.00,50,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(51,'Mobile6','Mobile10 with gaming chipset and high refresh rate',48765.00,30,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(53,'Mobile8','Mobile12with gaming chipset and high refresh rate',34598.00,345,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(54,'Mobile9','Mobile13 with gaming chipset and high refresh rate',45673.00,45,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(56,'Mobile11','Mobile15 with gaming chipset and high refresh rate',23412.00,65,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(57,'Mobile12','Mobile12 with gaming chipset and high refresh rate',89765.00,456,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(58,'Mobile13','Mobile14 with gaming chipset and high refresh rate',23456.00,567,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(59,'Mobile14','Mobile11 with gaming chipset and high refresh rate',99990.00,234,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(60,'Mobile15','Mobile15 with gaming chipset and high refresh rate',45389.00,225,4,'2025-01-04 14:01:27','2025-01-06 09:41:42'),(62,'Mobile Accessory 2','Durable and practical mobile accessory for everyday use.',349.50,200,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(63,'Mobile Accessory 3','A versatile mobile accessory with modern features.',899.00,80,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(64,'Mobile Accessory 4','Reliable mobile accessory designed for convenience.',749.75,120,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(65,'Mobile Accessory 5','Mobile accessory offering comfort and durability.',199.99,250,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(66,'Mobile Accessory 6','A stylish and protective mobile accessory.',249.99,500,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(68,'Mobile Accessory 8','An essential mobile accessory designed for convenience.',399.50,350,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(70,'Mobile Accessory 10','Compact and efficient mobile accessory for all your needs.',1099.99,100,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(72,'Louies2','Cool Louies 2.',156.99,321,1,'2025-01-21 09:03:32','2025-01-21 09:03:32'),(74,'spykershirt','best shirt',999.00,100,1,'2025-01-22 13:27:55','2025-01-22 13:27:55'),(75,'Spy shirts','good cool',99.00,200,1,'2025-01-22 14:03:24','2025-01-22 14:03:24'),(76,'spyker hot shirt','best shirt',999.00,100,1,'2025-01-22 14:15:19','2025-01-22 14:15:19'),(77,'louies s[yker','cool hot shirt',854.00,20,1,'2025-01-22 14:18:57','2025-01-22 14:18:57'),(79,'LouiesSpiker','wonderful striped shirt',899.00,200,1,'2025-01-26 23:09:32','2025-01-26 23:09:32'),(80,'spiker','adsjfkhbsjkdf',999.00,200,1,'2025-01-26 23:10:00','2025-01-26 23:10:00'),(81,'spyker12','wednc ewjhcew',999.00,20,1,'2025-01-26 23:56:17','2025-01-26 23:56:17'),(82,'gyshirt','dcjhbSJDHCac',899.00,10,1,'2025-01-27 00:02:17','2025-01-27 00:02:17'),(83,'aKS;JC','ZADJLNSV ',767.00,29,1,'2025-01-27 00:03:04','2025-01-27 00:03:04'),(84,'hgdv','wedjkcwev',644.00,10,1,'2025-01-27 00:11:08','2025-01-27 00:11:08'),(85,'sdfhjb1','sdkjvb',657.00,20,1,'2025-01-27 00:19:07','2025-01-27 00:19:07'),(86,'sdkfjn','sdfkjn',23.00,23,1,'2025-01-27 00:20:27','2025-01-27 00:20:27'),(87,'dsf','sdfb',23.00,23,1,'2025-01-27 00:23:04','2025-01-27 00:23:04'),(88,'dsfbvsdf','sdfb',23.00,21,1,'2025-01-27 00:25:04','2025-01-27 00:25:04'),(89,'shiet','asdvwefg',23.00,23,1,'2025-01-27 00:31:25','2025-01-27 00:31:25'),(90,'zdf','sdfb',23.00,23,1,'2025-01-27 00:33:52','2025-01-27 00:33:52'),(91,'shirtspyker','aschjadc',123.00,23,1,'2025-01-27 08:21:14','2025-01-27 08:21:14'),(92,'asdkjc','wdf',12.00,23,1,'2025-01-27 08:21:32','2025-01-27 08:21:32'),(93,'abc','dfghj',40.00,5,1,'2025-01-27 08:34:08','2025-01-27 08:34:08'),(94,'abc2','gyvhujnkml,',30.00,3,1,'2025-01-27 08:47:25','2025-01-27 08:47:25'),(95,'blueShirt','Awesome Blue Shirt',876.00,20,1,'2025-01-27 09:28:30','2025-01-27 09:28:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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

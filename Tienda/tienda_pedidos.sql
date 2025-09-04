-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `ped_id` int NOT NULL AUTO_INCREMENT,
  `cli_id` int DEFAULT NULL,
  `ped_fecha` date DEFAULT (curdate()),
  `ped_estado` enum('pendiente','completado','cancelado') DEFAULT 'pendiente',
  `ped_total` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ped_id`),
  KEY `cli_id` (`cli_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cli_id`) REFERENCES `clientes` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'2024-08-05','completado',600.00),(2,2,'2024-08-06','pendiente',320.00),(3,3,'2024-08-07','completado',890.00),(4,4,'2024-08-08','cancelado',180.00),(5,5,'2024-08-09','completado',520.00),(6,6,'2024-08-10','pendiente',240.00),(7,7,'2024-08-11','completado',380.00),(8,8,'2024-08-12','completado',650.00),(9,9,'2024-08-13','pendiente',150.00),(10,10,'2024-08-14','completado',290.00),(11,11,'2024-08-15','completado',420.00),(12,12,'2024-08-16','pendiente',890.00),(13,13,'2024-08-17','completado',150.00),(14,14,'2024-08-18','cancelado',520.00),(15,15,'2024-08-19','completado',380.00),(16,16,'2024-08-20','pendiente',650.00),(17,17,'2024-08-21','completado',240.00),(18,18,'2024-08-22','completado',320.00),(19,19,'2024-08-23','pendiente',180.00),(20,20,'2024-08-24','completado',520.00),(21,21,'2024-08-25','completado',290.00),(22,22,'2024-08-26','pendiente',380.00),(23,23,'2024-08-27','completado',650.00),(24,24,'2024-08-28','cancelado',220.00),(25,25,'2024-08-29','completado',890.00),(26,26,'2024-08-30','pendiente',150.00),(27,27,'2024-08-31','completado',420.00),(28,28,'2024-09-01','completado',320.00),(29,29,'2024-09-02','pendiente',180.00),(30,30,'2024-09-03','completado',520.00),(31,31,'2024-09-04','completado',240.00),(32,32,'2024-09-05','pendiente',380.00),(33,33,'2024-09-06','completado',650.00),(34,34,'2024-09-07','cancelado',290.00),(35,35,'2024-09-08','completado',420.00),(36,36,'2024-09-09','pendiente',150.00),(37,37,'2024-09-10','completado',890.00),(38,38,'2024-09-11','completado',320.00),(39,39,'2024-09-12','pendiente',180.00),(40,40,'2024-09-13','completado',520.00),(41,41,'2024-09-14','completado',240.00),(42,42,'2024-09-15','pendiente',380.00),(43,43,'2024-09-16','completado',650.00),(44,44,'2024-09-17','cancelado',290.00),(45,45,'2024-09-18','completado',420.00),(46,46,'2024-09-19','pendiente',150.00),(47,47,'2024-09-20','completado',890.00),(48,48,'2024-09-21','completado',320.00),(49,49,'2024-09-22','pendiente',180.00),(50,50,'2024-09-23','completado',520.00),(51,51,'2024-09-24','completado',240.00),(52,52,'2024-09-25','pendiente',380.00),(53,53,'2024-09-26','completado',650.00),(54,54,'2024-09-27','cancelado',290.00),(55,55,'2024-09-28','completado',420.00),(56,56,'2024-09-29','pendiente',150.00),(57,57,'2024-09-30','completado',890.00),(58,58,'2024-10-01','completado',320.00),(59,59,'2024-10-02','pendiente',180.00),(60,60,'2024-10-03','completado',520.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04  8:09:29

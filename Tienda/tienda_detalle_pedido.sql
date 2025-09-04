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
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `det_id` int NOT NULL AUTO_INCREMENT,
  `ped_id` int DEFAULT NULL,
  `pro_id` int DEFAULT NULL,
  `det_cantidad` int NOT NULL,
  `det_precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`det_id`),
  KEY `ped_id` (`ped_id`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ped_id`) REFERENCES `pedidos` (`ped_id`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `productos` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,3,1,650.00),(2,1,8,1,220.00),(3,2,2,1,320.00),(4,3,7,1,520.00),(5,3,12,2,190.00),(6,4,6,1,180.00),(7,5,7,1,520.00),(8,6,10,1,240.00),(9,7,4,1,380.00),(10,8,3,1,650.00),(11,9,18,1,150.00),(12,10,9,1,290.00),(13,11,5,1,420.00),(14,12,13,1,720.00),(15,12,19,1,85.00),(16,13,20,1,150.00),(17,14,7,1,520.00),(18,15,4,1,380.00),(19,16,3,1,650.00),(20,17,10,1,240.00),(21,18,2,1,320.00),(22,19,6,1,180.00),(23,20,7,1,520.00),(24,21,9,1,290.00),(25,22,4,1,380.00),(26,23,3,1,650.00),(27,24,8,1,220.00),(28,25,13,1,720.00),(29,25,19,1,85.00),(30,26,20,1,150.00),(31,27,5,1,420.00),(32,28,2,1,320.00),(33,29,6,1,180.00),(34,30,7,1,520.00),(35,31,10,1,240.00),(36,32,4,1,380.00),(37,33,3,1,650.00),(38,34,9,1,290.00),(39,35,5,1,420.00),(40,36,20,1,150.00),(41,37,13,1,720.00),(42,37,19,1,85.00),(43,38,2,1,320.00),(44,39,6,1,180.00),(45,40,7,1,520.00),(46,41,10,1,240.00),(47,42,4,1,380.00),(48,43,3,1,650.00),(49,44,9,1,290.00),(50,45,5,1,420.00),(51,46,20,1,150.00),(52,47,13,1,720.00),(53,47,19,1,85.00),(54,48,2,1,320.00),(55,49,6,1,180.00),(56,50,7,1,520.00),(57,51,10,1,240.00),(58,52,4,1,380.00),(59,53,3,1,650.00),(60,54,9,1,290.00),(61,55,5,1,420.00),(62,56,20,1,150.00),(63,57,13,1,720.00),(64,57,19,1,85.00),(65,58,2,1,320.00),(66,59,6,1,180.00),(67,60,7,1,520.00);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
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

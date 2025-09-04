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
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `ven_id` int NOT NULL AUTO_INCREMENT,
  `ven_nombre` varchar(100) NOT NULL,
  `ven_correo` varchar(255) NOT NULL,
  `ven_telefono` varchar(100) DEFAULT NULL,
  `ven_calificacion` decimal(3,2) DEFAULT '0.00',
  PRIMARY KEY (`ven_id`),
  UNIQUE KEY `ven_correo` (`ven_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'TecnoUsados','ventas@tecnousados.com','311-123-4567',4.80),(2,'ElectroShop','contacto@electroshop.com','312-234-5678',4.50),(3,'GadgetStore','info@gadgetstore.com','313-345-6789',4.70),(4,'TechDeals','ventas@techdeals.com','314-456-7890',4.30),(5,'SmartTech','contacto@smarttech.com','315-567-8901',4.60),(6,'DeviceHub','info@devicehub.com','316-678-9012',4.40),(7,'DigitalWorld','ventas@digitalworld.com','317-789-0123',4.90),(8,'TechZone','contacto@techzone.com','318-890-1234',4.20),(9,'GadgetGalaxy','info@gadgetgalaxy.com','319-901-2345',4.70),(10,'ElectroWorld','ventas@electroworld.com','320-012-3456',4.50),(11,'TechHouse','contacto@techhouse.com','321-123-4567',4.60),(12,'DeviceDepot','info@devicedepot.com','322-234-5678',4.30),(13,'DigitalDeals','ventas@digitaldeals.com','323-345-6789',4.80),(14,'GadgetHub','contacto@gadgethub.com','324-456-7890',4.40),(15,'TechCorner','info@techcorner.com','325-567-8901',4.70),(16,'ElectroCorner','ventas@electrocorner.com','326-678-9012',4.50),(17,'SmartDeals','contacto@smartdeals.com','327-789-0123',4.60),(18,'DeviceWorld','info@deviceworld.com','328-890-1234',4.30),(19,'TechMarket','ventas@techmarket.com','329-901-2345',4.80),(20,'GadgetDeals','contacto@gadgetdeals.com','330-012-3456',4.50);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04  8:09:28

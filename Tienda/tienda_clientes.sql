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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cli_id` int NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(50) NOT NULL,
  `cli_correo` varchar(255) NOT NULL,
  `cli_telefono` varchar(15) DEFAULT NULL,
  `cli_fecha_registro` date DEFAULT (curdate()),
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_correo` (`cli_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','juan.perez@email.com','300-111-2233','2024-01-15'),(2,'María García','maria.garcia@email.com','300-222-3344','2024-01-16'),(3,'Carlos Rodríguez','carlos.rodriguez@email.com','300-333-4455','2024-01-17'),(4,'Ana Martínez','ana.martinez@email.com','300-444-5566','2024-01-18'),(5,'Luis González','luis.gonzalez@email.com','300-555-6677','2024-01-19'),(6,'Laura López','laura.lopez@email.com','300-666-7788','2024-01-20'),(7,'Jorge Hernández','jorge.hernandez@email.com','300-777-8899','2024-01-21'),(8,'Mónica Díaz','monica.diaz@email.com','300-888-9900','2024-01-22'),(9,'Ricardo Sánchez','ricardo.sanchez@email.com','300-999-0011','2024-01-23'),(10,'Elena Ramírez','elena.ramirez@email.com','300-000-1122','2024-01-24'),(11,'Diego Torres','diego.torres@email.com','301-111-2233','2024-01-25'),(12,'Sofía Flores','sofia.flores@email.com','301-222-3344','2024-01-26'),(13,'Andrés Castro','andres.castro@email.com','301-333-4455','2024-01-27'),(14,'Camila Ortega','camila.ortega@email.com','301-444-5566','2024-01-28'),(15,'Miguel Reyes','miguel.reyes@email.com','301-555-6677','2024-01-29'),(16,'Valentina Morales','valentina.morales@email.com','301-666-7788','2024-01-30'),(17,'Fernando Jiménez','fernando.jimenez@email.com','301-777-8899','2024-01-31'),(18,'Daniela Ruiz','daniela.ruiz@email.com','301-888-9900','2024-02-01'),(19,'José Vargas','jose.vargas@email.com','301-999-0011','2024-02-02'),(20,'Natalia Herrera','natalia.herrera@email.com','301-000-1122','2024-02-03'),(21,'Roberto Silva','roberto.silva@email.com','302-111-2233','2024-02-04'),(22,'Gabriela Rojas','gabriela.rojas@email.com','302-222-3344','2024-02-05'),(23,'Mario Mendoza','mario.mendoza@email.com','302-333-4455','2024-02-06'),(24,'Paola Guzmán','paola.guzman@email.com','302-444-5566','2024-02-07'),(25,'Santiago Peña','santiago.pena@email.com','302-555-6677','2024-02-08'),(26,'Andrea Castillo','andrea.castillo@email.com','302-666-7788','2024-02-09'),(27,'Raúl Navarro','raul.navarro@email.com','302-777-8899','2024-02-10'),(28,'Isabel Cortés','isabel.cortes@email.com','302-888-9900','2024-02-11'),(29,'Hugo Ríos','hugo.rios@email.com','302-999-0011','2024-02-12'),(30,'Lucía Delgado','lucia.delgado@email.com','302-000-1122','2024-02-13'),(31,'Francisco Mora','francisco.mora@email.com','303-111-2233','2024-02-14'),(32,'Adriana Paredes','adriana.paredes@email.com','303-222-3344','2024-02-15'),(33,'Arturo Bravo','arturo.bravo@email.com','303-333-4455','2024-02-16'),(34,'Elena Cordero','elena.cordero@email.com','303-444-5566','2024-02-17'),(35,'Javier Lozano','javier.lozano@email.com','303-555-6677','2024-02-18'),(36,'Verónica Cárdenas','veronica.cardenas@email.com','303-666-7788','2024-02-19'),(37,'Óscar Franco','oscar.franco@email.com','303-777-8899','2024-02-20'),(38,'Teresa Miranda','teresa.miranda@email.com','303-888-9900','2024-02-21'),(39,'Alberto Santana','alberto.santana@email.com','303-999-0011','2024-02-22'),(40,'Carmen Vega','carmen.vega@email.com','303-000-1122','2024-02-23'),(41,'Guillermo Ponce','guillermo.ponce@email.com','304-111-2233','2024-02-24'),(42,'Rosa Valdez','rosa.valdez@email.com','304-222-3344','2024-02-25'),(43,'Manuel Escobar','manuel.escobar@email.com','304-333-4455','2024-02-26'),(44,'Patricia Campos','patricia.campos@email.com','304-444-5566','2024-02-27'),(45,'Ricardo Fuentes','ricardo.fuentes@email.com','304-555-6677','2024-02-28'),(46,'Silvia Orellana','silvia.orellana@email.com','304-666-7788','2024-02-29'),(47,'Eduardo Salazar','eduardo.salazar@email.com','304-777-8899','2024-03-01'),(48,'Gladys Montes','gladys.montes@email.com','304-888-9900','2024-03-02'),(49,'Rodrigo Carrillo','rodrigo.carrillo@email.com','304-999-0011','2024-03-03'),(50,'Liliana Peralta','liliana.peralta@email.com','304-000-1122','2024-03-04'),(51,'Sergio Rivas','sergio.rivas@email.com','305-111-2233','2024-03-05'),(52,'Alicia León','alicia.leon@email.com','305-222-3344','2024-03-06'),(53,'Gustavo Medina','gustavo.medina@email.com','305-333-4455','2024-03-07'),(54,'Beatriz Cervantes','beatriz.cervantes@email.com','305-444-5566','2024-03-08'),(55,'René Aguirre','rene.aguirre@email.com','305-555-6677','2024-03-09'),(56,'Olga Mejía','olga.mejia@email.com','305-666-7788','2024-03-10'),(57,'Felipe Palacios','felipe.palacios@email.com','305-777-8899','2024-03-11'),(58,'Ruth Segura','ruth.segura@email.com','305-888-9900','2024-03-12'),(59,'Octavio Vera','octavio.vera@email.com','305-999-0011','2024-03-13'),(60,'Margarita Espinoza','margarita.espinoza@email.com','305-000-1122','2024-03-14'),(61,'Joaquín Duarte','joaquin.duarte@email.com','306-111-2233','2024-03-15'),(62,'Lorena Bustos','lorena.bustos@email.com','306-222-3344','2024-03-16'),(63,'Víctor Gallegos','victor.gallegos@email.com','306-333-4455','2024-03-17'),(64,'Irene Tapia','irene.tapia@email.com','306-444-5566','2024-03-18'),(65,'Ernesto Velásquez','ernesto.velasquez@email.com','306-555-6677','2024-03-19'),(66,'Claudia Márquez','claudia.marquez@email.com','306-666-7788','2024-03-20'),(67,'Agustín Núñez','agustin.nunez@email.com','306-777-8899','2024-03-21'),(68,'Estela Salinas','estela.salinas@email.com','306-888-9900','2024-03-22'),(69,'Héctor Pacheco','hector.pacheco@email.com','306-999-0011','2024-03-23'),(70,'Rocio Valenzuela','rocio.valenzuela@email.com','306-000-1122','2024-03-24'),(71,'Gerardo Cabrera','gerardo.cabrera@email.com','307-111-2233','2024-03-25'),(72,'Aurora Arellano','aurora.arellano@email.com','307-222-3344','2024-03-26'),(73,'Federico Zúñiga','federico.zuniga@email.com','307-333-4455','2024-03-27'),(74,'Leticia Villanueva','leticia.villanueva@email.com','307-444-5566','2024-03-28'),(75,'Rafael Barrios','rafael.barrios@email.com','307-555-6677','2024-03-29'),(76,'Yolanda Acosta','yolanda.acosta@email.com','307-666-7788','2024-03-30'),(77,'Tomás Lara','tomas.lara@email.com','307-777-8899','2024-03-31'),(78,'Concepción Solís','concepcion.solis@email.com','307-888-9900','2024-04-01'),(79,'Saúl Maldonado','saul.maldonado@email.com','307-999-0011','2024-04-02'),(80,'Elvira Juárez','elvira.juarez@email.com','307-000-1122','2024-04-03'),(81,'Marcelo Ibarra','marcelo.ibarra@email.com','308-111-2233','2024-04-04'),(82,'Amparo Quintero','amparo.quintero@email.com','308-222-3344','2024-04-05'),(83,'Ignacio Zamora','ignacio.zamora@email.com','308-333-4455','2024-04-06'),(84,'Dolores Osorio','dolores.osorio@email.com','308-444-5566','2024-04-07'),(85,'Alfonso Valencia','alfonso.valencia@email.com','308-555-6677','2024-04-08'),(86,'Emilia Macías','emilia.macias@email.com','308-666-7788','2024-04-09'),(87,'Ramiro Bernal','ramiro.bernal@email.com','308-777-8899','2024-04-10'),(88,'Consuelo Carmona','consuelo.carmona@email.com','308-888-9900','2024-04-11'),(89,'Esteban Trejo','esteban.trejo@email.com','308-999-0011','2024-04-12'),(90,'Rebeca Rangel','rebeca.rangel@email.com','308-000-1122','2024-04-13'),(91,'Humberto Galván','humberto.galvan@email.com','309-111-2233','2024-04-14'),(92,'Tania Vázquez','tania.vazquez@email.com','309-222-3344','2024-04-15'),(93,'Feliciano Serrano','feliciano.serrano@email.com','309-333-4455','2024-04-16'),(94,'Carolina Reséndiz','carolina.resendiz@email.com','309-444-5566','2024-04-17'),(95,'Gregorio Luna','gregorio.luna@email.com','309-555-6677','2024-04-18'),(96,'Susana Godínez','susana.godinez@email.com','309-666-7788','2024-04-19'),(97,'Noé Ávila','noe.avila@email.com','309-777-8899','2024-04-20'),(98,'Matilde Esparza','matilde.esparza@email.com','309-888-9900','2024-04-21'),(99,'Abelardo Tovar','abelardo.tovar@email.com','309-999-0011','2024-04-22'),(100,'Eugenia Mireles','eugenia.mireles@email.com','309-000-1122','2024-04-23');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04  8:09:27

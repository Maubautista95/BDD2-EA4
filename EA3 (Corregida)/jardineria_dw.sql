-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: jardineria_dw
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cliente` (
  `ID_Cliente_SK` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente_Original` int NOT NULL,
  `nombre_cliente` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (1,1,'GoldFish Garden','San Francisco',NULL,'USA'),(2,2,'Gardening Associates','Miami','Miami','USA'),(3,3,'Gerudo Valley','New York',NULL,'USA'),(4,4,'Tendo Garden','Miami',NULL,'USA'),(5,5,'Lasas S.A.','Fuenlabrada','Madrid','Spain'),(6,6,'Beragua','Madrid','Madrid','Spain'),(7,7,'Club Golf Puerta del hierro','Madrid','Madrid','Spain'),(8,8,'Naturagua','Madrid','Madrid','Spain'),(9,9,'DaraDistribuciones','Madrid','Madrid','Spain'),(10,10,'Madrileña de riegos','Madrid','Madrid','Spain'),(11,11,'Lasas S.A.','Fuenlabrada','Madrid','Spain'),(12,12,'Camunas Jardines S.L.','San Lorenzo del Escorial','Madrid','Spain'),(13,13,'Dardena S.A.','Madrid','Madrid','Spain'),(14,14,'Jardin de Flores','Madrid','Madrid','Spain'),(15,15,'Flores Marivi','Fuenlabrada','Madrid','Spain'),(16,16,'Flowers, S.A','Montornes del valles','Barcelona','Spain'),(17,17,'Naturajardin','Madrid','Madrid','Spain'),(18,18,'Golf S.A.','Santa cruz de Tenerife','Islas Canarias','Spain'),(19,19,'Americh Golf Management SL','Barcelona','Cataluña','Spain'),(20,20,'Aloha','Canarias','Canarias','Spain'),(21,21,'El Prat','Barcelona','Cataluña','Spain'),(22,22,'Sotogrande','Sotogrande','Cadiz','Spain'),(23,23,'Vivero Humanes','Humanes','Madrid','Spain'),(24,24,'Fuenla City','Fuenlabrada','Madrid','Spain'),(25,25,'Jardines y Mansiones Cactus SL','Madrid','Madrid','Spain'),(26,26,'Jardinerías Matías SL','Madrid','Madrid','Spain'),(27,27,'Agrojardin','Getafe','Madrid','Spain'),(28,28,'Top Campo','Humanes','Madrid','Spain'),(29,29,'Jardineria Sara','Fuenlabrada','Madrid','Spain'),(30,30,'Campohermoso','Fuenlabrada','Madrid','Spain'),(31,31,'france telecom','Paris',NULL,'France'),(32,32,'Musée du Louvre','Paris',NULL,'France'),(33,33,'Tutifruti S.A','Sydney','Nueva Gales del Sur','Australia'),(34,34,'Flores S.L.','Madrid','Fuenlabrada','Spain'),(35,35,'The Magic Garden','London','London','United Kingdom'),(36,36,'El Jardin Viviente S.L','Sydney','Nueva Gales del Sur','Australia');
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_empleado`
--

DROP TABLE IF EXISTS `dim_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_empleado` (
  `ID_Empleado_SK` int NOT NULL AUTO_INCREMENT,
  `ID_Empleado_Original` int NOT NULL,
  `nombre_completo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `puesto` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Empleado_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_empleado`
--

LOCK TABLES `dim_empleado` WRITE;
/*!40000 ALTER TABLE `dim_empleado` DISABLE KEYS */;
INSERT INTO `dim_empleado` VALUES (1,1,'Marcos Magaña Perez','Director General'),(2,2,'Ruben López Martinez','Subdirector Marketing'),(3,3,'Alberto Soria Carrasco','Subdirector Ventas'),(4,4,'Maria Solís Jerez','Secretaria'),(5,5,'Felipe Rosas Marquez','Representante Ventas'),(6,6,'Juan Carlos Ortiz Serrano','Representante Ventas'),(7,7,'Carlos Soria Jimenez','Director Oficina'),(8,8,'Mariano López Murcia','Representante Ventas'),(9,9,'Lucio Campoamor Martín','Representante Ventas'),(10,10,'Hilario Rodriguez Huertas','Representante Ventas'),(11,11,'Emmanuel Magaña Perez','Director Oficina'),(12,12,'José Manuel Martinez De la Osa','Representante Ventas'),(13,13,'David Palma Aceituno','Representante Ventas'),(14,14,'Oscar Palma Aceituno','Representante Ventas'),(15,15,'Francois Fignon ','Director Oficina'),(16,16,'Lionel Narvaez ','Representante Ventas'),(17,17,'Laurent Serra ','Representante Ventas'),(18,18,'Michael Bolton ','Director Oficina'),(19,19,'Walter Santiago Sanchez Lopez','Representante Ventas'),(20,20,'Hilary Washington ','Director Oficina'),(21,21,'Marcus Paxton ','Representante Ventas'),(22,22,'Lorena Paxton ','Representante Ventas'),(23,23,'Nei Nishikori ','Director Oficina'),(24,24,'Narumi Riko ','Representante Ventas'),(25,25,'Takuma Nomura ','Representante Ventas'),(26,26,'Amy Johnson ','Director Oficina'),(27,27,'Larry Westfalls ','Representante Ventas'),(28,28,'John Walton ','Representante Ventas'),(29,29,'Kevin Fallmer ','Director Oficina'),(30,30,'Julian Bellinelli ','Representante Ventas'),(31,31,'Mariko Kishi ','Representante Ventas');
/*!40000 ALTER TABLE `dim_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_oficina`
--

DROP TABLE IF EXISTS `dim_oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_oficina` (
  `ID_Oficina_SK` int NOT NULL AUTO_INCREMENT,
  `ID_Oficina_Original` int NOT NULL,
  `ciudad` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Oficina_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_oficina`
--

LOCK TABLES `dim_oficina` WRITE;
/*!40000 ALTER TABLE `dim_oficina` DISABLE KEYS */;
INSERT INTO `dim_oficina` VALUES (1,1,'Barcelona','España','Barcelona'),(2,2,'Boston','EEUU','MA'),(3,3,'Londres','Inglaterra','EMEA'),(4,4,'Madrid','España','Madrid'),(5,5,'Paris','Francia','EMEA'),(6,6,'San Francisco','EEUU','CA'),(7,7,'Sydney','Australia','APAC'),(8,8,'Talavera de la Reina','España','Castilla-LaMancha'),(9,9,'Tokyo','Japón','Chiyoda-Ku');
/*!40000 ALTER TABLE `dim_oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_producto`
--

DROP TABLE IF EXISTS `dim_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_producto` (
  `ID_Producto_SK` int NOT NULL AUTO_INCREMENT,
  `ID_Producto_Original` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_producto` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `proveedor` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Producto_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_producto`
--

LOCK TABLES `dim_producto` WRITE;
/*!40000 ALTER TABLE `dim_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_tiempo` (
  `ID_Tiempo_SK` int NOT NULL,
  `fecha` date NOT NULL,
  `anio` smallint NOT NULL,
  `trimestre` tinyint NOT NULL,
  `mes` tinyint NOT NULL,
  `dia` tinyint NOT NULL,
  `nombre_mes` varchar(20) NOT NULL,
  `dia_semana` tinyint NOT NULL,
  `nombre_dia_semana` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Tiempo_SK`),
  UNIQUE KEY `idx_fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiempo`
--

LOCK TABLES `dim_tiempo` WRITE;
/*!40000 ALTER TABLE `dim_tiempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_ventas`
--

DROP TABLE IF EXISTS `fact_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_ventas` (
  `ID_Venta_SK` int NOT NULL AUTO_INCREMENT,
  `ID_Tiempo_SK` int NOT NULL,
  `ID_Cliente_SK` int NOT NULL,
  `ID_Producto_SK` int NOT NULL,
  `ID_Empleado_SK` int NOT NULL,
  `ID_Oficina_SK` int NOT NULL,
  `cantidad_vendida` int NOT NULL,
  `precio_unidad` decimal(10,2) NOT NULL,
  `monto_total` decimal(20,2) NOT NULL,
  PRIMARY KEY (`ID_Venta_SK`),
  KEY `fk_ventas_tiempo` (`ID_Tiempo_SK`),
  KEY `fk_ventas_cliente` (`ID_Cliente_SK`),
  KEY `fk_ventas_producto` (`ID_Producto_SK`),
  KEY `fk_ventas_empleado` (`ID_Empleado_SK`),
  KEY `fk_ventas_oficina` (`ID_Oficina_SK`),
  CONSTRAINT `fk_ventas_cliente` FOREIGN KEY (`ID_Cliente_SK`) REFERENCES `dim_cliente` (`ID_Cliente_SK`),
  CONSTRAINT `fk_ventas_empleado` FOREIGN KEY (`ID_Empleado_SK`) REFERENCES `dim_empleado` (`ID_Empleado_SK`),
  CONSTRAINT `fk_ventas_oficina` FOREIGN KEY (`ID_Oficina_SK`) REFERENCES `dim_oficina` (`ID_Oficina_SK`),
  CONSTRAINT `fk_ventas_producto` FOREIGN KEY (`ID_Producto_SK`) REFERENCES `dim_producto` (`ID_Producto_SK`),
  CONSTRAINT `fk_ventas_tiempo` FOREIGN KEY (`ID_Tiempo_SK`) REFERENCES `dim_tiempo` (`ID_Tiempo_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_ventas`
--

LOCK TABLES `fact_ventas` WRITE;
/*!40000 ALTER TABLE `fact_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jardineria_dw'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-07 15:21:17

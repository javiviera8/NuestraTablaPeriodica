-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tablaperiodicadb2.0
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `elemento`
--

DROP TABLE IF EXISTS `elemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `elemento` (
  `oid_elemento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_elemento` varchar(45) NOT NULL,
  `simbolo_elemento` varchar(45) NOT NULL,
  `numero_atomico` int(11) NOT NULL,
  `url_video` varchar(45) NOT NULL,
  `oid_tabla_periodica` int(11) NOT NULL,
  PRIMARY KEY (`oid_elemento`),
  UNIQUE KEY `nombre_elemento_UNIQUE` (`nombre_elemento`),
  UNIQUE KEY `simbolo_elemento_UNIQUE` (`simbolo_elemento`),
  UNIQUE KEY `numero_atomico_UNIQUE` (`numero_atomico`),
  UNIQUE KEY `url_video_UNIQUE` (`url_video`),
  KEY `fk_oid_tabla_periodica_idx` (`oid_tabla_periodica`),
  CONSTRAINT `fk_oid_tabla_periodica_elemento` FOREIGN KEY (`oid_tabla_periodica`) REFERENCES `tablaperiodica` (`oid_tabla_periodica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elemento`
--

LOCK TABLES `elemento` WRITE;
/*!40000 ALTER TABLE `elemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `elemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacion`
--

DROP TABLE IF EXISTS `operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `operacion` (
  `oid_operacion` int(11) NOT NULL AUTO_INCREMENT,
  `oid_tabla_periodica` int(11) NOT NULL,
  `oid_elemento` int(11) NOT NULL,
  `oid_usuario` int(11) NOT NULL,
  PRIMARY KEY (`oid_operacion`),
  KEY `fk_oid_tabla_periodica_operacion_idx` (`oid_tabla_periodica`),
  KEY `fk_oid_elemento_operacion_idx` (`oid_elemento`),
  KEY `fk_oid_usuario_operacion_idx` (`oid_usuario`),
  CONSTRAINT `fk_oid_elemento_operacion` FOREIGN KEY (`oid_elemento`) REFERENCES `elemento` (`oid_elemento`),
  CONSTRAINT `fk_oid_tabla_periodica_operacion` FOREIGN KEY (`oid_tabla_periodica`) REFERENCES `tablaperiodica` (`oid_tabla_periodica`),
  CONSTRAINT `fk_oid_usuario_operacion` FOREIGN KEY (`oid_usuario`) REFERENCES `usuario` (`oid_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacion`
--

LOCK TABLES `operacion` WRITE;
/*!40000 ALTER TABLE `operacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablaperiodica`
--

DROP TABLE IF EXISTS `tablaperiodica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tablaperiodica` (
  `oid_tabla_periodica` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`oid_tabla_periodica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablaperiodica`
--

LOCK TABLES `tablaperiodica` WRITE;
/*!40000 ALTER TABLE `tablaperiodica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tablaperiodica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `oid_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `oid_tabla_periodica` int(11) NOT NULL,
  PRIMARY KEY (`oid_usuario`),
  KEY `fk_oid_tabla_periodica_idx` (`oid_tabla_periodica`),
  CONSTRAINT `fk_oid_tabla_periodica_usuario` FOREIGN KEY (`oid_tabla_periodica`) REFERENCES `tablaperiodica` (`oid_tabla_periodica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 19:58:15

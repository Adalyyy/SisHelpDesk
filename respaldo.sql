/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: helpdesk
-- ------------------------------------------------------
-- Server version	11.4.7-MariaDB-0ubuntu0.25.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `t_asignacion`
--

DROP TABLE IF EXISTS `t_asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_asignacion` (
  `id_asignacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `marca` varchar(245) DEFAULT NULL,
  `modelo` varchar(245) DEFAULT NULL,
  `color` varchar(245) DEFAULT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  `memoria` varchar(245) DEFAULT NULL,
  `disco_duro` varchar(245) DEFAULT NULL,
  `procesador` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id_asignacion`),
  KEY `fkPersona_idx` (`id_persona`),
  KEY `fkEquipo` (`id_equipo`),
  CONSTRAINT `fkEquipo` FOREIGN KEY (`id_equipo`) REFERENCES `t_cat_equipo` (`id_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkPersonaAsigncion` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_asignacion`
--

LOCK TABLES `t_asignacion` WRITE;
/*!40000 ALTER TABLE `t_asignacion` DISABLE KEYS */;
INSERT INTO `t_asignacion` VALUES
(4,3,10,'Dell','Ryzen-7','Gris','Lap-rapida','1tb','1tb','ryzen7'),
(5,1,14,'Dell','Dell','dell','deelll','dell','dell','dell'),
(6,1,10,'Dell','11','11|','js','sw','w','ws');
/*!40000 ALTER TABLE `t_asignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cat_equipo`
--

DROP TABLE IF EXISTS `t_cat_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cat_equipo` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cat_equipo`
--

LOCK TABLES `t_cat_equipo` WRITE;
/*!40000 ALTER TABLE `t_cat_equipo` DISABLE KEYS */;
INSERT INTO `t_cat_equipo` VALUES
(9,'Pc','fas fa-desktop'),
(10,'Laptop','fas fa-laptop'),
(11,'Mouse',NULL),
(12,'Teclado',NULL),
(13,'Monitor',NULL),
(14,'Bocinas',NULL),
(15,'Microfono',NULL),
(16,'Proyector',NULL);
/*!40000 ALTER TABLE `t_cat_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cat_roles`
--

DROP TABLE IF EXISTS `t_cat_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cat_roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(245) NOT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cat_roles`
--

LOCK TABLES `t_cat_roles` WRITE;
/*!40000 ALTER TABLE `t_cat_roles` DISABLE KEYS */;
INSERT INTO `t_cat_roles` VALUES
(1,'cliente','Es un cliente'),
(2,'admin','Es Admin');
/*!40000 ALTER TABLE `t_cat_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_persona`
--

DROP TABLE IF EXISTS `t_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `paterno` varchar(245) NOT NULL,
  `materno` varchar(245) DEFAULT NULL,
  `nombre` varchar(245) NOT NULL,
  `fecha_nacimiento` varchar(245) NOT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(245) DEFAULT NULL,
  `fechaInsert` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_persona`
--

LOCK TABLES `t_persona` WRITE;
/*!40000 ALTER TABLE `t_persona` DISABLE KEYS */;
INSERT INTO `t_persona` VALUES
(1,'Sanchez','desk','demo','2025-12-09','M','5555','sis@test.com','2026-03-12 06:09:20'),
(2,'test','test','test','2026-03-13','F','44','test@gmail.com','2026-03-13 19:11:05'),
(3,'Sanchez','Castro','Sam','2026-03-03','F','5555555','test@gmail.com','2026-03-14 21:43:52'),
(4,'Sanchez','Castro','Adaly','2026-03-10','F','55','sis@gmail.com','2026-03-17 18:22:24'),
(5,'dingo','dingo','dingo ','2026-03-10','M','15','dingo@gmail.com','2026-03-17 18:23:59');
/*!40000 ALTER TABLE `t_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reportes`
--

DROP TABLE IF EXISTS `t_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reportes` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_usuario_tecnico` int(11) DEFAULT NULL,
  `descripcion_problema` text NOT NULL,
  `solucion_problema` text DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_reporte`),
  KEY `fkUsuariosReportes_idx` (`id_usuario`),
  KEY `fkEquipoReporte_idx` (`id_equipo`),
  CONSTRAINT `fkEquipoReporte` FOREIGN KEY (`id_equipo`) REFERENCES `t_cat_equipo` (`id_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuariosReportes` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reportes`
--

LOCK TABLES `t_reportes` WRITE;
/*!40000 ALTER TABLE `t_reportes` DISABLE KEYS */;
INSERT INTO `t_reportes` VALUES
(5,2,10,1,'Se calienta mucho y se apaga','Solucion de pruebatest',0,'2026-03-15 22:16:13'),
(7,2,14,1,'test para reporte abierto','admin respondiendo, lo volvi a abrir jajja',1,'2026-03-16 01:32:20'),
(8,2,10,NULL,'testt',NULL,1,'2026-03-16 16:57:25');
/*!40000 ALTER TABLE `t_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuarios`
--

DROP TABLE IF EXISTS `t_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(245) NOT NULL,
  `password` varchar(245) NOT NULL,
  `ubicacion` text DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `fecha_insert` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fkPersona_idx` (`id_persona`),
  KEY `fkRoles_idx` (`id_rol`),
  CONSTRAINT `fkPersona` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkRoles` FOREIGN KEY (`id_rol`) REFERENCES `t_cat_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuarios`
--

LOCK TABLES `t_usuarios` WRITE;
/*!40000 ALTER TABLE `t_usuarios` DISABLE KEYS */;
INSERT INTO `t_usuarios` VALUES
(1,2,1,'admin','d033e22ae348aeb5660fc2140aec35850c4da997','M.1',1,NULL),
(2,1,1,'cliente','d94019fd760a71edf11844bb5c601a4de95aacaf','M.1',1,NULL),
(4,1,3,'test','7b21848ac9af35be0ddb2d6b9fc3851934db8420','Teeeest',0,NULL),
(5,1,4,'ada','356a192b7913b04c54574d18c28d46e6395428ab','M2',1,NULL);
/*!40000 ALTER TABLE `t_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-03-18 18:52:40

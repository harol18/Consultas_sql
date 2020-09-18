-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: dblibranza
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `idactividades` int NOT NULL AUTO_INCREMENT,
  `actividad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idactividades`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras1_ds`
--

DROP TABLE IF EXISTS `carteras1_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras1_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion1` varchar(40) DEFAULT NULL,
  `nit_entidad1` varchar(20) DEFAULT NULL,
  `nombre_entidad1` varchar(60) DEFAULT NULL,
  `valor_cartera1` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras1_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `oficina_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras2_ds`
--

DROP TABLE IF EXISTS `carteras2_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras2_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion2` varchar(40) DEFAULT NULL,
  `nit_entidad2` varchar(20) DEFAULT NULL,
  `nombre_entidad2` varchar(60) DEFAULT NULL,
  `valor_cartera2` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras2_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras1_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras3_ds`
--

DROP TABLE IF EXISTS `carteras3_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras3_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion3` varchar(40) DEFAULT NULL,
  `nit_entidad3` varchar(20) DEFAULT NULL,
  `nombre_entidad3` varchar(60) DEFAULT NULL,
  `valor_cartera3` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras3_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras2_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras4_ds`
--

DROP TABLE IF EXISTS `carteras4_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras4_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion4` varchar(40) DEFAULT NULL,
  `nit_entidad4` varchar(20) DEFAULT NULL,
  `nombre_entidad4` varchar(60) DEFAULT NULL,
  `valor_cartera4` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras4_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras3_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras5_ds`
--

DROP TABLE IF EXISTS `carteras5_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras5_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion5` varchar(40) DEFAULT NULL,
  `nit_entidad5` varchar(20) DEFAULT NULL,
  `nombre_entidad5` varchar(60) DEFAULT NULL,
  `valor_cartera5` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras5_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras4_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras6_ds`
--

DROP TABLE IF EXISTS `carteras6_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras6_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion6` varchar(40) DEFAULT NULL,
  `nit_entidad6` varchar(20) DEFAULT NULL,
  `nombre_entidad6` varchar(60) DEFAULT NULL,
  `valor_cartera6` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras6_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras5_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras7_ds`
--

DROP TABLE IF EXISTS `carteras7_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras7_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion7` varchar(40) DEFAULT NULL,
  `nit_entidad7` varchar(20) DEFAULT NULL,
  `nombre_entidad7` varchar(60) DEFAULT NULL,
  `valor_cartera7` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras7_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras6_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteras8_ds`
--

DROP TABLE IF EXISTS `carteras8_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteras8_ds` (
  `radicado` int NOT NULL,
  `numero_obligacion8` varchar(40) DEFAULT NULL,
  `nit_entidad8` varchar(20) DEFAULT NULL,
  `nombre_entidad8` varchar(60) DEFAULT NULL,
  `valor_cartera8` varchar(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `carteras8_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras7_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente_colp`
--

DROP TABLE IF EXISTS `cliente_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_colp` (
  `Radicado` int NOT NULL,
  `Cedula` varchar(14) NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Estado_Cliente` varchar(25) NOT NULL,
  `N_Afiliacion1` varchar(20) NOT NULL,
  `N_Afiliacion2` varchar(20) NOT NULL,
  `Recaudo` int DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente_ds`
--

DROP TABLE IF EXISTS `cliente_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_ds` (
  `radicado` int NOT NULL,
  `cedula` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cuenta` varchar(20) DEFAULT NULL,
  `estatura` int DEFAULT NULL,
  `peso` int DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente_vb`
--

DROP TABLE IF EXISTS `cliente_vb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_vb` (
  `Radicado` int NOT NULL,
  `Cedula` int NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Cod_Militar1` int DEFAULT '0',
  `Cod_Militar2` int DEFAULT '0',
  `Grado` varchar(50) DEFAULT NULL,
  `Fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contabilizados_colp`
--

DROP TABLE IF EXISTS `contabilizados_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contabilizados_colp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fecha_corte` varchar(10) DEFAULT NULL,
  `Convenio` varchar(10) DEFAULT NULL,
  `Nombre_Convenio` varchar(100) DEFAULT NULL,
  `Consecutivo` varchar(10) DEFAULT NULL,
  `Scoring` varchar(20) DEFAULT NULL,
  `Nombre` varchar(150) DEFAULT NULL,
  `Cedula_cliente` varchar(20) DEFAULT NULL,
  `Fecha_desembolso` varchar(10) DEFAULT NULL,
  `Importe` varchar(20) DEFAULT NULL,
  `Plazo` int DEFAULT NULL,
  `TasaE_A` varchar(10) DEFAULT NULL,
  `TasaN_M` varchar(10) DEFAULT NULL,
  `Valor_cuota` varchar(30) DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  `Marcacion_retanqueo` varchar(10) DEFAULT NULL,
  `RP` varchar(2) DEFAULT NULL,
  `Fecha_Cargue_Archivo` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `control_horarios`
--

DROP TABLE IF EXISTS `control_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_horarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Identificacion` int DEFAULT NULL,
  `Nombre` varchar(150) DEFAULT NULL,
  `Area` varchar(45) DEFAULT NULL,
  `Actividad` varchar(45) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datos_giro`
--

DROP TABLE IF EXISTS `datos_giro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_giro` (
  `radicado` int NOT NULL,
  `cedula` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `sucursal` varchar(50) DEFAULT NULL,
  `fecha_giro` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fallecidos_colp`
--

DROP TABLE IF EXISTS `fallecidos_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallecidos_colp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Afiliacion` varchar(50) DEFAULT NULL,
  `Cedula` int DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Mes` int DEFAULT NULL,
  `Cuota` int DEFAULT NULL,
  `Nit` varchar(50) DEFAULT NULL,
  `Entidad` varchar(20) DEFAULT NULL,
  `Estado_cliente` varchar(45) DEFAULT NULL,
  `Fecha_Cargue_archivo` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fuerza_comercial_ds`
--

DROP TABLE IF EXISTS `fuerza_comercial_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuerza_comercial_ds` (
  `radicado` int NOT NULL,
  `nombre_coordinador` varchar(100) DEFAULT NULL,
  `cedula_gestor` int DEFAULT NULL,
  `nombre_gestor` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `fuerza_comercial_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `carteras8_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gestion_colp`
--

DROP TABLE IF EXISTS `gestion_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion_colp` (
  `Radicado` int NOT NULL,
  `Estado_Operacion` varchar(45) DEFAULT NULL,
  `Estado_cargue` varchar(20) DEFAULT NULL,
  `Fecha_Cargue` varchar(20) DEFAULT NULL,
  `Fecha_desembolso` varchar(20) DEFAULT NULL,
  `Respuesta_Cargue` varchar(20) DEFAULT NULL,
  `Proximo_Cargue` varchar(20) DEFAULT NULL,
  `Causal_Rechazo` varchar(20) DEFAULT NULL,
  `Fecha_respuesta` varchar(20) DEFAULT NULL,
  `Plano_Dia` varchar(20) DEFAULT NULL,
  `Plano_Pre` varchar(20) DEFAULT NULL,
  `Plano` varchar(45) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `Id_Funcionario` int DEFAULT '0',
  `Nombre_Funcionario` varchar(100) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`),
  CONSTRAINT `gestion_colp_ibfk_1` FOREIGN KEY (`Radicado`) REFERENCES `prestamo_colp` (`Radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizarfecha_proximocargue` BEFORE UPDATE ON `gestion_colp` FOR EACH ROW BEGIN
  IF NEW.Respuesta_Cargue = "Negada"
    THEN
      SET NEW.Proximo_Cargue = DATE_FORMAT(DATE_ADD(NOW(),INTERVAL 15 DAY),"%d/%m/%Y"); 
  END IF ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `gestion_vb`
--

DROP TABLE IF EXISTS `gestion_vb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion_vb` (
  `Radicado` int NOT NULL,
  `Fecha_Envio` varchar(20) DEFAULT NULL,
  `Fecha_Respuesta` varchar(20) DEFAULT NULL,
  `Fecha_Restriccion` varchar(20) DEFAULT NULL,
  `Corte` varchar(20) DEFAULT NULL,
  `Tipologia` int DEFAULT '0',
  `Estado` varchar(20) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `Id_Funcionario` int DEFAULT '0',
  `Nombre_Funcionario` varchar(100) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`),
  CONSTRAINT `gestion_vb_ibfk_1` FOREIGN KEY (`Radicado`) REFERENCES `prestamo_vb` (`Radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_colp`
--

DROP TABLE IF EXISTS `historico_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_colp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Radicado` int NOT NULL,
  `Cedula` varchar(14) NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Estado_Cliente` varchar(25) NOT NULL,
  `N_Afiliacion1` varchar(20) NOT NULL,
  `N_Afiliacion2` varchar(20) NOT NULL,
  `Recaudo` int DEFAULT NULL,
  `Scoring` varchar(20) NOT NULL,
  `Consecutivo` varchar(20) DEFAULT NULL,
  `Fuerza_Venta` varchar(30) DEFAULT NULL,
  `Destino` varchar(45) DEFAULT NULL,
  `Rtq` varchar(45) DEFAULT NULL,
  `Monto_Aprobado` varchar(20) NOT NULL,
  `Plazo_Aprobado` varchar(3) NOT NULL,
  `Cuota` varchar(30) DEFAULT NULL,
  `Total` varchar(30) DEFAULT NULL,
  `Pagare` varchar(10) DEFAULT NULL,
  `Nit` int DEFAULT NULL,
  `Entidades` varchar(150) DEFAULT NULL,
  `Cuota_Letras` varchar(150) DEFAULT NULL,
  `Total_Letras` varchar(150) DEFAULT NULL,
  `Estado_Operacion` varchar(45) DEFAULT NULL,
  `Estado_cargue` varchar(20) DEFAULT NULL,
  `Fecha_Cargue` varchar(20) DEFAULT NULL,
  `Proximo_Cargue` varchar(20) DEFAULT NULL,
  `Fecha_desembolso` varchar(20) DEFAULT NULL,
  `Respuesta_Cargue` varchar(20) DEFAULT NULL,
  `Causal_Rechazo` varchar(20) DEFAULT NULL,
  `Fecha_respuesta` varchar(20) DEFAULT NULL,
  `Plano_Dia` varchar(20) DEFAULT NULL,
  `Plano_Pre` varchar(20) DEFAULT NULL,
  `Plano` varchar(45) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `Id_Funcionario` int DEFAULT '0',
  `Nombre_Funcionario` varchar(100) DEFAULT NULL,
  `Fecha_Modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_ds`
--

DROP TABLE IF EXISTS `historico_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_ds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `radicado` int NOT NULL,
  `cedula` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cuenta` varchar(20) DEFAULT NULL,
  `estatura` int DEFAULT NULL,
  `peso` int DEFAULT NULL,
  `scoring` varchar(20) DEFAULT NULL,
  `valor_aprobado` varchar(20) NOT NULL,
  `plazo` int NOT NULL,
  `destino` varchar(20) NOT NULL,
  `r_Automatico` varchar(25) DEFAULT NULL,
  `convenio` varchar(25) NOT NULL,
  `dactiloscopia` varchar(25) DEFAULT NULL,
  `g_telefonica` varchar(25) DEFAULT NULL,
  `codigo_oficina` int DEFAULT NULL,
  `sucursal` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `numero_obligacion1` varchar(40) DEFAULT NULL,
  `nit_entidad1` varchar(20) DEFAULT NULL,
  `nombre_entidad1` varchar(60) DEFAULT NULL,
  `valor_cartera1` varchar(20) DEFAULT NULL,
  `numero_obligacion2` varchar(40) DEFAULT NULL,
  `nit_entidad2` varchar(20) DEFAULT NULL,
  `nombre_entidad2` varchar(60) DEFAULT NULL,
  `valor_cartera2` varchar(20) DEFAULT NULL,
  `numero_obligacion3` varchar(40) DEFAULT NULL,
  `nit_entidad3` varchar(20) DEFAULT NULL,
  `nombre_entidad3` varchar(60) DEFAULT NULL,
  `valor_cartera3` varchar(20) DEFAULT NULL,
  `numero_obligacion4` varchar(40) DEFAULT NULL,
  `nit_entidad4` varchar(20) DEFAULT NULL,
  `nombre_entidad4` varchar(60) DEFAULT NULL,
  `valor_cartera4` varchar(20) DEFAULT NULL,
  `numero_obligacion5` varchar(40) DEFAULT NULL,
  `nit_entidad5` varchar(20) DEFAULT NULL,
  `nombre_entidad5` varchar(60) DEFAULT NULL,
  `valor_cartera5` varchar(20) DEFAULT NULL,
  `numero_obligacion6` varchar(40) DEFAULT NULL,
  `nit_entidad6` varchar(20) DEFAULT NULL,
  `nombre_entidad6` varchar(60) DEFAULT NULL,
  `valor_cartera6` varchar(20) DEFAULT NULL,
  `numero_obligacion7` varchar(40) DEFAULT NULL,
  `nit_entidad7` varchar(20) DEFAULT NULL,
  `nombre_entidad7` varchar(60) DEFAULT NULL,
  `valor_cartera7` varchar(20) DEFAULT NULL,
  `numero_obligacion8` varchar(40) DEFAULT NULL,
  `nit_entidad8` varchar(20) DEFAULT NULL,
  `nombre_entidad8` varchar(60) DEFAULT NULL,
  `valor_cartera8` varchar(20) DEFAULT NULL,
  `nombre_coordinador` varchar(100) DEFAULT NULL,
  `cedula_gestor` int DEFAULT NULL,
  `nombre_gestor` varchar(100) DEFAULT NULL,
  `total_cpk` varchar(20) DEFAULT NULL,
  `saldo_cliente` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_desembolso` varchar(20) DEFAULT NULL,
  `identificacion` int NOT NULL,
  `nombre_funcionario` varchar(150) NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scoring` (`scoring`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_vb`
--

DROP TABLE IF EXISTS `historico_vb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_vb` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Radicado` int NOT NULL,
  `Cedula` int NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Cod_Militar1` int DEFAULT '0',
  `Cod_Militar2` int DEFAULT '0',
  `Grado` varchar(50) DEFAULT NULL,
  `Scoring` varchar(20) NOT NULL,
  `Destino` varchar(20) DEFAULT NULL,
  `Fuerza_Venta` varchar(30) DEFAULT NULL,
  `TasaE_A` varchar(10) DEFAULT NULL,
  `TasaN_M` varchar(10) DEFAULT NULL,
  `Monto_Aprobado` varchar(20) NOT NULL,
  `Plazo_Aprobado` int DEFAULT '0',
  `Subproducto` int DEFAULT '0',
  `Convenio` varchar(10) DEFAULT NULL,
  `Consecutivo` varchar(10) DEFAULT NULL,
  `Cuota` varchar(30) DEFAULT NULL,
  `Total` varchar(30) DEFAULT NULL,
  `Cuota_Letras` varchar(150) DEFAULT NULL,
  `Total_Letras` varchar(150) DEFAULT NULL,
  `Fecha_Envio` varchar(20) DEFAULT NULL,
  `Fecha_Respuesta` varchar(20) DEFAULT NULL,
  `Fecha_Restriccion` varchar(20) DEFAULT NULL,
  `Corte` varchar(20) DEFAULT NULL,
  `Tipologia` int DEFAULT '0',
  `Estado` varchar(20) DEFAULT NULL,
  `Comentarios` varchar(500) DEFAULT NULL,
  `Id_Funcionario` int DEFAULT '0',
  `Nombre_Funcionario` varchar(100) DEFAULT NULL,
  `Fecha_Modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `informacion_correo`
--

DROP TABLE IF EXISTS `informacion_correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_correo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `de` varchar(100) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `copia` varchar(200) DEFAULT NULL,
  `fecha_creacion` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oficina_ds`
--

DROP TABLE IF EXISTS `oficina_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina_ds` (
  `radicado` int NOT NULL,
  `codigo_oficina` int DEFAULT NULL,
  `sucursal` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `oficina_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `prestamo_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planos_cargue`
--

DROP TABLE IF EXISTS `planos_cargue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planos_cargue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Afiliacion` varchar(20) DEFAULT NULL,
  `plano` varchar(45) DEFAULT NULL,
  `Fecha_Cargue` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prestamo_colp`
--

DROP TABLE IF EXISTS `prestamo_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo_colp` (
  `Radicado` int NOT NULL,
  `Scoring` varchar(20) NOT NULL,
  `Consecutivo` varchar(20) DEFAULT NULL,
  `Fuerza_Venta` varchar(30) DEFAULT NULL,
  `Destino` varchar(45) DEFAULT NULL,
  `Rtq` varchar(45) DEFAULT NULL,
  `Monto_Aprobado` varchar(20) NOT NULL,
  `Plazo_Aprobado` varchar(3) NOT NULL,
  `Cuota` varchar(30) DEFAULT NULL,
  `Total` varchar(30) DEFAULT NULL,
  `Pagare` varchar(10) DEFAULT NULL,
  `Nit` int DEFAULT NULL,
  `Entidades` varchar(150) DEFAULT NULL,
  `Cuota_Letras` varchar(150) DEFAULT NULL,
  `Total_Letras` varchar(150) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`),
  CONSTRAINT `prestamo_colp_ibfk_1` FOREIGN KEY (`Radicado`) REFERENCES `cliente_colp` (`Radicado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prestamo_ds`
--

DROP TABLE IF EXISTS `prestamo_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo_ds` (
  `radicado` int NOT NULL,
  `scoring` varchar(20) DEFAULT NULL,
  `valor_aprobado` varchar(20) NOT NULL,
  `plazo` int NOT NULL,
  `destino` varchar(20) NOT NULL,
  `r_Automatico` varchar(25) DEFAULT NULL,
  `convenio` varchar(25) NOT NULL,
  `dactiloscopia` varchar(25) DEFAULT NULL,
  `g_telefonica` varchar(25) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  UNIQUE KEY `scoring` (`scoring`),
  CONSTRAINT `prestamo_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `cliente_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prestamo_vb`
--

DROP TABLE IF EXISTS `prestamo_vb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo_vb` (
  `Radicado` int NOT NULL,
  `Scoring` varchar(20) NOT NULL,
  `Destino` varchar(20) DEFAULT NULL,
  `Fuerza_Venta` varchar(30) DEFAULT NULL,
  `TasaE_A` varchar(10) DEFAULT NULL,
  `TasaN_M` varchar(10) DEFAULT NULL,
  `Monto_Aprobado` varchar(20) NOT NULL,
  `Plazo_Aprobado` int DEFAULT '0',
  `Subproducto` int DEFAULT '0',
  `Convenio` varchar(10) DEFAULT NULL,
  `Consecutivo` varchar(10) DEFAULT NULL,
  `Cuota` varchar(30) DEFAULT NULL,
  `Total` varchar(30) DEFAULT NULL,
  `Cuota_Letras` varchar(150) DEFAULT NULL,
  `Total_Letras` varchar(150) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Radicado`),
  CONSTRAINT `prestamo_vb_ibfk_1` FOREIGN KEY (`Radicado`) REFERENCES `cliente_vb` (`Radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recaudos_colp`
--

DROP TABLE IF EXISTS `recaudos_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recaudos_colp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(14) DEFAULT NULL,
  `Afiliacion` varchar(50) DEFAULT NULL,
  `Libranza` varchar(20) DEFAULT NULL,
  `Cuota` varchar(20) DEFAULT NULL,
  `Plazo` int DEFAULT NULL,
  `Mes_Recaudo` varchar(45) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rescates_colp`
--

DROP TABLE IF EXISTS `rescates_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rescates_colp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Afiliacion` varchar(20) DEFAULT NULL,
  `Cedula` varchar(14) DEFAULT NULL,
  `Nit` int DEFAULT NULL,
  `Cuota` varchar(30) DEFAULT NULL,
  `Plazo` varchar(3) DEFAULT NULL,
  `Pagare` varchar(10) DEFAULT NULL,
  `Plano_pre` varchar(20) DEFAULT NULL,
  `Plano_dia` varchar(20) DEFAULT NULL,
  `Fecha_cargue` varchar(20) DEFAULT NULL,
  `Id_Funcionario` int DEFAULT NULL,
  `Nombre_Funcionario` varchar(100) DEFAULT NULL,
  `Fecha_Gestion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resultado_ds`
--

DROP TABLE IF EXISTS `resultado_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado_ds` (
  `radicado` int NOT NULL,
  `total_cpk` varchar(20) DEFAULT NULL,
  `saldo_cliente` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_desembolso` varchar(20) DEFAULT NULL,
  `identificacion` int NOT NULL,
  `nombre_funcionario` varchar(150) NOT NULL,
  `Fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`radicado`),
  CONSTRAINT `resultado_ds_ibfk_1` FOREIGN KEY (`radicado`) REFERENCES `fuerza_comercial_ds` (`radicado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_coordinador`
--

DROP TABLE IF EXISTS `tf_coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_coordinador` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_coordinador` varchar(100) DEFAULT NULL,
  `correo_coordinador` varchar(100) DEFAULT NULL,
  `correo_apoyo` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_entidades`
--

DROP TABLE IF EXISTS `tf_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_entidades` (
  `id_tfentidad` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_entidad` varchar(200) DEFAULT NULL,
  `nit_entidad` varchar(20) DEFAULT NULL,
  `estado_entidad` varchar(10) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tfentidad`)
) ENGINE=InnoDB AUTO_INCREMENT=1551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_oficinas`
--

DROP TABLE IF EXISTS `tf_oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_oficinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo_oficina` int DEFAULT NULL,
  `sucursal` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `nombre_gerente` varchar(100) DEFAULT NULL,
  `correo_gerente` varchar(100) DEFAULT NULL,
  `nombre_subgerente` varchar(100) DEFAULT NULL,
  `correo_subgerente` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_usuarios`
--

DROP TABLE IF EXISTS `tf_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_usuarios` (
  `id_Usuario` int NOT NULL AUTO_INCREMENT,
  `Identificacion` int NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Contraseña` varchar(150) NOT NULL,
  `Area` varchar(45) DEFAULT NULL,
  `Fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tfrechazos_colp`
--

DROP TABLE IF EXISTS `tfrechazos_colp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tfrechazos_colp` (
  `Id_Rechazo` int NOT NULL AUTO_INCREMENT,
  `Codigo` int DEFAULT NULL,
  `Rechazo` varchar(220) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Rechazo`),
  UNIQUE KEY `id_rechazo` (`Id_Rechazo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'dblibranza'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_cargueckl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_cargueckl`(
in _N_Afiliacion2 varchar(20),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Respuesta_Cargue varchar(20),
in _Plano varchar(45)
)
BEGIN
UPDATE gestion_colp ges
INNER JOIN cliente_colp cl
ON ges.radicado = cl.radicado
SET 
Estado_cargue=_Estado_cargue,
Fecha_Cargue=_Fecha_Cargue,
Respuesta_Cargue=_Respuesta_Cargue,
Plano=_Plano
WHERE N_Afiliacion2=_N_Afiliacion2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_colp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_colp`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Entidades varchar(150),
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Fecha_desembolso varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
update cliente_colp set 
Cedula=_Cedula,
Nombre_Cliente=_Nombre_Cliente,
Estado_Cliente=_Estado_Cliente,
N_Afiliacion1=_N_Afiliacion1,
N_Afiliacion2=_N_Afiliacion2,
Recaudo=_Recaudo
WHERE Radicado=_Radicado;

update prestamo_colp set
Scoring=_Scoring,
Consecutivo=_Consecutivo,
Fuerza_Venta=_Fuerza_Venta,
Destino=_Destino,
Monto_Aprobado=_Monto_Aprobado,
Plazo_Aprobado=_Plazo_Aprobado,
Cuota=_Cuota,
Total=_Total,
Pagare=_Pagare,
Nit=_Nit,
Entidades=_Entidades,
Cuota_Letras=_Cuota_Letras,
Total_Letras=_Total_Letras
WHERE Radicado=_Radicado;

update gestion_colp set
Estado_Operacion=_Estado_Operacion,
Estado_cargue=_Estado_cargue, 
Fecha_Cargue=_Fecha_Cargue,
Fecha_desembolso=_Fecha_desembolso,
Respuesta_Cargue=_Respuesta_Cargue,
Causal_Rechazo=_Causal_Rechazo,
Fecha_respuesta=_Fecha_respuesta,
Plano_Dia=_Plano_Dia,
Plano_Pre=_Plano_Pre,
Plano=_Plano,
Comentarios=_Comentarios,
Id_Funcionario=_Id_Funcionario,
Nombre_Funcionario=_Nombre_Funcionario
WHERE Radicado=_Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_colp_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_colp_dia`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Rtq varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
update cliente_colp set 
Cedula=_Cedula,
Nombre_Cliente=_Nombre_Cliente,
Estado_Cliente=_Estado_Cliente,
N_Afiliacion1=_N_Afiliacion1,
N_Afiliacion2=_N_Afiliacion2,
Recaudo=_Recaudo
WHERE Radicado=_Radicado;

update prestamo_colp set
Scoring=_Scoring,
Consecutivo=_Consecutivo,
Fuerza_Venta=_Fuerza_Venta,
Destino=_Destino,
Rtq=_Rtq,
Monto_Aprobado=_Monto_Aprobado,
Plazo_Aprobado=_Plazo_Aprobado,
Cuota=_Cuota,
Total=_Total,
Pagare=_Pagare,
Nit=_Nit,
Cuota_Letras=_Cuota_Letras,
Total_Letras=_Total_Letras
WHERE Radicado=_Radicado;

update gestion_colp set
Estado_Operacion=_Estado_Operacion,
Estado_cargue=_Estado_cargue, 
Fecha_Cargue=_Fecha_Cargue,
Respuesta_Cargue=_Respuesta_Cargue,
Causal_Rechazo=_Causal_Rechazo,
Fecha_respuesta=_Fecha_respuesta,
Plano_Dia=_Plano_Dia,
Plano_Pre=_Plano_Pre,
Plano=_Plano,
Comentarios=_Comentarios,
Id_Funcionario=_Id_Funcionario,
Nombre_Funcionario=_Nombre_Funcionario
WHERE Radicado=_Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_orden`(in _radicado int,
in _cedula INT,  
in _nombre VARCHAR(100),
in _estatura INT,
in _peso INT,
in _cuenta VARCHAR(20),
in _scoring VARCHAR(20),
in _valor_aprobado VARCHAR(20),
in _plazo INT,
in _destino varchar(20),
in _r_Automatico varchar(25),
in _convenio VARCHAR(25),
in _dactiloscopia VARCHAR(25),
in _g_telefonica VARCHAR(25),
in _codigo_oficina INT,
in _sucursal varchar(50),
in _ciudad varchar(50),
in _cedula_gestor INT,
in _nombre_gestor VARCHAR(100),
in _nombre_coordinador VARCHAR(100),
in _numero_obligacion1 VARCHAR(40),
in _nit_entidad1 varchar(20),
in _nombre_entidad1 varchar(60),
in _valor_cartera1 VARCHAR(20),
in _numero_obligacion2 VARCHAR(40),
in _nit_entidad2 varchar(20),
in _nombre_entidad2 varchar(60),
in _valor_cartera2 VARCHAR(20),
in _numero_obligacion3 VARCHAR(40),
in _nit_entidad3 varchar(20),
in _nombre_entidad3 varchar(60),
in _valor_cartera3 VARCHAR(20),
in _numero_obligacion4 VARCHAR(40),
in _nit_entidad4 varchar(20),
in _nombre_entidad4 varchar(60),
in _valor_cartera4 VARCHAR(20),
in _numero_obligacion5 VARCHAR(40),
in _nit_entidad5 varchar(20),
in _nombre_entidad5 varchar(60),
in _valor_cartera5 VARCHAR(20),
in _numero_obligacion6 VARCHAR(40),
in _nit_entidad6 varchar(20),
in _nombre_entidad6 varchar(60),
in _valor_cartera6 VARCHAR(20),
in _numero_obligacion7 VARCHAR(40),
in _nit_entidad7 varchar(20),
in _nombre_entidad7 varchar(60),
in _valor_cartera7 VARCHAR(20),
in _numero_obligacion8 VARCHAR(40),
in _nit_entidad8 varchar(20),
in _nombre_entidad8 varchar(60),
in _valor_cartera8 VARCHAR(20),
in _total_cpk VARCHAR(20),
in _saldo_cliente VARCHAR(20),
in _estado VARCHAR(20),
in _fecha_desembolso varchar(20),
in _identificacion INT,
in _nombre_funcionario varchar(150)
)
BEGIN
update cliente_ds set 
cedula=_cedula,
nombre=_nombre,
estatura=_estatura,
peso=_peso,
cuenta=_cuenta
WHERE radicado=_radicado;

update prestamo_ds set
scoring=_scoring,
valor_aprobado=_valor_aprobado,
plazo=_plazo,
destino=_destino,
r_Automatico=_r_Automatico,
convenio=_convenio,
dactiloscopia=_dactiloscopia,
g_telefonica=_g_telefonica
WHERE radicado=_radicado;

update oficina_ds set
codigo_oficina=_codigo_oficina,
sucursal=_sucursal,
ciudad=_ciudad
WHERE radicado=_radicado;
                 
update carteras1_ds set
numero_obligacion1=_numero_obligacion1,
nit_entidad1=_nit_entidad1,
nombre_entidad1=_nombre_entidad1,
valor_cartera1=_valor_cartera1
WHERE radicado=_radicado;

update carteras2_ds set
numero_obligacion2=_numero_obligacion2,
nit_entidad2=_nit_entidad2,
nombre_entidad2=_nombre_entidad2,
valor_cartera2=_valor_cartera2
WHERE radicado=_radicado;

update carteras3_ds set
numero_obligacion3=_numero_obligacion3,
nit_entidad3=_nit_entidad3,
nombre_entidad3=_nombre_entidad3,
valor_cartera3=_valor_cartera3
WHERE radicado=_radicado;

update carteras4_ds set
numero_obligacion4=_numero_obligacion4,
nit_entidad4=_nit_entidad4,
nombre_entidad4=_nombre_entidad4,
valor_cartera4=_valor_cartera4
WHERE radicado=_radicado;

update carteras5_ds set
numero_obligacion5=_numero_obligacion5,
nit_entidad5=_nit_entidad5,
nombre_entidad5=_nombre_entidad5,
valor_cartera5=_valor_cartera5
WHERE radicado=_radicado;

update carteras6_ds set
numero_obligacion6=_numero_obligacion6,
nit_entidad6=_nit_entidad6,
nombre_entidad6=_nombre_entidad6,
valor_cartera6=_valor_cartera6
WHERE radicado=_radicado;

update carteras7_ds set
numero_obligacion7=_numero_obligacion7,
nit_entidad7=_nit_entidad7,
nombre_entidad7=_nombre_entidad7,
valor_cartera7=_valor_cartera7
WHERE radicado=_radicado;

update carteras8_ds set
numero_obligacion8=_numero_obligacion8,
nit_entidad8=_nit_entidad8,
nombre_entidad8=_nombre_entidad8,
valor_cartera8=_valor_cartera8
WHERE radicado=_radicado;

update fuerza_comercial_ds set
nombre_coordinador=_nombre_coordinador,
cedula_gestor=_cedula_gestor,
nombre_gestor=_nombre_gestor
WHERE radicado=_radicado;
               
update resultado_ds set
total_cpk=_total_cpk,
saldo_cliente=_saldo_cliente,
estado=_estado,
fecha_desembolso=_fecha_desembolso,
identificacion=_identificacion,
nombre_funcionario=_nombre_funcionario
WHERE radicado=_radicado;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_rtackl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_rtackl`(
in _N_Afiliacion2 varchar(20),
in _Respuesta_Cargue varchar(20),
in _Fecha_respuesta varchar(20),
in _Causal_Rechazo varchar(20)
)
BEGIN
UPDATE gestion_colp ges
INNER JOIN cliente_colp cl
ON ges.radicado = cl.radicado
SET 
Respuesta_Cargue=_Respuesta_Cargue,
Fecha_respuesta=_Fecha_respuesta,
Causal_Rechazo=_Causal_Rechazo
WHERE N_Afiliacion2=_N_Afiliacion2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_vb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_vb`(in _Radicado int,
in _Cedula int,
in _Nombre_Cliente varchar(100),
in _Cod_Militar1 int,
in _Cod_Militar2 int,
in _Grado varchar(50),
in _Scoring varchar(20),
in _Destino varchar(20),
in _Fuerza_Venta varchar(30),
in _TasaE_A varchar(10),
in _TasaN_M varchar(10),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado int,
in _Subproducto int,
in _Convenio varchar(10),
in _Consecutivo varchar(10),
in _Cuota varchar(30),
in _Total varchar(30),
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Fecha_Envio varchar(20),
in _Fecha_Respuesta varchar(20),
in _Fecha_Restriccion varchar(20),
in _Corte varchar(20),
in _Tipologia varchar(3),
in _Estado varchar(20),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
update CLIENTE_VB set 
Radicado=_Radicado,
Cedula=_Cedula,
Nombre_Cliente=_Nombre_Cliente,
Cod_Militar1=_Cod_Militar1,
Cod_Militar2=_Cod_Militar2,
Grado=_Grado
WHERE Radicado=_Radicado;

update PRESTAMO_VB set
Radicado=_Radicado,
Scoring=_Scoring,
Destino=_Destino,
Fuerza_Venta=_Fuerza_Venta,
TasaE_A=_TasaE_A,
TasaN_M=_TasaN_M,
Monto_Aprobado=_Monto_Aprobado,
Plazo_Aprobado=_Plazo_Aprobado,
Subproducto=_Subproducto,
Convenio=_Convenio,
Consecutivo=_Consecutivo,
Cuota=_Cuota,
Total=_Total,
Cuota_Letras=_Cuota_Letras,
Total_Letras=_Total_Letras
WHERE Radicado=_Radicado;

update GESTION_VB set
Radicado=_Radicado,
Fecha_Envio=_Fecha_Envio,
Fecha_Respuesta=_Fecha_Respuesta,
Fecha_Restriccion=_Fecha_Restriccion,
Corte=_Corte,
Tipologia=_Tipologia,
Estado=_Estado,
Comentarios=_Comentarios,
Id_Funcionario=_Id_Funcionario,
Nombre_Funcionario=_Nombre_Funcionario
WHERE Radicado=_Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_historico_colp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_historico_colp`(
in _N_Afiliacion2 varchar(20)
)
BEGIN
INSERT INTO historico_colp(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo,Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,Estado_cargue,Fecha_Cargue,Fecha_desembolso,Respuesta_Cargue,Proximo_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
SELECT Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2, Recaudo,
Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,FORMAT(Cuota,0,'de_DE') as Cuota,
Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,
Estado_cargue,ges.Fecha_Cargue,Fecha_desembolso,Respuesta_Cargue,Proximo_Cargue, Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre, max(pl.plano)plano, 
Comentarios,Id_Funcionario,Nombre_Funcionario
    FROM cliente_colp cl
    INNER JOIN prestamo_colp 
    USING(Radicado)
    INNER JOIN gestion_colp ges
    USING(Radicado)
    INNER JOIN planos_cargue pl
    ON pl.Afiliacion = cl.N_Afiliacion2
    WHERE N_Afiliacion2 = _N_Afiliacion2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_historico_colp_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_historico_colp_dia`(
in _N_Afiliacion2 varchar(20)
)
BEGIN
INSERT INTO historico_colp(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo,Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,Estado_cargue,Fecha_Cargue,Respuesta_Cargue,Proximo_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
SELECT Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2, Recaudo,
Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,FORMAT(Cuota,0,'de_DE') as Cuota,
Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,
Estado_cargue,ges.Fecha_Cargue,Respuesta_Cargue,Proximo_Cargue, Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre, max(pl.plano)plano, 
Comentarios,Id_Funcionario,Nombre_Funcionario
    FROM cliente_colp cl
    INNER JOIN prestamo_colp 
    USING(Radicado)
    INNER JOIN gestion_colp ges
    USING(Radicado)
    INNER JOIN planos_cargue pl
    ON pl.Afiliacion = cl.N_Afiliacion2
    WHERE N_Afiliacion2 = _N_Afiliacion2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bajas_negados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajas_negados`(in _Proximo_Cargue varchar(20))
BEGIN
SELECT N_Afiliacion2, LPAD(cl.Cedula,12,'0') as Cedula, Nit, LPAD(Libranza,9,'0') as Libranza
    FROM contabilizados_colp AS co
    INNER JOIN prestamo_colp AS pr 
    ON co.Scoring = pr.Scoring
    INNER JOIN cliente_colp cl
    ON cl.Radicado = pr.Radicado
    INNER JOIN gestion_colp ges
    ON cl.radicado= ges.radicado
    INNER JOIN recaudos_colp rec 
    ON cl.N_Afiliacion2 = rec.Afiliacion
    WHERE  Respuesta_Cargue = "Negada" AND Proximo_Cargue = _Proximo_Cargue;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_colp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_colp`(in _Radicado int)
BEGIN
SELECT Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2, Recaudo,
Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,FORMAT(Cuota,0,'de_DE') as Cuota,
Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,
Estado_cargue,ges.Fecha_Cargue,Fecha_desembolso,Respuesta_Cargue, Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre, max(pl.plano)plano, 
Comentarios,Id_Funcionario,Nombre_Funcionario
    FROM cliente_colp cl
    INNER JOIN prestamo_colp 
    USING(Radicado)
    INNER JOIN gestion_colp ges
    USING(Radicado)
    INNER JOIN planos_cargue pl
    ON pl.Afiliacion = cl.N_Afiliacion2
    WHERE Radicado = _Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_colp_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_colp_dia`(in _Radicado int)
BEGIN
SELECT Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2, Recaudo,
Scoring,Consecutivo,Fuerza_Venta,Destino,Rtq,Monto_Aprobado,Plazo_Aprobado,FORMAT(Cuota,0,'de_DE') as Cuota,
Total,Pagare,Nit,Cuota_Letras,Total_Letras,Estado_Operacion,
Estado_cargue,ges.Fecha_Cargue,Respuesta_Cargue, Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,plano, 
Comentarios,Id_Funcionario,Nombre_Funcionario
    FROM cliente_colp cl
    INNER JOIN prestamo_colp 
    USING(Radicado)
    INNER JOIN gestion_colp ges
    USING(Radicado)
    WHERE Radicado = _Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_desembolso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_desembolso`(in _fecha_desembolso varchar(20),
in _fecha_desembolso1 varchar(20))
BEGIN
SELECT  radicado, cedula, nombre, estatura, peso, cuenta,
scoring, cedula_gestor, valor_aprobado, plazo, destino,
r_Automatico, convenio, dactiloscopia, g_telefonica,
codigo_oficina, sucursal, ciudad, cedula_gestor,nombre_gestor,nombre_coordinador,
numero_obligacion1,nombre_entidad1,nit_entidad1,valor_cartera1,
numero_obligacion2,nombre_entidad2,nit_entidad2,valor_cartera2,
numero_obligacion3,nombre_entidad3,nit_entidad3,valor_cartera3,
numero_obligacion4,nombre_entidad4,nit_entidad4,valor_cartera4,
numero_obligacion5,nombre_entidad5,nit_entidad5,valor_cartera5,
numero_obligacion6,nombre_entidad6,nit_entidad6,valor_cartera6,
numero_obligacion7,nombre_entidad7,nit_entidad7,valor_cartera7,
numero_obligacion8,nombre_entidad8,nit_entidad8,valor_cartera8,
total_cpk,saldo_cliente,estado,identificacion,nombre_funcionario,fecha_desembolso 
    FROM cliente_orden
INNER JOIN prestamo_orden
USING(radicado)
INNER JOIN oficina_orden
USING(radicado)
INNER JOIN carteras1_orden
USING(radicado)
INNER JOIN carteras2_orden 
USING(radicado)
INNER JOIN carteras3_orden 
USING(radicado)
INNER JOIN carteras4_orden 
USING(radicado)
INNER JOIN carteras5_orden 
USING(radicado)
INNER JOIN carteras6_orden 
USING(radicado)
INNER JOIN carteras7_orden 
USING(radicado)
INNER JOIN carteras8_orden 
USING(radicado)
INNER JOIN fuerza_comercial_orden 
USING(radicado)
INNER JOIN resultado_orden 
USING(radicado)
WHERE estado = "Desembolso" AND fecha_desembolso >= _fecha_desembolso AND fecha_desembolso <= _fecha_desembolso1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_ds_vb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_ds_vb`(in _radicado int)
BEGIN
	SELECT  radicado,cedula,nombre,scoring,destino,monto,plazo,convenio
	FROM cliente_vb INNER JOIN prestamo_vb 
	USING(radicado)
	WHERE radicado = _radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_fallecido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_fallecido`(in _Cedula int)
BEGIN
SELECT  Estado_cliente
    FROM fallecidos_colp
    WHERE Cedula = _Cedula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_giros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_giros`(in _radicado varchar(20))
BEGIN
SELECT  radicado, cedula, nombre, cuenta,
scoring,nombre_gestor,nombre_coordinador,
codigo_oficina,sucursal,ciudad,
numero_obligacion1,nombre_entidad1,nit_entidad1,valor_cartera1,
numero_obligacion2,nombre_entidad2,nit_entidad2,valor_cartera2,
numero_obligacion3,nombre_entidad3,nit_entidad3,valor_cartera3,
numero_obligacion4,nombre_entidad4,nit_entidad4,valor_cartera4,
numero_obligacion5,nombre_entidad5,nit_entidad5,valor_cartera5,
numero_obligacion6,nombre_entidad6,nit_entidad6,valor_cartera6,
numero_obligacion7,nombre_entidad7,nit_entidad7,valor_cartera7,
numero_obligacion8,nombre_entidad8,nit_entidad8,valor_cartera8              
FROM cliente_ds
INNER JOIN prestamo_ds
USING(radicado)
INNER JOIN oficina_ds
USING(radicado)
INNER JOIN carteras1_ds
USING(radicado)
INNER JOIN carteras2_ds 
USING(radicado)
INNER JOIN carteras3_ds
USING(radicado)
INNER JOIN carteras4_ds 
USING(radicado)
INNER JOIN carteras5_ds 
USING(radicado)
INNER JOIN carteras6_ds 
USING(radicado)
INNER JOIN carteras7_ds 
USING(radicado)
INNER JOIN carteras8_ds 
USING(radicado)
INNER JOIN fuerza_comercial_ds 
USING(radicado)
WHERE radicado = _radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_negadosckl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_negadosckl`(in _Proximo_Cargue varchar(20))
BEGIN
SELECT N_Afiliacion2, LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, LPAD(Plazo_Aprobado,3,'0') as Plazo,Pagare,Plano_Pre,Plano_Dia  
    FROM cliente_colp AS cl
    INNER JOIN prestamo_colp AS pr 
    ON cl.radicado = pr.radicado
    INNER JOIN gestion_colp ges
    ON ges.radicado = pr.radicado 
	WHERE  Respuesta_Cargue = "Negada" AND Proximo_Cargue = _Proximo_Cargue LIMIT 100;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_negados_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_negados_dia`(in _Proximo_Cargue varchar(20))
BEGIN
SELECT N_Afiliacion2, LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, LPAD(Plazo_Aprobado,3,'0') as Plazo,Pagare,Plano_Pre,Plano_Dia  
    FROM contabilizados_colp AS co
    INNER JOIN prestamo_colp AS pr 
    ON co.Scoring = pr.Scoring
    INNER JOIN cliente_colp cl 
    ON cl.radicado = pr.radicado 
    INNER JOIN gestion_colp ges 
    ON cl.radicado = ges.radicado    
    WHERE  Destino <> "CPK Libranza" AND Respuesta_Cargue = "Negada" LIMIT 100;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_orden`(in _radicado varchar(20))
BEGIN
DECLARE prueba int;
SELECT count(*) into @prueba FROM
cliente_ds
INNER JOIN prestamo_ds
USING(radicado)
INNER JOIN oficina_ds
USING(radicado)
INNER JOIN carteras1_ds
USING(radicado)
INNER JOIN carteras2_ds 
USING(radicado)
INNER JOIN carteras3_ds 
USING(radicado)
INNER JOIN carteras4_ds 
USING(radicado)
INNER JOIN carteras5_ds 
USING(radicado)
INNER JOIN carteras6_ds 
USING(radicado)
INNER JOIN carteras7_ds 
USING(radicado)
INNER JOIN carteras8_ds 
USING(radicado)
INNER JOIN fuerza_comercial_ds 
USING(radicado)
INNER JOIN resultado_ds 
USING(radicado)
WHERE radicado = _radicado;
IF @prueba > 0 then 
SELECT  radicado, cedula, nombre, estatura, peso, cuenta,
scoring, cedula_gestor, valor_aprobado, plazo, destino,
r_Automatico, convenio, dactiloscopia, g_telefonica,
codigo_oficina, sucursal, ciudad, cedula_gestor,nombre_gestor,nombre_coordinador,
numero_obligacion1,nombre_entidad1,nit_entidad1,valor_cartera1,
numero_obligacion2,nombre_entidad2,nit_entidad2,valor_cartera2,
numero_obligacion3,nombre_entidad3,nit_entidad3,valor_cartera3,
numero_obligacion4,nombre_entidad4,nit_entidad4,valor_cartera4,
numero_obligacion5,nombre_entidad5,nit_entidad5,valor_cartera5,
numero_obligacion6,nombre_entidad6,nit_entidad6,valor_cartera6,
numero_obligacion7,nombre_entidad7,nit_entidad7,valor_cartera7,
numero_obligacion8,nombre_entidad8,nit_entidad8,valor_cartera8,
total_cpk,saldo_cliente,estado,fecha_desembolso,identificacion,nombre_funcionario            
FROM cliente_ds
INNER JOIN prestamo_ds
USING(radicado)
INNER JOIN oficina_ds
USING(radicado)
INNER JOIN carteras1_ds
USING(radicado)
INNER JOIN carteras2_ds 
USING(radicado)
INNER JOIN carteras3_ds 
USING(radicado)
INNER JOIN carteras4_ds 
USING(radicado)
INNER JOIN carteras5_ds 
USING(radicado)
INNER JOIN carteras6_ds 
USING(radicado)
INNER JOIN carteras7_ds 
USING(radicado)
INNER JOIN carteras8_ds 
USING(radicado)
INNER JOIN fuerza_comercial_ds 
USING(radicado)
INNER JOIN resultado_ds 
USING(radicado)
WHERE radicado = _radicado;
ELSE 
SELECT  radicado,cedula,nombre,scoring,destino,monto,plazo,convenio
	FROM cliente_vb INNER JOIN prestamo_vb 
	USING(radicado)
	WHERE radicado = _radicado;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_orden_prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_orden_prueba`(in _radicado varchar(20))
BEGIN
SELECT  sum(valor_cartera1+valor_cartera2+valor_cartera3) as total
FROM cliente_ds
INNER JOIN prestamo_ds
USING(radicado)
INNER JOIN oficina_ds
USING(radicado)
INNER JOIN carteras1_ds
USING(radicado)
INNER JOIN carteras2_ds 
USING(radicado)
INNER JOIN carteras3_ds 
USING(radicado)
WHERE radicado = _radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_vb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_vb`(in _Radicado int)
BEGIN
SELECT  Radicado,Cedula,Nombre_Cliente,Cod_Militar1,Cod_Militar2,Grado,Scoring,Destino,Fuerza_Venta,TasaE_A,
TasaN_M,Monto_Aprobado,Plazo_Aprobado,Subproducto,Convenio,Consecutivo,Cuota,Total,Cuota_Letras,Total_Letras,
Fecha_Envio,Fecha_Respuesta,Fecha_Restriccion,Corte,Tipologia,Estado,Comentarios,Id_Funcionario,Nombre_Funcionario
    FROM CLIENTE_VB INNER JOIN PRESTAMO_VB 
    USING(Radicado)
    INNER JOIN GESTION_VB 
    USING(Radicado)
    WHERE Radicado = _Radicado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `busqueda_plano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `busqueda_plano`(
in _plano varchar(45)
)
BEGIN
SELECT cl.Radicado,cl.Cedula,N_Afiliacion2,Destino
    FROM cliente_colp AS cl
    INNER JOIN planos_cargue AS pl 
    ON cl.N_Afiliacion2 = pl.Afiliacion
    inner join prestamo_colp pr
    on cl.Radicado = pr.Radicado
    WHERE  plano = _plano;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cargue_contabilizados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cargue_contabilizados`(
in _N_Afiliacion2 varchar(20),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Fecha_desembolso varchar(20),
in _Respuesta_Cargue varchar(20),
in _Plano varchar(45)
)
BEGIN
UPDATE gestion_colp ges
INNER JOIN cliente_colp cl
ON ges.radicado = cl.radicado
SET 
Estado_cargue=_Estado_cargue,
Fecha_Cargue=_Fecha_Cargue,
Fecha_desembolso=_Fecha_desembolso,
Respuesta_Cargue=_Respuesta_Cargue,
Plano=_Plano
WHERE N_Afiliacion2=_N_Afiliacion2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cargue_rescates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cargue_rescates`(
in _Fecha_Cargue varchar(20),
in _Id_Funcionario int
)
BEGIN
SELECT  Afiliacion , LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, 
LPAD(Plazo,3,'0') as Plazo,Pagare,LPAD(Plano_pre,16,'P') AS Pre,Plano_dia as Dia
FROM rescates_colp cl
WHERE Fecha_Cargue = _Fecha_Cargue AND Id_Funcionario = _Id_Funcionario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contabilizados_altas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contabilizados_altas`(in _Fecha_desembolso varchar(10))
BEGIN
SELECT N_Afiliacion2, LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, LPAD(Plazo_Aprobado,3,'0') as Plazo,Pagare,Plano_Pre,Plano_Dia  
    FROM contabilizados_colp AS co
    INNER JOIN prestamo_colp AS pr 
    ON co.Scoring = pr.Scoring
    INNER JOIN cliente_colp cl 
    ON cl.radicado = pr.radicado 
    INNER JOIN gestion_colp ges 
    ON cl.radicado = ges.radicado    
    WHERE  co.Fecha_desembolso = _Fecha_desembolso AND co.Estado = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contabilizados_bajas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contabilizados_bajas`(in _Fecha_desembolso varchar(10))
BEGIN
SELECT N_Afiliacion2, LPAD(cl.Cedula,12,'0') as Cedula, Nit, LPAD(Libranza,9,'0') as Libranza, co.RP
    FROM contabilizados_colp AS co
    INNER JOIN prestamo_colp AS pr 
    ON co.Scoring = pr.Scoring
    INNER JOIN cliente_colp cl
    ON cl.Radicado = pr.Radicado
    INNER JOIN gestion_colp ges
    ON cl.radicado= ges.radicado
    INNER JOIN recaudos_colp rec 
    ON cl.N_Afiliacion2 = rec.Afiliacion
    WHERE  co.Fecha_desembolso = _Fecha_desembolso AND co.Estado = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `control_horarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `control_horarios`(
in _Identificacion int,
in _Nombre VARCHAR(150),
in _Area varchar(45),
in _Actividad varchar(45),
in _Observaciones varchar(200)
)
BEGIN
insert into control_horarios(Identificacion,Nombre,Area,Actividad,Observaciones)
			values (_Identificacion,_Nombre,_Area,_Actividad,_Observaciones);  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historico_colp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historico_colp`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Entidades varchar(150),
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Fecha_desembolso varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into historico_colp(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo,Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras,Estado_Operacion,Estado_cargue,Fecha_Cargue,Fecha_desembolso,Respuesta_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
    values (_Radicado,_Cedula,_Nombre_Cliente,_Estado_Cliente,_N_Afiliacion1,_N_Afiliacion2,_Recaudo,_Scoring,_Consecutivo,_Fuerza_Venta,_Destino,_Monto_Aprobado,_Plazo_Aprobado,_Cuota,_Total,_Pagare,_Nit,_Entidades,_Cuota_Letras,_Total_Letras,_Estado_Operacion,_Estado_cargue,_Fecha_Cargue,_Fecha_desembolso,_Respuesta_Cargue,_Causal_Rechazo,_Fecha_respuesta,_Plano_Dia,_Plano_Pre,_Plano,_Comentarios,_Id_Funcionario,_Nombre_Funcionario);    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historico_colp_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historico_colp_dia`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Rtq varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into historico_colp(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo,Scoring,Consecutivo,Fuerza_Venta,Destino,Rtq,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Cuota_Letras,Total_Letras,Estado_Operacion,Estado_cargue,Fecha_Cargue,Respuesta_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
    values (_Radicado,_Cedula,_Nombre_Cliente,_Estado_Cliente,_N_Afiliacion1,_N_Afiliacion2,_Recaudo,_Scoring,_Consecutivo,_Fuerza_Venta,_Destino,_Rtq,_Monto_Aprobado,_Plazo_Aprobado,_Cuota,_Total,_Pagare,_Nit,_Cuota_Letras,_Total_Letras,_Estado_Operacion,_Estado_cargue,_Fecha_Cargue,_Respuesta_Cargue,_Causal_Rechazo,_Fecha_respuesta,_Plano_Dia,_Plano_Pre,_Plano,_Comentarios,_Id_Funcionario,_Nombre_Funcionario);    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historico_ds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historico_ds`(in _Radicado int,
in _cedula INT,  
in _nombre VARCHAR(100),
in _estatura INT,
in _peso INT,
in _cuenta VARCHAR(20),
in _scoring VARCHAR(20),
in _valor_aprobado VARCHAR(20),
in _plazo INT,
in _destino varchar(20),
in _r_Automatico varchar(25),
in _convenio VARCHAR(25),
in _dactiloscopia VARCHAR(25),
in _g_telefonica VARCHAR(25),
in _codigo_oficina INT,
in _sucursal varchar(50),
in _ciudad varchar(50),
in _cedula_gestor INT,
in _nombre_gestor VARCHAR(100),
in _nombre_coordinador VARCHAR(100),
in _numero_obligacion1 VARCHAR(40),
in _nit_entidad1 varchar(20),
in _nombre_entidad1 varchar(60),
in _valor_cartera1 VARCHAR(20),
in _numero_obligacion2 VARCHAR(40),
in _nit_entidad2 varchar(20),
in _nombre_entidad2 varchar(60),
in _valor_cartera2 VARCHAR(20),
in _numero_obligacion3 VARCHAR(40),
in _nit_entidad3 varchar(20),
in _nombre_entidad3 varchar(60),
in _valor_cartera3 VARCHAR(20),
in _numero_obligacion4 VARCHAR(40),
in _nit_entidad4 varchar(20),
in _nombre_entidad4 varchar(60),
in _valor_cartera4 VARCHAR(20),
in _numero_obligacion5 VARCHAR(40),
in _nit_entidad5 varchar(20),
in _nombre_entidad5 varchar(60),
in _valor_cartera5 VARCHAR(20),
in _numero_obligacion6 VARCHAR(40),
in _nit_entidad6 varchar(20),
in _nombre_entidad6 varchar(60),
in _valor_cartera6 VARCHAR(20),
in _numero_obligacion7 VARCHAR(40),
in _nit_entidad7 varchar(20),
in _nombre_entidad7 varchar(60),
in _valor_cartera7 VARCHAR(20),
in _numero_obligacion8 VARCHAR(40),
in _nit_entidad8 varchar(20),
in _nombre_entidad8 varchar(60),
in _valor_cartera8 VARCHAR(20),
in _total_cpk VARCHAR(20),
in _saldo_cliente VARCHAR(20),
in _estado VARCHAR(20),
in _fecha_desembolso varchar(20),
in _identificacion INT,
in _nombre_funcionario varchar(150)
)
BEGIN
INSERT INTO historico_ds(radicado,cedula,nombre,estatura,peso,cuenta,scoring,valor_aprobado,plazo,destino,r_Automatico,convenio,dactiloscopia,g_telefonica,codigo_oficina,sucursal,ciudad,numero_obligacion1,nit_entidad1,nombre_entidad1,valor_cartera1,numero_obligacion2,nit_entidad2,nombre_entidad2,valor_cartera2,numero_obligacion3,nit_entidad3,nombre_entidad3,valor_cartera3,numero_obligacion4,nit_entidad4,nombre_entidad4,valor_cartera4,numero_obligacion5,nit_entidad5,nombre_entidad5,valor_cartera5,numero_obligacion6,nit_entidad6,nombre_entidad6,valor_cartera6,numero_obligacion7,nit_entidad7,nombre_entidad7,valor_cartera7,numero_obligacion8,nit_entidad8,nombre_entidad8,valor_cartera8,nombre_coordinador,cedula_gestor,nombre_gestor,total_cpk,saldo_cliente,estado,fecha_desembolso,identificacion,nombre_funcionario)
				 values (_radicado,_cedula,_nombre,_estatura,_peso,_cuenta,_scoring,_valor_aprobado,_plazo,_destino,_r_Automatico,_convenio,_dactiloscopia,_g_telefonica,_codigo_oficina,_sucursal,_ciudad,_numero_obligacion1,_nit_entidad1,_nombre_entidad1,_valor_cartera1,_numero_obligacion2,_nit_entidad2,_nombre_entidad2,_valor_cartera2,_numero_obligacion3,_nit_entidad3,_nombre_entidad3,_valor_cartera3,_numero_obligacion4,_nit_entidad4,_nombre_entidad4,_valor_cartera4,_numero_obligacion5,_nit_entidad5,_nombre_entidad5,_valor_cartera5,_numero_obligacion6,_nit_entidad6,_nombre_entidad6,_valor_cartera6,_numero_obligacion7,_nit_entidad7,_nombre_entidad7,_valor_cartera7,_numero_obligacion8,_nit_entidad8,_nombre_entidad8,_valor_cartera8,_nombre_coordinador,_cedula_gestor,_nombre_gestor,_total_cpk,_saldo_cliente,_estado,_fecha_desembolso,_identificacion,_nombre_funcionario);    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historico_vb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historico_vb`(in _radicado int,
in _identificacion INT,
in _nombre_funcionario varchar(150)
)
BEGIN
insert into productividad(radicado,identificacion,nombre_funcionario)
				 values (_radicado,_identificacion,_nombre_funcionario);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_colp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_colp`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Entidades varchar(150),
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Fecha_desembolso varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into CLIENTE_COLP(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo)
    values (_Radicado,_Cedula,_Nombre_Cliente,_Estado_Cliente,_N_Afiliacion1,_N_Afiliacion2,_Recaudo);    
insert into prestamo_colp(Radicado,Scoring,Consecutivo,Fuerza_Venta,Destino,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Entidades,Cuota_Letras,Total_Letras)
    values (_Radicado,_Scoring,_Consecutivo,_Fuerza_Venta,_Destino,_Monto_Aprobado,_Plazo_Aprobado,_Cuota,_Total,_Pagare,_Nit,_Entidades,_Cuota_Letras,_Total_Letras);
insert into gestion_colp(Radicado,Estado_Operacion,Estado_cargue,Fecha_Cargue,Fecha_desembolso,Respuesta_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
    values (_Radicado,_Estado_Operacion,_Estado_cargue,_Fecha_Cargue,_Fecha_desembolso,_Respuesta_Cargue,_Causal_Rechazo,_Fecha_respuesta,_Plano_Dia,_Plano_Pre,_Plano,_Comentarios,_Id_Funcionario,_Nombre_Funcionario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_colp_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_colp_dia`(in _Radicado int,
in _Cedula varchar(14),
in _Nombre_Cliente varchar(100),
in _Estado_Cliente varchar(25),
in _N_Afiliacion1 varchar(20),
in _N_Afiliacion2 varchar(20),
in _Recaudo int,
in _Scoring varchar(20),
in _Consecutivo varchar(20),
in _Fuerza_Venta varchar(30),
in _Destino varchar(45),
in _Rtq varchar(45),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado varchar(3),
in _Cuota varchar(30),
in _Total varchar(30),
in _Pagare varchar(10),
in _Nit int,
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Estado_Operacion varchar(45),
in _Estado_cargue varchar(20),
in _Fecha_Cargue varchar(20),
in _Respuesta_Cargue varchar(20),
in _Causal_Rechazo varchar(20),
in _Fecha_respuesta varchar(20),
in _Plano_Dia varchar(20),
in _Plano_Pre varchar(20),
in _Plano varchar(45),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into CLIENTE_COLP(Radicado,Cedula,Nombre_Cliente,Estado_Cliente,N_Afiliacion1,N_Afiliacion2,Recaudo)
    values (_Radicado,_Cedula,_Nombre_Cliente,_Estado_Cliente,_N_Afiliacion1,_N_Afiliacion2,_Recaudo);    
insert into prestamo_colp(Radicado,Scoring,Consecutivo,Fuerza_Venta,Destino,Rtq,Monto_Aprobado,Plazo_Aprobado,Cuota,Total,Pagare,Nit,Cuota_Letras,Total_Letras)
    values (_Radicado,_Scoring,_Consecutivo,_Fuerza_Venta,_Destino,_Rtq,_Monto_Aprobado,_Plazo_Aprobado,_Cuota,_Total,_Pagare,_Nit,_Cuota_Letras,_Total_Letras);
insert into gestion_colp(Radicado,Estado_Operacion,Estado_cargue,Fecha_Cargue,Respuesta_Cargue,Causal_Rechazo,Fecha_respuesta,Plano_Dia,Plano_Pre,Plano,Comentarios,Id_Funcionario,Nombre_Funcionario)
    values (_Radicado,_Estado_Operacion,_Estado_cargue,_Fecha_Cargue,_Respuesta_Cargue,_Causal_Rechazo,_Fecha_respuesta,_Plano_Dia,_Plano_Pre,_Plano,_Comentarios,_Id_Funcionario,_Nombre_Funcionario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_giro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_giro`(
in _radicado int,
in _cedula INT,  
in _nombre VARCHAR(100),
in _sucursal varchar(50)
)
BEGIN
insert into datos_giro(radicado,cedula,nombre,sucursal)
			values (_radicado,_cedula,_nombre,_sucursal);    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_orden`(in _radicado int,
in _cedula INT,  
in _nombre VARCHAR(100),
in _estatura INT,
in _peso INT,
in _cuenta VARCHAR(20),
in _scoring VARCHAR(20),
in _valor_aprobado VARCHAR(20),
in _plazo INT,
in _destino varchar(20),
in _r_Automatico varchar(25),
in _convenio VARCHAR(25),
in _dactiloscopia VARCHAR(25),
in _g_telefonica VARCHAR(25),
in _codigo_oficina INT,
in _sucursal varchar(50),
in _ciudad varchar(50),
in _cedula_gestor INT,
in _nombre_gestor VARCHAR(100),
in _nombre_coordinador VARCHAR(100),
in _numero_obligacion1 VARCHAR(40),
in _nit_entidad1 varchar(20),
in _nombre_entidad1 varchar(60),
in _valor_cartera1 VARCHAR(20),
in _numero_obligacion2 VARCHAR(40),
in _nit_entidad2 varchar(20),
in _nombre_entidad2 varchar(60),
in _valor_cartera2 VARCHAR(20),
in _numero_obligacion3 VARCHAR(40),
in _nit_entidad3 varchar(20),
in _nombre_entidad3 varchar(60),
in _valor_cartera3 VARCHAR(20),
in _numero_obligacion4 VARCHAR(40),
in _nit_entidad4 varchar(20),
in _nombre_entidad4 varchar(60),
in _valor_cartera4 VARCHAR(20),
in _numero_obligacion5 VARCHAR(40),
in _nit_entidad5 varchar(20),
in _nombre_entidad5 varchar(60),
in _valor_cartera5 VARCHAR(20),
in _numero_obligacion6 VARCHAR(40),
in _nit_entidad6 varchar(20),
in _nombre_entidad6 varchar(60),
in _valor_cartera6 VARCHAR(20),
in _numero_obligacion7 VARCHAR(40),
in _nit_entidad7 varchar(20),
in _nombre_entidad7 varchar(60),
in _valor_cartera7 VARCHAR(20),
in _numero_obligacion8 VARCHAR(40),
in _nit_entidad8 varchar(20),
in _nombre_entidad8 varchar(60),
in _valor_cartera8 VARCHAR(20),
in _total_cpk VARCHAR(20),
in _saldo_cliente VARCHAR(20),
in _estado VARCHAR(20),
in _fecha_desembolso varchar(20),
in _identificacion INT,
in _nombre_funcionario varchar(150)

)
BEGIN
insert into cliente_ds(radicado,cedula,nombre,estatura,peso,cuenta)
				 values (_radicado,_cedula,_nombre,_estatura,_peso,_cuenta);    
insert into prestamo_ds(radicado,scoring,valor_aprobado,plazo,destino,r_Automatico,convenio,dactiloscopia,g_telefonica)
                 values (_radicado,_scoring,_valor_aprobado,_plazo,_destino,_r_Automatico,_convenio,_dactiloscopia,_g_telefonica);
insert into oficina_ds(radicado,codigo_oficina,sucursal,ciudad)
                 values (_radicado,_codigo_oficina,_sucursal,_ciudad);
insert into carteras1_ds(radicado,numero_obligacion1,nit_entidad1,nombre_entidad1,valor_cartera1)
                 values (_radicado,_numero_obligacion1,_nit_entidad1,_nombre_entidad1,_valor_cartera1);
insert into carteras2_ds(radicado,numero_obligacion2,nit_entidad2,nombre_entidad2,valor_cartera2)
                 values (_radicado,_numero_obligacion2,_nit_entidad2,_nombre_entidad2,_valor_cartera2);
insert into carteras3_ds(radicado,numero_obligacion3,nit_entidad3,nombre_entidad3,valor_cartera3)
                 values (_radicado,_numero_obligacion3,_nit_entidad3,_nombre_entidad3,_valor_cartera3);                 
insert into carteras4_ds(radicado,numero_obligacion4,nit_entidad4,nombre_entidad4,valor_cartera4)
                 values (_radicado,_numero_obligacion4,_nit_entidad4,_nombre_entidad4,_valor_cartera4);
insert into carteras5_ds(radicado,numero_obligacion5,nit_entidad5,nombre_entidad5,valor_cartera5)
                 values (_radicado,_numero_obligacion5,_nit_entidad5,_nombre_entidad5,_valor_cartera5);
insert into carteras6_ds(radicado,numero_obligacion6,nit_entidad6,nombre_entidad6,valor_cartera6)
                 values (_radicado,_numero_obligacion6,_nit_entidad6,_nombre_entidad6,_valor_cartera6);
insert into carteras7_ds(radicado,numero_obligacion7,nit_entidad7,nombre_entidad7,valor_cartera7)
                 values (_radicado,_numero_obligacion7,_nit_entidad7,_nombre_entidad7,_valor_cartera7);
insert into carteras8_ds(radicado,numero_obligacion8,nit_entidad8,nombre_entidad8,valor_cartera8)
                 values (_radicado,_numero_obligacion8,_nit_entidad8,_nombre_entidad8,_valor_cartera8);
insert into fuerza_comercial_ds(radicado,nombre_coordinador,cedula_gestor,nombre_gestor)
                 values (_radicado,_nombre_coordinador,_cedula_gestor,_nombre_gestor);
insert into resultado_ds(radicado,total_cpk,saldo_cliente,estado,fecha_desembolso,identificacion,nombre_funcionario)
                 values (_radicado,_total_cpk,_saldo_cliente,_estado,_fecha_desembolso,_identificacion,_nombre_funcionario);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_vb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_vb`(in _Radicado int,
in _Cedula int,
in _Nombre_Cliente varchar(100),
in _Cod_Militar1 int,
in _Cod_Militar2 int,
in _Grado varchar(50),
in _Scoring varchar(20),
in _Destino varchar(20),
in _Fuerza_Venta varchar(30),
in _TasaE_A varchar(10),
in _TasaN_M varchar(10),
in _Monto_Aprobado varchar(20),
in _Plazo_Aprobado int,
in _Subproducto int,
in _Convenio varchar(10),
in _Consecutivo varchar(10),
in _Cuota varchar(30),
in _Total varchar(30),
in _Cuota_Letras varchar(150),
in _Total_Letras varchar(150),
in _Fecha_Envio varchar(20),
in _Fecha_Respuesta varchar(20),
in _Fecha_Restriccion varchar(20),
in _Corte varchar(20),
in _Tipologia varchar(3),
in _Estado varchar(20),
in _Comentarios varchar(500),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into CLIENTE_VB(Radicado,Cedula,Nombre_Cliente,Cod_Militar1,Cod_Militar2,Grado)
    values (_Radicado,_Cedula,_Nombre_Cliente,_Cod_Militar1,_Cod_Militar2,_Grado);    
insert into PRESTAMO_VB(Radicado,Scoring,Destino,Fuerza_Venta,TasaE_A,TasaN_M,Monto_Aprobado,Plazo_Aprobado,Subproducto,Convenio,Consecutivo,Cuota,Total,Cuota_Letras,Total_Letras)
    values (_Radicado,_Scoring,_Destino,_Fuerza_Venta,_TasaE_A,_TasaN_M,_Monto_Aprobado,_Plazo_Aprobado,_Subproducto,_Convenio,_Consecutivo,_Cuota,_Total,_Cuota_Letras,_Total_Letras);
    insert into GESTION_VB(Radicado,Fecha_Envio,Fecha_Respuesta,Fecha_Restriccion,Corte,Tipologia,Estado,Comentarios,Id_Funcionario,Nombre_Funcionario)
    values (_Radicado,_Fecha_Envio,_Fecha_Respuesta,_Fecha_Restriccion,_Corte,_Tipologia,_Estado,_Comentarios,_Id_Funcionario,_Nombre_Funcionario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pendientes_respuesta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pendientes_respuesta`()
BEGIN
SELECT  Radicado, Cedula, Nombre_Cliente, Estado_Cliente, N_Afiliacion1, N_Afiliacion2, Scoring, Destino, Fuerza_Venta,
Monto_Aprobado,Plazo_Aprobado,Entidad_Recoger,Cuota,Total,Cuota_Letras,Total_Letras,Fecha_Cargue,Proximo_Cargue,
Plano_Dia,Plano_Pre,Respuesta_Cargue,Causal_Rechazo,Estado_Operacion,Comentarios,Id_Funcionario,
Nombre_Funcionario
    FROM CLIENTE_COLP INNER JOIN PRESTAMO_COLP 
    USING(Radicado)
    INNER JOIN GESTION_COLP 
    USING(Radicado)
    WHERE Respuesta_Cargue = "Pendiente";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pendiente_cargue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pendiente_cargue`(in _Fecha_Cargue varchar(20))
BEGIN
SELECT  N_Afiliacion2,Cedula,Nit,Cuota,Plazo_Aprobado,Pagare,Plano_Pre,Plano_Dia
    FROM cliente_colp INNER JOIN prestamo_colp 
    USING(Radicado)
    INNER JOIN gestion_colp 
    USING(Radicado)
    WHERE Estado_cargue = "Pendiente Cargue" AND Fecha_Cargue = _Fecha_Cargue;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pendiente_cargue_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pendiente_cargue_dia`(
in _Fecha_Cargue varchar(20),
in _Id_Funcionario int
)
BEGIN
SELECT  N_Afiliacion2 AS Afiliacion, LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, LPAD(Plazo_Aprobado,3,'0') as Plazo,Pagare,LPAD(Plano_Pre,16,'P') AS Pre,Plano_Dia as Dia 
    FROM cliente_colp cl
    INNER JOIN prestamo_colp pr
    ON cl.Radicado = pr.Radicado
    INNER JOIN gestion_colp ges
    ON pr.Radicado = ges.Radicado
    WHERE Destino <> "CPK Libranza" AND Estado_Operacion="Suspendida" AND Estado_cargue = "Pendiente Cargue" AND Fecha_Cargue = _Fecha_Cargue AND Id_Funcionario = _Id_Funcionario
    UNION ALL
    SELECT  Afiliacion , LPAD(Cedula,12,'0') as Cedula,Nit, LPAD(Cuota,8,'0') as Cuota, 
LPAD(Plazo,3,'0') as Plazo,Pagare,LPAD(Plano_pre,16,'P') AS Pre,Plano_dia as Dia
FROM rescates_colp 
WHERE Fecha_Cargue = _Fecha_Cargue AND Id_Funcionario = _Id_Funcionario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pendiente_cargue_dia_bajas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pendiente_cargue_dia_bajas`(
in _Fecha_Cargue varchar(20),
in _Id_Funcionario int
)
BEGIN
SELECT  Afiliacion, LPAD(rec.Cedula,12,'0') as Cedula, Nit, LPAD(Libranza,9,'0') as Libranza, "RP"
    FROM recaudos_colp rec
    INNER JOIN cliente_colp cl
    ON cl.N_Afiliacion2 = rec.Afiliacion
    INNER JOIN prestamo_colp pr
    ON pr.radicado= cl.radicado
    INNER JOIN gestion_colp ges 
    ON ges.radicado = pr.radicado
    WHERE Destino <> "CPK Libranza" AND Estado_Operacion="Suspendida" AND Estado_cargue = "Pendiente Cargue" AND Fecha_Cargue = _Fecha_Cargue AND Id_Funcionario = _Id_Funcionario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `planos_cargue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `planos_cargue`(
in _Afiliacion varchar(20),
in _plano varchar(45)
)
BEGIN
insert into planos_cargue(Afiliacion,plano)
    values (_Afiliacion,_plano);    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rescate_rtq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rescate_rtq`(
in _Afiliacion varchar(20),
in _Cedula varchar(14),
in _Nit int,
in _Cuota varchar(30),
in _Plazo varchar(3),
in _Pagare varchar(10),
in _Plano_pre varchar(20),
in _Plano_dia varchar(20),
in _Fecha_cargue varchar(20),
in _Id_Funcionario int,
in _Nombre_Funcionario varchar(100)
)
BEGIN
insert into rescates_colp(Afiliacion,Cedula,Nit,Cuota,Plazo,Pagare,Plano_pre,Plano_dia,Fecha_cargue,Id_Funcionario,Nombre_Funcionario)
    values (_Afiliacion,_Cedula,_Nit,_Cuota,_Plazo,_Pagare,_Plano_pre,_Plano_dia,_Fecha_cargue,_Id_Funcionario,_Nombre_Funcionario);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_cargues` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_cargues`(
in _Afiliacion varchar(20)
)
BEGIN
SELECT COUNT(DISTINCT plano) from planos_cargue where Afiliacion = _Afiliacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_negadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_negadas`()
BEGIN
SELECT count(*) FROM gestion_colp WHERE Respuesta_Cargue = "Negado";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_pendientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_pendientes`()
BEGIN
SELECT count(*) FROM gestion_colp WHERE Respuesta_Cargue = "Pendiente";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-18 13:33:22

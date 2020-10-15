-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: Optics
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brand` (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,'Rai Band'),(2,'Gucci'),(3,'Afflelou');
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `City` (
  `id_city` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_city`),
  KEY `id_country` (`id_country`),
  CONSTRAINT `City_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `Country` (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES (1,'Barcelona',1),(2,'Frankfurt',2),(3,'Paris',3),(4,'Roma',4),(5,'Moscow',5);
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `id_postal_code` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `recommended_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  KEY `id_postal_code` (`id_postal_code`),
  KEY `recommended_by` (`recommended_by`),
  CONSTRAINT `Client_ibfk_1` FOREIGN KEY (`id_postal_code`) REFERENCES `PostalCode` (`id_postal_code`),
  CONSTRAINT `Client_ibfk_2` FOREIGN KEY (`recommended_by`) REFERENCES `Client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Juanillo',7,11111116,'juanillo@jemeil.com','2020-02-15',NULL),(2,'DonaldTrump',2,888888888,'doanldtrump@jemeil.com','2020-05-01',1),(3,'JunaDeArco',4,458458458,'juanadearco@jemeil.com','2019-07-01',1),(4,'ElNavajas',3,444444444,'elnavajas@jomail.com','2018-04-28',3);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Colour`
--

DROP TABLE IF EXISTS `Colour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Colour` (
  `id_colour` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_colour`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Colour`
--

LOCK TABLES `Colour` WRITE;
/*!40000 ALTER TABLE `Colour` DISABLE KEYS */;
INSERT INTO `Colour` VALUES (1,'Red'),(2,'Yellow'),(3,'Green');
/*!40000 ALTER TABLE `Colour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'Spain'),(2,'Germany'),(3,'France'),(4,'Italy'),(5,'Russia');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `id_employee` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Juanito'),(2,'Pepón'),(3,'Armando');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Frame`
--

DROP TABLE IF EXISTS `Frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Frame` (
  `id_frame` int(11) NOT NULL AUTO_INCREMENT,
  `name` enum('Pasta','Metallic','Floating') DEFAULT NULL,
  PRIMARY KEY (`id_frame`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Frame`
--

LOCK TABLES `Frame` WRITE;
/*!40000 ALTER TABLE `Frame` DISABLE KEYS */;
INSERT INTO `Frame` VALUES (1,'Metallic'),(2,'Floating'),(3,'Pasta');
/*!40000 ALTER TABLE `Frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Glasses`
--

DROP TABLE IF EXISTS `Glasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Glasses` (
  `id_glasses` int(11) NOT NULL AUTO_INCREMENT,
  `id_brand` int(11) DEFAULT NULL,
  `id_frame` int(11) DEFAULT NULL,
  `graduation` float(4,2) DEFAULT NULL,
  `frame_colour` int(11) DEFAULT NULL,
  `glass_colour` int(11) DEFAULT NULL,
  `price` float(7,2) DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_glasses`),
  KEY `id_brand` (`id_brand`),
  KEY `id_frame` (`id_frame`),
  KEY `frame_colour` (`frame_colour`),
  KEY `glass_colour` (`glass_colour`),
  KEY `id_provider` (`id_provider`),
  CONSTRAINT `Glasses_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `Brand` (`id_brand`),
  CONSTRAINT `Glasses_ibfk_2` FOREIGN KEY (`id_frame`) REFERENCES `Frame` (`id_frame`),
  CONSTRAINT `Glasses_ibfk_3` FOREIGN KEY (`frame_colour`) REFERENCES `Colour` (`id_colour`),
  CONSTRAINT `Glasses_ibfk_4` FOREIGN KEY (`glass_colour`) REFERENCES `Colour` (`id_colour`),
  CONSTRAINT `Glasses_ibfk_5` FOREIGN KEY (`id_provider`) REFERENCES `Provider` (`id_provider`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Glasses`
--

LOCK TABLES `Glasses` WRITE;
/*!40000 ALTER TABLE `Glasses` DISABLE KEYS */;
INSERT INTO `Glasses` VALUES (1,2,2,0.25,1,1,300.00,1),(2,1,3,0.50,3,1,500.00,2),(3,2,3,0.50,3,1,500.00,2),(4,1,1,0.11,2,2,100.00,1);
/*!40000 ALTER TABLE `Glasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PostalCode`
--

DROP TABLE IF EXISTS `PostalCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PostalCode` (
  `id_postal_code` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_postal_code`),
  KEY `id_city` (`id_city`),
  CONSTRAINT `PostalCode_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `City` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PostalCode`
--

LOCK TABLES `PostalCode` WRITE;
/*!40000 ALTER TABLE `PostalCode` DISABLE KEYS */;
INSERT INTO `PostalCode` VALUES (1,'1111',1),(2,'1112',1),(3,'2221',2),(4,'2222',2),(5,'3331',3),(6,'3332',3),(7,'4441',4),(8,'4442',4),(9,'5551',5),(10,'5552',5);
/*!40000 ALTER TABLE `PostalCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provider`
--

DROP TABLE IF EXISTS `Provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Provider` (
  `id_provider` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `number_street` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `door_number` int(11) DEFAULT NULL,
  `id_postal_code` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `nif` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_provider`),
  KEY `id_postal_code` (`id_postal_code`),
  CONSTRAINT `Provider_ibfk_1` FOREIGN KEY (`id_postal_code`) REFERENCES `PostalCode` (`id_postal_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provider`
--

LOCK TABLES `Provider` WRITE;
/*!40000 ALTER TABLE `Provider` DISABLE KEYS */;
INSERT INTO `Provider` VALUES (1,'Gafotas S.A.','Bolillos',30,4,1,3,666555555,666666555,'589589589-t'),(2,'Ciegos S.A.','Calle del Café Tacilla',100,2,2,5,6000000,61616161,'33333339-j');
/*!40000 ALTER TABLE `Provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sale`
--

DROP TABLE IF EXISTS `Sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sale` (
  `id_sale` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sale`),
  KEY `id_employee` (`id_employee`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `Sale_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `Employee` (`id_employee`),
  CONSTRAINT `Sale_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `Client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sale`
--

LOCK TABLES `Sale` WRITE;
/*!40000 ALTER TABLE `Sale` DISABLE KEYS */;
INSERT INTO `Sale` VALUES (2,2,4),(3,3,1),(5,1,2),(8,3,3);
/*!40000 ALTER TABLE `Sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SaleProduct`
--

DROP TABLE IF EXISTS `SaleProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SaleProduct` (
  `id_sale` int(11) NOT NULL,
  `id_glasses` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sale`,`id_glasses`),
  KEY `id_glasses` (`id_glasses`),
  CONSTRAINT `SaleProduct_ibfk_1` FOREIGN KEY (`id_sale`) REFERENCES `Sale` (`id_sale`),
  CONSTRAINT `SaleProduct_ibfk_2` FOREIGN KEY (`id_glasses`) REFERENCES `Glasses` (`id_glasses`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SaleProduct`
--

LOCK TABLES `SaleProduct` WRITE;
/*!40000 ALTER TABLE `SaleProduct` DISABLE KEYS */;
INSERT INTO `SaleProduct` VALUES (2,2,50),(2,4,2),(3,1,2),(5,2,3),(5,3,1),(5,4,10),(8,1,1);
/*!40000 ALTER TABLE `SaleProduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15 17:06:33

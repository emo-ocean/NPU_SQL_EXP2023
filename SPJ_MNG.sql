-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: spj_mng
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `j`
--

DROP TABLE IF EXISTS `j`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `j` (
  `JNO` varchar(5) NOT NULL,
  `JNAME` varchar(20) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`JNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j`
--

LOCK TABLES `j` WRITE;
/*!40000 ALTER TABLE `j` DISABLE KEYS */;
INSERT INTO `j` VALUES ('J1','三建','北京'),('J2','一汽','长春'),('J3','弹簧厂','天津'),('J4','造船厂','天津'),('J5','机车厂','西安'),('J6','无线电厂','常州'),('J7','半导体厂','南京');
/*!40000 ALTER TABLE `j` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p`
--

DROP TABLE IF EXISTS `p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p` (
  `PNO` varchar(5) NOT NULL,
  `PNAME` varchar(20) DEFAULT NULL,
  `COLOR` char(2) DEFAULT NULL,
  `WEIGHT` int DEFAULT NULL,
  PRIMARY KEY (`PNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p`
--

LOCK TABLES `p` WRITE;
/*!40000 ALTER TABLE `p` DISABLE KEYS */;
INSERT INTO `p` VALUES ('P1','螺母','红',12),('P2','螺栓','绿',17),('P3','螺丝刀','蓝',14),('P4','螺丝刀','红',14),('P5','凸轮','蓝',40),('P6','齿轮','红',30);
/*!40000 ALTER TABLE `p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s`
--

DROP TABLE IF EXISTS `s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s` (
  `SNO` varchar(5) NOT NULL,
  `SNAME` varchar(20) DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s`
--

LOCK TABLES `s` WRITE;
/*!40000 ALTER TABLE `s` DISABLE KEYS */;
INSERT INTO `s` VALUES ('S1','精益',20,'天津'),('S2','盛锡',10,'北京'),('S3','东方红',30,'北京'),('S4','丰泰盛',20,'天津'),('S5','为民',30,'上海');
/*!40000 ALTER TABLE `s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spj`
--

DROP TABLE IF EXISTS `spj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spj` (
  `ID` int NOT NULL,
  `SNO` varchar(5) DEFAULT NULL,
  `PNO` varchar(5) DEFAULT NULL,
  `JNO` varchar(5) DEFAULT NULL,
  `QTY` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spj`
--

LOCK TABLES `spj` WRITE;
/*!40000 ALTER TABLE `spj` DISABLE KEYS */;
INSERT INTO `spj` VALUES (1,'S1','P1','J1',200),(2,'S1','P1','J3',100),(3,'S1','P1','J4',700),(4,'S1','P2','J2',100),(5,'S2','P3','J1',400),(6,'S2','P3','J2',200),(7,'S2','P3','J4',500),(8,'S2','P3','J5',400),(9,'S2','P5','J1',400),(10,'S2','P5','J2',100),(11,'S3','P1','J1',200),(12,'S3','P3','J1',200),(13,'S4','P5','J1',200),(14,'S4','P6','J3',100),(15,'S4','P6','J4',300),(16,'S5','P2','J4',100),(17,'S5','P3','J1',200),(18,'S5','P6','J2',200),(19,'S5','P6','J4',500);
/*!40000 ALTER TABLE `spj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05 17:07:55

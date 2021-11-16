-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: college
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `studentrecord`
--

DROP TABLE IF EXISTS `studentrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentrecord` (
  `FirstName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `SubjectMarks` json DEFAULT NULL,
  `AverageScore` float DEFAULT NULL,
  `Grade` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentrecord`
--

LOCK TABLES `studentrecord` WRITE;
/*!40000 ALTER TABLE `studentrecord` DISABLE KEYS */;
INSERT INTO `studentrecord` VALUES ('Joe','Soap','[\"92\", \"78\", \"65\", \"67\"]',NULL,NULL),('Jane','Doe','[\"81\", \"79\", \"83\", \"89\"]',NULL,NULL),('Mary','Poppins','[\"63\", \"52\", \"65\", \"71\"]',NULL,NULL),('Mario','Rossi','[\"23\", \"42\", \"50\", \"44\"]',NULL,NULL),('John','Smith','[\"56\", \"67\", \"72\", \"72\"]',NULL,NULL),('Tom','Cruz','[\"81\", \"62\", \"53\", \"59\"]',NULL,NULL),('Jim','Beglin','[\"41\", \"48\", \"51\", \"53\"]',NULL,NULL),('Pete','Shmooks','[\"55\", \"55\", \"66\", \"58\"]',NULL,NULL),('Hans','Meier','[\"57\", \"87\", \"95\", \"64\"]',NULL,NULL),('Jackie','Brown','[\"97\", \"91\", \"86\", \"73\"]',NULL,NULL);
/*!40000 ALTER TABLE `studentrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16  2:02:30

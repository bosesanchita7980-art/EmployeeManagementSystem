-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_management
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'Ankit Das','ankit@gmail.com','Finance',52000.00,'9876543212','Dum Dum','2022-08-20','2026-06-05 14:49:13'),(4,' Arpan Adhikary','arpan@gmail.com',' IT',30000.00,'9876543210','Kolkata','2026-06-05','2026-06-05 18:14:11'),(5,'Sanchita Bose ','sanchita007@gmail.com',' IT',50000.00,'08584015676','J-239 PAHARPUR ROAD GARDEN REACH','2026-06-06','2026-06-05 19:51:18'),(7,'assavxxcd','asca@gmail.com','it',34000.00,'06291068798','J-239 Paharpur Road Kolkata','2026-06-06','2026-06-06 09:30:46'),(8,'riya sharma ','riyasharma@gmail.com','it',30000.00,'67895000334','','2026-06-06','2026-06-06 09:37:11'),(11,'Arpan Adhikary','adhikaryarpan39@gmail.com','IT',40000.00,'','','2026-06-05','2026-06-06 11:03:47'),(14,'Arpita Adhikary','adhikaryarpan67@gmail.com','IT',40000.00,'06291068798','J-239 Paharpur Road Kolkata','2026-06-06','2026-06-06 11:31:03'),(15,'Sanchita Bose','sanchita.bose.bca27@tha.adu.in','IT',40000.00,'','','2026-06-06','2026-06-06 11:35:27'),(16,'Ananya Verma','annayaaverma06@gmail.com','IT',40000.00,'','','2026-06-06','2026-06-06 11:44:55'),(17,'rudranil nandi','rudranil@gmail.com','IT',30000.00,'7098556789','','2026-06-06','2026-06-06 17:33:13');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `employee_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123','ADMIN',NULL),(2,'employee','emp123','EMPLOYEE',NULL),(3,'ankit@gmail.com','ank98','EMPLOYEE','ankit@gmail.com'),(4,'arpan@gmail.com','arp98','EMPLOYEE','arpan@gmail.com'),(5,'sanchita007@gmail.com','san08','EMPLOYEE','sanchita007@gmail.com'),(6,'asca@gmail.com','ass06','EMPLOYEE','asca@gmail.com'),(7,'riyasharma@gmail.com','riy67','EMPLOYEE','riyasharma@gmail.com'),(8,'adhikaryarpan39@gmail.com','arp00','EMPLOYEE','adhikaryarpan39@gmail.com'),(9,'adhikaryarpan67@gmail.com','arp06','EMPLOYEE','adhikaryarpan67@gmail.com'),(10,'sanchita.bose.bca270@tha.adu.in','san00','EMPLOYEE','sanchita.bose.bca270@tha.adu.in'),(11,'annayaaverma06@gmail.com','ann00','EMPLOYEE','annayaaverma06@gmail.com'),(12,'rudranil@gmail.com','rud70','EMPLOYEE','rudranil@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07  1:28:01

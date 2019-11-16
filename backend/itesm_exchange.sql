-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: itesm_exchange
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Temporary view structure for view `all_grades_vw`
--

DROP TABLE IF EXISTS `all_grades_vw`;
/*!50001 DROP VIEW IF EXISTS `all_grades_vw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_grades_vw` AS SELECT 
 1 AS `id_course`,
 1 AS `course_description`,
 1 AS `student`,
 1 AS `student_name`,
 1 AS `student_last_name`,
 1 AS `professor`,
 1 AS `professor_name`,
 1 AS `professor_last_name`,
 1 AS `grade`,
 1 AS `grade_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `id_campus` int(11) NOT NULL AUTO_INCREMENT,
  `campus_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_campus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'CSF','2019-11-16 00:00:00');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL AUTO_INCREMENT,
  `course_description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `first_day` datetime DEFAULT NULL,
  `last_day` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_course`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (5,'Biology','2019-07-01 00:00:00','2019-08-01 00:00:00','2019-11-16 00:00:00'),(6,'Math I','2019-07-01 00:00:00','2019-08-01 00:00:00','2019-11-16 00:00:00'),(7,'French I','2019-07-01 00:00:00','2019-08-01 00:00:00','2019-11-16 00:00:00'),(8,'Chemistry','2019-07-01 00:00:00','2019-08-01 00:00:00','2019-11-16 00:00:00');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) NOT NULL,
  `student` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `professor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `grade` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grades_to_course_fk01` (`id_course`),
  KEY `grades_to_student_fk02` (`student`),
  KEY `grades_to_student_fk03` (`professor`),
  CONSTRAINT `grades_to_course_fk01` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id_course`),
  CONSTRAINT `grades_to_student_fk02` FOREIGN KEY (`student`) REFERENCES `users` (`username`),
  CONSTRAINT `grades_to_student_fk03` FOREIGN KEY (`professor`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,6,'a01018992@itesm.mx','profesor1@mail.com',100,NULL);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id_user_type` int(11) NOT NULL AUTO_INCREMENT,
  `description_user_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'Student','2019-11-16 00:00:00'),(2,'Professor','2019-11-16 00:00:00'),(3,'PI','2019-11-16 00:00:00');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(9) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A00XXXXXX',
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `id_user_type` int(11) NOT NULL,
  `id_campus` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `users_to_usertype_fk01` (`id_user_type`),
  KEY `users_to_campus_fk02` (`id_campus`),
  CONSTRAINT `users_to_campus_fk02` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`),
  CONSTRAINT `users_to_usertype_fk01` FOREIGN KEY (`id_user_type`) REFERENCES `user_type` (`id_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('a01018992@itesm.mx','A0101899','kaleb','Diego Kaleb','Valenzuela','2019-11-16 00:00:00',1,1),('profesor1@mail.com','A00XXXXXX','profesor1','Oscar','Sanchez','2019-11-16 00:00:00',2,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'itesm_exchange'
--

--
-- Final view structure for view `all_grades_vw`
--

/*!50001 DROP VIEW IF EXISTS `all_grades_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_grades_vw` AS select `g`.`id_course` AS `id_course`,`c`.`course_description` AS `course_description`,`g`.`student` AS `student`,`u1`.`name` AS `student_name`,`u1`.`last_name` AS `student_last_name`,`g`.`professor` AS `professor`,`u2`.`name` AS `professor_name`,`u2`.`last_name` AS `professor_last_name`,`g`.`grade` AS `grade`,`g`.`created` AS `grade_date` from (((`grades` `g` join `users` `u1`) join `users` `u2`) join `courses` `c`) where ((1 = 1) and (`g`.`student` = `u1`.`username`) and (`g`.`professor` = `u2`.`username`) and (`g`.`id_course` = `c`.`id_course`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16 14:18:26

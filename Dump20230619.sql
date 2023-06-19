-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: finalprojectlaravel
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `days` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_room_id_foreign` (`room_id`),
  KEY `bookings_user_id_foreign` (`user_id`),
  CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,25,4,'2023-06-01 20:20:06','2023-06-11 19:43:49',7,1685,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(2,39,10,'2023-06-16 06:21:12','2023-06-09 09:27:12',8,92435,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(3,17,3,'2023-06-12 14:06:04','2023-06-13 12:28:25',7,53445,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(4,25,7,'2023-06-02 10:44:39','2023-05-25 17:53:29',3,52233,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(5,25,9,'2023-05-31 12:09:39','2023-05-20 02:41:30',6,59242,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(6,5,5,'2023-06-15 22:19:22','2023-05-29 00:44:10',2,78371,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(7,12,7,'2023-06-18 02:19:29','2023-06-13 07:17:31',7,96161,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(8,39,8,'2023-06-07 14:59:53','2023-06-14 21:40:26',9,92651,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(9,35,8,'2023-05-22 09:56:52','2023-05-20 20:50:12',3,15225,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(10,32,6,'2023-06-08 14:50:44','2023-06-14 21:19:00',5,18967,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(11,7,9,'2023-06-06 05:16:54','2023-06-04 11:50:33',8,94017,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(12,41,1,'2023-06-05 11:07:29','2023-05-21 22:28:52',6,46463,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(13,24,2,'2023-06-08 02:05:53','2023-06-13 13:28:19',5,66259,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(14,16,3,'2023-06-09 20:00:23','2023-06-02 11:10:33',1,59131,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(15,47,3,'2023-05-27 10:45:03','2023-06-15 16:03:29',5,33921,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(16,5,2,'2023-06-18 23:04:03','2023-05-20 00:00:34',6,21173,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(17,1,10,'2023-06-12 10:33:35','2023-06-05 12:57:04',5,75819,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(18,40,3,'2023-06-17 13:07:30','2023-06-09 03:30:04',8,39668,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(19,48,10,'2023-06-01 03:11:33','2023-05-23 14:17:39',8,80420,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(20,3,6,'2023-06-10 14:18:00','2023-05-25 05:45:19',9,30034,'2023-06-19 04:33:01','2023-06-19 04:33:01');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Dr. Hilda Koch I','2023-06-19 04:32:57','2023-06-19 04:32:57'),(2,'Jettie Conn','2023-06-19 04:32:57','2023-06-19 04:32:57'),(3,'Duane Schamberger','2023-06-19 04:32:57','2023-06-19 04:32:57'),(4,'Janet Pfeffer','2023-06-19 04:32:57','2023-06-19 04:32:57'),(5,'Alyson Spencer','2023-06-19 04:32:57','2023-06-19 04:32:57'),(6,'Angie Effertz','2023-06-19 04:32:57','2023-06-19 04:32:57'),(7,'Mr. Irwin Denesik','2023-06-19 04:32:57','2023-06-19 04:32:57'),(8,'Mustafa Hermiston','2023-06-19 04:32:57','2023-06-19 04:32:57'),(9,'Ms. Catharine Walter','2023-06-19 04:32:57','2023-06-19 04:32:57'),(10,'Archibald Johnston','2023-06-19 04:32:57','2023-06-19 04:32:57'),(11,'Darrell Will','2023-06-19 04:32:57','2023-06-19 04:32:57'),(12,'Miss Stacey Bosco I','2023-06-19 04:32:57','2023-06-19 04:32:57'),(13,'Deon Emard','2023-06-19 04:32:57','2023-06-19 04:32:57'),(14,'Christelle Mueller','2023-06-19 04:32:57','2023-06-19 04:32:57'),(15,'Randi Bailey','2023-06-19 04:32:57','2023-06-19 04:32:57'),(16,'Ms. Pearlie Dicki','2023-06-19 04:32:57','2023-06-19 04:32:57'),(17,'Elliott Macejkovic','2023-06-19 04:32:57','2023-06-19 04:32:57'),(18,'Prof. Rod Corwin','2023-06-19 04:32:57','2023-06-19 04:32:57'),(19,'Savion Zemlak','2023-06-19 04:32:57','2023-06-19 04:32:57'),(20,'Mrs. May Rowe IV','2023-06-19 04:32:57','2023-06-19 04:32:57'),(21,'Titus Moore','2023-06-19 04:32:57','2023-06-19 04:32:57'),(22,'Vern Rohan','2023-06-19 04:32:57','2023-06-19 04:32:57'),(23,'Marian Jast','2023-06-19 04:32:57','2023-06-19 04:32:57'),(24,'Miss Gabrielle Shields DDS','2023-06-19 04:32:57','2023-06-19 04:32:57'),(25,'Clint Marks','2023-06-19 04:32:57','2023-06-19 04:32:57'),(26,'Ethelyn Douglas Sr.','2023-06-19 04:32:57','2023-06-19 04:32:57'),(27,'Winifred Koelpin','2023-06-19 04:32:57','2023-06-19 04:32:57'),(28,'Miss Letha Erdman','2023-06-19 04:32:57','2023-06-19 04:32:57'),(29,'Rowena Goodwin IV','2023-06-19 04:32:57','2023-06-19 04:32:57'),(30,'Lavinia Marks','2023-06-19 04:32:57','2023-06-19 04:32:57'),(31,'Prof. Tomasa Green','2023-06-19 04:32:57','2023-06-19 04:32:57'),(32,'Ida Brakus','2023-06-19 04:32:57','2023-06-19 04:32:57'),(33,'Dave Bruen MD','2023-06-19 04:32:57','2023-06-19 04:32:57'),(34,'Marilie Hegmann','2023-06-19 04:32:57','2023-06-19 04:32:57'),(35,'Bailee Wunsch','2023-06-19 04:32:57','2023-06-19 04:32:57'),(36,'Nat Lind','2023-06-19 04:32:57','2023-06-19 04:32:57'),(37,'Mae McClure IV','2023-06-19 04:32:57','2023-06-19 04:32:57'),(38,'Dr. Lennie Wilderman III','2023-06-19 04:32:57','2023-06-19 04:32:57'),(39,'Hazle Steuber','2023-06-19 04:32:57','2023-06-19 04:32:57'),(40,'Urban Walter','2023-06-19 04:32:57','2023-06-19 04:32:57'),(41,'Mr. Mckenzie Goodwin Jr.','2023-06-19 04:32:57','2023-06-19 04:32:57'),(42,'Dr. Buck Quitzon','2023-06-19 04:32:57','2023-06-19 04:32:57'),(43,'Beverly Rosenbaum','2023-06-19 04:32:57','2023-06-19 04:32:57'),(44,'Naomie Pacocha DDS','2023-06-19 04:32:57','2023-06-19 04:32:57'),(45,'Benjamin Haley','2023-06-19 04:32:57','2023-06-19 04:32:57'),(46,'Freddie Dickens PhD','2023-06-19 04:32:57','2023-06-19 04:32:57'),(47,'Trever Harris','2023-06-19 04:32:57','2023-06-19 04:32:57'),(48,'Dr. Shyann Gutkowski','2023-06-19 04:32:57','2023-06-19 04:32:57'),(49,'Ruben Keebler','2023-06-19 04:32:57','2023-06-19 04:32:57'),(50,'Miss Emmie Carter IV','2023-06-19 04:32:57','2023-06-19 04:32:57');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_hotel`
--

DROP TABLE IF EXISTS `facility_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_hotel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint(20) unsigned NOT NULL,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_hotel_facility_id_foreign` (`facility_id`),
  KEY `facility_hotel_hotel_id_foreign` (`hotel_id`),
  CONSTRAINT `facility_hotel_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `facility_hotel_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_hotel`
--

LOCK TABLES `facility_hotel` WRITE;
/*!40000 ALTER TABLE `facility_hotel` DISABLE KEYS */;
INSERT INTO `facility_hotel` VALUES (1,50,2,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(2,47,10,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(3,37,12,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(4,21,20,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(5,33,7,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(6,33,15,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(7,18,7,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(8,49,13,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(9,27,2,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(10,47,18,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(11,15,15,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(12,6,10,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(13,5,6,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(14,33,5,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(15,31,11,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(16,27,1,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(17,37,10,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(18,39,8,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(19,43,12,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(20,13,12,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(21,7,14,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(22,24,7,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(23,12,2,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(24,25,11,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(25,7,10,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(26,13,3,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(27,10,18,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(28,19,4,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(29,32,4,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(30,43,15,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(31,48,5,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(32,16,14,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(33,39,4,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(34,19,8,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(35,24,14,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(36,13,16,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(37,27,7,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(38,32,20,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(39,40,3,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(40,48,20,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(41,38,2,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(42,44,3,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(43,41,4,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(44,6,13,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(45,30,20,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(46,28,13,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(47,7,19,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(48,11,19,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(49,26,13,'2023-06-19 04:33:00','2023-06-19 04:33:00'),(50,25,2,'2023-06-19 04:33:00','2023-06-19 04:33:00');
/*!40000 ALTER TABLE `facility_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_room`
--

DROP TABLE IF EXISTS `facility_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_room` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint(20) unsigned NOT NULL,
  `room_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_room_facility_id_foreign` (`facility_id`),
  KEY `facility_room_room_id_foreign` (`room_id`),
  CONSTRAINT `facility_room_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `facility_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_room`
--

LOCK TABLES `facility_room` WRITE;
/*!40000 ALTER TABLE `facility_room` DISABLE KEYS */;
INSERT INTO `facility_room` VALUES (1,39,5,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(2,9,25,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(3,47,14,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(4,29,49,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(5,13,34,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(6,39,32,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(7,50,17,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(8,30,17,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(9,34,34,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(10,22,33,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(11,15,29,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(12,24,16,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(13,40,49,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(14,44,19,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(15,37,27,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(16,39,32,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(17,39,29,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(18,5,37,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(19,28,6,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(20,42,27,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(21,41,36,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(22,11,39,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(23,22,11,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(24,22,8,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(25,40,33,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(26,18,33,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(27,13,35,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(28,3,31,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(29,5,7,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(30,25,9,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(31,17,25,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(32,34,2,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(33,47,36,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(34,25,7,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(35,39,2,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(36,2,7,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(37,48,8,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(38,31,16,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(39,18,33,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(40,28,23,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(41,10,15,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(42,32,48,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(43,7,11,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(44,44,3,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(45,36,37,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(46,11,4,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(47,18,24,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(48,35,30,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(49,26,30,'2023-06-19 04:33:01','2023-06-19 04:33:01'),(50,19,9,'2023-06-19 04:33:01','2023-06-19 04:33:01');
/*!40000 ALTER TABLE `facility_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `poster_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Geovanni Dicki','Voluptatum animi nesciunt nihil quidem a neque tempore.','Vitae et.','7512 Hermann Ports\nBayleeville, AR 50538','2023-06-19 04:32:57','2023-06-19 04:32:57'),(2,'Emmitt Rempel','Magnam omnis in ad iusto et aut harum voluptas error et.','Officiis ut.','517 Bergstrom Port Suite 203\nJeanneburgh, NE 56850-7573','2023-06-19 04:32:57','2023-06-19 04:32:57'),(3,'Dr. Khalid Hilpert','Rerum nostrum consectetur et dolor qui consequatur ut sequi.','Excepturi.','759 Krystina Dam Apt. 032\nSouth Libbyland, PA 80968-7866','2023-06-19 04:32:57','2023-06-19 04:32:57'),(4,'John Koss','Eum enim architecto omnis qui non libero pariatur ut.','Repudiandae.','4387 Nelson Skyway\nMalikamouth, AZ 12081','2023-06-19 04:32:57','2023-06-19 04:32:57'),(5,'Leanna Kiehn','Earum ipsa voluptates et quibusdam ut sed consequuntur assumenda.','Harum ullam.','7244 Stamm Common Apt. 445\nWest Kyler, MD 98352-5534','2023-06-19 04:32:57','2023-06-19 04:32:57'),(6,'Miss Demetris Rath DDS','Est in cum a molestias ipsum repellendus aut illum facilis id.','Ad sequi.','74893 Edwardo Landing\nKamerontown, WA 20673-5972','2023-06-19 04:32:57','2023-06-19 04:32:57'),(7,'Mrs. Brandy Eichmann','Quam ipsum in maxime voluptatem est a reprehenderit quis dolores enim velit.','Deleniti numquam.','31948 Geo Crest Apt. 877\nLaceyville, PA 58692-8389','2023-06-19 04:32:57','2023-06-19 04:32:57'),(8,'Marietta Bogan DDS','Et molestiae dolor mollitia consequatur corrupti aperiam velit autem qui totam nisi odio aut et.','Qui.','25261 Wilfrid Underpass Apt. 957\nNew Rosalee, UT 60132-5395','2023-06-19 04:32:57','2023-06-19 04:32:57'),(9,'Lisette Oberbrunner','Unde error aut fuga est et ab ullam.','Sint praesentium.','6218 Reinger Forest Apt. 592\nAmoston, ME 32650-3660','2023-06-19 04:32:57','2023-06-19 04:32:57'),(10,'Sherwood Moore DVM','Molestiae qui totam quis aperiam et nihil.','Est quis.','81579 Roosevelt Stravenue\nNew Shanieview, AR 57762','2023-06-19 04:32:57','2023-06-19 04:32:57'),(11,'Dr. Nickolas Hagenes MD','Soluta et repellendus inventore error occaecati sit repellendus minus et.','Sunt aut.','486 Johnston Village\nNorth Aiyanaville, NJ 05904-1806','2023-06-19 04:32:57','2023-06-19 04:32:57'),(12,'Tiara King','Aut et vitae repellendus quis sapiente commodi nemo rerum quod enim.','Optio.','7834 Luciano Coves\nWillberg, WY 51126-0937','2023-06-19 04:32:57','2023-06-19 04:32:57'),(13,'Era Kertzmann','Sed molestias accusantium voluptas non iure vero.','Sunt tempore.','178 Dave Loop\nEast Jaqueline, SC 45112','2023-06-19 04:32:57','2023-06-19 04:32:57'),(14,'Ms. Alexane Leffler','Velit aliquam quam eum aut vero voluptatibus.','Vitae.','307 Osinski Motorway Suite 789\nLake Diamondstad, MT 82338-2139','2023-06-19 04:32:57','2023-06-19 04:32:57'),(15,'Oceane Kerluke','Nemo assumenda fugiat incidunt dolor distinctio laudantium praesentium hic.','Assumenda eos.','32791 Hammes Gardens\nSouth Floyd, IL 14209-4107','2023-06-19 04:32:57','2023-06-19 04:32:57'),(16,'Jordy Maggio','Reiciendis et ipsam quia reiciendis earum neque vero veritatis.','Ad.','47867 Hollie Islands\nNorth Laurelview, NM 70589-7949','2023-06-19 04:32:57','2023-06-19 04:32:57'),(17,'Prof. Cordelia Vandervort PhD','Quasi et similique quibusdam et velit eligendi ut non nisi eum.','Tempora debitis.','9625 Klein Spur\nPort Erika, MO 11798','2023-06-19 04:32:57','2023-06-19 04:32:57'),(18,'Prof. Emmy Ratke','Dolorem occaecati laudantium molestias odio cumque velit voluptatibus commodi.','Hic et.','48829 Buckridge Island\nSouth Conrad, OH 49270','2023-06-19 04:32:57','2023-06-19 04:32:57'),(19,'Danial Dicki','Sit beatae atque iusto enim cupiditate blanditiis consectetur.','Quasi.','8090 Ferne Freeway\nWiegandbury, OR 34026-0776','2023-06-19 04:32:57','2023-06-19 04:32:57'),(20,'Dr. Wiley Gutmann','Sed nihil ex odit aut nemo beatae.','Beatae.','6768 Bailey Glens\nEast Triston, RI 08267-0348','2023-06-19 04:32:57','2023-06-19 04:32:57');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_reset_tokens_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2023_06_09_091233_create_hotels_table',1),(5,'2023_06_09_091243_create_rooms_table',1),(6,'2023_06_09_091349_create_users_table',1),(7,'2023_06_09_091414_create_bookings_table',1),(8,'2023_06_09_091423_create_facilities_table',1),(9,'2023_06_09_091433_create_facility_hotels_table',1),(10,'2023_06_09_091442_create_facility_rooms_table',1),(11,'2023_06_09_091451_create_reviews_table',1),(12,'2023_06_09_111354_create_role_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_hotel_id_foreign` (`hotel_id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  CONSTRAINT `reviews_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`),
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Ducimus illo et porro sint et sed accusamus fuga quidem sequi exercitationem non.',8,14,8,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(2,'Eveniet autem rerum aliquam tenetur voluptas consectetur cupiditate et unde et et eligendi minima sed.',7,17,3,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(3,'Ratione ut suscipit voluptates illum delectus repudiandae natus voluptatem eaque ex aliquam voluptas aut.',9,10,5,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(4,'Veniam et delectus illum tempora voluptatem quo nihil et eligendi quia dolor mollitia at libero.',9,13,9,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(5,'Ut ut et quisquam optio quae accusantium et dolorum qui culpa nihil nemo.',4,13,9,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(6,'Placeat sunt consequatur delectus doloribus doloribus ut nobis nisi mollitia ut.',4,1,2,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(7,'Quae qui enim nobis ratione ipsa cumque alias possimus autem est quaerat dignissimos cumque.',8,19,7,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(8,'Suscipit sint sunt dolores natus autem quis sit eum ratione omnis velit facilis.',7,13,3,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(9,'Quaerat reprehenderit voluptas labore aut sapiente molestiae est asperiores qui sit aut.',2,7,5,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(10,'Est incidunt provident et magni minus nihil.',7,20,7,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(11,'Animi accusamus ut ipsa voluptates voluptas mollitia veniam id sit.',6,14,8,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(12,'Et fugiat est aliquam illo quasi ullam et magni at maxime natus eos sed.',3,1,3,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(13,'Est dolorem dolores vitae sunt eos earum.',7,8,9,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(14,'Mollitia quasi rerum nesciunt commodi excepturi voluptatem sint et iste nobis.',9,15,10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(15,'Sit inventore in facilis earum et dicta omnis sed cumque esse doloremque.',4,4,10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(16,'Porro dignissimos deleniti ut animi aspernatur optio laborum alias aliquam nisi.',1,9,10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(17,'Porro voluptatibus error qui est aut qui repudiandae ex adipisci suscipit.',6,15,5,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(18,'Minima non minima eaque aliquam eligendi quidem.',2,9,7,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(19,'Consequatur et fuga commodi nemo quia omnis est sunt cupiditate nesciunt voluptatem.',3,12,6,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(20,'Provident molestiae sint voluptatibus nulla illo sunt esse accusantium corporis iure vero.',6,20,9,'2023-06-19 04:32:58','2023-06-19 04:32:58');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_foreign` (`user_id`),
  CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,'Ms. Leanne Smith Sr.',9,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(2,'Mr. Newton Hartmann DVM',6,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(3,'Kiley Kuhn',2,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(4,'Rogelio Schaden',10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(5,'Ms. Aileen Mann DVM',2,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(6,'Otilia Feeney',10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(7,'Jaunita Kohler',10,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(8,'Jessika Schneider',7,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(9,'Marquis Cummings',6,'2023-06-19 04:32:58','2023-06-19 04:32:58'),(10,'Chauncey Stroman',10,'2023-06-19 04:32:58','2023-06-19 04:32:58');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `poster_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_area` decimal(8,2) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_hotel_id_foreign` (`hotel_id`),
  CONSTRAINT `rooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Prof. Shaylee Bosco Sr.','Provident officia odio sed neque est rerum alias.','Ipsam quia quia magni quaerat. Eum ipsum minus aut rerum.',71.00,'Et nemo iste blanditiis. Sed tempora id architecto rerum. Quae incidunt iure excepturi nulla.',2270,15,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(2,'Dr. Victor Ondricka MD','Autem nesciunt omnis iure est sit illum omnis.','Sunt similique illo sit qui. Occaecati et architecto iste molestiae distinctio sed.',74.00,'Recusandae distinctio et aspernatur accusantium praesentium. Sed reiciendis quasi distinctio.',96492,12,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(3,'Ms. Nicolette Schmidt','Et suscipit eligendi dicta non nostrum ut et error voluptates autem nihil quis error.','Unde architecto rerum est. Sit est at omnis consequatur.',16.00,'Maxime pariatur iure inventore in voluptatem. Molestias nihil saepe facere dolore quisquam.',23361,18,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(4,'Dr. Buster Weber','Ut id eos nam eius minus velit atque fugit dolorum maiores sed.','Qui quos dignissimos voluptatem. Repellendus ducimus saepe quod voluptatem.',12.00,'Amet earum minus et nobis et dolorum aut. Et sed unde qui nihil exercitationem.',19522,12,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(5,'Arely Shanahan DVM','Quia qui corrupti assumenda et et in quod harum vel.','Sed veritatis sapiente soluta rerum fugiat magni ea.',31.00,'Laborum aliquam minima pariatur. Cum sequi voluptatibus quia magnam doloremque molestiae nihil.',95944,10,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(6,'Shana Skiles DDS','Et ut a molestias eum et laborum.','Magnam ex necessitatibus necessitatibus ut. Est numquam et sit ab nihil sint ad.',67.00,'Praesentium dignissimos illo rerum fuga. Similique quos repellendus et ab.',14818,11,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(7,'Alexzander Haag','Numquam et optio facere voluptatem architecto accusantium.','Optio sunt sint sit sint velit similique dolore perferendis.',12.00,'Minima non aut voluptas. Nisi placeat beatae et ratione.',55230,10,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(8,'Janie Wehner','Perspiciatis neque perspiciatis officia commodi molestias ea.','Ratione neque ut repellendus quam consequatur distinctio.',65.00,'Qui esse magnam eos id. Suscipit perspiciatis nam odio non dolorum.',30694,15,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(9,'Flossie Bauch','Sequi minus iusto doloribus velit corrupti ad quis accusantium est maxime voluptatem placeat.','Quasi aut vitae harum maiores non mollitia voluptatum. Expedita ipsum eum culpa quia est.',52.00,'Facilis aliquid aut non tempore voluptas tenetur. Facere distinctio animi quo.',57388,5,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(10,'Santino DuBuque','Porro distinctio perspiciatis corrupti nisi dolorem vel vitae autem laudantium pariatur vero quis.','Odit labore in voluptas aut. Harum harum eius sint voluptatem totam sed.',54.00,'Iure fugiat est quae ut. Et fugit ullam aut. Velit esse labore sint placeat unde et optio.',68881,14,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(11,'Arvid Yost','Error ducimus cupiditate reiciendis sit fugit saepe dolor.','Rerum ad et perspiciatis et enim in reiciendis ex.',23.00,'Quis pariatur et in et vel in autem. Non aliquam voluptatibus maiores mollitia sed corrupti.',81105,16,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(12,'Karson Zieme','Non eligendi quas ipsa asperiores explicabo at eaque sapiente saepe aut.','Reprehenderit explicabo minima labore eveniet saepe.',86.00,'Illum rerum quis aut officiis in. Et qui ad optio eaque.',21801,3,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(13,'Avery Morissette','Vel quia harum quisquam in consectetur molestiae.','Culpa et ad illum natus. Atque nihil beatae at enim qui.',15.00,'Vel magni tenetur est voluptas sed. Qui et nihil adipisci veritatis qui molestiae omnis aliquam.',40097,13,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(14,'Ms. Chasity Monahan II','Eum dicta saepe non ipsam eum perspiciatis accusantium quia qui illum quia reprehenderit.','Qui ut culpa tenetur vel. Soluta fugiat pariatur doloremque voluptatum ut tempore.',12.00,'Quos cupiditate deserunt nemo sed perferendis rerum. Inventore et est ut numquam.',13822,7,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(15,'Chasity Rippin','Temporibus doloremque itaque optio magnam est voluptatem enim.','Doloribus et ut id est. Dolorem pariatur ut et nemo mollitia illum.',3.00,'Numquam velit nam dolorem. Vel voluptatum sapiente et aliquid. Non est dolor dolorum vel.',8362,4,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(16,'Lukas Hermiston II','Consequuntur occaecati perspiciatis ut rerum sapiente delectus neque.','Cumque amet sed aut. Ut molestias quasi vel autem minus.',96.00,'Rem voluptatem quos saepe. Quo temporibus quia enim dolor.',48932,8,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(17,'Eveline Morissette','Sed natus omnis quo nesciunt pariatur optio asperiores est dolorum eligendi nisi.','Quia veritatis iusto atque est beatae est ut. Eum quibusdam id voluptas fugiat.',42.00,'At est aliquam aut magnam ut qui. Et ut exercitationem dolor vel eum.',41023,8,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(18,'Benton Hirthe','Inventore molestiae autem delectus earum eaque vitae repellendus repellat.','Doloremque rem nihil deserunt assumenda. Soluta vero deleniti laudantium et cum.',74.00,'Ut libero libero facilis asperiores qui et. Quibusdam sed ut voluptatem sequi.',40280,12,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(19,'Gabriella Bartell','Corrupti iure repellat laudantium in sint et dolorem reprehenderit repellendus illum.','Ex delectus neque accusamus voluptatem.',12.00,'Sit natus similique saepe laboriosam dolorum aliquam incidunt. Dolorum pariatur vel et rem ut.',87362,1,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(20,'Jaylen Zemlak','Vel illum vel hic accusamus suscipit voluptatem facilis odit.','Aut et qui ut quo. Adipisci nostrum numquam et facere et ut error odio.',17.00,'Inventore ab optio rerum officiis. Omnis consequuntur cumque architecto qui neque.',30993,5,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(21,'Kaycee Anderson','Aspernatur pariatur est fuga dolore laborum minima quibusdam consectetur.','Ratione perferendis repellendus consectetur debitis.',46.00,'Natus quo ducimus at qui facere non. Accusamus asperiores quibusdam et cum.',91172,13,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(22,'Ila Wisoky','Voluptatem eveniet illo non doloremque et quia et.','Corrupti sint dolorum nostrum laboriosam rerum aut molestias.',42.00,'Ducimus quod labore nobis quibusdam. Excepturi voluptatum sit rerum. Totam iste sed quis ipsum.',56378,3,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(23,'Julianne Anderson','Ea voluptatem nulla autem ipsam omnis qui facere inventore porro dolor veritatis aliquid iste.','Suscipit in iure consequatur quidem eos nisi. At et quod numquam repellat.',38.00,'Sit ea animi vel iste voluptatum nemo qui. Aut omnis ad vel est a.',49801,10,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(24,'Twila Marks IV','Necessitatibus voluptatem aliquam earum incidunt incidunt ut amet error quasi.','Sit tempore fugit aut. Quasi voluptatum deserunt animi aut.',92.00,'Quibusdam praesentium excepturi quidem dolores autem iste. Suscipit non veritatis quam.',14361,3,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(25,'Armand Price','Voluptatem et commodi quos minus culpa ducimus corporis.','Nostrum est inventore quae inventore sunt quis quae id.',2.00,'Eveniet ut est suscipit aut magni tempora iusto. Quia fugit veritatis quisquam eum.',52471,6,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(26,'Gayle Effertz','Tenetur voluptas harum rerum quo nihil vitae quia magnam praesentium voluptatum nemo qui veritatis.','Deserunt quia assumenda repellat sed molestiae voluptatem ut. Commodi esse dolor sit ea.',37.00,'Dolor dolores quidem dolores. Non qui velit nulla in esse et. Ea tempora consequatur asperiores ea.',70207,1,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(27,'Merlin Bahringer','Quo et ullam cupiditate ipsum earum voluptatum quaerat.','Inventore et dolore voluptatem est cum quod.',21.00,'Nostrum dolorem voluptatibus consequatur vero omnis. Id ut et nam quo.',12774,9,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(28,'Maudie Kunde','Molestias suscipit voluptatibus earum vitae similique quasi.','Reiciendis sit illo officia ut aspernatur.',44.00,'Voluptatum fuga quia nesciunt fugiat voluptatum. Autem dolorum dolor et.',53634,11,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(29,'Bernice Russel','Debitis harum natus veniam laborum molestiae assumenda facilis ipsam sunt omnis.','Ut doloremque in consequuntur omnis et ut. Et facilis non qui.',43.00,'Quo odit ut quia inventore quis mollitia dignissimos. Id autem provident molestiae.',10596,11,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(30,'Dr. Jameson Heidenreich V','Dolor necessitatibus similique voluptates labore doloribus ex sit totam in quia quasi.','Dolore ut aspernatur ut nulla similique sequi ut.',95.00,'Aut est maxime aspernatur quos. Qui illum tempore voluptate dolorum dignissimos dolorem.',18827,4,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(31,'Nora Quitzon','Dolorem magni quo unde neque inventore quia fugiat.','Nihil veritatis distinctio aspernatur et. Ut molestiae ea itaque enim accusantium.',18.00,'Omnis distinctio cupiditate libero neque ea. Ipsa et aut quam assumenda in autem repudiandae.',93831,14,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(32,'Jordon Conn PhD','Est veniam dignissimos tenetur repellat fugit et soluta modi cupiditate.','Corporis tempora deserunt et dolorem ea. Et molestiae similique sit consequuntur.',42.00,'Incidunt vel magnam illum dolores possimus. Quibusdam molestias expedita expedita ea dolorem fuga.',31585,15,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(33,'Domenick Skiles','Et rerum dolorem impedit itaque quibusdam et.','Itaque vitae ex et id minus minus deserunt. Aliquid impedit nesciunt magnam.',15.00,'Ducimus possimus et distinctio enim quis libero alias. Officia animi corrupti praesentium.',48596,6,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(34,'Dr. Madeline Corkery DDS','Quia ut molestiae optio distinctio ut quo ad ducimus.','Voluptatum dignissimos rerum minus cumque.',30.00,'Velit saepe dolorem eum itaque. Molestias sed ut deleniti qui.',27516,3,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(35,'Lisette Marquardt','Qui recusandae enim dolore et quo officiis vero aliquam excepturi.','Et ullam sit et id. Placeat in provident velit laboriosam qui.',3.00,'Illo in incidunt sit ut. Illo qui quod consequuntur et sunt cum id. Ex saepe voluptate illum et.',5266,4,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(36,'Magdalena Gorczany','Temporibus ad facilis non et consequuntur doloribus explicabo explicabo ex voluptas sit.','Hic ratione ex odit inventore. Perferendis dignissimos officiis sed.',79.00,'Et ullam numquam eveniet. Et quibusdam id quasi quis deleniti. Vitae dignissimos aut totam.',67992,20,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(37,'Kenneth Jaskolski Sr.','Ad praesentium illum deserunt molestiae mollitia officia.','Aspernatur id in ut. Ullam facilis nobis laudantium harum delectus quidem.',32.00,'Dolor at ut dolores at. Sunt quasi voluptas et amet. Id velit et occaecati nam.',66775,11,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(38,'Keon Reichert','Eaque neque tempora repellat aut sed quae.','Explicabo saepe in quod odio. Veritatis autem ut labore sunt quam ut similique aut.',33.00,'Voluptates et qui laudantium cum alias facilis quae ut. Nulla quia et nostrum quia et.',38813,7,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(39,'Benedict Bernhard IV','Officia provident qui porro labore suscipit quod dolor qui et id.','Iste quae deleniti cum aliquam. Voluptatum non quisquam distinctio ullam aut.',29.00,'Fuga perferendis minus eaque nulla. Ut impedit autem eos nam deleniti aliquam.',78636,13,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(40,'Mrs. Heath Schimmel','Quidem praesentium in eaque sunt ea quis non aut veritatis fugit amet sint pariatur.','Id cumque sint saepe excepturi cum ipsum ut.',60.00,'Est aut a qui. Doloribus dignissimos qui architecto quod. Amet ad est voluptate nisi aliquid.',80627,20,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(41,'Grant Schulist','Atque sapiente tenetur mollitia similique itaque consequuntur quidem inventore numquam enim autem.','Ea earum eos quaerat itaque expedita quo.',23.00,'Ut quis dolores officia modi inventore rem. Est eos voluptas aut perspiciatis laboriosam ab est.',59969,1,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(42,'Dustin Kulas','Aut magni quibusdam sunt eum a voluptates beatae quisquam veritatis vitae nostrum accusantium optio.','Et consequatur vero occaecati fugit optio aut non.',44.00,'Ea eos repellat iste suscipit esse. Et ex nam fuga. Ea non delectus nihil nulla id natus tempora.',68998,14,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(43,'Jenifer Quitzon','Odio delectus eius culpa et hic sed ab sunt est nobis et aut nobis.','Asperiores et illo molestiae natus perferendis.',28.00,'A possimus vel saepe assumenda. Dolorum sequi omnis quidem exercitationem molestiae autem amet ut.',66033,20,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(44,'Damaris Schuster','Qui recusandae ea ratione rerum iure alias occaecati aliquid consequuntur perferendis.','Nemo autem aliquam ratione et.',24.00,'Est temporibus non dolor iure ducimus ab. Quidem sed temporibus voluptatem ut.',13475,3,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(45,'Hazle Zemlak','Porro sed officiis vitae ipsam hic ut molestiae.','Similique quod expedita aut voluptas odit.',7.00,'Consequuntur nam quis nostrum veritatis. Quo fugiat et id nam vitae.',49654,5,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(46,'Prof. Maximo Jacobs','Nisi ullam saepe maxime laudantium aut est quis et.','Consequatur voluptas nobis officiis ut ea nisi iusto.',99.00,'Saepe sed maxime quae odit nobis mollitia nisi. Adipisci corporis quia voluptatem.',5494,10,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(47,'Prof. Emmalee Lesch V','Est minus in cupiditate placeat aperiam quae est aspernatur consequatur dolores veritatis.','Pariatur reiciendis ea ea aut voluptatem omnis.',56.00,'Consequatur officia ullam voluptas. Vel dolorum alias tempora nisi natus.',22930,17,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(48,'Jensen Schultz MD','Est velit iusto aut est dolores accusamus voluptatibus.','Consectetur quia in aut et rerum sunt occaecati consequuntur.',34.00,'Minima ex impedit ut et. Facere explicabo quaerat omnis aut. Nemo aliquid optio incidunt.',27806,19,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(49,'Brisa Durgan MD','Aspernatur ut accusantium odio quaerat iusto aspernatur cumque.','Sint dolor delectus eos consequatur rerum. Consectetur sed velit et veniam quisquam.',29.00,'Sed reprehenderit id eum aut. Molestias omnis officiis consequatur. Nam ratione iusto ut delectus.',732,15,'2023-06-19 04:32:59','2023-06-19 04:32:59'),(50,'Federico Brekke','Culpa eligendi ut dolores nostrum atque fugiat.','Cum nemo fugit illum dolorem ea. Aspernatur sed vitae sed qui aut. Et et et ipsum quo.',38.00,'Modi est minus eaque nemo aut fugiat ipsa. Aut facilis et in aspernatur sunt nobis quo.',4690,15,'2023-06-19 04:32:59','2023-06-19 04:32:59');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kathryne Williamson','ron61@example.com','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8vcQtZtj02','2023-06-19 04:32:57','2023-06-19 04:32:57'),(2,'Bernice Fahey','nruecker@example.com','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cCYU0Pdvm5','2023-06-19 04:32:57','2023-06-19 04:32:57'),(3,'Giles Erdman','florian.cormier@example.com','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2PboTgwJMx','2023-06-19 04:32:57','2023-06-19 04:32:57'),(4,'Molly Grimes','dare.allan@example.org','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eAQNTCxyXO','2023-06-19 04:32:57','2023-06-19 04:32:57'),(5,'Gaylord Osinski','xkohler@example.net','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','no0uxzZ0T9','2023-06-19 04:32:57','2023-06-19 04:32:57'),(6,'Rafael Bartoletti','wluettgen@example.net','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KYcAAWSGdC','2023-06-19 04:32:57','2023-06-19 04:32:57'),(7,'Abe Fisher','heaney.teresa@example.net','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nKT9kFfl2S','2023-06-19 04:32:57','2023-06-19 04:32:57'),(8,'Gaetano McClure','rene79@example.org','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','enaNIv3Xov','2023-06-19 04:32:57','2023-06-19 04:32:57'),(9,'Jaycee Weber','viva.mckenzie@example.org','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ubQOLe77cR','2023-06-19 04:32:57','2023-06-19 04:32:57'),(10,'Jett Ullrich','johns.erling@example.org','2023-06-19 04:32:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','R6PlJ0qLuD','2023-06-19 04:32:57','2023-06-19 04:32:57');
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

-- Dump completed on 2023-06-19 10:42:16

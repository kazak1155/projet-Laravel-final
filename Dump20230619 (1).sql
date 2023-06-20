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
INSERT INTO `bookings` VALUES (1,15,8,'2023-06-10 10:52:14','2023-06-15 11:41:46',7,47529,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(2,5,10,'2023-05-30 05:48:55','2023-06-15 12:46:55',4,70167,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(3,11,10,'2023-06-13 09:12:37','2023-06-02 05:32:06',1,26388,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(4,15,3,'2023-06-10 10:35:22','2023-06-03 03:55:54',7,40734,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(5,27,10,'2023-06-01 00:15:57','2023-06-03 00:34:34',1,52626,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(6,41,7,'2023-06-02 17:08:47','2023-06-02 12:50:21',8,84324,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(7,21,3,'2023-05-31 08:43:36','2023-06-06 02:12:19',4,82028,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(8,24,5,'2023-06-04 20:13:58','2023-06-03 17:31:58',7,89005,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(9,33,4,'2023-06-02 20:44:09','2023-06-12 13:16:22',2,91191,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(10,25,8,'2023-06-13 07:19:47','2023-06-14 22:34:03',9,30316,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(11,34,6,'2023-06-18 06:10:06','2023-06-11 17:03:18',3,9448,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(12,17,5,'2023-06-18 13:17:09','2023-06-12 07:59:04',7,52839,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(13,17,7,'2023-06-10 10:53:32','2023-06-05 01:25:33',2,67976,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(14,49,2,'2023-05-31 15:31:06','2023-06-04 01:54:53',7,62555,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(15,24,3,'2023-06-07 11:53:31','2023-05-31 14:31:07',4,3129,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(16,35,6,'2023-06-03 18:12:40','2023-06-01 07:27:50',5,68061,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(17,48,2,'2023-06-18 04:36:54','2023-06-03 00:59:30',1,35250,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(18,19,1,'2023-06-03 18:02:09','2023-06-10 05:55:37',5,83341,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(19,43,9,'2023-06-16 09:15:57','2023-06-07 05:02:27',9,36472,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(20,45,5,'2023-06-13 02:15:27','2023-06-05 12:45:52',5,72152,'2023-06-19 05:25:53','2023-06-19 05:25:53');
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
INSERT INTO `facilities` VALUES (1,'Marty Veum','2023-06-19 05:25:49','2023-06-19 05:25:49'),(2,'Elsa Gusikowski','2023-06-19 05:25:49','2023-06-19 05:25:49'),(3,'Mr. Luciano Renner PhD','2023-06-19 05:25:49','2023-06-19 05:25:49'),(4,'Mrs. Ofelia Larson IV','2023-06-19 05:25:49','2023-06-19 05:25:49'),(5,'Giuseppe Nikolaus MD','2023-06-19 05:25:49','2023-06-19 05:25:49'),(6,'Madaline Oberbrunner Sr.','2023-06-19 05:25:50','2023-06-19 05:25:50'),(7,'Marjolaine Adams Sr.','2023-06-19 05:25:50','2023-06-19 05:25:50'),(8,'Fidel Nienow DVM','2023-06-19 05:25:50','2023-06-19 05:25:50'),(9,'Tania Johnston','2023-06-19 05:25:50','2023-06-19 05:25:50'),(10,'Krystal Jenkins','2023-06-19 05:25:50','2023-06-19 05:25:50'),(11,'Prof. Meggie Simonis V','2023-06-19 05:25:50','2023-06-19 05:25:50'),(12,'Dr. Miles Thompson V','2023-06-19 05:25:50','2023-06-19 05:25:50'),(13,'Sylvan Bednar I','2023-06-19 05:25:50','2023-06-19 05:25:50'),(14,'Baron Hintz','2023-06-19 05:25:50','2023-06-19 05:25:50'),(15,'Ciara Bayer','2023-06-19 05:25:50','2023-06-19 05:25:50'),(16,'Shanel Price','2023-06-19 05:25:50','2023-06-19 05:25:50'),(17,'Timothy Batz','2023-06-19 05:25:50','2023-06-19 05:25:50'),(18,'Jaden Keeling','2023-06-19 05:25:50','2023-06-19 05:25:50'),(19,'Moises Collier','2023-06-19 05:25:50','2023-06-19 05:25:50'),(20,'Lyda D\'Amore','2023-06-19 05:25:50','2023-06-19 05:25:50'),(21,'Deontae Cartwright','2023-06-19 05:25:50','2023-06-19 05:25:50'),(22,'Vena Von','2023-06-19 05:25:50','2023-06-19 05:25:50'),(23,'Thea Daugherty','2023-06-19 05:25:50','2023-06-19 05:25:50'),(24,'Walker Kiehn','2023-06-19 05:25:50','2023-06-19 05:25:50'),(25,'Dr. Emie Herman II','2023-06-19 05:25:50','2023-06-19 05:25:50'),(26,'Mrs. Theresia Koss','2023-06-19 05:25:50','2023-06-19 05:25:50'),(27,'Teagan Sipes','2023-06-19 05:25:50','2023-06-19 05:25:50'),(28,'Randall Johns','2023-06-19 05:25:50','2023-06-19 05:25:50'),(29,'Emery Kozey','2023-06-19 05:25:50','2023-06-19 05:25:50'),(30,'Dr. Shea Shanahan','2023-06-19 05:25:50','2023-06-19 05:25:50'),(31,'Onie Kiehn','2023-06-19 05:25:50','2023-06-19 05:25:50'),(32,'Kamron Auer','2023-06-19 05:25:50','2023-06-19 05:25:50'),(33,'Agustin Koch','2023-06-19 05:25:50','2023-06-19 05:25:50'),(34,'Berry Gislason','2023-06-19 05:25:50','2023-06-19 05:25:50'),(35,'Darius Deckow','2023-06-19 05:25:50','2023-06-19 05:25:50'),(36,'Prof. Madelyn Stoltenberg IV','2023-06-19 05:25:50','2023-06-19 05:25:50'),(37,'Christian Wolff','2023-06-19 05:25:50','2023-06-19 05:25:50'),(38,'Kenneth Skiles DVM','2023-06-19 05:25:50','2023-06-19 05:25:50'),(39,'Hoyt Collier','2023-06-19 05:25:50','2023-06-19 05:25:50'),(40,'Melyna Schowalter DDS','2023-06-19 05:25:50','2023-06-19 05:25:50'),(41,'Prof. Bernhard Gutkowski','2023-06-19 05:25:50','2023-06-19 05:25:50'),(42,'Maurine Kerluke','2023-06-19 05:25:50','2023-06-19 05:25:50'),(43,'Destin Russel','2023-06-19 05:25:50','2023-06-19 05:25:50'),(44,'Oliver Lehner','2023-06-19 05:25:50','2023-06-19 05:25:50'),(45,'Nigel Olson','2023-06-19 05:25:50','2023-06-19 05:25:50'),(46,'Cruz Lebsack','2023-06-19 05:25:50','2023-06-19 05:25:50'),(47,'Toni McKenzie PhD','2023-06-19 05:25:50','2023-06-19 05:25:50'),(48,'Prof. Dante Moore III','2023-06-19 05:25:50','2023-06-19 05:25:50'),(49,'Prof. Claire Konopelski','2023-06-19 05:25:50','2023-06-19 05:25:50'),(50,'Frances Smitham','2023-06-19 05:25:50','2023-06-19 05:25:50');
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
INSERT INTO `facility_hotel` VALUES (1,39,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(2,40,2,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(3,16,13,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(4,26,8,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(5,5,10,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(6,11,11,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(7,23,1,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(8,24,19,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(9,30,20,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(10,17,12,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(11,6,17,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(12,21,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(13,37,1,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(14,25,16,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(15,50,15,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(16,30,19,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(17,35,9,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(18,27,7,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(19,43,8,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(20,49,9,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(21,13,2,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(22,13,6,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(23,1,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(24,25,6,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(25,24,11,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(26,38,11,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(27,6,3,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(28,14,11,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(29,19,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(30,44,17,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(31,4,15,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(32,48,19,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(33,34,2,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(34,14,20,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(35,31,16,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(36,26,6,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(37,22,6,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(38,5,13,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(39,6,7,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(40,10,7,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(41,13,18,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(42,16,5,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(43,31,9,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(44,23,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(45,41,14,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(46,9,18,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(47,6,7,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(48,29,19,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(49,38,9,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(50,7,1,'2023-06-19 05:25:52','2023-06-19 05:25:52');
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
INSERT INTO `facility_room` VALUES (1,6,8,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(2,17,25,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(3,38,7,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(4,34,22,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(5,42,16,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(6,38,5,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(7,35,15,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(8,20,2,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(9,20,46,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(10,3,3,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(11,43,39,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(12,26,33,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(13,11,4,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(14,45,10,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(15,26,14,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(16,22,16,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(17,1,21,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(18,21,15,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(19,6,50,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(20,29,3,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(21,28,14,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(22,13,39,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(23,43,37,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(24,6,32,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(25,34,33,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(26,48,15,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(27,13,34,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(28,19,19,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(29,14,45,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(30,43,7,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(31,22,50,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(32,2,20,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(33,12,8,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(34,13,29,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(35,36,7,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(36,38,34,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(37,22,34,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(38,42,41,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(39,42,37,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(40,22,21,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(41,17,30,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(42,24,13,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(43,35,14,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(44,23,24,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(45,2,16,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(46,1,11,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(47,25,3,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(48,10,28,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(49,45,20,'2023-06-19 05:25:53','2023-06-19 05:25:53'),(50,10,35,'2023-06-19 05:25:53','2023-06-19 05:25:53');
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
INSERT INTO `hotels` VALUES (1,'Effie Bogan','At nisi exercitationem sequi quae consequuntur cum consequatur.','Ut.','6083 Crooks Ranch\nEast Laverne, AK 42830-7766','2023-06-19 05:25:49','2023-06-19 05:25:49'),(2,'Mr. Wade Waelchi','Eos dolor qui ut commodi soluta minus quis expedita est consequuntur aut.','Consectetur.','55537 Lockman Rue\nBaileyborough, NC 34859-7164','2023-06-19 05:25:49','2023-06-19 05:25:49'),(3,'Mr. Rahul Murray','Amet voluptatem enim iusto fugiat enim consequatur minima sapiente.','Velit.','542 Francisco Spurs Apt. 811\nRoycefurt, NV 90509','2023-06-19 05:25:49','2023-06-19 05:25:49'),(4,'Bernhard McKenzie','Et qui voluptatem ipsum aut odit facere dolor consequatur doloribus facilis vero cum sed.','Sapiente.','64065 Farrell Garden\nZoilamouth, TX 57918','2023-06-19 05:25:49','2023-06-19 05:25:49'),(5,'Miss Destini Brekke Jr.','Repellendus quia voluptatem tempore provident deleniti et sed dolor aperiam aut quisquam rerum nesciunt.','Quis.','7800 Zachary Mountains Suite 325\nPacochaport, WI 98946','2023-06-19 05:25:49','2023-06-19 05:25:49'),(6,'Heidi Hegmann','Architecto laudantium est magni voluptatem voluptas quae perferendis qui velit sit corrupti facere.','Eum.','55259 Brandi Haven\nNorth Adela, WV 68963-8014','2023-06-19 05:25:49','2023-06-19 05:25:49'),(7,'Amiya Hintz','Voluptas fugit nisi ut dolorem et earum autem occaecati velit modi minima.','Modi deleniti.','586 Eunice Mall\nLake Roryview, SC 60339','2023-06-19 05:25:49','2023-06-19 05:25:49'),(8,'Mrs. Sarai Lakin II','Voluptas reiciendis occaecati omnis magni saepe aut consequatur quia voluptate tempore est.','Ut.','99449 Quitzon Crescent Apt. 307\nNorth Kathlynview, OH 45106-2204','2023-06-19 05:25:49','2023-06-19 05:25:49'),(9,'Davin Rohan','Eos dolorem fugiat soluta officia non sint quae ad deleniti id officia unde est.','Et.','2242 Grimes Port\nWest Oletabury, SC 44903-3409','2023-06-19 05:25:49','2023-06-19 05:25:49'),(10,'Dr. Margarette Pagac DVM','Totam necessitatibus delectus qui nam beatae dolor doloremque sed ea harum debitis eum ut.','Itaque.','9819 Justine Ridge\nIsmaelland, AZ 94690-2582','2023-06-19 05:25:49','2023-06-19 05:25:49'),(11,'Mr. Lavern Kerluke MD','Explicabo ratione atque expedita porro sed dolor ex voluptates ut voluptatum sint perferendis.','Voluptatem.','64084 Coty Turnpike Apt. 892\nStoltenbergmouth, IL 82147-0965','2023-06-19 05:25:49','2023-06-19 05:25:49'),(12,'Sabryna Hayes','Debitis fugiat delectus doloribus iusto aut animi sit dolores at.','Vero.','130 Nienow Row Apt. 153\nDibbertville, OK 70298-0481','2023-06-19 05:25:49','2023-06-19 05:25:49'),(13,'Prof. Cristobal McGlynn II','Quia repellat provident velit amet maiores reprehenderit harum consequatur similique et suscipit enim odit.','Ex.','86772 Brady Fort\nDaughertyville, SC 44321-4705','2023-06-19 05:25:49','2023-06-19 05:25:49'),(14,'Yesenia Champlin','Repudiandae saepe est ad aperiam quis similique sed dolorem totam animi voluptatem.','Animi quae.','548 Bailey Mission\nBraunborough, CA 90921-0858','2023-06-19 05:25:49','2023-06-19 05:25:49'),(15,'Dr. Kelley Goyette','Sed fugiat perferendis omnis aut qui facilis necessitatibus quo commodi minus sed eveniet.','Numquam eos.','6299 Dickinson Pine\nLake Dayneborough, MI 72883','2023-06-19 05:25:49','2023-06-19 05:25:49'),(16,'Eladio Bradtke III','Impedit nam modi vel perspiciatis dolorem non aut est soluta repellendus nihil.','Dolor aut.','9438 Ortiz Trace\nElvisburgh, NV 40338','2023-06-19 05:25:49','2023-06-19 05:25:49'),(17,'Marcelina Lang','Pariatur sapiente vero eius veritatis ut et sed praesentium occaecati omnis voluptas.','Asperiores.','3268 Barrows Wall Apt. 416\nLomaside, MI 25628-8712','2023-06-19 05:25:49','2023-06-19 05:25:49'),(18,'Mason Daugherty','Quo sapiente laboriosam recusandae eos veritatis nobis tempora voluptates reprehenderit cum deleniti.','Quod necessitatibus.','969 Hammes Locks Suite 127\nLefflerstad, NV 37876-9393','2023-06-19 05:25:49','2023-06-19 05:25:49'),(19,'Cullen Kemmer','Rerum minima et debitis unde sit est.','Consequatur sint.','5730 Jerrold Mills Suite 305\nNorth Lorenz, AR 18559-6338','2023-06-19 05:25:49','2023-06-19 05:25:49'),(20,'Lambert Schowalter IV','Omnis atque asperiores nobis id ea dolor possimus nihil corporis enim laudantium.','Minus iusto.','9187 Kerluke Avenue Suite 513\nO\'Haraside, DE 88706','2023-06-19 05:25:49','2023-06-19 05:25:49');
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
INSERT INTO `reviews` VALUES (1,'Harum aperiam ipsam fugit quis nisi aliquid eaque repudiandae maxime quo provident.',2,7,1,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(2,'Et vero sunt id beatae eos quasi autem deleniti velit nihil voluptatibus non sit.',5,8,7,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(3,'Ut enim laudantium aliquid ipsam eaque et asperiores.',2,12,1,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(4,'Voluptatem fugit exercitationem excepturi eius voluptas tempore qui.',1,1,5,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(5,'Accusamus quis culpa in deleniti dolor officia molestiae nulla quod.',7,20,1,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(6,'Impedit eaque velit qui quam quia autem ut sapiente saepe tempora sed consequatur ut.',6,14,6,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(7,'Minus earum perspiciatis exercitationem voluptatum nisi inventore tempore eveniet aut.',1,12,1,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(8,'Est accusamus earum iure et et eos qui vero et dolores nisi id modi.',8,8,7,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(9,'Ipsam eum sit enim recusandae officiis cumque ullam deleniti voluptatibus dignissimos minima molestias eum.',5,5,2,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(10,'Voluptatem qui consequuntur velit a ut ut rerum quis et non fugiat.',3,13,4,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(11,'Labore vero iste aliquid minima vero ea quis a.',2,11,5,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(12,'Vel fugiat aut autem atque error dolores.',6,17,7,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(13,'Velit repellat et qui ad est aut mollitia reprehenderit.',6,15,6,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(14,'Itaque sed ex eos ratione repellat at eveniet nemo.',9,11,9,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(15,'Voluptas iusto rerum placeat occaecati possimus expedita incidunt dolores fugiat aut.',1,11,6,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(16,'Necessitatibus fugiat consectetur possimus laudantium totam et nisi qui ut consequatur quas error sint.',3,18,8,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(17,'Distinctio est eveniet molestiae praesentium quia molestiae itaque architecto mollitia.',7,13,3,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(18,'Voluptatem et nisi cum aspernatur voluptate inventore dolor nobis provident quasi.',3,5,7,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(19,'Doloremque illo dolorum ut et sed omnis nulla inventore dolores minus labore dolorem totam.',7,10,8,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(20,'Reiciendis consequatur iusto officiis exercitationem placeat quam aut.',6,9,7,'2023-06-19 05:25:50','2023-06-19 05:25:50');
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
INSERT INTO `role_users` VALUES (1,'Lorenz Treutel',3,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(2,'Pamela Borer MD',4,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(3,'Mrs. Pat Pollich PhD',5,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(4,'Rosalia Dietrich III',6,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(5,'Miss Dolly Schmidt',6,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(6,'Saul Quigley',2,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(7,'Cielo Mohr',5,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(8,'Macie Botsford',4,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(9,'Lue Homenick',10,'2023-06-19 05:25:50','2023-06-19 05:25:50'),(10,'Prof. Ayden Schultz DDS',8,'2023-06-19 05:25:50','2023-06-19 05:25:50');
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
INSERT INTO `rooms` VALUES (1,'Cyrus Bayer','Ipsa et totam corporis tenetur dolor odit aut fugit neque et.','Similique cumque ex pariatur itaque accusamus repellendus.',32.00,'Id sunt dolore eum quis. Incidunt magni est voluptatum laudantium.',10627,9,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(2,'Dr. Hermann Purdy DVM','Fugiat ipsa est eos dignissimos est vitae occaecati atque et repudiandae id aut corrupti.','Natus beatae et consectetur in minima. Atque consectetur tempore voluptatem porro aut.',88.00,'Consequatur quas numquam quisquam amet sapiente. Quisquam dolores velit vel atque officiis dolores.',63922,12,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(3,'Rhianna Paucek','In ipsa dolore maxime et optio debitis qui est.','Aut assumenda magnam perspiciatis laborum quaerat sed.',85.00,'Qui saepe tempora quidem nostrum ipsa nulla cupiditate. Soluta consequatur eum et eos a iure.',9338,20,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(4,'Brooke Powlowski','Ratione assumenda dolorum animi et et earum ullam porro impedit sunt sint officiis eum.','Maxime fugit doloremque dolore est. Soluta earum qui vel eum ullam qui.',73.00,'Et voluptas harum consectetur maxime mollitia. Amet tempore et unde asperiores consequatur.',10456,17,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(5,'Frederique Ferry DDS','In dolor quia molestias sed illo quo rerum.','Ut tenetur voluptates quae laborum. Eum dolores labore sit possimus voluptas.',70.00,'Dolorum a molestiae culpa pariatur perspiciatis sequi. Et a eum possimus et totam libero.',66615,17,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(6,'Prof. Karlie Ortiz DDS','Ea voluptatem eaque quod est aliquam quas rerum porro sit alias consequatur labore.','Magnam omnis sequi quo omnis alias. Dolore vel enim a.',95.00,'Laboriosam id nemo asperiores veniam vero voluptatibus porro. Maiores cum odio facilis et quod ut.',75537,13,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(7,'Edyth Medhurst II','Aspernatur cumque porro iusto expedita et autem ea eius maiores velit cumque voluptatem voluptatem.','Tempora culpa numquam et laboriosam corporis. Facilis quos voluptatum maxime vero.',2.00,'Sed laboriosam voluptas suscipit sit quo enim. Quaerat et aut et omnis exercitationem.',97675,18,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(8,'Prof. Clark Greenfelder DVM','Repellendus rerum quis delectus voluptatibus ex non tempore.','Laudantium dolores dolor debitis aliquid nostrum necessitatibus.',18.00,'Ipsum ut modi molestias odit adipisci. Ut maiores dolore asperiores labore.',92230,7,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(9,'Brionna Muller DDS','Inventore sunt asperiores ea aut at harum quibusdam dolorem officia.','Facere quidem aliquid dolorum quae. Natus occaecati saepe dolor earum et.',5.00,'Assumenda sapiente ut molestiae sit. Est soluta quidem eligendi aliquid beatae.',98648,2,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(10,'Dr. Maye Rutherford II','Accusantium quis delectus amet deleniti est dolores dignissimos maiores est eveniet quod commodi.','Voluptates sequi nam voluptates optio consequatur id.',44.00,'Quasi neque omnis voluptatum amet rerum aut labore. In et distinctio sint.',97369,12,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(11,'Delpha Cummerata PhD','Omnis temporibus voluptatibus quae aut beatae ipsum accusantium voluptate id aut.','Odio commodi nesciunt et et. Et praesentium cum iusto beatae odio.',53.00,'Vel autem sint aut velit tenetur cumque. Molestias velit magni aut voluptatem sint nihil.',97662,6,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(12,'Ardella Jenkins','Minima nostrum sed facilis esse vel et culpa.','Accusamus et ducimus laboriosam numquam nobis error molestiae voluptates.',16.00,'Nihil sint qui sint aperiam. Veniam libero eius et. Id eligendi explicabo qui tenetur odio.',76197,13,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(13,'Miss Hermina Padberg II','Sint cupiditate magnam dolore consequatur et corporis provident molestiae et inventore nihil.','Omnis possimus aut ex quia debitis. Accusamus sit velit et facilis quo.',47.00,'Provident provident rem est non. Et occaecati ad doloremque. Quo voluptas fugiat et laboriosam.',24658,7,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(14,'Mr. Dorcas Dicki Sr.','Modi porro harum eveniet et earum quis.','Vitae excepturi veritatis modi qui nam aliquam.',95.00,'Id rerum a aspernatur quibusdam. Et molestiae eum sapiente.',79968,7,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(15,'Idella Ratke DDS','Vel ducimus tempore ut tempora voluptatem maxime sequi tempore libero.','Alias distinctio quisquam deleniti vero et.',48.00,'Praesentium repellat quam culpa ut odio. Deserunt labore ea ipsa.',74865,6,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(16,'Dr. Frederique Haley','Molestias est enim recusandae quibusdam sint dignissimos at est.','Rerum eligendi quibusdam quia aut minima odio accusantium.',58.00,'Dolor sunt reiciendis molestias aut alias nihil officia. Voluptatem facere animi eum enim.',33620,17,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(17,'Ms. Bethel Schmitt DDS','Sit deserunt sunt et excepturi est velit totam.','Aut aliquid qui beatae ea temporibus qui et.',20.00,'Rerum eum ut ducimus sint tenetur. At autem dicta ducimus illo praesentium.',54791,6,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(18,'Amaya Gleason','Asperiores molestias iste voluptates ullam quo odio deleniti libero ex.','Velit eos voluptas beatae dolores et adipisci. Aperiam dolorem sint non error suscipit.',24.00,'Et cum fuga aut sunt quos cupiditate. Officiis quo sit omnis. Corporis et atque et quaerat.',54709,14,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(19,'Teresa Schiller','Ipsa commodi perspiciatis commodi et qui ut.','Aut dignissimos laudantium voluptatem qui nihil nulla delectus.',25.00,'Reiciendis impedit temporibus dolorum debitis quas. Et impedit ea iste quaerat ab blanditiis.',69886,9,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(20,'Lindsey Swift','A alias beatae distinctio harum sit esse quibusdam atque sit eos qui culpa et.','Dignissimos odit sed minus voluptatibus quos voluptatibus. Voluptatum ex qui ut est.',55.00,'Eligendi non animi autem quisquam perferendis. Animi dolores ut voluptatem. Est ipsa et iste et.',63159,5,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(21,'Shayne Balistreri MD','Aut reiciendis ea atque dolorem velit aut ut odio.','Sequi repellat sapiente libero qui ut totam.',48.00,'Enim modi temporibus maxime aliquid. Voluptas eos voluptas quod odio sunt.',52672,3,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(22,'Yazmin Blick','Necessitatibus aut at et illo tenetur est qui dolorem.','Autem voluptatem doloribus eveniet. Explicabo voluptatibus nihil et.',50.00,'Corrupti est in qui quos. Nesciunt velit et odio aspernatur.',1715,18,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(23,'Sebastian Hammes','Laborum rem et deleniti quas ea illum molestiae non deleniti.','Consequuntur aut et id rerum deleniti culpa.',85.00,'Eligendi dolorem quia in voluptas ducimus placeat. Non rerum ex recusandae.',79449,12,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(24,'Orville Bosco','Praesentium quo et perferendis nemo explicabo consequuntur eum.','Quos fugit consectetur praesentium. Quaerat occaecati rem molestias a.',8.00,'Ut id et adipisci. Aliquid consequuntur laborum est et eum. Et ea voluptates cum non fuga dolores.',78960,14,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(25,'Ova Crist IV','Ullam laudantium optio assumenda corrupti praesentium consequatur unde aut ut repudiandae ducimus excepturi.','Nemo in voluptate voluptas quos et optio est.',6.00,'Voluptatem nostrum enim qui porro. Delectus maxime neque quis delectus et voluptatem aut est.',67392,10,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(26,'Adelle Runolfsson','Et sunt sit repellat facere saepe qui et modi id.','Nobis qui tempore modi illum quam veniam dolore.',58.00,'Beatae error reprehenderit aut eaque. Est omnis dolor minus nisi alias sed voluptas.',14989,1,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(27,'Mrs. Arlie Runte Jr.','Autem et quibusdam ipsum quo itaque sed.','Et officiis eius blanditiis quia quidem autem.',94.00,'Non sed et aspernatur temporibus aut. Laudantium nesciunt dolorem eos ratione sunt qui.',69890,15,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(28,'Michel Konopelski','Porro accusantium dolorum et aliquid ab et eius rerum ullam at ducimus non.','Accusantium veritatis perferendis non officia. Praesentium sed sit velit voluptatem.',20.00,'Eligendi dolorum tempore consequatur minus. Ut ut repudiandae sunt.',44706,1,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(29,'Dave West DDS','Veniam temporibus nesciunt mollitia quisquam ratione culpa cumque omnis similique.','Eligendi velit officia doloremque ut voluptatum eligendi.',36.00,'At vel inventore minus magni ducimus in rerum. Aliquam animi sit molestiae voluptate qui.',52783,10,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(30,'Corene Thiel','Earum delectus sequi cupiditate dolores reprehenderit unde beatae quibusdam nobis quos asperiores voluptatibus.','Molestiae aperiam optio quaerat dolore.',90.00,'Culpa consectetur qui sed. Et velit delectus quia ipsum doloremque similique.',6750,2,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(31,'Greyson Hamill I','Placeat non non occaecati aut dolor enim facere ipsam qui enim sed.','Corporis enim aut eaque. Sint quia nesciunt dolores in.',26.00,'Animi iusto ex qui nihil ea illum ut. Ex pariatur reiciendis et neque placeat.',37674,17,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(32,'Harold Orn','Totam dolorem aut in iusto est natus qui porro eum consequatur.','Et ipsam quos id tenetur est. Tenetur qui molestiae magni non.',53.00,'Nam error in sunt aut. Impedit repellat dolor dolore autem. Velit tempore velit laudantium rem.',61369,8,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(33,'Mr. Cory Baumbach','Quibusdam tenetur velit ut placeat cupiditate quisquam ea voluptas necessitatibus aperiam omnis ea ab.','Necessitatibus quo optio possimus qui. Et earum est quas quis.',33.00,'Iusto tempore ea aut vero eum voluptatum nobis. Aut qui odio sint nihil.',89252,3,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(34,'Carolanne Runte','Sint ad amet explicabo nesciunt porro assumenda repudiandae et accusantium inventore quisquam veritatis.','Omnis voluptate quos nesciunt a accusamus est est saepe.',63.00,'Natus numquam vero et id beatae. Accusamus rerum dolore voluptatum quaerat.',54657,13,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(35,'Savion Ratke','Consequatur dolore minima rem temporibus nihil omnis dolorem optio voluptatem fuga aspernatur eaque.','Quam repellendus voluptatem hic et rerum voluptas sequi eos.',51.00,'Atque et aliquam est nam. Omnis et enim iste quos temporibus. A odio minus itaque rerum.',94675,7,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(36,'Zaria Hoppe','Autem quisquam vel error esse tenetur quod itaque rerum repudiandae.','Aliquam et et fugiat assumenda sint quod eius. Eius vel qui quo itaque sit unde id enim.',36.00,'Sit laboriosam cupiditate officia eum. Odit modi excepturi velit necessitatibus.',47343,2,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(37,'Ms. Bettye Denesik III','Maiores amet in sunt voluptates animi aperiam dolorem corrupti quo nulla consequatur.','Quas quis ratione facere ut. Sit autem dolore natus.',99.00,'Aut nam excepturi error. Porro perferendis et tenetur vel.',66685,16,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(38,'Susie Effertz','Corrupti est dolores accusamus dolor quod ratione qui corrupti est.','Accusantium nihil totam aut dolores voluptates consequatur qui.',85.00,'Aliquid facere ad dolor praesentium eos ea omnis. Itaque minus similique consequuntur sequi sit.',23965,18,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(39,'Prof. Brenden Schumm','Laborum eum laboriosam inventore corrupti quas totam ipsam sint ipsam sint occaecati labore.','Odio ut et et odit eos aliquam. Aliquid corporis quidem error quam.',52.00,'Doloribus repellat et velit earum. Inventore assumenda quis adipisci doloribus repudiandae.',48249,6,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(40,'Miss Sister O\'Connell MD','Illo facere cupiditate explicabo itaque explicabo debitis nemo.','Excepturi odit expedita eligendi rerum officia odio.',22.00,'Illum nam quam qui est omnis similique in quia. Voluptatem inventore culpa fuga.',31794,7,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(41,'Lamont Kunde','Tempore et debitis quam ut sequi doloribus.','Ipsum est consectetur error sint consectetur et.',9.00,'Debitis sit doloremque in ut in. Aut doloremque sed laudantium. Ullam numquam hic voluptate rerum.',39667,17,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(42,'Domenick Durgan','Omnis suscipit quo rem qui quos et voluptatibus ex laboriosam et.','Nesciunt itaque quas rem esse odit molestiae est.',4.00,'Laborum magnam et molestias ipsum dolores. Id id exercitationem debitis maiores.',710,19,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(43,'Craig Beer','Similique sequi iusto repudiandae sed autem error quaerat quaerat accusamus quasi maiores inventore omnis.','Quasi vel placeat labore suscipit commodi libero nesciunt veritatis.',18.00,'Sit qui molestiae et autem. Totam enim cum aut quis quo autem. Quod ea in aut sit et eius.',19577,5,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(44,'Prof. Mireille Kozey','Tempore magnam non et porro quasi id laudantium non unde eos animi aliquam.','Commodi repellat aut rerum adipisci ut.',4.00,'Sunt tempore consequatur ad ut dolor ea velit. Tempora optio voluptate animi odit corporis.',72920,5,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(45,'Eileen Denesik','Eos nobis dolor voluptatem amet praesentium id enim praesentium iure dignissimos eos labore voluptas.','Nesciunt quas dolore sed omnis voluptas.',46.00,'Ut tempore fugiat debitis qui. Quia consequatur et quia consequatur est.',75020,13,'2023-06-19 05:25:51','2023-06-19 05:25:51'),(46,'Wilfredo Lakin','Ducimus maxime eum modi a ipsam inventore esse quisquam recusandae cum maxime commodi et.','Nostrum consequuntur voluptas adipisci deserunt eius.',28.00,'Velit tempora sint incidunt. Fugiat numquam esse ea sit aut omnis. Et atque placeat atque est.',6093,4,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(47,'Prof. Ulises Gleason III','Unde sint blanditiis sapiente aspernatur impedit animi cupiditate.','Rerum consequatur sunt consectetur expedita velit.',92.00,'Exercitationem id cumque sequi non. Et harum quam dolores. Asperiores dolor natus non quibusdam.',72354,9,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(48,'Dr. Norris Gorczany','Deleniti velit aut error est veniam dicta dolores.','Sed aliquam corporis iure commodi. Ab voluptas quas non incidunt officiis cupiditate et.',29.00,'Ipsa doloremque et tempore facilis. Enim saepe voluptatibus omnis ipsam et.',7511,13,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(49,'Mr. Luigi Dickens','Nihil at rerum sint nostrum porro vero est debitis praesentium deserunt.','Dolores possimus dolorum qui eligendi qui. Recusandae sunt maxime id excepturi minima.',77.00,'Aut qui consequatur accusantium non. Voluptas tempore suscipit velit a magni.',79236,8,'2023-06-19 05:25:52','2023-06-19 05:25:52'),(50,'Cory Kautzer','Consequuntur fugit aut molestiae ratione non doloribus explicabo soluta id repellendus iste sit eum.','Ut unde velit deleniti veritatis exercitationem.',80.00,'Exercitationem totam at harum. Veniam officiis ipsa quidem.',29320,9,'2023-06-19 05:25:52','2023-06-19 05:25:52');
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
INSERT INTO `users` VALUES (1,'William Nicolas','farrell.reese@example.org','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HjPBnB4PF2','2023-06-19 05:25:49','2023-06-19 05:25:49'),(2,'Mrs. Kellie Lesch IV','ledner.georgianna@example.org','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wnPAorTlYK','2023-06-19 05:25:49','2023-06-19 05:25:49'),(3,'Prof. Gilda Beer Jr.','wilbert98@example.com','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HMIET6T1m6','2023-06-19 05:25:49','2023-06-19 05:25:49'),(4,'Mrs. Elyssa Botsford IV','savion.hyatt@example.org','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RIBPJO69Qw','2023-06-19 05:25:49','2023-06-19 05:25:49'),(5,'Jewell Bergstrom III','kemmer.jovani@example.com','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9EtZPb7wUW','2023-06-19 05:25:49','2023-06-19 05:25:49'),(6,'Gail Predovic','mikel.gusikowski@example.com','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NDctlxPBr3','2023-06-19 05:25:49','2023-06-19 05:25:49'),(7,'Margarita Crist','marco09@example.com','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','S7S1sd7M2z','2023-06-19 05:25:49','2023-06-19 05:25:49'),(8,'Abraham Koss','maudie.halvorson@example.com','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HYwQOJ8F18','2023-06-19 05:25:49','2023-06-19 05:25:49'),(9,'Zula Grant PhD','britney68@example.net','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aaiVmn3KTJ','2023-06-19 05:25:49','2023-06-19 05:25:49'),(10,'Clinton Hudson','crooks.eldred@example.org','2023-06-19 05:25:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FnnV2aNppM','2023-06-19 05:25:49','2023-06-19 05:25:49');
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

-- Dump completed on 2023-06-19 11:26:03

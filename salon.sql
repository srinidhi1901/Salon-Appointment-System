-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: django
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_userdetails'),(22,'Can change user',6,'change_userdetails'),(23,'Can delete user',6,'delete_userdetails'),(24,'Can view user',6,'view_userdetails'),(25,'Can add service',7,'add_service'),(26,'Can change service',7,'change_service'),(27,'Can delete service',7,'delete_service'),(28,'Can view service',7,'view_service'),(29,'Can add staff',8,'add_staff'),(30,'Can change staff',8,'change_staff'),(31,'Can delete staff',8,'delete_staff'),(32,'Can view staff',8,'view_staff'),(33,'Can add sub category',9,'add_subcategory'),(34,'Can change sub category',9,'change_subcategory'),(35,'Can delete sub category',9,'delete_subcategory'),(36,'Can view sub category',9,'view_subcategory'),(37,'Can add service type',10,'add_servicetype'),(38,'Can change service type',10,'change_servicetype'),(39,'Can delete service type',10,'delete_servicetype'),(40,'Can view service type',10,'view_servicetype'),(41,'Can add appointment',11,'add_appointment'),(42,'Can change appointment',11,'change_appointment'),(43,'Can delete appointment',11,'delete_appointment'),(44,'Can view appointment',11,'view_appointment'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_myApp_userdetails_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myApp_userdetails_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_userdetails` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(11,'myApp','appointment'),(12,'myApp','category'),(7,'myApp','service'),(10,'myApp','servicetype'),(8,'myApp','staff'),(9,'myApp','subcategory'),(6,'myApp','userdetails'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-15 15:47:22.026335'),(2,'contenttypes','0002_remove_content_type_name','2024-11-15 15:47:22.102404'),(3,'auth','0001_initial','2024-11-15 15:47:22.344066'),(4,'auth','0002_alter_permission_name_max_length','2024-11-15 15:47:22.410362'),(5,'auth','0003_alter_user_email_max_length','2024-11-15 15:47:22.418814'),(6,'auth','0004_alter_user_username_opts','2024-11-15 15:47:22.437372'),(7,'auth','0005_alter_user_last_login_null','2024-11-15 15:47:22.443882'),(8,'auth','0006_require_contenttypes_0002','2024-11-15 15:47:22.447527'),(9,'auth','0007_alter_validators_add_error_messages','2024-11-15 15:47:22.454682'),(10,'auth','0008_alter_user_username_max_length','2024-11-15 15:47:22.464957'),(11,'auth','0009_alter_user_last_name_max_length','2024-11-15 15:47:22.473932'),(12,'auth','0010_alter_group_name_max_length','2024-11-15 15:47:22.502943'),(13,'auth','0011_update_proxy_permissions','2024-11-15 15:47:22.517099'),(14,'auth','0012_alter_user_first_name_max_length','2024-11-15 15:47:22.535313'),(15,'myApp','0001_initial','2024-11-15 15:47:22.848643'),(16,'admin','0001_initial','2024-11-15 15:47:22.985222'),(17,'admin','0002_logentry_remove_auto_add','2024-11-15 15:47:22.992100'),(18,'admin','0003_logentry_add_action_flag_choices','2024-11-15 15:47:23.000262'),(19,'sessions','0001_initial','2024-11-15 15:47:23.044025'),(20,'myApp','0002_service','2024-11-17 05:48:59.548062'),(21,'myApp','0003_userdetails_address_userdetails_city_and_more','2024-11-20 08:44:05.515672'),(22,'myApp','0004_staff','2024-11-22 07:37:27.170636'),(23,'myApp','0005_remove_staff_bio_remove_staff_image_staff_photo_and_more','2024-11-22 09:04:04.967216'),(24,'myApp','0006_servicetype_subcategory','2024-12-14 17:02:08.206196'),(25,'myApp','0007_appointment','2025-01-02 16:51:34.971037'),(26,'myApp','0008_remove_subcategory_service_type_delete_servicetype_and_more','2025-01-03 08:24:52.985060'),(27,'myApp','0009_category','2025-01-09 08:27:10.544145');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ikbr85su8y8knlza19vvk98ksajzwc5','.eJxVjEEOwiAQRe_C2pApAwx16d4zkBmgUjVtUtqV8e7apAvd_vfef6nI21rj1soSx6zOqkN1-h2F06NMO8l3nm6zTvO0LqPoXdEHbfo65_K8HO7fQeVWv7WgBTEByBvqkBEA0IZERgiMAPe2t-jYOUeZPfDQiw2FcCBPKRWr3h_DqDbW:1tEjFv:kA6LAd9TTm0mzmW5nqXzvKGrD41fJCqkiLGnI42Y85M','2024-12-07 06:04:31.416311'),('1tgyjkhs53z06af0x1i03md0bytjxgss','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tTOnB:4owGUglAO7VCEzYg2FonzQXTbBgWnaeoxyPRt9STbmU','2025-01-02 18:15:29.393703'),('2i6zval4zpyhgenmkt18191r2nha0y4g','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVoka:Mr7YZuC5j9-6McX1DN1AO0nFIGxjzET32-DWAirdsQ0','2025-01-09 10:22:48.276205'),('3nv8g009ujl68m6017wbn9niplxr75ar','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tV7mM:w62PtOwtxtgxivjqrHpIFK_59JpS_9QXYJA3faSJXTc','2025-01-07 12:29:46.582093'),('3taxnc1uhsth6sj0mmbvu8i7xqlf0bf8','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tEkIH:_rvXwYDowCflYqtHYT9J4F6Bk8AkcTkXcrs6TsK2Ic4','2024-11-23 08:11:01.408684'),('59llpmv0yh251wualg9wv6izieuw4t3e','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVr5f:5QX2mFGYVSk31WYyYn0KCcx2dDuzFVQLIfC6SMJY6iI','2025-01-09 12:52:43.887653'),('5r6le9yjg8jjsstqkcvqts0qfsufkjmy','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tWB99:_3F0C66Mv4_ivS5kod4fc8Y213FDAZy1cv6VW3LMUrA','2025-01-10 10:17:39.332906'),('7ltzpyol9v5t39m8vl3vir15q5cik5ip','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tHHDv:XM7woJf7ThOeH4OaZ6KZKb29Rncr91n0vy8X-QAFWfQ','2024-11-30 07:44:59.404520'),('7o89zq9gizg4mxngrxbikajmyasxx084','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVQba:KnWurVTGzqm1CSCmpmmXiKhJS0D40yutMxFcngiit9Q','2025-01-08 08:35:54.938694'),('8kky4jje26ht2oy539c49giegt0vgox9','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tR6uC:NvSS9qIJjVampIiMKBdLVcopKZwpEJdqrdNZ-OEfMxw','2024-12-27 10:45:16.555649'),('91gt8pn4lapc7pyzfzvzhim3qm2d5h49','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tI0Xq:owGZtPnWR2YiR7X711cOuG-gZ-hQP-3iiO80Jd6BbOg','2024-12-02 08:08:34.999972'),('agxmy6jbqmqrx14qyg6yc9l383wwtmie','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVO5c:QMsPrMf-PYtUSwc5cHlLovbf76mSDSp3jLFdfs3tElU','2025-01-08 05:54:44.992758'),('ajl2pqu4kawco9xpn2acfl8rw4a8mefw','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tTZs7:CmXOTG3ICi3eNU6jiYc_2gyEB9rt12o5MZyT_kzezgg','2025-01-03 06:05:19.575403'),('bkl6h4l2jnghkqurlrcbkcpc3g8irm77','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tad4i:EtKeKu_NQpQhITKKDkSlIQNG2xE3brvUHcK1i9i6z9o','2025-01-22 16:55:28.478070'),('g9l5nggu21s570rbdtrdwiotgt19k52d','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tTdYx:xkkJ_U1R5sMi4fW2xlDOWPIGv6NWcr1uLW8aUbDc9YU','2025-01-03 10:01:47.128708'),('ge907dusywmzcv8skti6dbys7er5dzh6','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tHFyS:qNeIs2aL6P7cicnKtUsWYELRoIryKgeZbR0sbYDPiUI','2024-11-30 06:24:56.573619'),('gmeh885hpsg1akw4prkaf0srjrt2wzzf','.eJxVjkkOwiAUhu_C2hCGV6Au3fcM5DHZqoWkw8p4dyE2Rpf_mO9JLO7baPc1LnYK5Ey4IKdf06G_x9yScMN8LdSXvC2To61Cj3SlQwnxcTm6fwcjrmNdKyUVaMm9hMCkSApQaKVDZwyTxvepCy6BEdIguF5zcAI8U4brTlfVqL6QXHxExjnW67lxkdcbM-1AjA:1tFw71:he4K76OqNBDllEL-T8tc2hadZkrg4-u_LksoTzg_Uhk','2024-11-26 15:00:19.286970'),('h0ruhdqwb78h6z5p3s7s6503wwc9k63t','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tQ3hz:brNND_MVFVw5ssiIHcWX7tkaGIDaNiNbUA7uyb_M4DE','2024-12-24 13:08:19.322628'),('hg2r5mcrpsqbqsr47pdvqfat2v80wdes','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVtlk:gMKVo-9UkzD2VAofD4pxk0JeqHYeAmI9JL_8KNakSD8','2025-01-09 15:44:20.997414'),('lbxysi9zgj1jv0z43pmv9g1key9clkdn','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tTZwy:Eda5sRTC4Hl5F4ijuSb0wlWBGs64xJyfcCZylvQLYNI','2025-01-03 06:10:20.569594'),('lduk6ei9zoegyy1nq12wezsvkastli41','.eJxVjkkOwiAUhu_C2hCGV6Au3fcM5DHZqoWkw8p4dyE2Rpf_mO9JLO7baPc1LnYK5Ey4IKdf06G_x9yScMN8LdSXvC2To61Cj3SlQwnxcTm6fwcjrmNdKyUVaMm9hMCkSApQaKVDZwyTxvepCy6BEdIguF5zcAI8U4brTlfVqL6QXHxExjnW67lxkdcbM-1AjA:1tbccE:tp1yrc-sOBRcYQLDSvHo2zYjSxDOGSuU7hle_M7JdIM','2025-01-25 10:38:10.795625'),('mwn9wael6ag8l4127d85arn3dwho4wof','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tEk1A:VFdKY8loxm4p0AcPKUikmQY5iqlpCnp8zCUiJFHXEnQ','2024-11-23 07:53:20.429216'),('o7m35w1fkztehzd86o3mntc2rjtfjs5h','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tMX2f:5D7ciSGYk55-kHMwc_oN_kPzeCHlYq7GLCNd_hu1H7c','2024-12-14 19:39:05.553252'),('oe8t63grqmfjwq5rf0qub3xinfeiksk7','.eJxVjsEOgjAQRP-lZ0O62Frq0bvfQHa7XYtoSSh4Mf67EInR48y8mcxTtThPqZ1LHNuO1VGBUbtfkzD0Ma8JXzFfhioMeRo7qlak2tJSnQeOt9PG_g0kLGlpO7LgvLUOXSPeSlPXDJYCGS-iQYLWIuAgCtXRs_hmb_iwB9LApHl99T0J5iMy3uMy_cDcldSjer0BeoZD2w:1tbDwR:KIrhq5ZEb63Alhr5AobV4JKrlHq8fEORTIgTEfGp7iY','2025-01-24 08:17:23.151949'),('pd06f3x7vlhzugp4iyyv05j3m5ri34zp','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tVr4S:7yaRlCBtHzpnsqaDql-LjKb30V--EhxqD06eGnlw1l8','2025-01-09 12:51:28.820397'),('pjpigoerb7mypdwj6c2dxovpp3c9zapq','.eJxVjkkOwiAUhu_C2hCGV6Au3fcM5DHZqoWkw8p4dyE2Rpf_mO9JLO7baPc1LnYK5Ey4IKdf06G_x9yScMN8LdSXvC2To61Cj3SlQwnxcTm6fwcjrmNdKyUVaMm9hMCkSApQaKVDZwyTxvepCy6BEdIguF5zcAI8U4brTlfVqL6QXHxExjnW67lxkdcbM-1AjA:1tcUa6:_uiGTk1AC0U0ioV7f2sIGSgO2pDsTVrOETGe65cIJ14','2025-01-27 20:15:34.000817'),('po2oy084gkcr5tt4pt7x78o35x2hfpgs','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tMTsS:ZiOx7y7AOBmbBb1JbcIWVqeiHEZ3dAA2Oc5CYQYFR9E','2024-12-14 16:16:20.429200'),('ppgyrzzifiu1gf2kh89qd1e2izg7wbs2','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tWA7D:HjrjSqeCo24GYeTL27p90fle2ds4M3pATa2dI72_6l4','2025-01-10 09:11:35.761261'),('qp6997t94pvnwxttz19g6uqm0if1cfnc','.eJxVjEEOwiAQRe_C2pApAwx16d4zkBmgUjVtUtqV8e7apAvd_vfef6nI21rj1soSx6zOqkN1-h2F06NMO8l3nm6zTvO0LqPoXdEHbfo65_K8HO7fQeVWv7WgBTEByBvqkBEA0IZERgiMAPe2t-jYOUeZPfDQiw2FcCBPKRWr3h_DqDbW:1tEMZS:9vX-uqNwNeJEMJwZcKne0jgVuUZvaMp3R5l0Sre7X_c','2024-12-06 05:51:10.936733'),('rwzuke5jjyx5t2dx87my0u1nhu9ms52r','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tEoat:i3S2fcZUI6x6X0qYxigCiAfgSyEAeJnhyS_oOhPWLVM','2024-11-23 12:46:31.495006'),('smyn5eqs9cxdo6pmfpprohctgw7v6p8v','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tQ317:W0bDnHAX2aBBZpPlLu6nIAy09p8-lMJpNO9TYFmunJk','2024-12-24 12:24:01.279211'),('twnvsiozqdhcov5t70wrojuh5pemdg1a','.eJxVjskKwjAQht8lZwlNzNJ49N5nKJOZqalLCl0EEd_dFIvo8d8-_qdoYZlTu0w8tj2Jg1BO7H7NCHjhvCZ0hnwaJA55Hvso14rc0kk2A_H1uHX_AAmmVNZsyat95SxoJq60DTYyoPfao6sNYQCsDSqtuO4QQheNtoYIEE2kwAX6PancR2S4cUFnuD9AvN7iGUOS:1tbcJ7:O0R3hlJN0BlLrj6EqjlGdGXOKMtE0AtsKbAfLkxjwko','2025-01-25 10:18:25.708380'),('xa0s4g6wmxq3d4kfx70i9vt2fxjf7bzb','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tPzMO:4LKxS9kEQgZY15kqhzGXHabkyvu-mhv-bZ54Q_N55LU','2024-12-24 08:29:44.514944'),('xekmgg1vi369940miw4iiwppi2klv1pk','.eJxVjkkOwjAMRe-SNYrcOKlbluzhCpWdBBKGVOqwQtydVlQIln96-k_V8Tylbh7j0OWg9qpCtfs1hf0tljUJVy6XXvu-TEMWvVb0lo762Id4P2zdP0DiMS1rQQtiGqDaUIWMAIC28WSEwAhwa1uLjp1zFLgGPrdim0h4ppq8j3aBfk9W-BGFH3FBn3JIWb3eQUZBCQ:1tHIgD:j-6UY9t2Lb41UhOBqGaND5hd6xMna3AYToCQgtp50cc','2024-11-30 09:18:17.183841'),('ynvcd1sp9r8zzqpexav7izxivt1km7d1','.eJxVjskKwjAQht8lZwlNzNJ49N5nKJOZqalLCl0EEd_dFIvo8d8-_qdoYZlTu0w8tj2Jg1BO7H7NCHjhvCZ0hnwaJA55Hvso14rc0kk2A_H1uHX_AAmmVNZsyat95SxoJq60DTYyoPfao6sNYQCsDSqtuO4QQheNtoYIEE2kwAX6PancR2S4cUFnuD9AvN7iGUOS:1tdPBg:xj-W5Dip9AmFv_PAmdRigCcZQroCrsjTuDSb2IJ1Ffg','2025-01-30 08:42:08.643696');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_appointment`
--

DROP TABLE IF EXISTS `myapp_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_appointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_name` varchar(100) NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_appointment`
--

LOCK TABLES `myapp_appointment` WRITE;
/*!40000 ALTER TABLE `myapp_appointment` DISABLE KEYS */;
INSERT INTO `myapp_appointment` VALUES (1,'apple','1-2','hair','spray','pending'),(2,'hari','4-6','face','clean','completed');
/*!40000 ALTER TABLE `myapp_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_category`
--

DROP TABLE IF EXISTS `myapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_category`
--

LOCK TABLES `myapp_category` WRITE;
/*!40000 ALTER TABLE `myapp_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_service`
--

DROP TABLE IF EXISTS `myapp_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `time_required` bigint NOT NULL,
  `description` longtext,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_service`
--

LOCK TABLES `myapp_service` WRITE;
/*!40000 ALTER TABLE `myapp_service` DISABLE KEYS */;
INSERT INTO `myapp_service` VALUES (17,'haircolour','services/S1_fkkP1Ks.png',1000000,'ok',100.00),(18,'Hair Wash','services/flower_l4PCObg.jpg',3600000000,'hair',500.00),(20,'hairspa','',30000000,NULL,200.00),(21,'hairspa','',30000000,NULL,200.00);
/*!40000 ALTER TABLE `myapp_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_staff`
--

DROP TABLE IF EXISTS `myapp_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `position` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_staff`
--

LOCK TABLES `myapp_staff` WRITE;
/*!40000 ALTER TABLE `myapp_staff` DISABLE KEYS */;
INSERT INTO `myapp_staff` VALUES (2,'Sweety','21r21a05j8@mlrinstitutions.ac.in','08886482666','HR','staff_photos/F2.png'),(3,'Rahul','abc@gmail.com','88877766655','head','staff_photos/M2.png'),(4,'Nani','21r21a05j8@mlrinstitutions.ac.in','09998887776','head','staff_photos/M1.png');
/*!40000 ALTER TABLE `myapp_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_userdetails`
--

DROP TABLE IF EXISTS `myapp_userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_userdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `salon_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `pin_code` varchar(6) NOT NULL,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_userdetails`
--

LOCK TABLES `myapp_userdetails` WRITE;
/*!40000 ALTER TABLE `myapp_userdetails` DISABLE KEYS */;
INSERT INTO `myapp_userdetails` VALUES (12,'pbkdf2_sha256$870000$lrlkoXEtTYCIre6MwQjrj0$LzHKJw3HqVBt7qovDJujvUt6W0ecQfwOId77nzX1PnA=','2025-01-27 19:15:06.316970',0,'mango','man','go','21r21a05j8@mlrinstitutions.ac.in',0,1,'2024-11-20 08:48:32.014279','Mango Salon','09998887776','moosapet','Hyderabad','India','Male','500018','Telangana'),(13,'pbkdf2_sha256$870000$pT9kJQgdk1A5aV5Vhb0fPD$8vxtJvOgMJf9u/I/r7AREaFUpTkxBL+MYES/uDu0Cgg=','2025-01-24 06:32:01.724029',0,'Nidhi','sri','nidhi','srinidhi190104@gmail.com',0,1,'2024-11-20 16:37:35.118734','Nidhi_Salon','8886482666','moosapet','Hyderabad','india','Female','500018','telangana'),(14,'pbkdf2_sha256$870000$i4fSJdtr1AmGPGGkLD0yZR$d5npH3VND+aGDZlFKyM0vTXjZd+EZoMIZrDppqSkG/o=','2025-01-25 06:11:16.229053',0,'vanishka','vanishka','reddy','vanishka@gmail.com',0,1,'2024-11-22 09:25:54.235771','vicku','7013057682','moosapet','Hyderabad','India','Female','500018','Telangana'),(15,'pbkdf2_sha256$870000$qLhlHqSE6MMkNlMHOsgjR7$fRILW2fS6xr7PyAw21etq2IYHVQE1Skqfv0E8INqCw4=','2025-01-09 12:52:31.419433',0,'hari','hari','hari','hari@gmail.com',0,1,'2025-01-09 12:52:18.357985','harry','99988877765','moosapet','hyd','india','Female','500018','tel'),(16,'pbkdf2_sha256$870000$GqwNC3RY0BMkLFqfMD1Rzl$w198U41Ugkh5tEHzR6pcOWN6fr8ioMbmLMd9t5rjvqo=','2025-01-30 07:34:57.740322',0,'navya','navya','navya','21r21a05j8@mlrinstitutions.ac.in',0,1,'2025-01-25 06:21:51.139785','navya','09998887776','moosapet','Hyderabad','India','Female','500018','Telangana');
/*!40000 ALTER TABLE `myapp_userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_userdetails_groups`
--

DROP TABLE IF EXISTS `myapp_userdetails_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_userdetails_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userdetails_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myApp_userdetails_groups_userdetails_id_group_id_c4edd4a0_uniq` (`userdetails_id`,`group_id`),
  KEY `myApp_userdetails_groups_group_id_97efccca_fk_auth_group_id` (`group_id`),
  CONSTRAINT `myApp_userdetails_gr_userdetails_id_a5dcf1c4_fk_myApp_use` FOREIGN KEY (`userdetails_id`) REFERENCES `myapp_userdetails` (`id`),
  CONSTRAINT `myApp_userdetails_groups_group_id_97efccca_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_userdetails_groups`
--

LOCK TABLES `myapp_userdetails_groups` WRITE;
/*!40000 ALTER TABLE `myapp_userdetails_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_userdetails_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_userdetails_user_permissions`
--

DROP TABLE IF EXISTS `myapp_userdetails_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_userdetails_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userdetails_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myApp_userdetails_user_p_userdetails_id_permissio_4a7edffb_uniq` (`userdetails_id`,`permission_id`),
  KEY `myApp_userdetails_us_permission_id_0474e9c9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `myApp_userdetails_us_permission_id_0474e9c9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `myApp_userdetails_us_userdetails_id_447d86e3_fk_myApp_use` FOREIGN KEY (`userdetails_id`) REFERENCES `myapp_userdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_userdetails_user_permissions`
--

LOCK TABLES `myapp_userdetails_user_permissions` WRITE;
/*!40000 ALTER TABLE `myapp_userdetails_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_userdetails_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-30 15:05:17

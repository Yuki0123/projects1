-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: yuki0123.mysql.pythonanywhere-services.com    Database: yuki0123$vegetablegarden_db
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add area',7,'add_area'),(26,'Can change area',7,'change_area'),(27,'Can delete area',7,'delete_area'),(28,'Can view area',7,'view_area'),(29,'Can add vegetable',8,'add_vegetable'),(30,'Can change vegetable',8,'change_vegetable'),(31,'Can delete vegetable',8,'delete_vegetable'),(32,'Can view vegetable',8,'view_vegetable'),(33,'Can add growing crop',9,'add_growingcrop'),(34,'Can change growing crop',9,'change_growingcrop'),(35,'Can delete growing crop',9,'delete_growingcrop'),(36,'Can view growing crop',9,'view_growingcrop'),(37,'Can add field',10,'add_field'),(38,'Can change field',10,'change_field'),(39,'Can delete field',10,'delete_field'),(40,'Can view field',10,'view_field'),(41,'Can add crop management',11,'add_cropmanagement'),(42,'Can change crop management',11,'change_cropmanagement'),(43,'Can delete crop management',11,'delete_cropmanagement'),(44,'Can view crop management',11,'view_cropmanagement'),(45,'Can add reminder',12,'add_reminder'),(46,'Can change reminder',12,'change_reminder'),(47,'Can delete reminder',12,'delete_reminder'),(48,'Can view reminder',12,'view_reminder');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$M2T8ISBzUimK$J+Q+6T/v2o6Lbv+rQobhLo+ksJn/sd/we9YJYiUMYAU=','2022-09-21 09:48:02.973668',1,'sakimori','','','',1,1,'2022-06-09 16:14:07.630363');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-06-09 16:27:21.638127','1','右',1,'[{\"added\": {}}]',10,1),(2,'2022-06-09 16:27:30.488714','2','左',1,'[{\"added\": {}}]',10,1),(3,'2022-06-09 16:27:41.128582','1','右1',1,'[{\"added\": {}}]',7,1),(4,'2022-06-09 16:27:49.447149','2','右2',1,'[{\"added\": {}}]',7,1),(5,'2022-06-09 16:27:58.962480','3','右3',1,'[{\"added\": {}}]',7,1),(6,'2022-06-09 16:28:07.501624','4','右4',1,'[{\"added\": {}}]',7,1),(7,'2022-06-09 16:28:16.625874','5','右5',1,'[{\"added\": {}}]',7,1),(8,'2022-06-09 16:28:24.301786','6','右6',1,'[{\"added\": {}}]',7,1),(9,'2022-06-09 16:28:31.807963','7','左1',1,'[{\"added\": {}}]',7,1),(10,'2022-06-09 16:28:39.613625','8','左2',1,'[{\"added\": {}}]',7,1),(11,'2022-06-09 16:28:47.805532','9','左3',1,'[{\"added\": {}}]',7,1),(12,'2022-06-09 16:28:55.076134','10','左4',1,'[{\"added\": {}}]',7,1),(13,'2022-06-09 16:29:02.727070','11','左5',1,'[{\"added\": {}}]',7,1),(14,'2022-06-09 16:29:10.661183','12','左6',1,'[{\"added\": {}}]',7,1),(15,'2022-06-09 16:31:40.485733','2','キュウリ',1,'[{\"added\": {}}]',8,1),(16,'2022-06-09 16:31:47.590973','3','エダマメ',1,'[{\"added\": {}}]',8,1),(17,'2022-06-09 16:31:54.623332','4','トウモロコシ',1,'[{\"added\": {}}]',8,1),(18,'2022-06-09 16:32:01.400194','5','ズッキーニ',1,'[{\"added\": {}}]',8,1),(19,'2022-06-09 16:32:07.591316','6','スイカ',1,'[{\"added\": {}}]',8,1),(20,'2022-06-09 16:32:14.083084','7','サトイモ',1,'[{\"added\": {}}]',8,1),(21,'2022-06-09 16:32:19.966685','8','ショウガ',1,'[{\"added\": {}}]',8,1),(22,'2022-06-09 16:32:27.757506','9','ジャガイモ',1,'[{\"added\": {}}]',8,1),(23,'2022-06-09 16:32:33.306136','10','ニラ',1,'[{\"added\": {}}]',8,1),(24,'2022-06-09 16:32:41.216832','11','アスパラガス',1,'[{\"added\": {}}]',8,1),(25,'2022-06-09 16:32:50.965328','12','ニンジン',1,'[{\"added\": {}}]',8,1),(26,'2022-06-09 16:32:58.078107','13','モロヘイヤ',1,'[{\"added\": {}}]',8,1),(27,'2022-06-09 16:33:03.695318','14','オクラ',1,'[{\"added\": {}}]',8,1),(28,'2022-06-09 16:33:10.782134','15','インゲン',1,'[{\"added\": {}}]',8,1),(29,'2022-06-09 16:33:24.640044','16','玉レタス',1,'[{\"added\": {}}]',8,1),(30,'2022-06-09 16:33:31.369403','17','リーフレタス',1,'[{\"added\": {}}]',8,1),(31,'2022-06-09 16:33:39.069458','18','ホウレンソウ',1,'[{\"added\": {}}]',8,1),(32,'2022-06-09 16:33:45.288429','19','チコリ',1,'[{\"added\": {}}]',8,1),(33,'2022-06-09 16:33:52.601488','20','パースニップ',1,'[{\"added\": {}}]',8,1),(34,'2022-06-09 16:33:59.717347','21','カブ',1,'[{\"added\": {}}]',8,1),(35,'2022-06-09 16:34:07.112603','22','ゴボウ',1,'[{\"added\": {}}]',8,1),(36,'2022-06-09 16:34:14.163284','23','ナス',1,'[{\"added\": {}}]',8,1),(37,'2022-06-09 16:34:28.497367','24','ピーマン・シシトウ・パプリカ',1,'[{\"added\": {}}]',8,1),(38,'2022-06-09 16:34:34.529307','25','ダイコン',1,'[{\"added\": {}}]',8,1),(39,'2022-06-09 16:34:40.289244','26','ネギ',1,'[{\"added\": {}}]',8,1),(40,'2022-06-09 16:34:48.169553','27','ビーツ',1,'[{\"added\": {}}]',8,1),(41,'2022-06-14 08:51:31.003816','16','レタス',2,'[{\"changed\": {\"fields\": [\"\\u91ce\\u83dc\"]}}]',8,1),(42,'2022-06-14 10:49:27.027355','3','根本さんから借りている場所',1,'[{\"added\": {}}]',10,1),(43,'2022-06-14 10:50:36.834834','13','根本さんから借りている場所',1,'[{\"added\": {}}]',7,1),(44,'2022-06-14 11:02:01.814168','4','番外編',1,'[{\"added\": {}}]',10,1),(45,'2022-06-14 11:02:18.249915','14','番外編',1,'[{\"added\": {}}]',7,1),(46,'2022-06-14 11:06:54.036471','36','キャベツ',1,'[{\"added\": {}}]',8,1),(47,'2022-06-14 11:07:27.234727','37','イチゴ',1,'[{\"added\": {}}]',8,1),(48,'2022-07-04 13:52:57.033947','38','クウシンサイ',1,'[{\"added\": {}}]',8,1),(49,'2022-07-16 08:38:39.267429','15','育苗エリア',1,'[{\"added\": {}}]',7,1),(50,'2022-08-04 04:58:21.538578','40','ニンジン',1,'[{\"added\": {}}]',8,1),(51,'2022-08-15 08:39:07.940786','41','白菜',1,'[{\"added\": {}}]',8,1),(52,'2022-09-21 09:51:35.277635','42','サフラン',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'vegetablegarden','area'),(11,'vegetablegarden','cropmanagement'),(10,'vegetablegarden','field'),(9,'vegetablegarden','growingcrop'),(12,'vegetablegarden','reminder'),(8,'vegetablegarden','vegetable');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-06-09 16:06:29.265164'),(2,'auth','0001_initial','2022-06-09 16:09:18.249371'),(3,'admin','0001_initial','2022-06-09 16:09:58.111807'),(4,'admin','0002_logentry_remove_auto_add','2022-06-09 16:09:58.349289'),(5,'admin','0003_logentry_add_action_flag_choices','2022-06-09 16:09:58.365647'),(6,'contenttypes','0002_remove_content_type_name','2022-06-09 16:09:58.561164'),(7,'auth','0002_alter_permission_name_max_length','2022-06-09 16:09:58.700448'),(8,'auth','0003_alter_user_email_max_length','2022-06-09 16:09:58.837972'),(9,'auth','0004_alter_user_username_opts','2022-06-09 16:09:58.853813'),(10,'auth','0005_alter_user_last_login_null','2022-06-09 16:09:58.953121'),(11,'auth','0006_require_contenttypes_0002','2022-06-09 16:09:58.969047'),(12,'auth','0007_alter_validators_add_error_messages','2022-06-09 16:09:58.988393'),(13,'auth','0008_alter_user_username_max_length','2022-06-09 16:09:59.118536'),(14,'auth','0009_alter_user_last_name_max_length','2022-06-09 16:09:59.229151'),(15,'auth','0010_alter_group_name_max_length','2022-06-09 16:09:59.362359'),(16,'auth','0011_update_proxy_permissions','2022-06-09 16:09:59.397246'),(17,'sessions','0001_initial','2022-06-09 16:10:16.249197'),(18,'vegetablegarden','0001_initial','2022-06-09 16:13:07.876896'),(19,'vegetablegarden','0002_cropmanagement_image','2022-06-14 04:01:20.488329'),(20,'vegetablegarden','0003_reminder','2022-07-30 09:18:29.633827');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2umpyzhb5fk1pgod0fxd71h4nab7pdzx','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-08-29 08:37:21.402844'),('3r2r7goj7u173xe75uywz9zxf3ib11jt','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-06-29 04:12:45.746077'),('cj1d285hus70dv509r2095oodtxcvetj','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-10-05 09:48:02.998666'),('cr89yzdm0o5n0mh5vriuuve2l38gd5fz','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-07-17 23:21:22.629134'),('deukmkc29mlvy50gobhactwf2088c74y','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-08-09 00:00:27.930122'),('fg9697n55w2amz6y7vxfnbcdgztbsx8w','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-08-17 18:57:10.124487'),('fws3qboxv72dzdt5hsyldb5ouqdz29pp','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-08-02 02:31:09.151682'),('i6op0dviiem4o87y32bmkdb3bqoci0nd','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-06-28 04:29:53.163488'),('mgzngf8fdggylv11u0twc6fppbimuk7e','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-10-05 03:08:57.511894'),('nlxdkq7w2gz0yq23kmm1gmxlx07juwyc','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-09-17 06:38:15.425121'),('qrfblfdkb144rzplnq04iyebor2cgdcm','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-09-17 06:38:15.321478'),('sglneu8lsavqz7cjtr5qx9hk3kqisj5d','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-09-02 03:19:19.781352'),('sw6pnwn8g1umawf3b4kf74n7gzowe9tk','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-07-17 23:18:59.074984'),('xkf0z6npxxoxeq745won5r8xa4rn95q8','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-09-18 04:13:27.842857'),('zchk3god18ff4yd76rkwcy06hpde8cj8','YWNkYzMyNTI4NGM4ZWFmMGEwZmNmNThhMTA2YjhlYjM5MDdjM2M2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkwNTZlNWFjMjhlZjY3YjYxYzgwYzU3MmY1NzEzODU4ZGUwZWIyIn0=','2022-06-28 13:08:16.263560');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_area`
--

DROP TABLE IF EXISTS `vegetablegarden_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `field_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_area_field_id_c09f6711_fk_vegetable` (`field_id`),
  KEY `vegetablegarden_area_user_id_07a4f2bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `vegetablegarden_area_field_id_c09f6711_fk_vegetable` FOREIGN KEY (`field_id`) REFERENCES `vegetablegarden_field` (`id`),
  CONSTRAINT `vegetablegarden_area_user_id_07a4f2bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_area`
--

LOCK TABLES `vegetablegarden_area` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_area` DISABLE KEYS */;
INSERT INTO `vegetablegarden_area` VALUES (1,'右1',1,1),(2,'右2',1,1),(3,'右3',1,1),(4,'右4',1,1),(5,'右5',1,1),(6,'右6',1,1),(7,'左1',2,1),(8,'左2',2,1),(9,'左3',2,1),(10,'左4',2,1),(11,'左5',2,1),(12,'左6',2,1),(13,'根本さんから借りている場所',3,1),(14,'番外編',4,1),(15,'育苗エリア',4,1);
/*!40000 ALTER TABLE `vegetablegarden_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_cropmanagement`
--

DROP TABLE IF EXISTS `vegetablegarden_cropmanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_cropmanagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` longtext,
  `date` date DEFAULT NULL,
  `growing_crop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_crop_growing_crop_id_c3a60389_fk_vegetable` (`growing_crop_id`),
  KEY `vegetablegarden_cropmanagement_user_id_6e1020a0_fk_auth_user_id` (`user_id`),
  CONSTRAINT `vegetablegarden_crop_growing_crop_id_c3a60389_fk_vegetable` FOREIGN KEY (`growing_crop_id`) REFERENCES `vegetablegarden_growingcrop` (`id`),
  CONSTRAINT `vegetablegarden_cropmanagement_user_id_6e1020a0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_cropmanagement`
--

LOCK TABLES `vegetablegarden_cropmanagement` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_cropmanagement` DISABLE KEYS */;
INSERT INTO `vegetablegarden_cropmanagement` VALUES (1,'種まき','4条×6か所　3粒ずつ点まき\r\n覆いをかけて日よけ、暑さ対策を行って栽培してみる。\r\n\r\n収穫24本できますように。','2022-06-05',3,1,''),(2,'脇芽取り','脇芽取りをおこなった','2022-06-04',8,1,NULL),(3,'脇芽取り','脇芽取りをおこなった。','2022-06-08',7,1,NULL),(4,'収穫','9個収穫','2022-06-04',10,1,NULL),(5,'発芽','発芽を確認','2022-06-01',12,1,NULL),(6,'植付け','植付を行った','2022-06-03',17,1,NULL),(7,'発芽が出揃う','全ての発芽を確認','2022-06-01',23,1,NULL),(8,'植付け','畝1　種芋3+親芋12 畝2　種芋16 畝3　種芋16 計　47個','2022-03-24',23,1,NULL),(9,'植付け','大身ショウガ19～20個×2畝','2022-03-24',24,1,NULL),(10,'発芽','最初の発芽を確認','2022-06-04',24,1,NULL),(11,'発芽','インカのめざめが発芽','2022-03-17',25,1,NULL),(12,'芽かき・追肥・土寄せ','芽かきをして3本にした。 追肥と土寄せをおこなった。','2022-04-11',25,1,NULL),(13,'発芽','メークインが発芽','2022-03-17',26,1,NULL),(14,'芽かき・追肥','芽かきをして3本残した。 追肥と土寄せをおこなった。','2022-04-11',26,1,NULL),(15,'発芽','発芽が出揃ったことを確認','2022-06-10',3,1,NULL),(16,'葉の変色','葉の変色が気になる。','2022-06-10',17,1,'vegetablegarden/PXL_20220610_020248561.MP.jpg'),(17,'間引き','3本⇒2本に間引き。\r\n芽がヒョロっとしていたので、覆いを一時的に外した。','2022-06-13',3,1,''),(18,'種まき','種まきをおこなった。','2022-06-08',20,1,''),(19,'発芽','芽が出揃ったことを確認。','2022-06-13',20,1,''),(20,'収穫','','2022-06-13',25,1,''),(21,'収穫','','2022-06-13',26,1,''),(22,'植付け','インカのめざめ22個\r\nマルチで栽培','2022-02-24',25,1,'vegetablegarden/2022春夏_左5.png'),(23,'植付け','メークイン21個','2022-02-24',26,1,'vegetablegarden/2022春夏_左6.png'),(24,'追肥','追肥をおこなった。','2022-03-09',1,1,''),(25,'植付','植付をおこなった。','2022-02-28',2,1,''),(26,'間引き','3㎝間隔に間引き','2022-04-11',28,1,''),(27,'植付','植付をおこなった。','2022-04-14',29,1,'vegetablegarden/2022春夏_右2.png'),(28,'植付け','キタアカリ43個','2022-02-27',25,1,''),(29,'発芽','キタアカリが発芽','2022-03-23',25,1,''),(30,'植付け','男爵43個','2022-02-27',26,1,''),(31,'発芽','男爵が発芽','2022-03-23',26,1,''),(32,'種まき','大豆　130　7畝\r\n小豆　44　2.5畝\r\n黒豆　40　2.5畝\r\n\r\n1回目追肥予定　5/21\r\n2回目追肥予定　花が咲いたら　30ｇ','2022-04-14',30,1,''),(33,'植付け','紅はるか　2畝　30本\r\nベニアズマ　1畝　20本','2022-05-06',31,1,''),(34,'植付','種芋5個植え付け','2022-03-17',32,1,''),(35,'植付け','種芋9個植え付け','2022-03-31',33,1,''),(36,'植付','2年生のタネイモ7個植え付け','2022-03-31',36,1,''),(37,'発芽','芽が出揃ったのを確認。','2022-06-13',36,1,'vegetablegarden/PXL_20220616_014029839.jpg'),(38,'種まき','種まきをおこなった。\r\n収穫の目安が130日前後なので、8月18日が収穫予定。','2022-04-08',13,1,''),(39,'追肥','追肥をおこなった','2022-03-31',1,1,''),(40,'追肥','1回目追肥\r\n次回は5/12を予定','2022-04-12',2,1,''),(41,'追肥','','2022-05-10',34,1,''),(42,'追肥予定','次回の追肥は5/19','2022-04-19',18,1,''),(43,'追肥','追肥をおこなった\r\n\r\n次回追肥予定 5/30','2022-04-30',32,1,''),(44,'追肥','追肥をおこなった\r\n\r\n次回追肥予定 5/30','2022-04-30',33,1,''),(45,'追加植え付け','芽が出なかった箇所に4株追加で植え付け\r\n\r\n品種：バイトル','2022-05-02',2,1,''),(46,'種まき','パクチーの種まき','2022-05-10',14,1,''),(47,'追肥','追肥をおこなった\r\n\r\n次回追肥予定　6/29','2022-05-18',33,1,''),(48,'追肥','追肥をおこなった\r\n\r\n次回追肥予定 6/29','2022-05-18',32,1,''),(49,'追肥','追肥をおこなった。次回追肥予定 6/20。','2022-06-06',6,1,''),(50,'追肥','追肥をおこなった　3g\r\n次回追肥予定　6/12','2022-05-29',9,1,''),(51,'摘芯','摘芯をおこなった','2022-06-01',15,1,''),(52,'追肥','追肥をおこなった\r\n次回予定　6/15','2022-06-01',17,1,''),(53,'摘芯・追肥','摘芯と追肥をおこなった','2022-06-04',15,1,''),(54,'追肥','追肥をおこなった　3g 次回追肥予定　6/12','2022-05-29',29,1,''),(55,'枝の管理','下葉が混み合っていたので、葉を落として脇芽取り。\r\n葉が変色していものがあったので、去年と同じ灰色かび病でないとよいが。\r\n写真はイエローアイコ。','2022-06-16',7,1,'vegetablegarden/PXL_20220616_035821696.jpg'),(56,'枝の管理','整枝と脇芽取りをおこなった。\r\n1株アブラムシがかなり繁殖していたので、入念に元気丸を吹きかけた。','2022-06-16',8,1,''),(57,'虫よけネットを外した','だいぶ大きくなっていたので、虫よけネットを外した。','2022-06-16',15,1,''),(58,'追肥','追肥をおこなった。','2022-06-16',18,1,''),(59,'追肥','追肥をおこなった。','2022-06-16',19,1,''),(60,'小玉スイカ第1弾 受粉','小玉スイカ第1弾、子づる2つ目の雌花に人工授粉しようとしたら、先客のミツバチがいたので遠慮した。\r\n人工授粉？ハチ授粉？結果は40日後の6/25。','2022-06-16',19,1,''),(61,'追肥・初収穫','追肥をおこなった。\r\n雨で2日畑に来られなかったら、巨大化していた。\r\nミニキュウリ以外は初収穫。巨大キュウリ2本。','2022-06-16',17,1,''),(62,'植付','キュウリ第2弾、普通のキュウリ5本の植え付けをおこなった。','2022-06-16',39,1,''),(63,'混植していたベビーリーフの除去','混みあっていたので育ちすぎたベビーリーフを除去した。','2022-06-16',13,1,''),(64,'消毒','葉の変色が増えていたので、ダコニール1000を1000倍希釈(水4L：薬剤4ml)を散布。\r\n昨年の灰色カビ病のトラウマがあるので、やむを得ず薬剤散布をしたが間に合ったか心配。','2022-06-17',8,1,''),(65,'消毒','葉の変色が増えていたので、ダコニール1000を1000倍希釈(水4L：薬剤4ml)を散布。\r\n昨年の灰色カビ病のトラウマがあるので、やむを得ず薬剤散布をしたが間に合ったか心配。','2022-06-17',7,1,'vegetablegarden/PXL_20220620_014923094_UVmazJx.jpg'),(66,'間引き','1回目の間引きをおこなった。\r\n1㎝~3㎝間隔に間引いた。\r\n\r\nコカブが小さく黒い甲虫に食われているが調べたら「ダイコンハムシ」らしい。\r\nルッコラが有効？','2022-06-17',27,1,''),(67,'種まき','ニンジン、コカブ、小ネギを混植で種まきをおこなった。','2022-06-05',27,1,'vegetablegarden/2022春夏_右6.png'),(68,'ピーマン初収穫','ピーマン2個初収穫。\r\nシシトウも収穫。','2022-06-17',9,1,''),(69,'収穫開始','甘くて美味しい！大きさもなかなかで、期待以上。','2022-05-11',37,1,'vegetablegarden/PXL_20220511_034642604.jpg'),(70,'追肥','花が咲いたので黒豆、小豆に追肥をおこなった。30g/㎡\r\n畝間通路の草刈りをした。','2022-06-18',30,1,''),(71,'追加の種まき','2か所虫にやられて芽がなくなってしまったので、追加の種まきをおこなった。1か所につき4穴×3粒。','2022-06-16',12,1,''),(72,'病気の葉の除去','昨日より病気らしき部分が拡がっていたので、除去。','2022-06-18',8,1,''),(73,'病気の葉の除去','昨日より病気らしき部分が拡がっていたので、除去。','2022-06-18',7,1,''),(74,'追肥','追肥をおこなった。30g/㎡','2022-06-20',21,1,'vegetablegarden/PXL_20220616_070035149.MP_owqZ9Xq.jpg'),(75,'追肥','追肥をおこなった。30g/㎡','2022-06-20',22,1,''),(76,'実が付き始めた','実がいくつも付いている。\r\n摘果の必要あり？','2022-06-20',35,1,'vegetablegarden/PXL_20220620_045844236.jpg'),(77,'混植の春菊が開花','黄色い花でした。','2022-06-20',2,1,'vegetablegarden/PXL_20220620_015639048.jpg'),(78,'間引き','双葉が成長したので、1箇所につき2本に間引きをした。\r\n中耕し、軽く土寄せもおこなった。','2022-06-20',20,1,'vegetablegarden/PXL_20220620_043654476.jpg'),(79,'下葉、中葉落とし','病気の葉の除去を兼ねて、下葉、中葉を落として風通しを良くした。\r\n前回使って半分残っていたダコニールを散布。','2022-06-20',7,1,''),(80,'下葉、中葉落とし','病気の葉の除去を兼ねて、下葉、中葉を落として風通しを良くした。\r\n前回使って半分残っていたダコニールを散布。','2022-06-20',8,1,''),(81,'追肥','マルチを上げて畝の肩に肥料をあげた。30g/㎡、次回は2週間後7/5予定。','2022-06-21',7,1,''),(82,'追肥','30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',8,1,''),(83,'支柱たて・追肥','3本仕立てにして余計な脇芽を取り除いた。\r\n30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',29,1,''),(84,'追肥','30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',9,1,''),(85,'追肥','軽く追肥した。','2022-06-21',20,1,''),(86,'追肥','軽く追肥した。\r\n実が腐って落ちるものがあり、成長がいまいち？\r\n風通しを良くするため、下葉をかなり落とした。花弁が袋状になっているので、水が溜まって腐りやすくなるので、取り除いた。','2022-06-21',18,1,''),(87,'大玉スイカ受粉','子づるに3本に2つ目の雌花がついていたので、受粉。\r\n花が咲いたのかよくわからない状態だったので受粉できているかどうか…。\r\nうまくいっていたら40日後の7/31に収穫予定。','2022-06-21',19,1,'vegetablegarden/PXL_20220621_045055677.MP_x9eSAU7.jpg'),(88,'2回目の間引き、追肥','2本⇒1本にした。\r\n追肥と土寄せもおこなった。\r\n次回追肥は2週間後7/7予定。','2022-06-23',3,1,''),(89,'追加の種まきが発芽','追加で種まきした2か所が発芽。','2022-06-23',12,1,''),(90,'中葉落とし','内向きに生えている茎や葉を落として風通しを良くした。','2022-06-23',9,1,''),(91,'追肥','30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',4,1,''),(92,'追肥','30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',6,1,''),(93,'追肥','30g/㎡の肥料をあげた。次回は2週間後7/5予定。','2022-06-21',5,1,''),(94,'初収穫','まだ大きくなりそうだったが、若どりで初収穫。','2022-06-23',6,1,''),(95,'種まき','2粒ずつ9か所に種まきをおこなった。\r\n株間は30㎝。','2022-05-06',6,1,''),(96,'小玉スイカに新たな雌花','先発の小玉スイカに新たに2つ雌花があった。\r\n受粉。。。したかな？残り1つるで子づるに4個。\r\nつるの整理もおこなった。','2022-06-24',19,1,''),(97,'収穫完了','ホウレンソウの育ちがいまいちになってしまったので、収穫完了した。\r\n外側の葉が黄色かったり、根元が腐りかけていた。','2022-06-23',14,1,''),(98,'畝間の雑草取り','雑草取りをおこなった。','2022-06-24',31,1,''),(99,'小玉スイカ摘芯','植え直した小玉スイカ2株を7節目の上で摘芯。','2022-06-24',19,1,''),(100,'大玉1つ再受粉、小玉2つ受粉','前回の大玉1つがうまく受粉できていなかったようなので、再度受粉。\r\n小玉2つも受粉をおこなった。うまくいけば8/6収穫予定。','2022-06-27',19,1,''),(101,'受粉','雌花が3本ほど出ていたので、受粉をおこなった。\r\n20～30日後が収穫適期なので、7/17頃から収穫開始かな。','2022-06-27',22,1,''),(102,'水やり','豆が大きくなる時期に水がないとよく育たないとのことで、水やりをおこなった。','2022-06-28',15,1,''),(103,'水やり','豆が大きくなる時期に水がないとよく育たないとのことで、水やりをおこなった。','2022-06-28',21,1,''),(104,'間引き','西側1畝だけニンジンを3㎝間隔、コカブを6㎝間隔に間引き。暑くて作業がはかどらない。','2022-06-28',27,1,''),(105,'支柱たて','獣除けネットを張るための支柱を立てた。全部で12本、2畝の周りをぐるっと囲む。','2022-06-28',22,1,''),(106,'間引き・土寄せ','東側の畝に加えて前回行った西側の畝も間引き・土寄せ','2022-07-02',27,1,''),(107,'獣除けネット張り','実がだいぶ大きくなってきたので、獣除けのネット張りをおこなった。','2022-07-02',22,1,''),(108,'追肥','追肥をおこなった。\r\n次回は2週間後の7/14。','2022-06-30',9,1,''),(109,'追肥','追肥をおこなった。\r\n次回は2週間後の7/14。','2022-06-30',17,1,''),(110,'追肥','追肥をおこなった。\r\n次回は2週間後の7/14。','2022-06-30',18,1,''),(111,'追肥','追肥をおこなった。\r\n次回は2週間後の7/14。','2022-06-30',29,1,''),(112,'受粉に成功した実の保護','受粉に成功して大きくなっているものが、大玉1つ、小玉１つあったので保護ネットを設置。\r\n受粉に成功した実は自然に受粉したもので、先日人工授粉したものは軒並み失敗。収穫は40日後の8/10前後かな。\r\nまた、柵周辺を獣除けネットで覆った。','2022-07-01',19,1,''),(113,'初収穫','やっとまとめて収穫できるまでになりました。','2022-07-04',7,1,'vegetablegarden/PXL_20220704_011622616.jpg'),(114,'初収穫','収穫がはじまりました。','2022-07-04',8,1,''),(115,'収穫完了','リーフレタスの収穫を完了した。','2022-07-01',14,1,''),(116,'種まき','条間25㎝2条、5~10おきに種まきをおこなった。\r\nサイドのパクチーはそのまま。','2022-07-04',40,1,''),(117,'種まき(リーフレタス、水菜)','条間25㎝5条のうち4条をリーフレタス、1条余ったのでミズナの種をまいた。','2022-07-04',41,1,''),(118,'初収穫','小さめサイズだったが、後発の実を大きくしたいので3個収穫。重さ2.5kg〜3kg。','2022-07-01',35,1,'vegetablegarden/PXL_20220701_021908230.MP.jpg'),(119,'初収穫','1本だけ収穫。植え付けから収穫まで2か月！','2022-07-04',5,1,''),(120,'植え付け','普通×2、カラフル、ジャンボ　4本の植え付けをおこなった。','2022-05-02',5,1,''),(121,'初収穫','初収穫をおこなった。','2022-07-04',4,1,''),(122,'追肥','追肥をおこなった。\r\n\r\n次回予定7/18(2週間後)','2022-07-04',32,1,''),(123,'追肥','追肥をおこなった。\r\n\r\n次回予定7/18(2週間後)','2022-07-04',35,1,''),(124,'追肥','追肥をおこなった。\r\n\r\n次回予定7/18(2週間後)','2022-07-04',33,1,''),(125,'追肥','追肥をおこなった。\r\n\r\n次回予定7/18(2週間後)','2022-07-04',34,1,''),(126,'植付け','植付けをおこなった。','2022-04-19',7,1,''),(127,'収穫','収穫第１段。40株ほど？半分ほど収穫。','2022-07-08',15,1,''),(128,'発芽','発芽を確認','2022-07-07',41,1,''),(129,'発芽','発芽を確認','2022-07-08',40,1,'vegetablegarden/PXL_20220708_012550822.jpg'),(130,'追肥','追肥を行った。次回は2週間後の7/26。','2022-07-12',19,1,''),(131,'初収穫','3本収穫してみた。','2022-07-12',22,1,''),(132,'種まき','3条。条間、株間とも25～30㎝間隔に種まき。\r\n種まきの前日に畝に水やりをしておくとあったが、当日の炎天下だったのでだいぶ暑かった。\r\n発芽するかな？\r\n収穫開始予定は55日後～','2022-07-11',42,1,''),(133,'発芽','発芽が出揃ったのを確認','2022-07-14',42,1,''),(134,'種まき','ポットに4粒ずつ、13個作った。\r\n本葉5~6枚の頃に植え付けを行う予定。\r\n収穫は11月上旬(頂花蕾)～翌年2月。','2022-07-14',43,1,''),(135,'獣害(ToT)','かなりの被害。\r\nゲートにしていたところから入られてしまったっぽい…。\r\nそろそろ収穫だと思っていた矢先。','2022-07-16',22,1,''),(136,'緑、黄色が終了','整枝中に折れてしまった。\r\nよく見ると株が腐っていた。','2022-07-10',18,1,''),(137,'移植','左5エリアに移植。\r\nリーキ等と栽培管理を合わせるため、収穫完了とする。','2022-07-14',16,1,''),(138,'移植','苗床から移植をおこなった。移植直後に3日ほど大雨にやられたが、無事に育ってほしい。\r\n敷きワラには今回、試しに茅を使用してみた。\r\n奥からリーキ役120本、下仁田ネギ？本、一本ネギ120本。','2022-07-14',28,1,'vegetablegarden/PXL_20220715_022605912.MP_9VZBJiz.jpg'),(139,'種まき','リーキと小ネギを畝に半分ずつ種まきをおこなった。','2022-03-09',28,1,''),(140,'獣害2','ほとんど食われてしまったので、栽培終了。','2022-07-17',22,1,''),(141,'収穫完了','全ての収穫をかんりょうした。','2022-07-17',15,1,''),(142,'発芽の確認','発芽が出揃ったことを確認。\r\n間引きをおこなった⇒2本。','2022-07-17',43,1,''),(143,'種まき','ポット3つに種まきをおこなった。\r\n深さ1センチ、1～2個。','2022-07-21',44,1,''),(144,'発芽','全てのポットで発芽が出揃ったことを確認。\r\n夏なので発芽が早い！！','2022-07-25',44,1,''),(145,'収穫完了','少し硬くなってしまっていたが、すべて収穫した。','2022-07-25',21,1,''),(146,'追肥','追肥をおこなった。\r\n次回は2週間後の7/30予定。','2022-07-17',9,1,''),(147,'追肥','追肥をおこなった。\r\n次回は2週間後の7/30予定。','2022-07-17',29,1,''),(148,'追肥','追肥をおこなった。\r\n次回は2週間後の7/30予定。','2022-07-17',5,1,''),(149,'追肥','追肥をおこなった。\r\n次回は2週間後の7/30予定。','2022-07-17',27,1,''),(150,'コカブを抜く','虫に食われて成長もよくなかったコカブをすべて引き抜いた。\r\n夏の株の栽培は難しい。ニンジンに土寄せをした。','2022-07-25',27,1,''),(151,'リーフレタス栽培終了','発芽はしたが、暑さと感想のせいかほとんど育たず消えてしまった。\r\n水菜だけかろうじて生き残っているのでこのまま様子見。','2022-07-25',41,1,''),(152,'追肥','次回は2週間後8/6','2022-07-23',17,1,''),(153,'追肥','追肥をおこなった。','2022-07-30',35,1,''),(155,'栽培完了','葉が虫に食われたりなどして育たないので、栽培終了。','2022-07-31',3,1,''),(156,'追肥','追肥をおこなった。','2022-07-17',4,1,''),(157,'追肥','マルチを上げて畝の肩に追肥をおこなった。','2022-07-28',7,1,''),(158,'追肥','追肥をおこなった。','2022-07-17',6,1,''),(159,'追肥','追肥をおこなった。','2022-07-23',38,1,''),(160,'黄色小玉スイカの収穫','','2022-07-19',19,1,''),(161,'追肥','追肥をおこなった。','2022-07-23',19,1,''),(162,'追肥・土寄せ','','2022-07-06',20,1,''),(163,'収穫','親づるになっていた1番果を収穫。\r\n次の実がたくさんつくことを願って。','2022-07-06',34,1,''),(164,'再度種まき','ネットの隙間からカメムシに入られて葉をほとんど食われてしまった。\r\n再度種まきを行う。','2022-07-30',43,1,''),(165,'再度種まきの発芽を確認','すべてのポットで発芽していた。','2022-08-01',43,1,''),(166,'種まき','畝巾70㎝、2条まき(左右から20㎝ずつ)で種まきをおこなった。\r\n品種：新黒田五寸　数量：3袋\r\n収穫開始は80日後、10月上旬？','2022-08-04',45,1,''),(167,'種まき','','2022-04-26',38,1,''),(168,'発芽','発芽を確認','2022-08-10',45,1,''),(169,'植え付け','植え付けをおこなった。育苗エリア⇒番外編に変更。','2022-08-04',44,1,''),(170,'追肥','追肥をおこなった。','2022-08-11',39,1,''),(171,'種まき','種まきをおこなった。新聞紙で作った小さなポット60個に1粒ずつ種をまいた。','2022-08-15',46,1,''),(172,'種まき','40ポットに種まきをおこなった。','2022-08-20',47,1,''),(173,'発芽','発芽を確認','2022-08-23',47,1,''),(174,'5株を移植','発育の良かった5株が本葉4~5枚になったので、3Lエリアに移植した。','2022-08-23',43,1,''),(175,'追肥','追肥をおこなった。','2022-08-22',44,1,''),(176,'追肥','追肥をおこなった。','2022-08-22',7,1,''),(177,'収穫','根元から5㎝を残して収穫。花ニラもたくさん収穫できた。','2022-08-22',1,1,''),(178,'収穫','5本ほど収穫してみた。','2022-08-22',2,1,''),(179,'収穫開始','本格的な収穫が開始。去年より少し遅いような？','2022-08-11',40,1,''),(180,'種まき','袋栽培で1袋あたり4箇所✕６の種まきをした。','2022-05-27',12,1,''),(181,'植え付け','新聞紙ポットでの生育に不安があったため、右4エリアに植え付け。','2022-09-04',47,1,''),(182,'植え付け','葉が黄色くなってきて肥料不足を疑い液肥を散布。\r\n改善があまり見られないようなので、小さめの本葉2枚と少し早めだが右4エリアに植え付けをおこなった。\r\n根はポットからはみ出すぐらい伸びていた。','2022-09-04',46,1,''),(183,'土作り','馬糞堆肥を入れて耕した。','2022-08-07',46,1,''),(184,'苦土石灰を投入','苦土石灰を入れて耕した。','2022-08-13',46,1,''),(185,'種まき','種まきをおこなった。\r\n南側：たくあんダイコン42本\r\n北側：総太り42本','2022-09-01',49,1,''),(186,'発芽を確認','','2022-09-04',49,1,''),(187,'間引き','2本に間引きをした。','2022-09-05',49,1,''),(188,'掘り上げて軟白栽培開始','根が全然太っておらず(１cm程度、２cmを目標としていた。)掘り上げるタイミングを掴みかねていたが、意を決して掘り上げ、根元1/3、株元２㎝を残してカットして培養土に植え付けて軟白栽培を開始した。\r\nダメ元…。','2022-09-05',38,1,''),(189,'収穫開始','いぼいぼが多くて細くて長い品種のようだ。','2022-09-06',44,1,''),(190,'追肥','追肥をおこなった。','2022-09-05',44,1,''),(191,'植付け','普通のキャベツ20、タケノコキャベツ3の植え付けをおこなった。\r\n直まきしたが種が良くなかったのか発芽せず。','2022-09-14',50,1,''),(192,'間引きと追肥','２→１に間引き、株元に追肥をした。','2022-09-20',47,1,''),(193,'間引きと追肥','２→１に間引いて追肥をおこなった。','2022-09-16',46,1,''),(194,'種まき','種まきをおこなった。','2022-09-21',51,1,''),(195,'種まき','種まきをおこなった','2022-09-21',52,1,''),(196,'間引き','1本に間引きした','2022-09-14',49,1,''),(197,'種まき','種まきをおこなった','2022-09-21',54,1,''),(198,'2回目の追肥と土寄せ','1回目から1か月経っていないので少し早いが、成長が良いので土寄せをおこなった。','2022-09-14',28,1,''),(199,'1回目の追肥と土寄せ','','2022-08-25',28,1,''),(200,'種まき','','2022-08-23',48,1,''),(201,'追肥','追肥をおこなった。\r\n何本かイモムシにやられてしまっていた。','2022-09-21',48,1,''),(202,'2回目の間引き、追肥、土寄せ','10㎝間隔に間引き後、追肥と土寄せをおこなった。','2022-09-16',45,1,''),(203,'ベビーキャロットの種まき','芽が出なかったところにベビーキャロットの種まきをおこなった。','2022-09-15',45,1,''),(204,'ベビーキャロットの発芽を確認','','2022-09-21',45,1,'');
/*!40000 ALTER TABLE `vegetablegarden_cropmanagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_field`
--

DROP TABLE IF EXISTS `vegetablegarden_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_field_user_id_d5d6887d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `vegetablegarden_field_user_id_d5d6887d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_field`
--

LOCK TABLES `vegetablegarden_field` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_field` DISABLE KEYS */;
INSERT INTO `vegetablegarden_field` VALUES (1,'右',1),(2,'左',1),(3,'根本さんから借りている場所',1),(4,'番外編',1);
/*!40000 ALTER TABLE `vegetablegarden_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_growingcrop`
--

DROP TABLE IF EXISTS `vegetablegarden_growingcrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_growingcrop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variety` varchar(255) DEFAULT NULL,
  `seeding_date` date DEFAULT NULL,
  `planting_date` date DEFAULT NULL,
  `transplanting_date` date DEFAULT NULL,
  `harvest_date_start` date DEFAULT NULL,
  `harvest_date_end` date DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vegetable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_grow_area_id_0ec2924a_fk_vegetable` (`area_id`),
  KEY `vegetablegarden_growingcrop_user_id_de988444_fk_auth_user_id` (`user_id`),
  KEY `vegetablegarden_grow_vegetable_id_eff62b00_fk_vegetable` (`vegetable_id`),
  CONSTRAINT `vegetablegarden_grow_area_id_0ec2924a_fk_vegetable` FOREIGN KEY (`area_id`) REFERENCES `vegetablegarden_area` (`id`),
  CONSTRAINT `vegetablegarden_grow_vegetable_id_eff62b00_fk_vegetable` FOREIGN KEY (`vegetable_id`) REFERENCES `vegetablegarden_vegetable` (`id`),
  CONSTRAINT `vegetablegarden_growingcrop_user_id_de988444_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_growingcrop`
--

LOCK TABLES `vegetablegarden_growingcrop` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_growingcrop` DISABLE KEYS */;
INSERT INTO `vegetablegarden_growingcrop` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,10),(2,'パクチー・春菊と混植',NULL,'2022-02-28',NULL,NULL,NULL,1,1,11),(3,'春ゆたか、あやめっ娘','2022-06-05',NULL,NULL,NULL,'2022-07-31',1,1,25),(4,NULL,NULL,NULL,NULL,NULL,NULL,2,1,13),(5,'普通×2、カラフル、ジャンボ　4本',NULL,'2022-05-02',NULL,NULL,NULL,2,1,14),(6,'ツルなしインゲン','2022-05-06',NULL,NULL,'2022-06-23','2022-08-22',2,1,15),(7,'ミニトマト・中玉トマト',NULL,'2022-04-19',NULL,'2022-07-04',NULL,2,1,1),(8,'大玉トマト',NULL,NULL,NULL,'2022-07-04','2022-08-22',2,1,1),(9,'カラーピーマン・スイートピーマン・シシトウ×2',NULL,'2022-04-19',NULL,'2022-06-17',NULL,2,1,24),(10,'玉レタス',NULL,'2022-04-11',NULL,NULL,'2022-06-17',3,1,16),(11,'リーフレタス',NULL,NULL,'2022-04-11',NULL,'2022-06-18',3,1,16),(12,NULL,NULL,NULL,NULL,NULL,NULL,6,1,22),(13,NULL,'2022-04-08',NULL,NULL,NULL,'2022-08-11',6,1,20),(14,'コマツナ・リーフレタス・パクチーと混植','2022-04-21',NULL,NULL,NULL,'2022-07-01',5,1,18),(15,'湯あがり娘','2022-04-11',NULL,NULL,'2022-07-08','2022-07-17',7,1,3),(16,'下仁田ネギ',NULL,'2022-03-31','2022-07-14',NULL,'2022-07-14',7,1,26),(17,'ミニキュウリ×2、いぼキュウリ×1、普通のキュウリ×1',NULL,'2022-04-19',NULL,NULL,'2022-08-16',8,1,2),(18,'緑1、黄色1、丸型1',NULL,'2022-04-19',NULL,NULL,'2022-07-16',8,1,5),(19,'小玉3、大玉1',NULL,'2022-04-19',NULL,NULL,'2022-08-20',8,1,6),(20,NULL,'2022-06-08',NULL,NULL,'2022-08-11','2022-08-20',8,1,27),(21,'湯あがり娘','2022-04-11',NULL,NULL,'2022-07-21','2022-07-25',9,1,3),(22,NULL,'2022-04-11',NULL,NULL,'2022-07-12','2022-07-17',9,1,4),(23,'土垂',NULL,'2022-03-24',NULL,NULL,NULL,10,1,7),(24,'大身ショウガ',NULL,'2022-03-24',NULL,NULL,NULL,10,1,8),(25,'キタアカリ22+27、インカのめざめ22',NULL,'2022-02-24',NULL,NULL,'2022-06-13',11,1,9),(26,'メークイン21、男爵21+22',NULL,'2022-02-24',NULL,NULL,'2022-06-13',12,1,9),(27,'小ネギ、コカブと共に混植　2畝','2022-06-05',NULL,NULL,NULL,NULL,6,1,12),(28,'リーキ・下仁田ネギ・1本ネギ','2022-03-09',NULL,'2022-07-14',NULL,NULL,11,1,26),(29,'千両ナス・水ナス・やわらかナス・万能ナス',NULL,'2022-04-19',NULL,NULL,NULL,2,1,23),(30,'大豆・小豆・黒豆','2022-04-21',NULL,NULL,NULL,NULL,13,1,3),(31,'紅はるか・ベニアズマ',NULL,'2022-05-06',NULL,NULL,NULL,13,1,30),(32,NULL,NULL,'2022-03-17',NULL,NULL,NULL,13,1,31),(33,'ヤマトイモ',NULL,'2022-03-31',NULL,NULL,NULL,13,1,32),(34,'栗カボチャ',NULL,'2022-04-19',NULL,'2022-07-14','2022-08-20',13,1,33),(35,'長ユウガオ',NULL,'2022-03-17',NULL,NULL,'2022-08-21',13,1,34),(36,'2年生',NULL,'2022-03-31',NULL,NULL,NULL,14,1,35),(37,NULL,NULL,'2021-11-15',NULL,'2022-05-11','2022-06-04',1,1,37),(38,NULL,'2022-04-26',NULL,NULL,NULL,NULL,14,1,19),(39,'キュウリ第2弾、品種は普通のキュウリ×5',NULL,'2022-06-16',NULL,'2022-07-14','2022-08-23',8,1,2),(40,NULL,'2022-07-04',NULL,NULL,'2022-08-11',NULL,5,1,38),(41,'ミックスレタス','2022-07-04',NULL,NULL,NULL,'2022-07-25',5,1,17),(42,'ツルなしインゲン','2022-07-11',NULL,NULL,NULL,NULL,6,1,15),(43,NULL,'2022-07-14','2022-08-23',NULL,NULL,NULL,9,1,39),(44,'おまけのキュウリの種','2022-07-21',NULL,NULL,NULL,NULL,14,1,2),(45,'新黒田五寸','2022-08-04',NULL,NULL,NULL,NULL,12,1,40),(46,'90日','2022-08-15',NULL,NULL,NULL,NULL,4,1,41),(47,'60日','2022-08-20',NULL,NULL,NULL,NULL,4,1,41),(48,'あやめっ娘','2022-08-23',NULL,NULL,NULL,NULL,1,1,25),(49,'たくあんダイコン、総太り','2022-09-01',NULL,NULL,NULL,NULL,3,1,25),(50,NULL,NULL,'2022-09-14',NULL,NULL,NULL,9,1,36),(51,NULL,'2022-09-21',NULL,NULL,NULL,NULL,6,1,21),(52,NULL,'2022-09-21',NULL,NULL,NULL,NULL,6,1,27),(53,NULL,'2022-09-14',NULL,NULL,NULL,NULL,6,1,42),(54,NULL,'2022-09-21',NULL,NULL,NULL,NULL,3,1,18);
/*!40000 ALTER TABLE `vegetablegarden_growingcrop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_reminder`
--

DROP TABLE IF EXISTS `vegetablegarden_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `days` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `base_date` date DEFAULT NULL,
  `calculation_date` date DEFAULT NULL,
  `text` longtext,
  `cropmanagement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_remi_cropmanagement_id_10de57d4_fk_vegetable` (`cropmanagement_id`),
  CONSTRAINT `vegetablegarden_remi_cropmanagement_id_10de57d4_fk_vegetable` FOREIGN KEY (`cropmanagement_id`) REFERENCES `vegetablegarden_cropmanagement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_reminder`
--

LOCK TABLES `vegetablegarden_reminder` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_reminder` DISABLE KEYS */;
INSERT INTO `vegetablegarden_reminder` VALUES (1,'追肥',2,'週間後','2022-07-30','2022-08-13','1㎡あたり30ｇ(一握り)',153),(2,'追肥',2,'週間後','2022-07-23','2022-08-06','1㎡あたり30g(一握り)',152),(3,'追肥',2,'週間後','2022-07-17','2022-07-31','',156),(4,'追肥',2,'週間後','2022-07-28','2022-08-11','',157),(5,'追肥',2,'週間後','2022-07-17','2022-07-31','',148),(6,'追肥',2,'週間後','2022-07-17','2022-07-31','',158),(7,'追肥',2,'週間後','2022-07-17','2022-07-31','',146),(8,'追肥',2,'週間後','2022-07-23','2022-08-06','',159),(9,'追肥',2,'週間後','2022-07-23','2022-08-06','',161),(10,'追肥',2,'週間後','2022-07-06','2022-07-20','',162),(11,'追肥',6,'週間後','2022-07-14','2022-08-25','定植から40～50日後に最初の追肥と土寄せ。50g/㎡(一握り)',138),(12,'追肥',2,'週間後','2022-06-01','2022-06-15','6月中旬に1回目、7月中旬に2回目の追肥。一握り/㎡',7),(13,'追肥',4,'週間後','2022-07-11','2022-08-08','',132),(14,'収穫開始予定',12,'週間後','2022-08-04','2022-10-27','種まきから80日後に収穫開始予定',166),(15,'掘り上げ',11,'週間後','2022-04-26','2022-07-12','',167),(16,'追肥',2,'週間後','2022-08-11','2022-08-25','',170),(17,'収穫予定',12,'週間後','2022-08-15','2022-11-07','種まきから90日で収穫予定。',171),(18,'追肥',2,'週間後','2022-08-23','2022-09-06','',175),(19,'追肥',2,'週間後','2022-08-26','2022-09-09','',174);
/*!40000 ALTER TABLE `vegetablegarden_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetablegarden_vegetable`
--

DROP TABLE IF EXISTS `vegetablegarden_vegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetablegarden_vegetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vegetablegarden_vegetable_user_id_6eb3d109_fk_auth_user_id` (`user_id`),
  CONSTRAINT `vegetablegarden_vegetable_user_id_6eb3d109_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetablegarden_vegetable`
--

LOCK TABLES `vegetablegarden_vegetable` WRITE;
/*!40000 ALTER TABLE `vegetablegarden_vegetable` DISABLE KEYS */;
INSERT INTO `vegetablegarden_vegetable` VALUES (1,'トマト','<i class=\"fa-solid fa-seedling\"></i>',1),(2,'キュウリ','<i class=\"fa-solid fa-seedling\"></i>',1),(3,'エダマメ','<i class=\"fa-solid fa-seedling\"></i>',1),(4,'トウモロコシ','<i class=\"fa-solid fa-seedling\"></i>',1),(5,'ズッキーニ','<i class=\"fa-solid fa-seedling\"></i>',1),(6,'スイカ','<i class=\"fa-solid fa-seedling\"></i>',1),(7,'サトイモ','<i class=\"fa-solid fa-seedling\"></i>',1),(8,'ショウガ','<i class=\"fa-solid fa-seedling\"></i>',1),(9,'ジャガイモ','<i class=\"fa-solid fa-seedling\"></i>',1),(10,'ニラ','<i class=\"fa-solid fa-seedling\"></i>',1),(11,'アスパラガス','<i class=\"fa-solid fa-seedling\"></i>',1),(12,'ニンジン','<i class=\"fa-solid fa-seedling\"></i>',1),(13,'モロヘイヤ','<i class=\"fa-solid fa-seedling\"></i>',1),(14,'オクラ','<i class=\"fa-solid fa-seedling\"></i>',1),(15,'インゲン','<i class=\"fa-solid fa-seedling\"></i>',1),(16,'レタス','<i class=\"fa-solid fa-seedling\"></i>',1),(17,'リーフレタス','<i class=\"fa-solid fa-seedling\"></i>',1),(18,'ホウレンソウ','<i class=\"fa-solid fa-seedling\"></i>',1),(19,'チコリ','<i class=\"fa-solid fa-seedling\"></i>',1),(20,'パースニップ','<i class=\"fa-solid fa-seedling\"></i>',1),(21,'カブ','<i class=\"fa-solid fa-seedling\"></i>',1),(22,'ゴボウ','<i class=\"fa-solid fa-seedling\"></i>',1),(23,'ナス','<i class=\"fa-solid fa-seedling\"></i>',1),(24,'ピーマン・シシトウ・パプリカ','<i class=\"fa-solid fa-seedling\"></i>',1),(25,'ダイコン','<i class=\"fa-solid fa-seedling\"></i>',1),(26,'ネギ','<i class=\"fa-solid fa-seedling\"></i>',1),(27,'ビーツ','<i class=\"fa-solid fa-seedling\"></i>',1),(28,'スナップエンドウ','<i class=\"fa-solid fa-seedling\"></i>',1),(29,'サヤエンドウ','<i class=\"fa-solid fa-seedling\"></i>',1),(30,'サツマイモ','<i class=\"fa-solid fa-seedling\"></i>',1),(31,'菊芋','<i class=\"fa-solid fa-seedling\"></i>',1),(32,'ヤマイモ','<i class=\"fa-solid fa-seedling\"></i>',1),(33,'カボチャ','<i class=\"fa-solid fa-seedling\"></i>',1),(34,'ユウガオ','<i class=\"fa-solid fa-seedling\"></i>',1),(35,'コンニャク','<i class=\"fa-solid fa-seedling\"></i>',1),(36,'キャベツ','<i class=\"fa-solid fa-seedling\"></i>',1),(37,'イチゴ','<i class=\"fa-solid fa-seedling\"></i>',1),(38,'クウシンサイ','<i class=\"fa-solid fa-seedling\"></i>',1),(39,'ブロッコリー','<i class=\"fa-solid fa-seedling\"></i>',1),(40,'ニンジン','<i class=\"fa-solid fa-seedling\"></i>',1),(41,'白菜','<i class=\"fa-solid fa-seedling\"></i>',1),(42,'サフラン','<i class=\"fa-solid fa-seedling\"></i>',1);
/*!40000 ALTER TABLE `vegetablegarden_vegetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 13:43:13

-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: portfoliodb
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add project',1,'add_project'),(2,'Can change project',1,'change_project'),(3,'Can delete project',1,'delete_project'),(4,'Can view project',1,'view_project'),(5,'Can add technology',2,'add_technology'),(6,'Can change technology',2,'change_technology'),(7,'Can delete technology',2,'delete_technology'),(8,'Can view technology',2,'view_technology'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add project',9,'add_project'),(34,'Can change project',9,'change_project'),(35,'Can delete project',9,'delete_project'),(36,'Can view project',9,'view_project'),(37,'Can add technology',10,'add_technology'),(38,'Can change technology',10,'change_technology'),(39,'Can delete technology',10,'delete_technology'),(40,'Can view technology',10,'view_technology'),(41,'Can add technical knowledge',11,'add_technicalknowledge'),(42,'Can change technical knowledge',11,'change_technicalknowledge'),(43,'Can delete technical knowledge',11,'delete_technicalknowledge'),(44,'Can view technical knowledge',11,'view_technicalknowledge');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$J2LPvR7dw5rU$wFDUDxxIAWSxA+Eh9s/omRLb393363tuFM1LlCaXhMU=','2019-02-26 00:40:35.569290',1,'jake','','','',1,1,'2019-02-22 06:54:56.157764');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-22 06:57:00.732327','1','Python',1,'[{\"added\": {}}]',10,1),(2,'2019-02-22 06:57:33.632386','2','Django',1,'[{\"added\": {}}]',10,1),(3,'2019-02-22 06:57:48.359384','3','MySQL',1,'[{\"added\": {}}]',10,1),(4,'2019-02-22 06:58:46.402027','4','Nginx',1,'[{\"added\": {}}]',10,1),(5,'2019-02-22 07:00:50.548325','1','Portfolio Website',1,'[{\"added\": {}}]',9,1),(6,'2019-02-22 07:01:15.300962','1','Object Oriented Programming 4.5',1,'[{\"added\": {}}]',11,1),(7,'2019-02-22 07:02:17.358665','2','Python 4',1,'[{\"added\": {}}]',11,1),(8,'2019-02-22 07:02:23.669691','3','Java 4.5',1,'[{\"added\": {}}]',11,1),(9,'2019-02-22 07:02:34.473261','4','C 3',1,'[{\"added\": {}}]',11,1),(10,'2019-02-22 07:02:42.822604','5','C++ 3.5',1,'[{\"added\": {}}]',11,1),(11,'2019-02-22 07:02:56.577022','6','SQL 4',1,'[{\"added\": {}}]',11,1),(12,'2019-02-22 07:16:04.661724','1','Portfolio Website',2,'[{\"changed\": {\"fields\": [\"image_url\"]}}]',9,1),(13,'2019-02-22 23:51:30.444673','5','Java',1,'[{\"added\": {}}]',10,1),(14,'2019-02-22 23:52:18.466634','6','Processing',1,'[{\"added\": {}}]',10,1),(15,'2019-02-22 23:52:57.634185','2','Game Engine',1,'[{\"added\": {}}]',9,1),(16,'2019-02-22 23:53:32.275556','3','Space Invaders',1,'[{\"added\": {}}]',9,1),(17,'2019-02-22 23:56:36.037277','3','Space Invaders',2,'[{\"changed\": {\"fields\": [\"image_url\"]}}]',9,1),(18,'2019-02-22 23:57:27.524057','1','Portfolio Website',2,'[{\"changed\": {\"fields\": [\"image_url\"]}}]',9,1),(19,'2019-02-22 23:57:43.251995','2','Game Engine',2,'[{\"changed\": {\"fields\": [\"image_url\"]}}]',9,1),(20,'2019-02-26 00:47:47.289099','2','Game Engine',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(21,'2019-02-26 00:51:28.685871','1','Portfolio Website',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(22,'2019-02-26 01:24:05.983520','2','Game Engine',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(23,'2019-02-26 01:32:10.468054','3','Space Invaders',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(24,'2019-02-26 01:32:50.786234','3','Space Invaders',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(25,'2019-02-26 01:42:51.239713','1','Portfolio Website',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(26,'2019-02-26 01:48:21.923788','3','Space Invaders',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(27,'2019-02-26 01:49:05.809516','3','Space Invaders',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(28,'2019-02-26 01:49:30.101960','1','Portfolio Website',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(29,'2019-02-26 05:36:44.848757','7','PHP',1,'[{\"added\": {}}]',10,1),(30,'2019-02-26 05:37:38.902196','8','Yii2',1,'[{\"added\": {}}]',10,1),(31,'2019-02-26 05:48:38.590709','4','IP Locator Website',1,'[{\"added\": {}}]',9,1),(32,'2019-02-26 05:49:07.504531','4','IP Locator Website',2,'[]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(1,'projectsapp','project'),(2,'projectsapp','technology'),(9,'resumeapp','project'),(11,'resumeapp','technicalknowledge'),(10,'resumeapp','technology'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-21 18:27:16.846404'),(2,'auth','0001_initial','2019-02-21 18:27:17.230481'),(3,'admin','0001_initial','2019-02-21 18:27:17.324714'),(4,'admin','0002_logentry_remove_auto_add','2019-02-21 18:27:17.334739'),(5,'admin','0003_logentry_add_action_flag_choices','2019-02-21 18:27:17.344515'),(6,'contenttypes','0002_remove_content_type_name','2019-02-21 18:27:17.416961'),(7,'auth','0002_alter_permission_name_max_length','2019-02-21 18:27:17.428301'),(8,'auth','0003_alter_user_email_max_length','2019-02-21 18:27:17.442747'),(9,'auth','0004_alter_user_username_opts','2019-02-21 18:27:17.453609'),(10,'auth','0005_alter_user_last_login_null','2019-02-21 18:27:17.489700'),(11,'auth','0006_require_contenttypes_0002','2019-02-21 18:27:17.493557'),(12,'auth','0007_alter_validators_add_error_messages','2019-02-21 18:27:17.505847'),(13,'auth','0008_alter_user_username_max_length','2019-02-21 18:27:17.520417'),(14,'auth','0009_alter_user_last_name_max_length','2019-02-21 18:27:17.533406'),(15,'projectsapp','0001_initial','2019-02-21 18:27:17.665790'),(16,'projectsapp','0002_auto_20190108_1518','2019-02-21 18:27:17.669886'),(17,'projectsapp','0003_auto_20190108_1558','2019-02-21 18:27:17.673333'),(18,'projectsapp','0004_auto_20190112_0741','2019-02-21 18:27:17.676409'),(19,'projectsapp','0005_auto_20190126_0045','2019-02-21 18:27:17.678315'),(20,'projectsapp','0006_auto_20190126_0110','2019-02-21 18:27:17.681457'),(21,'projectsapp','0007_auto_20190126_0122','2019-02-21 18:27:17.684951'),(22,'projectsapp','0008_auto_20190126_0126','2019-02-21 18:27:17.688379'),(23,'projectsapp','0009_auto_20190126_0127','2019-02-21 18:27:17.784719'),(24,'sessions','0001_initial','2019-02-21 18:27:17.813744'),(25,'projectsapp','0001_squashed_0008_auto_20190126_0126','2019-02-21 18:27:17.819507'),(26,'resumeapp','0001_initial','2019-02-22 05:40:54.521407'),(27,'resumeapp','0002_auto_20190108_1518','2019-02-22 05:40:54.525447'),(28,'resumeapp','0003_auto_20190108_1558','2019-02-22 05:40:54.528953'),(29,'resumeapp','0004_auto_20190112_0741','2019-02-22 05:40:54.532229'),(30,'resumeapp','0005_auto_20190126_0045','2019-02-22 05:40:54.536453'),(31,'resumeapp','0006_auto_20190126_0110','2019-02-22 05:40:54.538472'),(32,'resumeapp','0007_auto_20190126_0122','2019-02-22 05:40:54.541963'),(33,'resumeapp','0008_auto_20190126_0126','2019-02-22 05:40:54.545115'),(34,'resumeapp','0009_auto_20190126_0127','2019-02-22 05:40:54.642304'),(35,'resumeapp','0010_technicalknowledge','2019-02-22 05:40:54.664438'),(36,'resumeapp','0011_auto_20190220_2124','2019-02-22 05:40:54.699268'),(37,'resumeapp','0001_squashed_0008_auto_20190126_0126','2019-02-22 05:40:54.704504'),(38,'resumeapp','0012_auto_20190226_0056','2019-02-26 00:56:52.214237');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('i12pusd1ml9p2u8tod4cp7f7dch68ep5','ZTUxNGUxMWIwNDM0M2UxOTgxZDc4MjA5NTJiYTQ5MTYwZmE2NjZjMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3M2Q2ZDQ5ODdjNzFkMGJhZmY2MTEyMWE2N2EzY2RmNTk2NmU4ZmJiIn0=','2019-03-12 00:40:35.580120'),('k379xzune372bl9ldv44h1n5vod5k17l','YTFjNTI3YmY1M2JmOGZiNzA2MjI0M2NjMzRhODc4NTc4NTc0MjFhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZTBjYjQ3ZWNhMmQ2OTk4MzJhN2RlZWFjYTExZjYxMjcwYzZiMWI0In0=','2019-03-08 06:55:07.134826'),('xloy3a9v73di8v8ej72hykp20dium8iz','MTc3MzQxNmM5ODZmY2IzOWFmY2NmMjc4ODFlODNmMjgzNDRiMGZmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5M2E0YzEyNzViMzkyYjhkYzNiNjg0N2Y4NzlhY2UzNWQ2N2ExZmM1In0=','2019-03-08 23:50:54.938601');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectsapp_project`
--

DROP TABLE IF EXISTS `projectsapp_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectsapp_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `github_link` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsapp_project`
--

LOCK TABLES `projectsapp_project` WRITE;
/*!40000 ALTER TABLE `projectsapp_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectsapp_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectsapp_project_technologies`
--

DROP TABLE IF EXISTS `projectsapp_project_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectsapp_project_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projectsapp_project_tech_project_id_technology_id_5854a844_uniq` (`project_id`,`technology_id`),
  KEY `projectsapp_project__technology_id_8e9398ba_fk_projectsa` (`technology_id`),
  CONSTRAINT `projectsapp_project__project_id_14e0d7f7_fk_projectsa` FOREIGN KEY (`project_id`) REFERENCES `projectsapp_project` (`id`),
  CONSTRAINT `projectsapp_project__technology_id_8e9398ba_fk_projectsa` FOREIGN KEY (`technology_id`) REFERENCES `projectsapp_technology` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsapp_project_technologies`
--

LOCK TABLES `projectsapp_project_technologies` WRITE;
/*!40000 ALTER TABLE `projectsapp_project_technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectsapp_project_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectsapp_technology`
--

DROP TABLE IF EXISTS `projectsapp_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectsapp_technology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tech_type` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsapp_technology`
--

LOCK TABLES `projectsapp_technology` WRITE;
/*!40000 ALTER TABLE `projectsapp_technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectsapp_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumeapp_project`
--

DROP TABLE IF EXISTS `resumeapp_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumeapp_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `github_link` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumeapp_project`
--

LOCK TABLES `resumeapp_project` WRITE;
/*!40000 ALTER TABLE `resumeapp_project` DISABLE KEYS */;
INSERT INTO `resumeapp_project` VALUES (1,'Portfolio Website','I created a website to learn more about web development and to show off my programming experiences. I used the Django framework (an MVC design pattern), and nginx as a web server/reverse proxy. A major goal of this project was to design and create a responsive and aesthetically pleasing website.','https://github.com/cake404/portfoliowebsite','https://i.imgur.com/9P13rqw.gif'),(2,'Game Engine','In this project, I created the lower level parts of a game engine using a drawing software tool called Processing. I used a hybrid component model in which game objects are given properties through Java classes.  An Observer/Observable design pattern was used for the managing events that occur within the game, and multi-threading was used to handle communication between the server and clients.','https://github.com/cake404/GameEngine.git','https://i.imgur.com/F0Z3Af3.gif'),(3,'Space Invaders','I implemented a short version of Space Invaders using the game engine that I created. It is written in Java and uses Processing in order draw elements on the screen. This project was a way to show off how the engine could be used to create simple games.','https://github.com/cake404/SpaceInvaders.git','https://i.imgur.com/ioD8sKe.gif'),(4,'IP Locator Website','This project was a exercise given to me during my internship at etailinsights. The goal of this project was to a create a website that is able to parse through a given IP access log and determine the location and HTTP response of clients that connected to a web server. Another requirement of this website was that it must be able to take IP addresses given by the user and determine their exact location. This website was written in PHP and used an MVC framework called Yii2.','https://github.com/cake404/IPLocatorWebsite.git','https://i.imgur.com/mStrlX0.gif');
/*!40000 ALTER TABLE `resumeapp_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumeapp_project_technologies`
--

DROP TABLE IF EXISTS `resumeapp_project_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumeapp_project_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resumeapp_project_techon_project_id_technology_id_55b0a2d0_uniq` (`project_id`,`technology_id`),
  KEY `resumeapp_project_te_technology_id_6f525f7d_fk_resumeapp` (`technology_id`),
  CONSTRAINT `resumeapp_project_te_project_id_5d8e87c8_fk_resumeapp` FOREIGN KEY (`project_id`) REFERENCES `resumeapp_project` (`id`),
  CONSTRAINT `resumeapp_project_te_technology_id_6f525f7d_fk_resumeapp` FOREIGN KEY (`technology_id`) REFERENCES `resumeapp_technology` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumeapp_project_technologies`
--

LOCK TABLES `resumeapp_project_technologies` WRITE;
/*!40000 ALTER TABLE `resumeapp_project_technologies` DISABLE KEYS */;
INSERT INTO `resumeapp_project_technologies` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,3,5),(8,3,6),(10,4,3),(11,4,7),(9,4,8);
/*!40000 ALTER TABLE `resumeapp_project_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumeapp_technicalknowledge`
--

DROP TABLE IF EXISTS `resumeapp_technicalknowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumeapp_technicalknowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `strength` decimal(2,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumeapp_technicalknowledge`
--

LOCK TABLES `resumeapp_technicalknowledge` WRITE;
/*!40000 ALTER TABLE `resumeapp_technicalknowledge` DISABLE KEYS */;
INSERT INTO `resumeapp_technicalknowledge` VALUES (1,'Object Oriented Programming',4.5),(2,'Python',4.0),(3,'Java',4.5),(4,'C',3.0),(5,'C++',3.5),(6,'SQL',4.0);
/*!40000 ALTER TABLE `resumeapp_technicalknowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumeapp_technology`
--

DROP TABLE IF EXISTS `resumeapp_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumeapp_technology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tech_type` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumeapp_technology`
--

LOCK TABLES `resumeapp_technology` WRITE;
/*!40000 ALTER TABLE `resumeapp_technology` DISABLE KEYS */;
INSERT INTO `resumeapp_technology` VALUES (1,'Python','Programming Language','https://www.python.org/'),(2,'Django','Web Framework','https://www.djangoproject.com/'),(3,'MySQL','Database management system','https://www.mysql.com/'),(4,'Nginx','Web Server/Reverse Proxy','https://www.nginx.com/'),(5,'Java','Programming Language','https://www.java.com/en/'),(6,'Processing','Software Sketching Tool','https://processing.org/'),(7,'PHP','Programming Language','http://www.php.net/'),(8,'Yii2','Web Framework','https://www.yiiframework.com/');
/*!40000 ALTER TABLE `resumeapp_technology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26  5:51:13

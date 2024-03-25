-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: penh-sidebargrid-2024
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add grid',7,'add_grid'),(26,'Can change grid',7,'change_grid'),(27,'Can delete grid',7,'delete_grid'),(28,'Can view grid',7,'view_grid'),(29,'Can add grid filter field',8,'add_gridfilterfield'),(30,'Can change grid filter field',8,'change_gridfilterfield'),(31,'Can delete grid filter field',8,'delete_gridfilterfield'),(32,'Can view grid filter field',8,'view_gridfilterfield'),(33,'Can add sidebar',9,'add_sidebar'),(34,'Can change sidebar',9,'change_sidebar'),(35,'Can delete sidebar',9,'delete_sidebar'),(36,'Can view sidebar',9,'view_sidebar'),(37,'Can add grid filter',10,'add_gridfilter'),(38,'Can change grid filter',10,'change_gridfilter'),(39,'Can delete grid filter',10,'delete_gridfilter'),(40,'Can view grid filter',10,'view_gridfilter'),(41,'Can add sidebar button',11,'add_sidebarbutton'),(42,'Can change sidebar button',11,'change_sidebarbutton'),(43,'Can delete sidebar button',11,'delete_sidebarbutton'),(44,'Can view sidebar button',11,'view_sidebarbutton'),(45,'Can add side bar carousel',12,'add_sidebarcarousel'),(46,'Can change side bar carousel',12,'change_sidebarcarousel'),(47,'Can delete side bar carousel',12,'delete_sidebarcarousel'),(48,'Can view side bar carousel',12,'view_sidebarcarousel'),(49,'Can add sidebar item',13,'add_sidebaritem'),(50,'Can change sidebar item',13,'change_sidebaritem'),(51,'Can delete sidebar item',13,'delete_sidebaritem'),(52,'Can view sidebar item',13,'view_sidebaritem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$q59cFKJpdMHlCRuMpV2k2D$6VJoCGtfKCnXQgo+AeAnfV4seUGpbWIoXpqlZzmEQRg=','2024-03-11 15:41:54.707859',1,'admin','','','pennyt007@yahoo.com',1,1,'2024-03-11 15:39:55.666094');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'sidebargrid','grid'),(10,'sidebargrid','gridfilter'),(8,'sidebargrid','gridfilterfield'),(9,'sidebargrid','sidebar'),(11,'sidebargrid','sidebarbutton'),(12,'sidebargrid','sidebarcarousel'),(13,'sidebargrid','sidebaritem');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-07 17:50:11.086780'),(2,'auth','0001_initial','2024-03-07 17:50:11.171020'),(3,'admin','0001_initial','2024-03-07 17:50:11.191840'),(4,'admin','0002_logentry_remove_auto_add','2024-03-07 17:50:11.194393'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-07 17:50:11.196405'),(6,'contenttypes','0002_remove_content_type_name','2024-03-07 17:50:11.213235'),(7,'auth','0002_alter_permission_name_max_length','2024-03-07 17:50:11.223537'),(8,'auth','0003_alter_user_email_max_length','2024-03-07 17:50:11.230661'),(9,'auth','0004_alter_user_username_opts','2024-03-07 17:50:11.233016'),(10,'auth','0005_alter_user_last_login_null','2024-03-07 17:50:11.244916'),(11,'auth','0006_require_contenttypes_0002','2024-03-07 17:50:11.245281'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-07 17:50:11.247495'),(13,'auth','0008_alter_user_username_max_length','2024-03-07 17:50:11.258693'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-07 17:50:11.269892'),(15,'auth','0010_alter_group_name_max_length','2024-03-07 17:50:11.276376'),(16,'auth','0011_update_proxy_permissions','2024-03-07 17:50:11.278730'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-07 17:50:11.291026'),(18,'sessions','0001_initial','2024-03-07 17:50:11.297404'),(19,'sidebargrid','0001_initial','2024-03-07 17:50:11.357500'),(20,'sidebargrid','0002_remove_sidebaritem_parent_item_id_and_more','2024-03-13 22:57:39.554854');
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
INSERT INTO `django_session` VALUES ('3tokdi21ofzgzbgrgq6zhgsari942tau','.eJxVjEEOgjAQRe_StWmmRdrBpXvOQKYzg6CmTSisjHdXEha6_e-9_zIDbes0bFWXYRZzMc6cfrdE_NC8A7lTvhXLJa_LnOyu2INW2xfR5_Vw_w4mqtO37nj0Cg2gdBhDDC4EryliGIlobCO3HJuErGeHigkUQTywqDhpfQPm_QHhkjgL:1rjhmk:yLhL4DWe2OtzOkLhRXcutVIzLBKg3UPF21tQghEEHDc','2024-03-25 15:41:54.710485');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_grid`
--

DROP TABLE IF EXISTS `sidebargrid_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_grid` (
  `grid_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `data_filtered` varchar(50) DEFAULT NULL,
  `data_key` varchar(50) DEFAULT NULL,
  `columns` json DEFAULT NULL,
  PRIMARY KEY (`grid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_grid`
--

LOCK TABLES `sidebargrid_grid` WRITE;
/*!40000 ALTER TABLE `sidebargrid_grid` DISABLE KEYS */;
INSERT INTO `sidebargrid_grid` VALUES (1,'No Grid',NULL,NULL,NULL,'[{\"formatter\": [\"(cellContent,row)=> {return(<i className=\'bi bi-pencil-square\'></i>)\"]}]'),(2,'gridToUpdateFilterTest',NULL,NULL,NULL,'[{\"test\": \"test\"}]'),(5,'gridWithNoColumnsAndNoFiltersForTest',NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,'[]'),(100,'StudentFamily',NULL,NULL,NULL,NULL),(105,'LearningUpdates','updates',NULL,'point_of_progress_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"15%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"10%\", \"Header\": \"Lates\", \"accessor\": \"number_of_lates\"}, {\"width\": \"10%\", \"Header\": \"Absent\", \"accessor\": \"number_of_absents\"}, {\"width\": \"15%\", \"Header\": \"Available\", \"accessor\": \"processed\"}, {\"width\": \"15%\", \"Header\": \"Accepted\", \"accessor\": \"accepted\"}, {\"width\": \"15%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"formatAcceptButton\", \"width\": \"15%\", \"Header\": \" \"}]'),(110,'Communication','com',NULL,'placeholder_id','[]'),(120,'FeedbackAndNextSteps','pops',NULL,'point_of_progress_summary_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"8%\", \"Header\": \"Subject\", \"accessor\": \"learning_area_code\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"20%\", \"Header\": \"Strength\", \"accessor\": \"feedback\"}, {\"width\": \"20%\", \"Header\": \"Area of Growth\", \"accessor\": \"area_of_growth\"}, {\"width\": \"20%\", \"Header\": \"Next Steps\", \"accessor\": \"next_steps\"}, {\"width\": \"9%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(125,'reflectionCoreCompetency','rcc',NULL,'point_of_progress_summary_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"11%\", \"Header\": \"Competency\", \"accessor\": \"learning_area_code\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"19%\", \"Header\": \"Strength\", \"accessor\": \"feedback\"}, {\"width\": \"19%\", \"Header\": \"Area of Growth\", \"accessor\": \"area_of_growth\"}, {\"width\": \"19%\", \"Header\": \"Goal\", \"accessor\": \"next_steps\"}, {\"width\": \"9%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(130,'CurriculumAssessment','popdls',NULL,'point_of_progress_detail_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"12%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"8%\", \"Header\": \"Subject\", \"accessor\": \"learning_area_code\"}, {\"width\": \"10%\", \"Header\": \"Element \", \"accessor\": \"sub_curriculum_description\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"45%\", \"Header\": \"Standard\", \"accessor\": \"curriculum_short_desc\"}, {\"width\": \"10%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(140,'CoreCompetencyAssessment','popdcc',NULL,'point_of_progress_detail_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"15%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"15%\", \"Header\": \"Description\", \"accessor\": \"sub_competency_short_desc\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"45%\", \"Header\": \"Competency Profile\", \"accessor\": \"curriculum_short_desc\"}, {\"width\": \"10%\", \"Header\": \"Report\", \"accessor\": \"reporting_period_title\"}]'),(150,'EngageBehave','eb',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"38%\", \"Header\": \"Feedback\", \"accessor\": \"feedback\"}, {\"width\": \"37%\", \"Header\": \"Next Steps\", \"accessor\": \"next_steps\"}, {\"width\": \"12%\", \"Header\": \"Report\", \"accessor\": \"reporting_period_title\"}]'),(160,'Portfolio','p',NULL,'portfolio_item_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"Cell\": \"viewPortfolioArtifact\", \"width\": \"6%\", \"Header\": \"Open\"}, {\"width\": \"12%\", \"Header\": \"Subject\", \"accessor\": \"learning_area_code\"}, {\"width\": \"19%\", \"Header\": \"Title\", \"accessor\": \"item_title\"}, {\"width\": \"40%\", \"Header\": \"Feedback\", \"accessor\": \"item_feedback\"}, {\"width\": \"10%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(170,'informalUpdateComments','iucom',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"10%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"80%\", \"Header\": \"Global Comment\", \"accessor\": \"feedback\"}, {\"width\": \"13%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(180,'learningHabits','lh',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"10%\", \"Header\": \"Grade\", \"accessor\": \"grade_level_with_year\"}, {\"width\": \"80%\", \"Header\": \"Global Comment\", \"accessor\": \"feedback\"}, {\"width\": \"13%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(190,'CurrentProgress','current',NULL,NULL,NULL),(200,'TeacherClassroom',NULL,NULL,NULL,NULL),(210,'Classroom','class',NULL,NULL,NULL),(220,'Upload Artifact','uploadart',NULL,NULL,NULL),(230,'Upload Feedback','uploadfb',NULL,NULL,NULL),(300,'ClassroomStudent',NULL,NULL,NULL,NULL),(310,'EngageBehave','eb',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"Cell\": \"editBehaviour\", \"width\": \"5%\", \"Header\": \"Edit\"}, {\"width\": \"8%\", \"Header\": \"Report\", \"accessor\": \"reporting_period_title\"}, {\"width\": \"10%\", \"Header\": \"Status\", \"accessor\": \"point_of_progress_state_description\"}, {\"width\": \"36%\", \"Header\": \"Feedback\", \"accessor\": \"feedback\"}, {\"width\": \"36%\", \"Header\": \"Next Steps\", \"accessor\": \"next_steps\"}]'),(320,'FeedbackAndNextSteps','pops',NULL,'point_of_progress_summary_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"6%\", \"Header\": \"AoL\", \"accessor\": \"learning_area_code\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"22%\", \"Header\": \"Strength\", \"accessor\": \"feedback\"}, {\"width\": \"22%\", \"Header\": \"Area of Growth\", \"accessor\": \"area_of_growth\"}, {\"width\": \"22%\", \"Header\": \"Next Steps\", \"accessor\": \"next_steps\"}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"editPopSummary\", \"width\": \"5%\", \"Header\": \"Edit\"}]'),(330,'CirriculumAssessment','rubls',NULL,'key_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"AoL\", \"accessor\": \"learning_area_code\"}, {\"width\": \"31%\", \"Header\": \" Standard\", \"accessor\": \"curriculum_description\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"NA\", \"accessor\": \"Unassessed\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"IE\", \"accessor\": \"Insufficient\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Emerge\", \"accessor\": \"Emerging\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Develop\", \"accessor\": \"Developing\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Proficient\", \"accessor\": \"Proficient\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Extend\", \"accessor\": \"Extending\"}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(340,'CoreCompetencyAssessment','rubcc',NULL,'key_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"12%\", \"Header\": \"Competency\", \"accessor\": \"sub_curriculum_description\"}, {\"width\": \"35%\", \"Header\": \" Profile\", \"accessor\": \"curriculum_description\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"NoR\", \"accessor\": \"No Reflection\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Emerge\", \"accessor\": \"Emerging\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Develop\", \"accessor\": \"Developing\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Proficient\", \"accessor\": \"Proficient\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"8%\", \"Header\": \"Extend\", \"accessor\": \"Extending\"}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}]'),(345,'IEPObjectiveAssessment','rubiep',NULL,'key_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"width\": \"13%\", \"Header\": \"Competency\", \"accessor\": \"learning_area_code\"}, {\"width\": \"20%\", \"Header\": \"Objective\", \"accessor\": \"sub_curriculum_description\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"NA\", \"accessor\": \"Unassessed\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"IE\", \"accessor\": \"insufficient\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"Full Support\", \"accessor\": \"with full support\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"Some Support\", \"accessor\": \"with some support\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"On Own\", \"accessor\": \"on my own\"}, {\"Cell\": \"formatRadioButton\", \"width\": \"9%\", \"Header\": \"New Goal\", \"accessor\": \"need new goal\"}]'),(350,'Portfolio','p',NULL,'portfolio_item_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"Cell\": \"viewPortfolioArtifact\", \"width\": \"6%\", \"Header\": \"Open\"}, {\"width\": \"13%\", \"Header\": \"AoL\", \"accessor\": \"learning_area_code\"}, {\"width\": \"15%\", \"Header\": \"Title\", \"accessor\": \"item_title\"}, {\"width\": \"18%\", \"Header\": \"Description\", \"accessor\": \"item_description\"}, {\"width\": \"30%\", \"Header\": \"Feedback\", \"accessor\": \"item_feedback\"}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"editPortfolioItem\", \"width\": \"5%\", \"Header\": \"Edit\"}]'),(360,'SummaryStatus','status',NULL,'point_of_progress_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"7%\", \"Header\": \"Lates\", \"accessor\": \"number_of_lates\"}, {\"width\": \"7%\", \"Header\": \"Absent\", \"accessor\": \"number_of_absents\"}, {\"width\": \"11%\", \"Header\": \"Draft\", \"accessor\": \"draft\"}, {\"width\": \"11%\", \"Header\": \"Revise\", \"accessor\": \"revise\"}, {\"width\": \"11%\", \"Header\": \"Posted\", \"accessor\": \"posted\"}, {\"width\": \"11%\", \"Header\": \"Approved\", \"accessor\": \"approved\"}, {\"width\": \"11%\", \"Header\": \"Processed\", \"accessor\": \"processed\"}, {\"width\": \"11%\", \"Header\": \"Accepted\", \"accessor\": \"accepted\"}, {\"width\": \"9%\", \"Header\": \"Report\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"formatPostButton\", \"width\": \"6%\", \"Header\": \"Post\"}]'),(370,'informalUpdateComments','iucom',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"80%\", \"Header\": \"Global Comment\", \"accessor\": \"feedback\"}, {\"width\": \"10%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"editBehaviour\", \"width\": \"5%\", \"Header\": \"Edit\"}]'),(380,'reflectionCoreCompetency','rcc',NULL,'point_of_progress_summary_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"12%\", \"Header\": \"Competency\", \"accessor\": \"learning_area_code\"}, {\"width\": \"10%\", \"Header\": \"Proficiency\", \"accessor\": \"proficiency_level\"}, {\"width\": \"20%\", \"Header\": \"Reflection\", \"accessor\": \"feedback\"}, {\"width\": \"20%\", \"Header\": \"Area of Growth\", \"accessor\": \"area_of_growth\"}, {\"width\": \"20%\", \"Header\": \"Goal\", \"accessor\": \"next_steps\"}, {\"width\": \"8%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"editReflection\", \"width\": \"5%\", \"Header\": \"Edit\"}]'),(390,'learningHabit','lh',NULL,'engagement_behaviour_id','[{\"width\": \"5%\", \"Header\": \"No\", \"accessor\": \"rowNum\", \"disableSortBy\": true}, {\"width\": \"80%\", \"Header\": \"Global Comment\", \"accessor\": \"feedback\"}, {\"width\": \"10%\", \"Header\": \"Schedule\", \"accessor\": \"reporting_period_title\"}, {\"Cell\": \"editBehaviour\", \"width\": \"5%\", \"Header\": \"Edit\"}]'),(400,'teacherClassroom',NULL,NULL,NULL,'[]'),(410,'Classroom','class',NULL,NULL,NULL),(420,'Communication','com',NULL,NULL,NULL),(430,'Upload','upload',NULL,NULL,NULL),(500,'principalSchool',NULL,NULL,NULL,'[]'),(510,'Classes','classes',NULL,NULL,NULL),(520,'Communication','com',NULL,NULL,NULL),(600,'principalClassroom',NULL,NULL,NULL,'[]'),(610,'Students','class',NULL,NULL,NULL),(620,'Communication','com',NULL,NULL,NULL),(700,'principalStudentPointOfProgress',NULL,NULL,NULL,'[]'),(710,NULL,'pops',NULL,NULL,NULL),(800,'ClassroomStudentPointOfProgress',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sidebargrid_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_gridfilter`
--

DROP TABLE IF EXISTS `sidebargrid_gridfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_gridfilter` (
  `grid_filter_id` int NOT NULL AUTO_INCREMENT,
  `grid_id` int NOT NULL,
  `grid_filter_field_id` int NOT NULL,
  PRIMARY KEY (`grid_filter_id`),
  KEY `sidebargrid_gridfilt_grid_id_e709fe26_fk_sidebargr` (`grid_id`),
  KEY `sidebargrid_gridfilt_grid_filter_field_id_470766cb_fk_sidebargr` (`grid_filter_field_id`),
  CONSTRAINT `sidebargrid_gridfilt_grid_filter_field_id_470766cb_fk_sidebargr` FOREIGN KEY (`grid_filter_field_id`) REFERENCES `sidebargrid_gridfilterfield` (`grid_filter_field_id`),
  CONSTRAINT `sidebargrid_gridfilt_grid_id_e709fe26_fk_sidebargr` FOREIGN KEY (`grid_id`) REFERENCES `sidebargrid_grid` (`grid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3902 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_gridfilter`
--

LOCK TABLES `sidebargrid_gridfilter` WRITE;
/*!40000 ALTER TABLE `sidebargrid_gridfilter` DISABLE KEYS */;
INSERT INTO `sidebargrid_gridfilter` VALUES (1051,105,140),(1052,105,30),(1201,120,120),(1202,120,50),(1203,120,30),(1251,125,120),(1252,125,100),(1253,125,30),(1301,130,120),(1302,130,50),(1303,130,30),(1304,130,70),(1305,130,80),(1401,140,120),(1402,140,100),(1403,140,30),(1404,140,90),(1501,150,30),(1502,150,20),(1601,160,120),(1602,160,30),(1701,170,130),(1702,170,30),(1801,180,120),(1802,180,30),(3101,310,10),(3102,310,20),(3201,320,120),(3202,320,50),(3301,330,120),(3302,330,50),(3303,330,80),(3304,330,70),(3401,340,120),(3402,340,100),(3403,340,90),(3451,345,120),(3501,350,120),(3602,360,140),(3701,370,130),(3801,380,120),(3802,380,100),(3901,390,120);
/*!40000 ALTER TABLE `sidebargrid_gridfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_gridfilterfield`
--

DROP TABLE IF EXISTS `sidebargrid_gridfilterfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_gridfilterfield` (
  `grid_filter_field_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `data_field` varchar(50) NOT NULL,
  `values` json NOT NULL,
  PRIMARY KEY (`grid_filter_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_gridfilterfield`
--

LOCK TABLES `sidebargrid_gridfilterfield` WRITE;
/*!40000 ALTER TABLE `sidebargrid_gridfilterfield` DISABLE KEYS */;
INSERT INTO `sidebargrid_gridfilterfield` VALUES (1,NULL,'no_data_field','[]'),(5,NULL,'no_data_field','[]'),(10,'Status','point_of_progress_state_description','[\"Draft\", \"Posted\", \"Approved\", \"Processed\", \"Accepted\"]'),(20,'Report Periods','reporting_period_title','[\"Update-1\", \"Update-2\", \"Update-3\", \"Update-4\", \"Final\"]'),(30,'Grades','grade_level_code','[\"G0K\", \"G01\", \"G02\", \"G03\", \"G04\", \"G05\", \"G06\"]'),(40,'Learning Areas','learning_area_code','[\"Art\", \"English\", \"Math\", \"PHE\", \"Science\", \"Social Studies\", \"Communication\", \"Thinking\", \"Personal and Social\"]'),(50,'Learning Areas','learning_area_code','[\"Art\", \"English\", \"Math\", \"PHE\", \"Science\", \"Social Studies\"]'),(60,'Proficiencies','proficiency_level','[\"Unassessed\", \"Insufficient\", \"Emerging\", \"Developing\", \"Proficient\", \"Extending\", \"No Reflection\", \"Figuring Out\", \"Getting It\", \"Got It\"]'),(70,'Proficiencies','proficiency_level','[\"Unassessed\", \"Insufficient\", \"Emerging\", \"Developing\", \"Proficient\", \"Extending\"]'),(80,'Elements','sub_curriculum_description','[\"Do\", \"Know\"]'),(90,'Proficiencies','proficiency_level','[\"No Reflection\", \"Emerging\", \"Developing\", \"Proficient\", \"Extending\"]'),(100,'Competencies','learning_area_code','[\"Communication\", \"Thinking\", \"Personal and Social\"]'),(110,'LS Proficiency','proficiency_level','[\"Insufficient\", \"Emerging\", \"Developing\", \"Proficient\", \"Extending\"]'),(120,'Schedule','reporting_period_description','[\"December-Written\", \"April-Written\", \"June-Summary\"]'),(130,'Schedule','reporting_period_description','[\"October-Informal\", \"February-Informal\"]'),(140,'Schedule','reporting_period_description','[\"October-Informal\", \"December-Written\", \"February-Informal\", \"April-Written\", \"June-Summary\"]');
/*!40000 ALTER TABLE `sidebargrid_gridfilterfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_sidebar`
--

DROP TABLE IF EXISTS `sidebargrid_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_sidebar` (
  `sidebar_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`sidebar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_sidebar`
--

LOCK TABLES `sidebargrid_sidebar` WRITE;
/*!40000 ALTER TABLE `sidebargrid_sidebar` DISABLE KEYS */;
INSERT INTO `sidebargrid_sidebar` VALUES (1,'GridSidebarWithoutItemsForTest'),(10,'FamilyStudent'),(20,'TeacherClassroom'),(30,'ClassroomStudent'),(31,'ClassroomStudentIEP'),(35,'ClassroomStudentPointOfProgress'),(40,'StudentPointOfProgress'),(50,'PrincipalSchool'),(60,'PrincipalClassroom'),(70,'PrincipalStudentPointOfProgress'),(80,'Holder');
/*!40000 ALTER TABLE `sidebargrid_sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_sidebarbutton`
--

DROP TABLE IF EXISTS `sidebargrid_sidebarbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_sidebarbutton` (
  `sidebar_button_id` int NOT NULL,
  `sidebar_id` int NOT NULL,
  `properties` json NOT NULL,
  PRIMARY KEY (`sidebar_button_id`),
  KEY `sidebargrid_sidebarb_sidebar_id_6a336b74_fk_sidebargr` (`sidebar_id`),
  CONSTRAINT `sidebargrid_sidebarb_sidebar_id_6a336b74_fk_sidebargr` FOREIGN KEY (`sidebar_id`) REFERENCES `sidebargrid_sidebar` (`sidebar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_sidebarbutton`
--

LOCK TABLES `sidebargrid_sidebarbutton` WRITE;
/*!40000 ALTER TABLE `sidebargrid_sidebarbutton` DISABLE KEYS */;
INSERT INTO `sidebargrid_sidebarbutton` VALUES (10,10,'[{\"hidden\": true, \"buttonTitle\": \"No Button\"}]'),(20,20,'[{\"hidden\": true, \"buttonTitle\": \"No Button\"}]'),(30,30,'[{\"hidden\": true, \"buttonTitle\": \"No Button\"}]'),(50,50,'[{\"hidden\": true, \"buttonTitle\": \"No Button\"}]'),(60,60,'[{\"hidden\": false, \"buttonTitle\": \"Approve Posted Updates\"}]');
/*!40000 ALTER TABLE `sidebargrid_sidebarbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_sidebarcarousel`
--

DROP TABLE IF EXISTS `sidebargrid_sidebarcarousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_sidebarcarousel` (
  `sidebar_carousel_id` int NOT NULL AUTO_INCREMENT,
  `sidebar_id` int NOT NULL,
  `properties` json NOT NULL,
  PRIMARY KEY (`sidebar_carousel_id`),
  KEY `sidebargrid_sidebarc_sidebar_id_4487c961_fk_sidebargr` (`sidebar_id`),
  CONSTRAINT `sidebargrid_sidebarc_sidebar_id_4487c961_fk_sidebargr` FOREIGN KEY (`sidebar_id`) REFERENCES `sidebargrid_sidebar` (`sidebar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_sidebarcarousel`
--

LOCK TABLES `sidebargrid_sidebarcarousel` WRITE;
/*!40000 ALTER TABLE `sidebargrid_sidebarcarousel` DISABLE KEYS */;
INSERT INTO `sidebargrid_sidebarcarousel` VALUES (10,10,'[{\"itemKey\": \"student_id\", \"itemImage\": \"image_path\", \"itemTitle\": \"first_middle_name\", \"itemSubtitle\": \"class_name\"}]'),(20,20,'[{\"itemKey\": \"class_id\", \"itemImage\": \"teacherImagePath\", \"itemTitle\": \"classTitleWithYear\", \"itemSubtitle\": \"teacherFullName\"}]'),(30,30,'[{\"itemKey\": \"class_student_id\", \"itemImage\": \"image_path\", \"itemTitle\": \"first_middle_name\", \"itemSubtitle\": \"class_name\"}]'),(31,31,'[{\"itemKey\": \"class_student_id\", \"itemImage\": \"image_path\", \"itemTitle\": \"first_middle_name\", \"itemSubtitle\": \"class_name\"}]'),(35,35,'[{\"itemKey\": \"class_student_id\", \"itemImage\": \"image_path\", \"itemTitle\": \"first_middle_name\", \"itemSubtitle\": \"class_name\"}]'),(50,50,'[{\"itemKey\": \"staff_id\", \"itemImage\": \"principalImagePath\", \"itemTitle\": \"school_name\", \"itemSubtitle\": \"principal\"}]'),(60,60,'[{\"itemKey\": \"class_id\", \"itemImage\": \"teacherImagePath\", \"itemTitle\": \"classTitleWithYear\", \"itemSubtitle\": \"teacherFullName\"}]'),(70,70,'[{\"itemKey\": \"classStudentId\", \"itemImage\": \"studentImagePath\", \"itemTitle\": \"classTitleWithYear\", \"itemSubtitle\": \"studentFullName\"}]');
/*!40000 ALTER TABLE `sidebargrid_sidebarcarousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebargrid_sidebaritem`
--

DROP TABLE IF EXISTS `sidebargrid_sidebaritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebargrid_sidebaritem` (
  `sidebar_item_id` int NOT NULL AUTO_INCREMENT,
  `sidebar_id` int NOT NULL,
  `grid_id` int NOT NULL,
  `is_parent_item` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_selected` tinyint(1) NOT NULL,
  `order` int NOT NULL,
  `parent_item_id` int DEFAULT NULL,
  PRIMARY KEY (`sidebar_item_id`),
  KEY `sidebargrid_sidebari_grid_id_2b9f6b5c_fk_sidebargr` (`grid_id`),
  KEY `sidebargrid_sidebari_sidebar_id_a3e4a9d8_fk_sidebargr` (`sidebar_id`),
  KEY `sidebargrid_sidebari_parent_item_id_77cfaab3_fk_sidebargr` (`parent_item_id`),
  CONSTRAINT `sidebargrid_sidebari_grid_id_2b9f6b5c_fk_sidebargr` FOREIGN KEY (`grid_id`) REFERENCES `sidebargrid_grid` (`grid_id`),
  CONSTRAINT `sidebargrid_sidebari_parent_item_id_77cfaab3_fk_sidebargr` FOREIGN KEY (`parent_item_id`) REFERENCES `sidebargrid_sidebaritem` (`sidebar_item_id`),
  CONSTRAINT `sidebargrid_sidebari_sidebar_id_a3e4a9d8_fk_sidebargr` FOREIGN KEY (`sidebar_id`) REFERENCES `sidebargrid_sidebar` (`sidebar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebargrid_sidebaritem`
--

LOCK TABLES `sidebargrid_sidebaritem` WRITE;
/*!40000 ALTER TABLE `sidebargrid_sidebaritem` DISABLE KEYS */;
INSERT INTO `sidebargrid_sidebaritem` VALUES (101,10,160,0,'E-Portfolio','bi bi-briefcase',0,1,NULL),(102,10,105,0,'Learning Updates','bi bi-journals',1,2,NULL),(103,10,100,1,'Progress History','bi bi-clock',0,3,NULL),(104,10,170,0,'Informal Updates','bi bi-chat-right-text',0,4,103),(105,10,180,0,'Learning Habits','bi bi-apple',0,5,103),(106,10,120,0,'Feedback','bi bi-megaphone',0,6,103),(107,10,130,0,'Standards','bi bi-list-ol',0,7,103),(108,10,125,0,'Reflection','bi bi-person-circle',0,8,103),(109,10,140,0,'Competenices','bi bi-list-task',0,9,103),(201,20,210,0,'Classroom','bi bi-person-workspace',1,1,NULL),(202,20,220,0,'Upload Evidence','bi bi-upload',0,2,NULL),(203,20,230,0,'Upload Feedback','bi bi-upload',0,3,NULL),(301,30,360,0,'Update Status','bi bi-question-circle',1,0,NULL),(302,30,370,0,'Informal Updates','bi bi-check-circle',0,2,NULL),(303,30,300,1,'Written Updates','bi bi-check-square',0,4,NULL),(304,30,320,0,'Feedback','bi bi-megaphone',0,6,303),(305,30,330,0,'Standards','bi bi-list-ul',0,7,303),(306,30,380,0,'Reflection','bi bi-person-circle',0,8,303),(307,30,340,0,'Profiles','bi bi-list-task',0,9,303),(308,30,390,0,'Learning Habits','bi bi-apple',1,5,303),(310,30,350,0,'Evidence of Learning','bi bi-journals',0,1,NULL),(311,31,360,0,'Update Status','bi bi-question-circle',1,0,NULL),(312,31,300,0,'Evidence of Learning','bi bi-journals',0,1,NULL),(313,31,370,0,'Informal Updates','bi bi-check-circle',0,2,NULL),(314,31,300,1,'Written Updates','bi bi-check-square',0,3,NULL),(315,31,390,0,'Learning Habits','bi bi-apple',0,4,314),(316,31,320,0,'Feedback','bi bi-megaphone',0,5,314),(317,31,345,0,'IEP Objectives','bi bi-list-ul',0,6,314),(351,35,800,0,'Learning Update','bi bi-book',1,1,NULL),(501,50,510,0,'Classes','bi bi-collection-fill',1,1,NULL),(502,50,520,0,'Communication','bi bi-envelope',0,2,NULL),(601,60,610,0,'Students','bi bi-people-fill',1,1,NULL),(602,60,620,0,'Communication','bi bi-envelope',0,2,NULL),(701,70,710,0,'Posted Learning Update','bi bi-book',1,1,NULL);
/*!40000 ALTER TABLE `sidebargrid_sidebaritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'penh-sidebargrid-2024'
--

--
-- Dumping routines for database 'penh-sidebargrid-2024'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 12:39:01

-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: penh-paint-company
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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `fk_inventory_product1_idx` (`product_id`),
  CONSTRAINT `fk_inventory_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,28),(2,2,73),(3,3,60),(4,4,34),(5,5,40);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_audit`
--

DROP TABLE IF EXISTS `inventory_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_audit` (
  `inventory_audit_id` int NOT NULL AUTO_INCREMENT,
  `inventory_id` int NOT NULL,
  `system_quantity` int NOT NULL,
  `manual_quantity` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `completed` datetime DEFAULT NULL,
  PRIMARY KEY (`inventory_audit_id`),
  KEY `fk_inventory_audit_inventory1_idx` (`inventory_id`),
  CONSTRAINT `fk_inventory_audit_inventory1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_audit`
--

LOCK TABLES `inventory_audit` WRITE;
/*!40000 ALTER TABLE `inventory_audit` DISABLE KEYS */;
INSERT INTO `inventory_audit` VALUES (1,1,60,60,'no spill or waste','2024-02-20 00:00:00','2024-02-20 00:00:00'),(2,2,90,90,'no spill or waste','2024-02-20 00:00:00','2024-02-20 00:00:00'),(3,3,60,60,'no spill or waste','2024-02-20 00:00:00','2024-02-20 00:00:00'),(4,4,90,90,'no spill or waste','2024-02-20 00:00:00','2024-02-20 00:00:00'),(5,5,40,40,'no spill or waste','2024-02-20 00:00:00','2024-02-20 00:00:00');
/*!40000 ALTER TABLE `inventory_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_order`
--

DROP TABLE IF EXISTS `inventory_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `order_number` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_order_status1_idx` (`order_status_id`),
  KEY `fk_order_product1_idx` (`product_id`),
  CONSTRAINT `fk_order_order_status1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`),
  CONSTRAINT `fk_order_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_order`
--

LOCK TABLES `inventory_order` WRITE;
/*!40000 ALTER TABLE `inventory_order` DISABLE KEYS */;
INSERT INTO `inventory_order` VALUES (1,4,2,'ON001',56);
/*!40000 ALTER TABLE `inventory_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_transaction`
--

DROP TABLE IF EXISTS `inventory_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_transaction` (
  `inventory_transaction_id` int NOT NULL AUTO_INCREMENT,
  `inventory_id` int NOT NULL,
  `job_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `transaction_status_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created` datetime NOT NULL,
  `completed` datetime DEFAULT NULL,
  PRIMARY KEY (`inventory_transaction_id`),
  KEY `fk_inventory_transaction_order1_idx` (`order_id`),
  KEY `fk_inventory_transaction_job1_idx` (`job_id`),
  KEY `fk_inventory_transaction_inventory1_idx` (`inventory_id`),
  KEY `fk_inventory_transaction_transaction_status1_idx` (`transaction_status_id`),
  CONSTRAINT `fk_inventory_transaction_inventory1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `fk_inventory_transaction_job1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  CONSTRAINT `fk_inventory_transaction_order1` FOREIGN KEY (`order_id`) REFERENCES `inventory_order` (`order_id`),
  CONSTRAINT `fk_inventory_transaction_transaction_status1` FOREIGN KEY (`transaction_status_id`) REFERENCES `transaction_status` (`transaction_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_transaction`
--

LOCK TABLES `inventory_transaction` WRITE;
/*!40000 ALTER TABLE `inventory_transaction` DISABLE KEYS */;
INSERT INTO `inventory_transaction` VALUES (1,1,1,NULL,2,-6,'2024-02-21 00:00:00','2024-02-21 00:00:00'),(2,2,2,NULL,2,-17,'2024-02-22 00:00:00','2024-02-22 00:00:00'),(3,4,3,NULL,2,-17,'2024-02-23 00:00:00','2024-02-23 00:00:00'),(4,2,4,NULL,2,-11,'2024-02-23 00:00:00','2024-02-23 00:00:00'),(5,1,5,NULL,2,-17,'2024-02-24 00:00:00','2024-02-24 00:00:00'),(6,1,6,NULL,2,-9,'2024-02-25 00:00:00','2024-02-25 00:00:00'),(7,4,7,NULL,2,-17,'2024-02-26 00:00:00','2024-02-26 00:00:00'),(8,4,8,NULL,2,-11,'2024-02-27 00:00:00','2024-02-27 00:00:00');
/*!40000 ALTER TABLE `inventory_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `job_status_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `job_number` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_area` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `fk_job_job_status1_idx` (`job_status_id`),
  KEY `fk_job_product1_idx` (`product_id`),
  KEY `fk_job_staff1_idx` (`staff_id`),
  CONSTRAINT `fk_job_job_status1` FOREIGN KEY (`job_status_id`) REFERENCES `job_status` (`job_status_id`),
  CONSTRAINT `fk_job_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_job_staff1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,1,2,1,'PJ001','First House',1000,6),(2,2,2,4,'PJ002','Second House',3000,17),(3,4,2,5,'PJ003','Third House',3000,17),(4,2,2,6,'PJ004','Fourth House',2000,11),(5,1,2,7,'PJ005','Fith House',3000,17),(6,1,2,4,'PJ006','Sixth House',1500,9),(7,4,2,1,'PJ007','Seventh House',3000,17),(8,4,2,5,'PJ008','Eigth House',2000,11);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_status`
--

DROP TABLE IF EXISTS `job_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_status` (
  `job_status_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`job_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_status`
--

LOCK TABLES `job_status` WRITE;
/*!40000 ALTER TABLE `job_status` DISABLE KEYS */;
INSERT INTO `job_status` VALUES (1,'PEND','pending'),(2,'ALOTTED','paint allotted'),(3,'PICK','paint picked up');
/*!40000 ALTER TABLE `job_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `order_status_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'PEND','pending'),(2,'SENT','sent'),(3,'IN','received'),(4,'STOCK','stocked');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_type_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `stock_max` int NOT NULL,
  `low_trigger` int NOT NULL,
  `order_trigger` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_product_type_idx` (`product_type_id`),
  CONSTRAINT `fk_product_product_type` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Blue',60,30,17),(2,1,'Grey',90,45,34),(3,1,'Black',60,30,17),(4,1,'White',90,45,34),(5,1,'Purple',40,20,17);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `product_type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Paint');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator'),(2,'Manager'),(3,'Painter');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Jane'),(2,'John'),(3,'Adam'),(4,'Penny'),(5,'Peter'),(6,'Pam'),(7,'Paul');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_role`
--

DROP TABLE IF EXISTS `staff_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_role` (
  `staff_role_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`staff_role_id`),
  KEY `fk_staff_role_role1_idx` (`role_id`),
  KEY `fk_staff_role_staff1_idx` (`staff_id`),
  CONSTRAINT `fk_staff_role_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_staff_role_staff1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_role`
--

LOCK TABLES `staff_role` WRITE;
/*!40000 ALTER TABLE `staff_role` DISABLE KEYS */;
INSERT INTO `staff_role` VALUES (1,1,2),(2,1,3),(3,2,2),(4,3,1),(5,4,3),(6,5,3),(7,6,3),(8,7,3);
/*!40000 ALTER TABLE `staff_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_user`
--

DROP TABLE IF EXISTS `staff_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_user` (
  `staff_user_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`staff_user_id`),
  KEY `fk_staff_user_user1_idx` (`user_id`),
  KEY `fk_staff_user_staff1_idx` (`staff_id`),
  CONSTRAINT `fk_staff_user_staff1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `fk_staff_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_user`
--

LOCK TABLES `staff_user` WRITE;
/*!40000 ALTER TABLE `staff_user` DISABLE KEYS */;
INSERT INTO `staff_user` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `staff_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_status`
--

DROP TABLE IF EXISTS `transaction_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_status` (
  `transaction_status_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_status`
--

LOCK TABLES `transaction_status` WRITE;
/*!40000 ALTER TABLE `transaction_status` DISABLE KEYS */;
INSERT INTO `transaction_status` VALUES (1,'PEND','pending'),(2,'APPLIED','applied to inventory');
/*!40000 ALTER TABLE `transaction_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_role_type_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1024) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_user_role_type1_idx` (`user_role_type_id`),
  CONSTRAINT `fk_user_user_role_type1` FOREIGN KEY (`user_role_type_id`) REFERENCES `user_role_type` (`user_role_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'jane@thepaintcompany.ca','$2b$10$WR/51GG6Wqg5CXiHrOwRoeKsUNNt8fdip4E4yqcca3a3Gq/xLrwrK'),(2,2,'john@thepaintcompany.ca','$2b$10$WR/51GG6Wqg5CXiHrOwRoeKsUNNt8fdip4E4yqcca3a3Gq/xLrwrK');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_type`
--

DROP TABLE IF EXISTS `user_role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_type` (
  `user_role_type_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_role_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_type`
--

LOCK TABLES `user_role_type` WRITE;
/*!40000 ALTER TABLE `user_role_type` DISABLE KEYS */;
INSERT INTO `user_role_type` VALUES (1,'MANAGER','Manager'),(2,'PAINTER','Painter');
/*!40000 ALTER TABLE `user_role_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25  7:26:42

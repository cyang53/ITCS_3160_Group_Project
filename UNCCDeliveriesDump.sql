-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: unccdeliveries
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driverId` int NOT NULL,
  `driverName` varchar(45) NOT NULL,
  PRIMARY KEY (`driverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1603,'Holmes Vazquez'),(16160,'Hiram Marquez'),(16220,'Nehru Stevenson'),(16351,'Armando Richmond'),(16591,'Nehru Hendricks'),(16641,'Herman Dominguez'),(16760,'Abbot Summers'),(16820,'Brenden Hensley'),(163611,'Nissim Maldonado'),(165801,'Cody Wilson');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_has_restaurant`
--

DROP TABLE IF EXISTS `driver_has_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_has_restaurant` (
  `Driver_driverId` int NOT NULL,
  `Restaurant_idRestaurant` int NOT NULL,
  PRIMARY KEY (`Driver_driverId`,`Restaurant_idRestaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_has_restaurant`
--

LOCK TABLES `driver_has_restaurant` WRITE;
/*!40000 ALTER TABLE `driver_has_restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_has_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `foodId` int NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `menuId` int NOT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1505,'Noodles',29,3713),(1540,'Noodles',24,983),(2173,'Chicken',40,679),(2635,'Rice',24,1037),(2747,'Rice',20,8395),(5641,'Pork Chop',40,8977),(5681,'Steak',35,5254),(5729,'Noodles',19,8283),(6800,'Steak',38,7943),(7134,'Pork Chop',7,7736),(7284,'Chicken',10,8581),(8200,'Steak',4,525),(10387,'Chicken',37,328),(11151,'Pork Chop',8,6015),(11683,'Rice',9,9453),(14250,'Pork Chop',20,5049),(16580,'Rice',29,827),(20631,'Steak',18,1089),(22258,'Chicken',5,6981),(22590,'Steak',26,4834),(24461,'Steak',32,1795),(25511,'Noodles',36,1905),(25865,'Rice',4,7473),(28856,'Steak',35,5124),(29206,'Rice',35,7209),(29449,'Pork Chop',24,2136),(30693,'Steak',21,2814),(33584,'Rice',2,647),(34737,'Noodles',19,2879),(37442,'Noodles',12,3300),(38091,'Steak',18,7625),(40418,'Steak',18,6182),(40546,'Steak',12,1066),(41043,'Rice',31,6571),(41417,'Noodles',36,537),(41451,'Noodles',29,185),(42629,'Noodles',6,6710),(45362,'Chicken',6,5822),(46494,'Noodles',35,2625),(48406,'Steak',7,9081),(49347,'Chicken',14,6315),(49620,'Steak',22,8926),(49701,'Rice',12,2352),(50030,'Steak',19,5853),(51518,'Rice',33,7893),(52290,'Pork Chop',9,2713),(53183,'Rice',40,5705),(53279,'Chicken',18,3379),(53876,'Steak',21,4985),(54255,'Noodles',11,6073),(55470,'Pork Chop',22,5946),(57837,'Steak',7,7788),(58844,'Steak',20,6811),(58958,'Pork Chop',19,367),(60863,'Chicken',37,1027),(61063,'Noodles',3,4666),(61262,'Pork Chop',5,8927),(62299,'Noodles',6,4676),(62758,'Noodles',33,2560),(62778,'Chicken',26,3432),(63173,'Chicken',15,2819),(63204,'Pork Chop',18,3776),(64259,'Steak',9,6933),(64291,'Steak',6,4200),(64342,'Rice',25,4899),(64784,'Pork Chop',33,8759),(64799,'Pork Chop',35,564),(65706,'Rice',27,1845),(65928,'Steak',9,6653),(67114,'Pork Chop',33,1453),(67216,'Noodles',33,2813),(67446,'Rice',28,3906),(70728,'Rice',17,549),(70955,'Chicken',38,5790),(71189,'Chicken',39,5564),(71361,'Pork Chop',35,6054),(71507,'Rice',36,3995),(73207,'Rice',12,9443),(73704,'Noodles',35,5061),(74405,'Steak',32,9925),(76674,'Chicken',7,7005),(77160,'Steak',13,402),(77470,'Rice',36,2727),(77861,'Noodles',40,5735),(81463,'Chicken',6,3554),(82334,'Pork Chop',24,169),(83995,'Chicken',36,8138),(85373,'Noodles',14,1434),(85466,'Chicken',32,2216),(87929,'Steak',36,3769),(88036,'Pork Chop',28,1790),(89310,'Noodles',17,6936),(89438,'Rice',11,9177),(89751,'Rice',40,784),(90161,'Steak',22,7034),(90897,'Noodles',10,3298),(92439,'Noodles',37,3984),(95572,'Pork Chop',6,5519),(98145,'Noodles',24,8404),(99743,'Rice',11,1169);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `idLocations` int NOT NULL,
  `locationAddress` varchar(100) NOT NULL,
  `deliveryPoint` varchar(45) DEFAULT NULL,
  `locationName` varchar(45) NOT NULL,
  `Driver_driverId` int NOT NULL,
  `locationType` varchar(45) DEFAULT NULL,
  `Order_idOrder` int NOT NULL,
  PRIMARY KEY (`idLocations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (16,'Ap #170-1752 Quis Av.','-53.2634, 105.45463','Woodward',9692,'Off Campus',1),(25,'P.O. Box 917, 9912 Leo. Rd.','-7.92299, 45.43635','Cone',5509,'On Campus',96),(26,'Ap #525-7229 Eget Avenue','-17.51616, 41.97743','Cone',2849,'Off Campus',8),(29,'6547 Vulputate St.','-46.972, 78.11108','Student Activity Center',4058,'On Campus',53),(40,'306-8305 Sodales. Rd.','59.52386, 158.29232','Woodward',9744,'Off Campus',36),(46,'Ap #620-2766 Luctus Rd.','76.82605, -34.02687','Cone',7684,'On Campus',28),(55,'Ap #390-9725 Non Rd.','82.86464, 141.9199','Atkins Library',4378,'On Campus',94),(56,'P.O. Box 717, 2738 Est, St.','-85.79665, -59.12461','Bioinformatics',4033,'On Campus',13),(78,'Ap #227-6656 Gravida Ave','43.16332, -5.02536','Woodward',2398,'Off Campus',98),(86,'6371 Erat Rd.','-88.59056, 121.31499','Fretwell',4738,'Off Campus',23);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuId` int NOT NULL,
  `restaurantId` int NOT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (213,3),(283,5),(346,2),(353,4),(472,5),(528,9),(558,5),(576,3),(619,4),(661,4),(675,2),(691,6),(709,3),(758,5),(774,10),(776,4),(802,4),(804,7),(908,8),(998,2);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `personId` int NOT NULL,
  `driverId` int NOT NULL,
  PRIMARY KEY (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (5,14,18),(61,857,912),(109,853,472),(138,30,634),(229,979,376),(245,213,349),(263,785,996),(269,349,558),(271,60,949),(327,459,5),(347,389,304),(366,148,480),(386,816,309),(427,177,22),(490,300,706),(517,432,789),(574,322,72),(581,342,752),(602,564,553),(608,789,768),(615,74,636),(627,966,505),(672,264,595),(682,141,179),(684,567,993),(690,723,894),(761,419,915),(879,887,713),(890,842,539),(911,489,283),(985,974,117);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_has_food`
--

DROP TABLE IF EXISTS `order_has_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_has_food` (
  `Order_idOrder` int NOT NULL,
  `Food_foodId` int NOT NULL,
  PRIMARY KEY (`Order_idOrder`,`Food_foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_has_food`
--

LOCK TABLES `order_has_food` WRITE;
/*!40000 ALTER TABLE `order_has_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_has_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `personId` int NOT NULL,
  `personName` varchar(45) NOT NULL,
  `personPhone` int DEFAULT NULL,
  `personEmail` varchar(45) DEFAULT NULL,
  `personRole` varchar(45) DEFAULT NULL,
  `personLocationId` int DEFAULT NULL,
  `Driver_driverId` int NOT NULL,
  PRIMARY KEY (`personId`,`Driver_driverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `idRestaurant` int NOT NULL,
  `nameRestaurant` varchar(45) DEFAULT NULL,
  `addressRestaurant` varchar(100) DEFAULT NULL,
  `phoneRestaurant` int DEFAULT NULL,
  `menuId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRestaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (21,'Vulputate Ltd','255-850 Mauris Rd.',80181,NULL),(3666,'Senectus Et Netus Associates','1793 Nisl St.',56554,NULL),(20926,'Accumsan Laoreet Inc.','9903 Neque Ave',5767,NULL),(47721,'Aliquet Molestie LLC','7953 A Av.',5391,NULL),(55359,'Augue Scelerisque Industries','Ap #640-3424 Rutrum Street',41012,NULL),(60870,'Luctus Ut Pellentesque Institute','4023 Vitae Avenue',5965,NULL),(66915,'Odio Semper PC','Ap #192-6163 Dolor. Rd.',874587,NULL),(70600,'Dui Suspendisse Ac PC','9591 Egestas Ave',4269,NULL),(74801,'Donec Tempus Company','P.O. Box 605, 5525 Lorem Avenue',24580,NULL),(939763,'In Magna Consulting','Ap #860-8276 Id St.',5578,NULL);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'unccdeliveries'
--

--
-- Dumping routines for database 'unccdeliveries'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-14 23:55:50

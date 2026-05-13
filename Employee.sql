CREATE DATABASE IF NOT EXISTS employee; 
USE employee;

-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Patel & Sons','Rajesh Patel','MG Road 123','Ahmedabad','380001','Germany'),(2,'Mumbai Spices','Aisha Khan','Linking Road 55','Mumbai','400001','Mexico'),(3,'Delhi Delights','Anil Mehra','Connaught Place 10','New Delhi','110001','Mexico'),(4,'Chennai Curries','Priya Iyer','Anna Salai 234','Chennai','600002','UK'),(5,'Jaipur Jewels','Manish Singh','MI Road 5','Jaipur','302001','Sweden'),(6,'Punjabi Dhaba','Gurmeet Singh','GT Road 47','Amritsar','143001','Germany'),(7,'Bengal Bites','Saurav Das','Park Street 102','Kolkata','700016','France'),(8,'Kolkata Sweets','Priyanka Bose','Salt Lake 404','Kolkata','700091','Spain'),(9,'Lucknow Kababs','Amit Yadav','Hazratganj 67','Lucknow','226001','France'),(10,'Goan Seafood','Rohit Fernandes','Miramar Beach Rd.','Panaji','403001','Canada'),(11,'Hyderabad Biryani House','Sameer Ali','Charminar Rd. 89','Hyderabad','500002','UK'),(12,'Gujarat Textiles','Kunal Shah','SG Highway 250','Surat','395007','Argentina'),(13,'Kerala Coconut Oil','Latha Nair','Marine Drive 76','Kochi','682011','Mexico'),(14,'Tamil Nadu Snacks','Arvind Krishnan','OMR Road 120','Chennai','600097','Switzerland'),(15,'Rajma Chawal Express','Vikram Bhalla','South Ext. 3','New Delhi','110049','Brazil'),(16,'Udaipur Handicrafts','Sanjay Rathore','Lake Palace Rd.','Udaipur','313001','UK'),(17,'Bangalore Bytes','Shilpa Menon','MG Road 42','Bengaluru','560001','Germany'),(18,'Jaipur Gems','Rohit Malhotra','Amber Rd.','Jaipur','302002','France'),(19,'Indore Chaat','Nidhi Kulkarni','MG Road 108','Indore','452001','UK'),(20,'Ahmedabad Kulfi','Jitesh Patel','S G Highway 55','Ahmedabad','380015','Austria'),(21,'Punjab Sweets','Harpreet Kaur','Mall Road 23','Ludhiana','141001','Brazil'),(22,'Varanasi Silks','Alok Mishra','Assi Ghat 19','Varanasi','221001','Spain'),(23,'Mysore Palace Gifts','Vishal Desai','Palace Rd. 8','Mysuru','570001','France'),(24,'Kolkata Rasgullas','Amitava Sen','Dum Dum 99','Kolkata','700030','Sweden'),(25,'Jodhpur Blue Pottery','Manoj Singh','Clock Tower 3','Jodhpur','342001','Germany'),(26,'Mumbai Dhokla','Bhavesh Mehta','Crawford Market','Mumbai','400003','France'),(27,'Agra Marble','Pankaj Gupta','Taj Ganj','Agra','282001','Italy'),(28,'Sikkim Teas','Nima Sherpa','MG Marg','Gangtok','737101','Portugal'),(29,'Darjeeling Tea House','Prashant Tamang','Mall Rd.','Darjeeling','734101','Spain'),(30,'Chandni Chowk','Ravi Kapoor','Chandni Chowk','New Delhi','110006','Spain'),(31,'Bhopal Biryani','Sunil Khurana','Arera Colony','Bhopal','462016','Brazil'),(32,'Ganga Textiles','Meena Sharma','Civil Lines','Allahabad','211001','USA'),(33,'Meenakshi Jewels','Ravi Kannan','South Car St.','Madurai','625001','Venezuela'),(34,'Rishikesh Rafts','Dev Shukla','Tapovan','Rishikesh','249201','Brazil'),(35,'Goa Beach House','Rita Fernandes','Calangute','Panaji','403001','Venezuela'),(36,'Leh Ladhakh Crafts','Tashi Norbu','Leh Main Market','Leh','194101','USA'),(37,'Shimla Woolens','Kiran Thakur','Mall Rd.','Shimla','171001','Ireland'),(38,'Nagpur Oranges','Anuj Bhatt','Itwari','Nagpur','440002','UK'),(39,'Pondicherry French Cafe','Claude Dass','Rue Dumas','Puducherry','605001','Germany'),(40,'Lucknow Chicken','Rizwan Ali','Aminabad','Lucknow','226004','France'),(41,'Kanpur Chaat','Rajiv Shukla','Naseem Road','Kanpur','208001','France'),(42,'Surat Diamonds','Manoj Jain','Gopi Talav','Surat','395001','Canada'),(43,'Kashmir Pashmina','Fatima Begum','Dal Lake Road','Srinagar','190001','USA'),(44,'Mangalore Fish Curry','Suresh Shetty','Mahatma Gandhi Rd.','Mangalore','575001','Germany'),(45,'Vadodara Vada Pav','Viral Patel','Sayajigunj','Vadodara','390005','USA'),(46,'Raipur Rice','Poonam Verma','Maharana Pratap Chowk','Raipur','492001','Venezuela'),(47,'Nagaland Handlooms','Tashi Rani','Kohima Main Rd.','Kohima','797001','Venezuela'),(48,'Bhuj Kutch Crafts','Amit Dholakia','Bhujodi Village','Bhuj','370001','USA'),(49,'Coorg Coffee','Prasanna Rao','Madikeri Fort','Madikeri','571201','Italy'),(50,'Patiala Shahi','Jagdeep Singh','Bharat Nagar','Patiala','147001','Belgium'),(51,'Ahemdabad Antiques','Vijay Thakkar','Ashram Road','Ahmedabad','380009','Canada'),(52,'Bhagalpur Silk','Anirudh Gupta','Khanjarpur','Bhagalpur','812001','Germany'),(53,'Bihar Litti Chokha','Sanjay Kumar','Patna Junction','Patna','800001','UK'),(54,'Gujarat Pottery','Ravi Mehta','Vasai','Vadodara','390015','Argentina'),(55,'Rajasthan Handicrafts','Suman Jain','Chowki Dhani','Jaipur','302018','USA'),(56,'Bhubaneswar Temples','Manjari Mohapatra','Khandagiri','Bhubaneswar','751030','Germany'),(57,'Ranchi Spices','Arvind Kumar','Karam Toli','Ranchi','834001','France'),(58,'Guwahati Teas','Bikram Dutta','Paltan Bazar','Guwahati','781001','Mexico'),(59,'Visakhapatnam Fish','Ravi Teja','Beach Road','Visakhapatnam','530001','Austria'),(60,'Pune Pastry Shop','Rani Nair','FC Road','Pune','411001','Portugal'),(61,'Coimbatore Textiles','Karthik Ramaswamy','Opp. Bus Stand','Coimbatore','641001','Brazil'),(62,'Vadodara Snacks','Anjali Desai','Ravi Nagar','Vadodara','390004','Brazil'),(63,'Hampi Handlooms','Raghavendra Rao','Hampi Bazaar','Hampi','583239','Germany'),(64,'Bhuj Handicrafts','Nilesh Mehta','Kutch Village','Bhuj','370020','Argentina'),(65,'Alleppey Backwaters','Devika Nair','Lakeside Road','Alleppey','688001','USA'),(66,'Manali Adventure','Ravi Sharma','Mall Road','Manali','175131','Italy'),(67,'Andaman & Nicobar Resorts','Suman Chatterjee','Port Blair','Port Blair','744101','Brazil'),(68,'Bikaner Bhujia','Kamlesh Singh','Bikaner Fort','Bikaner','334001','Switzerland'),(69,'Agra Fort Crafts','Deepak Sharma','Agra Fort Rd.','Agra','282003','Spain'),(70,'Sikkim Adventure','Nima Tamang','Gangtok Mall','Gangtok','737101','Norway'),(71,'Kochi Fort','Sanjay Pillai','Fort Kochi','Kochi','682001','USA'),(72,'Varanasi Crafts','Rohit Singh','Ravidas Ghat','Varanasi','221001','UK'),(73,'Dharamshala Retreat','Sanjeev Sharma','McLeod Ganj','Dharamshala','176219','Denmark'),(74,'Shimla Chocolates','Kiran Mehta','Mall Rd.','Shimla','171001','France'),(75,'Jaisalmer Desert Camp','Rajesh Bhat','Sam Sand Dunes','Jaisalmer','345001','USA'),(76,'Rishikesh Yoga','Radha Sharma','Laxman Jhula','Rishikesh','249304','Belgium'),(77,'Agartala Handlooms','Prabir Dutta','Agartala Main Rd.','Agartala','799001','USA'),(78,'Uttarakhand Honey','Arun Rawat','Dehradun Rd.','Dehradun','248001','USA'),(79,'Chennai Dosa','Gopal Iyer','T. Nagar','Chennai','600017','Germany'),(80,'Mysuru Pak','Veena Prakash','Krishna Raja Market','Mysuru','570004','Mexico'),(81,'Kolkata Mishti','Sanjukta Roy','Bengaluru Rd.','Kolkata','700001','Brazil'),(82,'Lucknow Tunday Kababi','Ali Raza','Hazratganj','Lucknow','226001','USA'),(83,'Delhi Chaat','Nisha Arora','Connaught Place','New Delhi','110001','Denmark'),(84,'Hyderabad Biryani','Rahul Kiran','Macca Masjid','Hyderabad','500001','France'),(85,'Pondicherry French Bakery','Jacques Duval','Beach Road','Pondicherry','605001','France'),(86,'Jodhpur Spices','Priya Jain','Clock Tower','Jodhpur','342001','Germany'),(87,'Kochi Seafood','Anil Varma','Marine Drive','Kochi','682001','Finland'),(88,'Agra Marble Inlay','Arvind Kumar','Taj Ganj','Agra','282001','Brazil'),(89,'Bhopal Handicrafts','Sunita Pandey','Bada Talab','Bhopal','462001','USA'),(90,'Nashik Wines','Vinay Patil','Grape Lane','Nashik','422001','Finland'),(91,'Shillong Bamboo Crafts','Lydia Kharsati','Police Bazar','Shillong','793001','Poland');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Sharma','Amit','1968-12-08','EmpID1.pic','Amit has a degree in psychology from Delhi University and completed a course on sales strategies. He is a member of Toastmasters International.'),(2,'Kumar','Rahul','1952-02-19','EmpID2.pic','Rahul received his MBA in international marketing from the Indian Institute of Management. He is fluent in Hindi and English.'),(3,'Verma','Priya','1963-08-30','EmpID3.pic','Priya holds a B.Sc. in chemistry from Mumbai University and completed a certificate program in retail management.'),(4,'Mehta','Sneha','1958-09-19','EmpID4.pic','Sneha graduated with a BA in English literature from Jadavpur University and has culinary arts training.'),(5,'Patel','Ravi','1955-03-04','EmpID5.pic','Ravi graduated from the University of Edinburgh with a B.Sc. He completed an orientation program in the London office.'),(6,'Singh','Anjali','1963-07-02','EmpID6.pic','Anjali holds an MA in economics from the University of Mumbai and an MBA from UCLA. She is fluent in Hindi and English.'),(7,'Desai','Vijay','1960-05-29','EmpID7.pic','Vijay served in the Indian Army and then pursued a degree in English at Pune University before joining the company.'),(8,'Iyer','Lakshmi','1958-01-09','EmpID8.pic','Lakshmi received her BA in psychology from the University of Delhi and completed a course in business French.'),(9,'Gupta','Neha','1969-07-02','EmpID9.pic','Neha has a BA in English from St. Xavier’s College and is fluent in Hindi and English.'),(10,'Nair','Arjun','1928-09-19','EmpID10.pic','Arjun is a long-time employee with extensive knowledge in various departments.');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,10248,11,12),(2,10248,42,10),(3,10248,72,5),(4,10249,14,9),(5,10249,51,40),(6,10250,41,10),(7,10250,51,35),(8,10250,65,15),(9,10251,22,6),(10,10251,57,15),(11,10251,65,20),(12,10252,20,40),(13,10252,33,25),(14,10252,60,40),(15,10253,31,20),(16,10253,39,42),(17,10253,49,40),(18,10254,24,15),(19,10254,55,21),(20,10254,74,21),(21,10255,2,20),(22,10255,16,35),(23,10255,36,25),(24,10255,59,30),(25,10256,53,15),(26,10256,77,12),(27,10257,27,25),(28,10257,39,6),(29,10257,77,15),(30,10258,2,50),(31,10258,5,65),(32,10258,32,6),(33,10259,21,10),(34,10259,37,1),(35,10260,41,16),(36,10260,57,50),(37,10260,62,15),(38,10260,70,21),(39,10261,21,20),(40,10261,35,20),(41,10262,5,12),(42,10262,7,15),(43,10262,56,2),(44,10263,16,60),(45,10263,24,28),(46,10263,30,60),(47,10263,74,36),(48,10264,2,35),(49,10264,41,25),(50,10265,17,30),(51,10265,70,20),(52,10266,12,12),(53,10267,40,50),(54,10267,59,70),(55,10267,76,15),(56,10268,29,10),(57,10268,72,4),(58,10269,33,60),(59,10269,72,20),(60,10270,36,30),(61,10270,43,25),(62,10271,33,24),(63,10272,20,6),(64,10272,31,40),(65,10272,72,24),(66,10273,10,24),(67,10273,31,15),(68,10273,33,20),(69,10273,40,60),(70,10273,76,33),(71,10274,71,20),(72,10274,72,7),(73,10275,24,12),(74,10275,59,6),(75,10276,10,15),(76,10276,13,10),(77,10277,28,20),(78,10277,62,12),(79,10278,44,16),(80,10278,59,15),(81,10278,63,8),(82,10278,73,25),(83,10279,17,15),(84,10280,24,12),(85,10280,55,20),(86,10280,75,30),(87,10281,19,1),(88,10281,24,6),(89,10281,35,4),(90,10282,30,6),(91,10282,57,2),(92,10283,15,20),(93,10283,19,18),(94,10283,60,35),(95,10283,72,3),(96,10284,27,15),(97,10284,44,21),(98,10284,60,20),(99,10284,67,5),(100,10285,1,45),(101,10285,40,40),(102,10285,53,36),(103,10286,35,100),(104,10286,62,40),(105,10287,16,40),(106,10287,34,20),(107,10287,46,15),(108,10288,54,10),(109,10288,68,3),(110,10289,3,30),(111,10289,64,9),(112,10290,5,20),(113,10290,29,15),(114,10290,49,15),(115,10290,77,10),(116,10291,13,20),(117,10291,44,24),(118,10291,51,2),(119,10292,20,20),(120,10293,18,12),(121,10293,24,10),(122,10293,63,5),(123,10293,75,6),(124,10294,1,18),(125,10294,17,15),(126,10294,43,15),(127,10294,60,21),(128,10294,75,6),(129,10295,56,4),(130,10296,11,12),(131,10296,16,30),(132,10296,69,15),(133,10297,39,60),(134,10297,72,20),(135,10298,2,40),(136,10298,36,40),(137,10298,59,30),(138,10298,62,15),(139,10299,19,15),(140,10299,70,20),(141,10300,66,30),(142,10300,68,20),(143,10301,40,10),(144,10301,56,20),(145,10302,17,40),(146,10302,28,28),(147,10302,43,12),(148,10303,40,40),(149,10303,65,30),(150,10303,68,15),(151,10304,49,30),(152,10304,59,10),(153,10304,71,2),(154,10305,18,25),(155,10305,29,25),(156,10305,39,30),(157,10306,30,10),(158,10306,53,10),(159,10306,54,5),(160,10307,62,10),(161,10307,68,3),(162,10308,69,1),(163,10308,70,5),(164,10309,4,20),(165,10309,6,30),(166,10309,42,2),(167,10309,43,20),(168,10309,71,3),(169,10310,16,10),(170,10310,62,5),(171,10311,42,6),(172,10311,69,7),(173,10312,28,4),(174,10312,43,24),(175,10312,53,20),(176,10312,75,10),(177,10313,36,12),(178,10314,32,40),(179,10314,58,30),(180,10314,62,25),(181,10315,34,14),(182,10315,70,30),(183,10316,41,10),(184,10316,62,70),(185,10317,1,20),(186,10318,41,20),(187,10318,76,6),(188,10319,17,8),(189,10319,28,14),(190,10319,76,30),(191,10320,71,30),(192,10321,35,10),(193,10322,52,20),(194,10323,15,5),(195,10323,25,4),(196,10323,39,4),(197,10324,16,21),(198,10324,35,70),(199,10324,46,30),(200,10324,59,40),(201,10324,63,80),(202,10325,6,6),(203,10325,13,12),(204,10325,14,9),(205,10325,31,4),(206,10325,72,40),(207,10326,4,24),(208,10326,57,16),(209,10326,75,50),(210,10327,2,25),(211,10327,11,50),(212,10327,30,35),(213,10327,58,30),(214,10328,59,9),(215,10328,65,40),(216,10328,68,10),(217,10329,19,10),(218,10329,30,8),(219,10329,38,20),(220,10329,56,12),(221,10330,26,50),(222,10330,72,25),(223,10331,54,15),(224,10332,18,40),(225,10332,42,10),(226,10332,47,16),(227,10333,14,10),(228,10333,21,10),(229,10333,71,40),(230,10334,52,8),(231,10334,68,10),(232,10335,2,7),(233,10335,31,25),(234,10335,32,6),(235,10335,51,48),(236,10336,4,18),(237,10337,23,40),(238,10337,26,24),(239,10337,36,20),(240,10337,37,28),(241,10337,72,25),(242,10338,17,20),(243,10338,30,15),(244,10339,4,10),(245,10339,17,70),(246,10339,62,28),(247,10340,18,20),(248,10340,41,12),(249,10340,43,40),(250,10341,33,8),(251,10341,59,9),(252,10342,2,24),(253,10342,31,56),(254,10342,36,40),(255,10342,55,40),(256,10343,64,50),(257,10343,68,4),(258,10343,76,15),(259,10344,4,35),(260,10344,8,70),(261,10345,8,70),(262,10345,19,80),(263,10345,42,9),(264,10346,17,36),(265,10346,56,20),(266,10347,25,10),(267,10347,39,50),(268,10347,40,4),(269,10347,75,6),(270,10348,1,15),(271,10348,23,25),(272,10349,54,24),(273,10350,50,15),(274,10350,69,18),(275,10351,38,20),(276,10351,41,13),(277,10351,44,77),(278,10351,65,10),(279,10352,24,10),(280,10352,54,20),(281,10353,11,12),(282,10353,38,50),(283,10354,1,12),(284,10354,29,4),(285,10355,24,25),(286,10355,57,25),(287,10356,31,30),(288,10356,55,12),(289,10356,69,20),(290,10357,10,30),(291,10357,26,16),(292,10357,60,8),(293,10358,24,10),(294,10358,34,10),(295,10358,36,20),(296,10359,16,56),(297,10359,31,70),(298,10359,60,80),(299,10360,28,30),(300,10360,29,35),(301,10360,38,10),(302,10360,49,35),(303,10360,54,28),(304,10361,39,54),(305,10361,60,55),(306,10362,25,50),(307,10362,51,20),(308,10362,54,24),(309,10363,31,20),(310,10363,75,12),(311,10363,76,12),(312,10364,69,30),(313,10364,71,5),(314,10365,11,24),(315,10366,65,5),(316,10366,77,5),(317,10367,34,36),(318,10367,54,18),(319,10367,65,15),(320,10367,77,7),(321,10368,21,5),(322,10368,28,13),(323,10368,57,25),(324,10368,64,35),(325,10369,29,20),(326,10369,56,18),(327,10370,1,15),(328,10370,64,30),(329,10370,74,20),(330,10371,36,6),(331,10372,20,12),(332,10372,38,40),(333,10372,60,70),(334,10372,72,42),(335,10373,58,80),(336,10373,71,50),(337,10374,31,30),(338,10374,58,15),(339,10375,14,15),(340,10375,54,10),(341,10376,31,42),(342,10377,28,20),(343,10377,39,20),(344,10378,71,6),(345,10379,41,8),(346,10379,63,16),(347,10379,65,20),(348,10380,30,18),(349,10380,53,20),(350,10380,60,6),(351,10380,70,30),(352,10381,74,14),(353,10382,5,32),(354,10382,18,9),(355,10382,29,14),(356,10382,33,60),(357,10382,74,50),(358,10383,13,20),(359,10383,50,15),(360,10383,56,20),(361,10384,20,28),(362,10384,60,15),(363,10385,7,10),(364,10385,60,20),(365,10385,68,8),(366,10386,24,15),(367,10386,34,10),(368,10387,24,15),(369,10387,28,6),(370,10387,59,12),(371,10387,71,15),(372,10388,45,15),(373,10388,52,20),(374,10388,53,40),(375,10389,10,16),(376,10389,55,15),(377,10389,62,20),(378,10389,70,30),(379,10390,31,60),(380,10390,35,40),(381,10390,46,45),(382,10390,72,24),(383,10391,13,18),(384,10392,69,50),(385,10393,2,25),(386,10393,14,42),(387,10393,25,7),(388,10393,26,70),(389,10393,31,32),(390,10394,13,10),(391,10394,62,10),(392,10395,46,28),(393,10395,53,70),(394,10395,69,8),(395,10396,23,40),(396,10396,71,60),(397,10396,72,21),(398,10397,21,10),(399,10397,51,18),(400,10398,35,30),(401,10398,55,120),(402,10399,68,60),(403,10399,71,30),(404,10399,76,35),(405,10399,77,14),(406,10400,29,21),(407,10400,35,35),(408,10400,49,30),(409,10401,30,18),(410,10401,56,70),(411,10401,65,20),(412,10401,71,60),(413,10402,23,60),(414,10402,63,65),(415,10403,16,21),(416,10403,48,70),(417,10404,26,30),(418,10404,42,40),(419,10404,49,30),(420,10405,3,50),(421,10406,1,10),(422,10406,21,30),(423,10406,28,42),(424,10406,36,5),(425,10406,40,2),(426,10407,11,30),(427,10407,69,15),(428,10407,71,15),(429,10408,37,10),(430,10408,54,6),(431,10408,62,35),(432,10409,14,12),(433,10409,21,12),(434,10410,33,49),(435,10410,59,16),(436,10411,41,25),(437,10411,44,40),(438,10411,59,9),(439,10412,14,20),(440,10413,1,24),(441,10413,62,40),(442,10413,76,14),(443,10414,19,18),(444,10414,33,50),(445,10415,17,2),(446,10415,33,20),(447,10416,19,20),(448,10416,53,10),(449,10416,57,20),(450,10417,38,50),(451,10417,46,2),(452,10417,68,36),(453,10417,77,35),(454,10418,2,60),(455,10418,47,55),(456,10418,61,16),(457,10418,74,15),(458,10419,60,60),(459,10419,69,20),(460,10420,9,20),(461,10420,13,2),(462,10420,70,8),(463,10420,73,20),(464,10421,19,4),(465,10421,26,30),(466,10421,53,15),(467,10421,77,10),(468,10422,26,2),(469,10423,31,14),(470,10423,59,20),(471,10424,35,60),(472,10424,38,49),(473,10424,68,30),(474,10425,55,10),(475,10425,76,20),(476,10426,56,5),(477,10426,64,7),(478,10427,14,35),(479,10428,46,20),(480,10429,50,40),(481,10429,63,35),(482,10430,17,45),(483,10430,21,50),(484,10430,56,30),(485,10430,59,70),(486,10431,17,50),(487,10431,40,50),(488,10431,47,30),(489,10432,26,10),(490,10432,54,40),(491,10433,56,28),(492,10434,11,6),(493,10434,76,18),(494,10435,2,10),(495,10435,22,12),(496,10435,72,10),(497,10436,46,5),(498,10436,56,40),(499,10436,64,30),(500,10436,75,24),(501,10437,53,15),(502,10438,19,15),(503,10438,34,20),(504,10438,57,15),(505,10439,12,15),(506,10439,16,16),(507,10439,64,6),(508,10439,74,30),(509,10440,2,45),(510,10440,16,49),(511,10440,29,24),(512,10440,61,90),(513,10441,27,50),(514,10442,11,30),(515,10442,54,80),(516,10442,66,60),(517,10443,11,6),(518,10443,28,12);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipperID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `ShipperID` (`ShipperID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=10444 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10248,90,5,'1996-07-04',3),(10249,81,6,'1996-07-05',1),(10250,34,4,'1996-07-08',2),(10251,84,3,'1996-07-08',1),(10252,76,4,'1996-07-09',2),(10253,34,3,'1996-07-10',2),(10254,14,5,'1996-07-11',2),(10255,68,9,'1996-07-12',3),(10256,88,3,'1996-07-15',2),(10257,35,4,'1996-07-16',3),(10258,20,1,'1996-07-17',1),(10259,13,4,'1996-07-18',3),(10260,55,4,'1996-07-19',1),(10261,61,4,'1996-07-19',2),(10262,65,8,'1996-07-22',3),(10263,20,9,'1996-07-23',3),(10264,24,6,'1996-07-24',3),(10265,7,2,'1996-07-25',1),(10266,87,3,'1996-07-26',3),(10267,25,4,'1996-07-29',1),(10268,33,8,'1996-07-30',3),(10269,89,5,'1996-07-31',1),(10270,87,1,'1996-08-01',1),(10271,75,6,'1996-08-01',2),(10272,65,6,'1996-08-02',2),(10273,63,3,'1996-08-05',3),(10274,85,6,'1996-08-06',1),(10275,49,1,'1996-08-07',1),(10276,80,8,'1996-08-08',3),(10277,52,2,'1996-08-09',3),(10278,5,8,'1996-08-12',2),(10279,44,8,'1996-08-13',2),(10280,5,2,'1996-08-14',1),(10281,69,4,'1996-08-14',1),(10282,69,4,'1996-08-15',1),(10283,46,3,'1996-08-16',3),(10284,44,4,'1996-08-19',1),(10285,63,1,'1996-08-20',2),(10286,63,8,'1996-08-21',3),(10287,67,8,'1996-08-22',3),(10288,66,4,'1996-08-23',1),(10289,11,7,'1996-08-26',3),(10290,15,8,'1996-08-27',1),(10291,61,6,'1996-08-27',2),(10292,81,1,'1996-08-28',2),(10293,80,1,'1996-08-29',3),(10294,65,4,'1996-08-30',2),(10295,85,2,'1996-09-02',2),(10296,46,6,'1996-09-03',1),(10297,7,5,'1996-09-04',2),(10298,37,6,'1996-09-05',2),(10299,67,4,'1996-09-06',2),(10300,49,2,'1996-09-09',2),(10301,86,8,'1996-09-09',2),(10302,76,4,'1996-09-10',2),(10303,30,7,'1996-09-11',2),(10304,80,1,'1996-09-12',2),(10305,55,8,'1996-09-13',3),(10306,69,1,'1996-09-16',3),(10307,48,2,'1996-09-17',2),(10308,2,7,'1996-09-18',3),(10309,37,3,'1996-09-19',1),(10310,77,8,'1996-09-20',2),(10311,18,1,'1996-09-20',3),(10312,86,2,'1996-09-23',2),(10313,63,2,'1996-09-24',2),(10314,65,1,'1996-09-25',2),(10315,38,4,'1996-09-26',2),(10316,65,1,'1996-09-27',3),(10317,48,6,'1996-09-30',1),(10318,38,8,'1996-10-01',2),(10319,80,7,'1996-10-02',3),(10320,87,5,'1996-10-03',3),(10321,38,3,'1996-10-03',2),(10322,58,7,'1996-10-04',3),(10323,39,4,'1996-10-07',1),(10324,71,9,'1996-10-08',1),(10325,39,1,'1996-10-09',3),(10326,8,4,'1996-10-10',2),(10327,24,2,'1996-10-11',1),(10328,28,4,'1996-10-14',3),(10329,75,4,'1996-10-15',2),(10330,46,3,'1996-10-16',1),(10331,9,9,'1996-10-16',1),(10332,51,3,'1996-10-17',2),(10333,87,5,'1996-10-18',3),(10334,84,8,'1996-10-21',2),(10335,37,7,'1996-10-22',2),(10336,60,7,'1996-10-23',2),(10337,25,4,'1996-10-24',3),(10338,55,4,'1996-10-25',3),(10339,51,2,'1996-10-28',2),(10340,9,1,'1996-10-29',3),(10341,73,7,'1996-10-29',3),(10342,25,4,'1996-10-30',2),(10343,44,4,'1996-10-31',1),(10344,89,4,'1996-11-01',2),(10345,63,2,'1996-11-04',2),(10346,65,3,'1996-11-05',3),(10347,21,4,'1996-11-06',3),(10348,86,4,'1996-11-07',2),(10349,75,7,'1996-11-08',1),(10350,41,6,'1996-11-11',2),(10351,20,1,'1996-11-11',1),(10352,28,3,'1996-11-12',3),(10353,59,7,'1996-11-13',3),(10354,58,8,'1996-11-14',3),(10355,4,6,'1996-11-15',1),(10356,86,6,'1996-11-18',2),(10357,46,1,'1996-11-19',3),(10358,41,5,'1996-11-20',1),(10359,72,5,'1996-11-21',3),(10360,7,4,'1996-11-22',3),(10361,63,1,'1996-11-22',2),(10362,9,3,'1996-11-25',1),(10363,17,4,'1996-11-26',3),(10364,19,1,'1996-11-26',1),(10365,3,3,'1996-11-27',2),(10366,29,8,'1996-11-28',2),(10367,83,7,'1996-11-28',3),(10368,20,2,'1996-11-29',2),(10369,75,8,'1996-12-02',2),(10370,14,6,'1996-12-03',2),(10371,41,1,'1996-12-03',1),(10372,62,5,'1996-12-04',2),(10373,37,4,'1996-12-05',3),(10374,91,1,'1996-12-05',3),(10375,36,3,'1996-12-06',2),(10376,51,1,'1996-12-09',2),(10377,72,1,'1996-12-09',3),(10378,24,5,'1996-12-10',3),(10379,61,2,'1996-12-11',1),(10380,37,8,'1996-12-12',3),(10381,46,3,'1996-12-12',3),(10382,20,4,'1996-12-13',1),(10383,4,8,'1996-12-16',3),(10384,5,3,'1996-12-16',3),(10385,75,1,'1996-12-17',2),(10386,21,9,'1996-12-18',3),(10387,70,1,'1996-12-18',2),(10388,72,2,'1996-12-19',1),(10389,10,4,'1996-12-20',2),(10390,20,6,'1996-12-23',1),(10391,17,3,'1996-12-23',3),(10392,59,2,'1996-12-24',3),(10393,71,1,'1996-12-25',3),(10394,36,1,'1996-12-25',3),(10395,35,6,'1996-12-26',1),(10396,25,1,'1996-12-27',3),(10397,60,5,'1996-12-27',1),(10398,71,2,'1996-12-30',3),(10399,83,8,'1996-12-31',3),(10400,19,1,'1997-01-01',3),(10401,65,1,'1997-01-01',1),(10402,20,8,'1997-01-02',2),(10403,20,4,'1997-01-03',3),(10404,49,2,'1997-01-03',1),(10405,47,1,'1997-01-06',1),(10406,62,7,'1997-01-07',1),(10407,56,2,'1997-01-07',2),(10408,23,8,'1997-01-08',1),(10409,54,3,'1997-01-09',1),(10410,10,3,'1997-01-10',3),(10411,10,9,'1997-01-10',3),(10412,87,8,'1997-01-13',2),(10413,41,3,'1997-01-14',2),(10414,21,2,'1997-01-14',3),(10415,36,3,'1997-01-15',1),(10416,87,8,'1997-01-16',3),(10417,73,4,'1997-01-16',3),(10418,63,4,'1997-01-17',1),(10419,68,4,'1997-01-20',2),(10420,88,3,'1997-01-21',1),(10421,61,8,'1997-01-21',1),(10422,27,2,'1997-01-22',1),(10423,31,6,'1997-01-23',3),(10424,51,7,'1997-01-23',2),(10425,41,6,'1997-01-24',2),(10426,29,4,'1997-01-27',1),(10427,59,4,'1997-01-27',2),(10428,66,7,'1997-01-28',1),(10429,37,3,'1997-01-29',2),(10430,20,4,'1997-01-30',1),(10431,10,4,'1997-01-30',2),(10432,75,3,'1997-01-31',2),(10433,60,3,'1997-02-03',3),(10434,24,3,'1997-02-03',2),(10435,16,8,'1997-02-04',2),(10436,7,3,'1997-02-05',2),(10437,87,8,'1997-02-05',1),(10438,79,3,'1997-02-06',2),(10439,51,6,'1997-02-07',3),(10440,71,4,'1997-02-10',2),(10441,55,3,'1997-02-10',2),(10442,20,3,'1997-02-11',2),(10443,66,8,'1997-02-12',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `Unit` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chai',1,1,'20 bags',18),(2,'Pakode',1,1,'5 kg',19),(3,'Samosa',1,2,'3 kg',10),(4,'Paneer Tikka',2,2,'6 jars',22),(5,'Butter Chicken',2,2,'36 boxes',21.35),(6,'Dal Makhani',3,2,'12 jars',25),(7,'Rajma',3,7,'12 pkgs.',30),(8,'Aloo Gobi',3,2,'12 jars',40),(9,'Chawal',4,6,'18 pkgs.',97),(10,'Pulav',4,8,'12 jars',31),(11,'Biryani',5,4,'1 kg',21),(12,'Roti',5,4,'10 pkgs.',38),(13,'Naan',6,8,'48 pieces',6),(14,'Paratha',6,7,'40 pkgs.',23.25),(15,'Payas',6,2,'24 bottles',15.5),(16,'Rasgulla',7,3,'32 boxes',17.45),(17,'Gulab Jamun',7,6,'20 tins',39),(18,'Kheer',7,8,'16 kg',62.5),(19,'Kulfi',8,3,'12 pieces',9.2),(20,'Ladoo',8,3,'30 gift boxes',81),(21,'Chutney',8,3,'24 pkgs.',10),(22,'Masala Chai',9,5,'24 pkgs.',21),(23,'Dahi',9,5,'12 pkgs.',9),(24,'Raita',10,1,'12 cans',4.5),(25,'Salam',11,3,'20 glasses',14),(26,'Kadhi',11,3,'100 bags',31.23),(27,'Khichdi',11,3,'100 pieces',43.9),(28,'Paneer Bhurji',12,7,'25 cans',45.6),(29,'Chole Masala',12,6,'50 bags',123.79),(30,'Matar Pulav',13,8,'10 glasses',25.89),(31,'Poha',14,4,'12 pkgs.',12.5),(32,'Upma',14,4,'24 pkgs.',32),(33,'Achar',15,4,'500 g',2.5),(34,'Bhindi',16,1,'24 bottles',14),(35,'Gajar ka Halwa',16,1,'24 bottles',18),(36,'Dal Tadka',17,8,'24 jars',19),(37,'Masaledar Aloo',17,8,'12 pkgs.',26),(38,'Bedmi Puri',18,1,'12 bottles',263.5),(39,'Soup',18,1,'24 tins',18),(40,'Biryani Patte',19,8,'12 cans',18.4),(41,'Bhune Chane',19,8,'32 pkgs.',9.65),(42,'Tandoori Chicken',20,5,'16 tins',14),(43,'Pakode Chaat',20,1,'20 bags',46),(44,'Masala Popcorn',20,2,'20 bags',19.45),(45,'Pizza',21,8,'1 kg',9.5),(46,'Dahi Bhalla',21,8,'4 glasses',12),(47,'Kachori',22,3,'10 boxes',9.5),(48,'Super Hot Chutney',22,3,'10 pkgs.',12.75),(49,'Tawa Pulav',23,3,'24 pkgs.',20),(50,'Falooda',23,3,'12 bars',16.25),(51,'Aam ki Laouz',24,7,'50 pkgs.',53),(52,'Kashmiri Paneer',24,5,'16 boxes',7),(53,'Kulcha',24,6,'48 pieces',32.8),(54,'Paneer Pakoda',25,6,'16 pies',7.45),(55,'Patte Wali Sabzi',25,6,'24 boxes',24),(56,'Nashtay ke liye Ande',26,5,'24 pkgs.',38),(57,'Rotiyon ki Thali',26,5,'24 pkgs.',19.5),(58,'Chole Bhature',27,8,'24 pieces',13.25),(59,'Sev Puri',28,4,'5 kg',55),(60,'Lauki ka Halwa',28,4,'15 rounds',34),(61,'Jalebi',29,2,'24 bottles',28.5),(62,'Sambar',29,3,'48 pieces',49.3),(63,'Pyaaz Kachori',7,2,'15 jars',43.9),(64,'Aloo Matar',12,5,'20 bags',33.25),(65,'Pathari Chawal',2,2,'24 bottles',21.05),(66,'Sarve Chaat',2,2,'24 jars',17),(67,'Savani Barfi',16,1,'24 bottles',14),(68,'Paneer Hakka',8,3,'8 pieces',12.5),(69,'Chatpata Puchka',15,4,'10 kg',36),(70,'Omelette',7,1,'24 bottles',15),(71,'Big Bread',15,4,'10 pkgs.',21.5),(72,'Dhi Chawal',14,4,'24 pkgs.',34.8),(73,'Fruit Chaat',17,8,'24 jars',15),(74,'Boondi',4,7,'5 kg',10),(75,'Papdi',12,1,'500 ml',7.75),(76,'Shahi Tukda',23,1,'500 ml',18),(77,'Vada Pav',12,2,'12 boxes',13);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `ShipperID` int NOT NULL AUTO_INCREMENT,
  `ShipperName` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Desi Spices','Ravi Sharma','49 MG Road','Mumbai','400001','UK','9876543210'),(2,'Biryani Hub','Sita Verma','P.O. Box 78934','Hyderabad','500034','USA','8765432109'),(3,'Aunty Jaya Kitchen','Jaya Mehta','707 Dadar Rd','Mumbai','400014','USA','7654321098'),(4,'Delhi Tandoori','Rahul Kapoor','9 Connaught Place','Delhi','110001','Japan','6543210987'),(5,'Chaat Junction','Amit Singh','Calle del Chaat 4','Agra','282001','Spain','5432109876'),(6,'Sushi India','Nina Patel','92 MG Road','Bangalore','560001','Japan','4321098765'),(7,'Curry Leaves','Karan Joshi','74 Baner Road','Pune','411045','Australia','3210987654'),(8,'Sweet Treats','Anjali Rao','29 Brigade Road','Bangalore','560025','UK','2109876543'),(9,'Knack Bread','Vikram Das','Kaloadagatan 13','Kolkata','700001','Sweden','1098765432'),(10,'Fresh Juices','Rohit Gupta','Av. das Juices 12','Chennai','600001','Brazil','0987654321'),(11,'Sweet Delights','Priya Nair','5 Shanti Niketan','Delhi','110021','Germany','9876543210'),(12,'Green Grocers','Sanjay Kumar','51 Anand Niketan','Delhi','110021','Germany','8765432109'),(13,'Ocean Fisheries','Manoj Verma','112 Marine Drive','Mumbai','400020','Germany','7654321098'),(14,'Cheese Factory','Sunil Rao','75 Cheese Lane','Pune','411027','Italy','6543210987'),(15,'Dairy Products','Reema Shah','5 Shanti Niketan','Ahmedabad','380001','Norway','5432109876'),(16,'Brewery Town','Ravi Soni','3400 8th Avenue Suite 210','Bhopal','462001','USA','4321098765'),(17,'Fishery Delight','Rahul Bhat','231 Fishermen Lane','Visakhapatnam','530001','Sweden','3210987654'),(18,'Joyful Eats','Priya Iyer','203 Sector 4','Noida','201301','France','2109876543'),(19,'Seafood House','Raghav Mehta','2100 Revere Blvd','Chennai','600034','USA','1098765432'),(20,'Lemon Trading','Chandni Leka','471 Serangoon Loop Suite 402','Kochi','682018','Singapore','0987654321'),(21,'Fish Market','Nikhil Sharma','Fishery Road 10','Goa','403001','Denmark','9876543210'),(22,'Sweet Factory','Anjali Bhat','22 Sugar Street','Pune','411037','Netherlands','8765432109'),(23,'Snack Company','Shreya Shetty','12 Snacker Street','Surat','395001','Finland','7654321098'),(24,'Mate India','Wendy Singh','170 Prince Edward Parade','Delhi','110030','Australia','6543210987'),(25,'My Home','Jean Kumar','2960 Patel Street','Mumbai','400035','Canada','5432109876'),(26,'Pasta Place','Gaurav Mehta','153 Gelsomini Street','Chennai','600028','Italy','4321098765'),(27,'Nougat House','Maya Chatterjee','22 Sweet Lane','Kolkata','700028','France','3210987654'),(28,'Gai Snacks','Eliana Rao','Bat B 3 Sweet Street','Hyderabad','500028','France','2109876543'),(29,'Maple Farms','Chantal Gupta','148 Sweet Lane','Jaipur','302001','Canada','1098765432');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 11:18:26

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
flush privileges;


DROP DATABASE group_analytics;
CREATE DATABASE group_analytics;
USE group_analytics;



CREATE DATABASE  IF NOT EXISTS `group_analytics` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `group_analytics`;
-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: group_analytics
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action_session`
--

DROP TABLE IF EXISTS `action_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `action_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `action_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_action_sess_action_idx` (`id_action`),
  KEY `fk_action_sess_session_idx` (`id_session`),
  CONSTRAINT `fk_action_sess_action` FOREIGN KEY (`id_action`) REFERENCES `actions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_action_sess_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_session`
--

LOCK TABLES `action_session` WRITE;
/*!40000 ALTER TABLE `action_session` DISABLE KEYS */;
INSERT INTO `action_session` VALUES (17,108,98,'Anginine'),(18,108,100,'Attach NIBP'),(19,108,8,'Session started'),(20,109,98,'Anginine'),(21,109,38,'Ask for help'),(22,109,40,'Start CPR'),(23,109,41,'Stop CPR'),(24,109,116,'Ventilation'),(27,109,140,'Writing charts'),(28,109,148,'Pain assessment'),(29,110,38,'Ask for help'),(30,110,149,'Airway assessment'),(31,110,116,'Ventilation'),(32,110,140,'Writing charts'),(33,110,101,'Measure blood pressure'),(34,111,149,'Airway assessment'),(35,111,98,'Anginine'),(36,111,38,'Ask for help'),(37,111,2,'Attach 3-lead ECG'),(38,111,100,'Attach NIBP'),(39,111,1,'Attach pulse oximeter'),(40,112,149,'Airway assessment'),(41,112,98,'Anginine'),(42,112,38,'Ask for help'),(43,112,2,'Attach 3-lead ECG'),(48,113,150,'Vital signs assessment'),(49,113,151,'head tilt/chin'),(50,113,152,'Guedel\'s airway'),(51,113,153,'IV medication'),(52,113,148,'Pain assessment'),(53,113,155,'explain patient status'),(54,113,154,'preparing paperwork'),(55,113,156,'handing over'),(56,113,157,'Breathing-Obstructed'),(57,113,158,'Abdominal pain+Hypertension'),(58,113,159,'Abdominal pain'),(59,113,160,'Nauseous+Hypotension'),(60,113,161,'Recover'),(61,114,159,'Abdominal pain'),(62,114,155,'explain patient status'),(63,114,152,'Guedel\'s airway'),(64,114,156,'handing over'),(65,114,151,'head tilt/chin'),(66,114,158,'Abdominal Pain+Hypertension'),(67,114,157,'Breathing-Obstructed'),(68,114,153,'IV medication'),(69,114,160,'Nauseous+Hypotension'),(70,114,148,'Pain assessment'),(71,114,154,'preparing paperwork'),(72,114,161,'Recover'),(73,114,150,'Vital signs assessment'),(74,115,159,'Abdominal pain'),(75,115,155,'explain patient status'),(76,115,152,'Guedel\'s airway'),(77,115,156,'handing over'),(78,115,151,'head tilt/chin'),(79,115,158,'Abdominal pain+Hypertension'),(80,115,157,'Breathing-Observed'),(81,115,153,'IV medication'),(82,115,160,'Nauseous+Hypotension'),(83,115,148,'Pain assessment'),(84,115,154,'preparing paperwork'),(85,115,161,'Recover'),(86,115,150,'Vital signs assessment'),(87,116,159,'Abdominal pain'),(88,116,155,'explain patient status'),(89,116,152,'Guedel\'s airway'),(90,116,156,'handing over'),(91,116,151,'head tilt/chin'),(92,116,158,'Abdominal Pain + Hypertension'),(93,116,157,'Breathing-Obstructed'),(94,116,153,'IV medication'),(95,116,160,'Nauseous + Hypotension'),(96,116,148,'Pain assessment'),(97,116,154,'preparing paperwork'),(98,116,161,'Recover'),(99,116,150,'Vital signs assessment'),(100,116,162,'Check fluids'),(101,116,163,'Talk to the doctor'),(102,116,164,'Sucction Secretions'),(103,116,165,'Explanation to students'),(104,116,167,'Urine output'),(105,117,159,'Abdominal pain'),(106,117,162,'Check fluids'),(107,117,155,'explain patient status'),(108,117,152,'Guedel\'s airway'),(109,117,156,'handing over'),(110,117,151,'head tilt/chin'),(111,117,158,'Abdominal pain + Hypertension'),(112,117,157,'Breathing-Obstructed'),(113,117,153,'IV medication'),(114,117,160,'Nauseous + Hypotension'),(115,117,148,'Pain assessment'),(116,117,154,'preparing paperwork'),(117,117,161,'Recover'),(118,117,164,'Sucction Secretions'),(119,117,163,'Talk to the doctor'),(120,117,167,'Urine output'),(121,117,150,'Vital signs assessment'),(122,117,168,'Adding oxygen therapy'),(123,117,165,'Explanation to students'),(124,118,159,'Abdominal pain'),(125,118,168,'Adding oxygen therapy'),(126,118,149,'Airway assessment'),(127,118,162,'Check fluids'),(128,118,155,'explain patient status'),(129,118,165,'Explanation to students'),(130,118,152,'Guedel\'s airway'),(131,118,156,'handing over'),(132,118,151,'head tilt/chin'),(133,118,158,'Abdominal pain + Hypertension'),(134,118,157,'Breathing-Obstructed'),(136,118,169,'IV medication Fentanyl'),(137,118,170,'IV medication Ondansetron'),(138,118,160,'Nauseous + Hypotension'),(139,118,148,'Pain assessment'),(140,118,154,'preparing paperwork'),(141,118,161,'Recover'),(142,118,164,'Sucction Secretions'),(143,118,150,'Vital signs assessment'),(144,118,140,'Writing charts'),(145,118,171,'Warm the patient'),(146,119,159,'Abdominal pain'),(147,119,168,'Adding oxygen therapy'),(148,119,149,'Airway assessment'),(149,119,162,'Check fluids'),(150,119,155,'explain patient status'),(151,119,165,'Explanation to students'),(152,119,152,'Guedel\'s airway'),(153,119,156,'handing over'),(154,119,151,'head tilt/chin'),(155,119,158,'Hypertension'),(156,119,157,'Breathing-Obstructed'),(157,119,169,'IV medication Fentanyl'),(158,119,170,'IV medication Ondansetron'),(159,119,160,'Nauseous+Hypotension'),(160,119,148,'Pain assessment'),(161,119,154,'preparing paperwork'),(162,119,161,'Recover'),(163,119,164,'Sucction Secretions'),(164,119,150,'Vital signs assessment'),(165,119,140,'Writing charts'),(166,120,159,'Abdominal pain'),(167,120,149,'Airway assessment'),(168,120,98,'Anginine'),(169,122,101,'Measure blood pressure'),(170,122,97,'Oxygen device'),(171,122,140,'Writing charts'),(172,122,2,'Attach 3-lead ECG'),(173,122,132,'Call doctor'),(174,122,172,'IV Fluid Antibiotic'),(175,122,173,'Stop IV Fluids'),(176,122,174,'Preparing Fluids'),(177,122,175,'Chest Tightness'),(179,122,161,'Recover'),(180,123,2,'Attach 3-lead ECG'),(181,123,132,'Call doctor'),(182,123,175,'Chest Tightness'),(183,123,172,'IV Fluid Antibiotic'),(184,123,101,'Measure blood pressure'),(185,123,97,'Oxygen device'),(186,123,174,'Preparing Fluids'),(187,123,161,'Recover'),(188,123,173,'Stop IV Fluids'),(189,123,140,'Writing charts'),(190,124,2,'Attach 3-lead ECG'),(191,124,132,'Call doctor'),(192,124,175,'Chest Tightness'),(194,124,172,'IV Fluid Antibiotic'),(195,124,101,'Measure blood pressure'),(196,124,97,'Oxygen device'),(197,124,174,'Preparing Fluids'),(198,124,161,'Recover'),(199,124,173,'Stop IV Fluids'),(200,124,140,'Writing charts'),(201,124,150,'Vital signs assessment'),(202,122,150,'Vital signs assessment'),(203,122,176,'Chest Tightness and Erythematous torso rash'),(205,124,177,'Erythematous torso rash'),(206,122,165,'Explanation to students'),(207,122,178,'Reading Clinical History'),(208,122,179,'Reading Books'),(209,122,177,'Erythematous torso rash'),(210,123,177,'Erythematous torso rash'),(211,123,165,'Explanation to students'),(212,123,179,'Reading Books'),(213,123,178,'Reading Clinical History'),(214,123,150,'Vital signs assessment'),(215,125,2,'Attach 3-lead ECG'),(216,125,132,'Call doctor'),(217,125,175,'Chest Tightness'),(218,125,177,'Erythematous torso rash'),(219,125,165,'Explanation to students'),(220,125,172,'IV Fluid Antibiotic'),(221,125,101,'Measure blood pressure'),(222,125,97,'Oxygen device'),(223,125,174,'Preparing Fluids'),(224,125,179,'Reading Books'),(225,125,178,'Reading Clinical History'),(226,125,161,'Recover'),(227,125,173,'Stop IV Fluids'),(228,125,150,'Vital signs assessment'),(229,125,140,'Writing charts'),(230,126,2,'Attach 3-lead ECG'),(231,126,132,'Call doctor'),(232,126,175,'Chest Tightness'),(233,126,177,'Erythematous torso rash'),(234,126,165,'Explanation to students'),(235,126,155,'explain patient status'),(236,126,172,'IV Fluid Antibiotic'),(237,126,101,'Measure blood pressure'),(238,126,97,'Oxygen device'),(239,126,174,'Preparing Fluids'),(240,126,179,'Reading Books'),(241,126,178,'Reading Clinical History'),(242,126,161,'Recover'),(243,126,173,'Stop IV Fluids'),(244,126,150,'Vital signs assessment'),(245,126,140,'Writing charts'),(246,127,2,'Attach 3-lead ECG'),(247,127,132,'Call doctor'),(248,127,175,'Chest Tightness'),(249,127,177,'Erythematous torso rash'),(250,127,155,'explain patient status'),(251,127,165,'Explanation to students'),(252,127,172,'IV Fluid Antibiotic'),(253,127,101,'Measure blood pressure'),(254,127,97,'Oxygen device'),(255,127,174,'Preparing Fluids'),(256,127,179,'Reading Books'),(257,127,178,'Reading Clinical History'),(258,127,161,'Recover'),(259,127,173,'Stop IV Fluids'),(260,127,150,'Vital signs assessment'),(261,127,140,'Writing charts'),(262,123,180,'Asking questions to patient'),(263,125,180,'Asking questions to patient'),(264,125,155,'explain patient status'),(265,126,180,'Asking questions to patient'),(266,127,180,'Asking questions to patient'),(267,124,176,'Chest Tightness and Erythematous torso rash'),(268,128,169,'IV medication Fentanyl'),(269,128,170,'IV medication Ondansetron'),(270,128,160,'Nauseous + Hypotension');
/*!40000 ALTER TABLE `action_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_session_object`
--

DROP TABLE IF EXISTS `action_session_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `action_session_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `id_object` int(11) DEFAULT NULL,
  `action_desc` varchar(200) NOT NULL,
  `time_action` timestamp NULL DEFAULT NULL,
  `param_value` varchar(100) DEFAULT NULL,
  `duration` time(6) DEFAULT NULL,
  `mseconds` int(11) DEFAULT NULL,
  `id_actionsession` int(11) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_action_session_action_idx1` (`id_action`),
  KEY `fk_action_session_sess_idx` (`id_session`),
  KEY `fk_action_session_objsess_idx` (`id_object`),
  KEY `fk_action_session_act_sess_idx` (`id_actionsession`),
  CONSTRAINT `fk_action_session_act_sess` FOREIGN KEY (`id_actionsession`) REFERENCES `action_session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_action_session_action` FOREIGN KEY (`id_action`) REFERENCES `actions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_action_session_objsess` FOREIGN KEY (`id_object`) REFERENCES `object_session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_action_session_sess` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2521 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_session_object`
--

LOCK TABLES `action_session_object` WRITE;
/*!40000 ALTER TABLE `action_session_object` DISABLE KEYS */;
INSERT INTO `action_session_object` VALUES (2097,108,98,227,'Anginine','2019-05-08 06:05:15',NULL,NULL,NULL,17,'Nice work'),(2098,108,8,227,'Session started','2019-05-08 06:05:41',NULL,'00:00:00.000000',NULL,19,'He is gone'),(2099,108,98,227,'Anginine','2019-05-08 06:08:56',NULL,'00:03:15.000000',NULL,17,'suds'),(2101,108,9,NULL,'Session ended','2019-05-08 06:12:38',NULL,'00:06:57.000000',NULL,NULL,NULL),(2102,109,8,NULL,'Session started','2019-05-08 06:31:44',NULL,'00:00:00.000000',NULL,NULL,NULL),(2103,109,148,230,'Pain assessment','2019-05-08 06:33:25',NULL,'00:01:41.000000',NULL,28,'away from the patient'),(2104,109,140,231,'Writing charts','2019-05-08 06:33:49',NULL,'00:02:05.000000',NULL,27,NULL),(2105,109,148,234,'Pain assessment','2019-05-08 06:36:47',NULL,'00:05:03.000000',NULL,28,'6/10'),(2106,109,40,230,'Start CPR','2019-05-08 06:37:16',NULL,'00:05:32.000000',NULL,22,NULL),(2108,109,41,230,'Stop CPR','2019-05-08 06:37:46',NULL,'00:06:02.000000',NULL,23,NULL),(2109,109,40,231,'Start CPR','2019-05-08 06:38:08',NULL,'00:06:24.000000',NULL,22,NULL),(2111,109,41,231,'Stop CPR','2019-05-08 06:38:24',NULL,'00:06:40.000000',NULL,23,NULL),(2112,109,9,NULL,'Session ended','2019-05-08 06:40:00',NULL,'00:08:16.000000',NULL,NULL,NULL),(2113,110,8,NULL,'Session started','2019-05-15 04:42:31',NULL,NULL,NULL,NULL,NULL),(2114,110,38,235,'Ask for help','2019-05-15 04:42:43',NULL,'00:00:12.000000',NULL,29,NULL),(2115,110,149,237,'Airway assessment','2019-05-15 04:42:50',NULL,'00:00:19.000000',NULL,30,NULL),(2116,110,101,238,'Measure blood pressure','2019-05-15 04:42:57',NULL,'00:00:26.000000',NULL,33,NULL),(2117,110,140,238,'Writing charts','2019-05-15 04:43:02',NULL,'00:00:31.000000',NULL,32,NULL),(2118,110,9,NULL,'Session ended','2019-05-15 04:43:43',NULL,'00:01:12.000000',NULL,NULL,NULL),(2119,111,8,NULL,'Session started','2019-05-15 05:14:36',NULL,NULL,NULL,NULL,NULL),(2120,111,38,240,'Ask for help','2019-05-15 05:14:50',NULL,'00:00:14.000000',NULL,36,NULL),(2121,111,98,241,'Anginine','2019-05-15 05:14:54',NULL,'00:00:18.000000',NULL,35,NULL),(2122,111,2,242,'Attach 3-lead ECG','2019-05-15 05:14:55',NULL,'00:00:19.000000',NULL,37,NULL),(2123,111,149,243,'Airway assessment','2019-05-15 05:15:14',NULL,'00:00:38.000000',NULL,34,NULL),(2124,111,1,242,'Attach pulse oximeter','2019-05-15 05:15:29',NULL,'00:00:53.000000',NULL,39,NULL),(2125,111,38,240,'Ask for help','2019-05-15 05:15:46',NULL,'00:01:10.000000',NULL,36,NULL),(2126,111,9,NULL,'Session ended','2019-05-15 05:15:49',NULL,'00:01:13.000000',NULL,NULL,NULL),(2127,112,8,NULL,'Session started','2019-05-15 05:35:42',NULL,NULL,NULL,NULL,NULL),(2128,112,38,244,'Ask for help','2019-05-15 05:35:57',NULL,'00:00:15.000000',NULL,42,NULL),(2129,112,149,244,'Airway assessment','2019-05-15 05:36:17',NULL,'00:00:35.000000',NULL,40,NULL),(2130,112,98,245,'Anginine','2019-05-15 05:36:36',NULL,'00:00:54.000000',NULL,41,NULL),(2132,112,2,246,'Attach 3-lead ECG','2019-05-15 05:38:29',NULL,'00:02:47.000000',NULL,43,NULL),(2134,112,149,245,'Airway assessment','2019-05-15 05:42:06',NULL,'00:06:24.000000',NULL,40,NULL),(2135,112,149,246,'Airway assessment','2019-05-15 05:42:11',NULL,'00:06:29.000000',NULL,40,NULL),(2136,112,149,244,'Airway assessment','2019-05-15 05:42:26',NULL,'00:06:44.000000',NULL,40,NULL),(2137,112,98,245,'Anginine','2019-05-15 05:42:29',NULL,'00:06:47.000000',NULL,41,NULL),(2138,112,2,245,'Attach 3-lead ECG','2019-05-15 05:42:34',NULL,'00:06:52.000000',NULL,43,NULL),(2139,113,150,247,'Vital signs assessment','2019-05-15 05:47:58',NULL,NULL,NULL,48,'airway'),(2140,112,8,NULL,'Session started','2019-05-17 01:47:10',NULL,'44:11:28.000000',NULL,NULL,NULL),(2141,113,157,251,'irregular RR','2019-05-19 10:02:08',NULL,NULL,NULL,56,NULL),(2142,113,148,249,'Pain assessment','2019-05-19 10:07:05',NULL,NULL,NULL,52,NULL),(2143,113,160,247,'Nauseous','2019-05-19 10:07:06',NULL,NULL,NULL,59,NULL),(2144,113,157,247,'irregular RR','2019-05-19 10:07:07',NULL,NULL,NULL,56,NULL),(2145,113,158,247,'Hypertension','2019-05-19 10:07:08',NULL,NULL,NULL,57,NULL),(2146,113,153,250,'IV medication','2019-05-19 10:07:11',NULL,NULL,NULL,51,NULL),(2147,113,155,247,'explain patient status','2019-05-19 10:07:19',NULL,NULL,NULL,53,'ad'),(2148,113,150,250,'Vital signs assessment','2019-05-19 10:07:21',NULL,NULL,NULL,48,NULL),(2149,115,8,NULL,'Session started','2019-05-19 13:21:28',NULL,'00:00:00.000000',NULL,NULL,'hjk'),(2150,115,156,260,'handing over','2019-05-19 13:21:31',NULL,'00:00:03.000000',NULL,77,'jn'),(2151,115,154,260,'preparing paperwork','2019-05-19 13:21:36',NULL,'00:00:08.000000',NULL,84,'uyguyfgu'),(2152,115,157,263,'irregular RR','2019-05-19 13:21:45',NULL,'00:00:17.000000',NULL,80,NULL),(2153,115,153,263,'IV medication','2019-05-19 13:21:45',NULL,'00:00:17.000000',NULL,81,NULL),(2154,115,148,263,'Pain assessment','2019-05-19 13:21:46',NULL,'00:00:18.000000',NULL,83,NULL),(2155,115,161,266,'Recover','2019-05-19 13:21:48',NULL,'00:00:20.000000',NULL,85,'hjk'),(2156,116,8,NULL,'Session started','2019-05-19 23:31:12',NULL,'00:00:00.000000',NULL,NULL,'The simman was not syncro'),(2157,116,150,269,'Vital signs assessment','2019-05-19 23:34:15',NULL,'00:03:03.000000',NULL,99,'HR'),(2158,116,150,269,'Vital signs assessment','2019-05-19 23:34:53',NULL,'00:03:41.000000',NULL,99,'Blood preasure'),(2159,116,150,270,'Vital signs assessment','2019-05-19 23:36:10',NULL,'00:04:58.000000',NULL,99,'oxigen and fluids'),(2160,116,150,268,'Vital signs assessment','2019-05-19 23:37:45',NULL,'00:06:33.000000',NULL,99,'vital signs'),(2161,116,150,269,'Vital signs assessment','2019-05-19 23:38:07',NULL,'00:06:55.000000',NULL,99,'take pulse'),(2163,116,155,268,'explain patient status','2019-05-19 23:38:55',NULL,'00:07:43.000000',NULL,88,'talk to the patient'),(2164,116,157,271,'Breathing-Obstructed','2019-05-19 23:40:41',NULL,'00:09:29.000000',NULL,93,'O2 98%'),(2165,116,151,270,'head tilt/chin','2019-05-19 23:43:23',NULL,'00:12:11.000000',NULL,91,NULL),(2166,116,164,268,'Sucction Secretions','2019-05-19 23:44:39',NULL,'00:13:27.000000',NULL,102,NULL),(2167,116,151,268,'head tilt/chin','2019-05-19 23:44:57',NULL,'00:13:45.000000',NULL,91,'Try to accomodate the patient'),(2168,116,154,269,'preparing paperwork','2019-05-19 23:46:09',NULL,'00:14:57.000000',NULL,97,'taking notes to the status of patience'),(2169,116,162,268,'Check fluids','2019-05-19 23:46:45',NULL,'00:15:33.000000',NULL,100,NULL),(2170,116,155,270,'explain patient status','2019-05-19 23:47:24',NULL,'00:16:12.000000',NULL,88,'explain to the patient'),(2171,116,155,269,'explain patient status','2019-05-19 23:48:12',NULL,'00:17:00.000000',NULL,88,'and taking notes'),(2172,116,162,270,'Check fluids','2019-05-19 23:48:45',NULL,'00:17:33.000000',NULL,100,NULL),(2173,116,162,269,'Check fluids','2019-05-19 23:49:03',NULL,'00:17:51.000000',NULL,100,NULL),(2175,116,158,271,'Abdominal Pain','2019-05-19 23:52:42',NULL,'00:21:30.000000',NULL,92,'NBP 142/79'),(2176,116,155,272,'explain patient status','2019-05-19 23:55:28',NULL,'00:24:16.000000',NULL,88,'asking for symptoms'),(2179,116,153,270,'IV medication','2019-05-19 23:59:16',NULL,'00:28:04.000000',NULL,94,'apply, fentanile'),(2180,116,150,268,'Vital signs assessment','2019-05-20 00:01:03',NULL,'00:29:51.000000',NULL,99,NULL),(2182,116,159,271,'Abdominal pain+Hypertension','2019-05-20 00:03:17',NULL,'00:32:05.000000',NULL,87,NULL),(2183,116,165,275,'Explanation to students','2019-05-20 00:04:22',NULL,'00:33:10.000000',NULL,103,NULL),(2184,116,155,268,'explain patient status','2019-05-20 00:09:02',NULL,'00:37:50.000000',NULL,88,NULL),(2187,116,153,269,'IV medication','2019-05-20 00:10:58',NULL,'00:39:46.000000',NULL,94,'2nd bolus of Fentanyl'),(2188,116,160,271,'Nauseous+Hypotension','2019-05-20 00:12:08',NULL,'00:40:56.000000',NULL,95,NULL),(2189,116,150,270,'Vital signs assessment','2019-05-20 00:13:32',NULL,'00:42:20.000000',NULL,99,NULL),(2190,116,150,272,'Vital signs assessment','2019-05-20 00:14:33',NULL,'00:43:21.000000',NULL,99,'and explaining thing to patient'),(2192,116,153,269,'IV medication','2019-05-20 00:20:04',NULL,'00:48:52.000000',NULL,94,'medication ondansetron'),(2193,116,161,271,'Recover','2019-05-20 00:21:18',NULL,'00:50:06.000000',NULL,98,'3/10'),(2194,116,150,269,'Vital signs assessment','2019-05-20 00:22:32',NULL,'00:51:20.000000',NULL,99,NULL),(2195,116,154,268,'preparing paperwork','2019-05-20 00:24:53',NULL,'00:53:41.000000',NULL,97,'taking final notes'),(2196,116,154,269,'preparing paperwork','2019-05-20 00:24:54',NULL,'00:53:42.000000',NULL,97,'taking final notes'),(2197,116,150,270,'Vital signs assessment','2019-05-20 00:29:58',NULL,'00:58:46.000000',NULL,99,NULL),(2198,116,150,269,'Vital signs assessment','2019-05-20 00:29:59',NULL,'00:58:47.000000',NULL,99,NULL),(2199,116,156,269,'handing over','2019-05-20 00:31:08',NULL,'00:59:56.000000',NULL,90,'explanation to the patient'),(2200,116,156,272,'handing over','2019-05-20 00:37:05',NULL,'01:05:53.000000',NULL,90,'group discution'),(2201,116,9,NULL,'Session ended','2019-05-20 00:37:33',NULL,'01:06:21.000000',NULL,NULL,NULL),(2202,117,8,NULL,'Session started','2019-05-20 02:22:22',NULL,NULL,NULL,NULL,NULL),(2203,117,156,280,'handing over','2019-05-20 02:29:23',NULL,'00:07:01.000000',NULL,109,'to RNs'),(2204,117,150,278,'Vital signs assessment','2019-05-20 02:32:33',NULL,'00:10:11.000000',NULL,121,'pulse'),(2205,117,150,276,'Vital signs assessment','2019-05-20 02:32:52',NULL,'00:10:30.000000',NULL,121,'breathing'),(2206,117,150,277,'Vital signs assessment','2019-05-20 02:33:24',NULL,'00:11:02.000000',NULL,121,'arterial pressure'),(2207,117,168,278,'Adding oxygen therapy','2019-05-20 02:34:51',NULL,'00:12:29.000000',NULL,122,'low rate'),(2208,117,155,282,'explain patient status','2019-05-20 02:37:24',NULL,'00:15:02.000000',NULL,107,NULL),(2209,117,157,279,'Breathing-Obstructed','2019-05-20 02:37:36',NULL,'00:15:14.000000',NULL,112,NULL),(2210,117,151,276,'head tilt/chin','2019-05-20 02:37:57',NULL,'00:15:35.000000',NULL,110,NULL),(2211,117,164,278,'Sucction Secretions','2019-05-20 02:38:11',NULL,'00:15:49.000000',NULL,118,NULL),(2212,117,155,277,'explain patient status','2019-05-20 02:41:30',NULL,'00:19:08.000000',NULL,107,'asking questions'),(2213,117,148,276,'Pain assessment','2019-05-20 02:42:55',NULL,'00:20:33.000000',NULL,115,NULL),(2214,117,159,279,'Abdominal pain','2019-05-20 02:44:20',NULL,'00:21:58.000000',NULL,105,NULL),(2215,117,155,276,'explain patient status','2019-05-20 02:45:57',NULL,'00:23:35.000000',NULL,107,'explaining they are going to ask the doctor'),(2216,117,165,282,'Explanation to students','2019-05-20 02:47:31',NULL,'00:25:09.000000',NULL,123,'where the medicine is'),(2218,117,153,278,'IV medication','2019-05-20 02:59:23',NULL,'00:37:01.000000',NULL,113,'flashing IV and preparing'),(2219,117,153,276,'IV medication Fentanyl','2019-05-20 03:01:18',NULL,'00:38:56.000000',NULL,113,'Fentanyl'),(2220,117,159,279,'Abdominal pain+Hypertension','2019-05-20 03:02:00',NULL,'00:39:38.000000',NULL,105,NULL),(2221,117,155,280,'explain patient status','2019-05-20 03:04:31',NULL,'00:42:09.000000',NULL,107,NULL),(2223,117,150,276,'Vital signs assessment','2019-05-20 03:16:15',NULL,'00:53:53.000000',NULL,121,NULL),(2224,117,160,279,'Nauseous+Hypotension','2019-05-20 03:18:18',NULL,'00:55:56.000000',NULL,114,NULL),(2226,117,153,277,'IV medication Ondansetron','2019-05-20 03:21:22',NULL,'00:59:00.000000',NULL,113,'2nd dosis Fentanyl'),(2228,117,154,276,'preparing paperwork','2019-05-20 03:25:45',NULL,'01:03:23.000000',NULL,116,NULL),(2229,117,154,277,'preparing paperwork','2019-05-20 03:25:46',NULL,'01:03:24.000000',NULL,116,NULL),(2230,117,154,278,'preparing paperwork','2019-05-20 03:25:47',NULL,'01:03:25.000000',NULL,116,NULL),(2231,117,150,276,'Vital signs assessment','2019-05-20 03:29:52',NULL,'01:07:30.000000',NULL,121,NULL),(2232,117,150,278,'Vital signs assessment','2019-05-20 03:30:05',NULL,'01:07:43.000000',NULL,121,NULL),(2233,117,161,279,'Recover','2019-05-20 03:30:32',NULL,'01:08:10.000000',NULL,117,NULL),(2234,117,156,276,'handing over','2019-05-20 03:31:52',NULL,'01:09:30.000000',NULL,109,NULL),(2235,117,156,277,'handing over','2019-05-20 03:31:53',NULL,'01:09:31.000000',NULL,109,NULL),(2236,117,156,278,'handing over','2019-05-20 03:31:54',NULL,'01:09:32.000000',NULL,109,NULL),(2237,117,156,280,'handing over','2019-05-20 03:31:58',NULL,'01:09:36.000000',NULL,109,NULL),(2238,117,9,NULL,'Session ended','2019-05-20 03:33:19',NULL,'01:10:57.000000',NULL,NULL,NULL),(2239,118,8,NULL,'Session started','2019-05-20 23:15:36',NULL,NULL,NULL,NULL,NULL),(2241,118,150,283,'Vital signs assessment','2019-05-20 23:28:28',NULL,'00:12:52.000000',NULL,143,NULL),(2242,118,150,288,'Vital signs assessment','2019-05-20 23:28:41',NULL,'00:13:05.000000',NULL,143,'validate if breathing'),(2243,118,150,288,'Vital signs assessment','2019-05-20 23:31:10',NULL,'00:15:34.000000',NULL,143,'awRR 8'),(2244,118,157,286,'Breathing-Obstructed','2019-05-20 23:33:16',NULL,'00:17:40.000000',NULL,134,NULL),(2245,118,171,283,'Warm the patient','2019-05-20 23:35:18',NULL,'00:19:42.000000',NULL,145,'they bring a special device'),(2247,118,164,283,'Sucction Secretions','2019-05-20 23:38:09',NULL,'00:22:33.000000',NULL,142,NULL),(2248,118,164,285,'Sucction Secretions','2019-05-20 23:38:35',NULL,'00:22:59.000000',NULL,142,NULL),(2249,118,164,288,'Sucction Secretions','2019-05-20 23:38:36',NULL,'00:23:00.000000',NULL,142,NULL),(2250,118,148,283,'Pain assessment','2019-05-20 23:40:53',NULL,'00:25:17.000000',NULL,139,NULL),(2251,118,152,288,'Guedel\'s airway','2019-05-20 23:41:47',NULL,'00:26:11.000000',NULL,130,NULL),(2252,118,158,286,'Abdominal pain','2019-05-20 23:43:15',NULL,'00:27:39.000000',NULL,133,'the doctor notice that the patient has hypertension'),(2253,118,150,288,'Vital signs assessment','2019-05-20 23:48:20',NULL,'00:32:44.000000',NULL,143,NULL),(2254,118,148,288,'Pain assessment','2019-05-20 23:50:08',NULL,'00:34:32.000000',NULL,139,'8/10'),(2255,118,169,283,'IV medication Fentanyl','2019-05-20 23:50:27',NULL,'00:34:51.000000',NULL,136,NULL),(2256,118,140,285,'Writing charts','2019-05-20 23:51:22',NULL,'00:35:46.000000',NULL,144,'She make observer'),(2257,118,148,283,'Pain assessment','2019-05-20 23:54:17',NULL,'00:38:41.000000',NULL,139,'6/10'),(2258,118,159,286,'Abdominal pain + Hypertension','2019-05-20 23:55:31',NULL,'00:39:55.000000',NULL,124,NULL),(2259,118,150,283,'Vital signs assessment','2019-05-20 23:57:17',NULL,'00:41:41.000000',NULL,143,NULL),(2260,118,150,288,'Vital signs assessment','2019-05-20 23:57:18',NULL,'00:41:42.000000',NULL,143,NULL),(2261,118,160,286,'Nauseous + Hypotension','2019-05-21 00:01:01',NULL,'00:45:25.000000',NULL,138,NULL),(2262,118,170,288,'IV medication Ondansetron','2019-05-21 00:04:00',NULL,'00:48:24.000000',NULL,137,NULL),(2263,118,150,283,'Vital signs assessment','2019-05-21 00:04:31',NULL,'00:48:55.000000',NULL,143,'3/10'),(2264,118,150,285,'Vital signs assessment','2019-05-21 00:09:13',NULL,'00:53:37.000000',NULL,143,'and register as log'),(2265,118,154,283,'preparing paperwork','2019-05-21 00:11:40',NULL,'00:56:04.000000',NULL,140,NULL),(2266,118,154,288,'preparing paperwork','2019-05-21 00:11:44',NULL,'00:56:08.000000',NULL,140,NULL),(2267,118,154,285,'preparing paperwork','2019-05-21 00:11:53',NULL,'00:56:17.000000',NULL,140,NULL),(2268,118,150,283,'Vital signs assessment','2019-05-21 00:12:30',NULL,'00:56:54.000000',NULL,143,NULL),(2269,118,148,283,'Pain assessment','2019-05-21 00:13:42',NULL,'00:58:06.000000',NULL,139,'2/10'),(2270,118,156,283,'handing over','2019-05-21 00:13:56',NULL,'00:58:20.000000',NULL,131,NULL),(2271,118,156,285,'handing over','2019-05-21 00:13:57',NULL,'00:58:21.000000',NULL,131,NULL),(2272,118,156,288,'handing over','2019-05-21 00:13:59',NULL,'00:58:23.000000',NULL,131,NULL),(2273,118,9,NULL,'Session ended','2019-05-21 00:19:43',NULL,'01:04:07.000000',NULL,NULL,NULL),(2274,119,8,NULL,'Session started','2019-05-21 02:20:19',NULL,NULL,NULL,NULL,NULL),(2275,119,150,289,'Vital signs assessment','2019-05-21 02:24:35',NULL,'00:04:16.000000',NULL,164,NULL),(2276,119,150,290,'Vital signs assessment','2019-05-21 02:26:55',NULL,'00:06:36.000000',NULL,164,NULL),(2277,119,150,289,'Vital signs assessment','2019-05-21 02:28:46',NULL,'00:08:27.000000',NULL,164,NULL),(2278,119,157,293,'Breathing-Obstructed','2019-05-21 02:29:27',NULL,'00:09:08.000000',NULL,156,NULL),(2279,119,164,289,'Sucction Secretions','2019-05-21 02:30:27',NULL,'00:10:08.000000',NULL,163,NULL),(2280,119,164,291,'Sucction Secretions','2019-05-21 02:30:31',NULL,'00:10:12.000000',NULL,163,NULL),(2281,119,152,291,'Guedel\'s airway','2019-05-21 02:30:50',NULL,'00:10:31.000000',NULL,152,NULL),(2282,119,152,290,'Guedel\'s airway','2019-05-21 02:30:54',NULL,'00:10:35.000000',NULL,152,NULL),(2283,119,150,289,'Vital signs assessment','2019-05-21 02:32:10',NULL,'00:11:51.000000',NULL,164,NULL),(2284,119,150,290,'Vital signs assessment','2019-05-21 02:32:14',NULL,'00:11:55.000000',NULL,164,NULL),(2285,119,159,293,'Abdominal pain','2019-05-21 02:34:12',NULL,'00:13:53.000000',NULL,146,NULL),(2286,119,165,294,'Explanation to students','2019-05-21 02:35:02',NULL,'00:14:43.000000',NULL,151,NULL),(2288,119,162,289,'Check fluids','2019-05-21 02:43:34',NULL,'00:23:15.000000',NULL,149,NULL),(2289,119,169,290,'IV medication Fentanyl','2019-05-21 02:51:22',NULL,'00:31:03.000000',NULL,157,NULL),(2290,119,150,289,'Vital signs assessment','2019-05-21 02:54:33',NULL,'00:34:14.000000',NULL,164,NULL),(2291,119,150,290,'Vital signs assessment','2019-05-21 02:54:34',NULL,'00:34:15.000000',NULL,164,NULL),(2292,119,150,291,'Vital signs assessment','2019-05-21 02:54:37',NULL,'00:34:18.000000',NULL,164,NULL),(2293,119,159,293,'Abdominal pain+Hypertension','2019-05-21 02:56:03',NULL,'00:35:44.000000',NULL,146,'Still in pain'),(2294,119,165,294,'Explanation to students','2019-05-21 02:59:12',NULL,'00:38:53.000000',NULL,151,'asking if they have to provide second dosis of Fentanyl'),(2295,119,148,292,'Pain assessment','2019-05-21 03:01:33',NULL,'00:41:14.000000',NULL,160,'6/10'),(2297,119,169,290,'IV medication Fentanyl','2019-05-21 03:02:31',NULL,'00:42:12.000000',NULL,157,'second dosis, they drop the medicine'),(2298,119,150,289,'Vital signs assessment','2019-05-21 03:04:12',NULL,'00:43:53.000000',NULL,164,NULL),(2299,119,150,289,'Vital signs assessment','2019-05-21 03:04:20',NULL,'00:44:01.000000',NULL,164,NULL),(2300,119,150,290,'Vital signs assessment','2019-05-21 03:04:21',NULL,'00:44:02.000000',NULL,164,NULL),(2301,119,150,291,'Vital signs assessment','2019-05-21 03:04:22',NULL,'00:44:03.000000',NULL,164,NULL),(2302,119,160,293,'Nauseous+Hypotension','2019-05-21 03:05:50',NULL,'00:45:31.000000',NULL,159,NULL),(2303,119,170,290,'IV medication Ondansetron','2019-05-21 03:10:59',NULL,'00:50:40.000000',NULL,158,NULL),(2304,119,150,291,'Vital signs assessment','2019-05-21 03:12:50',NULL,'00:52:31.000000',NULL,164,NULL),(2305,119,150,290,'Vital signs assessment','2019-05-21 03:12:52',NULL,'00:52:33.000000',NULL,164,NULL),(2306,119,140,289,'Writing charts','2019-05-21 03:16:23',NULL,'00:56:04.000000',NULL,165,NULL),(2307,119,140,292,'Writing charts','2019-05-21 03:16:26',NULL,'00:56:07.000000',NULL,165,NULL),(2308,119,161,293,'Recover','2019-05-21 03:17:27',NULL,'00:57:08.000000',NULL,162,NULL),(2309,119,154,292,'preparing paperwork','2019-05-21 03:19:27',NULL,'00:59:08.000000',NULL,161,NULL),(2310,119,154,289,'preparing paperwork','2019-05-21 03:19:28',NULL,'00:59:09.000000',NULL,161,NULL),(2311,119,154,290,'preparing paperwork','2019-05-21 03:19:29',NULL,'00:59:10.000000',NULL,161,NULL),(2312,119,154,291,'preparing paperwork','2019-05-21 03:19:29',NULL,'00:59:10.000000',NULL,161,NULL),(2313,119,155,289,'explain patient status','2019-05-21 03:20:27',NULL,'01:00:08.000000',NULL,150,'explaining that she is ok.'),(2314,119,150,289,'Vital signs assessment','2019-05-21 03:21:14',NULL,'01:00:55.000000',NULL,164,NULL),(2315,119,156,292,'handing over','2019-05-21 03:22:37',NULL,'01:02:18.000000',NULL,153,NULL),(2316,119,156,290,'handing over','2019-05-21 03:23:49',NULL,'01:03:30.000000',NULL,153,NULL),(2317,119,156,289,'handing over','2019-05-21 03:23:51',NULL,'01:03:32.000000',NULL,153,NULL),(2318,119,9,NULL,'Session ended','2019-05-21 03:27:16',NULL,'01:06:57.000000',NULL,NULL,NULL),(2319,120,159,297,'Abdominal pain','2019-07-03 02:16:35',NULL,NULL,NULL,166,'sdfsd'),(2320,120,149,295,'Airway assessment','2019-07-03 02:16:43',NULL,NULL,NULL,167,NULL),(2321,120,149,295,'Airway assessment','2019-07-03 02:16:56',NULL,NULL,NULL,167,NULL),(2322,120,149,295,'Airway assessment','2019-07-03 02:17:05',NULL,NULL,NULL,167,NULL),(2323,120,98,297,'Anginine','2019-07-03 02:17:18',NULL,NULL,NULL,168,NULL),(2324,120,98,297,'Anginine','2019-07-03 02:17:20',NULL,NULL,NULL,168,NULL),(2325,120,98,296,'Anginine','2019-07-03 02:17:29',NULL,NULL,NULL,168,NULL),(2326,120,159,297,'Abdominal pain','2019-07-03 02:17:40',NULL,NULL,NULL,166,NULL),(2327,120,149,297,'Airway assessment','2019-07-03 02:17:51',NULL,NULL,NULL,167,NULL),(2328,120,8,NULL,'Session started','2019-07-03 02:17:56',NULL,NULL,NULL,NULL,NULL),(2329,120,9,NULL,'Session ended','2019-07-03 02:17:59',NULL,'00:00:03.000000',NULL,NULL,NULL),(2330,120,149,297,'Airway assessment','2019-07-03 02:18:55',NULL,'00:00:59.000000',NULL,167,'jhiuhuihih'),(2331,120,149,295,'Airway assessment','2019-07-03 02:19:14',NULL,'00:01:18.000000',NULL,167,'hbjk'),(2332,120,159,296,'Abdominal pain','2019-07-03 02:19:30',NULL,'00:01:34.000000',NULL,166,'h'),(2333,120,159,297,'Abdominal pain','2019-07-03 02:19:35',NULL,'00:01:39.000000',NULL,166,'uh'),(2334,121,8,NULL,'Session started','2019-08-01 06:48:04',NULL,NULL,NULL,NULL,NULL),(2335,122,8,NULL,'Session started','2019-08-06 02:45:36',NULL,'00:00:00.000000',NULL,NULL,'Student taking notes'),(2336,122,101,302,'Measure blood pressure','2019-08-06 03:00:50',NULL,'00:15:14.000000',NULL,172,NULL),(2337,122,101,301,'Measure blood pressure','2019-08-06 03:01:21',NULL,'00:15:45.000000',NULL,172,NULL),(2338,122,140,301,'Writing charts','2019-08-06 03:03:23',NULL,'00:17:47.000000',NULL,171,NULL),(2339,122,101,304,'Measure blood pressure','2019-08-06 03:03:39',NULL,'00:18:03.000000',NULL,172,'change for blood pleasure'),(2340,122,97,302,'Oxygen device','2019-08-06 03:05:19',NULL,'00:19:43.000000',NULL,170,NULL),(2341,122,165,318,'Explanation to students','2019-08-06 03:06:59',NULL,'00:21:23.000000',NULL,206,'manipulating device'),(2342,122,140,301,'Writing charts','2019-08-06 03:11:05',NULL,'00:25:29.000000',NULL,171,NULL),(2343,122,150,302,'Vital signs assessment','2019-08-06 03:11:18',NULL,'00:25:42.000000',NULL,202,NULL),(2344,122,178,304,'Reading Clinical History','2019-08-06 03:15:16',NULL,'00:29:40.000000',NULL,207,'searching for information'),(2346,122,140,304,'Writing charts','2019-08-06 03:23:52',NULL,'00:38:16.000000',NULL,171,NULL),(2347,122,174,301,'Preparing Fluids','2019-08-06 03:24:21',NULL,'00:38:45.000000',NULL,176,'bring the medication trolly'),(2348,122,174,302,'Preparing Fluids','2019-08-06 03:24:22',NULL,'00:38:46.000000',NULL,176,'bring the antibiotics'),(2349,122,179,301,'Reading Books','2019-08-06 03:26:31',NULL,'00:40:55.000000',NULL,208,NULL),(2350,122,179,302,'Reading Books','2019-08-06 03:26:32',NULL,'00:40:56.000000',NULL,208,'MIMCS book (blue one)'),(2351,122,172,302,'IV Fluid Antibiotic','2019-08-06 03:40:26',NULL,'00:54:50.000000',NULL,174,NULL),(2352,122,150,304,'Vital signs assessment','2019-08-06 03:46:26',NULL,'01:00:50.000000',NULL,202,NULL),(2353,122,150,302,'Vital signs assessment','2019-08-06 03:49:45',NULL,'01:04:09.000000',NULL,202,'asking questions to the patient'),(2354,122,176,300,'Chest Tightness and Erythematous torso rash','2019-08-06 03:50:44',NULL,'01:05:08.000000',NULL,209,NULL),(2355,122,101,301,'Measure blood pressure','2019-08-06 03:51:43',NULL,'01:06:07.000000',NULL,169,NULL),(2356,122,97,301,'Oxygen device','2019-08-06 03:57:10',NULL,'01:11:34.000000',NULL,170,NULL),(2357,122,97,304,'Oxygen device','2019-08-06 03:57:11',NULL,'01:11:35.000000',NULL,170,NULL),(2358,122,132,304,'Call doctor','2019-08-06 03:59:28',NULL,'01:13:52.000000',NULL,173,'Carmen was the doctor'),(2359,122,173,302,'Stop IV Fluids','2019-08-06 03:55:39',NULL,'01:10:03.000000',NULL,175,'they said as soon the patient complains they turn the machine off'),(2360,122,165,318,'Explanation to students','2019-08-06 04:04:45',NULL,'01:19:09.000000',NULL,206,'She is making questions and explaining things.'),(2361,122,140,304,'Writing charts','2019-08-06 04:10:38',NULL,'01:25:02.000000',NULL,171,'writing charts'),(2362,122,140,303,'Writing charts','2019-08-06 04:10:39',NULL,'01:25:03.000000',NULL,171,NULL),(2363,122,140,301,'Writing charts','2019-08-06 04:13:57',NULL,'01:28:21.000000',NULL,171,NULL),(2364,122,140,302,'Writing charts','2019-08-06 04:13:58',NULL,'01:28:22.000000',NULL,171,NULL),(2365,122,161,300,'Recover','2019-08-06 04:16:53',NULL,'01:31:17.000000',NULL,179,NULL),(2366,122,9,NULL,'Session ended','2019-08-06 04:21:49',NULL,'01:36:13.000000',NULL,NULL,NULL),(2367,123,8,NULL,'Session started','2019-08-06 23:13:31',NULL,NULL,NULL,NULL,NULL),(2368,123,150,308,'Vital signs assessment','2019-08-06 23:19:39',NULL,'00:06:08.000000',NULL,214,NULL),(2370,123,180,307,'Asking questions to patient','2019-08-06 23:27:13',NULL,'00:13:42.000000',NULL,262,'date, time etc'),(2371,123,178,309,'Reading Clinical History','2019-08-06 23:30:11',NULL,'00:16:40.000000',NULL,213,'IV fluid is running not shaking'),(2372,123,132,309,'Call doctor','2019-08-06 23:32:18',NULL,'00:18:47.000000',NULL,181,'validating medication meanwhile prepare medication'),(2373,123,174,308,'Preparing Fluids','2019-08-06 23:34:33',NULL,'00:21:02.000000',NULL,186,'find some staff in the med room'),(2374,123,97,308,'Oxygen device','2019-08-06 23:35:21',NULL,'00:21:50.000000',NULL,185,NULL),(2375,123,140,309,'Writing charts','2019-08-06 23:36:32',NULL,'00:23:01.000000',NULL,189,NULL),(2376,123,174,306,'Preparing Fluids','2019-08-06 23:37:26',NULL,'00:23:55.000000',NULL,186,NULL),(2377,123,174,307,'Preparing Fluids','2019-08-06 23:37:27',NULL,'00:23:56.000000',NULL,186,NULL),(2378,123,150,308,'Vital signs assessment','2019-08-06 23:39:03',NULL,'00:25:32.000000',NULL,214,NULL),(2379,123,172,307,'IV Fluid Antibiotic','2019-08-06 23:45:08',NULL,'00:31:37.000000',NULL,183,'250ml'),(2380,123,180,308,'Asking questions to patient','2019-08-06 23:49:08',NULL,'00:35:37.000000',NULL,262,NULL),(2381,123,176,305,'Chest Tightness and Erythematous torso rash','2019-08-06 23:49:38',NULL,'00:36:07.000000',NULL,210,'chest tight'),(2382,123,2,308,'Attach 3-lead ECG','2019-08-06 23:50:21',NULL,'00:36:50.000000',NULL,180,NULL),(2383,123,173,306,'Stop IV Fluids','2019-08-06 23:51:17',NULL,'00:37:46.000000',NULL,188,NULL),(2384,123,173,307,'Stop IV Fluids','2019-08-06 23:51:17',NULL,'00:37:46.000000',NULL,188,NULL),(2385,123,150,306,'Vital signs assessment','2019-08-06 23:53:05',NULL,'00:39:34.000000',NULL,214,NULL),(2386,123,165,311,'Explanation to students','2019-08-06 23:57:11',NULL,'00:43:40.000000',NULL,211,'explaining  ECG'),(2387,123,179,308,'Reading Books','2019-08-06 23:59:28',NULL,'00:45:57.000000',NULL,212,NULL),(2388,123,140,309,'Writing charts','2019-08-07 00:00:09',NULL,'00:46:38.000000',NULL,189,NULL),(2389,123,140,308,'Writing charts','2019-08-07 00:00:15',NULL,'00:46:44.000000',NULL,189,NULL),(2390,123,161,305,'Recover','2019-08-07 00:02:28',NULL,'00:48:57.000000',NULL,187,NULL),(2391,123,165,311,'Explanation to students','2019-08-07 00:04:11',NULL,'00:50:40.000000',NULL,211,'From book, ECG results'),(2392,123,140,307,'Writing charts','2019-08-07 00:07:01',NULL,'00:53:30.000000',NULL,189,NULL),(2393,123,165,311,'Explanation to students','2019-08-07 00:08:44',NULL,'00:55:13.000000',NULL,211,'explain if the patient is not breathing regularly'),(2394,123,140,307,'Writing charts','2019-08-07 00:13:32',NULL,'01:00:01.000000',NULL,189,NULL),(2395,123,140,309,'Writing charts','2019-08-07 00:17:06',NULL,'01:03:35.000000',NULL,189,NULL),(2396,123,140,306,'Writing charts','2019-08-07 00:17:46',NULL,'01:04:15.000000',NULL,189,NULL),(2397,123,165,311,'Explanation to students','2019-08-07 00:20:44',NULL,'01:07:13.000000',NULL,211,'Showing the graph for ECG'),(2398,123,140,306,'Writing charts','2019-08-07 00:25:33',NULL,'01:12:02.000000',NULL,189,NULL),(2399,123,140,309,'Writing charts','2019-08-07 00:25:34',NULL,'01:12:03.000000',NULL,189,NULL),(2400,123,140,308,'Writing charts','2019-08-07 00:25:43',NULL,'01:12:12.000000',NULL,189,NULL),(2401,123,9,NULL,'Session ended','2019-08-07 00:25:48',NULL,'01:12:17.000000',NULL,NULL,NULL),(2402,125,8,NULL,'Session started','2019-08-07 02:48:52',NULL,NULL,NULL,NULL,NULL),(2403,125,150,325,'Vital signs assessment','2019-08-07 03:02:21',NULL,'00:13:29.000000',NULL,228,'respiratory rate'),(2404,125,150,320,'Vital signs assessment','2019-08-07 03:03:52',NULL,'00:15:00.000000',NULL,228,NULL),(2405,125,180,325,'Asking questions to patient','2019-08-07 03:04:29',NULL,'00:15:37.000000',NULL,263,'paint assessment'),(2406,125,132,323,'Call doctor','2019-08-07 03:08:21',NULL,'00:19:29.000000',NULL,216,'ask about medication'),(2407,125,174,320,'Preparing Fluids','2019-08-07 03:09:03',NULL,'00:20:11.000000',NULL,223,'bring medication'),(2408,125,174,321,'Preparing Fluids','2019-08-07 03:09:03',NULL,'00:20:11.000000',NULL,223,'bring medication'),(2409,125,140,321,'Writing charts','2019-08-07 03:11:40',NULL,'00:22:48.000000',NULL,229,NULL),(2410,125,180,325,'Asking questions to patient','2019-08-07 03:14:14',NULL,'00:25:22.000000',NULL,263,'list of questions'),(2412,125,165,322,'Explanation to students','2019-08-07 03:18:44',NULL,'00:29:52.000000',NULL,219,'Explain they have to sign'),(2413,125,172,320,'IV Fluid Antibiotic','2019-08-07 03:19:11',NULL,'00:30:19.000000',NULL,220,NULL),(2414,125,180,325,'Asking questions to patient','2019-08-07 03:20:23',NULL,'00:31:31.000000',NULL,263,'pain assessment'),(2415,125,150,325,'Vital signs assessment','2019-08-07 03:22:33',NULL,'00:33:41.000000',NULL,228,NULL),(2416,125,173,320,'Stop IV Fluids','2019-08-07 03:22:58',NULL,'00:34:06.000000',NULL,227,NULL),(2417,125,173,321,'Stop IV Fluids','2019-08-07 03:23:09',NULL,'00:34:17.000000',NULL,227,NULL),(2418,125,165,322,'Explanation to students','2019-08-07 03:23:46',NULL,'00:34:54.000000',NULL,219,NULL),(2419,125,101,325,'Measure blood pressure','2019-08-07 03:24:11',NULL,'00:35:19.000000',NULL,221,NULL),(2420,125,176,319,'Chest Tightness and Erythematous torso rash','2019-08-07 03:20:25',NULL,'00:31:33.000000',NULL,217,NULL),(2421,125,165,322,'Explanation to students','2019-08-07 03:26:05',NULL,'00:37:13.000000',NULL,219,'asking about the type of assessment'),(2422,125,97,325,'Oxygen device','2019-08-07 03:26:33',NULL,'00:37:41.000000',NULL,222,NULL),(2424,125,2,320,'Attach 3-lead ECG','2019-08-07 03:28:32',NULL,'00:39:40.000000',NULL,215,'Extra nurse help'),(2425,125,132,325,'Call doctor','2019-08-07 03:29:21',NULL,'00:40:29.000000',NULL,216,NULL),(2426,125,140,323,'Writing charts','2019-08-07 03:29:36',NULL,'00:40:44.000000',NULL,229,NULL),(2427,125,180,325,'Asking questions to patient','2019-08-07 03:30:05',NULL,'00:41:13.000000',NULL,263,'pain assessment'),(2428,125,165,322,'Explanation to students','2019-08-07 03:30:51',NULL,'00:41:59.000000',NULL,219,NULL),(2429,125,165,322,'Explanation to students','2019-08-07 03:32:48',NULL,'00:43:56.000000',NULL,219,'asking questions'),(2430,125,155,325,'explain patient status','2019-08-07 03:34:28',NULL,'00:45:36.000000',NULL,264,'explain the reaction'),(2431,125,101,325,'Measure blood pressure','2019-08-07 03:35:04',NULL,'00:46:12.000000',NULL,221,NULL),(2432,125,140,321,'Writing charts','2019-08-07 03:37:40',NULL,'00:48:48.000000',NULL,229,NULL),(2433,125,165,322,'Explanation to students','2019-08-07 03:38:28',NULL,'00:49:36.000000',NULL,219,'explaining about the charts and the difference they have to validate'),(2434,125,140,321,'Writing charts','2019-08-07 03:40:01',NULL,'00:51:09.000000',NULL,229,NULL),(2435,125,161,319,'Recover','2019-08-07 03:37:09',NULL,'00:48:17.000000',NULL,226,NULL),(2436,125,9,NULL,'Session ended','2019-08-07 03:45:20',NULL,'00:56:28.000000',NULL,NULL,NULL),(2437,126,8,NULL,'Session started','2019-08-07 23:20:50',NULL,NULL,NULL,NULL,NULL),(2438,126,178,330,'Reading Clinical History','2019-08-07 23:24:16',NULL,'00:03:26.000000',NULL,241,NULL),(2439,126,150,328,'Vital signs assessment','2019-08-07 23:25:23',NULL,'00:04:33.000000',NULL,244,'taking pulse'),(2440,126,180,328,'Asking questions to patient','2019-08-07 23:27:25',NULL,'00:06:35.000000',NULL,265,NULL),(2441,126,180,330,'Asking questions to patient','2019-08-07 23:27:59',NULL,'00:07:09.000000',NULL,265,'asking for the antibiotic, no one give antibiotics'),(2442,126,180,327,'Asking questions to patient','2019-08-07 23:32:15',NULL,'00:11:25.000000',NULL,265,'food'),(2443,126,180,328,'Asking questions to patient','2019-08-07 23:33:16',NULL,'00:12:26.000000',NULL,265,NULL),(2444,126,180,330,'Asking questions to patient','2019-08-07 23:35:40',NULL,'00:14:50.000000',NULL,265,'The patient has an Infection, water, oxygen'),(2445,126,101,328,'Measure blood pressure','2019-08-07 23:39:01',NULL,'00:18:11.000000',NULL,237,NULL),(2446,126,180,328,'Asking questions to patient','2019-08-07 23:40:02',NULL,'00:19:12.000000',NULL,265,'no pain just problems to breath'),(2447,126,140,330,'Writing charts','2019-08-07 23:40:53',NULL,'00:20:03.000000',NULL,245,NULL),(2448,126,174,329,'Preparing Fluids','2019-08-07 23:41:50',NULL,'00:21:00.000000',NULL,239,NULL),(2449,126,174,327,'Preparing Fluids','2019-08-07 23:41:57',NULL,'00:21:07.000000',NULL,239,NULL),(2450,126,180,327,'Asking questions to patient','2019-08-07 23:43:37',NULL,'00:22:47.000000',NULL,265,NULL),(2451,126,172,329,'IV Fluid Antibiotic','2019-08-07 23:44:18',NULL,'00:23:28.000000',NULL,236,NULL),(2452,126,176,326,'Chest Tightness and Erythematous torso rash','2019-08-07 23:44:51',NULL,'00:24:01.000000',NULL,232,'chest'),(2453,126,180,328,'Asking questions to patient','2019-08-07 23:46:07',NULL,'00:25:17.000000',NULL,265,NULL),(2455,126,173,327,'Stop IV Fluids','2019-08-07 23:49:16',NULL,'00:28:26.000000',NULL,243,NULL),(2456,126,132,330,'Call doctor','2019-08-07 23:49:43',NULL,'00:28:53.000000',NULL,231,'explain the allergic reaction'),(2457,126,155,328,'explain patient status','2019-08-07 23:50:39',NULL,'00:29:49.000000',NULL,235,'explanation of the allergic reaction'),(2458,126,165,331,'Explanation to students','2019-08-07 23:51:06',NULL,'00:30:16.000000',NULL,234,'explanation about the ECG'),(2459,126,155,330,'explain patient status','2019-08-08 00:02:25',NULL,'00:41:35.000000',NULL,235,NULL),(2460,126,140,328,'Writing charts','2019-08-08 00:05:45',NULL,'00:44:55.000000',NULL,245,NULL),(2461,126,140,327,'Writing charts','2019-08-08 00:05:48',NULL,'00:44:58.000000',NULL,245,NULL),(2462,126,140,329,'Writing charts','2019-08-08 00:05:52',NULL,'00:45:02.000000',NULL,245,NULL),(2463,126,161,326,'Recover','2019-08-08 00:05:45',NULL,'00:44:55.000000',NULL,242,NULL),(2464,126,140,329,'Writing charts','2019-08-08 00:15:26',NULL,'00:54:36.000000',NULL,245,NULL),(2465,126,140,328,'Writing charts','2019-08-08 00:15:48',NULL,'00:54:58.000000',NULL,245,NULL),(2466,126,140,327,'Writing charts','2019-08-08 00:15:53',NULL,'00:55:03.000000',NULL,245,NULL),(2467,126,9,NULL,'Session ended','2019-08-08 00:15:59',NULL,'00:55:09.000000',NULL,NULL,NULL),(2468,127,8,NULL,'Session started','2019-08-08 02:48:09',NULL,NULL,NULL,NULL,NULL),(2469,127,150,333,'Vital signs assessment','2019-08-08 02:50:55',NULL,'00:02:46.000000',NULL,260,NULL),(2470,127,180,334,'Asking questions to patient','2019-08-08 02:51:44',NULL,'00:03:35.000000',NULL,266,NULL),(2471,127,178,336,'Reading Clinical History','2019-08-08 02:51:56',NULL,'00:03:47.000000',NULL,257,NULL),(2472,127,180,334,'Asking questions to patient','2019-08-08 02:52:47',NULL,'00:04:38.000000',NULL,266,'pain assessment, medication he take, blood preassure'),(2473,127,101,333,'Measure blood pressure','2019-08-08 02:54:54',NULL,'00:06:45.000000',NULL,253,NULL),(2474,127,180,334,'Asking questions to patient','2019-08-08 02:56:27',NULL,'00:08:18.000000',NULL,266,'breathing questions'),(2475,127,97,334,'Oxygen device','2019-08-08 02:57:04',NULL,'00:08:55.000000',NULL,254,NULL),(2476,127,180,333,'Asking questions to patient','2019-08-08 02:59:53',NULL,'00:11:44.000000',NULL,266,NULL),(2477,127,180,336,'Asking questions to patient','2019-08-08 03:02:33',NULL,'00:14:24.000000',NULL,266,'antibiotics'),(2478,127,178,336,'Reading Clinical History','2019-08-08 03:09:44',NULL,'00:21:35.000000',NULL,257,NULL),(2479,127,174,333,'Preparing Fluids','2019-08-08 03:10:27',NULL,'00:22:18.000000',NULL,255,NULL),(2480,127,140,336,'Writing charts','2019-08-08 03:11:11',NULL,'00:23:02.000000',NULL,261,NULL),(2481,127,165,337,'Explanation to students','2019-08-08 03:15:11',NULL,'00:27:02.000000',NULL,251,'asking questions about the antibiotic'),(2482,127,165,337,'Explanation to students','2019-08-08 03:16:57',NULL,'00:28:48.000000',NULL,251,'explaining about ECG and other respiratory problems'),(2483,127,165,337,'Explanation to students','2019-08-08 03:19:21',NULL,'00:31:12.000000',NULL,251,'explaining about antibiotic'),(2484,127,174,334,'Preparing Fluids','2019-08-08 03:26:46',NULL,'00:38:37.000000',NULL,255,'N1 get hurt'),(2486,127,172,334,'IV Fluid Antibiotic','2019-08-08 03:32:01',NULL,'00:43:52.000000',NULL,252,NULL),(2487,127,172,336,'IV Fluid Antibiotic','2019-08-08 03:32:02',NULL,'00:43:53.000000',NULL,252,NULL),(2488,127,155,336,'explain patient status','2019-08-08 03:32:45',NULL,'00:44:36.000000',NULL,250,'provide antibiotics'),(2489,127,176,332,'Chest Tightness and Erythematous torso rash','2019-08-08 03:34:50',NULL,'00:46:41.000000',NULL,248,NULL),(2490,127,173,333,'Stop IV Fluids','2019-08-08 03:36:52',NULL,'00:48:43.000000',NULL,259,NULL),(2491,127,180,336,'Asking questions to patient','2019-08-08 03:38:02',NULL,'00:49:53.000000',NULL,266,NULL),(2492,127,155,336,'explain patient status','2019-08-08 03:38:45',NULL,'00:50:36.000000',NULL,250,'stop antibiotics'),(2493,127,2,333,'Attach 3-lead ECG','2019-08-08 03:39:09',NULL,'00:51:00.000000',NULL,246,NULL),(2494,127,132,334,'Call doctor','2019-08-08 03:40:29',NULL,'00:52:20.000000',NULL,247,NULL),(2495,127,165,337,'Explanation to students','2019-08-08 03:43:08',NULL,'00:54:59.000000',NULL,251,'focused on the patient'),(2496,127,179,336,'Reading Books','2019-08-08 03:47:42',NULL,'00:59:33.000000',NULL,256,NULL),(2497,127,179,334,'Reading Books','2019-08-08 03:47:51',NULL,'00:59:42.000000',NULL,256,NULL),(2500,127,165,337,'Explanation to students','2019-08-08 03:58:22',NULL,'01:10:13.000000',NULL,251,'explain they have to write charts'),(2501,127,140,333,'Writing charts','2019-08-08 03:58:58',NULL,'01:10:49.000000',NULL,261,NULL),(2502,127,140,336,'Writing charts','2019-08-08 03:59:23',NULL,'01:11:14.000000',NULL,261,NULL),(2503,127,161,332,'Recover','2019-08-08 03:46:30',NULL,'00:58:21.000000',NULL,258,NULL),(2504,127,9,NULL,'Session ended','2019-08-08 03:59:38',NULL,'01:11:29.000000',NULL,NULL,NULL),(2510,124,8,NULL,'Session started','2019-08-09 05:03:46',NULL,NULL,NULL,NULL,NULL),(2512,124,176,312,'Chest Tightness and Erythematous torso rash','2019-08-09 05:05:58',NULL,'00:02:12.000000',NULL,267,NULL),(2513,124,161,312,'Recover','2019-08-09 05:06:34',NULL,'00:02:48.000000',NULL,198,NULL),(2514,124,9,NULL,'Session ended','2019-08-09 05:06:39',NULL,'00:02:53.000000',NULL,NULL,NULL),(2515,127,140,335,'Writing charts','2019-08-08 03:58:58',NULL,'01:10:49.000000',NULL,261,NULL),(2516,128,8,NULL,'Session started','2020-01-15 17:32:44',NULL,NULL,NULL,NULL,NULL),(2517,128,160,338,'Nauseous + Hypotension','2020-01-15 17:32:56',NULL,'00:00:12.000000',NULL,270,NULL),(2518,128,170,338,'IV medication Ondansetron','2020-01-15 17:33:08',NULL,'00:00:24.000000',NULL,269,NULL),(2519,128,169,338,'IV medication Fentanyl','2020-01-15 17:33:32',NULL,'00:00:48.000000',NULL,268,NULL),(2520,128,9,NULL,'Session ended','2020-01-15 17:34:15',NULL,'00:01:31.000000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `action_session_object` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `group_analytics`.`action_session_BEFORE_INSERT` BEFORE INSERT ON `action_session_object` FOR EACH ROW
BEGIN
DECLARE x TIMESTAMP;
	IF (NEW.time_action IS NULL OR NEW.time_action = '') THEN
    
		SET x = (SELECT time_action FROM action_session_object WHERE id_session = NEW.id_session AND action_desc = 'Session started'); 
		SET NEW.time_action = TIMESTAMPADD(SECOND,NEW.mseconds/1000,x);
        SET NEW.duration = TIMEDIFF(NEW.time_action,x);
    END IF;
    
    IF (NEW.time_action IS NOT NULL OR NEW.id_object IS NOT NULL) THEN
		SET x = (SELECT time_action FROM action_session_object WHERE id_session = NEW.id_session AND action_desc = 'Session started'); 
        SET NEW.duration = TIMEDIFF(NEW.time_action,x);
    END IF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `group_analytics`.`action_session_BEFORE_UPDATE` BEFORE UPDATE ON `action_session_object` FOR EACH ROW
BEGIN
DECLARE x TIMESTAMP;
	IF (NEW.time_action IS NULL OR NEW.time_action = '') THEN
    
		SET x = (SELECT time_action FROM action_session_object WHERE id_session = NEW.id_session AND action_desc = 'Session started'); 
		SET NEW.time_action = TIMESTAMPADD(SECOND,NEW.mseconds/1000,x);
        SET NEW.duration = TIMEDIFF(NEW.time_action,x);
    END IF;
    
    IF (NEW.time_action IS NOT NULL OR NEW.id_object IS NOT NULL) THEN
		SET x = (SELECT time_action FROM action_session_object WHERE id_session = NEW.id_session AND action_desc = 'Session started'); 
        SET NEW.duration = TIMEDIFF(NEW.time_action,x);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `action_session_rules`
--

DROP TABLE IF EXISTS `action_session_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `action_session_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_actionsession` int(11) NOT NULL,
  `id_action` int(11) DEFAULT NULL,
  `time_response` time(5) DEFAULT NULL,
  `parameter` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_actionsession_idx` (`id_actionsession`),
  KEY `fk_id_action_idx` (`id_action`),
  CONSTRAINT `fk_id_action` FOREIGN KEY (`id_action`) REFERENCES `actions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_actionsession` FOREIGN KEY (`id_actionsession`) REFERENCES `action_session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_session_rules`
--

LOCK TABLES `action_session_rules` WRITE;
/*!40000 ALTER TABLE `action_session_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_session_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actions` (
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` varchar(45) DEFAULT NULL,
  `action_subclass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('Attach pulse oximeter',1,'event',NULL),('Attach 3-lead ECG',2,'event',NULL),('Examine eyes',3,'other',NULL),('Head tilt chin lift',4,'response',NULL),('Pulses RightHand Limited',6,'response',NULL),('Bleeding UpperPortRate_Percent',7,'response',NULL),('Session started',8,'event',NULL),('Session ended',9,'event',NULL),('Convulsions Type',11,'response',NULL),('Convulsions Type1',12,'response',NULL),('Convulsions Type2',13,'response',NULL),('Convulsions Type3',33,'response',NULL),('Convulsions Type4',34,'response',NULL),('Convulsions Type5',35,'response',NULL),('Ecg HeartRate_bpm',37,'response',NULL),('Ask for help',38,'critical',NULL),('Lose Conciousness',39,'response',NULL),('Start CPR',40,'event',NULL),('Stop CPR',41,'event',NULL),('*** TEST ***',43,'other',NULL),('Example',44,'other',NULL),('AGT inAGTetAGTTrendMin_Percent',56,'response',NULL),('PAP Wedge_mmHg',57,'response',NULL),('CardiacOutput Value_LiterPerMinute',58,'response',NULL),('Neck Limited',59,'response',NULL),('Femoral Limited',60,'response',NULL),('Heart Whole',61,'response',NULL),('Heart Aortic',62,'response',NULL),('Heart Pulmonary',63,'response',NULL),('Heart Tricuspid',64,'response',NULL),('Heart Mitral',65,'response',NULL),('Bowel Whole',66,'response',NULL),('PAP Diastolic_mmHg',67,'response',NULL),('Eyes BlinkRate',68,'response',NULL),('LeftHand Limited',69,'response',NULL),('RightHand Limited',70,'response',NULL),('LeftFoot Limited',71,'response',NULL),('RightFoot Limited',72,'response',NULL),('LeftArm Limited',73,'response',NULL),('LeftLeg Limited',74,'response',NULL),('Secretions Sweat',75,'response',NULL),('Eyes EyelidStatus',76,'response',NULL),('BloodPressure Systolic_mmHg',77,'response',NULL),('BloodPressure Diastolic_mmHg',78,'response',NULL),('RightLeg Limited',79,'response',NULL),('PAP Systolic_mmHg',80,'response',NULL),('Ecg BasicRhythm',81,'response',NULL),('Respiration RR_BreathsPerMinute',82,'response',NULL),('etCO2 Value_mmHg',83,'response',NULL),('Response ICP_mmHg',84,'response',NULL),('Next to the patient',85,'event',NULL),('Get resus trolley',86,'event',NULL),('PulmonaryVolume Percent',87,'response','Heart'),('inAGTetAGTTrendMin Percent',88,'response','AGT'),('HeartRate bpm',89,'response','Ecg'),('RR BreathsPerMinute',90,'response','Respiration'),('Systolic mmHg',91,'response','BloodPressure'),('Diastolic mmHg',92,'response','BloodPressure'),('Value Percent',93,'response','SpO2'),('BasicRhythm',94,'response','Ecg'),('Pulse bpm',95,'response','Ecg'),('Monitor layout changed',96,'other','Event'),('Oxygen device',97,'event','Event'),('Anginine',98,'event',''),('awRR BreathsPerMinute',99,'response','Respiration'),('Attach NIBP',100,'event','Event'),('Measure blood pressure',101,'event','Event'),('EyelidStatus',102,'response','Eyes'),('Start compressions',103,'other','Event'),('CompressionLatestDepth mm',104,'response','QCPR'),('CompressionLatestReleaseDepth mm',105,'response','QCPR'),('CompressionLatestHandPosOK',106,'response','QCPR'),('CompressionMovingAverageRate cpm',107,'response','QCPR'),('CompressionTotalCount',108,'response','QCPR'),('CompressionTotalAverageDepth mm',109,'response','QCPR'),('CompressionTotalAverageRate cpm',110,'response','QCPR'),('CompressionTotalHandPosOK Percent',111,'response','QCPR'),('Stop compressions',112,'other','Event'),('CompressionCyclesCount',113,'response','QCPR'),('VentilationCyclesCount',114,'response','QCPR'),('Deliver shock',115,'response','Event'),('Ventilation',116,'event','QCPR'),('Check left radial pulse',117,'event','Event'),('Limited',118,'response','LeftHand'),('CompressionTotalAverageReleaseDepth mm',119,'response','QCPR'),('VentilationLatestVolume ml',120,'response','QCPR'),('VentilationLatestInflationTime ms',121,'response','QCPR'),('VentilationMovingAverageRate vpm',122,'response','QCPR'),('VentilationTotalCount',123,'response','QCPR'),('Start ventilations',124,'response','Event'),('VentilationTotalAverageVolume ml',125,'response','QCPR'),('Stop ventilations',126,'response','Event'),('Monitor Tperi on',127,'response','Event'),('Switch Phase',128,'response','Event'),('Recover',129,'response','Event'),('IV fluid antibiotics',130,'response',NULL),('Deteriorate',131,'event',NULL),('Call doctor',132,'event',NULL),('Stop IV fluid',133,'response',NULL),('Looking for information',134,'response',NULL),('Doctor',135,'response',NULL),('Medicine',136,'response',NULL),('Preparing fluids',137,'response',NULL),('Observations',138,'response',NULL),('Lungs',139,'response',NULL),('Writing charts',140,'event',NULL),('Measure temperature',146,'event',NULL),('Pain assessment',148,'event',NULL),('Airway assessment',149,'event',NULL),('Vital signs assessment',150,'event',NULL),('head tilt/chin',151,'event',NULL),('Guedel\'s airway',152,'event',NULL),('IV medication',153,'event',NULL),('preparing paperwork',154,'event',NULL),('explain patient status',155,'event',NULL),('handing over',156,'event',NULL),('Breathing-Obstructed',157,'critical',NULL),('Hypertension',158,'critical',NULL),('Abdominal pain',159,'critical',NULL),('Nauseous + Hypotension',160,'critical',NULL),('Recover',161,'critical',NULL),('Check fluids',162,'event',NULL),('Talk to the doctor',163,'event',NULL),('Sucction Secretions',164,'event',NULL),('Explanation to students',165,'event',NULL),('Orine output',166,'event',NULL),('Urine output',167,'event',NULL),('Adding oxygen therapy',168,'event',NULL),('IV medication Fentanyl',169,'event',NULL),('IV medication Ondansetron',170,'event',NULL),('Warm the patient',171,'event',NULL),('IV Fluid Antibiotic',172,'event',NULL),('Stop IV Fluids',173,'event',NULL),('Preparing Fluids',174,'event',NULL),('Chest Tightness',175,'critical',NULL),('Chest Tightness and Erythematous torso rash',176,'critical',NULL),('Erythematous torso rash',177,'critical',NULL),('Reading Clinical History',178,'event',NULL),('Reading Books',179,'event',NULL),('Asking questions to patient',180,'event',NULL);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `datatype` (
  `name` varchar(20) DEFAULT NULL,
  `vendor_name` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype`
--

LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES ('location','location',1),('audio','microphone',2),('physiological','empatica E4',3),('manikin','simMan 3G',4),('video','room cam',5),('video','hand cam',6);
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype_session`
--

DROP TABLE IF EXISTS `datatype_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `datatype_session` (
  `start_capture` timestamp NULL DEFAULT NULL,
  `end_capture` timestamp NULL DEFAULT NULL,
  `file_log` varchar(250) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_session` int(11) NOT NULL,
  `id_datatype` int(11) NOT NULL,
  `id_session_datatype` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `id_empatica` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_session`,`id_datatype`,`id_session_datatype`),
  KEY `fk_datatype_session_datatype1_idx` (`id_datatype`),
  KEY `fk_datatype_session_idx` (`id_session`),
  KEY `fk_empatica_serial_idx` (`id_empatica`),
  CONSTRAINT `fk_datatype` FOREIGN KEY (`id_datatype`) REFERENCES `datatype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_datatype_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empatica_serial` FOREIGN KEY (`id_empatica`) REFERENCES `trackers` (`serial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype_session`
--

LOCK TABLES `datatype_session` WRITE;
/*!40000 ALTER TABLE `datatype_session` DISABLE KEYS */;
INSERT INTO `datatype_session` VALUES ('2019-05-08 06:04:48','2019-05-08 06:04:53',NULL,'pozyx-1',108,1,1,0,NULL),('2019-05-08 06:04:55','2019-05-08 06:04:58',NULL,'microcone-1',108,2,1,0,NULL),('2019-05-08 06:05:00','2019-05-08 06:05:02',NULL,'sony cam-1',108,6,1,0,NULL),('2019-05-08 06:27:19','2019-05-08 06:30:27',NULL,'pozyx-1',109,1,1,0,NULL),('2019-05-08 06:27:38','2019-05-08 06:30:30',NULL,'microcone-1',109,2,1,0,NULL),('2019-05-08 06:27:50','2019-05-08 06:30:31',NULL,'microcone-2',109,2,2,0,NULL),('2019-05-08 06:29:20','2019-05-08 06:30:40',NULL,'empatica E4-1',109,3,1,0,'A0217A'),('2019-05-08 06:30:14','2019-05-08 06:30:49',NULL,'empatica E4-2',109,3,2,0,'A010C7'),('2019-05-08 06:30:14','2019-05-08 06:30:51',NULL,'empatica E4-3',109,3,3,0,'A012D8'),('2019-05-15 04:41:36',NULL,NULL,'pozyx-1',110,1,1,1,NULL),('2019-05-15 04:41:46',NULL,NULL,'empatica E4-1',110,3,1,1,'A010C7'),('2019-05-15 04:41:47',NULL,NULL,'empatica E4-2',110,3,2,1,'A012D8'),('2019-05-15 04:41:48',NULL,NULL,'empatica E4-3',110,3,3,1,'A012EF'),('2019-05-15 04:41:50',NULL,NULL,'empatica E4-4',110,3,4,1,'A013B2'),('2019-05-15 04:41:55',NULL,NULL,'simMan 3G-1',110,4,1,1,NULL),('2019-05-15 04:41:59',NULL,NULL,'canon cam-1',110,5,1,1,NULL),('2019-05-15 05:14:08',NULL,NULL,'pozyx-1',111,1,1,1,NULL),('2019-05-15 05:14:11',NULL,NULL,'microcone-1',111,2,1,1,NULL),('2019-05-15 05:14:14',NULL,NULL,'empatica E4-1',111,3,1,1,'A010C7'),('2019-05-15 05:14:15',NULL,NULL,'empatica E4-2',111,3,2,1,'A012D8'),('2019-05-15 05:14:16',NULL,NULL,'empatica E4-3',111,3,3,1,'A012EF'),('2019-05-15 05:14:17',NULL,NULL,'empatica E4-4',111,3,4,1,'A013B2'),('2019-05-15 05:14:17',NULL,NULL,'simMan 3G-1',111,4,1,1,NULL),('2019-05-15 05:14:18',NULL,NULL,'canon cam-1',111,5,1,1,NULL),('2019-05-19 10:17:52','2019-05-19 10:19:05',NULL,'location-1',113,1,1,0,NULL),('2019-05-19 10:17:53','2019-05-19 10:20:06',NULL,'empatica E4-1',113,3,1,0,'A012EF'),('2019-05-19 10:17:54','2019-05-19 10:20:07',NULL,'empatica E4-2',113,3,2,0,'A013B2'),('2019-05-19 10:17:54','2019-05-19 10:20:08',NULL,'empatica E4-3',113,3,3,0,'A012D8'),('2019-05-19 10:17:55','2019-05-19 10:20:09',NULL,'empatica E4-4',113,3,4,0,'A010C7'),('2019-05-19 10:17:56','2019-05-19 10:20:11',NULL,'empatica E4-5',113,3,5,0,'A0217A'),('2019-05-19 10:17:57','2019-05-19 10:20:18',NULL,'simMan 3G-1',113,4,1,0,NULL),('2019-05-19 10:17:58','2019-05-19 10:20:19',NULL,'room cam-1',113,5,1,0,NULL),('2019-05-19 10:17:59','2019-05-19 10:20:20',NULL,'hand cam-1',113,6,1,0,NULL),('2019-05-19 12:51:35','2019-05-19 12:52:46',NULL,'location-1',114,1,1,0,NULL),('2019-05-19 12:51:36','2019-05-19 12:52:49',NULL,'empatica E4-1',114,3,1,0,'A012EF'),('2019-05-19 12:51:37','2019-05-19 12:52:52',NULL,'empatica E4-2',114,3,2,0,'A013B2'),('2019-05-19 12:51:37','2019-05-19 12:53:01',NULL,'empatica E4-3',114,3,3,0,'A012D8'),('2019-05-19 12:51:39','2019-05-19 12:53:04',NULL,'empatica E4-4',114,3,4,0,'A010C7'),('2019-05-19 12:51:40','2019-05-19 12:53:06',NULL,'empatica E4-5',114,3,5,0,'A0217A'),('2019-05-19 12:51:40','2019-05-19 12:53:07',NULL,'simMan 3G-1',114,4,1,0,NULL),('2019-05-19 12:51:41','2019-05-19 12:53:09',NULL,'room cam-1',114,5,1,0,NULL),('2019-05-19 13:02:57','2019-05-19 13:04:27',NULL,'location-1',115,1,1,0,NULL),('2019-05-19 13:03:06','2019-05-19 13:04:28',NULL,'empatica E4-1',115,3,1,0,'A012EF'),('2019-05-19 13:03:12','2019-05-19 13:04:29',NULL,'empatica E4-2',115,3,2,0,'A013B2'),('2019-05-19 13:03:16','2019-05-19 13:04:30',NULL,'empatica E4-3',115,3,3,0,'A012D8'),('2019-05-19 13:03:19','2019-05-19 13:04:31',NULL,'empatica E4-4',115,3,4,0,'A010C7'),('2019-05-19 13:03:21','2019-05-19 13:04:32',NULL,'empatica E4-5',115,3,5,0,'A0217A'),('2019-05-19 13:03:02','2019-05-19 13:04:33',NULL,'simMan 3G-1',115,4,1,0,NULL),('2019-05-19 13:03:04','2019-05-19 13:04:34',NULL,'room cam-1',115,5,1,0,NULL),('2019-05-19 23:04:32','2019-05-19 23:04:29',NULL,'location-1',116,1,1,1,NULL),('2019-05-19 22:49:04',NULL,NULL,'microphone-1',116,2,1,1,NULL),('2019-05-19 22:51:19',NULL,NULL,'empatica E4-1',116,3,1,1,'A012EF'),('2019-05-19 22:51:07',NULL,NULL,'empatica E4-2',116,3,2,1,'A013B2'),('2019-05-19 22:50:01',NULL,NULL,'empatica E4-3',116,3,3,1,'A012D8'),('2019-05-19 22:50:40',NULL,NULL,'empatica E4-4',116,3,4,1,'A010C7'),('2019-05-19 22:48:42','2019-05-19 22:47:51',NULL,'empatica E4-5',116,3,5,1,'A0217A'),('2019-05-19 23:31:42','2019-05-19 23:31:39',NULL,'simMan 3G-1',116,4,1,1,NULL),('2019-05-19 23:07:19',NULL,NULL,'room cam-1',116,5,1,1,NULL),('2019-05-19 22:50:52',NULL,NULL,'hand cam-1',116,6,1,1,NULL),('2019-05-20 01:52:26',NULL,NULL,'location-1',117,1,1,1,NULL),('2019-05-20 01:48:16',NULL,NULL,'microphone-1',117,2,1,1,NULL),('2019-05-20 01:47:07',NULL,NULL,'empatica E4-1',117,3,1,1,'A012EF'),('2019-05-20 01:47:16',NULL,NULL,'empatica E4-2',117,3,2,1,'A013B2'),('2019-05-20 01:47:25',NULL,NULL,'empatica E4-3',117,3,3,1,'A012D8'),('2019-05-20 01:46:49',NULL,NULL,'empatica E4-4',117,3,4,1,'A010C7'),('2019-05-20 01:46:57',NULL,NULL,'empatica E4-5',117,3,5,1,'A0217A'),('2019-05-20 02:30:05',NULL,NULL,'simMan 3G-1',117,4,1,1,NULL),('2019-05-20 02:01:24',NULL,NULL,'room cam-1',117,5,1,1,NULL),('2019-05-20 22:45:21',NULL,NULL,'location-1',118,1,1,1,NULL),('2019-05-20 22:45:37',NULL,NULL,'microphone-1',118,2,1,1,NULL),('2019-05-20 22:38:09',NULL,NULL,'empatica E4-1',118,3,1,1,'A012EF'),('2019-05-20 22:38:27',NULL,NULL,'empatica E4-2',118,3,2,1,'A013B2'),('2019-05-20 22:38:35',NULL,NULL,'empatica E4-3',118,3,3,1,'A012D8'),('2019-05-20 22:38:20',NULL,NULL,'empatica E4-4',118,3,4,1,'A010C7'),('2019-05-20 22:38:42',NULL,NULL,'empatica E4-5',118,3,5,1,'A0217A'),('2019-05-20 23:14:21',NULL,NULL,'simMan 3G-1',118,4,1,1,NULL),('2019-05-20 23:00:20',NULL,NULL,'room cam-1',118,5,1,1,NULL),('2019-05-21 01:56:39',NULL,NULL,'location-1',119,1,1,1,NULL),('2019-05-21 01:55:49',NULL,NULL,'microphone-1',119,2,1,1,NULL),('2019-05-21 01:53:42',NULL,NULL,'empatica E4-1',119,3,1,1,'A012EF'),('2019-05-21 01:53:54',NULL,NULL,'empatica E4-2',119,3,2,1,'A013B2'),('2019-05-21 01:54:03',NULL,NULL,'empatica E4-3',119,3,3,1,'A012D8'),('2019-05-21 01:54:15',NULL,NULL,'empatica E4-4',119,3,4,1,'A010C7'),('2019-05-21 01:55:39',NULL,NULL,'empatica E4-5',119,3,5,1,'A0217A'),('2019-05-21 02:20:06',NULL,NULL,'simMan 3G-1',119,4,1,1,NULL),('2019-05-21 01:59:52',NULL,NULL,'room cam-1',119,5,1,1,NULL),('2019-07-03 02:12:42',NULL,NULL,'location-1',120,1,1,1,NULL),('2019-07-03 02:12:43',NULL,NULL,'empatica E4-1',120,3,1,1,'A010C7'),('2019-07-03 02:12:44',NULL,NULL,'simMan 3G-1',120,4,1,1,NULL),('2019-08-01 06:48:50',NULL,NULL,'location-1',121,1,1,1,NULL),('2019-08-01 06:48:50',NULL,NULL,'microphone-1',121,2,1,1,NULL),('2019-08-06 02:19:51',NULL,NULL,'location-1',122,1,1,1,NULL),('2019-08-06 02:27:30',NULL,NULL,'microphone-1',122,2,1,1,NULL),('2019-08-06 02:30:09',NULL,NULL,'microphone-2',122,2,2,1,NULL),('2019-08-06 02:29:23',NULL,NULL,'empatica E4-1',122,3,1,1,'A012EF'),('2019-08-06 02:29:16',NULL,NULL,'empatica E4-2',122,3,2,1,'A013B2'),('2019-08-06 02:29:31',NULL,NULL,'empatica E4-3',122,3,3,1,'A012D8'),('2019-08-06 02:28:39',NULL,NULL,'empatica E4-4',122,3,4,1,'A010C7'),('2019-08-06 02:29:06',NULL,NULL,'empatica E4-5',122,3,5,1,'A0217A'),('2019-08-06 02:45:26',NULL,NULL,'simMan 3G-1',122,4,1,1,NULL),('2019-08-06 02:45:27',NULL,NULL,'room cam-1',122,5,1,1,NULL),('2019-08-06 02:24:19',NULL,NULL,'hand cam-1',122,6,1,1,NULL),('2019-08-06 02:31:32',NULL,NULL,'hand cam-2',122,6,2,1,NULL),('2019-08-06 22:45:50',NULL,NULL,'location-1',123,1,1,1,NULL),('2019-08-06 22:46:47',NULL,NULL,'microphone-1',123,2,1,1,NULL),('2019-08-06 22:47:33',NULL,NULL,'microphone-2',123,2,2,1,NULL),('2019-08-06 22:48:07',NULL,NULL,'empatica E4-1',123,3,1,1,'A012EF'),('2019-08-06 22:48:18',NULL,NULL,'empatica E4-2',123,3,2,1,'A013B2'),('2019-08-06 22:48:29',NULL,NULL,'empatica E4-3',123,3,3,1,'A012D8'),('2019-08-06 22:48:44',NULL,NULL,'empatica E4-4',123,3,4,1,'A010C7'),('2019-08-06 22:49:06',NULL,NULL,'empatica E4-5',123,3,5,1,'A0217A'),(NULL,NULL,NULL,'simMan 3G-1',123,4,1,0,NULL),(NULL,NULL,NULL,'room cam-1',123,5,1,0,NULL),('2019-08-06 22:49:40',NULL,NULL,'hand cam-1',123,6,1,1,NULL),('2019-08-06 22:50:02',NULL,NULL,'hand cam-2',123,6,2,1,NULL),('2019-08-09 04:56:59',NULL,NULL,'room cam-1',124,5,1,1,NULL),('2019-08-07 02:25:37','2019-08-07 02:00:17',NULL,'location-1',125,1,1,1,NULL),('2019-08-07 02:10:39',NULL,NULL,'microphone-1',125,2,1,1,NULL),('2019-08-07 02:10:55',NULL,NULL,'microphone-2',125,2,2,1,NULL),('2019-08-07 02:15:26',NULL,NULL,'empatica E4-1',125,3,1,1,'A012EF'),('2019-08-07 02:15:44',NULL,NULL,'empatica E4-2',125,3,2,1,'A013B2'),('2019-08-07 02:15:19',NULL,NULL,'empatica E4-3',125,3,3,1,'A012D8'),('2019-08-07 02:15:38','2019-08-07 02:15:34',NULL,'empatica E4-4',125,3,4,1,'A010C7'),('2019-08-07 02:15:50',NULL,NULL,'empatica E4-5',125,3,5,1,'A0217A'),('2019-08-07 02:14:38',NULL,NULL,'hand cam-1',125,6,1,1,NULL),('2019-08-07 02:15:02',NULL,NULL,'hand cam-2',125,6,2,1,NULL),('2019-08-07 22:45:23','2019-08-07 22:45:17',NULL,'location-1',126,1,1,1,NULL),('2019-08-07 22:48:05',NULL,NULL,'microphone-1',126,2,1,1,NULL),('2019-08-07 22:48:41',NULL,NULL,'microphone-2',126,2,2,1,NULL),('2019-08-07 22:50:19',NULL,NULL,'empatica E4-1',126,3,1,1,'A012EF'),('2019-08-07 22:50:33',NULL,NULL,'empatica E4-2',126,3,2,1,'A013B2'),('2019-08-07 22:50:26',NULL,NULL,'empatica E4-3',126,3,3,1,'A012D8'),('2019-08-07 22:50:09',NULL,NULL,'empatica E4-4',126,3,4,1,'A010C7'),('2019-08-07 22:50:40',NULL,NULL,'empatica E4-5',126,3,5,1,'A0217A'),('2019-08-07 22:49:41',NULL,NULL,'hand cam-1',126,6,1,1,NULL),('2019-08-07 22:51:12',NULL,NULL,'hand cam-2',126,6,2,1,NULL),('2019-08-08 02:12:34',NULL,NULL,'location-1',127,1,1,1,NULL),('2019-08-08 02:16:53',NULL,NULL,'microphone-1',127,2,1,1,NULL),('2019-08-08 02:17:09','2019-08-08 02:16:39',NULL,'microphone-2',127,2,2,1,NULL),('2019-08-08 02:17:33',NULL,NULL,'empatica E4-1',127,3,1,1,'A012EF'),('2019-08-08 02:17:45',NULL,NULL,'empatica E4-2',127,3,2,1,'A013B2'),('2019-08-08 02:17:27',NULL,NULL,'empatica E4-3',127,3,3,1,'A012D8'),('2019-08-08 02:17:39',NULL,NULL,'empatica E4-4',127,3,4,1,'A010C7'),('2019-08-08 02:17:20',NULL,NULL,'empatica E4-5',127,3,5,1,'A0217A'),('2019-08-08 02:18:19','2019-08-08 02:15:08',NULL,'hand cam-1',127,6,1,1,NULL),('2019-08-08 02:18:19','2019-08-08 02:15:08',NULL,'hand cam-2',127,6,2,1,NULL),('2020-01-15 17:31:35',NULL,NULL,'microphone-1',128,2,1,1,NULL),('2020-01-15 17:31:41',NULL,NULL,'empatica E4-1',128,3,1,1,'A010C7');
/*!40000 ALTER TABLE `datatype_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_data_session`
--

DROP TABLE IF EXISTS `location_data_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location_data_session` (
  `id_tag` varchar(25) NOT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `id_session` int(11) NOT NULL,
  `acc_x` float DEFAULT NULL,
  `time_from_start` time(6) DEFAULT NULL,
  `acc_y` float DEFAULT NULL,
  `acc_z` float DEFAULT NULL,
  `yaw` float DEFAULT NULL,
  `pitch` float DEFAULT NULL,
  `roll` float DEFAULT NULL,
  KEY `fk_session_idx` (`id_session`),
  KEY `fk_locdatasession_tracker_idx` (`id_tag`),
  CONSTRAINT `fk_locdatasession_tracker` FOREIGN KEY (`id_tag`) REFERENCES `trackers` (`serial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_data_session`
--

LOCK TABLES `location_data_session` WRITE;
/*!40000 ALTER TABLE `location_data_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_data_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `group_analytics`.`location_data_session_BEFORE_INSERT` BEFORE INSERT ON `location_data_session` FOR EACH ROW
BEGIN
	DECLARE x TIMESTAMP;
	SET x = (SELECT action_session.time_action FROM action_session WHERE action_session.id_session = NEW.id_session AND action_session.id_action = 8); 
	SET NEW.time_from_start = ABS(TIMEDIFF(x,NEW.timestamp));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `group_analytics`.`location_data_session_BEFORE_UPDATE` BEFORE UPDATE ON `location_data_session` FOR EACH ROW
BEGIN
	DECLARE x TIMESTAMP;
	SET x = (SELECT action_session.time_action FROM action_session WHERE action_session.id_session = NEW.id_session AND action_session.id_action = 8); 
	SET NEW.time_from_start = ABS(TIMEDIFF(x,NEW.timestamp));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `object_session`
--

DROP TABLE IF EXISTS `object_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `object_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `serial` varchar(25) DEFAULT NULL,
  `id_object` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `empatica` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_objsess_obj_idx` (`id_object`),
  KEY `fk_objsess_session_idx` (`id_session`),
  KEY `fk_objsess_tracker_idx` (`serial`),
  KEY `fk_objsess_empatica_idx` (`empatica`),
  CONSTRAINT `fk_objsess_empatica` FOREIGN KEY (`empatica`) REFERENCES `trackers` (`serial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_objsess_obj` FOREIGN KEY (`id_object`) REFERENCES `objects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_objsess_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_objsess_tracker` FOREIGN KEY (`serial`) REFERENCES `trackers` (`serial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_session`
--

LOCK TABLES `object_session` WRITE;
/*!40000 ALTER TABLE `object_session` DISABLE KEYS */;
INSERT INTO `object_session` VALUES (227,'student1','26656',1,108,'pozyx',NULL),(228,'teacher1','26675',3,108,'pozyx',NULL),(229,'PTN1',NULL,7,109,NULL,NULL),(230,'RN1','26656',6,109,'empatica','A0217A'),(231,'RN2','26675',6,109,'empatica','A010C7'),(232,'RN3','26679',6,109,'empatica','A012D8'),(234,'TCH','26689',3,109,'pozyx',NULL),(235,'PTN',NULL,7,110,NULL,NULL),(236,'TCH',NULL,3,110,NULL,NULL),(237,'RN1','26656',6,110,'empatica','A010C7'),(238,'RN2',NULL,6,110,'empatica','A012D8'),(239,'RN3',NULL,6,110,NULL,NULL),(240,'PTN',NULL,7,111,NULL,NULL),(241,'RN1','26656',6,111,'empatica','A010C7'),(242,'RN2','26675',6,111,'empatica','A012D8'),(243,'RN3','26679',6,111,'empatica','A012EF'),(244,'RN1',NULL,6,112,NULL,NULL),(245,'RN2',NULL,6,112,NULL,NULL),(246,'TCH',NULL,3,112,NULL,NULL),(247,'RN1','26679',6,113,'empatica','A012EF'),(248,'RN2','26675',6,113,'empatica','A013B2'),(249,'PTN1','26689',7,113,'pozyx',NULL),(250,'RN3','28166',6,113,'pozyx','A012D8'),(251,'DR','26656',6,113,'empatica','A010C7'),(252,'TCH','28266',3,113,'empatica','A0217A'),(254,'RN1','26679',6,114,'empatica','A012EF'),(255,'RN2','26675',6,114,'empatica','A013B2'),(256,'RN3','28166',6,114,'empatica','A012D8'),(257,'PTN1','26689',7,114,'pozyx',NULL),(258,'TCH','28266',3,114,'empatica','A0217A'),(259,'DR','26656',1,114,'empatica','A010C7'),(260,'RN1','26679',6,115,'empatica','A012EF'),(261,'RN2','26675',6,115,'empatica','A013B2'),(262,'RN3','28166',6,115,'empatica','A012D8'),(263,'RN4','26656',6,115,'empatica','A010C7'),(266,'PTN','26689',7,115,'pozyx',NULL),(267,'TCH','28266',3,115,'pozyx',NULL),(268,'RN1','26679',6,116,'empatica','A012EF'),(269,'RN2','26675',6,116,'empatica','A013B2'),(270,'RN3','28166',6,116,'empatica','A012D8'),(271,'PTN','26689',7,116,'pozyx',NULL),(272,'DR','26656',6,116,'empatica','A010C7'),(275,'TCH','28266',6,116,'empatica','A0217A'),(276,'RN1','26679',6,117,'empatica','A012EF'),(277,'RN2','26675',6,117,'empatica','A013B2'),(278,'RN3','28166',6,117,'empatica','A012D8'),(279,'PTN','26689',7,117,'pozyx',NULL),(280,'DR','26656',6,117,'pozyx','A010C7'),(282,'TCH','28266',6,117,'empatica','A0217A'),(283,'RN1','26679',6,118,'empatica','A012EF'),(284,'RN2','26675',6,118,'empatica','A013B2'),(285,'RN3','28166',6,118,'empatica','A012D8'),(286,'PTN','26689',7,118,'pozyx',NULL),(287,'TCH','28266',6,118,'empatica','A0217A'),(288,'DR','26656',6,118,'empatica','A010C7'),(289,'RN1','26679',6,119,'empatica','A012EF'),(290,'RN2','26675',6,119,'empatica','A013B2'),(291,'RN3','28166',6,119,'empatica','A012D8'),(292,'DR','26656',6,119,'empatica','A010C7'),(293,'PTN','26689',7,119,'pozyx',NULL),(294,'TCH','28266',6,119,'empatica','A0217A'),(295,'RN1','26656',6,120,'empatica','A012D8'),(296,'student1','26679',1,120,'pozyx',NULL),(297,'PTN1','28166',7,120,'pozyx',NULL),(298,'RN1','26675',6,121,'pozyx',NULL),(299,'RN2','26679',6,121,'pozyx',NULL),(300,'PTN','28274',7,122,'pozyx',NULL),(301,'RN1','26679',6,122,'empatica','A012EF'),(302,'RN2','26675',6,122,'empatica','A013B2'),(303,'RNO','28166',6,122,'empatica','A012D8'),(304,'RNL','26656',6,122,'empatica','A010C7'),(305,'PTN','28274',7,123,'pozyx',NULL),(306,'RN1','26679',6,123,'empatica','A012EF'),(307,'RN2','26675',6,123,'empatica','A013B2'),(308,'RN3','28166',6,123,'empatica','A012D8'),(309,'RNL','26656',6,123,'empatica','A010C7'),(311,'TCH','28266',1,123,'pozyx','A0217A'),(312,'PTN','28274',7,124,'pozyx',NULL),(313,'RN1',NULL,6,124,NULL,NULL),(314,'RN2',NULL,6,124,NULL,NULL),(315,'RNO',NULL,6,124,NULL,NULL),(316,'RNL',NULL,6,124,NULL,NULL),(318,'TCH','28266',6,122,'empatica','A0217A'),(319,'PTN','28274',7,125,'pozyx',NULL),(320,'RN1','26679',6,125,'empatica','A012EF'),(321,'RN2','26675',6,125,'empatica','A013B2'),(322,'TCH','28266',6,125,'empatica','A0217A'),(323,'RNL','26656',6,125,'pozyx','A010C7'),(325,'RN3','28166',6,125,'empatica','A012D8'),(326,'PTN','28274',7,126,'pozyx',NULL),(327,'RN1','26679',6,126,'empatica','A012EF'),(328,'RN2','26675',6,126,'empatica','A013B2'),(329,'RN3','28166',6,126,'empatica','A012D8'),(330,'RNL','26656',6,126,'empatica','A010C7'),(331,'TCH','28266',6,126,'empatica','A0217A'),(332,'PTN','28274',7,127,'pozyx',NULL),(333,'RN1','26679',6,127,'empatica','A012EF'),(334,'RN2','26675',6,127,'empatica','A013B2'),(335,'RN3','28166',6,127,'empatica','A012D8'),(336,'RNL','26656',6,127,'empatica','A010C7'),(337,'TCH','28266',6,127,'empatica','A0217A'),(338,'RN1','26689',6,128,'empatica','A010C7');
/*!40000 ALTER TABLE `object_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `objects` (
  `name` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES ('student',1),('group',2),('teacher',3),('bed',4),('trolley',5),('RN',6),('PTN',7);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `session` (
  `time_start` timestamp NULL DEFAULT NULL,
  `time_end` timestamp NULL DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `room` varchar(15) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `config_file` varchar(250) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` time(6) DEFAULT '00:00:00.000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('2019-05-08 06:03:39','2019-05-08 06:05:04','2019-05-08','Test Simulation','202',NULL,NULL,108,'00:01:25.000000'),('2019-05-08 06:14:19','2019-05-08 06:31:14','2019-05-08','Test Simulation','cic',NULL,NULL,109,'00:16:55.000000'),('2019-05-15 04:18:45',NULL,'2019-05-15','Test Simulation','450',NULL,NULL,110,NULL),('2019-05-15 05:12:54',NULL,'2019-05-15','Test Simulation','450',NULL,NULL,111,NULL),('2019-05-15 05:33:55',NULL,'2019-05-15','Test Simulation','dsdsdsa',NULL,NULL,112,NULL),('2019-05-15 05:44:13','2019-05-19 10:20:21','2019-05-15','Test Simulation','450',NULL,NULL,113,'100:36:08.000000'),('2019-05-19 10:08:23','2019-05-19 12:53:10','2019-05-19','Test Simulation','Home',NULL,NULL,114,'02:44:47.000000'),('2019-05-19 12:54:34','2019-05-19 13:04:44','2019-05-19','Test Simulation','Home',NULL,NULL,115,'00:10:10.000000'),('2019-05-19 22:31:42',NULL,'2019-05-19','Abdominal Surgery Recovery-Monday 1','450',NULL,NULL,116,NULL),('2019-05-20 01:21:39',NULL,'2019-05-20','Abdominal Surgery Recovery Monday -2','450',NULL,NULL,117,'00:00:00.000000'),('2019-05-20 22:28:51',NULL,'2019-05-20','Abdominal Surgery Recovery - Tuesday 1','450',NULL,NULL,118,'00:00:00.000000'),('2019-05-21 00:39:22',NULL,'2019-05-21','Abdominal Surgery Recovery - Tuesday 2','450',NULL,NULL,119,'00:00:00.000000'),('2019-06-20 00:40:50','2019-06-20 00:41:47','2019-06-20','Test Simulation','ert',NULL,NULL,120,'00:00:57.000000'),('2019-07-12 01:54:43',NULL,'2019-07-12','Test Simulation','de',NULL,NULL,121,NULL),('2019-07-30 01:07:11',NULL,'2019-07-30','Session 1 Antibiotics Adverse Reaction - Tuesday','208',NULL,NULL,122,'00:00:00.000000'),('2019-08-05 00:28:45',NULL,'2019-08-05','Session 2 Antibiotics Adverse Reaction - Wednesday','208',NULL,NULL,123,'00:00:00.000000'),('2019-08-05 01:57:55',NULL,'2019-08-05','OBS-S1 Antibiotics Adverse Reaction - Tuesday','208',NULL,NULL,124,'00:00:00.000000'),('2019-08-06 09:38:22',NULL,'2019-08-06','Session 3 Antibiotics Adverse Reaction - Wednesday','208',NULL,NULL,125,'00:00:00.000000'),('2019-08-06 09:44:12',NULL,'2019-08-06','Session 4 Antibiotics Adverse Reaction - Thursday','208',NULL,NULL,126,'00:00:00.000000'),('2019-08-06 09:49:01',NULL,'2019-08-06','Session 5 Antibiotics Adverse Reaction - Thursday','208',NULL,NULL,127,'00:00:00.000000'),('2020-01-15 17:28:43','2020-01-15 17:32:24','2020-01-15','Test Simulation ','1',NULL,NULL,128,'00:03:41.000000');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `group_analytics`.`session_BEFORE_UPDATE` BEFORE UPDATE ON `session` FOR EACH ROW
BEGIN
	
            SET NEW.duration = timediff(NEW.time_end,OLD.time_start);
        
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trackers` (
  `type` varchar(45) NOT NULL,
  `serial` varchar(25) NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES ('pozyx','26656'),('pozyx','26675'),('pozyx','26679'),('pozyx','26689'),('pozyx','26694'),('pozyx','28166'),('pozyx','28266'),('pozyx','28274'),('empatica','A010C7'),('empatica','A012D8'),('empatica','A012EF'),('empatica','A013B2'),('empatica','A0217A'),('empatica','A0EFC2'),('empatica','C4EDF9');
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'group_analytics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-04 20:28:24

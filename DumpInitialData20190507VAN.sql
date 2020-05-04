-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: group_analytics
-- ------------------------------------------------------
-- Server version	5.6.40

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
-- Dumping data for table `actions`
--

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
flush privileges;


DROP DATABASE group_analytics;
CREATE DATABASE group_analytics;
USE group_analytics;

CREATE TABLE IF NOT EXISTS actions (
    name VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY,
    action_type VARCHAR(255) NOT NULL,
    some_field VARCHAR(255)
);



LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('Attach pulse oximeter',1,'event',NULL),('Attach 3-lead ECG',2,'event',NULL),('Examine eyes',3,'other',NULL),('Head tilt chin lift',4,'response',NULL),('Pulses RightHand Limited',6,'response',NULL),('Bleeding UpperPortRate_Percent',7,'response',NULL),('Session started',8,'event',NULL),('Session ended',9,'event',NULL),('Convulsions Type',11,'response',NULL),('Convulsions Type1',12,'response',NULL),('Convulsions Type2',13,'response',NULL),('Convulsions Type3',33,'response',NULL),('Convulsions Type4',34,'response',NULL),('Convulsions Type5',35,'response',NULL),('Ecg HeartRate_bpm',37,'response',NULL),('Ask for help',38,'critical',NULL),('Lose Conciousness',39,'response',NULL),('Start CPR',40,'event',NULL),('Stop CPR',41,'event',NULL),('*** TEST ***',43,'other',NULL),('Example',44,'other',NULL),('AGT inAGTetAGTTrendMin_Percent',56,'response',NULL),('PAP Wedge_mmHg',57,'response',NULL),('CardiacOutput Value_LiterPerMinute',58,'response',NULL),('Neck Limited',59,'response',NULL),('Femoral Limited',60,'response',NULL),('Heart Whole',61,'response',NULL),('Heart Aortic',62,'response',NULL),('Heart Pulmonary',63,'response',NULL),('Heart Tricuspid',64,'response',NULL),('Heart Mitral',65,'response',NULL),('Bowel Whole',66,'response',NULL),('PAP Diastolic_mmHg',67,'response',NULL),('Eyes BlinkRate',68,'response',NULL),('LeftHand Limited',69,'response',NULL),('RightHand Limited',70,'response',NULL),('LeftFoot Limited',71,'response',NULL),('RightFoot Limited',72,'response',NULL),('LeftArm Limited',73,'response',NULL),('LeftLeg Limited',74,'response',NULL),('Secretions Sweat',75,'response',NULL),('Eyes EyelidStatus',76,'response',NULL),('BloodPressure Systolic_mmHg',77,'response',NULL),('BloodPressure Diastolic_mmHg',78,'response',NULL),('RightLeg Limited',79,'response',NULL),('PAP Systolic_mmHg',80,'response',NULL),('Ecg BasicRhythm',81,'response',NULL),('Respiration RR_BreathsPerMinute',82,'response',NULL),('etCO2 Value_mmHg',83,'response',NULL),('Response ICP_mmHg',84,'response',NULL),('Next to the patient',85,'event',NULL),('Get resus trolley',86,'event',NULL),('PulmonaryVolume Percent',87,'response','Heart'),('inAGTetAGTTrendMin Percent',88,'response','AGT'),('HeartRate bpm',89,'response','Ecg'),('RR BreathsPerMinute',90,'response','Respiration'),('Systolic mmHg',91,'response','BloodPressure'),('Diastolic mmHg',92,'response','BloodPressure'),('Value Percent',93,'response','SpO2'),('BasicRhythm',94,'response','Ecg'),('Pulse bpm',95,'response','Ecg'),('Monitor layout changed',96,'other','Event'),('Oxygen device',97,'event','Event'),('Anginine',98,'event',''),('awRR BreathsPerMinute',99,'response','Respiration'),('Attach NIBP',100,'event','Event'),('Measure blood pressure',101,'event','Event'),('EyelidStatus',102,'response','Eyes'),('Start compressions',103,'other','Event'),('CompressionLatestDepth mm',104,'response','QCPR'),('CompressionLatestReleaseDepth mm',105,'response','QCPR'),('CompressionLatestHandPosOK',106,'response','QCPR'),('CompressionMovingAverageRate cpm',107,'response','QCPR'),('CompressionTotalCount',108,'response','QCPR'),('CompressionTotalAverageDepth mm',109,'response','QCPR'),('CompressionTotalAverageRate cpm',110,'response','QCPR'),('CompressionTotalHandPosOK Percent',111,'response','QCPR'),('Stop compressions',112,'other','Event'),('CompressionCyclesCount',113,'response','QCPR'),('VentilationCyclesCount',114,'response','QCPR'),('Deliver shock',115,'response','Event'),('Ventilation',116,'event','QCPR'),('Check left radial pulse',117,'event','Event'),('Limited',118,'response','LeftHand'),('CompressionTotalAverageReleaseDepth mm',119,'response','QCPR'),('VentilationLatestVolume ml',120,'response','QCPR'),('VentilationLatestInflationTime ms',121,'response','QCPR'),('VentilationMovingAverageRate vpm',122,'response','QCPR'),('VentilationTotalCount',123,'response','QCPR'),('Start ventilations',124,'response','Event'),('VentilationTotalAverageVolume ml',125,'response','QCPR'),('Stop ventilations',126,'response','Event'),('Monitor Tperi on',127,'response','Event'),('Switch Phase',128,'response','Event'),('Recover',129,'response','Event'),('IV fluid antibiotics',130,'response',NULL),('Deteriorate',131,'event',NULL),('Call doctor',132,'event',NULL),('Stop IV fluid',133,'response',NULL),('Looking for information',134,'response',NULL),('Doctor',135,'response',NULL),('Medicine',136,'response',NULL),('Preparing fluids',137,'response',NULL),('Observations',138,'response',NULL),('Lungs',139,'response',NULL),('Writing charts',140,'event',NULL),('Measure temperature',146,'event',NULL);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `datatype`
--

CREATE TABLE IF NOT EXISTS datatype (
    modality VARCHAR(255) NOT NULL,
    device VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY
);




LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES ('location','pozyx',1),('audio','microcone',2),('physiological','empatica E4',3),('manikin','simMan 3G',4),('video','canon cam',5),('video','sony cam',6);
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `objects`
--

CREATE TABLE IF NOT EXISTS objects (
    role VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY
);


LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES ('student',1),('group',2),('teacher',3),('bed',4),('trolley',5),('RN',6),('PTN',7);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trackers`
--

CREATE TABLE IF NOT EXISTS trackers (
    type VARCHAR(255) NOT NULL,
    id VARCHAR(255) PRIMARY KEY
);

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES ('pozyx','26656'),('pozyx','26675'),('pozyx','26679'),('pozyx','26689'),('pozyx','26694'),('pozyx','28166'),('pozyx','28266'),('pozyx','28274'),('empatica','A010C7'),('empatica','A012D8'),('empatica','A012EF'),('empatica','A013B2'),('empatica','A0EFC2'),('empatica','C4EDF9');
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



CREATE TABLE IF NOT EXISTS session (
    name VARCHAR(255) NOT NULL,
    room INT NOT NULL,
    session_date DATE NOT NULL,
    time_start DATE NOT NULL
);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 16:56:11

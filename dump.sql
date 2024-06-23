-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: 127.0.1.1    Database: test
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `BONUS`
--

DROP TABLE IF EXISTS `BONUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BONUS` (
  `ename` varchar(10) NOT NULL,
  `job` varchar(9) NOT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `comm` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`ename`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BONUS`
--

LOCK TABLES `BONUS` WRITE;
/*!40000 ALTER TABLE `BONUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BONUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT` (
  `deptno` int NOT NULL,
  `name` varchar(14) DEFAULT NULL,
  `location` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(40,'OPERATIONS','BOSTON');
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `empno` int NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `job` varchar(9) DEFAULT NULL,
  `boss` int DEFAULT NULL,
  `hiredate` varchar(12) DEFAULT NULL,
  `salary` decimal(7,2) DEFAULT NULL,
  `comm` decimal(7,2) DEFAULT NULL,
  `deptno` int DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `department` (`deptno`),
  KEY `boss` (`boss`),
  CONSTRAINT `boss` FOREIGN KEY (`boss`) REFERENCES `EMPLOYEE` (`empno`),
  CONSTRAINT `department` FOREIGN KEY (`deptno`) REFERENCES `DEPARTMENT` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1981-02-22',1250.00,500.00,30),(7566,'JONES','MANAGER',7839,'1981-04-02',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250.00,1400.00,30),(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09',2450.00,NULL,10),(7788,'SCOTT','ANALYST',7566,'1982-12-09',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000.00,NULL,10),(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'1983-01-12',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'1981-12-03',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'1981-12-03',3000.00,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23',1300.00,NULL,10);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROJECT`
--

DROP TABLE IF EXISTS `PROJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROJECT` (
  `projectno` int NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `start_date` varchar(12) DEFAULT NULL,
  `end_date` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`projectno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROJECT`
--

LOCK TABLES `PROJECT` WRITE;
/*!40000 ALTER TABLE `PROJECT` DISABLE KEYS */;
INSERT INTO `PROJECT` VALUES (1001,'Development of Novel Magnetic Suspension System','2006-01-01','2007-08-13'),(1002,'Research on thermofluid dynamics in Microdroplets','2006-08-22','2007-03-20'),(1003,'Foundation of Quantum Technology','2007-02-24','2008-07-31'),(1004,'High capacity optical network','2008-01-01',NULL);
/*!40000 ALTER TABLE `PROJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROJECT_PARTICIPATION`
--

DROP TABLE IF EXISTS `PROJECT_PARTICIPATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROJECT_PARTICIPATION` (
  `projectno` int NOT NULL,
  `empno` int NOT NULL,
  `start_date` varchar(12) NOT NULL,
  `end_date` varchar(12) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`projectno`,`empno`,`start_date`),
  KEY `employee` (`empno`),
  KEY `role` (`role_id`),
  CONSTRAINT `employee` FOREIGN KEY (`empno`) REFERENCES `EMPLOYEE` (`empno`),
  CONSTRAINT `project` FOREIGN KEY (`projectno`) REFERENCES `PROJECT` (`projectno`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `ROLE` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROJECT_PARTICIPATION`
--

LOCK TABLES `PROJECT_PARTICIPATION` WRITE;
/*!40000 ALTER TABLE `PROJECT_PARTICIPATION` DISABLE KEYS */;
INSERT INTO `PROJECT_PARTICIPATION` VALUES (1001,7369,'2006-01-01','2007-08-13',100),(1001,7788,'2006-05-15','2006-11-01',100),(1001,7902,'2006-01-01','2006-12-30',102),(1002,7782,'2006-08-22','2007-03-20',101),(1002,7876,'2006-08-22','2007-03-20',102),(1002,7934,'2007-01-01','2007-03-20',101),(1003,7566,'2007-02-24','2008-07-31',102),(1003,7900,'2007-02-24','2007-01-31',101),(1004,7499,'2008-01-01',NULL,102),(1004,7521,'2008-05-01',NULL,101),(1004,7654,'2008-04-15',NULL,101),(1004,7844,'2008-02-01',NULL,101),(1004,7900,'2008-03-01','2008-04-01',101),(1004,7900,'2008-05-20',NULL,101);
/*!40000 ALTER TABLE `PROJECT_PARTICIPATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE` (
  `role_id` int NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (100,'Developer'),(101,'Researcher'),(102,'Project manager');
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALARYGRADE`
--

DROP TABLE IF EXISTS `SALARYGRADE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SALARYGRADE` (
  `grade` int NOT NULL,
  `losal` int NOT NULL,
  `hisal` int NOT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALARYGRADE`
--

LOCK TABLES `SALARYGRADE` WRITE;
/*!40000 ALTER TABLE `SALARYGRADE` DISABLE KEYS */;
INSERT INTO `SALARYGRADE` VALUES (1,700,1200),(2,1201,1400),(3,1401,2000),(4,2001,3000),(5,3001,9999);
/*!40000 ALTER TABLE `SALARYGRADE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23 21:59:13

-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: teamproject
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(20) NOT NULL,
  `passwd` varchar(80) NOT NULL,
  `name` varchar(10) NOT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `temperature` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('1111','$2a$10$V4r4TNdRil.AVfda6nO6iOP2ypWeEF/fntVbO86ICvM0rogrNbqGW','박토리','20210915','M','1111','ggssu0312@nate.com','46310','부산 금정구 부곡로 32-12','2222',NULL,NULL),('aaa','$2a$10$uBcU16/r/mBLgODCkzBxnu8ychA7E8nZazzQ5rBumJpOQM/43rsAu','당근','20210908','M','111','1111@na','46311','부산 금정구 부곡로 1','111','2021-09-24 00:19:26',NULL),('abc','$2a$10$19.8Hg8Y.xKWkpRywy38ju4YM56/2AIBomTOYXOpjWkI96rK9UFdq','박현주','20210913','M','2222','2222','44785','울산 남구 부곡로 68','2222','2021-09-20 20:16:12',43),('abcd','$2a$10$Pnumcho.h8Qp1LxaHchQ3eNDKr30a1dR0CC8Q8znfYSSqBHY5LAFK','박토리','20210922','M','01093419296','ggssu0312@daum.net','46311','부산 금정구 부곡로 1','1234','2021-09-23 10:47:36',44),('alsk','$2a$10$UhtMRRRL.ym70Ehhq4.WA.HlxAoLVvuzDam/MkFXxwh849Lv/.Jjm','박준영','20210906','M','01093419296','tosery090@gmail.com','06327','서울 강남구 삼성로 11','11','2021-09-30 12:10:38',0),('dfdf','$2a$10$9CEwUkF5Ig1oRvvj5g0Ck.uFTeoj328aerVXr8fmvy.niXlSKVMYK','박토리','20210915','M','1111','ggssu0312@daum.net','46311','부산 금정구 부곡로 1','123','2021-09-25 17:25:54',NULL),('sye','$2a$10$uOFoTB448m3CpzHKK1CUAeVgNXIxGR74oyukuMgrCmene5L2EBWZO','박준영','20210920','M','01093419296','ggssu0312@naver.com','46311','부산 금정구 부곡로 1','111','2021-09-29 15:44:25',55),('team4','$2a$10$YAIhl7dMh0OZiUVTf6eD6OiQVt1OhpMekWS/zBDgPazaW6zZU3Gna','박준영','20210913','M','01093419296','ggssu0312@naver.com','06327','서울 강남구 삼성로 11','111','2021-09-30 14:57:29',0),('uhb','$2a$10$cAl4t6k0AhiDwpQ1cjco/ec5Qktkrabd7lp/oq8.myVuXgG3CsqEK','박준영','20210908','M','0123123123','junyeongbigdata@naver.com','46310','부산 금정구 부곡로 32-12','1','2021-09-28 00:23:43',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01 23:35:35

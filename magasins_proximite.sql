-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: magasins_proximite
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `idshop` int(11) NOT NULL AUTO_INCREMENT,
  `shopName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `shopImg` varchar(45) CHARACTER SET latin1 NOT NULL,
  `shopAdr` varchar(45) CHARACTER SET latin1 NOT NULL,
  `user` int(11) DEFAULT NULL,
  `statut` varchar(45) DEFAULT 'Not liked',
  PRIMARY KEY (`idshop`),
  KEY `shop_ibfk_1_idx` (`user`),
  CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Le petit jardin','images/shop-logo.gif','Adrres',NULL,'Not liked'),(2,'July Keneddy','images/shop-logo1.gif','Adrres_1',NULL,'Not liked'),(3,'Kathleen Marshall','images/shop-logo2.gif','Adrres_2',NULL,'Not liked'),(4,'wildcorners','images/shop-logo3.gif','Adrres_3',NULL,'Not liked'),(5,'Tara Swith','images/shop-logo4.gif','Adrres_4',NULL,'Not liked'),(6,'Emily Grace','images/shop-logo5.gif','Adrres_5',NULL,'Not liked'),(7,'Brianne Smith','images/shop-logo6.gif','Adrres_6',NULL,'Not liked'),(8,'Roxane & Paul','images/shop-logo7.gif','Adrres_7',NULL,'Not liked'),(10,'Tara Swith','images/shop-logo4.gif','Adrres_4',2,'Liked'),(11,'Le petit jardin','images/shop-logo.gif','Adrres',1,'Liked'),(17,'Emily Grace','images/shop-logo5.gif','Adrres_5',4,'Liked'),(18,'wildcorners','images/shop-logo3.gif','Adrres_3',4,'Liked'),(19,'July Keneddy','images/shop-logo1.gif','Adrres_1',4,'Liked'),(20,'Tara Swith','images/shop-logo4.gif','Adrres_4',5,'Liked'),(21,'Emily Grace','images/shop-logo5.gif','Adrres_5',5,'Liked'),(22,'Roxane & Paul','images/shop-logo7.gif','Adrres_7',5,'Liked');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `userPasword` varchar(45) CHARACTER SET latin1 NOT NULL,
  `userEmail` varchar(45) CHARACTER SET latin1 NOT NULL,
  `userAdrres` varchar(45) NOT NULL,
  `userPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'MorcyB','0a5b3913cbc9a9092311630e869b4442','b.morcy@gmail.com','AV Congo','00212 6 '),(2,'NourB','f15779c65bf7141196d01ae83f19ac83','b.ben@g.com','AV Masira','00212 7'),(3,'Nour','f15779c65bf7141196d01ae83f19ac83','b.morcy@gmail.com','aze','0675770496'),(4,'morcy','0a5b3913cbc9a9092311630e869b4442','b.m@g.com','aze','05654457'),(5,'aziz','47bce5c74f589f4867dbd57e9ca9f808','b.aziz@gmail.com','Avenue de France Agdal Rabat','0675');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01  8:33:38

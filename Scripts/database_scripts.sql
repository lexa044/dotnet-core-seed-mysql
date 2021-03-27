SET NAMES utf8 ;

## 1.Create Schema
DROP TABLE IF EXISTS `authentication`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(16) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastipaddress` varchar(64) DEFAULT NULL,
  `lastdeviceid` varchar(256) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `product`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `imageuri` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

## 2. Add a demo user
LOCK TABLES `authentication` WRITE;
INSERT INTO `authentication` VALUES (1,'demo2','demo2_Sup3rPwd', null, null, null, null);
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `lanasystemdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `lanasystemdb`;
-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: lanasystemdb
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `almoxarifados`
--

DROP TABLE IF EXISTS `almoxarifados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almoxarifados` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(255) NOT NULL,
  `descricaoProduto` varchar(255) NOT NULL,
  `corProduto` varchar(255) NOT NULL,
  `qtdEstoque` int(11) NOT NULL,
  `categoriaProd` int(11) NOT NULL,
  `codBarraProd` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `categoriaProd` (`categoriaProd`),
  CONSTRAINT `almoxarifados_ibfk_1` FOREIGN KEY (`categoriaProd`) REFERENCES `categorias` (`idCategoria`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almoxarifados`
--

LOCK TABLES `almoxarifados` WRITE;
/*!40000 ALTER TABLE `almoxarifados` DISABLE KEYS */;
INSERT INTO `almoxarifados` VALUES (1,'Caneta Azul','Caneta esferográfica azul','Azul',500,1,'7891234567890','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Lápis HB','Lápis de grafite HB','Preto',1000,1,'7891234567891','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Borracha','Borracha branca','Branca',300,1,'7891234567892','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Caderno 10 Matérias','Caderno espiral 10 matérias','Branco',200,2,'7891234567893','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Agenda 2024','Agenda anual 2024','Branco',150,2,'7891234567894','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Livro de Matemática','Livro didático de matemática','Branco',100,3,'7891234567895','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Giz de Cera','Caixa com 12 cores','Multicor',400,4,'7891234567896','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Tinta Guache','Tinta guache 250ml','Multicor',300,4,'7891234567897','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Laptop','Laptop para uso escolar','Preto',50,5,'7891234567898','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Projetor','Projetor multimídia','Amarelo',20,5,'7891234567899','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Detergente','Detergente líquido 1L','Multicor',100,6,'7891234567800','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Vassoura','Vassoura de piaçava','Multicor',50,6,'7891234567801','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Extintor de Incêndio','Extintor de incêndio ABC 4kg','Multicor',10,7,'7891234567802','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Kit de Primeiros Socorros','Kit básico de primeiros socorros','Multicor',20,7,'7891234567803','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Mesa Escolar','Mesa escolar individual','Multicor',100,8,'7891234567804','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Cadeira Escolar','Cadeira escolar com braço','Multicor',200,8,'7891234567805','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Bola de Futebol','Bola de futebol tamanho 5','Multicor',60,9,'7891234567806','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Rede de Vôlei','Rede de vôlei oficial','Multicor',30,9,'7891234567807','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Violão','Violão acústico','Multicor',25,10,'7891234567808','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Flauta Doce','Flauta doce de plástico','Multicor',50,10,'7891234567809','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Microscópio','Microscópio biológico','Multicor',15,11,'7891234567810','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Lâminas para Microscópio','Caixa com 50 lâminas','Multicor',100,11,'7891234567811','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Copos Descartáveis','Copos descartáveis 200ml (pacote c/ 100)','Multicor',200,12,'7891234567812','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Pratos Descartáveis','Pratos descartáveis (pacote c/ 50)','Multicor',150,12,'7891234567813','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Pá de Jardim','Pá de jardinagem pequena','Multicor',75,13,'7891234567814','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Adubo Orgânico','Saco de adubo orgânico 5kg','Preto',50,13,'7891234567815','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'SULFITE','RESMA COM 500 folhas','BRANCO',1,1,'7899999991239','2024-07-01 10:14:03','2024-07-01 10:14:03'),(28,'caneta','cx com 100 canetas','preta',1,1,'1899999991239','2024-07-01 10:37:32','2024-07-01 10:37:32'),(35,'apontador de lápis','cx com 100 apontadores','multicolor',1,1,'0000000003','2024-07-03 13:09:05','2024-07-03 13:09:05'),(36,'apontador de lápis','cx com 100 apontadores','multicolor',1,1,'0000000003','2024-07-03 13:09:05','2024-07-03 13:09:05'),(37,'lapiseira','pct 4 lapiseiras','multicolor',3,1,'0000000004','2024-07-03 13:09:05','2024-07-03 13:09:05'),(39,'CARTOLINA','PCT COM 10','VERDE',1,2,'123456789','2024-07-03 16:24:10','2024-07-03 16:24:10'),(40,'CARTOLINA','PCT COM 10','VERDE',1,2,'123456789','2024-07-03 16:24:10','2024-07-03 16:24:10'),(42,'VERGE','PCT COM 10','ROSA',3,2,'112233','2024-07-03 17:33:21','2024-07-03 17:33:21'),(43,'VERGE','PCT COM 10','ROSA',1,2,'112233','2024-07-03 17:33:21','2024-07-03 17:33:21'),(46,'CREPOM','pct com 50','ROSA',1,2,'1234','2024-07-04 17:25:59','2024-07-04 17:25:59'),(47,'CREPOM','pct com 50','ROSA',1,2,'1234','2024-07-04 17:25:59','2024-07-04 17:25:59'),(48,'envelope pardo','cx com 100','marrom',10,1,'1235','2024-07-04 17:25:59','2024-07-04 17:25:59');
/*!40000 ALTER TABLE `almoxarifados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Material de Escritório','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Material Escolar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Material Didático','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Material de Arte','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Equipamentos de Tecnologia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Material de Limpeza','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Equipamentos de Segurança','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Móveis e Equipamentos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Material de Educação Física','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Material de Música','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Material de Ciências','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Suprimentos de Refeição','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Material de Jardinagem','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoquelimpezas`
--

DROP TABLE IF EXISTS `estoquelimpezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoquelimpezas` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(255) NOT NULL,
  `descricaoProduto` varchar(255) NOT NULL,
  `corProduto` varchar(255) NOT NULL,
  `qtdEstoque` int(11) NOT NULL,
  `categoriaProd` int(11) NOT NULL,
  `codBarraProd` varchar(255) NOT NULL,
  `marcaProd` varchar(255) NOT NULL,
  `validadeProd` datetime NOT NULL,
  `tipoProd` varchar(255) NOT NULL,
  `situacaoProd` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `categoriaProd` (`categoriaProd`),
  CONSTRAINT `estoquelimpezas_ibfk_1` FOREIGN KEY (`categoriaProd`) REFERENCES `categorias` (`idCategoria`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoquelimpezas`
--

LOCK TABLES `estoquelimpezas` WRITE;
/*!40000 ALTER TABLE `estoquelimpezas` DISABLE KEYS */;
INSERT INTO `estoquelimpezas` VALUES (1,'ALCOOL','ALCOOL BACTERICIDA 70','TRANSPARENTE',15,2,'7898255676773','AUDAX FACILITA','0000-00-00 00:00:00','PESO/KG','','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `estoquelimpezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacaos`
--

DROP TABLE IF EXISTS `localizacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localizacaos` (
  `idLocal` int(11) NOT NULL AUTO_INCREMENT,
  `armario` int(11) NOT NULL,
  `prateleira` int(11) NOT NULL,
  `idProdutoGuardado` int(11) NOT NULL,
  `qtdPrdoGuardado` int(11) NOT NULL,
  `localArmario` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idLocal`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacaos`
--

LOCK TABLES `localizacaos` WRITE;
/*!40000 ALTER TABLE `localizacaos` DISABLE KEYS */;
INSERT INTO `localizacaos` VALUES (1,1,1,1,100,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,2,2,200,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,1,3,50,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,1,4,75,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,3,1,5,30,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,3,2,6,60,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,4,1,7,40,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,4,1,8,50,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,5,1,9,20,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,5,3,10,10,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,6,1,11,30,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,6,2,12,20,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,7,1,13,5,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,7,2,14,8,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,1,3,15,25,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,1,2,16,50,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,2,1,17,10,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,2,2,18,15,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,3,3,19,8,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,3,3,20,10,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,4,1,21,3,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,4,2,22,5,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,5,3,23,100,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,5,3,24,75,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,6,3,25,15,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,6,1,26,20,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,1,3,27,1,'ALMOXARIFADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,2,7,28,1,'ALMOXARIFADO','2024-07-01 10:37:32','2024-07-01 10:37:32'),(35,1,1,35,1,'ALMOXARIFADO','2024-07-03 13:09:05','2024-07-03 13:09:05'),(36,1,2,36,1,'ALMOXARIFADO','2024-07-03 13:09:05','2024-07-03 13:09:05'),(37,2,1,37,3,'ALMOXARIFADO','2024-07-03 13:09:05','2024-07-03 13:09:05'),(39,3,1,39,1,'ALMOXARIFADO','2024-07-03 16:24:10','2024-07-03 16:24:10'),(40,3,2,40,1,'ALMOXARIFADO','2024-07-03 16:24:10','2024-07-03 16:24:10'),(42,4,2,42,3,'ALMOXARIFADO','2024-07-03 17:33:21','2024-07-03 17:33:21'),(43,5,1,43,1,'ALMOXARIFADO','2024-07-03 17:33:21','2024-07-03 17:33:21'),(46,7,3,46,1,'ALMOXARIFADO','2024-07-04 17:25:59','2024-07-04 17:25:59'),(47,7,7,47,1,'ALMOXARIFADO','2024-07-04 17:25:59','2024-07-04 17:25:59'),(48,5,2,48,10,'ALMOXARIFADO','2024-07-04 17:25:59','2024-07-04 17:25:59');
/*!40000 ALTER TABLE `localizacaos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-18 18:05:24

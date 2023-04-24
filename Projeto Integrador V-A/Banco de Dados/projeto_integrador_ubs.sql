CREATE DATABASE  IF NOT EXISTS `projeto_integrador` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `projeto_integrador`;
-- MySQL dump 10.13  Distrib 5.7.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projeto_integrador
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `ubs`
--

DROP TABLE IF EXISTS `ubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubs` (
  `id_ubs` int(11) NOT NULL AUTO_INCREMENT,
  `nome_ubs` varchar(30) NOT NULL,
  `endereco_ubs` varchar(50) NOT NULL,
  `telefone_ubs` varchar(11) NOT NULL,
  PRIMARY KEY (`id_ubs`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubs`
--

LOCK TABLES `ubs` WRITE;
/*!40000 ALTER TABLE `ubs` DISABLE KEYS */;
INSERT INTO `ubs` VALUES (1,'Alvorada','Rua Sargento Venino Vargas, 201','3901-1304'),(2,'Ana Rech','Rua Antônio Tomé, 40','3901-1461'),(3,'Bela Vista','Rua Valentim Comerlatto, 983','3901-1321'),(4,'Belo Horizonte','Avenida dos Metalúrgicos, 704','3901-7900'),(5,'Campos da Serra','Rua Cardoso de Oliveira, 152','3901-8015'),(6,'Centenário','Rua Saturnino Pereira, 160','3901-1282'),(7,'Centro de Saúde','Rua Pinheiro Machado, 1.258','3901-1419'),(8,'Cinquentenário','Avenida Júlio de Castilhos, 3633','3901-2314'),(9,'Cristo Operário','Rua Santa Francisca Xavier Cabrini, 1.375','3901-1385'),(10,'Criúva','Avenida 15 de Novembro, 590','3267-8030'),(11,'Cruzeiro','Rua Hércules,1.917','3901-1211'),(12,'Desvio Rizzo','Rua Serafino Zattera, 189','3901-1312'),(13,'Diamantino','Rua Angelo Panozzo, 150','3901-1362'),(14,'Eldorado','Rua Armando Claudino Canalli, 264','3901-1366'),(15,'Esplanada','Avenida Bom Pastor, 2.225','3901-1239'),(16,'Fátima Alta','Rua Izabel Pezzi, 59','3901-1280'),(17,'Fátima Baixa','Rua Dr. Mário Lopes, 860','3901-2310'),(18,'Fazenda Souza','Rua Rosa Sgarbi, 5.006','3901-1373'),(19,'Forqueta','Rua Alcides Lazzari, 530','3901-1191'),(20,'Galópolis','Rua Edviges Galló, 47','3901-1464'),(21,'Madureira','Rua Virgílio Ramos, 276','3901-1230'),(22,'Mariani','Rua Vergínia Botini Reuse, 299','3901-1293'),(23,'Parque Oásis','Rua Bortolo Zanrosso, 433','3901-1425'),(24,'Pioneiro','Rua Frederico Bergman, 3.170','3901-1283'),(25,'Planalto','Rua Arthur Rodolfo Rossarolla, 508','3901-1319'),(26,'Planato Rio Branco','Rua Cristiano Ramos de Oliveira, 285','3901-1231'),(27,'Reolon','Rua Assis Rodrigues de Lima, 210','3901-1202'),(28,'Rio Branco','Avenida Rio Branco, 1.619','3901-8028'),(29,'Sagrada Família','Rua Candido João Calcagnotto, 553','3901-1364'),(30,'Salgado Filho','Rua Marcelo Felippi, 268','3901-1216'),(31,'Santa Fé','Avenida Santa Fé, 349','3901-1281'),(32,'Santa Lúcia Cohab','Rua Pe. Aquilino Francesquet, 1303','3901-1198'),(33,'Santa Lúcia do Piaí','Rua Rosa Franciozi Giordani, 560','3266-1389'),(34,'São Caetano','Rua Pixinguinha, 2.466','3901-2509'),(35,'São Ciro','Rua Joaquim Oss, 83','3901-1361'),(36,'São José','Rua Dom Pedro II, 350','3901-1279'),(37,'São Leopoldo','Rua Sapucaia,101','3901-1472'),(38,'São Vicente','Rua Assis Brasil, 1086','3901-1322'),(39,'São Victor Cohab','Rua Dirceu Corsetti, 230','3901-2300'),(40,'Século XX','Rua Nelson Michelon, 111','3901-1327'),(41,'Serrano','Rua Alcides Ramos, 1.307','3901-7903'),(42,'Tijuca','Rua Nilo Benfica da Rocha, 633','3901-1289'),(43,'Vila Cristina','Rua da Cidadania, 426','3287-1108'),(44,'Vila Ipê','Rua Antônio Andrighetti, 2.290','3901-1455'),(45,'Vila Lobos','Rua da Felicidade, 401','3901-2304'),(46,'Vila Oliva','Avenida Gavioli, 5.575','3901-1188'),(47,'Vila Secca','Rua Ilário Balbinotti, 132','3267-6032'),(50,'Konoha','Rua dos 5 Kages','5496666');
/*!40000 ALTER TABLE `ubs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 12:17:45

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
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome_medico` varchar(30) NOT NULL,
  `especialidade_medico` varchar(30) NOT NULL,
  PRIMARY KEY (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (4,'Luiza Hedlund','Dentista'),(6,'Dorildo Godman','Clinico Geral'),(7,'Jack Sheppard','Clinico Geral'),(8,'Alisson Backer','Clinico Geral'),(10,'Ana Maria Machado','Psicologo'),(11,'Van Der Lei Rockfeller','Psicologo'),(12,'Diou Sadness','Psicologo'),(13,'Marileia Fernandes','Ginecologista'),(14,'Pedro Raul de Castro','Ginecologista'),(15,'Sakura Haruno','Ginecologista'),(16,'Manuel Pedro Caos','Ginecolosgista'),(17,'Sam Silver Santos','Pediatra'),(18,'Artur K. Dream','Pediatra'),(19,'Rosana Ferrari','Pediatra'),(20,'Rafael F. Clark','Pediatra'),(21,'Carl Sagan Pires','Ortopedia'),(22,'Vanessa Roll','Ortopedia'),(23,'Clara Fernandes','Ortopedia'),(24,'Lucio Fernando da Costa','Ortopedia'),(25,'Lucas S. Stonehenge','Traumatologia'),(26,'Luana de Grasse','Traumatologia'),(27,'Narnya MadFck','Traumatologia'),(28,'Sowyer James Web','Traumatologia'),(29,'Sonia de Jesus','Dermatologia'),(30,'Scoot Logan Summers','Dermatologia'),(31,'Lautaro Brasil','Dermatologia'),(32,'James Web World','Dermatologia'),(33,'Clark Kenth','Oftalmologia'),(34,'Gabriele Logan','Oftalmologia'),(35,'Sarah Masson','Oftalmologia'),(36,'Paulo de C. Default','Oftalmologia'),(37,'Ricardo da Silva','Clínico geral'),(38,'Maria Fernanda Castro','Cardiologista'),(39,'Gabriel de Oliveira','Ortopedista'),(40,'Juliana Mendes','Dermatologista'),(41,'Luiz Fernando Ramos','Neurologista'),(42,'Ana Carolina Souza','Ginecologista'),(43,'Marcos Vinícius Costa','Oftalmologista'),(44,'Camila Santos','Endocrinologista'),(45,'Felipe Oliveira','Cirurgião geral'),(46,'Isabela Vieira','Pediatra'),(47,'Eduardo Xavier','Urologista'),(48,'Carla Torres','Psiquiatra'),(49,'André Santos','Radiologista'),(50,'Fernanda Costa','Oncologista'),(51,'Pedro Alves','Infectologista'),(52,'Juliana Lima','Geriatra'),(53,'Gustavo Silva','Otorrinolaringologista'),(54,'Carolina Pereira','Nutricionista'),(55,'Lucas Santos','Hematologista'),(56,'Bruna Souza','Pneumologista'),(57,'Marcelo Oliveira','Reumatologista'),(58,'Daniela Rodrigues','Obstetra'),(59,'André Almeida','Neurocirurgião'),(60,'Aline Costa','Psicóloga clínica'),(61,'João Santos','Clínico geral'),(62,'Ana Paula Mendes','Cardiologista'),(63,'Eduardo Castro','Ortopedista'),(64,'Luciana Silva','Dermatologista'),(65,'Luiz Carlos Lima','Neurologista'),(66,'Bianca Rodrigues','Ginecologista'),(67,'Victor Ramos','Oftalmologista'),(68,'Carolina Lopes','Endocrinologista'),(69,'Rafael Ferreira','Cirurgião geral'),(70,'Mariana Oliveira','Pediatra'),(71,'Tiago Andrade','Urologista'),(72,'Vanessa Martins','Psiquiatra'),(73,'Guilherme Souza','Radiologista'),(74,'Fernanda Rodrigues','Oncologista'),(75,'Bruno Almeida','Infectologista'),(76,'Ana Beatriz Barbosa','Geriatra'),(77,'Caio Fonseca','Otorrinolaringologista'),(78,'Marina Costa','Nutricionista'),(79,'Eduardo Reis','Hematologista'),(80,'Beatriz Oliveira','Pneumologista'),(81,'Alexandre Soares','Reumatologista'),(82,'Débora Mendonça','Obstetra'),(83,'Gustavo Pereira','Neurocirurgião'),(84,'Larissa Carvalho','Psicóloga clínica'),(85,'Marcelo Alves','Clínico geral'),(86,'Juliana Farias','Cardiologista'),(87,'Rodrigo Silva','Ortopedista'),(88,'Paula Ribeiro','Dermatologista'),(89,'Matheus Oliveira','Neurologista'),(90,'Isabella Santos','Ginecologista'),(91,'Bruno Costa','Oftalmologista'),(92,'Dionatan Ismael de Freitas','Dentista'),(94,'Luiza de Freitas Carvalho CCC','Dentista');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 12:17:44

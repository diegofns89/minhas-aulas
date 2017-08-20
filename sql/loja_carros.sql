-- --------------------------------------------------------
-- Servidor:                     192.168.99.100
-- Versão do servidor:           5.7.19 - MySQL Community Server (GPL)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para loja_carros
DROP DATABASE IF EXISTS `loja_carros`;
CREATE DATABASE IF NOT EXISTS `loja_carros` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `loja_carros`;

-- Copiando estrutura para tabela loja_carros.modelos
DROP TABLE IF EXISTS `modelos`;
CREATE TABLE IF NOT EXISTS `modelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_montadora` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__montadoras` (`id_montadora`),
  CONSTRAINT `FK__montadoras` FOREIGN KEY (`id_montadora`) REFERENCES `montadoras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela loja_carros.modelos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
REPLACE INTO `modelos` (`id`, `id_montadora`, `data_criacao`, `data_atualizacao`, `nome`) VALUES
	(1, 3, '2017-08-20 18:37:52', '2017-08-20 18:37:54', 'EcoSport'),
	(2, 1, '2017-08-20 18:38:23', '2017-08-20 18:38:24', 'Uno'),
	(3, 2, '2017-08-20 18:38:40', '2017-08-20 18:38:41', 'Gol');
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_carros.montadoras
DROP TABLE IF EXISTS `montadoras`;
CREATE TABLE IF NOT EXISTS `montadoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela loja_carros.montadoras: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `montadoras` DISABLE KEYS */;
REPLACE INTO `montadoras` (`id`, `data_criacao`, `data_atualizacao`, `nome`) VALUES
	(1, '2017-08-20 18:35:07', '2017-08-20 18:35:09', 'Fiat'),
	(2, '2017-08-20 18:35:47', '2017-08-20 18:35:49', 'Volkswagen'),
	(3, '2017-08-20 18:36:31', '2017-08-20 18:36:33', 'Ford');
/*!40000 ALTER TABLE `montadoras` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_carros.veiculos
DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modelo` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome_cliente` varchar(100) NOT NULL,
  `telefone_cliente` varchar(100) NOT NULL,
  `placa` varchar(3) NOT NULL,
  `ano` int(11) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__modelos` (`id_modelo`),
  CONSTRAINT `FK__modelos` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela loja_carros.veiculos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
REPLACE INTO `veiculos` (`id`, `id_modelo`, `data_criacao`, `data_atualizacao`, `nome_cliente`, `telefone_cliente`, `placa`, `ano`, `cor`, `valor`) VALUES
	(1, 1, '2017-08-20 18:39:30', '2017-08-20 18:39:32', 'Diego', '981461079', 'BRT', 2013, 'Prata', 23000),
	(2, 3, '2017-08-20 18:41:06', '2017-08-20 18:41:08', 'Jessé', '988794512', 'JSE', 2014, 'Preto', 25000),
	(3, 2, '2017-08-20 18:42:45', '2017-08-20 18:42:47', 'Beatriz', '987654321', 'BIA', 2015, 'Rosa', 27000);
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

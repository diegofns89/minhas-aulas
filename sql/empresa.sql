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


-- Copiando estrutura do banco de dados para empresa
DROP DATABASE IF EXISTS `empresa`;
CREATE DATABASE IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `empresa`;

-- Copiando estrutura para tabela empresa.funcionarios
DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `data_admissao` datetime NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `possui_habilitacao` tinyint(4) NOT NULL DEFAULT '0',
  `nivel_ingles` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela empresa.funcionarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
REPLACE INTO `funcionarios` (`id`, `data_criacao`, `data_atualizacao`, `nome`, `sobrenome`, `sexo`, `data_admissao`, `cargo`, `possui_habilitacao`, `nivel_ingles`) VALUES
	(1, '2017-08-20 17:05:40', '2017-08-20 17:05:47', 'Diego', 'Francisco', 'M', '2017-08-20 17:05:35', 'Programador', 1, 'Iniciante'),
	(2, '2017-08-20 17:07:44', '2017-08-20 20:12:44', 'Jessé', 'Pinheiro', 'M', '2017-08-20 17:08:25', 'Bombeiro', 1, 'Avançado'),
	(3, '2017-08-20 17:12:53', '2017-08-20 17:12:55', 'Beatriz', 'Pinheiro', 'F', '2017-08-20 17:13:17', 'Empresaria', 1, 'Avançado');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

-- Copiando estrutura para tabela empresa.pontos
DROP TABLE IF EXISTS `pontos`;
CREATE TABLE IF NOT EXISTS `pontos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `data_entrada` datetime NOT NULL,
  `data_saida` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__funcionarios` (`id_funcionario`),
  CONSTRAINT `FK__funcionarios` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela empresa.pontos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pontos` DISABLE KEYS */;
REPLACE INTO `pontos` (`id`, `id_funcionario`, `data_entrada`, `data_saida`) VALUES
	(1, 3, '2017-08-20 17:15:29', '2017-08-20 17:15:31'),
	(2, 1, '2017-08-20 17:15:44', '2017-08-20 17:15:48'),
	(3, 2, '2017-08-20 17:17:05', '2017-08-20 17:17:07');
/*!40000 ALTER TABLE `pontos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

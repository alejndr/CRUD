

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE DATABASE IF NOT EXISTS `boardgames` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `boardgames`;



CREATE TABLE IF NOT EXISTS `BG_tabla` (
  `BG_id` int(11) NOT NULL,
  `genero` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `editorial` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` DECIMAL(6,2) DEFAULT NULL,
  PRIMARY KEY (`BG_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;



INSERT INTO `BG_tabla` (`BG_id`, `genero`, `nombre`, `editorial`, `precio`) VALUES

(1, 'Euro', 'Agricola', 'Devir', 53.99),
(2, 'RPG', 'Gloomhaven', 'Cephalofair Games', 149.00),
(3, 'Cartas', 'Smash Up', 'Devir', 19.95),
(4, 'Cartas', 'Munchkin','Asmodee', 19.95),
(4, 'Deckbuilder', 'Valle de los mercantes','Devir', 15.95);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
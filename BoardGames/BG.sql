

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `boardgames`
--
CREATE DATABASE IF NOT EXISTS `boardgames` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `boardgames`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Juegos`
--

CREATE TABLE IF NOT EXISTS `Juegos` (
  `Juegos_id` int(11) NOT NULL,
  `genero` varchar(12) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `editorial` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` DECIMAL(6,2) DEFAULT NULL,
  `Autores_id` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


--
-- Volcado de datos para la tabla `Juegos`
--

INSERT INTO `Juegos` (`Juegos_id`, `genero`, `nombre`, `editorial`, `precio`, `Autores_id`) VALUES

(1, 'Euro', 'Agricola', 'Devir', 53.99, 1),
(2, 'Bluffing', 'Dead Of Winter', 'Plaid Hat Games', 59.99, 1),
(3, 'RPG', 'Gloomhaven', 'Cephalofair Games', 149.00, 2),
(4, 'Deckbuilder', 'Hero Realms', 'Devir', 19.99, 4),
(5, 'Puzzle', 'Patchwork', 'Maldito', 19.00, 1),
(6, 'Bluffing', 'Bang!', 'Mayfair Games', 19.00, 5),
(7, 'Bluffing', 'Ciudadelas', 'Edge', 25.00, 6);




CREATE TABLE IF NOT EXISTS `Autores` (
  `Autores_id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nacionalidad` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `premios` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

INSERT INTO `Autores` (`Autores_id`, `nombre`, `nacionalidad`, `premios`) VALUES

(1, 'Uwe Rosenberg', 'Aleman', 'Deutscher Spiele Preis, Meeples Choice Award'),
(2, 'Jonathan Gilmour', 'Americano', ''),
(3, 'Isaac Childres', 'Americano', ''),
(4, 'Robert Dougherty', 'Ingles', ''),
(5, 'Emiliano Sciarra', 'Italiano', 'Best Traditional Card Game, Best Graphic Design of a Card Game or Expansion'),
(6, 'Bruno Faidutti', 'Italiano', 'Spiel des Jahres');



ALTER TABLE `Juegos`
  ADD PRIMARY KEY (`Juegos_id`);
  
ALTER TABLE `Autores`
  ADD PRIMARY KEY (`Autores_id`);
  
  

  
ALTER TABLE `Juegos`
  ADD CONSTRAINT `fk_Juegos_Autor` FOREIGN KEY (`Autores_id`) REFERENCES `Autores` (`Autores_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
  
  



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
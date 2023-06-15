-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-06-2023 a las 02:46:34
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_final_eguias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(2, 'Los intendentes del PJ bonaerense se alinean detrás de una fórmula de consenso y quieren dejar de lado las PASO', 'A la espera del sprint final de las negociaciones, los jefes comunales buscan amortiguar el impacto en los municipios. Por ahora Eduardo de Pedro es el candidato que más convence\r\n', 'El ministro del Interior, Eduardo “Wado” de Pedro, no baja la intensidad de su instalación en vistas al 24 de junio próximo cuando sea el cierre de listas para las elecciones. El funcionario cristinista en el gabinete de Alberto Fernández se encamina a ser el postulante presidencial del peronismo K, salvo que la vicepresidenta Cristina Kirchner disponga lo contrario. En ese esquema el dirigente de La Cámpora viene trabajando en sumar la estructura de los intendentes del conurbano bonaerense, la región más concentrada del país y fusible necesario para cualquier excursión electoral. Hoy, los intendentes peronistas que gobiernan los principales distritos de este entramado urbano trabajan en pos de la instalación de Pedro.\r\n\r\nPor eso, los jefes comunales no dudan en recibir al ministro para realizar distintas actividades. Este martes fueron los intendentes de Nicolás Mantegazza, San Vicente; Juan José Mussi, Berazategui y Leonardo Nardini —titular de la cartera de Infraestructura bonaerense, pero intendente en uso de licencia de Malvinas Argentinas— los que le abrieron las puertas al presumible precandidato. La semana pasada fue el turno de los intendentes, Federico Achával, Pilar; Alberto Descalzo, Ituzaingó; Andrés Watson —y el diputado nacional, Julio Pereyra—, Florencio Varela, Mario Secco, Ensenada y Mayra Mendoza, Quilmes.', 'dlkb2qaxayu0s4swjxaz'),
(3, 'Los intendentes del PJ bonaerense se alinean detrás de una fórmula de consenso y quieren dejar de lado las PASO', 'A la espera del sprint final de las negociaciones, los jefes comunales buscan amortiguar el impacto en los municipios. Por ahora Eduardo de Pedro es el candidato que más convence\r\n', 'El ministro del Interior, Eduardo “Wado” de Pedro, no baja la intensidad de su instalación en vistas al 24 de junio próximo cuando sea el cierre de listas para las elecciones. El funcionario cristinista en el gabinete de Alberto Fernández se encamina a ser el postulante presidencial del peronismo K, salvo que la vicepresidenta Cristina Kirchner disponga lo contrario. En ese esquema el dirigente de La Cámpora viene trabajando en sumar la estructura de los intendentes del conurbano bonaerense, la región más concentrada del país y fusible necesario para cualquier excursión electoral. Hoy, los intendentes peronistas que gobiernan los principales distritos de este entramado urbano trabajan en pos de la instalación de Pedro.\r\n\r\nPor eso, los jefes comunales no dudan en recibir al ministro para realizar distintas actividades. Este martes fueron los intendentes de Nicolás Mantegazza, San Vicente; Juan José Mussi, Berazategui y Leonardo Nardini —titular de la cartera de Infraestructura bonaerense, pero intendente en uso de licencia de Malvinas Argentinas— los que le abrieron las puertas al presumible precandidato. La semana pasada fue el turno de los intendentes, Federico Achával, Pilar; Alberto Descalzo, Ituzaingó; Andrés Watson —y el diputado nacional, Julio Pereyra—, Florencio Varela, Mario Secco, Ensenada y Mayra Mendoza, Quilmes.', NULL),
(15, 'prubea', 'prueba', 'prueba', 'xn83i9jgtoxvwt8i9geo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'nahuel', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'belen', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

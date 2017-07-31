-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2017 a las 21:15:04
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sidh`
--
create database sidh;
use sidh;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE IF NOT EXISTS `disponibilidad` (
  `id` int(11) NOT NULL,
  `dia` varchar(9) DEFAULT NULL,
  `h7` tinyint(1) NOT NULL DEFAULT '0',
  `h8` tinyint(1) NOT NULL DEFAULT '0',
  `h9` tinyint(1) NOT NULL DEFAULT '0',
  `h10` tinyint(1) NOT NULL DEFAULT '0',
  `h11` tinyint(1) NOT NULL DEFAULT '0',
  `h12` tinyint(1) NOT NULL DEFAULT '0',
  `h13` tinyint(1) NOT NULL DEFAULT '0',
  `h14` tinyint(1) NOT NULL DEFAULT '0',
  `h15` tinyint(1) NOT NULL DEFAULT '0',
  `h16` tinyint(1) NOT NULL DEFAULT '0',
  `h17` tinyint(1) NOT NULL DEFAULT '0',
  `h18` tinyint(1) NOT NULL DEFAULT '0',
  `h19` tinyint(1) NOT NULL DEFAULT '0',
  `h20` tinyint(1) NOT NULL DEFAULT '0',
  `h21` tinyint(1) NOT NULL DEFAULT '0',
  `notas` text,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `disponibilidad`
--

INSERT INTO `disponibilidad` (`id`, `dia`, `h7`, `h8`, `h9`, `h10`, `h11`, `h12`, `h13`, `h14`, `h15`, `h16`, `h17`, `h18`, `h19`, `h20`, `h21`, `notas`, `estado`) VALUES
(1, 'Lunes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1),
(2, 'Martes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1),
(3, 'Miercoles', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1),
(4, 'Jueves', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1),
(5, 'Viernes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1),
(6, 'Sabado', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ninguna', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad_tiene_periodos`
--

CREATE TABLE IF NOT EXISTS `disponibilidad_tiene_periodos` (
  `id` int(11) NOT NULL,
  `id_periodo` int(11) DEFAULT NULL,
  `id_disponibilidad` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `disponibilidad_tiene_periodos`
--

INSERT INTO `disponibilidad_tiene_periodos` (`id`, `id_periodo`, `id_disponibilidad`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `id` int(11) NOT NULL,
  `periodo` varchar(60) NOT NULL,
  `inicio` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id`, `periodo`, `inicio`, `fin`, `estado`) VALUES
(1, 'Primero', '2017-05-01', '2017-08-31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(11) NOT NULL,
  `permiso` varchar(40) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contrasena` varchar(40) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `tipoUsuario` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido1`, `apellido2`, `email`, `contrasena`, `estado`, `tipoUsuario`) VALUES
(1, 'Erick Ricardo', 'Ocampo', 'Gómez', 'eoocampo.datic@utez.edu.mx', 'bizonte', 1, 1),
(2, 'Luis Humberto', 'Guido', 'Hernandez', 'luisguido@gmail.com', 'luis123', 0, 0),
(7, 'Axel', 'Lagunes', 'Ramírez', 'axel_lagunes@outlook.com', '123', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tiene_disponibilidad`
--

CREATE TABLE IF NOT EXISTS `usuario_tiene_disponibilidad` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_disponibilidad` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_tiene_disponibilidad`
--

INSERT INTO `usuario_tiene_disponibilidad` (`id`, `id_usuario`, `id_disponibilidad`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tiene_permisos`
--

CREATE TABLE IF NOT EXISTS `usuario_tiene_permisos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_permisos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `disponibilidad_tiene_periodos`
--
ALTER TABLE `disponibilidad_tiene_periodos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_tiene_disponibilidad`
--
ALTER TABLE `usuario_tiene_disponibilidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`);

--
-- Indices de la tabla `usuario_tiene_permisos`
--
ALTER TABLE `usuario_tiene_permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_permisos` (`id_permisos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `disponibilidad_tiene_periodos`
--
ALTER TABLE `disponibilidad_tiene_periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuario_tiene_disponibilidad`
--
ALTER TABLE `usuario_tiene_disponibilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuario_tiene_permisos`
--
ALTER TABLE `usuario_tiene_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `disponibilidad_tiene_periodos`
--
ALTER TABLE `disponibilidad_tiene_periodos`
  ADD CONSTRAINT `disponibilidad_tiene_periodos_ibfk_1` FOREIGN KEY (`id_periodo`) REFERENCES `periodos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `disponibilidad_tiene_periodos_ibfk_2` FOREIGN KEY (`id_disponibilidad`) REFERENCES `disponibilidad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_tiene_disponibilidad`
--
ALTER TABLE `usuario_tiene_disponibilidad`
  ADD CONSTRAINT `usuario_tiene_disponibilidad_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_tiene_disponibilidad_ibfk_2` FOREIGN KEY (`id_disponibilidad`) REFERENCES `disponibilidad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_tiene_permisos`
--
ALTER TABLE `usuario_tiene_permisos`
  ADD CONSTRAINT `usuario_tiene_permisos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_tiene_permisos_ibfk_2` FOREIGN KEY (`id_permisos`) REFERENCES `permisos` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

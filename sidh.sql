-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generaciÃ³n: 12-08-2017 a las 22:38:56
-- VersiÃ³n del servidor: 10.1.16-MariaDB
-- VersiÃ³n de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sidh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE `disponibilidad` (
  `id` int(11) NOT NULL,
  `dia` varchar(9) DEFAULT NULL,
  `h7` char(1) NOT NULL DEFAULT '0',
  `h8` char(1) NOT NULL DEFAULT '0',
  `h9` char(1) NOT NULL DEFAULT '0',
  `h10` char(1) NOT NULL DEFAULT '0',
  `h11` char(1) NOT NULL DEFAULT '0',
  `h12` char(1) NOT NULL DEFAULT '0',
  `h13` char(1) NOT NULL DEFAULT '0',
  `h14` char(1) NOT NULL DEFAULT '0',
  `h15` char(1) NOT NULL DEFAULT '0',
  `h16` char(1) NOT NULL DEFAULT '0',
  `h17` char(1) NOT NULL DEFAULT '0',
  `h18` char(1) NOT NULL DEFAULT '0',
  `h19` char(1) NOT NULL DEFAULT '0',
  `h20` char(1) NOT NULL DEFAULT '0',
  `h21` char(1) NOT NULL DEFAULT '0',
  `notas` text,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad_tiene_periodos`
--

CREATE TABLE `disponibilidad_tiene_periodos` (
  `id` int(11) NOT NULL,
  `id_periodo` int(11) DEFAULT NULL,
  `id_disponibilidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` int(11) NOT NULL,
  `periodo` varchar(60) NOT NULL,
  `inicio` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `periodos` (`id`, `periodo`, `inicio`, `fin`) VALUES
(1, 'Enero - Abril', CURDATE(), CURDATE());

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `tipoUsuario` tinyint(1) NOT NULL DEFAULT '0',
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido1`, `apellido2`, `email`, `contrasena`, `estado`, `tipoUsuario`, `telefono`) VALUES
(1, 'Miguel', 'Rosemberg', 'delPilar Degante', 'miguelrosemberg@utez.edu.mx', '123', 1, 1, 'no registrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tiene_disponibilidad`
--

CREATE TABLE `usuario_tiene_disponibilidad` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_disponibilidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ãndices para tablas volcadas
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
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `usuario_tiene_disponibilidad`
--
ALTER TABLE `usuario_tiene_disponibilidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `disponibilidad_tiene_periodos`
--
ALTER TABLE `disponibilidad_tiene_periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `usuario_tiene_disponibilidad`
--
ALTER TABLE `usuario_tiene_disponibilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

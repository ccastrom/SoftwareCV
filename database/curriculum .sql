-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2021 a las 05:33:37
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curriculum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE `antecedentes` (
  `id` int(11) NOT NULL,
  `descripcion_general` longtext NOT NULL,
  `id_fk_usuario` int(11) NOT NULL,
  `id_fk_antecedentes_academicos` int(11) NOT NULL,
  `id_fk_antecedentes_laborales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes_academicos`
--

CREATE TABLE `antecedentes_academicos` (
  `id` int(11) NOT NULL,
  `universidad` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fecha_inicio_academico` varchar(10) DEFAULT NULL,
  `fecha_termino_academico` varchar(10) DEFAULT NULL,
  `descripcion_academica` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes_laborales`
--

CREATE TABLE `antecedentes_laborales` (
  `id` int(11) NOT NULL,
  `nombre_de_trabajo` varchar(45) DEFAULT NULL,
  `empleador` varchar(30) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fecha_inicio_laboral` varchar(20) DEFAULT NULL,
  `fecha_termino_laboral` varchar(20) DEFAULT NULL,
  `descripcion_profesional` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ruta` text NOT NULL,
  `id_fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `num_celular` varchar(20) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `pais` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_antecedentes_academicos` (`id_fk_antecedentes_academicos`),
  ADD KEY `id_fk_antecedentes_laborales` (`id_fk_antecedentes_laborales`),
  ADD KEY `id_fk_usuario` (`id_fk_usuario`);

--
-- Indices de la tabla `antecedentes_academicos`
--
ALTER TABLE `antecedentes_academicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `antecedentes_laborales`
--
ALTER TABLE `antecedentes_laborales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fk_usuario` (`id_fk_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `antecedentes_academicos`
--
ALTER TABLE `antecedentes_academicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `antecedentes_laborales`
--
ALTER TABLE `antecedentes_laborales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD CONSTRAINT `antecedentes_ibfk_1` FOREIGN KEY (`id_fk_antecedentes_academicos`) REFERENCES `antecedentes_academicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antecedentes_ibfk_2` FOREIGN KEY (`id_fk_antecedentes_laborales`) REFERENCES `antecedentes_laborales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antecedentes_ibfk_3` FOREIGN KEY (`id_fk_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`id_fk_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

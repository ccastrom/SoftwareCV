-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2021 a las 04:11:48
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

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
  `descripcion` longtext NOT NULL,
  `id_fk_usuario` int(11) NOT NULL,
  `id_fk_antecedentes_academicos` int(11) NOT NULL,
  `id_fk_antecedentes_laborales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`id`, `descripcion`, `id_fk_usuario`, `id_fk_antecedentes_academicos`, `id_fk_antecedentes_laborales`) VALUES
(1, 'Desarrollador Junior con 2 años de experiencia en el ambito web', 1, 1, 1),
(2, 'Ingeniero automotriz recien egresado en busqueda de oportunidades laborales.', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes_academicos`
--

CREATE TABLE `antecedentes_academicos` (
  `id` int(11) NOT NULL,
  `universidad` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fecha_inicio` varchar(10) DEFAULT NULL,
  `fecha_termino` varchar(10) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `antecedentes_academicos`
--

INSERT INTO `antecedentes_academicos` (`id`, `universidad`, `ciudad`, `fecha_inicio`, `fecha_termino`, `descripcion`) VALUES
(1, 'IP Santo Tomas', 'Rancagua', '2017', '2022', 'Estudiante de ingenieria informatica'),
(2, 'Inacap', 'Rancagua', '2021', '2025', 'Estudiante del area automotriz que actualmente cursa la carrera.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes_laborales`
--

CREATE TABLE `antecedentes_laborales` (
  `id` int(11) NOT NULL,
  `nombre_de_trabajo` varchar(45) DEFAULT NULL,
  `empleador` varchar(30) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_termino` varchar(20) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `antecedentes_laborales`
--

INSERT INTO `antecedentes_laborales` (`id`, `nombre_de_trabajo`, `empleador`, `ciudad`, `fecha_inicio`, `fecha_termino`, `descripcion`) VALUES
(1, 'Programador Junior', 'HRBLO', 'Rancagua', 'febrero 2021', 'abril 2021', 'Estudiante en práctica del area informatica del Hospital Regional de Rancagua'),
(2, 'Mantenimiento de vehiculo', 'Marco Ratti', 'Rancagua', '2021', 'Presente', 'Actualmente trabajando en el area de servicio tecnico automotriz');

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
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `num_celular`, `correo`, `direccion`, `pais`) VALUES
(1, 'Claudio Francisco', 'Castro', 'Muñoz', '967859747', 'claudio_jr@live.cl', 'Augusto Figueroa 41', 'Chile'),
(2, 'Cristobal Felipe', 'Sepúlveda', 'Yañez', 'sin celular', 'crisbkn2009@live.cl', 'Villa los Heroes', 'Chile');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `antecedentes_academicos`
--
ALTER TABLE `antecedentes_academicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `antecedentes_laborales`
--
ALTER TABLE `antecedentes_laborales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

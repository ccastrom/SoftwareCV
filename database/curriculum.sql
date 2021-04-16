-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2021 a las 02:48:04
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

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`id`, `descripcion_general`, `id_fk_usuario`, `id_fk_antecedentes_academicos`, `id_fk_antecedentes_laborales`) VALUES
(1, 'Estudiante de Ingenieria en Informatica en Instituto Profesional Santo Tomas en busca de experiencia profesional en desarrollo de aplicaciones web.', 1, 1, 1),
(3, 'vasfasfafa', 2, 2, 3),
(4, 'FASFASFASF', 3, 3, 4),
(5, 'FASFASFASF', 3, 4, 5),
(6, 'jjjfsjsfshs', 4, 5, 6),
(7, 'jjjfsjsfshs', 4, 6, 7);

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

--
-- Volcado de datos para la tabla `antecedentes_academicos`
--

INSERT INTO `antecedentes_academicos` (`id`, `universidad`, `ciudad`, `fecha_inicio_academico`, `fecha_termino_academico`, `descripcion_academica`) VALUES
(1, 'IP SANTO TOMAS', 'Rancagua', '2017-03-11', '2022-04-22', 'Estudios realizados de desarrollo de software, programación JAVA, desarrollo web, cursos de base de datos.'),
(2, '', '', '', '', ''),
(3, 'FASFASF', 'ASFASF', '0412-12-04', '1111-01-04', 'AFASFASFA'),
(4, 'FASFASF', 'ASFASF', '0412-12-04', '1111-01-04', 'AFASFASFA'),
(5, 'fasfa', 'gasgasgas', '1111-02-04', '1111-02-05', 'GSAGASGASG'),
(6, 'gdgddgdg', 'gnjtehj3', '1111-02-04', '1111-02-05', 'SSSSSSS');

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

--
-- Volcado de datos para la tabla `antecedentes_laborales`
--

INSERT INTO `antecedentes_laborales` (`id`, `nombre_de_trabajo`, `empleador`, `ciudad`, `fecha_inicio_laboral`, `fecha_termino_laboral`, `descripcion_profesional`) VALUES
(1, 'Programador', 'Consultar Psicologia', 'Rancagua', '2019-12-20', '2020-01-10', 'Se desarrolla software de escritoria que soluciona la problematica de almacenar datos en una planilla Excel, haciendo un proceso lento y tedioso para gestionar a los pacientes de aquella consulta.'),
(2, 'Programador Junior', 'HHS', 'Santiago', '14-04-2021', 'Presente', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec urna quis lorem luctus porta. Quisque eu ligula quis libero aliquet luctus. Morbi elementum auctor venenatis. Aliquam blandit eget mi et tempor. Fusce efficitur nisi lobortis mi sagittis, ac imperdiet nisl placerat. Integer metus lacus, sodales ac pellentesque et, dignissim nec quam. Aenean at dignissim ex.'),
(3, '', '', '', '', '', ''),
(4, 'Programador Junior', 'FASFASF', 'Rancagua', '1111-04-21', '14111-02-04', 'FASFAS'),
(5, 'Programador Junior', 'FASFASF', 'Rancagua', '1111-04-21', '14111-02-04', 'FASFAS'),
(6, 'hfdhfs', 'Empresa X', 'ljhlhhljhljhlj', '4111-12-05', '0411-11-24', 'GGGGGGGGG'),
(7, 'hfdhfs', 'Empresa X', 'ljhlhhljhljhlj', '4111-12-05', '0411-11-24', 'GGGGGGGGG');

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

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `ruta`, `id_fk_usuario`) VALUES
(1, 'hollow.jpg', '60779629ebb765.43340903hollow.jpg', 1),
(2, 'pepe.jpg', '6078daea2a4646.87954105pepe.jpg', 3),
(3, 'pepe.jpg', '6078dc476100e1.94472896pepe.jpg', 4);

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
(1, 'Claudio Francisco', 'Castro', 'Muñoz', ' 967859747', 'claudio_jr@live.cl', ' Augusto Figueroa', 'Chile'),
(2, 'fasfas', 'fasfasf', 'fasfasf', ' asfasfa', 'asfasf', ' Augusto Figueroa', 'Chile'),
(3, 'Cristobal', 'Sepúlveda', 'Yañez', ' 5125125', 'asdasddsa', ' afsfas', 'Chile'),
(4, 'YYYYYYY', 'FFFFFFFFF', 'HHHHHHHH', ' 967859747', 'asfasfas', ' hfhdf', 'Chile');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `antecedentes_academicos`
--
ALTER TABLE `antecedentes_academicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `antecedentes_laborales`
--
ALTER TABLE `antecedentes_laborales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

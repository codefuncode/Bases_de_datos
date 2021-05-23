-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:39:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GameShark`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `idclasificacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`idclasificacion`, `nombre`) VALUES
(1, 'EC-infancia temprana'),
(2, 'E-todos'),
(3, 'E+10-todos sobre 10 años'),
(4, 'T-adolescentes'),
(5, 'M-adolescentes sobre 17 años'),
(6, 'AO-adultos solamente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idjuego` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `idclasificacion` int(11) NOT NULL,
  `idplataforma` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idjuego`, `nombre`, `estado`, `fecha`, `idclasificacion`, `idplataforma`, `cantidad`, `precio`) VALUES
(36, 'Primero', 'nuevo', '2021-05-04', 1, 6, 49, 10.00),
(37, 'xxx', 'nuevo', '2021-05-04', 6, 16, 20, 1.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `idplataforma` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`idplataforma`, `nombre`) VALUES
(1, '3DS'),
(2, 'Switch'),
(3, 'DS'),
(4, 'Wii'),
(5, 'Wii U'),
(6, 'Gamecube'),
(7, 'Xbox Series X'),
(8, 'Xbox one'),
(9, 'Xbox 360'),
(10, 'Xbox'),
(11, 'PS1'),
(12, 'PS2'),
(13, 'PS3'),
(14, 'PS4'),
(15, 'PS5'),
(16, 'PSP'),
(17, 'PS Vita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `tipo_usuario` varchar(10) NOT NULL DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `usuario`, `correo`, `pass`, `tipo_usuario`) VALUES
(1, 'Pepe', 'pepito', 'pepe@mail.com', 'pepito', 'usuario'),
(10, 'admin', 'admin', 'admin@mail.com', 'admin', 'admin'),
(16, 'Carlos', 'user', 'user@main.com', 'user', 'usuario'),
(17, 'Carlos', 'hols', 'hola@mail.com', 'hola', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idclasificacion`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idjuego`),
  ADD KEY `FK_Clasificacion` (`idclasificacion`),
  ADD KEY `FK_Plataforma` (`idplataforma`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`idplataforma`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `idclasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idjuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `idplataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `FK_Clasificacion` FOREIGN KEY (`idclasificacion`) REFERENCES `clasificacion` (`idclasificacion`),
  ADD CONSTRAINT `FK_Plataforma` FOREIGN KEY (`idplataforma`) REFERENCES `plataforma` (`idplataforma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

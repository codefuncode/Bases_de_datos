-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:38:07
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
-- Base de datos: `Disney`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombreCliente` varchar(20) DEFAULT NULL,
  `emailCliente` varchar(20) DEFAULT NULL,
  `telefonoCliente` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombreCliente`, `emailCliente`, `telefonoCliente`, `pass`) VALUES
(1, 'ghfvhgk', 'jkglg@jhkj.com', '555555', '22222'),
(2, 'ghcfhggh', 'hhghg@kkk.com', '555', 'nf6WahFGqJBqVbM'),
(3, 'ddd', 'dddd@hhh.com', 'jkjkjkjk', 'nf6WahFGqJBqVbM'),
(4, 'dfsabge', 'fdbdfab@hh.com', '444444444', 'nf6WahFGqJBqVbM'),
(5, 'regerg', 'regr@hvkjf.com', 'kkkkk', 'nf6WahFGqJBqVbM'),
(6, 'dfabfbab', 'a@a.com', 'bddfbdf', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `idoferta` int(11) NOT NULL,
  `nombreOferta` varchar(20) DEFAULT NULL,
  `descripcionOferta` text NOT NULL,
  `precio` decimal(15,2) DEFAULT NULL,
  `fechavigencia` date DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ofertas`
--

INSERT INTO `ofertas` (`idoferta`, `nombreOferta`, `descripcionOferta`, `precio`, `fechavigencia`, `video`, `imagen`) VALUES
(1, 'Uno ', '              ds bf bdsabdfb ', '3.00', '2020-12-22', 'upload/divertido.mp4', 'upload/external-content.duckduckgo.com.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reservacion`
--

CREATE TABLE `Reservacion` (
  `idreservacion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idOferta` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Reservacion`
--

INSERT INTO `Reservacion` (`idreservacion`, `idUsuario`, `idOferta`, `Fecha`) VALUES
(1, 6, 1, '2020-12-21 02:22:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`idoferta`);

--
-- Indices de la tabla `Reservacion`
--
ALTER TABLE `Reservacion`
  ADD PRIMARY KEY (`idreservacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `idoferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Reservacion`
--
ALTER TABLE `Reservacion`
  MODIFY `idreservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

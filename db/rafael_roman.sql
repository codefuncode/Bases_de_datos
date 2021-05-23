-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:40:42
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
-- Base de datos: `rafael_roman`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Armario`
--

CREATE TABLE `Armario` (
  `ID_Armario` int(11) NOT NULL,
  `Nombre_armario` varchar(255) NOT NULL,
  `Posicion_Armario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Articulo`
--

CREATE TABLE `Articulo` (
  `ID_Articulo` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `codigo_articulo` varchar(255) DEFAULT NULL,
  `ID_Armario` int(11) NOT NULL,
  `ID_Cubiculo` int(11) NOT NULL,
  `ID_Pasillo` int(11) NOT NULL,
  `ID_Tablilla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `ID_Categoria` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cubuiculo`
--

CREATE TABLE `Cubuiculo` (
  `ID_Cubuiculo` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `capasidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pasillo`
--

CREATE TABLE `Pasillo` (
  `ID_pasillo` int(11) NOT NULL,
  `nombre_pasillo` varchar(255) NOT NULL,
  `codigo_pasillo` varchar(255) NOT NULL,
  `ID_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `idprueba` int(11) NOT NULL,
  `stocknumber` varchar(10) DEFAULT '0',
  `binlocation` varchar(10) DEFAULT '0',
  `binaviability` varchar(10) DEFAULT 'emty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`idprueba`, `stocknumber`, `binlocation`, `binaviability`) VALUES
(1, '12345', 'bd52', 'full'),
(2, '98760', 'bd52', 'full'),
(3, '2468', '543454', 'full'),
(6, '0', '0', 'emty'),
(7, '0', '0', 'emty'),
(8, '0', '0', 'emty'),
(9, '12468', '0', 'emty'),
(10, '0', '0', 'emty'),
(11, '0', '0', 'emty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tablilla`
--

CREATE TABLE `Tablilla` (
  `ID_tablilla` int(11) NOT NULL,
  `Nombre_tablilla` varchar(255) NOT NULL,
  `Cantidad_cubiculo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Armario`
--
ALTER TABLE `Armario`
  ADD PRIMARY KEY (`ID_Armario`);

--
-- Indices de la tabla `Articulo`
--
ALTER TABLE `Articulo`
  ADD PRIMARY KEY (`ID_Articulo`),
  ADD KEY `ID_Armario` (`ID_Armario`),
  ADD KEY `ID_Cubiculo` (`ID_Cubiculo`),
  ADD KEY `ID_Pasillo` (`ID_Pasillo`),
  ADD KEY `ID_Tablilla` (`ID_Tablilla`);

--
-- Indices de la tabla `Cubuiculo`
--
ALTER TABLE `Cubuiculo`
  ADD PRIMARY KEY (`ID_Cubuiculo`);

--
-- Indices de la tabla `Pasillo`
--
ALTER TABLE `Pasillo`
  ADD PRIMARY KEY (`ID_pasillo`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`idprueba`);

--
-- Indices de la tabla `Tablilla`
--
ALTER TABLE `Tablilla`
  ADD PRIMARY KEY (`ID_tablilla`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prueba`
--
ALTER TABLE `prueba`
  MODIFY `idprueba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Articulo`
--
ALTER TABLE `Articulo`
  ADD CONSTRAINT `Articulo_ibfk_1` FOREIGN KEY (`ID_Armario`) REFERENCES `Armario` (`ID_Armario`),
  ADD CONSTRAINT `Articulo_ibfk_2` FOREIGN KEY (`ID_Cubiculo`) REFERENCES `Cubuiculo` (`ID_Cubuiculo`),
  ADD CONSTRAINT `Articulo_ibfk_3` FOREIGN KEY (`ID_Pasillo`) REFERENCES `Pasillo` (`ID_pasillo`),
  ADD CONSTRAINT `Articulo_ibfk_4` FOREIGN KEY (`ID_Tablilla`) REFERENCES `Tablilla` (`ID_tablilla`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

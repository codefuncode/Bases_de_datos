-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:43:06
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
-- Base de datos: `vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idanuncio` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `idcolor` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `valor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `tipo`) VALUES
(1, 'Nuevo'),
(2, 'Como Nuevo'),
(3, 'Usado'),
(4, 'Para Piezas'),
(5, 'Viejo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `idlicencia` tinyint(1) NOT NULL DEFAULT 1,
  `valor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`idlicencia`, `valor`) VALUES
(0, 'Sin licencia'),
(1, 'Con licencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmarca`, `nombre`) VALUES
(1, 'Toyota'),
(2, 'Nissan'),
(3, 'Kia'),
(4, 'Hyundai'),
(5, 'Ford'),
(7, 'Chrysler'),
(8, 'Mitsubishi'),
(9, 'Honda'),
(10, 'Suzuki'),
(11, 'Mazda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `idmodelo` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idmarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`idmodelo`, `nombre`, `idmarca`) VALUES
(16, 'Toyota Wigo', 1),
(17, 'Toyota Yaris', 1),
(18, 'Toyota FJ Cruiser', 1),
(19, 'Toyota Fortuner', 1),
(20, 'Toyota Rush', 1),
(21, 'Toyota Prado', 1),
(22, 'Toyota Rav4', 1),
(23, 'Toyota Land Cruiser', 1),
(24, 'Toyota Avanza', 1),
(25, 'Toyota Avanza Veloz', 1),
(26, 'Toyota Innova', 1),
(27, 'Toyota Wish', 1),
(28, 'Toyota Alphard', 1),
(29, 'Ford EcoSport', 5),
(30, 'Ford Everest', 5),
(31, 'Ford Expedition', 5),
(32, 'Toyota Avensis', 1),
(33, 'Acord', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmission`
--

CREATE TABLE `transmission` (
  `idtransmission` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transmission`
--

INSERT INTO `transmission` (`idtransmission`, `tipo`) VALUES
(1, 'Automática'),
(2, 'Estándar'),
(3, 'Semi Automática');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `edad` int(3) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `email`, `telefono`, `edad`, `pass`) VALUES
(18, 'Pepe', 'Gomez', 'mail@mail.com', '123-123-1234', 19, '123456789'),
(19, 'Carlos', 'Aleman', 'alemandiazcarlos@mail.com', '9392777333', 39, 'codefuncode'),
(20, 'User', 'Try', 'user@mail.com', '1231234568', 30, 'password');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `idvehiculo` int(11) NOT NULL,
  `idmodelo` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `millage` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(15,2) NOT NULL,
  `idtransmission` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `multas` decimal(15,2) NOT NULL DEFAULT 0.00,
  `licencia` tinyint(1) NOT NULL DEFAULT 1,
  `fechamodelo` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idvehiculo`, `idmodelo`, `idestado`, `millage`, `descripcion`, `precio`, `idtransmission`, `idusuario`, `multas`, `licencia`, `fechamodelo`) VALUES
(1, 30, 1, 999999, 'vcdBFVLUJBHCFSADJKCBNAKJCBNASK.;JCBN', '10000.00', 1, 19, '123453.00', 1, 2020),
(2, 27, 1, 9999, 'jtgfkhgkjhgljughjklghjljkgbljkgb', '10000.00', 1, 19, '12344.00', 1, 2000),
(3, 27, 1, 9999, '', '10000.00', 1, 19, '12344.00', 1, 2000),
(4, 33, 2, 3264, 'Descripcion de trueba', '30000.00', 2, 20, '0.00', 1, 2000),
(5, 33, 2, 3264, 'Descripcion de trueba', '30000.00', 2, 20, '0.00', 1, 1950),
(6, 33, 2, 3264, 'Descripcion de trueba', '30000.00', 2, 20, '0.00', 1, 1901),
(7, 33, 2, 3264, 'Descripcion de trueba', '50000.00', 2, 19, '0.00', 1, 1901),
(8, 33, 2, 3264, 'Descripción de prueba 2', '50000.00', 2, 19, '2223.00', 1, 1901),
(9, 30, 3, 3634545, 'fgbsddfhn;gkeghlbn;jkdsngkbldgbkldfnbkf', '5000.00', 3, 20, '0.00', 1, 2000),
(10, 29, 4, 2541521, ' escrito ahora ', '30000.00', 3, 20, '546546.00', 1, 2000),
(11, 29, 4, 2541521, 'Pepe', '30000.00', 3, 18, '546546.00', 1, 2000),
(12, 29, 4, 2541521, 'Pepe', '30000.00', 3, 18, '546546.00', 1, 2000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idanuncio`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idcolor`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmarca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`idmodelo`),
  ADD KEY `idmarca` (`idmarca`);

--
-- Indices de la tabla `transmission`
--
ALTER TABLE `transmission`
  ADD PRIMARY KEY (`idtransmission`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`idvehiculo`),
  ADD KEY `idmodelo` (`idmodelo`),
  ADD KEY `idestado` (`idestado`),
  ADD KEY `idtransmission` (`idtransmission`),
  ADD KEY `idusuario` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idanuncio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `idcolor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `transmission`
--
ALTER TABLE `transmission`
  MODIFY `idtransmission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`),
  ADD CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`),
  ADD CONSTRAINT `vehiculo_ibfk_4` FOREIGN KEY (`idtransmission`) REFERENCES `transmission` (`idtransmission`),
  ADD CONSTRAINT `vehiculo_ibfk_5` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

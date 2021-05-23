-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:42:13
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
-- Base de datos: `testveiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idanuncio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `pagado` varchar(2) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `idclasificacion` int(11) DEFAULT NULL,
  `idcondicion` int(11) DEFAULT NULL,
  `idtransmission` int(11) DEFAULT NULL,
  `licencia` varchar(2) NOT NULL,
  `multas` varchar(2) NOT NULL,
  `millage` int(11) NOT NULL DEFAULT 0,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `full_lablel` varchar(2) DEFAULT NULL,
  `idpueblo` int(11) DEFAULT NULL,
  `precio` decimal(15,2) NOT NULL,
  `mejoroferta` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`idanuncio`, `nombre`, `pagado`, `telefono`, `email`, `idcategoria`, `idmarca`, `idmodelo`, `year`, `idclasificacion`, `idcondicion`, `idtransmission`, `licencia`, `multas`, `millage`, `descripcion`, `imagen`, `full_lablel`, `idpueblo`, `precio`, `mejoroferta`) VALUES
(1, 'Vehiculo 1', 'si', '012-345-6789', 'email@email1.com', 1, 1, 1, 2000, 2, 1, 1, 'si', 'no', 123456, 'Descripcion de prueba 1', '../img/toyota.jpg', NULL, 0, '0.00', NULL),
(2, 'Vehiculo 2', 'si', '012-345-6789', 'email@email2.com', 1, 2, 1, 2005, 2, 6, 2, 'si', 'no', 123456, 'Descripcion de prueba 2', '../img/toyota.jpg', NULL, 0, '0.00', NULL),
(3, 'Vehiculo 3', 'si', '012-345-6789', 'email@email3.com', 1, 5, 15, 2021, 2, 3, 2, 'si', 'no', 123456, 'Descripcion de prueba 3', '../im../img/ford.jpg', NULL, 0, '0.00', NULL),
(4, 'Vehiculo 4', 'si', '012-345-6789', 'email@email4.com', 1, 9, 18, 2021, 1, 4, 2, 'si', 'no', 123456, 'Descripcion de prueba 4', '../im../img/honda.jpg', NULL, 0, '0.00', NULL),
(5, 'Vehiculo 5', 'si', '012-345-6789', 'email@email4.com', 1, 9, 18, 2021, 1, 4, 2, 'si', 'no', 123456, 'Descripcion de prueba 5', '../im../img/honda.jpg', NULL, 0, '0.00', NULL),
(6, 'Carlos', 'si', '123456789', '121555@mail.com', 7, 1, 4, NULL, 1, 3, 2, 'si', 'si', 30213, '                      svadvdavdvd', NULL, 'no', 10, '1000.00', 'si'),
(7, 'Carlos', 'si', '123456789', '121555@mail.com', 7, 1, 4, NULL, 1, 3, 2, 'si', 'si', 30213, '', NULL, 'no', 10, '1000.00', 'si'),
(8, 'Carlos', 'si', '123456789', '121555@mail.com', 7, 1, 1, NULL, 1, 3, 2, 'si', 'si', 30213, 'tshtrh', NULL, 'no', 10, '1000.00', 'si'),
(9, 'Carlos', 'si', '123456789', '121555@mail.com', 7, 1, 1, 2000, 1, 3, 2, 'si', 'si', 30213, 'tshtrh', NULL, 'no', 10, '1000.00', 'si'),
(10, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(11, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(12, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(13, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(14, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(15, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(16, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(17, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(18, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(19, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(20, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(21, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(22, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(23, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(24, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(25, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(26, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(27, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(28, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(29, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(30, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(31, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(32, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(33, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(34, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(35, 'jjjj', 'no', '1111111111', '121555@mail.com', 1, 9, 18, 3000, 2, 6, 1, 'no', 'no', 5000, '                      dvsdvsdv', NULL, 'no', 12, '30000.00', 'no'),
(36, 'Carlos', 'si', '9392777333', 'client@mail.com', 2, 1, 6, 2020, 1, 3, 1, 'si', 'no', 5000, 'Interesados comunicarse aquí.             ', NULL, 'si', 1, '5000.00', 'si'),
(37, 'Carlos', 'si', '9392777333', 'client@mail.com', 2, 1, 5, 2020, 1, 3, 1, 'si', 'no', 5000, 'Interesados comunicarse aquí.             ', NULL, 'si', 1, '5000.00', 'si'),
(38, 'Carlos', 'si', '9392777333', 'client@mail.com', 2, 1, 5, 2020, 1, 3, 1, 'si', 'no', 5000, 'Interesados comunicarse aquí.             ', NULL, 'si', 1, '5000.00', 'si'),
(39, 'sdvcsdvASD', 'si', '1111111111', 'mail@mail.com', 7, 1, 5, 2000, 1, 1, 1, 'si', 'si', 3000, 'SACAasCASCSAC Aaqx', NULL, 'no', 2, '3000.00', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES
(1, 'Van pasajero'),
(2, 'Auto'),
(3, 'Camiones'),
(4, 'Motora'),
(5, 'Pick-up'),
(6, 'Polaris'),
(7, 'Todo Rerreno '),
(8, 'Ucv'),
(9, 'Van carga');

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
(1, 'Nuevo'),
(2, 'Usado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion`
--

CREATE TABLE `condicion` (
  `idcondicion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `condicion`
--

INSERT INTO `condicion` (`idcondicion`, `nombre`) VALUES
(1, 'Como nuevo'),
(2, 'Exelente'),
(3, 'Muy Bueno'),
(4, 'Regular'),
(5, 'Malo'),
(6, 'Para Piezas');

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
(1, 'Toyota Wigo', 1),
(2, 'Toyota Yaris', 1),
(3, 'Toyota FJ Cruiser', 1),
(4, 'Toyota Fortuner', 1),
(5, 'Toyota Rush', 1),
(6, 'Toyota Prado', 1),
(7, 'Toyota Rav4', 1),
(8, 'Toyota Land Cruiser', 1),
(9, 'Toyota Avanza', 1),
(10, 'Toyota Avanza Veloz', 1),
(11, 'Toyota Innova', 1),
(12, 'Toyota Wish', 1),
(13, 'Toyota Alphard', 1),
(14, 'Ford EcoSport', 5),
(15, 'Ford Everest', 5),
(16, 'Ford Expedition', 5),
(17, 'Toyota Avensis', 1),
(18, 'Acord', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pueblo`
--

CREATE TABLE `pueblo` (
  `idpueblo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pueblo`
--

INSERT INTO `pueblo` (`idpueblo`, `nombre`) VALUES
(1, 'Adjuntas'),
(2, 'Aguada'),
(3, 'Aguadilla'),
(4, 'Aguas Buenas'),
(5, 'Aibonito'),
(6, 'Arecibo'),
(7, 'Arroyo'),
(8, 'Añasco'),
(9, 'Barceloneta'),
(10, 'Barranquitas'),
(11, 'Bayamón'),
(12, 'Cabo Rojo'),
(13, 'Caguas'),
(14, 'Camuy'),
(15, 'Canóvanas'),
(16, 'Carolina'),
(17, 'Cataño'),
(18, 'Cayey'),
(19, 'Ceiba'),
(20, 'Ciales'),
(21, 'Cidra'),
(22, 'Coamo'),
(23, 'Comerío'),
(24, 'Corozal'),
(25, 'Culebra'),
(26, 'Dorado'),
(27, 'Fajardo'),
(28, 'Florida'),
(29, 'Guayama'),
(30, 'Guayanilla'),
(31, 'Guaynabo'),
(32, 'Gurabo'),
(33, 'Guánica'),
(34, 'Hatillo'),
(35, 'Hormigueros'),
(36, 'Humacao'),
(37, 'Isabela'),
(38, 'Jayuya'),
(39, 'Juana Díaz'),
(40, 'Juncos'),
(41, 'Lajas'),
(42, 'Lares'),
(43, 'Las Marías'),
(44, 'Las Piedras'),
(45, 'Loiza'),
(46, 'Luquillo'),
(47, 'Manatí'),
(48, 'Maricao'),
(49, 'Maunabo'),
(50, 'Mayagüez'),
(51, 'Moca'),
(52, 'Morovis'),
(53, 'Naguabo'),
(54, 'Naranjito'),
(55, 'Orocovis'),
(56, 'Patillas'),
(57, 'Peñuelas'),
(58, 'Ponce'),
(59, 'Quebradillas'),
(60, 'Rincón'),
(61, 'Rio Grande'),
(62, 'Sabana Grande'),
(63, 'Salinas'),
(64, 'San Germán'),
(65, 'San Juan'),
(66, 'San Lorenzo'),
(67, 'San Sebastián'),
(68, 'Santa Isabel'),
(69, 'Toa Alta'),
(70, 'Toa Baja'),
(71, 'Trujillo Alto'),
(72, 'Utuado'),
(73, 'Vega Alta'),
(74, 'Vega Baja'),
(75, 'Vieques'),
(76, 'Villalba'),
(77, 'Yabucoa'),
(78, 'Yauco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmission`
--

CREATE TABLE `transmission` (
  `idtransmission` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transmission`
--

INSERT INTO `transmission` (`idtransmission`, `nombre`) VALUES
(1, 'Automática'),
(2, 'Standard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(130) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `last_session` datetime DEFAULT NULL,
  `activacion` int(11) NOT NULL DEFAULT 0,
  `token` varchar(40) NOT NULL,
  `token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT 0,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idanuncio`),
  ADD KEY `FK_categoria` (`idcategoria`),
  ADD KEY `FK_clasificacion` (`idclasificacion`),
  ADD KEY `FK_condicion` (`idcondicion`),
  ADD KEY `FK_transmission` (`idtransmission`),
  ADD KEY `FK_idmarca` (`idmarca`),
  ADD KEY `FK_modelo` (`idmodelo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idclasificacion`);

--
-- Indices de la tabla `condicion`
--
ALTER TABLE `condicion`
  ADD PRIMARY KEY (`idcondicion`);

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
-- Indices de la tabla `pueblo`
--
ALTER TABLE `pueblo`
  ADD PRIMARY KEY (`idpueblo`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transmission`
--
ALTER TABLE `transmission`
  ADD PRIMARY KEY (`idtransmission`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idanuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `idclasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `condicion`
--
ALTER TABLE `condicion`
  MODIFY `idcondicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `pueblo`
--
ALTER TABLE `pueblo`
  MODIFY `idpueblo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transmission`
--
ALTER TABLE `transmission`
  MODIFY `idtransmission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `FK_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `FK_clasificacion` FOREIGN KEY (`idclasificacion`) REFERENCES `clasificacion` (`idclasificacion`),
  ADD CONSTRAINT `FK_condicion` FOREIGN KEY (`idcondicion`) REFERENCES `condicion` (`idcondicion`),
  ADD CONSTRAINT `FK_idmarca` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`),
  ADD CONSTRAINT `FK_modelo` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`),
  ADD CONSTRAINT `FK_transmission` FOREIGN KEY (`idtransmission`) REFERENCES `transmission` (`idtransmission`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

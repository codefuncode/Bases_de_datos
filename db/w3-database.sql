-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:43:33
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
-- Base de datos: `w3-database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ContactName` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `City` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PostalCode` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Country` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Skagen 21', 'Obere Str.', ' 57', 'Berlin'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(8, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(9, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg ', '67000', 'France'),
(10, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg ', '67000', 'France'),
(11, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(12, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(13, 'Bon app ', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(14, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(15, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(16, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(17, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(18, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(19, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo ', '05432-043', 'Brazil');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Customers`
--
ALTER TABLE `Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

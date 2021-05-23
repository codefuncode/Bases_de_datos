-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:31:56
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
-- Base de datos: `002-Una-base-de-datos-de-muestra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Class`
--

CREATE TABLE `Class` (
  `classNumber` varchar(10) DEFAULT NULL,
  `facld` varchar(10) DEFAULT NULL,
  `schedule` varchar(10) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Class`
--

INSERT INTO `Class` (`classNumber`, `facld`, `schedule`, `room`) VALUES
('ART103A', 'F101', 'MWF9', 'H221'),
('CSC201A', 'F105', 'TuThF10', 'M110'),
('CSC203A', 'F105', 'MThF12', 'M110'),
('HST205A', 'F115', 'MWF11', 'H221'),
('MTH101B', 'F110', 'MTuTh9', 'H225'),
('MTH103C', 'F110', 'MWF11', 'H225');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Customer`
--

CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ContactName` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `City` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PostalCode` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Country` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Skagen 21', 'Obere Str.', ' 57', 'Berlin'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Enroll`
--

CREATE TABLE `Enroll` (
  `stuld` varchar(10) DEFAULT NULL,
  `classNumber` varchar(10) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Enroll`
--

INSERT INTO `Enroll` (`stuld`, `classNumber`, `grade`) VALUES
('S1001', 'ART103A', 'A'),
('S1001', 'HST205A', 'C'),
('S1002', 'ART103A', 'D'),
('S1002', 'CSC201A', 'F'),
('S1001', 'MTH103C', 'B'),
('S1010', 'ART103A', ' '),
('S1010', 'MTH103C', ' '),
('S1020', 'CSC201A', 'B'),
('S1020', 'MTH101B', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Faculty`
--

CREATE TABLE `Faculty` (
  `facld` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Faculty`
--

INSERT INTO `Faculty` (`facld`, `name`, `department`, `rank`) VALUES
('F101', 'Adams', 'Arte', 'Profesor'),
('F105', 'Tanaka', 'CSC', 'Instructor'),
('F110', 'Byrne', 'Mat', 'Asistente'),
('F115', 'Smith', 'Historia', 'Asociado'),
('F221', 'Smith', 'CSC', 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Student`
--

CREATE TABLE `Student` (
  `stuld` varchar(10) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `credits` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Student`
--

INSERT INTO `Student` (`stuld`, `lastName`, `firstName`, `major`, `credits`) VALUES
('S1001', 'Smith', 'Tom', 'Historia', 90),
('S1002', 'Chin', 'Ann', 'Mat', 36),
('S1005', 'Lee', 'Perry', 'Historia', 3),
('S1010', 'Burns', 'Edward', 'Arte', 63),
('S1013', 'McCarthy', 'Owen', 'Mat', 0),
('S1015', 'Jones', 'Mary', 'Mat', 42),
('S1020', 'Rivera', 'Jane', 'CSC', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

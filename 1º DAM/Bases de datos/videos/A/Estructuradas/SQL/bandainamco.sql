-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2024 a las 18:17:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bandainamco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Identificador`, `nombre`, `apellidos`, `email`, `telefono`) VALUES
(1, 'Agustín', 'Morcillo Aguado', 'agus@morcillo.com', '123456789'),
(2, 'Elena', 'Botezatu', 'elena@botezatu.com', '987654321');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`Identificador`, `Nombre`) VALUES
(1, 'Acción'),
(2, 'Aventura'),
(3, 'Rol (RPG)'),
(4, 'Simulación'),
(5, 'Estrategia'),
(6, 'Deportes'),
(7, 'Carreras'),
(8, 'Puzzle'),
(9, 'Terror'),
(10, 'Multijugador Masivo (MMORPG)'),
(11, 'Plataformas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` text NOT NULL,
  `Id_genero` int(255) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Fecha_lanzamiento` date NOT NULL,
  `Clasificacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`Identificador`, `Nombre`, `Descripcion`, `Id_genero`, `Precio`, `Fecha_lanzamiento`, `Clasificacion`) VALUES
(9, 'Galaxy Quest', 'Aventura espacial donde los jugadores exploran galaxias y enfrentan alienígenas hostiles.', 2, 59.99, '2024-10-15', 'PEGI 12'),
(10, 'Battle Heroes', 'Juego de acción en equipos con combates dinámicos y modos de juego competitivos.', 1, 49.99, '2023-11-20', 'PEGI 16'),
(11, 'Farmville Simulator', 'Simulador de granja con gestión de recursos y personalización de entornos.', 4, 39.99, '2022-03-12', 'PEGI 3'),
(12, 'Dungeon Masters', 'Juego de rol por turnos en mazmorras llenas de enemigos, tesoros y desafíos.', 3, 44.99, '2021-08-30', 'PEGI 12'),
(13, 'CyberRacers Unlimited', 'Juego de carreras futurista con vehículos personalizables y modos de juego multijugador.', 7, 69.99, '2025-01-22', 'PEGI 7'),
(14, 'World Builders Online', 'MMORPG donde los jugadores crean civilizaciones y luchan por el dominio global.', 10, 19.99, '2020-12-05', 'PEGI 16'),
(15, 'Zombie Apocalypse', 'Shooter cooperativo donde los jugadores sobreviven oleadas de zombis en escenarios urbanos.', 1, 29.99, '2023-09-01', 'PEGI 18'),
(16, 'AquaWorld Adventures', 'Juego de aventuras submarinas con exploración y misiones en un océano abierto.', 2, 24.99, '2023-04-15', 'PEGI 7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegosplataformas`
--

CREATE TABLE `juegosplataformas` (
  `Identificador` int(255) NOT NULL,
  `juegos_nombre` int(255) NOT NULL,
  `plataformas_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `juegosplataformas`
--

INSERT INTO `juegosplataformas` (`Identificador`, `juegos_nombre`, `plataformas_nombre`) VALUES
(1, 16, 2),
(2, 14, 5),
(3, 14, 1),
(4, 15, 1),
(5, 15, 2),
(6, 15, 3),
(7, 12, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas`
--

CREATE TABLE `plataformas` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `plataformas`
--

INSERT INTO `plataformas` (`Identificador`, `Nombre`) VALUES
(1, 'PC'),
(2, 'PlayStation 5'),
(3, 'Xbox Series X'),
(4, 'Nintendo Switch'),
(5, 'Steam Deck'),
(6, 'PlayStation 4'),
(7, 'Xbox One'),
(8, 'Android'),
(9, 'iOS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `juegosagenero` (`Id_genero`);

--
-- Indices de la tabla `juegosplataformas`
--
ALTER TABLE `juegosplataformas`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `juegosplataforma_juegos` (`juegos_nombre`),
  ADD KEY `juegosplataforma_plataformas` (`plataformas_nombre`);

--
-- Indices de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `juegosplataformas`
--
ALTER TABLE `juegosplataformas`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegosagenero` FOREIGN KEY (`Id_genero`) REFERENCES `generos` (`Identificador`);

--
-- Filtros para la tabla `juegosplataformas`
--
ALTER TABLE `juegosplataformas`
  ADD CONSTRAINT `juegosplataforma_juegos` FOREIGN KEY (`juegos_nombre`) REFERENCES `juegos` (`Identificador`),
  ADD CONSTRAINT `juegosplataforma_plataformas` FOREIGN KEY (`plataformas_nombre`) REFERENCES `plataformas` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

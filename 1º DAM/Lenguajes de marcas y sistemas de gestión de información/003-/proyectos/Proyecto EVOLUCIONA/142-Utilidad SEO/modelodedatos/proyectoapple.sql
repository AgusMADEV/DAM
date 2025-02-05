-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 19:10:31
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
-- Base de datos: `proyectoapple`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` mediumblob DEFAULT NULL,
  `fecha` date NOT NULL,
  `contenido` text NOT NULL,
  `categoriasblog_categoria` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`Identificador`, `titulo`, `imagen`, `fecha`, `contenido`, `categoriasblog_categoria`) VALUES
(1, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(2, 'Segunda noticia', NULL, '2025-01-22', 'Esta es la segunda noticia', 1),
(3, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(4, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(5, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(6, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(7, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1),
(8, 'Primera noticia', NULL, '2025-01-22', 'Este es el contenido de la primera noticia del blog', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloquescategorias`
--

CREATE TABLE `bloquescategorias` (
  `Identificador` int(255) NOT NULL,
  `categorias_nombre` int(255) NOT NULL,
  `tipobloque_tipo` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fondo` varchar(255) DEFAULT NULL,
  `estilo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bloquescategorias`
--

INSERT INTO `bloquescategorias` (`Identificador`, `categorias_nombre`, `tipobloque_tipo`, `titulo`, `subtitulo`, `texto`, `imagen`, `fondo`, `estilo`) VALUES
(1, 13, 1, 'Terapia Infanto | Juvenil', 'Sesiones para l@s más pequeños/as', '', NULL, NULL, ''),
(2, 13, 2, 'Esto es un bloque caja', 'esto es una bloque caja', '', NULL, NULL, ''),
(3, 13, 2, 'Esto es otro bloque caja', 'Esto es otro bloque caja', '', NULL, NULL, ''),
(4, 11, 1, 'Sobre mi', 'Sobre mi', '', NULL, NULL, ''),
(5, 11, 3, 'Vamos a crear mosaicos', 'Creamos mosaicos', '[\"<b>uno</b>\",\"dos\",\"tres\",\"cuatro\"]', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloquesproductos`
--

CREATE TABLE `bloquesproductos` (
  `Identificador` int(255) NOT NULL,
  `productos_titulo` int(255) NOT NULL,
  `tipobloque_tipo` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fondo` varchar(255) DEFAULT NULL,
  `estilo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bloquesproductos`
--

INSERT INTO `bloquesproductos` (`Identificador`, `productos_titulo`, `tipobloque_tipo`, `titulo`, `subtitulo`, `texto`, `imagen`, `fondo`, `estilo`) VALUES
(5, 1, 1, 'Terapia para niñ@s', 'Terapia para niñ@s', '', NULL, NULL, ''),
(6, 3, 1, '¿Quién es Elena Botezatu?', 'Elena Botezatu', '', NULL, NULL, ''),
(7, 2, 4, '1', '2', '0DkyRP5dwAk', NULL, NULL, ''),
(8, 2, 1, 'Hola', 'Hola', 'Hola', NULL, NULL, ''),
(9, 2, 5, 'Esta es una prueba de 2 columnas', 'Esta es una prueba de subtitulo de 2 columnas', '{\"columna1\":\"Texto 1\",\"columna2\":\"Texto 2\"}', NULL, NULL, ''),
(10, 2, 6, 'hola', 'hola', '[{\"titulo\":\"Hola1\",\"texto\":\"hola\",\"imagen\":\"destacado1.png\"},{\"titulo\":\"Hola2\",\"texto\":\"hola\",\"imagen\":\"destacado1.png\"},{\"titulo\":\"Hola3\",\"texto\":\"hola\",\"imagen\":\"destacado1.png\"},{\"titulo\":\"Hola4\",\"texto\":\"hola\",\"imagen\":\"destacado1.png\"},{\"titulo\":\"Hola5\",\"texto\":\"hola\",\"imagen\":\"destacado1.png\"}]', NULL, NULL, ''),
(11, 1, 2, 'Cjasa', 'Prueba', 'Texto prueba', NULL, NULL, ''),
(12, 1, 2, 'Oferta!', 'Esto es una oferta', 'Textro de la oferta', NULL, NULL, '{\"background\":\"lightpink\",\"text-align\":\"center\",\"font-size\":\"3em\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Identificador`, `nombre`) VALUES
(11, 'Home'),
(13, 'Servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriasblog`
--

CREATE TABLE `categoriasblog` (
  `Identificador` int(255) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categoriasblog`
--

INSERT INTO `categoriasblog` (`Identificador`, `categoria`) VALUES
(1, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `comprar` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(1, 'Destacado 1', 'Destacado 1', 'https://www.apple.com/es/iphone-16/', 'https://www.apple.com/es/shop/buy-iphone/iphone-16', 'destacado1.png'),
(2, 'Destacado 1', 'Destacado 1', 'https://www.apple.com/es/iphone-16/', 'https://www.apple.com/es/shop/buy-iphone/iphone-16', 'destacado2.png'),
(3, 'aaa', 'aaa', 'aaa', 'aaa', 'destacado3.png'),
(4, 'bbb', 'bbbb', 'bbb', 'bbb', 'destacado4.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heroes`
--

CREATE TABLE `heroes` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `comprar` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `heroes`
--

INSERT INTO `heroes` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(1, '<i>Asesoramiento psicológico y crecimiento personal</i>', '<span style=\"font-size:30px;\">Elena Botezatu</span>', 'https://www.apple.com/es/', 'https://www.apple.com/es/store', 'heroe1.png'),
(2, 'heroe 2', 'heroe 2', 'https://www.apple.com/es/', 'https://www.apple.com/es/store', 'heroe2.png'),
(4, 'Uno más', 'Prueba', '', '', 'heroe3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `Identificador` int(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`Identificador`, `texto`, `enlace`, `fechainicio`, `fechafinal`) VALUES
(1, 'La mejor oferta que verás en tu vida!!!', 'https://www.apple.com/es/?afid=p238%7CsqBqp3TiI-dc_mtid_187079nc38483_pcrid_712923558400_pgrid_16626051515_pntwk_g_pchan__pexid__ptid_kwd-10778630_&cid=aos-es-kwgo-brand--slid--bran-product-', '2025-01-01', '2025-01-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double(10,2) NOT NULL,
  `categorias_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Identificador`, `titulo`, `descripcion`, `precio`, `categorias_nombre`) VALUES
(1, 'Terapia Infanto-Juvenil', 'Terapia Infanto-Juvenil', 50.00, 13),
(2, 'Orientación educativa', 'Orientación educativa', 120.00, 13),
(3, 'Sobre mi', 'Sobre mi', 0.00, 11),
(4, 'Aplicaciones', 'Aplicaciones', 0.00, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipobloque`
--

CREATE TABLE `tipobloque` (
  `Identificador` int(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tipobloque`
--

INSERT INTO `tipobloque` (`Identificador`, `tipo`) VALUES
(1, 'completo'),
(2, 'caja'),
(3, 'mosaico'),
(4, 'caja youtube'),
(5, 'bloque dos columnas'),
(6, 'pasa fotos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `email`, `contrasena`) VALUES
(1, 'agustin@morcillo.com', 'agustin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `blogacategorias` (`categoriasblog_categoria`);

--
-- Indices de la tabla `bloquescategorias`
--
ALTER TABLE `bloquescategorias`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `bloquesacategorias` (`categorias_nombre`),
  ADD KEY `bloquesatipo` (`tipobloque_tipo`);

--
-- Indices de la tabla `bloquesproductos`
--
ALTER TABLE `bloquesproductos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `bloquesatipo` (`tipobloque_tipo`),
  ADD KEY `bloquesaproductos` (`productos_titulo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `categoriasblog`
--
ALTER TABLE `categoriasblog`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `productosacategorias` (`categorias_nombre`);

--
-- Indices de la tabla `tipobloque`
--
ALTER TABLE `tipobloque`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `bloquescategorias`
--
ALTER TABLE `bloquescategorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `bloquesproductos`
--
ALTER TABLE `bloquesproductos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categoriasblog`
--
ALTER TABLE `categoriasblog`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `heroes`
--
ALTER TABLE `heroes`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipobloque`
--
ALTER TABLE `tipobloque`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blogacategorias` FOREIGN KEY (`categoriasblog_categoria`) REFERENCES `categoriasblog` (`Identificador`);

--
-- Filtros para la tabla `bloquescategorias`
--
ALTER TABLE `bloquescategorias`
  ADD CONSTRAINT `bloquesacategorias` FOREIGN KEY (`categorias_nombre`) REFERENCES `categorias` (`Identificador`),
  ADD CONSTRAINT `bloquesatipo` FOREIGN KEY (`tipobloque_tipo`) REFERENCES `tipobloque` (`Identificador`);

--
-- Filtros para la tabla `bloquesproductos`
--
ALTER TABLE `bloquesproductos`
  ADD CONSTRAINT `bloquesaproductos` FOREIGN KEY (`productos_titulo`) REFERENCES `productos` (`Identificador`),
  ADD CONSTRAINT `bloquesproductoatipobloque` FOREIGN KEY (`tipobloque_tipo`) REFERENCES `tipobloque` (`Identificador`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productosacategorias` FOREIGN KEY (`categorias_nombre`) REFERENCES `categorias` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

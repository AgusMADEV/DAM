-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2024 a las 20:20:03
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
-- Base de datos: `cine`
--
CREATE DATABASE IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cine`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleto`
--

CREATE TABLE `boleto` (
  `id_boleto` int(255) NOT NULL,
  `id_cliente` int(255) NOT NULL,
  `id_proyeccion` int(255) NOT NULL,
  `cantidad_boletos` int(255) NOT NULL,
  `total_pago` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boleto`
--

INSERT INTO `boleto` (`id_boleto`, `id_cliente`, `id_proyeccion`, `cantidad_boletos`, `total_pago`) VALUES
(1, 1, 1, 2, 20),
(2, 2, 2, 3, 26),
(3, 3, 3, 1, 7),
(4, 4, 4, 2, 24),
(5, 5, 5, 1, 11),
(6, 6, 6, 4, 30),
(7, 7, 7, 2, 16),
(8, 8, 8, 1, 15),
(9, 9, 9, 3, 32),
(10, 10, 10, 2, 15),
(11, 11, 11, 1, 7),
(12, 12, 12, 3, 27),
(13, 13, 13, 2, 16),
(14, 14, 14, 1, 13),
(15, 15, 15, 2, 23),
(16, 16, 16, 3, 21),
(17, 17, 17, 1, 9),
(18, 18, 18, 4, 56),
(19, 19, 19, 2, 20),
(20, 20, 20, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `email`, `telefono`, `fecha_nacimiento`) VALUES
(1, 'Agustín Morcillo', 'agustin.morcillo@example.com', '123456789', '1990-01-15'),
(2, 'Laura Gómez', 'laura.gomez@example.com', '987654321', '1985-04-23'),
(3, 'Pedro Martínez', 'pedro.martinez@example.com', '456789123', '1992-07-09'),
(4, 'Ana Torres', 'ana.torres@example.com', '789123456', '1994-11-02'),
(5, 'Carlos Pérez', 'carlos.perez@example.com', '321654987', '1988-05-17'),
(6, 'Lucía Sánchez', 'lucia.sanchez@example.com', '159753486', '1991-09-25'),
(7, 'Javier Ruiz', 'javier.ruiz@example.com', '951753842', '1989-03-30'),
(8, 'María López', 'maria.lopez@example.com', '753159486', '1993-06-14'),
(9, 'Andrés García', 'andres.garcia@example.com', '159486753', '1995-12-05'),
(10, 'Elena Ramírez', 'elena.ramirez@example.com', '654789321', '1990-02-28'),
(11, 'Sofía Castillo', 'sofia.castillo@example.com', '147258369', '1987-10-08'),
(12, 'Héctor Romero', 'hector.romero@example.com', '963852741', '1992-08-12'),
(13, 'Paula Fernández', 'paula.fernandez@example.com', '321654987', '1994-03-05'),
(14, 'Raúl Ortega', 'raul.ortega@example.com', '852963741', '1989-07-22'),
(15, 'Clara Díaz', 'clara.diaz@example.com', '147963258', '1993-04-13'),
(16, 'Lucas Blanco', 'lucas.blanco@example.com', '951357456', '1991-06-20'),
(17, 'Marta Morales', 'marta.morales@example.com', '357159846', '1995-11-19'),
(18, 'Iván Vázquez', 'ivan.vazquez@example.com', '753852159', '1988-12-30'),
(19, 'Isabel Herrera', 'isabel.herrera@example.com', '258147369', '1990-01-27'),
(20, 'Miguel Silva', 'miguel.silva@example.com', '654321789', '1987-09-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `duracion` int(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `clasificacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `titulo`, `duracion`, `genero`, `clasificacion`) VALUES
(1, 'Inception', 148, 'Ciencia Ficción', 'PG-13'),
(2, 'The Dark Knight', 152, 'Acción', 'PG-13'),
(3, 'Interstellar', 169, 'Ciencia Ficción', 'PG-13'),
(4, 'Titanic', 195, 'Romance', 'PG-13'),
(5, 'The Matrix', 136, 'Ciencia Ficción', 'R'),
(6, 'Gladiator', 155, 'Acción', 'R'),
(7, 'Avatar', 162, 'Ciencia Ficción', 'PG-13'),
(8, 'The Godfather', 175, 'Drama', 'R'),
(9, 'Pulp Fiction', 154, 'Crimen', 'R'),
(10, 'Forrest Gump', 142, 'Drama', 'PG-13'),
(11, 'The Lion King', 88, 'Animación', 'G'),
(12, 'Star Wars: A New Hope', 121, 'Ciencia Ficción', 'PG'),
(13, 'Jurassic Park', 127, 'Aventura', 'PG-13'),
(14, 'The Avengers', 143, 'Acción', 'PG-13'),
(15, 'Fight Club', 139, 'Drama', 'R'),
(16, 'Toy Story', 81, 'Animación', 'G'),
(17, 'Schindler\'s List', 195, 'Drama', 'R'),
(18, 'The Lord of the Rings: The Fellowship of the Ring', 178, 'Fantasía', 'PG-13'),
(19, 'Spider-Man: Into the Spider-Verse', 117, 'Animación', 'PG'),
(20, 'Black Panther', 134, 'Acción', 'PG-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeccion`
--

CREATE TABLE `proyeccion` (
  `id_proyeccion` int(255) NOT NULL,
  `fecha_hora` date NOT NULL,
  `id_pelicula` int(255) NOT NULL,
  `id_sala` int(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyeccion`
--

INSERT INTO `proyeccion` (`id_proyeccion`, `fecha_hora`, `id_pelicula`, `id_sala`, `precio`) VALUES
(1, '2024-11-01', 1, 1, 10.00),
(2, '2024-11-01', 2, 2, 8.50),
(3, '2024-11-01', 3, 3, 7.00),
(4, '2024-11-02', 4, 4, 12.00),
(5, '2024-11-02', 5, 5, 11.00),
(6, '2024-11-02', 6, 6, 7.50),
(7, '2024-11-03', 7, 7, 8.00),
(8, '2024-11-03', 8, 8, 15.00),
(9, '2024-11-03', 9, 9, 10.50),
(10, '2024-11-04', 10, 10, 7.50),
(11, '2024-11-04', 11, 1, 6.50),
(12, '2024-11-04', 12, 2, 9.00),
(13, '2024-11-05', 13, 3, 8.00),
(14, '2024-11-05', 14, 4, 13.00),
(15, '2024-11-05', 15, 5, 11.50),
(16, '2024-11-06', 16, 6, 7.00),
(17, '2024-11-06', 17, 7, 8.50),
(18, '2024-11-06', 18, 8, 14.00),
(19, '2024-11-07', 19, 9, 10.00),
(20, '2024-11-07', 20, 10, 9.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `capacidad` int(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `nombre`, `capacidad`, `tipo`, `ubicacion`) VALUES
(1, 'Sala 1 IMAX', 200, 'IMAX', 'Planta Baja - Norte'),
(2, 'Sala 2 3D', 150, '3D', 'Planta Baja - Sur'),
(3, 'Sala 3 Estándar', 180, 'Estándar', 'Planta Alta - Este'),
(4, 'Sala 4 VIP', 100, 'VIP', 'Planta Alta - Oeste'),
(5, 'Sala 5 4DX', 120, '4DX', 'Planta Baja - Centro'),
(6, 'Sala 6 Estándar', 220, 'Estándar', 'Planta Alta - Norte'),
(7, 'Sala 7 3D', 160, '3D', 'Planta Baja - Oeste'),
(8, 'Sala 8 Premium', 80, 'Premium', 'Planta Alta - Centro'),
(9, 'Sala 9 IMAX', 250, 'IMAX', 'Planta Baja - Este'),
(10, 'Sala 10 Estándar', 200, 'Estándar', 'Planta Alta - Sur');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`id_boleto`),
  ADD KEY `boletoacliente` (`id_cliente`),
  ADD KEY `boletoaproyeccion` (`id_proyeccion`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- Indices de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  ADD PRIMARY KEY (`id_proyeccion`),
  ADD KEY `proyeccionapelicula` (`id_pelicula`),
  ADD KEY `proyeccionasala` (`id_sala`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleto`
--
ALTER TABLE `boleto`
  MODIFY `id_boleto` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  MODIFY `id_proyeccion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boleto`
--
ALTER TABLE `boleto`
  ADD CONSTRAINT `boletoacliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `boletoaproyeccion` FOREIGN KEY (`id_proyeccion`) REFERENCES `proyeccion` (`id_proyeccion`);

--
-- Filtros para la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  ADD CONSTRAINT `proyeccionapelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `proyeccionasala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);
--
-- Base de datos: `examenprogramacion`
--
CREATE DATABASE IF NOT EXISTS `examenprogramacion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `examenprogramacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `Identificador` int(255) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`Identificador`, `Numerador`, `Titulo`, `Subtitulo`, `Imagen`, `Video`, `Texto`) VALUES
(1, 'Capítulo I', 'La Arquitectura', 'De los cimientos a las agujas', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-arquitectura-min.jpg', 'https://youtu.be/N-OBoksb9oQ', 'La Catedral de Burgos ha visto pasar 800 años. Generación tras generación, este edificio tan singular ha visto pasar guerras, pandemias, temporales y miles de vidas que han continuado asombrándose con su figura.\r\n\r\nEn el año 1221 se colocó la primera piedra de un proyecto ideado por el Obispo Mauricio y Fernando III el Santo. La nueva catedral, de orden gótico, estaba llamada a sustituir la antigua construcción románica y marcar un hito en el Camino de Santiago y en la historia del arte, inspirándose en las basílicas francesas. La llegada del gótico permitió aligerar los muros y comenzar a construir en altura, buscando el cielo y permitir el paso de la luz.\r\n\r\nEn este primer capítulo, dos profesores de la Universidad de Burgos nos guiarán por las fórmulas de construcción del templo. René Payo y José Matesanz nos introducen en la técnica empleada para levantar las paredes de la catedral, un prodigio científico y tecnológico aún en nuestros días y con la dificultad adicional de los medios empleados por parte de obreros y canteros.\r\n\r\nAdemás, nos adentramos en el Archivo de la seo burgalesa con Matías Vicario, canónigo archivero, para recorrer la memoria de la catedral, con cientos de documentos que no sólo recogen textos eclesiásticos, sino multitud de documentación sobre la vida en la ciudad, la economía, medicina… además de toda la producción documental de la propia Catedral. Una auténtica joya conservada por siglos.\r\n\r\nSin embargo, la construcción de la basílica burgalesa fue todo un desafío que se extendió durante siglos. Las agujas, el cimborrio y algunas de las capillas más emblemáticas son construcciones posteriores que conjugan estilos y técnicas de diferentes épocas. Es precisamente esta unión de estilos, como el gótico, el renacimiento, el barroco y el neoclásico lo que convierte a la catedral de Burgos en un monumento único. Para comprender las particularidades de su construcción, Javier Garabito, arquitecto de la catedral y profesor de la Universidad de Burgos, nos enseña los fundamentos del gótico y la importancia de sus bóvedas, arcos y arbotantes.\r\n\r\nAdemás, la ciencia de la época se basaba, en buena parte, en el ensayo y el error. Prueba de ello fue la caída del cimborrio original ya que, a pesar del enorme conocimiento de los constructores, su técnica podía fallar en ocasiones. Por otro lado, la posición de la seo, construida en cuesta, supone un desafío adicional para su construcción.'),
(2, 'Capítulo II', 'La piedra', 'La piel de la catedral', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-piedra-min.jpg', 'https://youtu.be/vIDIP3gjGcY', 'La piel de la catedral de Burgos es especial. El revestimiento pétreo de caliza, extraído de las proximidades de Burgos, en la cantera de Hontoria, le da un color muy característico, mientras ha permitido que su estructura y su belleza se mantengan hasta nuestros días.\r\n\r\nLa llegada del gótico a las catedrales supone comenzar a dar importancia a la luz. Los muros suben hacia el cielo, las paredes se abren con vidrieras de colores y la luminosidad de la piedra comienza a ser más importante que nunca. Gabriel García Agudo, uno de los responsables de Patrimonio de la Luz, responsables de la gestión de las canteras en la actualidad, nos acerca a lo que supuso extraer la piedra de la roca viva con herramientas artesanales. Para conocer las técnicas de extracción y labrado recurrimos a José Javier Barrio, restaurador y tallista, que nos enseña los secretos de la talla, tanto para los sillares como para los elementos decorativos.\r\n\r\nLa piedra blanca de Hontoria otorga un brillo muy especial a la basílica, tanto en el exterior como en su interior. René Payo y José Matesanz, profesores de la Universidad de Burgos, nos señalan sus características: una piedra maleable, que gana en resistencia con el paso del tiempo. Sin embargo, toda piedra necesita mantenimiento y restauración. Los trabajos en la catedral, como señala José Javier Barrio, son constantes y se realizan con métodos artesanales para respetar al máximo el espíritu y la estética de la catedral.\r\n\r\nQuizá la actuación más visible haya sido, precisamente, la realizada sobre la fachada de la seo burgalesa. La limpieza del exterior volvió a mostrar el color blanco de sus paredes, dejando atrás el gris que durante tanto tiempo habíamos conocido. No solo se realizó la limpieza, sino que se aplicaron técnicas de conservación que, sin alterar su aspecto, protegen la piel de la basílica.\r\n\r\nLos cambios no fueron solo estéticos. La piedra supone el principal elemento estructural de toda la catedral y su cuidado debe ser constante. Aplicar los conocimientos de física, química, ingeniería y arquitectura resulta fundamental para protegerla de la oxidación, de gelifracción (la ruptura por el hielo), la contaminación… La Catedral de Burgos goza de una excelente salud tras las restauraciones llevadas a cabo los últimos años, pero los cuidados deben ser constantes y delicados para mantener su magnífico aspecto y la firmeza que ha mantenido durante sus 800 años de historia.'),
(3, 'Capítulo III', 'Las matemáticas', 'Geometrías sagradas', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-Las-matematicas-min.jpg', 'https://youtu.be/AMpqREfzuCk', 'La catedral de Burgos está hecha de piedra… y matemáticas. Alberga multitud de proporciones, relaciones y figuras geométricas que no sólo hacen que se mantenga en pie, sino que nos parezca armónica y bella.\r\n\r\nEn palabras de René Payo, profesor de la Universidad de Burgos, los constructores de las catedrales, los canteros, estaban “obsesionados” con la geometría y las proporciones matemáticas. Estas proporciones armónicas nos transmiten, por un lado, una sensación de belleza, pero también con un sentimiento religioso relacionado con la idea de paz y perfección. Para acercarnos a estos conceptos entrevistamos a Constantino de la Fuente, matemático y catedrático de matemáticas del instituto cardenal López de Mendoza. De la Fuente nos relata los procesos utilizados para el diseño y creación de la Catedral de Burgos basada en la proporción, la relación entre dos magnitudes.\r\n\r\nAl medir en función de proporciones, no importa tanto el dato numérico de una de las cantidades, sino la relación entre las dos. Si miramos bajo este prisma, las matemáticas surgen por todas partes en la basílica. Esta geometría permite crear patrones y adaptarlos en los diferentes diseños ornamentales. Uno de los diseños más presentes en la Catedral de Burgos es la vesica piscis, el símbolo del pez usado por los primeros cristianos y que corresponde a la zona común entre dos círculos. Esta figura permite mantener armonía y ritmo en los diseños.\r\n\r\nTampoco podía faltar el número más famoso si hablamos de proporciones: phi, el número áureo. La proporción áurea, conocida en multitud de animales y plantas, está presente en la catedral de Burgos en el cimborrio y la Escalera Dorada, dos de los elementos más reconocibles del interior de la seo, especialmente en la escalera. Diseñada en el Renacimiento, Diego de Siloé conocía, a buen seguro, la proporción áurea y la aplicó en su diseño, además de incluir el llamado “triángulo dorado”, que sigue la misma proporción que las agujas de la catedral.\r\n\r\nAdemás de todas estas proporciones, existen muchas otras relaciones geométricas en la Catedral, como el número de plata o la proporción cordobesa, muy ligada al arte mudéjar, formando un conjunto de hibridación y unión de estilos y culturas.\r\n\r\nComo señala el profesor de la Universidad de Burgos, José Matesanz, estas proporciones eran bien conocidas por los constructores de la catedral y le otorgan buena parte de la belleza presente en el edificio, tanto en su exterior como en su luminoso interior.'),
(4, 'Capítulo IV', 'La Pintura', 'Pigmentos desvelados', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-pintura-min.jpg', 'https://youtu.be/IixHnL_Ml8w', 'Dentro de la Catedral de Burgos encontramos innumerables tesoros. Algunos de ellos poseen vivos colores que hablan de belleza y espiritualidad desde los cuadros, retablos y esculturas que adornan el interior del templo. En este episodio hablaremos de la pintura que habita en la Catedral.\r\n\r\nSin embargo, como señala José Matesanz, profesor de la Universidad de Burgos, el arte mueble, estos conjuntos de pinturas y esculturas, no solo servían para decorar, sisno para enseñar. Estas figuras hablaban a los fieles del culto, las historias de la biblia, las virtudes a seguir y, por supuesto, los pecados a evitar. En la misma línea, Francisco Jesús del Hoyo, pintor y restaurador, señala la gran cantidad de arte que posee la catedral, con una gran tradición de pintores italianos y flamencos, sin contar la gran cantidad de figuras y esculturas repartidas por todos los rincones. No obstante, esta pintura, realizadas en muy diferentes técnicas, necesita mantenimiento y restauración.\r\n\r\nEn nuestra entrevista, del Hoyo nos describe los procesos físicos y químicos que sufren las pinturas al estar en contacto con el paso del tiempo y nuestra propia presencia. Por ejemplo, el uso de incensarios somete a las tallas al contacto con el humo, que va alterando su color y sus propiedades y son ya irrecuperables. También el uso de determinados barnices ha provocado oxidaciones sobre las pinturas, o las variaciones que, directamente, se han realizado sobre las obras.\r\n\r\nEl proceso técnico de la restauración nace de un conocimiento científico profundo de estos problemas. La restauración no sólo es una intervención física, sino que requiere, en muchas ocasiones, de un análisis químico previo para ver qué elementos contiene la capa de pintura y, después, decidir la mejor forma de actuar.\r\n\r\nPara conocer mejor estos procesos en materiales tan delicados como la madera, Itsaso Artexte y Mercedes Chico, restauradoras de Fénix Conservación, nos hablan de las técnicas utilizadas en la restauración de once retablos de la catedral de Burgos. Para las expertas, la humedad es uno de los principales problemas para la madera presente en la seo burgalesa. Tanto desde el uso de productos químicos como con instrumentos como bisturís, escalpelos o tornos, actúan sobre las obras de arte más delicadas. Además, nuevas tecnologías, como el láser, pueden ser útiles en algunos elementos.\r\n\r\nTodos los trabajos sobre el interior de la catedral han permitido que los colores, las texturas y los detalles de la decoración vuelvan a ver la luz. Ahora es importante mantener la conservación para evitar su deterioro y poder seguir disfrutando de la magia de los colores en el interior del templo burgalés.'),
(5, 'Capítulo V', 'Las vidrieras', 'Los colores de la luz', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-Las-vidrieras-min.jpg', 'https://youtu.be/LlxPVOYg6Ug', 'Gracias al estilo gótico, la Catedral de Burgos gana el altura, ligereza y esbeltez. Al aligerar los muros, se hizo posible la apertura de grandes ventanales que se decoraron con auténticas obras de arte: las vidrieras. Proyecciones de luz de todos los colores que inundan el interior del templo, decoran los ventanales y nos cuentan historias sobre la fe y el propio templo.\r\n\r\nEn las vidrieras se unen ciencia, técnica y arte en un proceso complejo. Los cristales, pintados primero, se ensamblan mediante varillas de plomo. Para conocer los detalles entrevistamos a Pilar Alonso, profesora de la Universidad de Burgos, que nos detalla las características del vidrio, su creación y su transformación en pequeños fragmentos coloreados de arte. Además, contamos con Enrique Barrio, vidriero y pintor, que se ha encargado tanto de restauración como creación de nuevas vidrieras para la catedral de Burgos. El artista nos enseña el proceso final de pintura, la composición de los colores y la forma de fijarlos al vidrio.\r\n\r\nLa Catedral de Burgos es uno de los mejores exponentes del arte de la vidriera española. Tanto en la Edad Media, como en los siglos XVI y XVIII, la seo alberga impresionantes ejemplos artísticos. Incluso podemos encontrar un color único en el mundo: el “rojo Burgos”, un vidrio laminado con diferentes capas de rojo sobre una base verde y que, hasta ahora, sólo se ha encontrado en la catedral y en el Monasterio de las Huelgas.\r\n\r\nA finales del siglo XV y principios del XVI llegan a Burgos numerosos maestros flamencos de la vidriera que dotan de aún más luz y color espacios tan únicos como la Capillas de los Condestables. Como toda obra artística, las vidrieras necesitan mucho mantenimiento, conservación y atención. Alteraciones físicas y químicas, agentes externos como el clima o la contaminación e, incluso, actos vandálicos. Actualmente, las tareas de restauración se realizan de forma tradicional y artesanal, trasladado la pieza al taller del artista para realizar las actuaciones químicas o físicas necesarias sobre la pieza.\r\n\r\nEn definitiva, las vidrieras de la Catedral de Burgos son mucho más que un elemento decorativo en las ventanas. Suponen toda una tradición artística y técnica compleja condensada en fragmentos de vidrio sin los que sería imposible entender las esbeltas catedrales góticas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulosexpertos`
--

CREATE TABLE `capitulosexpertos` (
  `Identificador` int(255) NOT NULL,
  `capitulos_nombre` int(255) NOT NULL,
  `expertos_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `capitulosexpertos`
--

INSERT INTO `capitulosexpertos` (`Identificador`, `capitulos_nombre`, `expertos_nombre`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 4, 2),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `Identificador` int(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Texto` varchar(255) NOT NULL,
  `documentaciongraficacategorias_Nombrecategoria` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongraficacategorias`
--

CREATE TABLE `documentaciongraficacategorias` (
  `Identificador` int(255) NOT NULL,
  `Nombrecategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `documentaciongraficacategorias`
--

INSERT INTO `documentaciongraficacategorias` (`Identificador`, `Nombrecategoria`) VALUES
(1, 'Archivo Municipal de Burgos'),
(2, 'Biblioteca nacional'),
(3, 'bibliotecadigital.jcyl'),
(4, 'ceres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Resumen` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`Identificador`, `Nombre`, `Resumen`, `Imagen`, `Video`, `Texto`) VALUES
(1, 'Antonio Cano', 'Campanero y relojero en la catedral de Burgos', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/Antonio-Cano.jpg', 'https://youtu.be/AH2BsxIB2ys', 'Antonio Cano es campanero y relojero en la catedral de Burgos. Por sus manos han pasado muchas de las campanas y relojes de las iglesias de la provincia burgalesa, pero también de Canarias, donde ha pasado buen parte de su vida.\r\n\r\nA pesar de los cambios que ha sufrido su profesión, tanto por la automatización como porque muchas iglesias han dejado de tocar, sigue haciéndose cargo de las campanas y los relojes que siguen requiriendo mantenimiento, afinación y precisión.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos muestra algunos de los secretos más escondidos de El Papamoscas, el genial autómata del templo que abre y cierra la boca a las horas, acompañado de El Martinillo, su ayudante a los carrillones. Cano nos enseña los mecanismos de estos ingenios mecánicos, que necesitan de conservación y mantenimiento, además de ayudarnos a comprender cómo se sincronizan con los relojes del templo.\r\n\r\n Además, en su labor como campanero nos acompaña a la cima de la catedral para ver cómo se tocan las campanas, hoy ya automatizadas, su estado y mantenimiento y su futuro.'),
(2, 'Constantino de la Fuente', 'Catedrático de secundaria y doctor en matemáticas', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/CONSTANTINO-DE-LA-FUENTE-MARTINEZ.jpg', 'https://youtu.be/RHI6dUOBeVM', 'Constantino de la Fuente es catedrático de secundaria y doctor en matemáticas, además de presidente fundador de la Sociedad Castellana y Leonesa de Educación matemática Miguel de Guzmán.\r\n\r\nHa desarrollado una intensa carrera investigadora con numerosos artículos en revistas científicas, además de conferencias en jornadas y congresos, todo ello mientras desarrollaba su actividad docente en el IES Cardenal López de Mendoza.  De la Fuente es autor de dos libros sobre matemáticas en la catedral de Burgos y ha destacado por su implicación en la divulgación de la cultura científica y matemática entre los más jóvenes.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, De la Fuente nos guía por los secretos matemáticos que esconde el templo, tanto en su construcción como en su decoración. Proporciones como el número áureo, el rectángulo de plata o la proporción cordobesa se encuentran en algunos de los lugares más emblemáticos de la catedral, como el rosetón del Sarmental, la escalera dorada y el cimborrio la combinación de sus octógonos. \r\n\r\nEstas proporciones también pueden albergar un significado religioso, como en la vesica piscis, la intersección entre dos círculos que se utilizó como símbolo de Cristo entre los primeros creyentes. Todas estas proporciones, formas geométricas y algebraicas revelan una comprensión de las matemáticas muy precisa que llega a su punto más alto con la Escalera dorada. La obra de Diego de Siloé está inspirada en el renacimiento italiano y en su construcción alberga un sinfín de proporciones relacionadas que le permiten ser una solución arquitectónica brillante y, al mismo tiempo, una obra armónica que ha deslumbrado a arquitectos de todo el mundo.\r\n\r\nPor último, nos enseña que en las proporciones también puede haber ecos de otras culturas, como en el Cimborrio de la catedral, donde el arte mozárabe está presente en algunas de las relaciones y proporciones que conforman esta obra de arte barroca.'),
(3, 'Enrique Barrio', 'Maestro vidriero. Ha restaurado y recreado vidrieras en la catedral', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/Enrique-Barrio.jpg', 'https://youtu.be/fQ_t4d-z7vM', 'Enrique Barrio es maestro vidriero y ha colaborado en la restauración y recreación de varias vidrieras en la catedral de Burgos. Con formación tanto en la técnica de las vidrieras como en estudios históricos sobre el vidrio, colabora habitualmente en publicaciones y proyectos científicos, así como en la difusión de su trabajo a través de conferencias para dar a conocer la importancia del mantenimiento y la conservación del patrimonio artístico.\r\n\r\nAdemás de en la catedral de Burgos, ha realizado actuaciones en las catedrales de Astorga, Mallorca, Orense y Cienfuegos (Cuba) y mantiene formas de trabajo tradicionales para la creación y conservación de los vitrales. Para realizar las labores de conservación, Enrique Barrio realiza un estudio de las características físicas y químicas de cada vidrio completo, sus materiales y los problemas de degradación y deterioro que presenta.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, Barrio nos muestra su trabajo en el taller, en el que mantiene las formas de creación, pintura, corte y emplomado tradicionales y que resultan fundamentales para que se mantenga la esencia y el aspecto de las vidrieras tradicionales del templo, que, además, suponen una enorme muestra del recorrido histórico del arte de la vidriera a lo largo de los siglos. Además, nos enseña los criterios a la hora del mantenimiento y sustitución de los vitrales.'),
(4, 'Francisco del Hoyo', 'Restaurador de pinturas y policromías', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/Francisco-Jesus-del-Hoyo.jpg', 'https://youtu.be/zCSYopOCNQY', 'Francisco Jesús del Hoyo es licenciado en Bellas Artes y restaurador de pinturas y policromías. Con una amplia experiencia de trabajo dentro de la Catedral de Burgos. Especialista en policromías de piedra y madera, lleva varios años trabajando en el interior de la seo burgalesa, además de mantener una intensa actividad como artista plástico.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos enseña la técnica de la policromía, el pintado sobre madera o piedra, y cómo se ha utilizado para ennoblecer materiales, hacerlos destacar o embellecer la decoración. Este proceso, diferente a la pintura sobre lienzo o el fresco, requiere de mucha atención y cuidados para evitar su deterioro.\r\n\r\nLos diferentes procesos químicos, la presencia de los humos de incienso y el propio paso del tiempo deterioran estas capas de pintura, muchas veces de tal forma que es imposible recuperar los colores originales. Sin embargo, un trabajo detallado permite sacar de nuevo a la luz la riqueza cromática de la catedral de Burgos.\r\n\r\nEl proceso de restauración de las obras va desde los análisis químicos hasta procesos de recuperación físicos y químicos, llegando incluso a utilizar el láser para limpiar la piedra no pintada o mezclas de componentes químicos para las superficies policromadas, muchas veces con una mezcla hecha a medida para cada detalle de la obra.\r\n\r\nDel Hoyo nos lleva de la mano por un proceso que une arte y ciencia en el que el restaurador trata de ser invisible y cubrir sus huellas para mantener la esencia original de cada pintura y escultura. ');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `expertosencapitulos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `expertosencapitulos` (
`Numerador` varchar(255)
,`Titulo` varchar(255)
,`Subtitulo` varchar(255)
,`Nombre` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `expertosencapitulos`
--
DROP TABLE IF EXISTS `expertosencapitulos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expertosencapitulos`  AS SELECT `capitulos`.`Numerador` AS `Numerador`, `capitulos`.`Titulo` AS `Titulo`, `capitulos`.`Subtitulo` AS `Subtitulo`, `expertos`.`Nombre` AS `Nombre` FROM ((`capitulosexpertos` left join `capitulos` on(`capitulosexpertos`.`capitulos_nombre` = `capitulos`.`Identificador`)) left join `expertos` on(`capitulosexpertos`.`expertos_nombre` = `expertos`.`Identificador`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `capitulosexpertos_capitulos` (`capitulos_nombre`),
  ADD KEY `capitulosexpertos_expertos` (`expertos_nombre`);

--
-- Indices de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `documentaciongraficaacategoria` (`documentaciongraficacategorias_Nombrecategoria`);

--
-- Indices de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `expertos`
--
ALTER TABLE `expertos`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  ADD CONSTRAINT `capitulosexpertos_capitulos` FOREIGN KEY (`capitulos_nombre`) REFERENCES `capitulos` (`Identificador`),
  ADD CONSTRAINT `capitulosexpertos_expertos` FOREIGN KEY (`expertos_nombre`) REFERENCES `expertos` (`Identificador`);

--
-- Filtros para la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD CONSTRAINT `documentaciongraficaacategoria` FOREIGN KEY (`documentaciongraficacategorias_Nombrecategoria`) REFERENCES `documentaciongraficacategorias` (`Identificador`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('cine', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"examenprogramacion\",\"table\":\"documentaciongrafica\"},{\"db\":\"examenprogramacion\",\"table\":\"capitulosexpertos\"},{\"db\":\"examenprogramacion\",\"table\":\"documentaciongraficacategorias\"},{\"db\":\"examenprogramacion\",\"table\":\"expertosencapitulos\"},{\"db\":\"examenprogramacion\",\"table\":\"capitulos\"},{\"db\":\"examenprogramacion\",\"table\":\"expertos\"},{\"db\":\"cine\",\"table\":\"cliente\"},{\"db\":\"cine\",\"table\":\"boleto\"},{\"db\":\"cine\",\"table\":\"pelicula\"},{\"db\":\"cine\",\"table\":\"proyeccion\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('cine', 'boleto', 1, 517, 225),
('cine', 'cliente', 1, 195, 56),
('cine', 'pelicula', 1, 493, 495),
('cine', 'proyección', 1, 860, 420),
('cine', 'sala', 1, 1211, 532);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('examenprogramacion', 'documentaciongrafica', 'Imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-11-15 11:46:46', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":166}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

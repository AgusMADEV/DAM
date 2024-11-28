-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 18:12:19
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
-- Base de datos: `basededatosexamen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avisolegal`
--

CREATE TABLE `avisolegal` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `avisolegal`
--

INSERT INTO `avisolegal` (`Identificador`, `titulo`, `texto`) VALUES
(1, 'Aviso legal', ''),
(2, '1. Datos identificativos', 'El presente aviso legal recoge las condiciones generales que rigen el acceso y el uso del sitio web https://cienciaycatedral.ubuinvestiga.es, titularidad de la Universidad de Burgos.\r\n\r\nEn cumplimiento con el deber de información recogido en el artículo 10 de la Ley 34/2002, de 11 de julio, de Servicios de la Sociedad de la Información y del Comercio Electrónico, a continuación, se reflejan los siguientes datos: La entidad titular de esta website es la Universidad de Burgos con domicilio en Hospital del Rey s/n. CP  09001 Burgos. España que es una entidad pública con CIF: CIF: Q-0968272-E\r\n\r\nE-mail: sec.secretariageneral@ubu.es'),
(3, '2. Uso de la Web', '\r\nLa visita o acceso a este sitio web es absolutamente voluntaria atribuyendo a quien accede al mismo la condición de usuario. Atendiendo a su condición de usuario, y por el hecho de acceder a este sitio web, se le exige la aceptación de los Términos de Uso que en cada momento se encuentren vigentes en la presente dirección, por lo cual el Usuario deberá leer detenidamente y aceptar sin ningún tipo de reservas la presente Advertencia Legal antes de realizar cualquier tipo de operación, visionado, utilización, etc. con este sitio web. Y hacer un uso correcto del Portal de conformidad con la Ley 34/2002, de 11 de Julio, LSSICE.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliografia`
--

CREATE TABLE `bibliografia` (
  `Identificador` int(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `experto_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bibliografia`
--

INSERT INTO `bibliografia` (`Identificador`, `imagen`, `titulo`, `experto_nombre`) VALUES
(1, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2021/09/10.jpg', 'La Catedral de Burgos. Ocho siglos de historia y arte.', 1),
(2, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2021/09/1.jpg', 'La Catedral de Burgos: patrimonio del mundo.', 2),
(3, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2021/09/2-1.jpg', 'Catedral de Burgos: la belleza recobrada: 25 años de restauraciones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `Identificador` int(255) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`Identificador`, `Numerador`, `titulo`, `subtitulo`, `imagen`, `video`, `texto`) VALUES
(1, 'Capítulo I', 'La Arquitectura', 'De los cimientos a las agujas', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-arquitectura-min.jpg', 'https://youtu.be/N-OBoksb9oQ', 'La Catedral de Burgos ha visto pasar 800 años. Generación tras generación, este edificio tan singular ha visto pasar guerras, pandemias, temporales y miles de vidas que han continuado asombrándose con su figura.\r\n\r\nEn el año 1221 se colocó la primera piedra de un proyecto ideado por el Obispo Mauricio y Fernando III el Santo. La nueva catedral, de orden gótico, estaba llamada a sustituir la antigua construcción románica y marcar un hito en el Camino de Santiago y en la historia del arte, inspirándose en las basílicas francesas. La llegada del gótico permitió aligerar los muros y comenzar a construir en altura, buscando el cielo y permitir el paso de la luz.\r\n\r\nEn este primer capítulo, dos profesores de la Universidad de Burgos nos guiarán por las fórmulas de construcción del templo. René Payo y José Matesanz nos introducen en la técnica empleada para levantar las paredes de la catedral, un prodigio científico y tecnológico aún en nuestros días y con la dificultad adicional de los medios empleados por parte de obreros y canteros.\r\n\r\nAdemás, nos adentramos en el Archivo de la seo burgalesa con Matías Vicario, canónigo archivero, para recorrer la memoria de la catedral, con cientos de documentos que no sólo recogen textos eclesiásticos, sino multitud de documentación sobre la vida en la ciudad, la economía, medicina… además de toda la producción documental de la propia Catedral. Una auténtica joya conservada por siglos.\r\n\r\nSin embargo, la construcción de la basílica burgalesa fue todo un desafío que se extendió durante siglos. Las agujas, el cimborrio y algunas de las capillas más emblemáticas son construcciones posteriores que conjugan estilos y técnicas de diferentes épocas. Es precisamente esta unión de estilos, como el gótico, el renacimiento, el barroco y el neoclásico lo que convierte a la catedral de Burgos en un monumento único. Para comprender las particularidades de su construcción, Javier Garabito, arquitecto de la catedral y profesor de la Universidad de Burgos, nos enseña los fundamentos del gótico y la importancia de sus bóvedas, arcos y arbotantes.\r\n\r\nAdemás, la ciencia de la época se basaba, en buena parte, en el ensayo y el error. Prueba de ello fue la caída del cimborrio original ya que, a pesar del enorme conocimiento de los constructores, su técnica podía fallar en ocasiones. Por otro lado, la posición de la seo, construida en cuesta, supone un desafío adicional para su construcción.'),
(2, 'Capítulo II', 'La piedra', 'La piel de la catedral', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-piedra-min.jpg', 'https://youtu.be/vIDIP3gjGcY', 'La piel de la catedral de Burgos es especial. El revestimiento pétreo de caliza, extraído de las proximidades de Burgos, en la cantera de Hontoria, le da un color muy característico, mientras ha permitido que su estructura y su belleza se mantengan hasta nuestros días.\r\n\r\nLa llegada del gótico a las catedrales supone comenzar a dar importancia a la luz. Los muros suben hacia el cielo, las paredes se abren con vidrieras de colores y la luminosidad de la piedra comienza a ser más importante que nunca. Gabriel García Agudo, uno de los responsables de Patrimonio de la Luz, responsables de la gestión de las canteras en la actualidad, nos acerca a lo que supuso extraer la piedra de la roca viva con herramientas artesanales. Para conocer las técnicas de extracción y labrado recurrimos a José Javier Barrio, restaurador y tallista, que nos enseña los secretos de la talla, tanto para los sillares como para los elementos decorativos.\r\n\r\nLa piedra blanca de Hontoria otorga un brillo muy especial a la basílica, tanto en el exterior como en su interior. René Payo y José Matesanz, profesores de la Universidad de Burgos, nos señalan sus características: una piedra maleable, que gana en resistencia con el paso del tiempo. Sin embargo, toda piedra necesita mantenimiento y restauración. Los trabajos en la catedral, como señala José Javier Barrio, son constantes y se realizan con métodos artesanales para respetar al máximo el espíritu y la estética de la catedral.\r\n\r\nQuizá la actuación más visible haya sido, precisamente, la realizada sobre la fachada de la seo burgalesa. La limpieza del exterior volvió a mostrar el color blanco de sus paredes, dejando atrás el gris que durante tanto tiempo habíamos conocido. No solo se realizó la limpieza, sino que se aplicaron técnicas de conservación que, sin alterar su aspecto, protegen la piel de la basílica.\r\n\r\nLos cambios no fueron solo estéticos. La piedra supone el principal elemento estructural de toda la catedral y su cuidado debe ser constante. Aplicar los conocimientos de física, química, ingeniería y arquitectura resulta fundamental para protegerla de la oxidación, de gelifracción (la ruptura por el hielo), la contaminación… La Catedral de Burgos goza de una excelente salud tras las restauraciones llevadas a cabo los últimos años, pero los cuidados deben ser constantes y delicados para mantener su magnífico aspecto y la firmeza que ha mantenido durante sus 800 años de historia.       ');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `capitulosaexpertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `capitulosaexpertos` (
`Numerador` varchar(255)
,`titulo` varchar(255)
,`nombre` varchar(255)
);

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
(3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cookies`
--

INSERT INTO `cookies` (`Identificador`, `titulo`, `texto`) VALUES
(1, 'Política de cookies (UE)', 'Esta política de cookies fue actualizada por última vez el 13 de julio de 2022 y se aplica a los ciudadanos y residentes legales permanentes del Espacio Económico Europeo y Suiza.'),
(2, '1. Introducción', 'Nuestra web, https://cienciaycatedral.ubuinvestiga.es (en adelante: «la web») utiliza cookies y otras tecnologías relacionadas (para mayor comodidad, todas las tecnologías se denominan «cookies»). Las cookies también son colocadas por terceros a los que hemos contratado. En el siguiente documento te informamos sobre el uso de cookies en nuestra web.'),
(3, '2. ¿Qué son las cookies?', 'Una cookie es un pequeño archivo que se envía junto con las páginas de esta web y que tu navegador almacena en el disco duro de su ordenador u otro dispositivo. La información almacenada puede ser devuelta a nuestros servidores o a los servidores de terceros apropiados durante una visita posterior.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `trabajo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`Identificador`, `titulo`, `trabajo`, `nombre`) VALUES
(1, 'Producido por:', '', 'UNIDAD DE CULTURA CIENTÍFICA E INNOVACIÓN de la UNIVERSIDAD DE BURGOS'),
(2, 'Con la colaboración de:', '\r\n', 'Fundación Española para la Ciencia y Tecnología (FECYT) – MINISTERIO DE CIENCIA E INNOVACIÓN\r\n\r\nCabildo Metropolitano de la Catedral de Burgos\r\n'),
(3, 'Entrevistados', '', 'ANTONIO CANO\r\n'),
(4, 'Equipo', 'PRODUCCIÓN EJECUTIVA', '– JORDI ROVIRA CARBALLIDO'),
(5, 'Equipo', 'DIRECCIÓN', ' – SAMUEL PÉREZ GUTIÉRREZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `Identificador` int(255) NOT NULL,
  `categoria_nombre` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `piedefoto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `documentaciongrafica`
--

INSERT INTO `documentaciongrafica` (`Identificador`, `categoria_nombre`, `imagen`, `piedefoto`) VALUES
(3, 1, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_0000C529-400x284.jpg', 'La_Catedral_de_Burgos_0000C529'),
(4, 1, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_0001B8D1-400x284.jpg', 'La_Catedral_de_Burgos_0001B8D1'),
(5, 2, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_Vista_panoramica_de_Burgos.jpg', 'La_Catedral_de_Burgos_Vista_panorámica_de_Burgos'),
(6, 3, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_va_bcyl_normal_av-10089_0001-400x284.jpg', 'La_Catedral_de_Burgos_va_bcyl_normal_av-10089_0001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongraficacategorias`
--

CREATE TABLE `documentaciongraficacategorias` (
  `Identificador` int(255) NOT NULL,
  `categorias` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `documentaciongraficacategorias`
--

INSERT INTO `documentaciongraficacategorias` (`Identificador`, `categorias`) VALUES
(1, 'Archivo Municipal de Burgos'),
(2, 'Biblioteca nacional'),
(3, 'bibliotecadigital.jcyl'),
(4, 'ceres'),
(5, 'Europeana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`Identificador`, `nombre`, `descripcion`, `imagen`, `video`, `texto`) VALUES
(1, 'Antonio Cano', 'Campanero y relojero en la catedral de Burgos', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/Antonio-Cano_p.jpg', 'https://youtu.be/AH2BsxIB2ys', 'Antonio Cano es campanero y relojero en la catedral de Burgos. Por sus manos han pasado muchas de las campanas y relojes de las iglesias de la provincia burgalesa, pero también de Canarias, donde ha pasado buen parte de su vida.\r\n\r\nA pesar de los cambios que ha sufrido su profesión, tanto por la automatización como porque muchas iglesias han dejado de tocar, sigue haciéndose cargo de las campanas y los relojes que siguen requiriendo mantenimiento, afinación y precisión.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos muestra algunos de los secretos más escondidos de El Papamoscas, el genial autómata del templo que abre y cierra la boca a las horas, acompañado de El Martinillo, su ayudante a los carrillones. Cano nos enseña los mecanismos de estos ingenios mecánicos, que necesitan de conservación y mantenimiento, además de ayudarnos a comprender cómo se sincronizan con los relojes del templo.\r\n\r\n Además, en su labor como campanero nos acompaña a la cima de la catedral para ver cómo se tocan las campanas, hoy ya automatizadas, su estado y mantenimiento y su futuro.'),
(2, 'Constantino de la Fuente', 'Catedrático de secundaria y doctor en matemáticas', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/CONSTANTINO-DE-LA-FUENTE-MARTINEZ_p.jpg', 'https://youtu.be/RHI6dUOBeVM', 'Constantino de la Fuente es catedrático de secundaria y doctor en matemáticas, además de presidente fundador de la Sociedad Castellana y Leonesa de Educación matemática Miguel de Guzmán.\r\n\r\nHa desarrollado una intensa carrera investigadora con numerosos artículos en revistas científicas, además de conferencias en jornadas y congresos, todo ello mientras desarrollaba su actividad docente en el IES Cardenal López de Mendoza.  De la Fuente es autor de dos libros sobre matemáticas en la catedral de Burgos y ha destacado por su implicación en la divulgación de la cultura científica y matemática entre los más jóvenes.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, De la Fuente nos guía por los secretos matemáticos que esconde el templo, tanto en su construcción como en su decoración. Proporciones como el número áureo, el rectángulo de plata o la proporción cordobesa se encuentran en algunos de los lugares más emblemáticos de la catedral, como el rosetón del Sarmental, la escalera dorada y el cimborrio la combinación de sus octógonos. \r\n\r\nEstas proporciones también pueden albergar un significado religioso, como en la vesica piscis, la intersección entre dos círculos que se utilizó como símbolo de Cristo entre los primeros creyentes. Todas estas proporciones, formas geométricas y algebraicas revelan una comprensión de las matemáticas muy precisa que llega a su punto más alto con la Escalera dorada. La obra de Diego de Siloé está inspirada en el renacimiento italiano y en su construcción alberga un sinfín de proporciones relacionadas que le permiten ser una solución arquitectónica brillante y, al mismo tiempo, una obra armónica que ha deslumbrado a arquitectos de todo el mundo.\r\n\r\nPor último, nos enseña que en las proporciones también puede haber ecos de otras culturas, como en el Cimborrio de la catedral, donde el arte mozárabe está presente en algunas de las relaciones y proporciones que conforman esta obra de arte barroca.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heroe`
--

CREATE TABLE `heroe` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `contenidovisual` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `heroe`
--

INSERT INTO `heroe` (`Identificador`, `titulo`, `subtitulo`, `texto`, `contenidovisual`) VALUES
(1, 'La unión del arte y la ciencia', '', 'Durante 800 años, la Catedral de Burgos ha acumulado misterios, saberes y artes en su interior que son muestra de algunos de los avances científicos, técnicos y tecnológicos de diferentes épocas, desde la revolución del gótico hasta las más modernas tecnologías aplicadas a la seguridad y la restauración para mantener el edificio en la mejor de las condiciones.\r\n\r\nEn La Ciencia que esconde la Catedral de Burgos nos adentramos en los secretos de la construcción, decoración, mantenimiento y restauración de uno de los templos más bellos y reconocibles del mundo de la mano de quince especialistas que nos mostrarán cómo las diferentes ciencias y artes se han dado cita en el interior y exterior de la seo burgalesa, quince expertos que nos guiarán en este viaje gracias a sus conocimientos en matemáticas, física, química, historia del arte y los procesos de restauración aplicados en el exterior y el interior del templo.\r\n\r\nEste documental, producido por la Unidad de Cultura Científica e Innovación de la Universidad de Burgos (UCC+i) con la colaboración de la Fundación Española para la Ciencia y la Tecnología (FECYT) y el apoyo del Cabildo de Burgos quiere, además de celebrar el 800 cumpleaños del templo, mostrar la complejidad técnica de la construcción de la Catedral y la precisión en su construcción y desarrollo.', 'https://youtu.be/nZKNranpFGw'),
(2, 'Capítulos', 'Ocho episodios para conocer la catedral', '¿Qué hace grandiosa a una catedral? ¿Por qué la de Burgos es única? ¿Qué convierte a una acumulación de piedras y maderas labradas en una obra de arte de fama mundial? Detrás de la construcción, de la mística y la restauración se encuentran multitud de aspectos científicos, técnicos y tecnológicos presentes en cada rincón.\r\n\r\nEn los ocho episodios que componen la serie La ciencia que esconde la Catedral de Burgos recorreremos cada uno de los aspectos más importantes para la construcción, mantenimiento y conservación de la seo burgalesa, pero también en aquellos aspectos artísticos singulares que la convierten en una de las joyas del gótico y uno de los edificios más singulares del mundo.', ''),
(3, 'Expertos', 'Los mejores guías', 'Quince expertos nos acompañan en la aventura de descubrir los misterios científicos y tecnológicos de la Catedral de Burgos. Profesores universitarios, profesionales de enorme prestigio, restauradoras, artesanos e, incluso, el archivero de la propia Catedral serán nuestros guías, aunandoun gran nivel de conocimientos con un lenguaje sencillo y para todos los públicos.\r\n\r\nEn los ocho episodios que conforman la serie, las entrevistas a los especialistas nos sirven tanto de hilo conductor como de fuente de conocimientos y explicaciones de materias tan diferentes como la arquitectura, los materiales, las vidrieras, las matemáticas presentes en el diseño y la decoración, la música, las más modernas tecnologías o el estado de conservación y futuro de la Catedral de Burgos. Un reparto de lujo para conocer al detalle la ciencia y la tecnología presentes en cada rincón del templo. ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`Identificador`, `titulo`, `subtitulo`, `texto`) VALUES
(1, 'La serie', 'La serie completa,\r\ndisponible aquí', 'A lo largo de los ocho capítulos conoceremos una de las partes que conforman el templo gótico, desde sus paredes hasta sus obras de arte, sus vidrieras, la música que llena la seo, las proporciones ocultas en su construcción y decoración o El Papamoscas, el autómata que abre la boca con las horas.\r\n\r\nToda la serie está disponible al completo y, además, en este sitio web podremos encontrar buena parte de la documentación gráfica, bibliografía, referencias y entrevistas utilizadas en su grabación, todas las entidades y colaboradores que han hecho posible su realización.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`Identificador`, `nombre`, `texto`, `imagen`) VALUES
(1, 'Repercusión', 'La ciencia que esconde la Catedral de Burgos ha obtenido una gran repercusión, tanto institucional como a nivel mediático y de audiencia. El documental fue distinguido como mejor proyecto destacado en ComCiRed 2021, un galardón que premia los mejores trabajos de las unidades de cultura científicas de las universidades.\r\nLa serie se ha emitido en La 8 Burgos y La 2 de Televisión Española, además de en el canal de YouTube de UBUinvestiga, donde acumula más de 150.000 visitas. Su estreno concitó un enorme interés de medios locales y nacionales. 110 horas de grabación que han cristalizado en 8 episodios y disponibles de forma gratuita.', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/comcired_2021.jpg'),
(2, 'Agentes', 'Para la creación del documental han intervenido numerosos agentes. La producción ha corrido a cargo de la UCC+i de la Universidad de Burgos con el apoyo de la Fundación Española para la Ciencia y la Tecnología – Ministerio de Ciencia e Innovación y el Cabildo de la Catedral de Burgos, además de agradecer a numerosas instituciones y colaboradores.', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/2021-09-02_2021-09-02_presentacion_documental_catedral_017_0.jpg');

-- --------------------------------------------------------

--
-- Estructura para la vista `capitulosaexpertos`
--
DROP TABLE IF EXISTS `capitulosaexpertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `capitulosaexpertos`  AS SELECT `capitulos`.`Numerador` AS `Numerador`, `capitulos`.`titulo` AS `titulo`, `expertos`.`nombre` AS `nombre` FROM ((`capitulosexpertos` left join `expertos` on(`capitulosexpertos`.`expertos_nombre` = `expertos`.`Identificador`)) left join `capitulos` on(`capitulosexpertos`.`capitulos_nombre` = `capitulos`.`Identificador`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avisolegal`
--
ALTER TABLE `avisolegal`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `bibliografiaaexperto` (`experto_nombre`);

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
-- Indices de la tabla `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `documentaciongraficaacategoria` (`categoria_nombre`);

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
-- Indices de la tabla `heroe`
--
ALTER TABLE `heroe`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avisolegal`
--
ALTER TABLE `avisolegal`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `heroe`
--
ALTER TABLE `heroe`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD CONSTRAINT `bibliografiaaexperto` FOREIGN KEY (`experto_nombre`) REFERENCES `expertos` (`Identificador`);

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
  ADD CONSTRAINT `documentaciongraficaacategoria` FOREIGN KEY (`categoria_nombre`) REFERENCES `documentaciongraficacategorias` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

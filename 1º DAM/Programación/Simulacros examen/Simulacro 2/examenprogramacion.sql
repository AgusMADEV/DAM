-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2024 a las 18:27:19
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
-- Base de datos: `examenprogramacion`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

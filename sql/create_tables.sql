-- Base de datos: `moviedb`
-- --------------------------------------------------------
-- Estructura de tabla para la tabla `participa`
--


CREATE TABLE `participa` (


  `id_pelicula` int,
  `id_persona` int,
  `roles` varchar(50),
   primary key( id_pelicula, id_persona, roles),
   foreign key (id_pelicula) references pelicula(id_pelicula),
   foreign key (id_persona) references persona(id_persona)
) ;


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `pelicula`
--
CREATE TABLE `pelicula` (
  `id_pelicula` int auto_increment primary key,
  `nombre` varchar(400) NOT NULL,
  `genero` varchar(50) NOT NULL
) ;


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `persona`
--
CREATE TABLE `persona` (
  `id_persona` int auto_increment primary key ,
  `nombre` varchar(500) NOT NULL,
  `pais` varchar(50) NOT NULL
) ;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `premio`
--


CREATE TABLE `premio` (
  `id_premio` int int auto_increment primary key,
   name varchar(200) not null,
  `categoria` varchar(200) NOT NULL,
  `id_pelicula` int,
  `id_persona` int,
   foreign key (id_pelicula)references pelicula(id_pelicula),
   foreign key (id_persona) references persona(id_persona)
) ;


-- --------------------------------------------------------
-- Estructura de tabla para la tabla `reseña`
--


CREATE TABLE `reseña` (
  `id_reseña` int auto_increment primary key,
  `comentario` varchar(10000) not NULL,
  `id_usuario` int,
  `id_pelicula` int,
   FOREIGN KEY(id_usuario) references usuario(id_usuario),
   FOREIGN KEY (id_pelicula) references pelicula(id_pelicula)
) ;




-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuario`


CREATE TABLE `usuario` (
`id_usuario`int auto_increment primary key,
`nombre` varchar(60) NOT NULL,
`correo` varchar(500) NOT NULL unique  
    CHECK (correo like '%@%.%')
) ;



Insert into usuario(nombre, correo) 
VALUES('Kevin Carrera', 'kevin@gmail.com'),
('Brenda Alvarado', 'brendaalva@gmail.com'),
('Kiara Ramirez', 'kiararamirez@gmail.com'),
('Jack Araujo', 'jack@gmail.com'),
('Camilo Venas', 'camilo@gmail.com');

insert into pelicula(nombre, genero)
values(‘The prestige’, ‘thriller’), 
(‘The lighthouse’, ‘terror’),
(‘Parasite’, ‘comedia negra’),
(‘Sinners’, ‘terror’),
(‘Deadstream’, ‘comedia’);


insert into reseña(comentario, id_usuario, id_pelicula)
VALUES('La pelicula es muy buena y me encanta la forma en contar la historia de una forma en que no te esperas nada de lo que pasará y tiene grandes actores', 1, 1),
('Esta pelicula me hizo reflexionar sobre como el trabajo duro y la soledad cambia a las personas, excelentes actuaciones', 2, 2 ),
('Me gusto como la fotografia de esta pelicula, me parece muy original y digna de su oscar', 3,3),
('Sinners es una pelicula diferente, eso la hace disfrutable, tiene muy buena musica', 4,4),
('Buena para ver con amigos, trama sencilla y disfrutable de inicio a fin', 5,5);

INSERT into persona(nombre, pais)
VALUES('Christian Bale', 'Reino Unido'),
('Christopher Nolan', 'Reino Unido'),
('Hugh Jackman', 'Australia'),
('Song Kang-ho', 'Corea del Sur'),
('Park So-dam', 'Corea del Sur'),
('Choi Woo-shik', 'Corea del sur'),
('William Dafoe', 'Estados Unidos'),
('Robert Pattinson', 'Reino Unido'),
('Robert Eggers', 'Estados Unidos'),
('Bong Joon-ho', 'Corea del Sur'),
('Michael B.Jordan', 'Estados Unidos'),
('Oluwunmi Olapeju Mosaku', 'Nigeria'),
('Ryan Kyle Coogler', 'Estados Unidos'),
('Joseph Winter', 'Estados Unidos'),
('Vanesa Winter', 'Estados Unidos');

insert into participa(id_pelicula,id_persona,roles)
VALUES(1, 1, 'actor'),
(1,2, 'director'),
(1,3, 'actor'),
(3,4,'actor'),
(3,5,'actor'),
(3,6,'actor'),
(3,10, 'director'),
(4,11, 'actor'),
(4,12, 'actor'),
(4,13, 'director'),
(2,7, 'actor'),
(2,8,'actor'),
(2,9,'director'),
(5,14, 'director'),
(5,14, 'actor'),
(5,15, 'director');

insert into premio(name, categoria, id_pelicula, id_persona)
values('SFX Awards', 'Mejor Director', 1, 2),
('Empire Awards', 'Mejor Director',1, 2),
('Bodil Awards', 'Mejor Pelicula', 2,9),
('Satellite Awards', 'Mejor Actor de Reparto', 2,7),
('Film Independent Spirit Awards', 'Mejor Actor de Reparto',2,7),
('Oscar', 'Mejor Pelicula', 3 , null),
('Oscar', 'Mejor Director', 3, 10),
('Bafta', 'Mejor Pelicula', 3, null),
('Premios Critics Choice', 'Mejor Director', 3, 10),
('Oscar', 'Mejor guion', 4, 13),
('Oscar', 'Mejor Actor', 4, 11),
('Bafta', 'Mejor Actor', 4, 11),
('Bafta', 'Mejor guion',4, 13),
('Sitges', 'Premio del publico', 5, 15);

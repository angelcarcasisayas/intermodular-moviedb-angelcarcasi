--El usuario con mas reseñas

SELECT * ,COUNT(*) as totalComentarios
from reseña
GROUP by id_usuario
order by totalComentarios desc
limit 1;

--Los nombres de los usuarios que comentaron, el nombre de las peliculas y sus generos, y las reseñas que hicieron los usuarios.
SELECT r.comentario, p.nombre, p.genero, u.nombre
from pelicula p
RIGHT JOIN reseña r
on r.id_pelicula= p.id_pelicula
left join usuario u
on u.id_usuario= r.id_usuario;

--Los premios de las peliculas segun su categoria 
SELECT p.categoria, p.name, pl.nombre, pl.genero, count(*) as total
from premio p
left join pelicula pl
on p.id_pelicula = pl.id_pelicula
group by p.categoria;

--Los premios que ganaron las peliculas segun los nombres de los premios
SELECT p.name, pl.nombre, count(*) as total
from premio p
RIGHT join pelicula pl
on p.id_pelicula = pl.id_pelicula
group by pl.nombre;

--Cantidad de premios que ganaron las personas, muestra las peliculas con las que consiguieron y los nombre de los premios. 
SELECT p.categoria, p.name, ps.nombre, pl.nombre ,count(*) as total
from persona ps
RIGHT join premio p
on p.id_persona = ps.id_persona
left join pelicula pl
on p.id_pelicula = pl.id_pelicula
group by p.categoria;
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

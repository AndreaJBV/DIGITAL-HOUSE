use emarket; 
/*
Obtener un listado de todos los clientes que viven en “Brazil" o “Mexico”,
o que tengan un título que empiece con “Sales”.
*/
select * from clientes
where pais in("Mexico", "Brazil") or titulo like "Sales%";

use extra_joins;
/*
 Obtener los artistas que han actuado en una o más películas.
*/
-- añandiendo cositas pro 
select artista.*, count(pelicula_id) as numPeliculas from artista
join artista_x_pelicula
on id = artista_id
group by id; 

/*
Obtener las películas donde han participado más de un artista según nuestra
base de datos
*/
select pelicula.*, count(artista_id) as numArtista from pelicula
join artista_x_pelicula
on pelicula.id = pelicula_id
group by pelicula.id
having numArtista > 1;

-- forma larga 
select pelicula.*, count(*) as cantidad from pelicula
join artista_x_pelicula
on pelicula.id = pelicula_id
join artista
on artista_id = artista.id 
group by pelicula.id
having cantidad > 1;

/*
3. Obtener aquellos artistas que han actuado en alguna película, incluso
aquellos que aún no lo han hecho, según nuestra base de datos.
*/
select artista.*, count(pelicula_id) as numPeliculas from artista 
left join artista_x_pelicula 
on artista.id = artista_x_pelicula.artista_id
group by artista.id;  

-- otra forma 
select artista.*, pelicula.id as peliculaID, count(pelicula.id) from artista 
left join artista_x_pelicula 
on artista.id = artista_x_pelicula.artista_id 
left join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id
group by artista.id; 

-- punto 4
/*
Obtener las películas que no se le han asignado artistas en nuestra base de
datos.
*/
select pelicula.*, artista_id from pelicula
left join artista_x_pelicula
on id = pelicula_id
where artista_id is null;

/*
5.Obtener aquellos artistas que no han actuado en alguna película, según
nuestra base de datos.
*/
select artista.*, pelicula_id from artista 
left join artista_x_pelicula 
on artista.id = artista_x_pelicula .artista_id 
where artista_x_pelicula.pelicula_id is null;  
 
/*
6.Obtener aquellos artistas que han actuado en dos o más películas según
nuestra base de datos.
*/
SELECT artista.*, count(pelicula_id) as numPel FROM artista 
LEFT JOIN artista_x_pelicula
ON artista.id = artista_x_pelicula.artista_id
GROUP BY artista.id
HAVING numPel >= 2; 

/*
7. Obtener aquellas películas que tengan asignado uno o más artistas, incluso
aquellas que aún no le han asignado un artista en nuestra base de datos.
*/
select pelicula.*, count(artista_id) from pelicula
left join artista_x_pelicula
on id = pelicula_id
group by id;
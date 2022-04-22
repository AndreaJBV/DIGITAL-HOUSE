-- CLASE 16
use movies_db;

select * from movies
join genres
on movies.genre_id = genres.id;

select * from movies
left join genres -- trae todas las que tienen un genero y las que no tienen un genero
on movies.genre_id = genres.id;

select title, name from movies -- trae todo lo de la primera tabla más la intersección
left join genres 
on movies.genre_id = genres.id;

select title, name from movies -- Trae todo lo de la segunda tabla más la interseccion
right join genres
on movies.genre_id = genres.id;

-- ______ Desafio extra Join ____
-- 1.
use extra_joins;

select artista.* from artista 
join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id;

select concat(apellido, " ", nombre) as artista, titulo, anio from artista 
join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id;

select concat(apellido, " ", nombre) titulo from artista 
join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
join pelicula
on artista_x_pelicula.pelicula_id  = pelicula.id;

-- 2.
select pelicula_id, titulo, count(*) as cantidad from artista 
join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id
group by pelicula_id
having cantidad > 1;

-- 3.
select * from artista 
left join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
left join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id;

-- 4. 
select * from artista 
right join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
right join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id
where artista.id is null;

-- 5.
select * from artista 
left join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
left join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id
where pelicula.id is null;

select * from artista -- otra forma de hacerlo
right join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
where a artista_x_pelicula.pelicula_id is null;

-- 6.
select artista_id, apellido, concat(*) as cantidad from artista 
join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id
group by artista_id
having cantidad >= 2;

-- 7.
select * from artista 
right join artista_x_pelicula
on artista.id = artista_x_pelicula.artista_id
right join pelicula
on pelicula.id = artista_x_pelicula.pelicula_id;



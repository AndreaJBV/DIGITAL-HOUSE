use la_aprobacion;
SELECT * FROM huesped
WHERE domicilio LIKE '%__n__%' or domicilio like '__n__%';

select genres.name, count(*) from movies
join genres
on genres.id = movies.genre_id
group by name;

-- select title, first-name, last_name from actors

-- select title, concat(first-name, " ", last_name) as actor from actors
-- join actor_movie
-- on actors.id = actor_movie.actor_id
-- join movies
-- on movies.id = actor_movie.movie_id;
use musimundos;

/*Realizar una consulta sobre la tabla canciones con la siguiente información:
● Solo los 10 primeros caracteres del nombre de la canción en mayúscula.
● La duración de la canción expresada en minutos. Ejemplo 5:10
● El peso en kbytes en número entero (sin decimales, 1000 bytes = 1 kb)
● El precio formateado con 3 decimales, Ej: $100.123
● El primer compositor de la canción (notar que si hay más de uno, 
mostrar separados por coma)
*/

 select UPPER(LEFT(nombre,10)) as cancion, SEC_TO_TIME(round( milisegundos/1000)) as duracion, round(bytes/1000) as kbytes, concat("$",format(precio_unitario,3)) as precio, 
 case
 when compositor = "" then "<sin datos>"
 when compositor not like "%,%" then compositor
 else left(compositor,locate(",", compositor)-1) 
 end as compositor, compositor
 from canciones; 

 /*Trasnormar lo anterior a una vista*/
create view compositor_xxl as
select UPPER(LEFT(nombre,10)) as cancion, SEC_TO_TIME(round( milisegundos/1000)) as duracion, round(bytes/1000) as kbytes, concat("$",format(precio_unitario,3)) as precio, 
case
when compositor = "" then "<sin datos>"
when compositor not like "%,%" then compositor
else left(compositor,locate(",", compositor)-1) 
end as compositor, compositor
from canciones; 

/*llamar la vista creada*/
select compositor, count(*) from compositor_xxl
group by compositor_xxl
having count(*) > 2;

/*Para alterar la vista*/
alter view compositor_xxl as
select UPPER(LEFT(nombre,10)) as cancion, SEC_TO_TIME(round( milisegundos/1000)) as duracion, round(bytes/1000) as kbytes, concat("$",format(precio_unitario,3)) as precio, 
case
when compositor = "" then "<sin datos>"
when compositor not like "%,%" then compositor
else left(compositor,locate(",", compositor)-1) 
end as compositor, compositor
from canciones; 

/**/
select * from compositor_xxl
where "duracion/cantidad" > "00:05:00";

/*Para borrar una vista*/
drop view compositor_xxl;
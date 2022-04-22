use musimundos;
-- 1. 
select nombre, milisegundos from canciones
where milisegundos > 120000;

-- 2.
select nombre from anciones
where nombre like "a%" or "e%" or "i%" or "o%" or "u%";

-- 3
select compositor, nombre  from canciones
where compositor != ""
order by compositor desc,  nombre asc;

-- 4
-- a. 
select compositor, count(*) as cantidad from canciones
where compositor != ""
group by compositor;
-- b.
select compositor, count(*) as cantidad from canciones
where compositor != ""
group by compositor
having cantidad > 10;

-- 5
-- a.
 select ciudad_de_facturacion, sus(total) as total from facturas
 group by ciudad_de_facturacion;
 -- b
  select ciudad_de_facturacion, sus(total) as total from facturas
 where pais_de_facturacion = "Canadá"
 group by ciudad_de_facturacion;
 -- c 
  select ciudad_de_facturacion, sus(total) as total from facturas
 group by ciudad_de_facturacion
 having total > 38;
 -- d
  select pais_de_facturacion, ciudad_de_facturacion, sus(total) as total from facturas
 group by pais_de_facturacion, ciudad_de_facturacion
 order by pais_de_facturacion;
 
 -- 6
 -- a.
 select nombre, min(milisegundos), max(milisegundos), avg(milisegundos) from canciones
 group by nombre
 order by nombre;
-- b.
select generos.nombre, min(milisegundos), max(milisegundos), avg(milisegundos) from canciones
join generos
on canciones.id_genero = generos.id
group by id_genero
order by id_genero;
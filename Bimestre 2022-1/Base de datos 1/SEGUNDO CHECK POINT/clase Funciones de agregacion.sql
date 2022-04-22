use emarket;

select * from clientes;

select count(*) from clientes; -- Cuenta cuantos clientes hay

select count(*) from clientes
where pais = "Mexico" and titulo like "sales%"; -- Cuenta los clientes de mexico y que empiece con sales;

select * from facturadetalle;

select avg(PrecioUnitario) as promedio from facturadetalle
where PrecioUnivario > 10;

select avg(PrecioUnitario) as promedio, max(PrecioUnitario) as maximo, min(PrecioUnitario) as minimo
where PrecioUnivario > 10;

select sum(PrecioUnitario * cantidad) as total from facturadetalle;

select max(contacto), max(contacto) from clientes;
select min(contacto), min(contacto) from clientes;

select * from facturas;

select max(fechafactura), min(FechaFactura) from facturas;

select fechafactura from facturas
order by fechafactura desc;

select titulo from clientes -- No se puede colocar select * from clientes 
group by titulo;

select titulo, count(*) as cantidad from clientes -- Me dice cuantos clietnes por titulo tiene
group by titulo
order by cantidad desc;

select * from clientes;

select pais, ciudad, count(*) as cantidad from clientes -- Cuenta y devuelve una sola fila por cada uno de los paises
group by pais
order by pais;

select productoid, count(*), avg(PrecioUnitario*cantidad) as total from facturadetalle 
group by ProductoID;

select productoid, count(*) as cant, sum(PrecioUnitario*cantidad) as total from facturadetalle 
group by ProductoID
having ProductoID between 1 and 50 -- filtra los datos del group by del 1 al 50
order by cant desc;

select productoid, count(*) as cant, sum(PrecioUnitario*cantidad) as total from facturadetalle 
 -- max(PrecioUnitario*cantidad) as max_ventas from facturadetalle  
where PrecioUnitario > 10
group by ProductoID
having ProductoID between 1 and 50 -- filtra los datos del group by del 1 al 50
order by cant desc;


use spotify;
select *  from cancion;

select idCancion, sum(duracion)  from cancion
group by idCancion; 

select sum(duracion) from cancion
group by idCancion;

-- select avg(tabla.total) from ( select sum(milisegundos) as total from canciones group by id_album ) as tabla; -- promedio del promedio

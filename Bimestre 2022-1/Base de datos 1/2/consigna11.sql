USE emarket;

-- CATEGORIAS Y PRODUCTOS
select * from categorias;
select CategoriaNombre, Descripcion from categorias;

select * from productos
where Discontinuado=1;

select * from productos
where ProveedorID=8;

select * from productos
where PrecioUnitario between 10 and 22;

select * from productos
where UnidadesStock < NivelReorden;

select * from productos
where UnidadesStock < NivelReorden and UnidadesPedidas = 0;

-- CLIENTES
select Contacto, Compania, Titulo, Pais from clientes
order by Pais;

-- select * from clientes;
select * from clientes
where  Titulo = "Owner";

-- Consultas queries ML -Parte II
select * from productos
order by PrecioUnitario desc;

select * from productos
order by PrecioUnitario desc
limit 5;

select * from productos
order by UnidadesStock desc
limit 10;

select FacturaID, ProductoID, Cantidad from facturadetalle;

 select FacturaID, ProductoID, Cantidad from facturadetalle
 where Cantidad between 50 and 100
 order by Cantidad desc;
 
 select FacturaID as nroFactura, ProductoID as producto, cantidad * PrecioUnitario as total from facturadetalle;
 
 
 -- EXTRAS!!!
 select * from clientes
 where pais in ("brazil", "mexico") or titulo like "sales%";
 
  select * from clientes
  where Compania like "a%";
  
  select Ciudad, contacto as "Apellido y Nombre ", titulo as puesto from clientes
  where ciudad = "madrid";
  
  select FacturaID, ClienteID from facturas
  where FacturaID between 10000 and 10500 or ClienteID like "b%";
  
  select * from facturas
  where (CiudadEnvio = "vancouver" or EnvioVia = 3) and empleadoID = 2;
  
  select empleadoID from empleados
  where apellido = "buchanan";
  
  select *  from factras
  where EmpleadoID = 5;

-- use movies:db;
-- select * from actors;

-- insert into actors
-- values (default, null, null, "leonardo", "di caprio", 9, null),
-- (default, null, null, "leonardo", "di caprio2", 9, null), ...

-- insert into actors (id, first_name, last_name, rating)
-- values (default, "leonardo", "di caprio5", 9);

-- update actors 
-- set
-- first_name = "leo"
-- where first_name = "leonardo";

-- SET SQL_SAFE_UPDATES = 1; //Desactivo el safe update y no me deja seguir borrando
 

-- delete from actors
-- where id = 2;
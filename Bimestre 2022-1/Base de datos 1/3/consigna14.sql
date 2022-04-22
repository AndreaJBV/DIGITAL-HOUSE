use emarket;

-- Clientes
select count(*) from clientes;

select Ciudad, count(*) from clientes
group by Ciudad;

-- Facturas
select sum(Transporte) from facturas;

select EnvioVia, sum(Transporte) from facturas
group by EnvioVia;

select ClienteID, count(*) from facturas
group by ClienteID 
order by count(*) desc;

select ClienteID, count(*) from facturas
group by ClienteID 
order by count(*) desc
limit 5;

select PaisEnvio, count(*) from facturas
group by PaisEnvio
order by count(*) 
limit 1;

select EmpleadoID, count(*) from facturas
group by EmpleadoID
order by count(*) desc
limit 1;

-- Factura detalle
select ProductoID, count(*) from facturadetalle
group by ProductoID
order by count(*) desc
limit 1;

select sum(PrecioUnitario*Cantidad) from facturadetalle;

select sum(ProductoId*Cantidad) from facturadetalle
where ProductoId between 30 and 50; 

select ProductoId, avg(PrecioUnitario) from facturadetalle
group by ProductoID;

select ProductoId, max(PrecioUnitario) from facturadetalle;

-- Parate 2 - Join
select * from facturas
join empleados
on facturas.EmpleadoID = empleados.EmpleadoID;
-- WHERE empleados.Nombre = 'Buchanan';

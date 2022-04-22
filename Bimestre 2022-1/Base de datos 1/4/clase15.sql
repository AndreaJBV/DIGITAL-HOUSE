use emarket;

select apellido, facturaid from empleados
join facturas
on empleados.EmpleadoID = facturas.EmpleadoID
where apellido = "buchanan";

select * from facturas
join correos
on facturas.EnvioVia  = correos.correoid
where compania = "speedy express";

select facturas.* from facturas -- facturas.* indica que tiene que ser de la tabla facturas
join correos
on facturas.EnvioVia  = correos.correoid
where compania = "speedy express";

select fc.* from facturas as fc -- es lo miso que anterior pero con un alias fc, para guardarlo ahi y que quede más organizado
join correos
on fcs.EnvioVia  = correos.correoid
where compania = "speedy express";

select * from facturas
join empleados
on facturas.EmpleadoID = empleados.EmpleadoID
join facturadetalle
on facturadetalle.FacturaID = facturas.FacturaID;

select apellido, facturas.*, ProductoID from facturas
join facturadetalle 
on facturas.EmpleadoID = facturas.FacturaID 
join empleados
on empleados.EmpleadoID = facturas.EmpleadoID
where apellido = "leverling" or ProductosID = 42;

select clientes.ClienteID, clientes.contacto, round(sum(preciounitario * cantidad), 2) as total  from clientes
join facturas
on clientes. ClienteID = facturas.ClienteID
join facturadetalle
on facturas.FacturaID = facturadetalle.FacturaID
group by clientes.clienteID
order by total desc
limit 5;


select clientes.ClienteID, clientes.contacto, facturas.FechaFactura, facturas.PaisEnvio, round(sum(preciounitario * cantidad), 2) as total  from clientes
join facturas
on clientes. ClienteID = facturas.ClienteID
join facturadetalle
on facturas.FacturaID = facturadetalle.FacturaID
group by facturas.fechafactura, clientes.contacto
order by facturas.FechaFactura desc
limit 10;






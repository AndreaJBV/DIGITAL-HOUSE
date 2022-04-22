USE emarket;

create view vista_productos_facturas as
select facturas.facturaid, FechaFactura, correos.Compania, clientes.contacto, categorias.CategoriaNombre, 
productos.ProductoNombre, facturadetalle.PrecioUnitario, facturadetalle.Cantidad  from facturas
join correos
on facturas.EnvioVia = correos.CorreoID
join clientes
on facturas.ClienteID = clientes.ClienteID
join facturadetalle
on facturadetalle.FacturaID = facturas.FacturaID
join productos
on productos.ProductoID = facturadetalle.ProductoID
join categorias
on categorias.CategoriaID = productos.CategoriaID;


select CategoriaNombre, ProductoNombre, count(*) as cant, avg(facturadetale.preciounicatio) as promedio from facturas
join correos
on facturas.EnvioVia = correos.CorreoID
join clientes
on facturas.ClienteID = clientes.ClienteID
join facturadetalle
on facturadetalle.FacturaID = facturas.FacturaID
join productos
on productos.ProductoID = facturadetalle.ProductoID
join categorias
on categorias.CategoriaID = productos.CategoriaID
where facturadetalle.preciounitario > 10
group by categoria.categorianombre, ProductoNombre;

select categorianombre, productonombre, count(*) as cant, avg(preciounitario) as promedio from vista_productos_factura
group by categorianombre, productonombre;

alter view vista_productos_facturas as
select CategoriaNombre, ProductoNombre, count(*) as cant, avg(facturadetalle.preciounicatio) as promedio from facturas
join correos
on facturas.EnvioVia = correos.CorreoID
join clientes
on facturas.ClienteID = clientes.ClienteID
join facturadetalle
on facturadetalle.FacturaID = facturas.FacturaID
join productos
on productos.ProductoID = facturadetalle.ProductoID
join categorias
on categorias.CategoriaID = productos.CategoriaID;

select * from vista_productos_facturas
join empleados
on vista_productos_facturas.empleadoid = empleados.EmpleadoID;

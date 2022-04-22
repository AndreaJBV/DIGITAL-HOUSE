-- __________Consigna 16_______
use emarket;
--                                                 Reportes parte I - Repasamos INNER JOIN
-- Realizar una consulta de la facturación de e-market. Incluir la siguiente información:
-- ● Id de la factura
-- ● fecha de la factura
-- ● nombre de la empresa de correo
-- ● nombre del cliente
-- ● categoría del producto vendido
-- ● nombre del producto
-- ● precio unitario
-- ● cantidad

select facturas.facturaID, FechaFactura, correos.compania, clientes.contacto, CategoriaNombre, ProductoNombre, productos.PrecioUnitario, productos.CantidadPorUnidad from facturas
join correos
on facturas.enviovia = correos.correoID
join  clientes
on facturas.clienteId = clientes.clienteID
join facturadetalle
on facturas.facturaID = facturadetalle.facturaID
join productos
on facturadetalle.productoID = productos.productoID
join categorias
on productos.categoriaID = categorias.categoriaID;





--                                                Reportes parte II - INNER, LEFT Y RIGHT JOIN
-- 1. Listar todas las categorías junto con información de sus productos. Incluir todas las categorías aunque no tengan productos.
select CategoriaNombre, ProductoNombre from categorias
left join productos
on productos.CategoriaID = categorias.CategoriaID;

-- 2. Listar la información de contacto de los clientes que no hayan comprado nunca en emarket.
select * from clientes
left join facturas
on clientes.ClienteID = facturas.ClienteID
where facturas.FacturaID is null;

-- 3. Realizar un listado de productos. Para cada uno indicar su nombre, categoría, y la información de contacto de su proveedor. 
-- Tener en cuenta que puede haber productos para los cuales no se indicó quién es el proveedor.
select CategoriaNombre, ProductoNombre, proveedores.Compania from productos
left join categorias
on productos.CategoriaID = categorias.CategoriaID
left join proveedores
on proveedores.ProveedorID = productos.ProveedorID;

-- 4. Para cada categoría listar el promedio del precio unitario de sus productos.
select CategoriaNombre, avg(PrecioUnitario) from categorias
left join productos
on productos.CategoriaID = categorias.CategoriaID
group by CategoriaNombre;


-- 5. Para cada cliente, indicar la última factura de compra. Incluir a los clientes que nunca hayan comprado en e-market.
select Contacto, max(FechaFactura)  from clientes
left join facturas
on clientes.ClienteID = facturas.ClienteID
group by Contacto;


-- 6. Todas las facturas tienen una empresa de correo asociada (enviovia). Generar un listado con todas las empresas de correo,
-- y la cantidad de facturas correspondientes. Realizar la consulta utilizando RIGHT JOIN.
select * from facturas 
right join facturadetalle
on facturas.FacturaID =facturadetalle.FacturaID;
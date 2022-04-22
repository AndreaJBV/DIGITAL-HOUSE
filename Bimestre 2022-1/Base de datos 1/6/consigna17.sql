USE emarket;
/*
1. Crear una vista con los siguientes datos de los clientes: ID, contacto, y el
Fax. En caso de que no tenga Fax, colocar el teléfono, pero aclarándolo. Por
ejemplo: “TEL: (01) 123-4567”.
*/
create view cliente_1 as
select ClienteID, Contacto,  
case
when Fax = "" then concat("Tel:",Telefono) 
else Fax
end as Fax_Tel
from clientes;

/*
2. Se necesita listar los números de teléfono de los clientes que no tengan
fax. Hacerlo de dos formas distintas:
a. Consultando la tabla de clientes.
b. Consultando la vista de clientes
*/

-- a. 
select Fax, Telefono, Contacto from Clientes
where Fax = "";
-- b.
select Contacto, Fax_Tel as Tel from cliente_1
where Fax_Tel like "Tel:%";

/*
Proveedores
1. Crear una vista con los siguientes datos de los proveedores: ID,
contacto, compañía y dirección. Para la dirección tomar la dirección,
ciudad, código postal y país.
2. Listar los proveedores que vivan en la calle Americanas en Brasil. Hacerlo
de dos formas distintas:
a. Consultando la tabla de proveedores.
b. Consultando la vista de proveedores.
*/

-- 1.
create view vistaProveedores as
select ProveedorID, Contacto, Compania, concat(Direccion," ", Ciudad," ", CodigoPostal," ", Pais) as Direccion from proveedores;
-- 2.
-- a.
select * from proveedores
where Direccion like "%Americanas%" and Pais = "Brazil";
-- b.
select * from vistaProveedores
where Direccion like "%Americanas%Brazil";

/*
Vistas - Parte II
1. Crear una vista de productos que se usará para control de stock. Incluir el ID
y nombre del producto, el precio unitario redondeado sin decimales, las
unidades en stock y las unidades pedidas. Incluir además una nueva
columna PRIORIDAD con los siguientes valores:
■ BAJA: si las unidades pedidas son cero.
■ MEDIA: si las unidades pedidas son menores que las unidades
en stock.
■ URGENTE: si las unidades pedidas no duplican el número de
unidades.
■ SUPER URGENTE: si las unidades pedidas duplican el número
de unidades en caso contrario.
*/

create view vistaProductos as
select ProductoID from productos;



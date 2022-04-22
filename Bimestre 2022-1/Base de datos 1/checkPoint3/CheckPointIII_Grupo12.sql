-- ================= BASE DE DATOS I - PROYECTO - LA APROBACION ================== --
-- =============================== CHECKPOINT III ================================ --
-- Base de datos: la_aprobacion.sql
-- Equipo N°: 12
-- Camada 2
-- Integrantes:
	-- Andrea Julieth Bedoya
	-- Karla Karina Vargas
	-- María Camila Cardona
	-- Carlos Castellar

use la_aprobacion;

-- 1. Listar los servicios básicos de la habitación número 25.
-- rows: 4 
SELECT servicio_basico_id, servicio_basico.nombre, habitacion_numero as 'Numero de habitacion'  FROM habitacion_x_servicio_basico
JOIN servicio_basico 
ON habitacion_x_servicio_basico.servicio_basico_id = servicio_basico.id
WHERE habitacion_x_servicio_basico.habitacion_numero = 25;

-- 2. Listar absolutamente todos los servicios básicos y la cantidad de habitaciones en las que están instalados. Mostrar solo el nombre del servicio básico y cantidad
-- rows: 11
SELECT servicio_basico.nombre, COUNT(habitacion_numero) AS cantidadHabitaciones FROM habitacion_x_servicio_basico
right JOIN servicio_basico
ON habitacion_x_servicio_basico.servicio_basico_id = servicio_basico.id
GROUP BY servicio_basico.nombre;

-- 3. Listar todos los huéspedes que tengan tres o más check-in. Mostrar el número de huésped, apellido y nombre separado por un espacio dentro de una misma columna denominada "Cliente" y, la cantidad de check-in que posee.
-- rows: 23
SELECT huesped.id, concat(huesped.apellido, ' ', huesped.nombre) AS "Cliente", count(checkin.id) AS cantidadCheckin FROM huesped
JOIN checkin
ON checkin.huesped_id = huesped.id
GROUP BY huesped.id
HAVING cantidadCheckin >=3;

-- 4. Listar todos los huéspedes que no tengan un check-in. Mostrar el número de huésped, apellido y nombre en mayúsculas dentro de una misma columna denominada "huésped sin check-in".
-- rows: 16
SELECT huesped.id, UPPER(concat(huesped.apellido, ' ', huesped.nombre)) AS "huésped sin check-in"   FROM huesped
LEFT JOIN  checkin
ON checkin.huesped_id = huesped.id
WHERE checkin.id IS NULL;

-- 5. Listar todos los huéspedes que tengan al menos un check-in que corresponda a la habitación de clase 'Classic'. Se debe mostrar el número de huésped, apellido, nombre, número de habitación y la clase.
-- rows: 44
SELECT huesped.id AS numeroHuesped, huesped.apellido as apellido, huesped.nombre as nombre, habitacion.numero as numeroHabitacion, clase.nombre as nombreClase FROM huesped, checkin, habitacion, clase
WHERE huesped.id = checkin.huesped_id AND checkin.habitacion_numero = habitacion.numero AND habitacion.clase_id = clase.id AND clase.nombre = 'Classic'
GROUP BY numeroHuesped, apellido, nombre, numeroHabitacion, nombreClase;


-- 6. Listar los huéspedes que tengan una o más reservas y que en la segunda letra de su apellido contenga una "u". Se debe mostrar el número de huésped, apellido, nombre, nombre del servicio.
-- rows: 10
select huesped.id, huesped.nombre, huesped.apellido,  servicio_extra.nombre as nombre_servicio from huesped
join reserva
on huesped.id = reserva.huesped_id
join servicio_extra
on reserva.servicio_extra_id = servicio_extra.id
where huesped.apellido like "_u%";


-- 7. Listar absolutamente todos los países y la cantidad de huéspedes que tengan.
-- rows: 4
select pais.id, pais.nombre, count(huesped.id) as cantidad_huespedes from pais 
join huesped
on pais.id = huesped.pais_id
group by pais.id;

-- 8. Calcular el importe total y la cantidad de reservas realizadas en el mes de marzo por cada huésped. Mostrar el apellido del huésped, importe total y cantidad de reservas.
-- rows: 9
select huesped.apellido,  sum(reserva.importe) as importe_total, count(reserva.id) as cantidad_reservas from huesped
join reserva
on reserva.huesped_id = huesped.id
where month(reserva.fecha) = 3
group by huesped.apellido;

-- 9. Calcular el importe total recaudado por mes (fecha de entrada) para la habitación número 22. Mostrar el número de habitación, nombre de la decoración, clase, nombre del mes y el importe total.
-- rows: 3

select habitacion.numero as numero_habitacion, decoracion.nombre as nombre_decoracion, habitacion.clase_id, monthname(checkin.fecha_entrada) as nombre_mes, sum(checkin.importe) as importe_total from checkin 
join habitacion 
on checkin.habitacion_numero = habitacion.numero
join decoracion 
on habitacion.decoracion_id = decoracion.id
where habitacion.numero = 22
group by monthname(checkin.fecha_entrada);


-- 10. Determinar la recaudación total por país para las habitaciones número 5, 10 y 22. Mostrar nombre del país, número de habitación y el total recaudado.
-- rows: 8
select pais.nombre, checkin.habitacion_numero as numero_habitacion, sum(checkin.importe) as total_recaudado from checkin 
join huesped
on huesped.id = checkin.huesped_id
join pais
on pais.id = huesped.pais_id
where checkin.habitacion_numero in (5, 10, 22)
group by pais_id, checkin.habitacion_numero
order by pais.nombre;


-- 11. Calcular la recaudación total de cada forma de pago para las reservas. Mostrar la forma de pago y el total.
-- rows:4
select forma_pago.nombre, sum(reserva.importe) as totalImporte from forma_pago 
left join reserva
on reserva.forma_pago_id = forma_pago.id
group by forma_pago_id; 


-- 12. Listar los empleados del sector 'administración' que su país de origen sea 'Argentina'. 
-- Mostrar el número de legajo, apellido, la primera inicial del primer nombre y un punto, nombre de su país de origen y el nombre del sector. 
-- rows: 3
select empleado.legajo, apellido, concat(left(empleado.nombre, 1),".") as inicialNombre, pais.nombre, sector.nombre from empleado
join sector
on empleado.sector_id = sector.id 
join pais
on empleado.pais_id = pais.id
where sector.nombre = "administración" and pais.nombre = "Argentina"; 


-- 13. Listar todos los servicios básicos que tienen las habitaciones (desde la 20 hasta la 24) y su clase. Mostrar número de habitación, clase y el nombre de los servicios básicos. 
-- Ordenar por número de habitación y servicio.
-- rows: 28
select habitacion.numero, clase.nombre as claseNombre, servicio_basico.nombre as servicioNombre from servicio_basico
join habitacion_x_servicio_basico
on servicio_basico.id = habitacion_x_servicio_basico.servicio_basico_id
join habitacion
on habitacion_x_servicio_basico.habitacion_numero = habitacion.numero
join clase
on habitacion.clase_id = clase.id
where habitacion.numero between  20 and 24
order by habitacion.numero, servicioNombre; 



-- 14. Listar las decoraciones que no están aplicadas en ninguna habitación.
-- rows:2
select decoracion.* from decoracion
left join habitacion
on decoracion.id = habitacion.decoracion_id
where habitacion.decoracion_id is null;


/* 15. Listar todos los empleados categorizándolos por edad. Las categorías son:
'junior' (hasta 35 años), 'semi-senior' (entre 36 a 40 años) y 'senior' (más de 40).
Mostrar el apellido, nombre, edad, categoría y ordenar por edad. */

select empleado.apellido, empleado.nombre, format((datediff(now(), empleado.fecha_nacimiento))/365, 0) as Edad,
case
when format((datediff(now(), empleado.fecha_nacimiento))/365, 0) <= 35 then 'junior'
when format((datediff(now(), empleado.fecha_nacimiento))/365, 0) between 36 and 40 then 'semi-senior'
when format((datediff(now(), empleado.fecha_nacimiento))/365, 0) > 40 then 'senior'
end as Categoria
from empleado
order by Edad;
-- rows: 25


/* 16. Calcular la cantidad y el promedio de cada forma de pago para los check-in.
Mostrar la forma de pago, cantidad y el promedio formateado con dos
decimales. */

select forma_pago.nombre as 'Forma de pago', count(checkin.id) as 'Cantidad pagos', format(avg(checkin.importe), 2) as Promedio from forma_pago
join checkin
on forma_pago.id = checkin.forma_pago_id
group by forma_pago.nombre;
-- rows: 4


/* 17. Calcular la edad de los empleados de Argentina. Mostrar el apellido, nombre y la
edad del empleado. */

select empleado.apellido, empleado.nombre, format((datediff(now(), empleado.fecha_nacimiento))/365, 0) as Edad from empleado
join pais
on empleado.pais_id = pais.id
where pais.nombre = 'Argentina';
-- rows: 17


/* 18. Calcular el importe total para los check-in realizados por el huésped 'Mercado
Joel'. Mostrar apellido, nombre, importe total y el país de origen. */

select huesped.apellido, huesped.nombre, sum(checkin.importe) as 'Import total', pais.nombre as Pais from checkin
join huesped
on checkin.huesped_id = huesped.id
join pais
on huesped.pais_id = pais.id
where huesped.apellido = 'Mercado' and huesped.nombre = 'Joel'
group by huesped.id;
-- rows: 1


/* 19. Listar la forma de pago empleada por cada servicio extra. Se debe mostrar el
nombre del servicio extra, nombre de la forma de pago y calcular la cantidad y
total recaudado. */

select servicio_extra.nombre as 'Servicio extra', forma_pago.nombre as 'Forma de pago', count(reserva.importe) as 'Cantidad pagos', sum(reserva.importe) as 'Total recaudado' from forma_pago
join reserva
on forma_pago.id = reserva.forma_pago_id
join servicio_extra
on reserva.servicio_extra_id = servicio_extra.id
group by servicio_extra.id, forma_pago.id
order by servicio_extra.id, forma_pago.id;
-- rows: 16


/* 20. Listar la forma de pago empleada para el servicio extra 'Sauna' y los huéspedes
correspondientes. Se debe mostrar el nombre del servicio extra, nombre de la
forma de pago, número del cliente e importe total. */

select servicio_extra.nombre as 'Servicio extra', forma_pago.nombre as 'Forma de pago', reserva.huesped_id as 'Numero del cliente', sum(reserva.importe) as 'Importe total' from forma_pago
join reserva
on forma_pago.id = reserva.forma_pago_id
join servicio_extra
on reserva.servicio_extra_id = servicio_extra.id
where servicio_extra.nombre = 'Sauna'
group by servicio_extra.nombre, forma_pago.nombre, reserva.huesped_id;
-- rows: 24
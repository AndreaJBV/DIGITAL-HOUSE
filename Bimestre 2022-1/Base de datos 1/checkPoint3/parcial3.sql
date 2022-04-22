-- ================= BASE DE DATOS I - PROYECTO - LA APROBACION ================== --
-- =============================== CHECKPOINT III ================================ --
-- Base de datos: la_aprobacion.sql
-- Equipo N°:
-- Integrantes: 
USE la_aprobacion;

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





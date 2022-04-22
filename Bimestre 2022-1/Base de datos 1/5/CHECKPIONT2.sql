/*Grupo 4 - Diego Roman, Marcela Mesa Leon, Leidy Tapias, Andrea Bedoya*/
use la_aprobacion;
-- punto 6
/*
Listar de manera ordenada (fecha de nacimiento), los empleados que no
pertenezcan al sector 3 y que la fecha de nacimiento sea mayor que 3/9/1989 o
igual a 7/11/1986.
*/
select sector_id != 3 from empleado
where fecha_nacimiento between '1989-09-03' and '1986-11-07'
order by fecha_nacimiento;
-- no devuelve registros


-- punto 7
/*
Listar los importes de las reservas con valor entre $10499,50 a $12000,00
(ordenarlos por el importe de mayor a menor).
*/
select * from reserva
where importe between '10499,50' and '12000,00'
order by importe desc;
-- cantidad de registros que devuelve: 96


-- punto 8
/*
Mostrar el quinto importe del check-in realizado con menor valor.
*/
select importe from checkin
order by importe desc
limit 5;
-- can

-- punto 9
/*
Mostrar el check-in con mayor importe. Este reporte debe contener el número
del check-in, fecha de entrada y el importe.
*/

select id, fecha_entrada, importe from checkin 
order by importe desc;

-- punto 10
/*
Mostrar las diez reservas con menor importe. Este reporte debe contener el
número de reserva, importe y el número del servicio.
*/

select id, importe, servicio_extra_id from reserva
order by importe asc
limit 10;
SELECT * FROM reservaciones;
-- 4. Consultar las próximas reservaciones para una fecha específica.
SELECT * FROM reservaciones where fecha = '2024-05-20';
-- 5. Cambiar la capacidad de una mesas
SELECT * FROM mesas;
UPDATE mesas SET capacidad = 6 WHERE id_mesa=1;


-- contar el numero de reservaciones por cliente

SELECT clientes.id_cliente, clientes.nombre, clientes.apellido, COUNT(reservaciones.id_reservacion) AS TotalReservaciones from clientes  
INNER JOIN reservaciones ON clientes.id_cliente = reservaciones.id_cliente
GROUP BY clientes.id_cliente;

SELECT * FROM reservaciones;

-- Listar todas las reservaciones que excedan 4 (numero de personas)

select * from reservaciones where numero_personas > 4;

select * from mesas;

SELECT * FROM mesas WHERE ubicacion = 'Centro' and capacidad > 3;

select * from clientes;

-- Listar las reservaciones junto la informacion del cliente

SELECT reservaciones.id_reservacion, clientes.nombre, clientes.apellido, reservaciones.fecha, reservaciones.hora FROM reservaciones 
INNER JOIN clientes ON reservaciones.id_cliente = clientes.id_cliente;

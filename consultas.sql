SELECT * FROM reservaciones;
-- 4. Consultar las próximas reservaciones para una fecha específica.
SELECT * FROM reservaciones where fecha = '2024-05-20';
-- 5. Cambiar la capacidad de una mesas
SELECT * FROM mesas;
UPDATE mesas SET capacidad = 6 WHERE id_mesa=1;

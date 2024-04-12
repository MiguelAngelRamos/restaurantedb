CREATE DATABASE picada_de_programador;
use picada_de_programador;
### Modelos de Datos.
-- 1. Cliente
--  - ID_Cliente
--  - Nombre
--  - Apellido
--  - Email
--  - Telefono
CREATE TABLE clientes (
	id_cliente INT auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    email varchar(100),
    telefono varchar(15)
);
-- 2. Mesas
--  - ID_Mesa
--  - Numero
--  - Capacidad
--  - Ubicación
CREATE TABLE mesas (
	id_mesa INT AUTO_INCREMENT PRIMARY KEY,
    numero INT,
    capacidad INT,
    ubicacion varchar(100)
);
-- 3. Reservaciónes
--  - ID_Reservacion
--  - ID_Cliente
--  - ID_Mesa
--  - Fecha
--  - Hora
--  - Numero_personas

CREATE TABLE reservaciones (
	id_reservacion INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_mesa INT,
    fecha DATE,
    hora TIME,
    numero_personas INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_mesa) REFERENCES mesas(id_mesa)
);
INSERT INTO reservaciones (id_cliente, id_mesa, fecha, hora, numero_personas) VALUES
(1, 1, '2024-05-20', '19:00:00', 3),
(2, 3, '2024-06-01', '20:00:00', 4),
(3, 4, '2024-06-01', '18:30:00', 6),
(4, 5, '2024-06-02', '21:00:00', 2),
(5, 6, '2024-06-02', '19:00:00', 8),
(6, 7, '2024-06-03', '20:00:00', 2),
(7, 8, '2024-06-03', '18:00:00', 4),
(1, 9, '2024-06-04', '19:30:00', 3);

select * from mesas;
select * from clientes;
INSERT INTO clientes (nombre, apellido, email, telefono) VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '1234567890'),
('Laura', 'Martínez', 'laura.mtz@example.com', '0987654321'),
('Carlos', 'Gomez', 'carlos.gomez@example.com', '2345678901'),
('Isabel', 'Díaz', 'isabel.diaz@example.com', '3456789012'),
('Antonio', 'Lopez', 'antonio.lopez@example.com', '4567890123'),
('Sofia', 'Castro', 'sofia.castro@example.com', '5678901234'),
('Lucas', 'Fernandez', 'lucas.fernandez@example.com', '6789012345'),
('Beatriz', 'Sanchez', 'beatriz.sanchez@example.com', '7890123456'),
('David', 'Jimenez', 'david.jimenez@example.com', '8901234567');


INSERT INTO mesas (numero, capacidad, ubicacion) VALUES
(101, 4, 'Ventana'),
(102, 2, 'Centro'),
(103, 4, 'Terraza'),
(104, 6, 'Jardín'),
(105, 2, 'Barra'),
(106, 8, 'Salón privado'),
(107, 2, 'Ventana'),
(108, 4, 'Centro'),
(109, 6, 'Terraza');




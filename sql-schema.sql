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


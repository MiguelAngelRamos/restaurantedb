**Contexto:**
Un restaurante desea implementar un sistema para gestionar las reservaciones de sus clientes. Este sistema debe permitir registrar a los clientes, gestionar las mesas disponibles en el restaurante y registrar las reservaciones hechas por los clientes. Además, cada reservación tendrá una fecha, una hora y el número de personas.

**Requisitos:**
1. Registrar clientes con su nombre, apellido, correo electrónico y teléfono.
2. Gestionar mesas con su número de mesa, capacidad y ubicación en el restaurante.
3. Registrar reservaciones, asociando cada una con un cliente y una mesa.
4. Consultar las próximas reservaciones para una fecha específica.
5. Cambiar la capacidad de una mesa

### Modelos de Datos.

1. Cliente
  - ID_Cliente
  - Nombre
  - Apellido
  - Email
  - Telefono

2. Mesa
  - ID_Mesa
  - Numero
  - Capacidad
  - Ubicación

3. Reservación
  - ID_Reservacion
  - ID_Cliente
  - ID_Mesa
  - Fecha
  - Hora
  - Numero_personas


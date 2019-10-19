CREATE DATABASE hoteleria;
USE hoteleria;

CREATE TABLE usuarios (
ci VARCHAR(9) PRIMARY KEY,
nombre VARCHAR(45)
);

CREATE TABLE habitaciones (
numeroHabitacion INTEGER PRIMARY KEY,
descripcion VARCHAR(100)
);

CREATE TABLE reservas (
numeroReserva INTEGER PRIMARY KEY,
ciUsuario VARCHAR(9),
numeroHabitacion INTEGER,
fechaInicio DATE,
fechaSalida DATE,
CONSTRAINT fkReservaCi FOREIGN KEY (ciUsuario) REFERENCES usuarios (ci),
CONSTRAINT fkReservaHabitacion FOREIGN KEY (numeroHabihabitacioneshabitacionestacion) REFERENCES habitaciones (numeroHabitacion)
);
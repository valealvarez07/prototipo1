CREATE DATABASE hoteleria;
USE hoteleria;

CREATE TABLE usuarios (
ci VARCHAR(9) PRIMARY KEY NOT NULL UNIQUE,
nombre VARCHAR(45) NOT NULL,
sexo ENUM('Hombre','Mujer'),
edad INTEGER,
telefono INTEGER NOT NULL,
direccion VARCHAR(100) NOT NULL,
administrador BOOLEAN NOT NULL,
contraseña VARCHAR(20)
);

CREATE TABLE habitaciones (
numeroHabitacion INTEGER PRIMARY KEY NOT NULL UNIQUE,
valoracion ENUM('1 Estrella','2 Estrellas','3 Estrellas','4 Estrellas','5 Estrellas') NOT NULL,
imagenes VARCHAR(250) NOT NULL,
descripcion TEXT(500),
tipoHabitacion ENUM('1 Persona','2 Personas','4 Personas','Matrimonial') NOT NULL,
precio INTEGER NOT NULL,
comodidades VARCHAR(250),
servicios VARCHAR(250),
tamaño INTEGER,
disponibilidad DATE NOT NULL
);

CREATE TABLE reservas (
numeroReserva INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
ciUsuario VARCHAR(9),
numeroHabitacion INTEGER,
fechaLlegada DATE NOT NULL,
fechaSalida DATE NOT NULL,
modoPago ENUM('Efectivo','Tarjeta') NOT NULL,
cantidadHuespedes INTEGER NOT NULL,

CONSTRAINT fkReservaCi FOREIGN KEY (ciUsuario) REFERENCES usuarios (ci),
CONSTRAINT fkReservaHabitacion FOREIGN KEY (numeroHabitacion) REFERENCES habitaciones (numeroHabitacion)
);
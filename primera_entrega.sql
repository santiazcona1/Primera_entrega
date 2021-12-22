create schema aerolinea;

use aerolinea;

CREATE TABLE Clientes (
id_cliente INT NOT NULL PRIMARY KEY,
nom_y_ap VARCHAR(50),
email VARCHAR(50),
telefono INT,
fecha_de_nac INT
);

CREATE TABLE Pasajes (
id_pasaje INT NOT NULL PRIMARY KEY,
id_cliente INT NOT NULL,
fecha_vuelo INT,
fecha_reserva INT,
origen VARCHAR(20),
destino VARCHAR(20),
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente));

CREATE TABLE Pilotos (
id_piloto INT NOT NULL PRIMARY KEY,
nom_y_ap VARCHAR(50),
fecha_de_nac INT,
anos_de_exp INT );

CREATE TABLE Tripulantes_de_cabina (
id_trip INT NOT NULL PRIMARY KEY,
nom_y_ap VARCHAR(50),
fecha_de_nac INT,
anos_de_exp INT ); 


CREATE TABLE Aviones (
id_avion INT NOT NULL PRIMARY KEY,
id_piloto INT NOT NULL,
marca VARCHAR(20),
modelo VARCHAR(20),
cant_asientos INT, 
FOREIGN KEY (id_piloto) REFERENCES Pilotos (id_piloto));

CREATE TABLE Vuelos
(
id_vuelo INT NOT NULL PRIMARY KEY,
id_cliente INT NOT NULL,
id_pasaje INT NOT NULL, 
id_avion INT NOT NULL,
id_piloto INT NOT NULL,
id_trip INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente),
FOREIGN KEY (id_avion) REFERENCES Aviones (id_avion),
FOREIGN KEY (id_piloto) REFERENCES Pilotos (id_piloto),
FOREIGN KEY (id_trip) REFERENCES Tripulantes_de_cabina (id_trip),
FOREIGN KEY (id_pasaje) REFERENCES Pasajes (id_pasaje)
);
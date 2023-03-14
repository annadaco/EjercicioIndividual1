DROP DATABASE IF EXISTS PARCHIS;
CREATE DATABASE PARCHIS;

USE PARCHIS;

CREATE TABLE Jugador (
	usuario VARCHAR(30),
	contraseña VARCHAR(30),
	puntuaciones INT,
	ID_partida INT,
	partidas_jugadas INT
)ENGINE=InnoDB;

CREATE TABLE Partidas (
	ID_partida INT,
	fecha DATETIME,
	duracion_partida TIME,
	cantidad_jugadores INT,
	ganador_partida VARCHAR(30),
)ENGINE=InnoDB;

CREATE TABLE Dados (
	ID_partida INT,
	dado1 INT,
	dado2 INT
)ENGINE=InnoDB;

CREATE TABLE Tablero (
	ID_partida INT,
	inicial_azul INT,
	inicial_rojo INT,
	inicial_verde INT,
	inicial_amarillo INT,
	casilla_segura_azul INT,
	casilla_segura_rojo INT,
	casilla_segura_verde INT,
	casilla_segura_amarillo INT,
	final_azul INT,
	final_rojo INT,
	final_verde INT,
	final_amarillo INT,
	casa_azul INT,
	casa_rojo INT,
	casa_verde INT,
	casa_amarillo INT,
	casillas_seguras INT 
)ENGINE=InnoDB;

CREATE TABLE Actualizacion_Tablero (
	ID_partida INT,
	posicion_azul INT,
	posicion_rojo INT,
	posicion_verde INT,
	posicion_amarillo INT
)ENGINE=InnoDB;


INSERT INTO Jugador VALUES ('Anna', '1762hg', 198, 1, 3);
INSERT INTO Jugador VALUES ('Sara', 'IOS198', 200, 1, 2);
INSERT INTO Jugador VALUES ('Juan', '987JKH', 60, 2, 5);
INSERT INTO Jugador VALUES ('Pedro', '234l0', 302, 1, 1);
INSERT INTO Jugador VALUES ('Sonia', 'hola972', 18, 2, 3);

INSERT INTO Partidas VALUES (1, '2023-12-04 19:00:23', '00:30:00', 3, 'Anna');
INSERT INTO Partidas VALUES (1, '2014-04.23 12:08:00', '00:45:00', 3, 'Sara');
INSERT INTO Partidas VALUES (2, '2019-09-12 09:56:01', '00:20:00', 2, 'Juan');
INSERT INTO Partidas VALUES (2, '2003-01-01 04:23:12', '01:09:00', 2, 'Sonia');

INSERT INTO Dados VALUES (1, 1, 3);
INSERT INTO Dados VALUES (1, 4, 2);
INSERT INTO Dados VALUES (2, 3, 5);
INSERT INTO Dados VALUES (2, 6, 6);

INSERT INTO Tablero VALUES (1, 1, 1, 1, 1, 7, 7, 7, 7, 1, 1, 1, 1, 4, 4, 4, 4, 1);
INSERT INTO Tablero VALUES (2, 1, 1, 1, 1, 7, 7, 7, 7, 1, 1, 1, 1, 4, 4, 4, 4, 1);

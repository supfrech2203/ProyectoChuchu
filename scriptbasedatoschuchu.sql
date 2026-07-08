CREATE DATABASE sunombredeproyecto;

USE sunombredeproyecto;

CREATE TABLE usuarios(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100),
	correo VARCHAR(200),
	password_hash VARCHAR(255),
	estado ENUM(
	'activo',
	'suspendido'
	)DEFAULT 'activo'
);

CREATE TABLE resenas(
	id_resena INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	puntuacion INT,
	comentario TEXT,
	
	FOREIGN KEY(id_usuario) 
	REFERENCES usuarios(id_usuario)
);


INSERT INTO usuarios (nombre, apellido, correo, password_hash) 
VALUES ('Edwin', 'Ticas', 'ed@gmail.com', '%/$#/""&$#');

INSERT INTO resenas ( id_usuario, puntuacion, comentario) 
VALUES (1, 5, 'Me gustó mucho el lugar');



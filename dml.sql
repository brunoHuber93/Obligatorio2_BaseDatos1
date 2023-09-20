GO
USE Obligatorio2;

-- INSTERT DE TABLA USUARIO---------------------------------
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('JPerez@gmail.com', 'Juan Pérez', 'juanito', 'pass1', 'M', '2000-01-01', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('MGomez@gmail.com', 'María Gómez', 'marygo', 'pass2', 'F', '1995-05-10', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('CLopez@gmail.com', 'Carlos López', 'carlitos', 'pass3', 'M', '1988-12-15', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('ATorres@hotmail.com', 'Ana Torres', 'anita', 'pass4', 'F', '1999-08-20', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('AMartinez@hotmail.com', 'Alejandro Martínez', 'ale', 'pass5', 'O', '1985-03-25', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('LSanchez@gmail.com', 'Laura Sánchez', 'lau', 'pass6', 'F', '1990-07-12', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('PRamirez@hotmail.com', 'Pedro Ramírez', 'pedrito', 'pass7', 'M', '2002-11-05', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('LFernandez@gmail.com', 'Luisa Fernández', 'luisita', 'pass8', 'F', '1998-02-18', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('JGutierrez@hotmail.com', 'Javier Gutiérrez', 'javi', 'pass9', 'M', '1997-09-30', '2023-01-01');
INSERT INTO Usuario (email, nombre, usuario, contraseña, sexo, fechaNac, fechaAlta) VALUES ('MCastro@hotmail.com', 'Marina Castro', 'marina', 'pass10', 'F', '1949-02-04', '2022-05-14');
 
-- INSERT DE TABLA CATEGORIA -------------------------------
INSERT INTO Categoria (nombreCategoria) VALUES ('Juegos');
INSERT INTO Categoria (nombreCategoria) VALUES ('IRL');
INSERT INTO Categoria (nombreCategoria) VALUES ('Música');
INSERT INTO Categoria (nombreCategoria) VALUES ('Esports');
INSERT INTO Categoria (nombreCategoria) VALUES ('Creative');

-- INSERT DE TABLA CONTENIDO -------------------------------
SET IDENTITY_INSERT Contenido ON;
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (1, 'Clasificatorias LOL', '2023-01-03', 'JPerez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (2, 'El misterio del reloj antiguo', '2022-07-15', 'MGomez@gmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (3, 'Melodías del pasado', '2023-04-27', 'CLopez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (4, 'La competencia épica', '2022-10-09', 'ATorres@hotmail.com', 4, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (5, 'Arte en movimiento', '2023-02-22', 'LSanchez@gmail.com', 5, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (6, 'Campeonato de FIFA', '2022-06-11', 'PRamirez@hotmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (7, 'Risas garantizadas', '2022-11-30', 'LFernandez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (8, 'Viaje en el tiempo', '2023-01-17', 'JGutierrez@hotmail.com', 3, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (9, 'Emociones desbordantes', '2022-09-05', 'MCastro@hotmail.com', 4, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (10, 'Magia en el aire', '2023-03-08', 'AMartinez@hotmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (11, 'Rock de los 90', '2022-05-17', 'JPerez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (12, 'Aventuras espaciales', '2022-03-01', 'JPerez@gmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (13, 'Misterios sin resolver', '2022-08-12', 'JPerez@gmail.com', 5, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (14, 'Batallas épicas', '2023-06-23', 'MGomez@gmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (15, 'Cocina creativa', '2022-11-05', 'MGomez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (16, 'Baile latino', '2023-02-10', 'CLopez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (17, 'Misterios antiguos', '2022-09-21', 'CLopez@gmail.com', 2, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (18, 'Deportes extremos', '2022-12-15', 'ATorres@hotmail.com', 4, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (19, 'Fotografía artística', '2023-01-25', 'ATorres@hotmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (20, 'Pintura en vivo', '2022-10-18', 'LSanchez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (21, 'Diseño de moda', '2023-03-20', 'LSanchez@gmail.com', 2, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (22, 'Rock clasico', '2023-03-27', 'JPerez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (23, 'Batalla épica en el reino perdido', '2023-01-01', 'JPerez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (24, 'Aventuras en el espacio sideral', '2023-02-14', 'MGomez@gmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (25, 'Concierto de rock en vivo', '2023-03-10', 'CLopez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (26, 'Carrera de autos extremos', '2023-01-23', 'ATorres@hotmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (27, 'Festival de música electrónica', '2023-02-18', 'LSanchez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (28, 'Misión de combate en el futuro', '2023-03-05', 'PRamirez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (29, 'Concierto de piano clásico', '2023-01-15', 'LFernandez@gmail.com', 3, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (30, 'Simulador de vuelo realista', '2023-02-28', 'JGutierrez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (31, 'Simulador de vuelo realista 2', '2022-06-28', 'JGutierrez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (32, 'Jugando con suscriptores', '2022-05-18', 'JGutierrez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (33, 'Charlando', '2022-09-11', 'LSanchez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (34, 'Tarde de CSGO', '2023-01-11', 'JGutierrez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (35, 'Campeonato de tennis', '2023-01-19', 'LFernandez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (36, 'Cocinando', '2023-06-08', 'LFernandez@gmail.com', 5, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (37, 'Concierto de música clásica', '2023-06-03', 'JPerez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (38, 'Partido de fútbol emocionante', '2023-06-04', 'MGomez@gmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (39, 'Fiesta de cumpleaños virtual', '2023-06-05', 'CLopez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (40, 'Exposición de arte contemporáneo', '2023-06-06', 'ATorres@hotmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (41, 'Concurso de baile', '2023-06-07', 'LSanchez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (42, 'Competencia de videojuegos', '2023-06-08', 'PRamirez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (43, 'Charla sobre desarrollo personal', '2023-06-09', 'LFernandez@gmail.com', 3, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (44, 'Videojuego 1', '2023-01-02', 'LFernandez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (45, 'Canción 2', '2023-01-10', 'LFernandez@gmail.com', 3, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (46, 'Juego de Mesa 1', '2023-01-07', 'JGutierrez@hotmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (47, 'Ping Pong en familia', '2023-01-20', 'JGutierrez@hotmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (48, 'Videojuego 2', '2023-01-12', 'JPerez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (49, 'Karaoke', '2023-01-25', 'JPerez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (50, 'Videojuego 3', '2023-01-05', 'ATorres@hotmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (51, 'Carreras', '2023-01-15', 'ATorres@hotmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (52, 'Afinando', '2023-01-18', 'ATorres@hotmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (53, 'Campeonato voley', '2023-01-30', 'MGomez@gmail.com', 1, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (54, 'Competencia pesca en bote', '2023-01-05', 'CLopez@gmail.com', 1, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (55, 'Creative 1', '2023-06-12', 'ATorres@hotmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (56, 'IRL 2', '2023-06-12', 'JPerez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (57, 'Creative 2', '2023-06-12', 'LFernandez@gmail.com', 5, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (58, 'Charlando 3', '2023-06-11', 'LFernandez@gmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (59, 'Caminando por Mvdeo.', '2023-06-12', 'ATorres@hotmail.com', 5, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (60, 'IRL 1', '2023-06-12', 'JGutierrez@hotmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (61, 'IRL 4', '2023-06-10', 'JGutierrez@hotmail.com', 2, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (62, 'Futbol 2022', '2022-07-05', 'LSanchez@gmail.com', 4, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (63, 'Partido de Futbol', '2023-03-15', 'ATorres@hotmail.com', 4, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (64, 'Festival viña', '2022-12-10', 'LSanchez@gmail.com', 3, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (65, 'Fiesta PDE', '2023-01-20', 'ATorres@hotmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (66, 'Futbol callejero', '2023-06-05', 'LFernandez@gmail.com', 4, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (67, 'Partido de Fútbol 2022', '2022-09-18', 'MGomez@gmail.com', 4, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (68, 'Fomentando el canto', '2023-05-10', 'MGomez@gmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (69, 'Torneo de Fútbol', '2022-11-27', 'MGomez@gmail.com', 4, 'Privado');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (70, 'Futbol Playa', '2023-04-08', 'PRamirez@hotmail.com', 3, 'Público');
INSERT INTO Contenido (codContenido, titulo, fechaEmision, emailUsuario, codCategoria, estado) VALUES (71, 'Futbol 2023', '2022-08-12', 'CLopez@gmail.com', 4, 'Privado');
SET IDENTITY_INSERT Contenido OFF;

--INSERT DE TABLA VISUALIZACION --------------------------------

INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (1, 'JPerez@gmail.com', '2022-01-03');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (2, 'MGomez@gmail.com', '2022-07-15');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (3, 'CLopez@gmail.com', '2022-04-27');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (4, 'ATorres@hotmail.com', '2022-10-09');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (5, 'LSanchez@gmail.com', '2023-02-22');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (6, 'PRamirez@hotmail.com', '2022-06-11');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (7, 'LFernandez@gmail.com', '2022-11-30');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (8, 'JGutierrez@hotmail.com', '2023-01-17');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (9, 'MCastro@hotmail.com', '2022-09-05');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (10, 'AMartinez@hotmail.com', '2023-03-08');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (11, 'JPerez@gmail.com', '2022-05-17');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (12, 'JPerez@gmail.com', '2022-02-01');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (13, 'MGomez@gmail.com', '2022-07-20');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (14, 'CLopez@gmail.com', '2022-04-30');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (15, 'ATorres@hotmail.com', '2022-10-15');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (16, 'LSanchez@gmail.com', '2023-02-25');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (17, 'PRamirez@hotmail.com', '2022-06-15');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (18, 'LFernandez@gmail.com', '2022-12-01');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (19, 'JGutierrez@hotmail.com', '2023-01-20');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (20, 'MCastro@hotmail.com', '2022-09-10');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (21, 'AMartinez@hotmail.com', '2023-03-15');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (5, 'JGutierrez@hotmail.com', '2023-02-22');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (10, 'LSanchez@gmail.com', '2023-03-08');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (42, 'LSanchez@gmail.com', '2023-06-08');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (29, 'AMartinez@hotmail.com', '2023-06-08');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (42, 'AMartinez@hotmail.com', '2023-02-18');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (56, 'LSanchez@gmail.com', '2023-06-12');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (58, 'JGutierrez@hotmail.com', '2023-06-11');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (59, 'JGutierrez@hotmail.com', '2023-06-12');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (57, 'MCastro@hotmail.com', '2023-06-12');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (62, 'MCastro@hotmail.com', '2022-07-05');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (63, 'CLopez@gmail.com', '2023-03-15');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (64, 'CLopez@gmail.com', '2022-12-10');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (65, 'AMartinez@hotmail.com', '2023-01-20');
INSERT INTO Visualizacion (codContenido, emailUsuario, fecha) VALUES (66, 'MCastro@hotmail.com', '2023-06-05');




--INSERT DE TABLA DONACION ------------------------------------

INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('JPerez@gmail.com', 'MGomez@gmail.com', '2022-01-03', '2022-01-05', 100.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('MGomez@gmail.com', 'CLopez@gmail.com', '2022-07-15', '2022-07-18', 50.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('CLopez@gmail.com', 'ATorres@hotmail.com', '2022-04-27', 75.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('ATorres@hotmail.com', 'LSanchez@gmail.com', '2022-10-09', 60.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('LSanchez@gmail.com', 'PRamirez@hotmail.com', '2023-02-22', 80.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('PRamirez@hotmail.com', 'LFernandez@gmail.com', '2022-06-11', '2022-06-13', 150.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('LFernandez@gmail.com', 'JGutierrez@hotmail.com', '2022-11-30', '2022-12-02', 200.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('JGutierrez@hotmail.com', 'MCastro@hotmail.com', '2023-01-17', 120.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('MCastro@hotmail.com', 'AMartinez@hotmail.com', '2022-09-05', 90.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('AMartinez@hotmail.com', 'JPerez@gmail.com', '2023-03-08', 110.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('MGomez@gmail.com', 'CLopez@gmail.com', '2023-06-10', '2023-06-12', 80.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('CLopez@gmail.com', 'ATorres@hotmail.com', '2023-06-10', 60.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('ATorres@hotmail.com', 'LSanchez@gmail.com', '2023-06-10', 90.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('LSanchez@gmail.com', 'PRamirez@hotmail.com', '2023-06-10', 70.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('PRamirez@hotmail.com', 'LFernandez@gmail.com', '2023-06-10', '2023-06-12', 120.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('LFernandez@gmail.com', 'JGutierrez@hotmail.com', '2023-06-10', '2023-06-12', 150.00, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('JGutierrez@hotmail.com', 'MCastro@hotmail.com', '2023-06-10', 80.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, monto, estadoDonacion) VALUES ('MCastro@hotmail.com', 'AMartinez@hotmail.com', '2023-06-10', 100.00, 'Pendiente');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('LFernandez@gmail.com', 'JGutierrez@hotmail.com', '2023-06-11', '2023-06-12',1820000, 'Aprobada');
INSERT INTO Donacion (emailOrigen, emailDestino, fechaCreacion, fechaAcreditacion, monto, estadoDonacion) VALUES ('MGomez@gmail.com', 'CLopez@gmail.com', '2023-06-11', '2023-06-13', 1570000, 'Aprobada');


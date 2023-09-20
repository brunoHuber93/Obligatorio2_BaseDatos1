  CREATE DATABASE Obligatorio2

GO
USE Obligatorio2

CREATE TABLE Usuario(
	email VARCHAR(30) NOT NULL CONSTRAINT PK_Email PRIMARY KEY,
	nombre VARCHAR(30) NOT NULL,
	usuario VARCHAR(10) NOT NULL CONSTRAINT AK_Usuario UNIQUE,
	contraseña VARCHAR(8) NOT NULL,
	sexo CHAR(1) NOT NULL  CONSTRAINT CK_Sexo CHECK (sexo IN('F', 'M', 'O')),
	fechaNac DATE NOT NULL,
	fechaAlta DATE NOT NULL,
	CONSTRAINT CK_FechaNac CHECK (fechaNac <= DATEADD(YEAR, -15,GETDATE()))
);



CREATE TABLE Categoria(
	codCategoria NUMERIC IDENTITY(1,1) CONSTRAINT PK_CodCategoria PRIMARY KEY,
	nombreCategoria VARCHAR(8) NOT NULL CONSTRAINT AK_NombreCategoria UNIQUE,
	CONSTRAINT CK_NombreCategoria CHECK (nombreCategoria IN ('Juegos', 'IRL', 'Música', 'Esports', 'Creative'))
);

CREATE TABLE Contenido(
	codContenido NUMERIC(4) NOT NULL CONSTRAINT PK_CodContenido PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	fechaEmision DATE NOT NULL,
	emailUsuario VARCHAR(30) NOT NULL,
	codCategoria NUMERIC,
	estado VARCHAR(7) NOT NULL,
	CONSTRAINT FK_EmailUsuario FOREIGN KEY (emailUsuario) REFERENCES Usuario (email),
	CONSTRAINT FK_CodCategoria FOREIGN KEY (codCategoria) REFERENCES Categoria (codCategoria),
	CONSTRAINT CK_Estado CHECK (estado IN('Público', 'Privado'))
);

CREATE TABLE Visualizacion(
	codContenido NUMERIC(4) NOT NULL,
	emailUsuario VARCHAR(30) NOT NULL,
	fecha DATE NOT NULL,
	CONSTRAINT PK_Visaulizacion PRIMARY KEY  (codContenido, emailUsuario, fecha),
	CONSTRAINT FK_EmailUsuario_Visualizacion FOREIGN KEY (emailUsuario) REFERENCES Usuario (email),
	CONSTRAINT FK_CodContenido_Visualizacion FOREIGN KEY (codContenido) REFERENCES Contenido(codContenido)
);

CREATE TABLE Donacion(
	emailOrigen VARCHAR(30) NOT NULL,
	emailDestino VARCHAR(30) NOT NULL,
	fechaCreacion DATE NOT NULL,
	fechaAcreditacion DATE DEFAULT NULL,
	monto DECIMAL(9,2) NOT NULL,
	estadoDonacion VARCHAR(9) NOT NULL,
	CONSTRAINT PK_Donacion PRIMARY KEY (emailOrigen, emailDestino, fechaCreacion),
	CONSTRAINT FK_EmailOrigen_Donacion FOREIGN KEY (emailOrigen) REFERENCES Usuario (email),
	CONSTRAINT FK_EmailDestino_Donacion FOREIGN KEY (emailDestino) REFERENCES Usuario (email),
	CONSTRAINT CK_Monto CHECK (monto > 0),
	CONSTRAINT CK_EstadoDonacion CHECK (estadoDonacion IN('Pendiente', 'Aprobada')),
	CONSTRAINT CK_FechaAcreditacion CHECK ((estadoDonacion = 'Pendiente' AND fechaAcreditacion IS NULL) OR (estadoDonacion = 'Aprobada' AND FechaAcreditacion IS NOT NULL)) --INDICO QUE SI EL ESTADO ES 'PENDIENTE', LA FECHA ES NULL
);



	




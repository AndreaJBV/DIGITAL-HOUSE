CREATE SCHEMA UniversoLector;

use UniversoLector;

CREATE TABLE Socio( Codigo INT NOT NULL,
DNI int NULL,
Apellido varchar(100) NULL,
Nombres varchar(100) NULL,
Direccion varchar(200) Null,
Localidad varchar(100) Null,
PRIMARY KEY (Codigo));

CREATE TABLE TelefonoxSocio( socioCodigo INT NOT NULL,
NroTelefono varchar(100) NULL,
Codigo_Socio INT NULL,
PRIMARY KEY (Codigo),
FOREIGN KEY (Codigo_Socio)
 REFERENCES Socio (Codigo)
 );

CREATE TABLE Autor( Codigo INT NOT NULL,
Apellido varchar(100) NULL,
Nombre varchar(100) NULL,
PRIMARY KEY (Codigo)
 );

CREATE TABLE Editorial( Codigo INT NOT NULL,
Razon_Social varchar(100) NULL,
telefono varchar(100) NULL,
PRIMARY KEY (Codigo)
 );

CREATE TABLE libro( Codigo INT NOT NULL,
ISBN varchar(13) NULL,
Titulo varchar(200) NULL,
Anio_Escritura date NULL,
Codigo_autor INT NOT NULL,
Anio_Edicion DATE NULL,
Codigo_Editorial INT NOT NULL,
PRIMARY KEY (Codigo),
FOREIGN KEY (Codigo_autor)
 REFERENCES Autor (Codigo),
 FOREIGN KEY (Codigo_Editorial)
 REFERENCES Editorial (Codigo)
 );

CREATE TABLE Prestamo( Codigo INT NOT NULL,
Codigo_socio INT NOT NULL,
Fecha datetime NULL,
Fecha_Devolucion date NULL,
Fecha_Tope date NULL,
PRIMARY KEY (Codigo),
FOREIGN KEY (Codigo_socio)
 REFERENCES Socio (Codigo)
 );
 
CREATE TABLE Volumen( Codigo INT NOT NULL,
Codigo_Libro INT NOT NULL,
Deteriorado tinyint NULL,
PRIMARY KEY (Codigo),
FOREIGN KEY (Codigo_Libro)
 REFERENCES Libro (Codigo)
 );

CREATE TABLE PrestamoxVolumen( Codigo INT NOT NULL,
Codigo_Prestamo INT NOT NULL,
Codigo_Volumen INT NOT NULL,
PRIMARY KEY (Codigo),
FOREIGN KEY (Codigo_Prestamo)
 REFERENCES Prestamo (Codigo),
 FOREIGN KEY (Codigo_Volumen)
 REFERENCES Volumen (Codigo)
 );

INSERT INTO `universolector`.`socio`
(`Codigo`,
`Apellido`,
`Nombres`,
`Direccion`,
`Localidad`, 
`DNI`)
VALUES
(1,
"PATRICIA",
"JOHNSON",
"28 MySQL Boulevard",
"QLD",
"3000000"),
(2,
"LINDA",
"WILLIAMS",
"23 Workhaven Lane",
"Alberta",
"2988800"),
(3,
"BARBARA",
"JONES",
"1411 Lillydale Drive",
"QLD",
"2500000"),
(4,
"LOIS",
"BUTLER",
"1688 Okara Way",
"Nothwest Border Prov",
"32980002"),
(5,
"ROBIN",
"HAYES",
"262 A Corua (La Corua) Parkway",
"Dhaka",
"2313909");

select * from socio;

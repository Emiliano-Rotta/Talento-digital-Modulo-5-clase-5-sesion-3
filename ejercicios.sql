-- Ejercicio 1: Base de Datos de "Biblioteca"
-- Crea una base de datos llamada biblioteca.
-- Conéctate a la base de datos biblioteca.

-- Crea 3 tablas:
-- Tabla libro: contiene los datos de los libros disponibles.
-- Tabla autor: contiene los datos de los autores.
-- Tabla prestamo: registra los préstamos de libros.
-- Instrucciones Específicas:

-- En la tabla libro:
-- titulo: un texto con máximo 20 caracteres.
-- cantidad_paginas: un número entero, no nulo.
-- fecha_publicacion: fecha de publicación, por defecto la fecha actual.

-- En la tabla autor:
-- nombre: un texto con máximo 20 caracteres.
-- nacionalidad: 
-- fecha_nacimiento: la fecha de nacimiento del autor, no nula.

-- En la tabla prestamo:
-- id_libro: un número que representa el libro prestado.
-- fecha_prestamo: la fecha en que se realizó el préstamo, por defecto la fecha actual.
-- devuelto: un valor booleano que indica si el libro fue devuelto, por defecto false.

CREATE DATABASE biblioteca;
\c biblioteca;
-- Tabla libro
CREATE TABLE libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(20) NOT NULL,
    cantidad_paginas INT NOT NULL,
    fecha_publicacion DATE DEFAULT CURRENT_DATE
);

-- Tabla autor
CREATE TABLE autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    nacionalidad VARCHAR(50),
    fecha_nacimiento DATE NOT NULL
);

-- Tabla prestamo
CREATE TABLE prestamo (
    id SERIAL PRIMARY KEY,
    id_libro INT NOT NULL,
    fecha_prestamo DATE DEFAULT CURRENT_DATE,
    devuelto BOOLEAN DEFAULT FALSE
);

-- Insertar datos en libro
INSERT INTO libro (titulo, cantidad_paginas, fecha_publicacion)
VALUES ('El Quijote', 500, '1605-01-16');

-- Insertar datos en autor
INSERT INTO autor (nombre, nacionalidad, fecha_nacimiento)
VALUES ('Miguel de Cervantes', 'Española', '1547-09-29');

-- Insertar datos en prestamo
INSERT INTO prestamo (id_libro, fecha_prestamo, devuelto)
VALUES (1, '2024-10-07', FALSE);


----------------------------------------------------------------------------------------------------
-- Ejercicio 2: Base de Datos de "Cine"
-- Crea una base de datos llamada cine.
CREATE DATABASE cine;
-- Conéctate a la base de datos cine.
\c cine;

-- Crea 3 tablas:
-- Tabla pelicula: registra las películas disponibles.
-- Tabla director: contiene la información de los directores.
-- Tabla sesion: registra las sesiones de cine.

-- Instrucciones Específicas:

-- En la tabla pelicula:
-- nombre: un texto con máximo 20 caracteres.
-- duracion_minutos: un número entero, no nulo.
-- fecha_estreno: fecha de estreno de la película, por defecto la fecha actual.
CREATE TABLE pelicula (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    duracion_minutos INT NOT NULL,
    fecha_estreno DATE DEFAULT CURRENT_DATE
);
INSERT INTO pelicula (nombre, duracion_minutos, fecha_estreno)
VALUES ('Inception', 148, '2010-07-16');


-- En la tabla director:
-- nombre: un texto con máximo 20 caracteres.
-- pais: un texto que no puede repetirse. (unique)
-- fecha_nacimiento: la fecha de nacimiento del director, no nula.
CREATE TABLE director (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    pais VARCHAR(50) UNIQUE,
    fecha_nacimiento DATE NOT NULL
);
INSERT INTO director (nombre, pais, fecha_nacimiento)
VALUES ('Christopher Nolan', 'Inglesa', '1970-07-30');


-- En la tabla sesion:
-- id_pelicula: un número que representa la película que se proyecta.
-- hora_inicio: la fecha y hora de inicio de la sesión, no nula.
-- en_cartelera: un valor booleano que indica si la película sigue en cartelera, por defecto true.
CREATE TABLE sesion (
    id SERIAL PRIMARY KEY,
    id_pelicula INT NOT NULL,
    hora_inicio TIMESTAMP NOT NULL,
    en_cartelera BOOLEAN DEFAULT TRUE
);
INSERT INTO sesion (id_pelicula, hora_inicio, en_cartelera)
VALUES (1, '2024-10-10 18:00:00', TRUE);


----------------------------------------------------------------------------------------------
-- Ejercicio 3: Base de Datos de "Tienda Online"
-- Crea una base de datos llamada tienda_online.
CREATE DATABASE tienda_online;

-- Conéctate a la base de datos tienda_online.
\c tienda_online;

-- Crea 3 tablas:
-- Tabla producto: almacena los productos a la venta.
-- Tabla cliente: almacena los datos de los clientes.
-- Tabla orden: almacena los pedidos realizados.

-- Instrucciones Específicas:
-- En la tabla producto:
-- nombre: un texto con máximo 30 caracteres.
-- precio: un número decimal que representa el precio del producto, no nulo.
-- fecha_ingreso: la fecha en la que se añadió el producto, por defecto la fecha actual.
CREATE TABLE producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE DEFAULT CURRENT_DATE
);
INSERT INTO producto (nombre, precio, fecha_ingreso)
VALUES ('Laptop', 999.99, '2024-10-01');

-- En la tabla cliente:
-- nombre: un texto con máximo 20 caracteres.
-- email: un texto que no puede repetirse.
-- fecha_registro: la fecha en la que el cliente se registró, no nula.
CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE,
    fecha_registro DATE NOT NULL
);
INSERT INTO cliente (nombre, email, fecha_registro)
VALUES ('Juan Pérez', 'juan.perez@mail.com', '2024-10-07');

-- En la tabla orden:
-- id_cliente: un número que identifica al cliente que realizó la orden.
-- fecha_orden: la fecha en que se realizó la orden, por defecto la fecha actual.
-- enviada: un valor booleano que indica si la orden fue enviada, por defecto false.
CREATE TABLE orden (
    id SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_orden DATE DEFAULT CURRENT_DATE,
    enviada BOOLEAN DEFAULT FALSE
);
INSERT INTO orden (id_cliente, fecha_orden, enviada)
VALUES (1, '2024-10-07', FALSE);

--------------------------------------------------------------------------------------------


-- Ejercicio 4: Base de Datos de "Escuela"
-- Crea una base de datos llamada escuela.
CREATE DATABASE escuela;

-- Conéctate a la base de datos escuela.
\c escuela;

-- Crea 3 tablas:
-- Tabla curso: almacena los cursos disponibles.
-- Tabla estudiante: almacena la información de los estudiantes.
-- Tabla matricula: registra las matrículas realizadas.

-- Instrucciones Específicas:

-- En la tabla curso:
-- nombre: un texto con máximo 20 caracteres.
-- creditos: un número entero que representa los créditos del curso, no nulo.
-- fecha_creacion: fecha en la que se creó el curso, por defecto la fecha actual.
CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    creditos INT NOT NULL,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);
INSERT INTO curso (nombre, creditos, fecha_creacion)
VALUES ('Matemáticas', 4, '2024-09-01');


-- En la tabla estudiante:
-- nombre: un texto con máximo 20 caracteres.
-- numero_identificacion: un número que no puede repetirse.
-- fecha_nacimiento: la fecha de nacimiento del estudiante, no nula.
CREATE TABLE estudiante (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    numero_identificacion INT UNIQUE,
    fecha_nacimiento DATE NOT NULL
);
INSERT INTO estudiante (nombre, numero_identificacion, fecha_nacimiento)
VALUES ('María González', 12345678, '2005-03-15');

-- En la tabla matricula:
-- id_estudiante: un número que identifica al estudiante que realizó la matrícula.
-- fecha_matricula: la fecha en que se realizó la matrícula, por defecto la fecha actual.
-- estado: un valor booleano que indica si la matrícula está activa, por defecto true.
CREATE TABLE matricula (
    id SERIAL PRIMARY KEY,
    id_estudiante INT NOT NULL,
    fecha_matricula DATE DEFAULT CURRENT_DATE,
    estado BOOLEAN DEFAULT TRUE
);
INSERT INTO matricula (id_estudiante, fecha_matricula, estado)
VALUES (1, '2024-10-07', TRUE);

------------------------------------------------------------------------
------------------------------------------------------------------------

-- Ejercicio 1: Sistema de Hospital
-- Consigna
-- Un hospital quiere organizar los datos de los pacientes, doctores, y citas. Crea las tablas correspondientes y establece las siguientes relaciones:
-- Cada paciente tiene un único doctor de cabecera, y cada doctor puede tener múltiples pacientes asignados.
-- Un paciente puede tener múltiples citas, pero una cita solo pertenece a un paciente.
-- Cada cita puede involucrar a varios doctores, y un doctor puede estar involucrado en varias citas.
-- Tablas a crear: pacientes, doctores, citas, y una tabla intermedia para la relación entre doctores y citas.

CREATE TABLE doctores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad VARCHAR(100),
    telefono VARCHAR(15)
);

CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    id_doctor_cabecera INT,
    FOREIGN KEY (id_doctor_cabecera) REFERENCES doctores(id)
);

CREATE TABLE citas (
    id SERIAL PRIMARY KEY,
    fecha DATE,
    hora TIME,
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id)
);

CREATE TABLE doctores_citas (
    id_doctor INT,
    id_cita INT,
    PRIMARY KEY (id_doctor, id_cita),
    FOREIGN KEY (id_doctor) REFERENCES doctores(id),
    FOREIGN KEY (id_cita) REFERENCES citas(id)
);


-----------------------------------------------------------------------------------------

-- Ejercicio 2: Sistema de Universidad
-- Consigna
-- Una universidad quiere registrar los datos de los estudiantes, cursos, y profesores. Crea las tablas correspondientes y establece las siguientes relaciones:
-- Un profesor puede enseñar varios cursos, pero un curso solo puede tener un profesor.
-- Un estudiante puede estar inscrito en varios cursos, y un curso puede tener varios estudiantes inscritos.
-- Cada estudiante tiene un único tutor académico(tabla profesores), y cada tutor puede estar asignado a varios estudiantes.

-- Tablas a crear: estudiantes, profesores, cursos, y una tabla intermedia para la relación entre estudiantes y cursos.


---------------------------------------------------------------------------------------------

-- Ejercicio 3: Sistema de Biblioteca
-- Consigna
-- Una biblioteca quiere organizar los datos de los libros, categorías, autores y préstamos. Crea las tablas correspondientes y establece las siguientes relaciones:
-- Un libro solo puede pertenecer a una categoría, pero una categoría puede tener múltiples libros.
-- Un libro puede ser escrito por varios autores, y un autor puede haber escrito varios libros.
-- Un usuario puede pedir prestados varios libros, pero un préstamo pertenece solo a un libro y a un usuario.

-- Tablas a crear: libros, categorías, autores, préstamos, usuarios, y una tabla intermedia para la relación entre autores y libros.

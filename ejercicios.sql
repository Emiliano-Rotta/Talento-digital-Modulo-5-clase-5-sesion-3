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



-- Ejercicio 2: Base de Datos de "Cine"
-- Crea una base de datos llamada cine.
-- Conéctate a la base de datos cine.

-- Crea 3 tablas:
-- Tabla pelicula: registra las películas disponibles.
-- Tabla director: contiene la información de los directores.
-- Tabla sesion: registra las sesiones de cine.

-- Instrucciones Específicas:

-- En la tabla pelicula:
-- nombre: un texto con máximo 20 caracteres.
-- duracion_minutos: un número entero, no nulo.
-- fecha_estreno: fecha de estreno de la película, por defecto la fecha actual.

-- En la tabla director:
-- nombre: un texto con máximo 20 caracteres.
-- pais: un texto que no puede repetirse. (unique)
-- fecha_nacimiento: la fecha de nacimiento del director, no nula.

-- En la tabla sesion:
-- id_pelicula: un número que representa la película que se proyecta.
-- hora_inicio: la fecha y hora de inicio de la sesión, no nula.
-- en_cartelera: un valor booleano que indica si la película sigue en cartelera, por defecto true.



-- Ejercicio 3: Base de Datos de "Tienda Online"
-- Crea una base de datos llamada tienda_online.
-- Conéctate a la base de datos tienda_online.

-- Crea 3 tablas:
-- Tabla producto: almacena los productos a la venta.
-- Tabla cliente: almacena los datos de los clientes.
-- Tabla orden: almacena los pedidos realizados.

-- Instrucciones Específicas:
-- En la tabla producto:
-- nombre: un texto con máximo 30 caracteres.
-- precio: un número decimal que representa el precio del producto, no nulo.(investigue en google como se hace para poner un numero decimal)
-- fecha_ingreso: la fecha en la que se añadió el producto, por defecto la fecha actual.

-- En la tabla cliente:
-- nombre: un texto con máximo 20 caracteres.
-- email: un texto que no puede repetirse.
-- fecha_registro: la fecha en la que el cliente se registró, no nula.

-- En la tabla orden:
-- id_cliente: un número que identifica al cliente que realizó la orden.
-- fecha_orden: la fecha en que se realizó la orden, por defecto la fecha actual.
-- enviada: un valor booleano que indica si la orden fue enviada, por defecto false.




-- Ejercicio 4: Base de Datos de "Escuela"
-- Crea una base de datos llamada escuela.
-- Conéctate a la base de datos escuela.

-- Crea 3 tablas:
-- Tabla curso: almacena los cursos disponibles.
-- Tabla estudiante: almacena la información de los estudiantes.
-- Tabla matricula: registra las matrículas realizadas.

-- Instrucciones Específicas:

-- En la tabla curso:
-- nombre: un texto con máximo 20 caracteres.
-- creditos: un número entero que representa los créditos del curso, no nulo.
-- fecha_creacion: fecha en la que se creó el curso, por defecto la fecha actual.

-- En la tabla estudiante:
-- nombre: un texto con máximo 20 caracteres.
-- numero_identificacion: un número que no puede repetirse.
-- fecha_nacimiento: la fecha de nacimiento del estudiante, no nula.

-- En la tabla matricula:
-- id_estudiante: un número que identifica al estudiante que realizó la matrícula.
-- fecha_matricula: la fecha en que se realizó la matrícula, por defecto la fecha actual.
-- estado: un valor booleano que indica si la matrícula está activa, por defecto true.

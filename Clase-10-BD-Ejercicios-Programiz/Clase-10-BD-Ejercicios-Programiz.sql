
-- Ejercicios de SQL Básico para la Clase 10

-- 1. Crear una tabla de estudiantes con campos id, nombre y edad.
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT
);

-- 2. Insertar algunos registros en la tabla estudiantes.
INSERT INTO estudiantes (nombre, edad) VALUES ('Juan', 22);
INSERT INTO estudiantes (nombre, edad) VALUES ('María', 24);
INSERT INTO estudiantes (nombre, edad) VALUES ('Carlos', 20);

-- 3. Consultar todos los registros de estudiantes.
SELECT * FROM estudiantes;

-- 4. Filtrar estudiantes mayores de 21 años.
SELECT * FROM estudiantes WHERE edad > 21;

-- 5. Modificar la edad de un estudiante.
UPDATE estudiantes SET edad = 23 WHERE nombre = 'Carlos';

-- 6. Eliminar un estudiante de la tabla.
DELETE FROM estudiantes WHERE nombre = 'María';

-- 7. Crear una tabla de cursos con campos id_curso, nombre y duración.
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    duracion INT
);

-- 8. Insertar algunos cursos en la tabla.
INSERT INTO cursos (nombre, duracion) VALUES ('Matemáticas', 3);
INSERT INTO cursos (nombre, duracion) VALUES ('Inglés', 2);
INSERT INTO cursos (nombre, duracion) VALUES ('Historia', 1);

-- 9. Consultar todos los cursos ofrecidos.
SELECT * FROM cursos;

-- 10. Unir las tablas estudiantes y cursos (simulación de una relación).
-- Aquí podemos simular una relación entre estudiantes y cursos usando una tabla intermedia (no creada en este caso). 
-- Solo es un ejemplo para ilustrar el uso de JOIN en caso de que se agregue una tabla de inscripción.
SELECT estudiantes.nombre, cursos.nombre FROM estudiantes, cursos;

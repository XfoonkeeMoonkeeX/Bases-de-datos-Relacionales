-- Crear la base de datos para esta clase
CREATE DATABASE IF NOT EXISTS escuela;
USE escuela;

-- Crear tabla de estudiantes
CREATE TABLE IF NOT EXISTS estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    edad INT,
    correo VARCHAR(100) UNIQUE
);

-- Crear tabla de cursos
CREATE TABLE IF NOT EXISTS cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    duracion INT -- en semanas
);

-- Crear tabla de inscripciones
CREATE TABLE IF NOT EXISTS inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Insertar datos en la tabla de estudiantes
INSERT INTO estudiantes (nombre, apellido, edad, correo) VALUES
('Juan', 'Pérez', 21, 'juan.perez@example.com'),
('Ana', 'Gómez', 22, 'ana.gomez@example.com'),
('Luis', 'Martínez', 23, 'luis.martinez@example.com');

-- Insertar datos en la tabla de cursos
INSERT INTO cursos (nombre_curso, duracion) VALUES
('Matemáticas', 12),
('Historia', 10),
('Física', 14);

-- Insertar datos en la tabla de inscripciones
INSERT INTO inscripciones (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-05'),
(3, 3, '2024-09-07'),
(1, 3, '2024-09-10');

-- Consultas ejemplo

-- Obtener todos los estudiantes y los cursos en los que están inscritos
SELECT e.nombre, e.apellido, c.nombre_curso
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id_curso;

-- Obtener el número total de inscripciones por curso
SELECT c.nombre_curso, COUNT(i.id_inscripcion) AS total_inscripciones
FROM cursos c
LEFT JOIN inscripciones i ON c.id_curso = i.id_curso
GROUP BY c.id_curso;

-- Obtener los estudiantes con más de 1 inscripción
SELECT e.nombre, e.apellido, COUNT(i.id_inscripcion) AS total_inscripciones
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
GROUP BY e.id_estudiante
HAVING COUNT(i.id_inscripcion) > 1;

-- Obtener el curso con mayor duración
SELECT nombre_curso, duracion
FROM cursos
ORDER BY duracion DESC
LIMIT 1;

-- Consultar el promedio de edad de los estudiantes
SELECT AVG(edad) AS promedio_edad
FROM estudiantes;

-- Obtener estudiantes que se inscribieron en 'Física' y tienen más de 22 años
SELECT e.nombre, e.apellido
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id_curso
WHERE c.nombre_curso = 'Física' AND e.edad > 22;

-- Subconsulta: Obtener los estudiantes con inscripciones en más de 1 curso
SELECT nombre, apellido
FROM estudiantes
WHERE id_estudiante IN (
    SELECT id_estudiante
    FROM inscripciones
    GROUP BY id_estudiante
    HAVING COUNT(id_curso) > 1
);
Con estos archivos tendrás tanto el README.md con una descripción detallada de la clase como el archivo Clase-08-BD-Sentencias.sql que contiene las sentencias SQL para crear las tablas y realizar algunas consultas importantes. Puedes modificar y agregar más consultas según lo que necesites practicar.
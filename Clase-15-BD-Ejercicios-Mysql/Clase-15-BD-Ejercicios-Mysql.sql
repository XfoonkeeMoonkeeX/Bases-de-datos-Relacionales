-- Ejercicio 1: Crear la base de datos llamada "universidad"
CREATE DATABASE universidad;

-- Ejercicio 2: Usar la base de datos "universidad"
USE universidad;

-- Ejercicio 3: Crear tabla "estudiantes" con id, nombre, edad y carrera
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    carrera VARCHAR(50)
);

-- Ejercicio 4: Crear tabla "cursos" con id, nombre del curso, y duración en semanas
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    duracion INT
);

-- Ejercicio 5: Crear tabla "inscripciones" con id, id_estudiante, id_curso, fecha
CREATE TABLE inscripciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha DATE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

-- Ejercicio 6: Insertar estudiantes en la tabla "estudiantes"
INSERT INTO estudiantes (nombre, edad, carrera)
VALUES
('Juan Pérez', 20, 'Ingeniería Informática'),
('María García', 22, 'Matemáticas'),
('Carlos López', 21, 'Física');

-- Ejercicio 7: Insertar cursos en la tabla "cursos"
INSERT INTO cursos (nombre, duracion)
VALUES
('Bases de Datos', 12),
('Algoritmos y Estructuras de Datos', 10),
('Cálculo Diferencial', 8);

-- Ejercicio 8: Insertar inscripciones en la tabla "inscripciones"
INSERT INTO inscripciones (id_estudiante, id_curso, fecha)
VALUES
(1, 1, '2024-09-01'),
(1, 2, '2024-09-01'),
(2, 1, '2024-09-02'),
(3, 3, '2024-09-03');

-- Ejercicio 9: Consultar todos los estudiantes
SELECT * FROM estudiantes;

-- Ejercicio 10: Consultar todos los cursos
SELECT * FROM cursos;

-- Ejercicio 11: Consultar las inscripciones de los estudiantes
SELECT i.id AS inscripcion_id, e.nombre AS estudiante, c.nombre AS curso, i.fecha 
FROM inscripciones i
INNER JOIN estudiantes e ON i.id_estudiante = e.id
INNER JOIN cursos c ON i.id_curso = c.id;

-- Ejercicio 12: Consultar todos los cursos en los que está inscrito un estudiante específico
SELECT c.nombre AS curso
FROM inscripciones i
INNER JOIN cursos c ON i.id_curso = c.id
WHERE i.id_estudiante = 1;

-- Ejercicio 13: Consultar todos los estudiantes inscritos en un curso específico
SELECT e.nombre AS estudiante
FROM inscripciones i
INNER JOIN estudiantes e ON i.id_estudiante = e.id
WHERE i.id_curso = 1;

-- Ejercicio 14: Consultar los estudiantes que han inscrito más de 1 curso
SELECT e.nombre, COUNT(i.id_curso) AS total_cursos
FROM inscripciones i
INNER JOIN estudiantes e ON i.id_estudiante = e.id
GROUP BY e.nombre
HAVING COUNT(i.id_curso) > 1;

-- Ejercicio 15: Consultar el número total de estudiantes inscritos en cada curso
SELECT c.nombre AS curso, COUNT(i.id_estudiante) AS total_estudiantes
FROM inscripciones i
INNER JOIN cursos c ON i.id_curso = c.id
GROUP BY c.nombre;

-- Ejercicio 16: Consultar la duración promedio de los cursos
SELECT AVG(c.duracion) AS duracion_promedio
FROM cursos c;

-- Ejercicio 17: Actualizar la duración de un curso específico
UPDATE cursos
SET duracion = 14
WHERE id = 1;

-- Ejercicio 18: Eliminar una inscripción específica
DELETE FROM inscripciones WHERE id = 1;

-- Ejercicio 19: Crear un índice en la tabla "inscripciones" para optimizar las búsquedas por fecha
CREATE INDEX idx_fecha_inscripcion ON inscripciones(fecha);

-- Ejercicio 20: Consultar todas las inscripciones con el índice aplicado
SELECT i.id AS inscripcion_id, e.nombre AS estudiante, c.nombre AS curso, i.fecha 
FROM inscripciones i
INNER JOIN estudiantes e ON i.id_estudiante = e.id
INNER JOIN cursos c ON i.id_curso = c.id
WHERE i.fecha > '2024-09-01';

-- Ejercicio 21: Eliminar un estudiante específico y sus inscripciones asociadas
DELETE FROM estudiantes WHERE id = 3;
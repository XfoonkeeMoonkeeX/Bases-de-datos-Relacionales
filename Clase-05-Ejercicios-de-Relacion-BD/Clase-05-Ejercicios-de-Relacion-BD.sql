-- Clase 05: Ejercicios de Relaciones en Bases de Datos
-- Este archivo crea las bases de datos y las tablas necesarias para los ejercicios de relaciones.

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS EjerciciosRelacion;
USE EjerciciosRelacion;

-- 1. Crear tabla de Empleados (Relación 1:1 con Dirección)
CREATE TABLE IF NOT EXISTS Empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(50),
    salario DECIMAL(10, 2)
);

-- 2. Crear tabla de Direcciones (Relación 1:1 con Empleados)
CREATE TABLE IF NOT EXISTS Direcciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    calle VARCHAR(100),
    ciudad VARCHAR(50),
    codigo_postal VARCHAR(10),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(id)
);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, puesto, salario) VALUES
('Juan Pérez', 'Gerente', 5000),
('Ana Gómez', 'Asistente', 3000),
('Carlos Martínez', 'Desarrollador', 4000);

-- Insertar datos en la tabla Direcciones
INSERT INTO Direcciones (empleado_id, calle, ciudad, codigo_postal) VALUES
(1, 'Av. Siempre Viva 123', 'Ciudad A', '12345'),
(2, 'Calle Ficticia 456', 'Ciudad B', '67890'),
(3, 'Calle Sol 789', 'Ciudad A', '11223');

-- 3. Crear tabla de Clientes (Relación 1:N con Pedidos)
CREATE TABLE IF NOT EXISTS Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);

-- 4. Crear tabla de Pedidos (Relación 1:N con Clientes)
CREATE TABLE IF NOT EXISTS Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, telefono) VALUES
('Pedro López', '123-456789'),
('Lucía Fernández', '987-654321');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha, total) VALUES
(1, '2024-11-01', 150.75),
(1, '2024-11-10', 200.50),
(2, '2024-11-12', 350.00);

-- 5. Crear tabla de Estudiantes (Relación M:N con Cursos)
CREATE TABLE IF NOT EXISTS Estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT
);

-- 6. Crear tabla de Cursos (Relación M:N con Estudiantes)
CREATE TABLE IF NOT EXISTS Cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- 7. Crear tabla intermedia Estudiantes_Cursos (para la relación M:N)
CREATE TABLE IF NOT EXISTS Estudiantes_Cursos (
    estudiante_id INT,
    curso_id INT,
    PRIMARY KEY (estudiante_id, curso_id),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

-- Insertar datos en la tabla Estudiantes
INSERT INTO Estudiantes (nombre, edad) VALUES
('Miguel Sánchez', 20),
('Laura Rodríguez', 22);

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (nombre, descripcion) VALUES
('Matemáticas', 'Curso de matemáticas avanzadas'),
('Física', 'Curso de física moderna');

-- Insertar datos en la tabla intermedia Estudiantes_Cursos
INSERT INTO Estudiantes_Cursos (estudiante_id, curso_id) VALUES
(1, 1),  -- Miguel Sánchez inscrito en Matemáticas
(1, 2),  -- Miguel Sánchez inscrito en Física
(2, 1);  -- Laura Rodríguez inscrita en Matemáticas

Explicación del SQL:
Base de Datos y Tablas:

Se crea la base de datos EjerciciosRelacion y luego se utilizan tablas relacionadas.
Empleados y Direcciones tienen una relación uno a uno (1:1): un empleado tiene una única dirección.
Clientes y Pedidos tienen una relación uno a muchos (1
): un cliente puede realizar múltiples pedidos, pero cada pedido pertenece a un único cliente.
Estudiantes y Cursos tienen una relación muchos a muchos (M
), y se usa una tabla intermedia Estudiantes_Cursos para manejar esta relación.
Datos de Ejemplo:

Se insertan datos de ejemplo para Empleados, Direcciones, Clientes, Pedidos, Estudiantes y Cursos.
Los estudiantes están inscritos en cursos a través de la tabla intermedia Estudiantes_Cursos, lo que permite registrar relaciones de muchos a muchos.
Ejercicios SQL:
Consultas para probar las relaciones:
1:1: Obtener la dirección de un empleado específico.
1
: Listar todos los pedidos realizados por un cliente.
M
: Listar los cursos en los que un estudiante está inscrito.
sql
Copiar código
-- Consultar la dirección de un empleado específico (relación 1:1)
SELECT e.nombre, d.calle, d.ciudad, d.codigo_postal
FROM Empleados e
JOIN Direcciones d ON e.id = d.empleado_id
WHERE e.nombre = 'Juan Pérez';

-- Consultar todos los pedidos de un cliente específico (relación 1:N)
SELECT c.nombre AS cliente, p.fecha, p.total
FROM Clientes c
JOIN Pedidos p ON c.id = p.cliente_id
WHERE c.nombre = 'Pedro López';

-- Consultar todos los cursos de un estudiante específico (relación M:N)
SELECT es.nombre AS estudiante, cu.nombre AS curso
FROM Estudiantes es
JOIN Estudiantes_Cursos ec ON es.id = ec.estudiante_id
JOIN Cursos cu ON ec.curso_id = cu.id
WHERE es.nombre = 'Miguel Sánchez';
Este archivo SQL cubre la creación de las bases de datos y las relaciones entre las tablas, así como algunos ejercicios básicos para practicar con las relaciones en SQL.







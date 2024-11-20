-- Clase 06: Ejercicios prácticos de bases de datos
-- Este archivo contiene los ejercicios de inserción, actualización, eliminación y consultas.

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS EjerciciosPracticos;
USE EjerciciosPracticos;

-- Crear tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    cantidad INT
);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, categoria, precio, cantidad) VALUES
('Laptop', 'Electrónica', 899.99, 20),
('Smartphone', 'Electrónica', 499.99, 50),
('Camiseta', 'Ropa', 19.99, 100),
('Zapatos', 'Ropa', 39.99, 75);

-- 1. Ejercicio: Insertar un nuevo producto
-- Insertar un nuevo producto en la tabla
INSERT INTO Productos (nombre, categoria, precio, cantidad)
VALUES ('Mochila', 'Accesorios', 29.99, 30);

-- 2. Ejercicio: Actualizar datos de un producto
-- Actualizar el precio de un producto específico
UPDATE Productos
SET precio = 799.99
WHERE nombre = 'Laptop';

-- 3. Ejercicio: Eliminar un producto
-- Eliminar un producto específico de la tabla
DELETE FROM Productos
WHERE nombre = 'Camiseta';

-- 4. Ejercicio: Consultas básicas
-- Seleccionar todos los productos con precio mayor a 30
SELECT * FROM Productos
WHERE precio > 30;

-- 5. Ejercicio: Consultas avanzadas
-- Obtener el total de productos en cada categoría
SELECT categoria, SUM(cantidad) AS total_productos
FROM Productos
GROUP BY categoria;

-- 6. Ejercicio: JOIN entre dos tablas
-- Crear una tabla de Ventas y asociar ventas con productos
CREATE TABLE IF NOT EXISTS Ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT,
    fecha DATE,
    cantidad INT,
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (producto_id, fecha, cantidad) VALUES
(1, '2024-11-01', 5),
(2, '2024-11-02', 3),
(4, '2024-11-03', 2);

-- Consultar ventas y productos utilizando JOIN
SELECT p.nombre, v.fecha, v.cantidad
FROM Ventas v
JOIN Productos p ON v.producto_id = p.id;

Explicación del SQL:
Creación de la base de datos y tablas:
Se crea la base de datos EjerciciosPracticos y se crea la tabla Productos para almacenar datos de productos, con campos como nombre, categoria, precio y cantidad.
Ejercicios:
Insertar datos: Se insertan datos en la tabla Productos y se incluyen ejercicios para agregar nuevos registros.
Actualizar datos: Se actualiza el precio de un producto específico.
Eliminar datos: Se elimina un producto de la tabla.
Consultas básicas: Se seleccionan productos con un precio mayor a 30.
Consultas avanzadas: Se agrupan los productos por categoría y se calcula el total de productos por categoría.
Uso de JOIN: Se crea una tabla de Ventas para simular un escenario de ventas, y luego se realizan consultas utilizando JOIN para combinar datos de ambas tablas.
Este archivo SQL cubre varios aspectos prácticos de la manipulación de datos en bases de datos y está diseñado para que los estudiantes practiquen operaciones comunes y avanzadas de bases de datos.
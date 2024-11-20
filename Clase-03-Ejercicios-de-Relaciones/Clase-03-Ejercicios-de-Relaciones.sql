-- Archivo SQL para la subcarpeta "clase-03-materia-y-ejercicios"
-- Este archivo contiene ejercicios prácticos de bases de datos y SQL.

-- Crear una base de datos llamada 'clase03_db'
CREATE DATABASE IF NOT EXISTS clase03_db;

-- Usar la base de datos creada
USE clase03_db;

-- Crear una tabla 'clientes' con los campos id, nombre, correo y fecha de registro
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Crear una tabla 'productos' para almacenar información de productos
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    cantidad_stock INT DEFAULT 0
);

-- Insertar algunos registros en la tabla 'clientes'
INSERT INTO clientes (nombre, correo) VALUES 
('Adiel Subiabre', 'adiel@correo.com'),
('Juan Perez', 'juanp@correo.com'),
('Maria Garcia', 'maria@correo.com');

-- Insertar algunos registros en la tabla 'productos'
INSERT INTO productos (nombre_producto, precio, cantidad_stock) VALUES 
('Laptop', 1200.50, 10),
('Mouse', 25.99, 50),
('Teclado', 45.99, 30);

-- Ejercicio 1: Consultar todos los clientes
SELECT * FROM clientes;

-- Ejercicio 2: Consultar los productos con precio mayor a 30
SELECT * FROM productos WHERE precio > 30;

-- Ejercicio 3: Actualizar la cantidad de stock de un producto
UPDATE productos SET cantidad_stock = cantidad_stock - 1 WHERE nombre_producto = 'Laptop';

-- Ejercicio 4: Eliminar un cliente
DELETE FROM clientes WHERE nombre = 'Maria Garcia';

-- Ejercicio 5: Consultar el total de productos en stock
SELECT SUM(cantidad_stock) AS total_stock FROM productos;
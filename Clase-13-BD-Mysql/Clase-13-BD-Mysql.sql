-- Ejercicio 1: Crear la base de datos llamada "tienda"
CREATE DATABASE tienda;

-- Ejercicio 2: Usar la base de datos "tienda"
USE tienda;

-- Ejercicio 3: Crear una tabla "productos" con las columnas id, nombre, precio, cantidad en inventario
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    cantidad INT
);

-- Ejercicio 4: Crear una tabla "clientes" con las columnas id, nombre, email, teléfono
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Ejercicio 5: Crear una tabla "ventas" con las columnas id, id_cliente, id_producto, cantidad, fecha
CREATE TABLE ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- Ejercicio 6: Insertar algunos productos en la tabla productos
INSERT INTO productos (nombre, precio, cantidad) 
VALUES 
('Laptop', 800.00, 50),
('Mouse', 20.00, 200),
('Teclado', 35.00, 150),
('Monitor', 150.00, 80);

-- Ejercicio 7: Insertar algunos clientes en la tabla clientes
INSERT INTO clientes (nombre, email, telefono)
VALUES
('Juan Pérez', 'juan.perez@example.com', '555-1234'),
('Ana Gómez', 'ana.gomez@example.com', '555-5678'),
('Carlos Sánchez', 'carlos.sanchez@example.com', '555-8765');

-- Ejercicio 8: Insertar algunas ventas en la tabla ventas
INSERT INTO ventas (id_cliente, id_producto, cantidad, fecha)
VALUES
(1, 1, 1, '2024-11-01'),
(2, 3, 2, '2024-11-03'),
(3, 2, 3, '2024-11-05'),
(1, 4, 1, '2024-11-06');

-- Ejercicio 9: Consultar todos los productos disponibles en la tienda
SELECT * FROM productos;

-- Ejercicio 10: Consultar todos los clientes que han realizado compras
SELECT DISTINCT c.nombre, c.email 
FROM clientes c
INNER JOIN ventas v ON c.id = v.id_cliente;

-- Ejercicio 11: Consultar las ventas realizadas, con los datos del cliente y producto
SELECT v.id, c.nombre AS cliente, p.nombre AS producto, v.cantidad, v.fecha 
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id
INNER JOIN productos p ON v.id_producto = p.id;

-- Ejercicio 12: Consultar el total de ventas por producto
SELECT p.nombre AS producto, SUM(v.cantidad) AS total_vendido
FROM ventas v
INNER JOIN productos p ON v.id_producto = p.id
GROUP BY p.nombre;

-- Ejercicio 13: Consultar las ventas realizadas en noviembre de 2024
SELECT v.id, c.nombre AS cliente, p.nombre AS producto, v.cantidad, v.fecha 
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id
INNER JOIN productos p ON v.id_producto = p.id
WHERE v.fecha BETWEEN '2024-11-01' AND '2024-11-30';

-- Ejercicio 14: Actualizar el precio de un producto
UPDATE productos 
SET precio = 850.00 
WHERE nombre = 'Laptop';

-- Ejercicio 15: Eliminar una venta registrada
DELETE FROM ventas 
WHERE id = 3;

-- Ejercicio 16: Consultar productos con menos de 100 unidades en inventario
SELECT nombre, cantidad 
FROM productos 
WHERE cantidad < 100;

-- Ejercicio 17: Consultar los productos vendidos por cliente
SELECT c.nombre AS cliente, p.nombre AS producto, SUM(v.cantidad) AS total_vendido
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id
INNER JOIN productos p ON v.id_producto = p.id
GROUP BY c.nombre, p.nombre;

-- Ejercicio 18: Consultar el total de ventas realizadas por cliente
SELECT c.nombre AS cliente, SUM(v.cantidad * p.precio) AS total_compras
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id
INNER JOIN productos p ON v.id_producto = p.id
GROUP BY c.nombre;
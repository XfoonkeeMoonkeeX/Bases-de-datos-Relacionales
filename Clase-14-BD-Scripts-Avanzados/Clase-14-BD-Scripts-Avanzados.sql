-- Ejercicio 1: Crear la base de datos llamada "tienda_online"
CREATE DATABASE tienda_online;

-- Ejercicio 2: Usar la base de datos "tienda_online"
USE tienda_online;

-- Ejercicio 3: Crear tabla de "productos" con id, nombre, precio, cantidad
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    cantidad INT
);

-- Ejercicio 4: Crear tabla "clientes" con id, nombre, correo electrónico y teléfono
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(15)
);

-- Ejercicio 5: Crear tabla "ordenes" con id, id_cliente, fecha_orden
CREATE TABLE ordenes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_orden DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Ejercicio 6: Crear tabla "detalle_orden" con id, id_orden, id_producto, cantidad, precio
CREATE TABLE detalle_orden (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_orden INT,
    id_producto INT,
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (id_orden) REFERENCES ordenes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- Ejercicio 7: Insertar productos en la tabla "productos"
INSERT INTO productos (nombre, precio, cantidad) 
VALUES 
('Camiseta', 15.00, 100),
('Pantalón', 30.00, 50),
('Zapatos', 45.00, 30),
('Sombrero', 10.00, 70);

-- Ejercicio 8: Insertar clientes en la tabla "clientes"
INSERT INTO clientes (nombre, correo, telefono)
VALUES
('Carlos Pérez', 'carlos.perez@ejemplo.com', '555-1234'),
('Ana Gómez', 'ana.gomez@ejemplo.com', '555-5678'),
('Luis Sánchez', 'luis.sanchez@ejemplo.com', '555-8765');

-- Ejercicio 9: Insertar una orden en la tabla "ordenes"
INSERT INTO ordenes (id_cliente, fecha_orden)
VALUES (1, '2024-11-10');

-- Ejercicio 10: Insertar detalles de orden en la tabla "detalle_orden"
INSERT INTO detalle_orden (id_orden, id_producto, cantidad, precio)
VALUES 
(1, 1, 2, 15.00),
(1, 3, 1, 45.00);

-- Ejercicio 11: Consultar todos los productos disponibles
SELECT * FROM productos;

-- Ejercicio 12: Consultar todos los clientes
SELECT * FROM clientes;

-- Ejercicio 13: Consultar todas las órdenes realizadas por un cliente
SELECT o.id, o.fecha_orden, c.nombre AS cliente 
FROM ordenes o
INNER JOIN clientes c ON o.id_cliente = c.id
WHERE c.nombre = 'Carlos Pérez';

-- Ejercicio 14: Consultar los detalles de una orden (productos comprados)
SELECT o.id AS orden_id, p.nombre AS producto, do.cantidad, do.precio 
FROM detalle_orden do
INNER JOIN productos p ON do.id_producto = p.id
INNER JOIN ordenes o ON do.id_orden = o.id
WHERE o.id = 1;

-- Ejercicio 15: Consultar la cantidad total de productos comprados en una orden
SELECT SUM(do.cantidad) AS total_productos 
FROM detalle_orden do
WHERE do.id_orden = 1;

-- Ejercicio 16: Consultar la suma total de los precios por cliente
SELECT c.nombre AS cliente, SUM(do.cantidad * do.precio) AS total_compras
FROM detalle_orden do
INNER JOIN ordenes o ON do.id_orden = o.id
INNER JOIN clientes c ON o.id_cliente = c.id
GROUP BY c.nombre;

-- Ejercicio 17: Consultar los clientes que han realizado compras en noviembre
SELECT c.nombre, COUNT(o.id) AS total_ordenes
FROM clientes c
INNER JOIN ordenes o ON c.id = o.id_cliente
WHERE o.fecha_orden BETWEEN '2024-11-01' AND '2024-11-30'
GROUP BY c.nombre;

-- Ejercicio 18: Crear un índice en la tabla "ordenes" para optimizar las búsquedas por fecha
CREATE INDEX idx_fecha_orden ON ordenes(fecha_orden);

-- Ejercicio 19: Consultar todos los detalles de las órdenes con el índice aplicado
SELECT o.id AS orden_id, c.nombre AS cliente, p.nombre AS producto, do.cantidad, do.precio 
FROM detalle_orden do
INNER JOIN productos p ON do.id_producto = p.id
INNER JOIN ordenes o ON do.id_orden = o.id
INNER JOIN clientes c ON o.id_cliente = c.id
WHERE o.fecha_orden BETWEEN '2024-11-01' AND '2024-11-30';

-- Ejercicio 20: Eliminar una orden específica
DELETE FROM ordenes WHERE id = 1;

-- Ejercicio 21: Eliminar un producto que ya no está disponible
DELETE FROM productos WHERE id = 4;
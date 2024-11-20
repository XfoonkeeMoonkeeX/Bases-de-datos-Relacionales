-- Archivo SQL para la subcarpeta "ejercicios-2"
-- Este archivo contiene las sentencias necesarias para realizar las operaciones básicas en el ejercicio 2

-- Crear una base de datos llamada 'ejercicios_db'
CREATE DATABASE IF NOT EXISTS ejercicios_db;

-- Usar la base de datos creada
USE ejercicios_db;

-- Crear una tabla 'clientes' con columnas comunes
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insertar algunos registros en la tabla 'clientes'
INSERT INTO clientes (nombre, correo) VALUES 
('Adiel Subiabre', 'adiel@correo.com'),
('Juan Perez', 'juanp@correo.com');

-- Consultar todos los registros en la tabla 'clientes'
SELECT * FROM clientes;

-- Crear base de datos y tabla de ejemplo
CREATE DATABASE base_de_datos_ejemplo;
USE base_de_datos_ejemplo;

CREATE TABLE ejemplo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

INSERT INTO ejemplo (nombre, descripcion)
VALUES
('Proyecto de BD', 'Este es un proyecto de ejemplo sobre bases de datos relacionales.');

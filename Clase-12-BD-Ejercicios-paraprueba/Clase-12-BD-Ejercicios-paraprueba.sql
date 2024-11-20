-- Ejercicio 1: Crear una base de datos llamada "empresa"
CREATE DATABASE empresa;

-- Ejercicio 2: Usar la base de datos "empresa"
USE empresa;

-- Ejercicio 3: Crear una tabla "empleados" con las columnas id, nombre, salario, y fecha_ingreso
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);

-- Ejercicio 4: Crear una tabla "departamentos" con las columnas id, nombre y ubicación
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    ubicacion VARCHAR(100)
);

-- Ejercicio 5: Crear una tabla "empleado_departamento" para asociar empleados con departamentos
CREATE TABLE empleado_departamento (
    id_empleado INT,
    id_departamento INT,
    PRIMARY KEY (id_empleado, id_departamento),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id),
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

-- Ejercicio 6: Insertar algunos datos en la tabla empleados
INSERT INTO empleados (nombre, salario, fecha_ingreso) 
VALUES 
('Juan Pérez', 2500.00, '2022-01-15'),
('Ana Gómez', 3200.50, '2021-11-01'),
('Carlos Sánchez', 4000.00, '2020-06-25'),
('Laura Martínez', 2800.00, '2023-03-14');

-- Ejercicio 7: Insertar algunos datos en la tabla departamentos
INSERT INTO departamentos (nombre, ubicacion) 
VALUES 
('Ventas', 'Planta Baja'),
('Marketing', 'Primer Piso'),
('Tecnología', 'Segundo Piso');

-- Ejercicio 8: Asociar empleados con departamentos en la tabla empleado_departamento
INSERT INTO empleado_departamento (id_empleado, id_departamento)
VALUES 
(1, 1), -- Juan Pérez en Ventas
(2, 2), -- Ana Gómez en Marketing
(3, 3), -- Carlos Sánchez en Tecnología
(4, 1); -- Laura Martínez en Ventas

-- Ejercicio 9: Consultar todos los empleados con su salario y fecha de ingreso
SELECT nombre, salario, fecha_ingreso FROM empleados;

-- Ejercicio 10: Consultar empleados que ganan más de 3000
SELECT nombre, salario FROM empleados
WHERE salario > 3000;

-- Ejercicio 11: Consultar empleados junto con los departamentos donde trabajan
SELECT e.nombre AS empleado, d.nombre AS departamento 
FROM empleados e
INNER JOIN empleado_departamento ed ON e.id = ed.id_empleado
INNER JOIN departamentos d ON ed.id_departamento = d.id;

-- Ejercicio 12: Consultar empleados que trabajan en departamentos que se encuentran en la Planta Baja
SELECT e.nombre AS empleado, d.nombre AS departamento 
FROM empleados e
INNER JOIN empleado_departamento ed ON e.id = ed.id_empleado
INNER JOIN departamentos d ON ed.id_departamento = d.id
WHERE d.ubicacion = 'Planta Baja';

-- Ejercicio 13: Consultar el salario promedio por departamento
SELECT d.nombre AS departamento, AVG(e.salario) AS salario_promedio 
FROM departamentos d
INNER JOIN empleado_departamento ed ON d.id = ed.id_departamento
INNER JOIN empleados e ON ed.id_empleado = e.id
GROUP BY d.nombre;

-- Ejercicio 14: Subconsulta: Consultar empleados con salario superior al salario promedio
SELECT nombre, salario 
FROM empleados 
WHERE salario > (SELECT AVG(salario) FROM empleados);

-- Ejercicio 15: Eliminar a un empleado
DELETE FROM empleados 
WHERE nombre = 'Carlos Sánchez';

-- Ejercicio 16: Ordenar los empleados por fecha de ingreso
SELECT nombre, fecha_ingreso 
FROM empleados 
ORDER BY fecha_ingreso DESC;
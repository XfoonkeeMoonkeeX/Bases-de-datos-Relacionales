-- Ejercicio 1: Crear una tabla de empleados
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);

-- Ejercicio 2: Insertar algunos datos en la tabla empleados
INSERT INTO empleados (nombre, salario, fecha_ingreso) 
VALUES 
('Juan Pérez', 2500.00, '2022-01-15'),
('Ana Gómez', 3200.50, '2021-11-01'),
('Carlos Sánchez', 4000.00, '2020-06-25'),
('Laura Martínez', 2800.00, '2023-03-14');

-- Ejercicio 3: Seleccionar todos los empleados
SELECT * FROM empleados;

-- Ejercicio 4: Seleccionar empleados con salario mayor a 3000
SELECT * FROM empleados 
WHERE salario > 3000;

-- Ejercicio 5: Calcular el salario promedio de todos los empleados
SELECT AVG(salario) AS salario_promedio FROM empleados;

-- Ejercicio 6: Seleccionar empleados cuyo nombre comienza con "A"
SELECT * FROM empleados 
WHERE nombre LIKE 'A%';

-- Ejercicio 7: Actualizar el salario de un empleado
UPDATE empleados 
SET salario = 3500 
WHERE nombre = 'Ana Gómez';

-- Ejercicio 8: Eliminar un empleado
DELETE FROM empleados 
WHERE nombre = 'Carlos Sánchez';

-- Ejercicio 9: Subconsulta: Seleccionar los empleados con salario superior al salario promedio
SELECT * FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);

-- Ejercicio 10: Uso de operadores AND y OR en una consulta
SELECT * FROM empleados
WHERE salario > 3000 AND fecha_ingreso > '2022-01-01';

-- Ejercicio 11: Contar cuántos empleados hay en la tabla
SELECT COUNT(*) AS total_empleados FROM empleados;

-- Ejercicio 12: Ordenar los empleados por salario descendente
SELECT * FROM empleados 
ORDER BY salario DESC;
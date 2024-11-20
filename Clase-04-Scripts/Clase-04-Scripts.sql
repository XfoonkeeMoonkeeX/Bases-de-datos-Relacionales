-- Archivo SQL para la subcarpeta "Clase-04-Scripts"
-- Este archivo contiene ejercicios prácticos utilizando scripts SQL más avanzados.

-- Crear una base de datos llamada 'clase04_db'
CREATE DATABASE IF NOT EXISTS clase04_db;

-- Usar la base de datos creada
USE clase04_db;

-- Crear una tabla 'empleados' con los campos id, nombre, salario y fecha de contratación
CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_contratacion DATE NOT NULL
);

-- Crear una tabla 'departamentos' para almacenar los departamentos en la empresa
CREATE TABLE IF NOT EXISTS departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- Insertar algunos registros en la tabla 'empleados'
INSERT INTO empleados (nombre, salario, fecha_contratacion) VALUES
('Adiel Subiabre', 3500.00, '2022-01-15'),
('Juan Perez', 4500.00, '2021-07-20'),
('Maria Garcia', 3800.00, '2020-10-10'),
('Carlos Lopez', 5000.00, '2023-02-01');

-- Insertar algunos registros en la tabla 'departamentos'
INSERT INTO departamentos (nombre_departamento) VALUES
('Recursos Humanos'),
('Tecnología'),
('Ventas'),
('Marketing');

-- Ejercicio 1: Consultar todos los empleados con salario mayor a 4000
SELECT * FROM empleados WHERE salario > 4000;

-- Ejercicio 2: Consultar el promedio de salarios en la empresa
SELECT AVG(salario) AS promedio_salario FROM empleados;

-- Ejercicio 3: Crear una función para obtener el salario anual de un empleado
DELIMITER $$

CREATE FUNCTION salario_anual(emp_id INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE salario DECIMAL(10, 2);
    SELECT salario INTO salario FROM empleados WHERE id = emp_id;
    RETURN salario * 12;
END$$

DELIMITER ;

-- Ejercicio 4: Consultar el salario anual de un empleado específico (por ejemplo, id = 1)
SELECT salario_anual(1) AS salario_anual;

-- Ejercicio 5: Crear un procedimiento almacenado para actualizar el salario de un empleado
DELIMITER $$

CREATE PROCEDURE actualizar_salario(emp_id INT, nuevo_salario DECIMAL(10, 2))
BEGIN
    UPDATE empleados SET salario = nuevo_salario WHERE id = emp_id;
END$$

DELIMITER ;

-- Ejercicio 6: Llamar al procedimiento almacenado para actualizar el salario del empleado con id = 1
CALL actualizar_salario(1, 4000.00);

-- Ejercicio 7: Consultar los empleados que pertenecen a un departamento específico
-- Primero, creamos una relación entre empleados y departamentos, usando una tabla intermedia (opcional)

CREATE TABLE IF NOT EXISTS empleado_departamento (
    emp_id INT,
    dep_id INT,
    FOREIGN KEY (emp_id) REFERENCES empleados(id),
    FOREIGN KEY (dep_id) REFERENCES departamentos(id)
);

-- Insertar registros de asignación de empleados a departamentos
INSERT INTO empleado_departamento (emp_id, dep_id) VALUES
(1, 2), -- Adiel Subiabre en Tecnología
(2, 3), -- Juan Perez en Ventas
(3, 1), -- Maria Garcia en Recursos Humanos
(4, 2); -- Carlos Lopez en Tecnología

-- Consultar los empleados que trabajan en el departamento 'Tecnología'
SELECT e.nombre FROM empleados e
JOIN empleado_departamento ed ON e.id = ed.emp_id
JOIN departamentos d ON ed.dep_id = d.id
WHERE d.nombre_departamento = 'Tecnología';
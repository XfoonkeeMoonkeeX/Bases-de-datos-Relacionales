Bases de Datos Relacionales - Adiel Subiabre Díaz
Este repositorio contiene los materiales y ejercicios de la asignatura “Bases de Datos Relacionales” del curso. Está diseñado para ayudarte a aprender y practicar conceptos fundamentales sobre bases de datos relacionales, utilizando SQL y gestores de bases de datos como MySQL o MariaDB.

Descripción General
El curso cubre desde la creación de bases de datos y tablas hasta operaciones avanzadas, optimización de consultas y uso de claves foráneas para establecer relaciones entre tablas. Los ejercicios prácticos están diseñados para que puedas aplicar estos conceptos en un entorno real de bases de datos.

Estructura del Repositorio
Este repositorio está organizado en carpetas por clase y contiene los ejercicios prácticos, scripts SQL y ejemplos utilizados en cada tema:

Clase 01: Introducción a Bases de Datos y Creación de Tablas
Clase 02: Consultas SELECT y Operaciones Básicas
Clase 03: Operaciones Avanzadas
Clase 04: Claves Foráneas y Relaciones entre Tablas
Clase 05: Funciones de Agregación y Agrupamiento
Clase 06: Índices y Optimización de Consultas
Cada clase contiene:

Archivos SQL: Scripts para ejecutar directamente en tu gestor de bases de datos.
Ejercicios: Problemas prácticos para resolver y reforzar lo aprendido.
Ejemplos: Consultas y soluciones comentadas.
Requisitos Previos
Conocimientos básicos de SQL.
Un gestor de bases de datos como MySQL, MariaDB o SQLite instalado y configurado.
Instrucciones de Uso
Clonar el Repositorio: Si deseas trabajar con los ejercicios de manera local, clona este repositorio en tu máquina:

bash
Copiar código
git clone https://github.com/tu_usuario/bases-de-datos-relacionales.git
Crear la Base de Datos: Antes de ejecutar los scripts, crea una base de datos de ejemplo en tu gestor de bases de datos:

sql
Copiar código
CREATE DATABASE test_db;
USE test_db;
Ejecutar los Scripts: Navega a la carpeta correspondiente a la clase que deseas trabajar. Ejecuta los scripts SQL dentro del gestor de bases de datos.

Revisar Ejercicios: En cada clase, encontrarás ejercicios prácticos para resolver. Estos ejercicios están diseñados para que puedas aplicar lo aprendido en el curso.

Detalles por Clase
Clase 01: Introducción a Bases de Datos y Creación de Tablas
Objetivos:

Crear una base de datos y definir tablas.
Establecer claves primarias y relaciones básicas entre tablas.
Archivos:

crear_base_de_datos.sql: Script para crear una base de datos de ejemplo.
crear_tablas.sql: Script para crear tablas con claves primarias.
consultas_basicas.sql: Ejemplos de consultas básicas para interactuar con las tablas.
Ejemplo de uso:

sql
Copiar código
-- Crear la base de datos
CREATE DATABASE test_db;
USE test_db;

-- Crear una tabla de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    edad INT
);
Clase 02: Consultas SELECT y Operaciones Básicas
Objetivos:

Utilizar el comando SELECT para obtener datos.
Aplicar filtros, ordenar resultados y limitar las filas mostradas.
Ejemplo de código:

sql
Copiar código
-- Consultar todos los clientes
SELECT * FROM clientes;

-- Consultar un cliente por su nombre
SELECT * FROM clientes WHERE nombre = 'Juan Pérez';
Clase 03: Operaciones Avanzadas
Objetivos:

Realizar uniones entre tablas.
Usar operadores lógicos para mejorar las consultas.
Archivos:

uniones_tablas.sql: Ejemplos de JOIN entre tablas.
operadores_logicos.sql: Ejemplos de operadores como AND, OR y NOT.
Clase 04: Claves Foráneas y Relaciones entre Tablas
Objetivos:

Establecer relaciones entre tablas utilizando claves foráneas.
Realizar consultas con datos relacionados.
Ejemplo de código:

sql
Copiar código
-- Crear tabla de pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Insertar un pedido para un cliente
INSERT INTO pedidos (cliente_id, fecha) VALUES (1, '2024-11-19');
Clase 05: Funciones de Agregación y Agrupamiento
Objetivos:

Utilizar funciones de agregación como SUM, COUNT, AVG, MAX, MIN.
Agrupar resultados con GROUP BY y aplicar filtros con HAVING.
Ejemplo de código:

sql
Copiar código
-- Consultar el número de clientes
SELECT COUNT(*) FROM clientes;

-- Consultar la edad promedio de los clientes
SELECT AVG(edad) FROM clientes;
Clase 06: Índices y Optimización de Consultas
Objetivos:

Crear índices para optimizar consultas.
Realizar consultas más eficientes utilizando índices.
Archivos:

crear_indices.sql: Ejemplos de creación de índices en tablas.
optimizacion_consultas.sql: Ejemplos de consultas optimizadas utilizando índices.
Contribuciones
Si deseas mejorar o agregar nuevos ejercicios, puedes abrir un pull request. Las contribuciones son bienvenidas.

Licencia
Este proyecto está bajo la licencia MIT - consulta el archivo LICENSE para más detalles.

Contacto
Si tienes preguntas o sugerencias, no dudes en contactarme a través de mi perfil en GitHub.

Esta versión unifica ambos textos y presenta una estructura clara para los ejercicios de bases de datos relacionales.












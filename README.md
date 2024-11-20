El repositorio "Bases de Datos Relacionales - Adiel Subiabre Díaz" está diseñado para ayudarte a aprender y practicar conceptos fundamentales sobre bases de datos relacionales utilizando SQL y gestores de bases de datos como MySQL o MariaDB. Este proyecto cubre desde la creación de bases de datos y tablas hasta operaciones avanzadas, optimización de consultas y el uso de claves foráneas para establecer relaciones entre tablas. A continuación se presenta la estructura y detalles del repositorio:

Descripción General
Este curso cubre los siguientes temas:

Creación de bases de datos y tablas.
Operaciones básicas con SQL como consultas SELECT.
Operaciones avanzadas con uniones y operadores lógicos.
Uso de claves foráneas y relaciones entre tablas.
Funciones de agregación y agrupamiento de datos.
Optimización de consultas mediante índices.
Los ejercicios prácticos están diseñados para que puedas aplicar estos conceptos en un entorno real de bases de datos.

Estructura del Repositorio
Este repositorio está organizado en carpetas por clase. Cada clase contiene los ejercicios prácticos, scripts SQL y ejemplos utilizados en el tema correspondiente.

Clases:
Clase 01: Introducción a Bases de Datos y Creación de Tablas
Clase 02: Consultas SELECT y Operaciones Básicas
Clase 03: Operaciones Avanzadas
Clase 04: Claves Foráneas y Relaciones entre Tablas
Clase 05: Funciones de Agregación y Agrupamiento
Clase 06: Índices y Optimización de Consultas
Contenido por Clase
Clase 01: Introducción a Bases de Datos y Creación de Tablas
Objetivos:
Crear bases de datos y definir tablas.
Establecer claves primarias y relaciones básicas entre tablas.
Archivos:
crear_base_de_datos.sql: Script para crear una base de datos de ejemplo.
crear_tablas.sql: Script para crear tablas con claves primarias.
consultas_basicas.sql: Ejemplos de consultas básicas.
Ejemplo de uso:
sql
Copiar código
CREATE DATABASE test_db;
USE test_db;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    edad INT
);
Clase 02: Consultas SELECT y Operaciones Básicas
Objetivos:
Utilizar el comando SELECT para obtener datos.
Aplicar filtros, ordenar resultados y limitar filas.
Ejemplo de código:
sql
Copiar código
SELECT * FROM clientes;
SELECT * FROM clientes WHERE nombre = 'Juan Pérez';
Clase 03: Operaciones Avanzadas
Objetivos:
Realizar uniones entre tablas con JOIN.
Usar operadores lógicos como AND, OR, NOT.
Archivos:
uniones_tablas.sql: Ejemplos de JOIN entre tablas.
operadores_logicos.sql: Ejemplos de operadores lógicos.
Clase 04: Claves Foráneas y Relaciones entre Tablas
Objetivos:
Establecer relaciones entre tablas utilizando claves foráneas.
Realizar consultas con datos relacionados.
Ejemplo de código:
sql
Copiar código
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos (cliente_id, fecha) VALUES (1, '2024-11-19');
Clase 05: Funciones de Agregación y Agrupamiento
Objetivos:
Utilizar funciones como SUM, COUNT, AVG, MAX, MIN.
Agrupar resultados con GROUP BY y filtrar con HAVING.
Ejemplo de código:
sql
Copiar código
SELECT COUNT(*) FROM clientes;
SELECT AVG(edad) FROM clientes;
Clase 06: Índices y Optimización de Consultas
Objetivos:
Crear índices para mejorar el rendimiento de las consultas.
Optimizar consultas mediante índices.
Archivos:
crear_indices.sql: Ejemplos de creación de índices.
optimizacion_consultas.sql: Ejemplos de consultas optimizadas.
Instrucciones de Uso
Clonar el Repositorio
Si deseas trabajar con los ejercicios de manera local, clona el repositorio en tu máquina:

bash
Copiar código
git clone https://github.com/tu_usuario/bases-de-datos-relacionales.git
Crear la Base de Datos
Antes de ejecutar los scripts, crea una base de datos de ejemplo en tu gestor de bases de datos:

sql
Copiar código
CREATE DATABASE test_db;
USE test_db;
Ejecutar los Scripts
Navega a la carpeta correspondiente a la clase que deseas trabajar. Ejecuta los scripts SQL dentro del gestor de bases de datos.

Revisar Ejercicios
En cada clase, encontrarás ejercicios prácticos diseñados para ayudarte a aplicar lo aprendido.


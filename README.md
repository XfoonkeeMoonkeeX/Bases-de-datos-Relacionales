Bases de Datos Relacionales
Material y Ejercicios de la Clase
Descripción General del Repositorio
Este repositorio contiene el material y los ejercicios realizados en la asignatura Bases de Datos Relacionales. El objetivo es proporcionar ejemplos prácticos de creación, manipulación y optimización de bases de datos relacionales, organizados por clase, con explicaciones detalladas y archivos .sql ejecutables.

Estructura del Repositorio
El repositorio está organizado en carpetas por cada clase, con los siguientes nombres y archivos asociados:

├── Clase-01-Presentacion  
│   ├── Clase-01-Presentacion.sql  
│   └── README.md  
├── Clase-02-Ejercicios-2  
│   ├── Clase-02-Ejercicios-2.sql  
│   └── README.md  
├── Clase-03-Materia-y-Ejercicios  
│   ├── Clase-03-Materia-y-Ejercicios.sql  
│   └── README.md  
├── Clase-04-Scripts  
│   ├── Clase-04-Scripts.sql  
│   └── README.md  
├── Clase-05-Ejercicios-de-Relacion  
│   ├── Clase_05-Ejercicios-de-Relacion.sql  
│   └── README.md  
├── Clase-06-Ejercicios-Practicos  
│   ├── Clase-06-Ejercicios-Practicos.sql  
│   └── README.md  
├── Clase-07-Ejercicios-BD  
│   ├── Clase-07-Ejercicios-BD.sql  
│   └── README.md  
├── Clase-08-BD-Sentencias  
│   ├── Clase-08-BD-Sentencias.sql  
│   └── README.md  
├── Clase-09-BD-Ejercicios-Programiz  
│   ├── Clase-09-BD-Ejercicios-Programiz.sql  
│   └── README.md  
├── Clase-10-BD-Ejercicios-SQL-EASY  
│   ├── Clase-10-BD-Ejercicios-SQL-EASY.sql  
│   └── README.md  
├── Clase-11-BD-Ejercicios-Programiz  
│   ├── Clase-11-BD-Ejercicios-Programiz.sql  
│   └── README.md  
├── Clase-12-BD-Ejerciciosparaprueba  
│   ├── Clase-12-BD-Ejerciciosparaprueba.sql  
│   └── README.md  
├── Clase-13-BD-Mysql  
│   ├── Clase-13-BD-Mysql.sql  
│   └── README.md  
├── Clase-14-BD-Scripts  
│   ├── Clase-14-Scripts.sql  
│   └── README.md  
└── Clase-15-Vistas-y-Procedimientos  
    ├── Clase-15-Vistas-y-Procedimientos.sql  
    └── README.md  
Requisitos Previos
Para utilizar el contenido de este repositorio, asegúrate de contar con lo siguiente:

Gestor de bases de datos: MySQL, MariaDB o SQLite.
Editor de SQL: DBeaver, MySQL Workbench, o cualquier otro de tu preferencia.
Instrucciones para Clonar y Configurar el Repositorio
Clonar el repositorio:
Ejecuta el siguiente comando en tu terminal:

git clone https://github.com/XfoonkeeMoonkeeX/bases-de-datos-relacionales.git
Abrir los archivos .sql:

Abre los archivos en tu editor de SQL preferido.
Configurar el entorno de base de datos:

Crea una base de datos para trabajar con los ejercicios:

CREATE DATABASE ejemplo_bases_de_datos;
USE ejemplo_bases_de_datos;
Descripción de Ejercicios y Contenido por Clase
Clase	Objetivo	Temas Tratados	Ejemplo de Código
Clase 1	Introducción a las bases de datos relacionales.	Conceptos básicos: tablas, registros y relaciones.	sql CREATE DATABASE ejemplo; CREATE TABLE estudiantes (id INT PRIMARY KEY, nombre VARCHAR(100));
| Clase  | Objetivo                                    | Temas Tratados                        | Ejemplo de Código                                                  |
|--------|---------------------------------------------|---------------------------------------|--------------------------------------------------------------------|
| Clase 1| Introducción a las bases de datos relacionales. | Conceptos básicos: tablas, registros y relaciones. | `sql CREATE DATABASE ejemplo; CREATE TABLE estudiantes (id INT PRIMARY KEY, nombre VARCHAR(100));` |
| Clase 2| Crear tablas.                               | Tipos de datos y restricciones (NOT NULL, UNIQUE). |                                                                    |
| Clase 3| Insertar datos.                             | Uso de INSERT INTO.                   |                                                                    |
| Clase 4| Consultas básicas.                          | Uso de SELECT, WHERE, ORDER BY.       |                                                                    |
| Clase 5| Agregar condiciones.                        | Operadores lógicos: AND, OR, NOT.     |                                                                    |
| Clase 6| Uniones entre tablas.                       | INNER JOIN, LEFT JOIN, etc.           |                                                                    |
| Clase 7| Funciones de agregación.                    | COUNT, SUM, AVG, MIN, MAX.            |                                                                    |
| Clase 8| Agrupación avanzada.                        | GROUP BY, HAVING.                     |                                                                    |
| Clase 9| Subconsultas.                               | Subconsultas en WHERE y FROM.         |                                                                    |
| Clase 10| Operadores de unión.                       | UNION, INTERSECT, EXCEPT.             |                                                                    |
| Clase 11| Subconsultas avanzadas.                    | Subconsultas correlacionadas.         |                                                                    |
| Clase 12| Transacciones.                              | BEGIN, COMMIT, ROLLBACK.              |                                                                    |
| Clase 13| Integridad de datos.                       | Claves primarias, foráneas, restricciones. |                                                                |
| Clase 14| Índices y optimización.                    | Creación de índices y consultas optimizadas. |                                                              |
| Clase 15| Vistas y procedimientos.                   | Creación y uso de vistas.             |                                                                    |

Contribuciones
¿Quieres contribuir? Sigue estos pasos:

Haz un fork del repositorio.
Crea una rama para tu contribución:
bash
Copiar código
git checkout -b nueva-clase
Realiza los cambios y haz un commit:
bash
Copiar código
git commit -am "Añadir nueva clase"
Haz un push de tus cambios:
bash
Copiar código
git push origin nueva-clase
Abre un pull request.
Esperamos que este repositorio sea útil para tus estudios. ¡Buena suerte en tu aprendizaje de bases de datos relacionales! 😊


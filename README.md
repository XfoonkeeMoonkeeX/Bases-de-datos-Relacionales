# Bases de Datos Relacionales: Material y Ejercicios de la Clase

## Descripción General del Repositorio

Este repositorio alberga todo el material y los ejercicios prácticos correspondientes a la asignatura **Bases de Datos Relacionales**. El objetivo principal es proporcionar ejemplos aplicados sobre la creación, manipulación y optimización de bases de datos relacionales. Los ejercicios están organizados por clase, y cada uno incluye explicaciones detalladas sobre los conceptos abordados, además de archivos `.sql` ejecutables que los estudiantes pueden utilizar para practicar directamente.

Dentro de este repositorio, se encontrará una serie de clases que cubren temas fundamentales en el trabajo con bases de datos, como la creación de tablas, la inserción y consulta de datos, y la optimización de consultas. Cada clase está diseñada para fortalecer el entendimiento práctico de SQL y la gestión de bases de datos.

## Estructura del Repositorio

El repositorio está organizado en carpetas por cada clase, con los siguientes nombres y archivos asociados:
├── Clase-01-Presentacion
│ ├── Clase-01-Presentacion.sql
│ └── README.md
├── Clase-02-Ejercicios-2
│ ├── Clase-02-Ejercicios-2.sql
│ └── README.md
├── Clase-03-Materia-y-Ejercicios
│ ├── Clase-03-Materia-y-Ejercicios.sql
│ └── README.md
├── Clase-04-Scripts
│ ├── Clase-04-Scripts.sql
│ └── README.md
├── Clase-05-Ejercicios-de-Relacion
│ ├── Clase_05-Ejercicios-de-Relacion.sql
│ └── README.md
├── Clase-06-Ejercicios-Practicos
│ ├── Clase-06-Ejercicios-Practicos.sql
│ └── README.md
├── Clase-07-Ejercicios-BD
│ ├── Clase-07-Ejercicios-BD.sql
│ └── README.md
├── Clase-08-BD-Sentencias
│ ├── Clase-08-BD-Sentencias.sql
│ └── README.md
├── Clase-09-BD-Ejercicios-Programiz
│ ├── Clase-09-BD-Ejercicios-Programiz.sql
│ └── README.md
├── Clase-10-BD-Ejercicios-SQL-EASY
│ ├── Clase-10-BD-Ejercicios-SQL-EASY.sql
│ └── README.md
├── Clase-11-BD-Ejercicios-Programiz
│ ├── Clase-11-BD-Ejercicios-Programiz.sql
│ └── README.md
├── Clase-12-BD-Ejerciciosparaprueba
│ ├── Clase-12-BD-Ejerciciosparaprueba.sql
│ └── README.md
├── Clase-13-BD-Mysql
│ ├── Clase-13-BD-Mysql.sql
│ └── README.md
├── Clase-14-BD-Scripts
│ ├── Clase-14-Scripts.sql
│ └── README.md
└── Clase-15-BD-Ejercicios-Mysql
├── Clase-15-BD-Ejercicios.sql
└── README.md

## Requisitos Previos

Para utilizar el contenido de este repositorio, asegúrate de contar con lo siguiente:

- **Gestor de bases de datos**: MySQL, MariaDB o SQLite.
- **Editor de SQL**: DBeaver, MySQL Workbench, o cualquier otro de tu preferencia.

## Instrucciones para Clonar y Configurar el Repositorio

### Clonar el repositorio:

Ejecuta el siguiente comando en tu terminal:

```bash
git clone https://github.com/XfoonkeeMoonkeeX/bases-de-datos-relacionales.git

Abrir los archivos .sql:
Abre los archivos en tu editor de SQL preferido.

Configurar el entorno de base de datos:
Crea una base de datos para trabajar con los ejercicios:

CREATE DATABASE ejemplo_bases_de_datos;
USE ejemplo_bases_de_datos;

### Descripción de Ejercicios y Contenido por Clase

| Clase  | Objetivo                                    | Temas Tratados                        | Ejemplo de Código                                                  |
|--------|---------------------------------------------|---------------------------------------|--------------------------------------------------------------------|
| Clase 1| Introducción a las bases de datos relacionales. | Conceptos básicos: tablas, registros y relaciones. | `CREATE DATABASE ejemplo; CREATE TABLE estudiantes (id INT PRIMARY KEY, nombre VARCHAR(100));` |
| Clase 2| Crear tablas.                               | Tipos de datos y restricciones (NOT NULL, UNIQUE). | `CREATE TABLE productos (id INT PRIMARY KEY, nombre VARCHAR(100), precio DECIMAL);` |
| Clase 3| Insertar datos.                             | Uso de INSERT INTO.                   | `INSERT INTO estudiantes (id, nombre) VALUES (1, 'Juan');` |
| Clase 4| Consultas básicas.                          | Uso de SELECT, WHERE, ORDER BY.       | `SELECT * FROM estudiantes WHERE id = 1;` |
| Clase 5| Agregar condiciones.                        | Operadores lógicos: AND, OR, NOT.     | `SELECT * FROM estudiantes WHERE nombre = 'Juan' AND id = 1;` |
| Clase 6| Uniones entre tablas.                       | INNER JOIN, LEFT JOIN, etc.           | `SELECT * FROM estudiantes INNER JOIN cursos ON estudiantes.id = cursos.estudiante_id;` |
| Clase 7| Funciones de agregación.                    | COUNT, SUM, AVG, MIN, MAX.            | `SELECT COUNT(*) FROM estudiantes;` |
| Clase 8| Agrupación avanzada.                        | GROUP BY, HAVING.                     | `SELECT nombre, COUNT(*) FROM estudiantes GROUP BY nombre;` |
| Clase 9| Subconsultas.                               | Subconsultas en WHERE y FROM.         | `SELECT nombre FROM estudiantes WHERE id IN (SELECT estudiante_id FROM cursos);` |
| Clase 10| Operadores de unión.                       | UNION, INTERSECT, EXCEPT.             | `SELECT nombre FROM estudiantes UNION SELECT nombre FROM profesores;` |
| Clase 11| Subconsultas avanzadas.                    | Subconsultas correlacionadas.         | `SELECT nombre FROM estudiantes WHERE id = (SELECT estudiante_id FROM cursos WHERE curso = 'Matemáticas');` |
| Clase 12| Transacciones.                              | BEGIN, COMMIT, ROLLBACK.              | `BEGIN; INSERT INTO estudiantes VALUES (2, 'Pedro'); COMMIT;` |
| Clase 13| Integridad de datos.                       | Claves primarias, foráneas, restricciones. | `ALTER TABLE estudiantes ADD CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES cursos(id);` |
| Clase 14| Índices y optimización.                    | Creación de índices y consultas optimizadas. | `CREATE INDEX idx_nombre ON estudiantes(nombre);` |
| Clase 15| Vistas y procedimientos.                   | Creación y uso de vistas.             | `CREATE VIEW vista_estudiantes AS SELECT nombre FROM estudiantes WHERE edad > 18;` |

Contribuciones
¿Quieres contribuir? Sigue estos pasos:

Haz un fork del repositorio.
Crea una rama para tu contribución:

git checkout -b nueva-clase

Realiza los cambios y haz un commit:
git commit -am "Añadir nueva clase"

Haz un push de tus cambios:
git push origin nueva-clase

Abre un pull request.

Esperamos que este repositorio sea útil para tus estudios. ¡Buena suerte en tu aprendizaje de bases de datos relacionales! 😊


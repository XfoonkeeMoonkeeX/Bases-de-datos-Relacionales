
# Bases de Datos Relacionales - Adiel Subiabre Díaz

Este repositorio contiene los materiales y ejercicios de la asignatura “Bases de Datos Relacionales” del curso. Está diseñado para ayudarte a aprender y practicar conceptos fundamentales sobre bases de datos relacionales, utilizando SQL y gestores de bases de datos como MySQL o MariaDB.

## Descripción General

El curso cubre desde la creación de bases de datos y tablas hasta operaciones avanzadas, optimización de consultas y uso de claves foráneas para establecer relaciones entre tablas. Los ejercicios prácticos están diseñados para que puedas aplicar estos conceptos en un entorno real de bases de datos.

## Estructura del Repositorio

Este repositorio está organizado en carpetas por clase y contiene los ejercicios prácticos, scripts SQL y ejemplos utilizados en cada tema:

- **Clase 01: Introducción a Bases de Datos y Creación de Tablas**
- **Clase 02: Consultas SELECT y Operaciones Básicas**
- **Clase 03: Operaciones Avanzadas**
- **Clase 04: Claves Foráneas y Relaciones entre Tablas**
- **Clase 05: Funciones de Agregación y Agrupamiento**
- **Clase 06: Índices y Optimización de Consultas**

Cada clase contiene:
- **Archivos SQL**: Scripts para ejecutar directamente en tu gestor de bases de datos.
- **Ejercicios**: Problemas prácticos para resolver y reforzar lo aprendido.
- **Ejemplos**: Consultas y soluciones comentadas.

## Requisitos Previos

- Conocimientos básicos de SQL.
- Un gestor de bases de datos como MySQL, MariaDB o SQLite instalado y configurado.

## Instrucciones de Uso

1. **Clonar el Repositorio**: 
   Si deseas trabajar con los ejercicios de manera local, clona este repositorio en tu máquina:
   ```bash
   git clone https://github.com/tu_usuario/bases-de-datos-relacionales.git
Crear la Base de Datos: Antes de ejecutar los scripts, crea una base de datos de ejemplo en tu gestor de bases de datos:

sql
Copiar código
CREATE DATABASE test_db;
USE test_db;
Ejecutar los Scripts:

Navega a la carpeta correspondiente a la clase que deseas trabajar.
Ejecuta los scripts SQL dentro del gestor de bases de datos.
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
Instrucciones:

Ejecuta crear_base_de_datos.sql para crear la base de datos.
Ejecuta crear_tablas.sql para crear las tablas.
Realiza las consultas con consultas_basicas.sql.
Ejemplo de uso:

sql
Copiar código
-- Crear la base de datos
CREATE DATABASE test_db;
USE test_db;

-- Crear una tabla de clientes
CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  direccion VARCHAR(255)
);
Clase 02: Consultas SELECT y Operaciones Básicas
Objetivos:

Utilizar el comando SELECT para obtener datos.
Aplicar filtros, ordenar resultados y limitar las filas mostradas.
Archivos:

consultas_select.sql: Script para aprender a utilizar SELECT con filtros, ORDER BY y LIMIT.
Instrucciones:

Ejecuta el archivo consultas_select.sql para ver ejemplos de consultas.
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
Archivos:

crear_relaciones.sql: Script para definir claves foráneas.
consultas_relaciones.sql: Ejemplos de consultas con relaciones entre tablas.
Clase 05: Funciones de Agregación y Agrupamiento
Objetivos:

Utilizar funciones de agregación como SUM, COUNT, AVG, MAX, MIN.
Agrupar resultados con GROUP BY y aplicar filtros con HAVING.
Archivos:

funciones_agregacion.sql: Ejemplos de funciones de agregación.
agrupamiento.sql: Ejemplos de agrupamiento de datos.
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

Contacto:
Si tienes preguntas o sugerencias, no dudes en contactarme a través de mi perfil en GitHub.

Bases de Datos Relacionales - Adiel Subiabre Díaz
Este repositorio contiene el material y los ejercicios de la asignatura “Bases de Datos Relacionales”. Aquí se encuentran los códigos de las consultas SQL y ejemplos prácticos realizados durante las clases.

Descripción General del Repositorio
Este repositorio tiene como objetivo proporcionar los ejercicios y conceptos fundamentales sobre Bases de Datos Relacionales. Durante el curso, se explorarán conceptos como la creación de bases de datos, tablas, consultas SQL y más. Cada clase tendrá una carpeta correspondiente con los ejercicios realizados en clase.

Este repositorio incluye los archivos SQL generados en cada clase, los cuales contienen ejemplos de consultas y operaciones sobre bases de datos relacionales.

Estructura del Repositorio
El repositorio está organizado en carpetas por clase. Cada clase tiene su propia carpeta con los ejercicios y archivos relevantes. A continuación se muestra una estructura de ejemplo:

Bases-de-Datos-Relacionales/ │ ├── Clase_01_Introduccion/ │ ├── crear_base_de_datos.sql │ ├── crear_tablas.sql │ └── consultas_basicas.sql │ ├── Clase_02_Tablas_y_Consultas/ │ ├── insertar_datos.sql │ ├── consultas_select.sql │ └── joins.sql │ ├── Clase_03_Operaciones_avanzadas/ │ ├── actualizar_datos.sql │ └── eliminar_datos.sql │ ├── Clase_04_Claves_foraneas/ │ ├── relaciones_tablas.sql │ └── claves_foraneas.sql │ ├── Clase_05_Agregacion_y_Grupos/ │ ├── funciones_agregadas.sql │ └── agrupamiento.sql │ ├── Clase_06_Indices_y_Optimizacion/ │ ├── crear_indice.sql │ └── optimizacion_consultas.sql │ └── README.md

Requisitos Previos
Para trabajar con este repositorio, es necesario contar con las siguientes herramientas y conocimientos previos:

Gestor de Bases de Datos Relacionales: MySQL, MariaDB o SQLite.
Conocimientos de SQL: Entender las operaciones básicas de SQL (SELECT, INSERT, UPDATE, DELETE) y conocer la estructura de bases de datos relacionales.
Si no tienes MySQL o MariaDB instalado, puedes seguir las instrucciones en este enlace para la instalación.

Instrucciones para Clonar y Configurar el Repositorio
Clona el repositorio en tu máquina local usando Git:
git clone https://github.com/AdielSubiabre/Bases-de-Datos-Relacionales.git
Abre tu gestor de bases de datos (por ejemplo, MySQL Workbench, DBeaver, o cualquier otro cliente compatible) y conéctate a tu base de datos local.

Si estás trabajando con MySQL o MariaDB, puedes importar los archivos .sql de cada clase para ejecutar las consultas en tu base de datos.

Si es necesario, crea una base de datos de prueba antes de ejecutar las consultas:

sql
Copiar código
CREATE DATABASE test_db;
USE test_db;
Descripción de Ejercicios y Contenido por Clase
Clase 1: Introducción a Bases de Datos y Creación de Tablas
Objetivos: Aprender a crear bases de datos, tablas, y cómo insertar datos básicos.
Archivos:
crear_base_de_datos.sql: Script para crear una base de datos.
crear_tablas.sql: Script para crear tablas con claves primarias y foráneas.
Clase 2: Consultas SELECT y Operaciones Básicas
Objetivos: Aprender a realizar consultas con SELECT, y realizar operaciones básicas como insertar datos.
Archivos:
consultas_select.sql: Ejemplos de consultas utilizando SELECT.
insertar_datos.sql: Script para insertar datos en tablas.
Clase 3: Operaciones Avanzadas
Objetivos: Aprender a realizar operaciones avanzadas como actualización y eliminación de datos.
Archivos:
actualizar_datos.sql: Script para actualizar registros en tablas.
eliminar_datos.sql: Script para eliminar registros de tablas.
Clase 4: Claves Foráneas y Relaciones entre Tablas
Objetivos: Comprender cómo establecer relaciones entre tablas utilizando claves foráneas, y cómo integrarlas en las consultas.
Archivos:
relaciones_tablas.sql: Script para crear relaciones entre tablas.
claves_foraneas.sql: Ejemplos de consultas que utilizan claves foráneas para establecer relaciones.
Clase 5: Funciones de Agregación y Agrupamiento
Objetivos: Aprender a usar funciones agregadas (SUM, AVG, COUNT, etc.) y cómo agrupar datos con GROUP BY.
Archivos:
funciones_agregadas.sql: Ejemplos de funciones agregadas en consultas.
agrupamiento.sql: Consultas que utilizan GROUP BY para agrupar registros y realizar cálculos.
Clase 6: Índices y Optimización de Consultas
Objetivos: Comprender cómo crear índices para mejorar el rendimiento de las consultas y cómo optimizar las consultas SQL.
Archivos:
crear_indice.sql: Script para crear índices en tablas.
optimizacion_consultas.sql: Ejemplos de consultas optimizadas utilizando índices.
Ejemplos de Uso y Ejecución
Ejecutar Consultas en MySQL
Abre tu terminal o consola y accede a MySQL:

bash
Copiar código
mysql -u root -p
Selecciona la base de datos en la que deseas trabajar:

sql
Copiar código
USE test_db;
Ejecuta los scripts de la clase:

sql
Copiar código
SOURCE Clase_01_Introduccion/crear_base_de_datos.sql;
SOURCE Clase_01_Introduccion/crear_tablas.sql;
Consultas SQL Básicas
sql
Copiar código
– Seleccionar todos los registros de una tabla
SELECT * FROM clientes;

– Insertar un nuevo cliente
INSERT INTO clientes (nombre, direccion) VALUES (‘Juan Pérez’, ‘Calle Falsa 123’);
Crear una Clave Foránea
sql
Copiar código
– Crear una tabla de clientes
CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
direccion VARCHAR(255)
);

– Crear una tabla de pedidos con una clave foránea a la tabla clientes
CREATE TABLE pedidos (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
fecha DATE,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
Recursos de Apoyo
Documentación oficial de MySQL
Tutorial de SQL en W3Schools
Curso de Bases de Datos en Khan Academy
Contribuciones y Actualizaciones
Este repositorio se actualizará con nuevos ejercicios y contenido conforme avance el curso. Las contribuciones están abiertas, si deseas mejorar o agregar nuevos ejercicios, por favor abre un pull request.

Cada clase se actualizará con nuevas carpetas y archivos que contengan los ejercicios realizados en clase.

Gracias por explorar este repositorio de Bases de Datos Relacionales. ¡Esperamos que encuentres útil este material para tu aprendizaje!

go
Copiar código

Este archivo README.md ahora incluye más clases, cubriendo temas más avanzados como claves foráneas, funciones de agregación, optimización de consultas, etc. Puedes copiar este contenido en Dillinger.io y adaptarlo según sea necesario para tu repositorio. ¡Espero que te sea útil!

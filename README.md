<<<<<<< HEAD
# Base de Datos Relacionales

Este repositorio contiene ejercicios y actividades para aprender sobre **Bases de Datos Relacionales**. Cada clase está organizada en carpetas y contiene archivos SQL y otros recursos relacionados. También se proporcionan archivos Markdown (`README.md`) para documentar el contenido de cada clase.

## Requisitos Previos

- **Sistema de Gestión de Bases de Datos (DBMS)**: Asegúrate de tener instalado un DBMS como **MySQL**, **PostgreSQL** o **SQLite** en tu máquina. Si no tienes uno, puedes instalarlo desde los siguientes enlaces:
  - [MySQL](https://dev.mysql.com/downloads/)
  - [PostgreSQL](https://www.postgresql.org/download/)
  - [SQLite](https://www.sqlite.org/download.html)
  
- **Cliente SQL**: Se recomienda usar un cliente como [MySQL Workbench](https://www.mysql.com/products/workbench/), [pgAdmin](https://www.pgadmin.org/) o [DBeaver](https://dbeaver.io/) para interactuar con la base de datos.

## Instrucciones para Clonar y Configurar el Repositorio

1. Clona el repositorio en tu máquina local con el siguiente comando:
    ```bash
    git clone https://github.com/tu-usuario/base-de-datos-relacionales.git
    ```

2. Abre el proyecto en tu editor de código o cliente SQL favorito:
    ```bash
    cd base-de-datos-relacionales
    code .
    ```

3. Si necesitas ejecutar un archivo SQL, abre tu cliente SQL y ejecuta el script en el entorno de tu base de datos.

### Estructura del Proyecto

El repositorio está organizado de la siguiente manera:

base-de-datos-relacionales/ │ ├── clase_01_creacion_tablas/ │ ├── clase_01_creacion_tablas.sql │ └── README.md │ ├── clase_02_insertar_datos/ │ ├── clase_02_insertar_datos.sql │ └── README.md │ ├── clase_03_consultas/ │ ├── clase_03_consultas.sql │ └── README.md │ ├── clase_04_relaciones/ │ ├── clase_04_relaciones.sql │ └── README.md │ ├── clase_05_agregacion/ │ ├── clase_05_agregacion.sql │ └── README.md │ └── README.md

sql
Copiar código

## Descripción de las Clases y Contenido

### Clase 1: Creación de Tablas
- **Contenido**: En esta clase, aprenderemos cómo crear bases de datos y tablas en SQL. Definiremos los tipos de datos y las restricciones para las columnas.
- **Archivo**: `clase_01_creacion_tablas.sql`
  
**Ejemplo de código:**
```sql
-- Crear una base de datos
CREATE DATABASE tienda;

-- Usar la base de datos
USE tienda;
=======

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
>>>>>>> 1ea0aaf2fc9d350c521b88e16649e20fae2162a6

-- Crear una tabla de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    edad INT
);
Clase 2: Insertar Datos
Contenido: Aquí aprenderemos a insertar datos en las tablas utilizando comandos INSERT INTO.
Archivo: clase_02_insertar_datos.sql
Ejemplo de código:

sql
Copiar código
-- Insertar datos en la tabla clientes
INSERT INTO clientes (nombre, correo, edad)
VALUES ('Juan Pérez', 'juan.perez@correo.com', 30),
       ('María López', 'maria.lopez@correo.com', 25);
Clase 3: Consultas Básicas
Contenido: Aprenderemos a consultar los datos de las tablas utilizando comandos SELECT.
Archivo: clase_03_consultas.sql
Ejemplo de código:

sql
Copiar código
-- Consultar todos los clientes
SELECT * FROM clientes;

-- Consultar un cliente por su nombre
SELECT * FROM clientes WHERE nombre = 'Juan Pérez';
Clase 4: Relaciones entre Tablas
Contenido: En esta clase, veremos cómo establecer relaciones entre tablas usando claves primarias y foráneas.
Archivo: clase_04_relaciones.sql
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
Clase 02: Consultas SELECT y Operaciones Básicas
Objetivos:

<<<<<<< HEAD
-- Insertar un pedido para un cliente
INSERT INTO pedidos (cliente_id, fecha) VALUES (1, '2024-11-19');
Clase 5: Agregación y Funciones
Contenido: Aquí aprenderemos a realizar consultas de agregación como COUNT(), SUM(), AVG(), entre otras.
Archivo: clase_05_agregacion.sql
Ejemplo de código:

sql
Copiar código
-- Consultar el número de clientes
SELECT COUNT(*) FROM clientes;

-- Consultar la edad promedio de los clientes
SELECT AVG(edad) FROM clientes;
Ejecución de los Archivos SQL
Para ejecutar los archivos SQL dentro de las carpetas de clase, abre tu cliente SQL y ejecuta los comandos. Por ejemplo, si estás trabajando con MySQL Workbench:

Abre MySQL Workbench y conéctate a tu servidor.
Abre el archivo .sql en el cliente SQL.
Ejecuta las instrucciones SQL.
Contribuciones y Actualizaciones
Este repositorio será actualizado con nuevas clases y ejercicios conforme avancemos en el curso. Si deseas contribuir o mejorar el repositorio, sigue estos pasos:

Fork del repositorio.
Realiza tus cambios en una nueva rama.
Envía un Pull Request para que los cambios sean revisados.
Recursos de Apoyo
Documentación oficial de MySQL
Tutoriales gratuitos de SQL
Guía de Markdown
¡Espero que este repositorio te sea útil en tu aprendizaje de bases de datos relacionales!
=======
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
>>>>>>> 1ea0aaf2fc9d350c521b88e16649e20fae2162a6

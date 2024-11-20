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
# Bases de Datos Relacionales
## Material y Ejercicios de la Clase

### Descripción General del Repositorio

Este repositorio contiene el material y los ejercicios realizados en la asignatura **Bases de Datos Relacionales**. El propósito de este repositorio es proporcionar los archivos de código SQL generados en cada clase, los cuales incluyen ejemplos prácticos de la creación y manipulación de bases de datos relacionales. Cada clase se documenta con ejemplos y explicaciones para facilitar la comprensión de los temas tratados.

### Estructura del Repositorio

El repositorio está organizado en carpetas por cada clase, de la siguiente manera:

├── Clase_01_Presentacion│ ├── Clase_01_Presentacion.sql │ └── README.md ├── Clase_02_Crear_Tablas │ ├── Clase_02_Crear_Tablas.sql │ └── README.md ├── Clase_03_Insertar_Datos │ ├── Clase_03_Insertar_Datos.sql │ └── README.md ├── Clase_04_Consultas_Select │ ├── Clase_04_Consultas_Select.sql │ └── README.md ├── Clase_05_Agregar_Condiciones │ ├── Clase_05_Agregar_Condiciones.sql │ └── README.md └── Clase_06_Uniones ├── Clase_06_Uniones.sql └── README.md

markdown
Copiar código

- **Clase_01_Introduccion**: Contiene los archivos y ejercicios de la primera clase sobre la introducción a las bases de datos.
- **Clase_02_Crear_Tablas**: Contiene los archivos para crear tablas y definir relaciones.
- **Clase_03_Insertar_Datos**: Contiene los ejercicios para insertar datos en las tablas creadas.
- **Clase_04_Consultas_Select**: Ejercicios de consultas básicas utilizando `SELECT`.
- **Clase_05_Agregar_Condiciones**: Incluye ejercicios con operadores y condiciones en las consultas SQL.
- **Clase_06_Uniones**: Archivos relacionados con el uso de uniones entre tablas (`JOIN`).

Cada carpeta de clase contiene un archivo `.sql` con el código de la clase y un archivo `README.md` con una breve descripción de los temas cubiertos y ejemplos adicionales.


### Requisitos Previos

Para utilizar el contenido de este repositorio, necesitas tener instalados los siguientes programas:

- **Gestor de bases de datos**: Como MySQL, MariaDB, o SQLite.
- **Editor de SQL**: Puede ser DBeaver, MySQL Workbench, o cualquier otro editor de consultas SQL.

### Instrucciones para Clonar y Configurar el Repositorio

1. **Clonar el repositorio**:
   - Abre tu terminal y ejecuta el siguiente comando para clonar este repositorio:
     ```bash
     git clone https://github.com/tu-usuario/bases-de-datos-relacionales.git
     ```
   
2. **Abrir el archivo SQL**:
   - Una vez clonado el repositorio, abre los archivos `.sql` de cada clase en tu editor de SQL preferido (por ejemplo, MySQL Workbench o DBeaver).

3. **Configurar el entorno de base de datos**:
   - Si estás utilizando MySQL o MariaDB, asegúrate de tener un servidor de base de datos en funcionamiento.
   - Crea una base de datos para trabajar con los ejercicios:
     ```sql
     CREATE DATABASE ejemplo_bases_de_datos;
     USE ejemplo_bases_de_datos;
     ```

### Descripción de Ejercicios y Contenido por Clase

#### Clase 1: **Introducción a las Bases de Datos Relacionales**
   - **Objetivo**: Comprender los conceptos básicos de las bases de datos relacionales y su estructura.
   - **Temas tratados**:
     - Qué es una base de datos relacional.
     - Principales componentes de una base de datos: tablas, registros y campos.
     - Relación entre tablas y claves primarias.
   - **Archivos**: `Clase_01_Introduccion.sql`
   - **Ejemplo de código**:
     ```sql
     -- Crear una base de datos para los ejercicios
     CREATE DATABASE ejemplo_bases_de_datos;
     USE ejemplo_bases_de_datos;
     
     -- Crear una tabla simple para estudiantes
     CREATE TABLE estudiantes (
         id INT AUTO_INCREMENT PRIMARY KEY,
         nombre VARCHAR(100) NOT NULL,
         edad INT
     );
     
     -- Insertar algunos datos
     INSERT INTO estudiantes (nombre, edad) VALUES ('Juan Pérez', 20);
     INSERT INTO estudiantes (nombre, edad) VALUES ('Ana Gómez', 22);
     
     -- Consultar los datos de la tabla
     SELECT * FROM estudiantes;
     ```

#### Clase 2: **Crear Tablas**
   - **Objetivo**: Aprender a crear tablas y definir sus estructuras.
   - **Temas tratados**:
     - Definición de columnas y tipos de datos.
     - Restricciones en las tablas como `NOT NULL` y `UNIQUE`.

#### Clase 3: **Insertar Datos**
   - **Objetivo**: Aprender a insertar datos en las tablas creadas.
   - **Temas tratados**:
     - Uso de la instrucción `INSERT INTO`.
     - Inserción de varios registros en una sola consulta.

#### Clase 4: **Consultas Select**
   - **Objetivo**: Realizar consultas básicas utilizando `SELECT`.
   - **Temas tratados**:
     - Filtrar datos con `WHERE`.
     - Ordenar resultados con `ORDER BY`.

#### Clase 5: **Agregar Condiciones**
   - **Objetivo**: Utilizar operadores y condiciones en las consultas SQL.
   - **Temas tratados**:
     - Operadores lógicos como `AND`, `OR`, `NOT`.
     - Operadores de comparación como `=`, `<`, `>`, `<=`, `>=`, `<>`.

#### Clase 6: **Uniones entre Tablas**
   - **Objetivo**: Aprender a realizar uniones entre tablas.
   - **Temas tratados**:
     - Uso de `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` y `FULL OUTER JOIN`.

### Ejemplos de Uso y Ejecución

Para ejecutar los ejemplos de SQL, simplemente abre el archivo `.sql` correspondiente en tu editor de SQL y ejecútalo en tu gestor de bases de datos. Aquí tienes un ejemplo básico de cómo usar una consulta `SELECT`:

```sql
SELECT * FROM estudiantes WHERE edad >= 21;

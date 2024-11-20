# Clase 05: Ejercicios de Relaciones en Bases de Datos

## Descripción

Esta clase está dedicada a explorar las **relaciones entre tablas** en bases de datos. Los ejercicios incluidos en esta carpeta abordan los diferentes tipos de relaciones (uno a uno, uno a muchos, muchos a muchos) y cómo implementarlas utilizando claves primarias y foráneas. A través de estos ejercicios, aprenderás a gestionar datos relacionados y cómo optimizar consultas complejas con múltiples tablas.

## Contenido

### Ejercicios

1. **Relación uno a uno (1:1)**: Creación de dos tablas relacionadas por una clave primaria y una clave foránea.
2. **Relación uno a muchos (1:N)**: Ejercicios para crear una relación entre dos tablas en las que una tabla tiene múltiples registros relacionados con una fila de la otra tabla.
3. **Relación muchos a muchos (M:N)**: Implementación de una tabla intermedia para manejar relaciones entre tablas que tienen múltiples registros relacionados entre sí.
4. **Consultas complejas**: Realización de consultas SQL que implican múltiples tablas, usando uniones (`JOIN`), subconsultas y agregación de datos.

### Archivos incluidos

- **clase05_db.sql**: Script para crear las bases de datos y las tablas necesarias para los ejercicios.
- **ejercicios.sql**: Contiene los ejercicios SQL relacionados con las relaciones entre tablas y las consultas avanzadas.

## Herramientas necesarias

Para ejecutar estos ejercicios, necesitarás un sistema de gestión de bases de datos como:

- **MySQL** o **MariaDB**: Para gestionar las bases de datos.
- **DBeaver**, **MySQL Workbench**, o cualquier otro cliente de base de datos que soporte SQL.

## Instrucciones

1. **Crea la base de datos**: Ejecuta el archivo `clase05_db.sql` para crear la base de datos y las tablas necesarias.
2. **Ejecuta los ejercicios**: Una vez que las tablas estén creadas, ejecuta los scripts en `ejercicios.sql` para practicar las relaciones entre tablas y realizar consultas complejas.
3. **Experimenta y personaliza**: Modifica los ejercicios para practicar y adaptarlos a otros escenarios de bases de datos.

## Objetivos de aprendizaje

Al completar los ejercicios de esta clase, deberías ser capaz de:

- Comprender y aplicar las relaciones entre tablas (uno a uno, uno a muchos, muchos a muchos).
- Utilizar claves primarias y foráneas para mantener la integridad referencial.
- Escribir consultas complejas con múltiples tablas y combinarlas utilizando `JOIN`.
- Gestionar bases de datos más estructuradas y optimizar el acceso a datos relacionados.

## Ejemplos de Relaciones

### Relación Uno a Uno
- **Empleado y su dirección**: Un empleado tiene una única dirección y viceversa.
  
### Relación Uno a Muchos
- **Clientes y pedidos**: Un cliente puede realizar muchos pedidos, pero cada pedido pertenece a un solo cliente.

### Relación Muchos a Muchos
- **Estudiantes y cursos**: Un estudiante puede estar inscrito en muchos cursos y un curso puede tener muchos estudiantes. Para manejar esta relación, se utiliza una tabla intermedia (por ejemplo, "inscripciones").

## Licencia

Este proyecto está bajo la licencia [MIT](https://opensource.org/licenses/MIT), de uso educativo.
Explicación del README:
Descripción: Proporciona una breve introducción a la clase y su enfoque en las relaciones entre tablas.
Contenido: Enumera los principales ejercicios que se incluyen en la carpeta, como relaciones uno a uno, uno a muchos, y muchos a muchos.
Archivos incluidos: Descripción de los archivos que contienen los scripts de SQL para los ejercicios.
Herramientas necesarias: Menciona las herramientas necesarias, como MySQL y DBeaver, para poder ejecutar los ejercicios.
Instrucciones: Guía paso a paso para comenzar a trabajar con los ejercicios.
Objetivos de aprendizaje: Detalla lo que los estudiantes aprenderán después de completar los ejercicios.
Ejemplos de Relaciones: Proporciona ejemplos de diferentes tipos de relaciones entre tablas, lo que ayuda a entender cómo aplicarlas en el contexto de bases de datos.
Este archivo README es ideal para estructurar el trabajo en la Clase 05 y guiar a los estudiantes a través de los conceptos y ejercicios sobre relaciones entre tablas.







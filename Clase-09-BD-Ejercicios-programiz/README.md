readme_content = """
# Clase-09-BD-Ejercicios-programiz

## Descripción
En esta clase se abordan los conceptos de subconsultas en bases de datos SQL, específicamente subconsultas en las cláusulas `WHERE` y `FROM`.

## Ejercicios

### Ejercicio 1: Subconsulta en `WHERE`
Realiza una consulta para obtener el nombre de los estudiantes que están inscritos en un curso específico.

**Código SQL**:
```sql
SELECT nombre
FROM estudiantes
WHERE id IN (
    SELECT estudiante_id
    FROM cursos
    WHERE curso = 'Matemáticas'
);

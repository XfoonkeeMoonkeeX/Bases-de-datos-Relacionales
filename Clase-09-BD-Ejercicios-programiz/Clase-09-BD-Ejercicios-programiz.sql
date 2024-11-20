SELECT curso, AVG(edad)
FROM estudiantes
INNER JOIN (
    SELECT estudiante_id, curso
    FROM cursos
) AS curso_estudiantes
ON estudiantes.id = curso_estudiantes.estudiante_id
GROUP BY curso;

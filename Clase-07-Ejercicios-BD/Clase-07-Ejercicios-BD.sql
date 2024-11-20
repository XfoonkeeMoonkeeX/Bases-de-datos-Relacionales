-- Crear la base de datos para el sistema de biblioteca
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Crear tabla de autores
CREATE TABLE IF NOT EXISTS autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE
);

-- Crear tabla de libros
CREATE TABLE IF NOT EXISTS libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_autor INT,
    anio_publicacion INT,
    genero VARCHAR(50),
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    fecha_registro DATE
);

-- Crear tabla de préstamos
CREATE TABLE IF NOT EXISTS prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_libro INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

-- Insertar datos de ejemplo en la tabla autores
INSERT INTO autores (nombre, apellido, fecha_nacimiento) VALUES
('Gabriel', 'García Márquez', '1927-03-06'),
('J.K.', 'Rowling', '1965-07-31'),
('J.R.R.', 'Tolkien', '1892-01-03');

-- Insertar datos de ejemplo en la tabla libros
INSERT INTO libros (titulo, id_autor, anio_publicacion, genero) VALUES
('Cien años de soledad', 1, 1967, 'Realismo mágico'),
('Harry Potter y la piedra filosofal', 2, 1997, 'Fantasía'),
('El Señor de los Anillos', 3, 1954, 'Fantasía épica');

-- Insertar datos de ejemplo en la tabla usuarios
INSERT INTO usuarios (nombre_usuario, email, telefono, fecha_registro) VALUES
('Juan Pérez', 'juan@example.com', '123456789', '2024-01-15'),
('Ana Gómez', 'ana@example.com', '987654321', '2024-02-20'),
('Luis Martínez', 'luis@example.com', '112233445', '2024-03-05');

-- Insertar datos de ejemplo en la tabla préstamos
INSERT INTO prestamos (id_usuario, id_libro, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2024-10-01', '2024-10-15'),
(2, 2, '2024-10-10', '2024-10-25'),
(3, 3, '2024-10-05', '2024-10-20');

-- Consultas ejemplo

-- Obtener todos los libros junto con el nombre del autor
SELECT l.titulo, a.nombre, a.apellido 
FROM libros l
JOIN autores a ON l.id_autor = a.id_autor;

-- Obtener los préstamos activos
SELECT u.nombre_usuario, l.titulo, p.fecha_prestamo, p.fecha_devolucion
FROM prestamos p
JOIN usuarios u ON p.id_usuario = u.id_usuario
JOIN libros l ON p.id_libro = l.id_libro
WHERE p.fecha_devolucion IS NULL;

-- Obtener la cantidad de libros prestados por cada usuario
SELECT u.nombre_usuario, COUNT(p.id_prestamo) AS total_prestamos
FROM prestamos p
JOIN usuarios u ON p.id_usuario = u.id_usuario
GROUP BY u.id_usuario;
Con esto, tendrás tanto el archivo SQL para la creación de la base de datos como el README.md explicando cómo utilizar el contenido del repositorio. Recuerda adaptar los nombres y detalles según las necesidades de tu proyecto.
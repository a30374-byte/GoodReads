-- BLOQUE A - PRUEBAS CATALOGO DE LIBROS

-- Prueba 1. Consultar todos los libros
SELECT ID_Libro, Titulo, ISBN, Anyo 
FROM LIBROS;

-- Prueba 2. Consultar todos los libros escritos por George Orwell
SELECT L.Titulo 
FROM LIBROS L 
INNER JOIN ESCRITO_POR EP ON L.ID_Libro = EP.ID_Libro 
INNER JOIN AUTORES A ON EP.ID_Autor = A.ID_Autor 
WHERE A.Nombre = 'George Orwell';

-- Prueba 3. Consultar todos los libros de un género
SELECT L.Titulo 
FROM LIBROS L 
INNER JOIN ASOCIADO_A AA ON L.ID_Libro = AA.ID_Libro 
INNER JOIN GENEROS G ON AA.ID_Genero = G.ID_Genero 
WHERE G.Nombre = 'Fantasía'; 

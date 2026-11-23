-- Introducimos los datos a Usuarios con valores 'dummy' en fecha y contraseña
INSERT INTO USUARIOS VALUES (1, 'Ana', 'Ruiz López', 'ana@email.com', 1234, '01-01-2001');
INSERT INTO USUARIOS VALUES (2, 'Luis', 'García López', 'luis@email.com', 1234, '01-01-2001');
INSERT INTO USUARIOS VALUES (3, 'Marta', 'Sánchez Gil', 'marta@email.com', 1234, '01-01-2001');
INSERT INTO USUARIOS VALUES (4, 'Diego', 'Martín Ruiz', 'diego@email.com', 1234, '01-01-2001');

-- Introducimos los datos de autores
INSERT INTO AUTORES VALUES (1, 'George Orwell');
INSERT INTO AUTORES VALUES (2, 'J.K. Rowling');
INSERT INTO AUTORES VALUES (3, 'J.R.R. Tolkien');
INSERT INTO AUTORES VALUES (4, 'Isaac Asimov');
INSERT INTO AUTORES VALUES (5, 'Robert Martin');

-- Introducimos los datos de Generos
INSERT INTO GENEROS VALUES (1, 'Distopía');
INSERT INTO GENEROS VALUES (2, 'Fantasía');
INSERT INTO GENEROS VALUES (3, 'Ciencia Ficción');
INSERT INTO GENEROS VALUES (4, 'Tecnología');

-- Introducimos los datos de Libros
INSERT INTO LIBROS VALUES (1, '1984', 9780451524935, 1949);
INSERT INTO LIBROS VALUES (2, 'Rebelión en la granja', 9780451526342, 1945);
INSERT INTO LIBROS VALUES (3, 'Harry Potter y la piedra filosofal', 9788478884452, 1997);
INSERT INTO LIBROS VALUES (4, 'El Hobbit', 9788445000663, 1937);
INSERT INTO LIBROS VALUES (5, 'Fundación', 9788497599241, 1951);
INSERT INTO LIBROS VALUES (6, 'Yo, robot', 9788497597148, 1950);
INSERT INTO LIBROS VALUES (7, 'Clean Code', 9780132350884, 2008);

-- Establecemos las relaciones libro-autores
INSERT INTO ESCRITO_POR VALUES (1, 1);
INSERT INTO ESCRITO_POR VALUES (2, 1);
INSERT INTO ESCRITO_POR VALUES (3, 2);
INSERT INTO ESCRITO_POR VALUES (4, 3);
INSERT INTO ESCRITO_POR VALUES (5, 4);
INSERT INTO ESCRITO_POR VALUES (6, 4);
INSERT INTO ESCRITO_POR VALUES (7, 5);

-- Establecemos las relaciones libro-generos
INSERT INTO ASOCIADO_A VALUES (1, 1);
INSERT INTO ASOCIADO_A VALUES (2, 1);
INSERT INTO ASOCIADO_A VALUES (3, 2);
INSERT INTO ASOCIADO_A VALUES (4, 2);
INSERT INTO ASOCIADO_A VALUES (5, 3);
INSERT INTO ASOCIADO_A VALUES (6, 3);
INSERT INTO ASOCIADO_A VALUES (7, 4);

-- Creamos estanterias por defecto (Read, Currently Reading, Want to Read).
-- Asignamos a cada usuario estas 3 estanterias

INSERT INTO ESTANTERIAS VALUES (1, 'Read', 1);
INSERT INTO ESTANTERIAS VALUES (2, 'Currently Reading', 1);
INSERT INTO ESTANTERIAS VALUES (3, 'Want to Read', 1);
INSERT INTO ESTANTERIAS VALUES (1, 'Read', 2);
INSERT INTO ESTANTERIAS VALUES (2, 'Currently Reading', 2);
INSERT INTO ESTANTERIAS VALUES (3, 'Want to Read', 2);
INSERT INTO ESTANTERIAS VALUES (1, 'Read', 3);
INSERT INTO ESTANTERIAS VALUES (2, 'Currently Reading', 3);
INSERT INTO ESTANTERIAS VALUES (3, 'Want to Read', 3);
INSERT INTO ESTANTERIAS VALUES (1, 'Read', 4);
INSERT INTO ESTANTERIAS VALUES (2, 'Currently Reading', 4);
INSERT INTO ESTANTERIAS VALUES (3, 'Want to Read', 4);

-- Añadimos estantería personalizada "Mis libros de Verano"
INSERT INTO ESTANTERIAS VALUES (4, 'Mis libros de Verano', 1);

-- Hacemos las relaciones entre estanterias y libros
INSERT INTO POSEE_UN VALUES (1, 1);
INSERT INTO POSEE_UN VALUES (3, 5);
INSERT INTO POSEE_UN VALUES (2, 4);
INSERT INTO POSEE_UN VALUES (1, 4);
INSERT INTO POSEE_UN VALUES (3, 6);
INSERT INTO POSEE_UN VALUES (1, 3);
INSERT INTO POSEE_UN VALUES (3, 7);
INSERT INTO POSEE_UN VALUES (3, 1);

-- Añadimos las reseñas, usando un comentario y fecha 'dummy'
INSERT INTO PONE_RESENYA VALUES (1, 1, 5, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');
INSERT INTO PONE_RESENYA VALUES (2, 1, 4, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');
INSERT INTO PONE_RESENYA VALUES (3, 3, 5, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');
INSERT INTO PONE_RESENYA VALUES (1, 5, 5, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');
INSERT INTO PONE_RESENYA VALUES (4, 7, 5, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');
INSERT INTO PONE_RESENYA VALUES (2, 6, 5, 'El veloz murciélago hindú comía feliz cardillo y kiwi', '01-01-2001');

-- Añadimos las recomendaciones
INSERT INTO RECOMIENDA_A VALUES (1, 2, 5);
INSERT INTO RECOMIENDA_A VALUES (2, 3, 4);
INSERT INTO RECOMIENDA_A VALUES (3, 1, 7);
INSERT INTO RECOMIENDA_A VALUES (4, 1, 3);

-- Y ahora añadimos los amigos
INSERT INTO AMIGO_DE VALUES (1, 2);
INSERT INTO AMIGO_DE VALUES (1, 3);
INSERT INTO AMIGO_DE VALUES (2, 4);

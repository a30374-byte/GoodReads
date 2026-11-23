-- Borramos las tablas de relación

DROP TABLE POSEE_UN;

DROP TABLE ESCRITO_POR;

DROP TABLE ASOCIADO_A;

-- Borramos las tablas que solo dependen de Usuarios
DROP TABLE AMIGO_DE;

DROP TABLE RETOS;

-- Borramos las tablas que dependen de Usuarios y Libros
DROP TABLE SIGUE_UN;

DROP TABLE PONE_RESENYA;

DROP TABLE RECOMIENDA_A;

-- Ahora borramos la tabla de estanterias
DROP TABLE ESTANTERIAS;

-- Luego borramos la tabla de libros, generos y autores
DROP TABLE LIBROS;

DROP TABLE GENEROS;

DROP TABLE AUTORES;


-- Por ultimo borramos la tabla de usuarios
DROP TABLE USUARIOS;

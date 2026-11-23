-- Quitamos los amigos
DELETE FROM AMIGO_DE;

-- Quitamos las recomendaciones
DELETE FROM RECOMIENDA_A;

-- Quitamos las reseñas
DELETE FROM PONE_RESENYA;

-- Quitamos las relaciones entre estanterias y libros
DELETE FROM POSEE_UN;

-- Borramos todas las estanterias
DELETE FROM ESTANTERIAS;

-- Quitamos las relaciones libro-generos
DELETE FROM ASOCIADO_A;

-- Quitamos las relaciones libro-autores
DELETE FROM ESCRITO_POR;

-- Borramos los datos de Libros
DELETE FROM LIBROS;

-- Borramos los datos de Generos
DELETE FROM GENEROS;

-- Borramos los datos de autores
DELETE FROM AUTORES;

-- Borramos los datos de Usuarios
DELETE FROM USUARIOS;
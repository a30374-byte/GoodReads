-- Creamos las tablas sin dependencia

-- Primero la tabla de usuarios
CREATE TABLE USUARIOS (
  ID_Usuario NUMBER(8) PRIMARY KEY,
  Nombre VARCHAR2(30),
  Apellidos VARCHAR2(60),
  Email VARCHAR2(30) UNIQUE,
  Contrasenya VARCHAR2(20),
  Fecha_Registro DATE
  );

-- Luego la tabla de libros, generos y autores
CREATE TABLE LIBROS (
  ID_Libro NUMBER(8) PRIMARY KEY,
  Titulo VARCHAR2(60),
  ISBN NUMBER(13) UNIQUE,
  Anyo NUMBER(4)
  );

CREATE TABLE GENEROS (
  ID_Genero NUMBER(8) PRIMARY KEY,
  Nombre VARCHAR2(30)
  );

CREATE TABLE AUTORES (
  ID_Autor NUMBER(8) PRIMARY KEY,
  Nombre VARCHAR2(30)
  );

-- Ahora la tabla de estanterias
CREATE TABLE ESTANTERIAS (
  ID_Estanteria NUMBER(8) PRIMARY KEY,
  Titulo VARCHAR2(20),
  ID_Usuario NUMBER(8) CONSTRAINT FK_ID_Usuario_Posee REFERENCES Usuarios(ID_Usuario)
  );

-- Creamos las tablas que dependen de Usuarios y Libros
CREATE TABLE SIGUE_UN (
  ID_Usuario NUMBER(8) CONSTRAINT FK_ID_Usuario_Sigue_Libro REFERENCES Usuarios(ID_Usuario),
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Seguido REFERENCES Libros(ID_Libro),
  Fecha_Inicio DATE,
  Fecha_Fin DATE,
  Estado_Lectura VARCHAR(2),
  Progreso_Lectura NUMBER(10)
  );

CREATE TABLE PONE_RESENYA (
  ID_Usuario NUMBER(8) CONSTRAINT FK_ID_Usuario_Resenya REFERENCES Usuarios(ID_Usuario),
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Resenyado REFERENCES Libros(ID_Libro),
  Puntuacion NUMBER(1),
  Texto VARCHAR(100),
  Fecha_Publicacion DATE,
  CONSTRAINT UK_ID_Libro_Usuario_Resenya UNIQUE(ID_Usuario, ID_Libro)
  );

CREATE TABLE RECOMIENDA_A (
  ID_Usuario_Recomendador NUMBER(8) CONSTRAINT FK_ID_Usuario_Recomendador REFERENCES Usuarios(ID_Usuario),
  ID_Usuario_Recomendado NUMBER(8) CONSTRAINT FK_ID_Usuario_Recomendado REFERENCES Usuarios(ID_Usuario),
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Recomendado REFERENCES Libros(ID_Libro),
  CONSTRAINT CK_Usuarios CHECK(ID_Usuario_Recomendador!=ID_Usuario_Recomendado)
  );

-- Creamos las tablas que solo dependen de Usuarios
CREATE TABLE AMIGO_DE (
  ID_Usuario_Amigo NUMBER(8) CONSTRAINT FK_ID_Usuario_Amigo REFERENCES Usuarios(ID_Usuario),
  ID_Usuario_Amigo_2 NUMBER(8) CONSTRAINT FK_ID_Usuario_Amigo_2 REFERENCES Usuarios(ID_Usuario),
  CONSTRAINT CK_Amigos CHECK(ID_Usuario_Amigo!=ID_Usuario_Amigo_2),
  CONSTRAINT UK_Amigos UNIQUE(ID_Usuario_Amigo, ID_Usuario_Amigo_2)
  );

CREATE TABLE RETOS (
  ID_Reto NUMBER(8) PRIMARY KEY,
  Anyo DATE,
  Libros_Leer NUMBER(6),
  Libros_Leidos NUMBER(6),
  ID_Usuario NUMBER(8) CONSTRAINT FK_ID_Usuario_Reto REFERENCES Usuarios(ID_Usuario),
  CONSTRAINT UK_Reto_Anyo UNIQUE(ID_Usuario, Anyo)
  );

-- Creamos las últimas tablas de relación

CREATE TABLE POSEE_UN (
  ID_Estanteria NUMBER(8) CONSTRAINT FK_ID_Estanteria_Posee REFERENCES Estanterias(ID_Estanteria),
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Poseido REFERENCES Libros(ID_Libro)
  );

CREATE TABLE ESCRITO_POR (
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Escrito REFERENCES Libros(ID_Libro),
  ID_Autor NUMBER(8) CONSTRAINT FK_ID_Autor_Escribe REFERENCES Autores(ID_Autor)
  );

CREATE TABLE ASOCIADO_A (
  ID_Libro NUMBER(8) CONSTRAINT FK_ID_Libro_Asociado REFERENCES Libros(ID_Libro),
  ID_Genero NUMBER(8) CONSTRAINT FK_ID_Genero_de_Libro REFERENCES Generos(ID_Genero)
  );

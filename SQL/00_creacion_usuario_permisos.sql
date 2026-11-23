-- Para solucionar el error ORA-65096 introduce el siguiente codigo tras entrar como administrador
-- ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

-- Creamos el usuario
CREATE USER dba_diego IDENTIFIED BY DiegoClave2026;

-- Asignamos permisos de sistema
GRANT CREATE SESSION TO dba_diego;

-- Asignamos permisos de objeto
GRANT CREATE TABLE, CREATE VIEW TO dba_diego;
GRANT UNLIMITED TABLESPACE TO dba_diego;
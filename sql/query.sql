USE master
GO

DROP DATABASE IF EXISTS dbapp;
CREATE DATABASE dbapp
GO

USE dbapp;
 GO
 
--  DROP TABLE IF EXISTS Clientes;
-- CREATE TABLE Clientes
-- (
--     ContactoId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--     Nombre VARCHAR(100) NOT NULL,
--     Habilitado TINYINT
--     UNIQUE(Nombre)
-- );
USE master
GO

DROP DATABASE IF EXISTS dbcaso2;
CREATE DATABASE dbcaso2
GO

USE dbcaso2;
GO

DROP TABLE IF EXISTS Empleados;
CREATE TABLE Empleados (
    idempleado INT IDENTITY(1,1) PRIMARY KEY,
    codempleado VARCHAR(10),
    codlocalidad VARCHAR(10),
    codpuesto VARCHAR(10),
    nombres VARCHAR(255),
    apellidos VARCHAR(255),
    cedula VARCHAR(15),
    rowguid UNIQUEIDENTIFIER
);

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario (
    idusuario INT IDENTITY(1,1) PRIMARY KEY,
    login VARCHAR(50),
    codlocalidad VARCHAR(10),
    codperfil VARCHAR(10),
    nombres VARCHAR(255),
    apellidos VARCHAR(255),
    cedula VARCHAR(15),
    correo VARCHAR(255),
    [password] VARCHAR(50),
    historial VARCHAR(max),
    rowguid UNIQUEIDENTIFIER,
    bloqueado BIT,
    impresora VARCHAR(50),
    tipopapel VARCHAR(50)
);

DROP TABLE IF EXISTS Proveedor;
CREATE TABLE Proveedor (
    idproveedor INT IDENTITY(1,1) PRIMARY KEY,
    codproveedor VARCHAR(10),
    codlocalidad VARCHAR(10),
    proveedor VARCHAR(255),
    direccion VARCHAR(255),
    nit VARCHAR(20),
    rowguid UNIQUEIDENTIFIER,
    proveedorlegal VARCHAR(255)
);


DROP TABLE IF EXISTS Producto;
CREATE TABLE Producto (
    idproducto INT IDENTITY(1,1) PRIMARY KEY,
    codproducto VARCHAR(10),
    codlocalidad VARCHAR(10),
    producto VARCHAR(255),
    laboratorio VARCHAR(255),
    rowguid UNIQUEIDENTIFIER,
    Abreviatura VARCHAR(50),
    DescAbreviatura VARCHAR(255),
    AplicaTaraFinMes BIT,
    AplicaTaraAutomatica BIT,
    Aplica_NoEnvio_Manual BIT,
    Restriccion_Vehiculo VARCHAR(max)
);


DROP TABLE IF EXISTS IdFinca;
CREATE TABLE IdFinca (
    idfinca INT IDENTITY(1,1) PRIMARY KEY,
    codempresa INT,
    codfinca VARCHAR(10),
    finca VARCHAR(255),
    codempresaow INT,
    codfincaow VARCHAR(10),
    rowguid UNIQUEIDENTIFIER
);


DROP TABLE IF EXISTS Pipa;
CREATE TABLE Pipa (
    idpipa INT IDENTITY(1,1) PRIMARY KEY,
    codpipa VARCHAR(10),
    codtransportista VARCHAR(10),
    codlocalidad VARCHAR(10),
    codtipovehiculo VARCHAR(10),
    numero INT,
    capacidad DECIMAL(18, 2),
    especificacion VARCHAR(255),
    tara DECIMAL(18, 2),
    ftara DATETIME,
    rowguid UNIQUEIDENTIFIER,
    unidadnegocio VARCHAR(50),
    activo BIT,
    Propio BIT,
    UT_UMT VARCHAR(50),
    Estado VARCHAR(50),
    PlacaNac VARCHAR(20),
    TiempoRestriccion VARCHAR(50)
);

DROP TABLE IF EXISTS Empresa;
CREATE TABLE Empresa (
    idempresa INT IDENTITY(1,1) PRIMARY KEY,
    codempresa VARCHAR(10),
    empresa VARCHAR(255),
    nit VARCHAR(20),
    direccion VARCHAR(255),
    rowguid UNIQUEIDENTIFIER
);

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
    idcliente INT IDENTITY(1,1) PRIMARY KEY,
    codcliente VARCHAR(10),
    codlocalidad VARCHAR(10),
    cliente VARCHAR(255),
    direccion VARCHAR(255),
    nit VARCHAR(20),
    grupo VARCHAR(50),
    rowguid UNIQUEIDENTIFIER,
    clientelegal VARCHAR(255),
    contrato VARCHAR(50),
    codtipocliente VARCHAR(10),
    exterior VARCHAR(50)
);

DROP TABLE IF EXISTS Envio;
CREATE TABLE Envio (
    idenvio INT IDENTITY(1,1) PRIMARY KEY,
    codenvio VARCHAR(10),
    noenvio INT,
    codestado VARCHAR(10),
    idtipodoc INT,
    idtipomov INT,
    codconvoy VARCHAR(10),
    codlocalidad VARCHAR(10),
    codcliente VARCHAR(10),
    codproveedor VARCHAR(10),
    codempresa VARCHAR(10),
    codfinca VARCHAR(10),
    codlote VARCHAR(10),
    codtanque VARCHAR(10),
    codpipa VARCHAR(10),
    codcabezal VARCHAR(10),
    codpesador VARCHAR(10),
    codsupervisor VARCHAR(10),
    codpiloto VARCHAR(10),
    codagente VARCHAR(10),
    fecha DATETIME,
    fcierre DATETIME,
    ftara DATETIME,
    fbruto DATETIME,
    ptara DECIMAL(18, 2),
    pbruto DECIMAL(18, 2),
    umt DECIMAL(18, 2),
    umb DECIMAL(18, 2),
    racimos INT,
    sacos INT,
    pacas INT,
    autorizacion VARCHAR(50),
    marchamo VARCHAR(50),
    candado VARCHAR(50),
    observacion VARCHAR(max),
    transferido BIT,
    codproducto VARCHAR(10),
    codlaboratorista VARCHAR(10),
    flaboratorio DATETIME
);

--Insersión de datos
INSERT INTO Usuario (login, codlocalidad, codperfil, nombres, apellidos, cedula, correo, [password], historial, rowguid, bloqueado, impresora, tipopapel)
VALUES
('admin', '1', '1', 'Administrador', 'Sistema', '1234567890', 'admin@example.com', 'admin', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user1', '1', '2', 'Usuario 1', 'Apellidos 1', '1234567891', 'user1@example.com', 'user1', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user2', '2', '3', 'Usuario 2', 'Apellidos 2', '1234567892', 'user2@example.com', 'user2', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user3', '3', '4', 'Usuario 3', 'Apellidos 3', '1234567893', 'user3@example.com', 'user3', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user4', '4', '5', 'Usuario 4', 'Apellidos 4', '1234567894', 'user4@example.com', 'user4', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user5', '5', '6', 'Usuario 5', 'Apellidos 5', '1234567895', 'user5@example.com', 'user5', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user6', '6', '7', 'Usuario 6', 'Apellidos 6', '1234567896', 'user6@example.com', 'user6', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user7', '7', '8', 'Usuario 7', 'Apellidos 7', '1234567897', 'user7@example.com', 'user7', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user8', '8', '9', 'Usuario 8', 'Apellidos 8', '1234567898', 'user8@example.com', 'user8', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user9', '9', '10', 'Usuario 9', 'Apellidos 9', '1234567899', 'user9@example.com', 'user9', '', NEWID(), 0, 'Predeterminada', 'Predeterminada'),
('user10', '10', '11', 'Usuario 10', 'Apellidos 10', '1234567900', 'user10@example.com', 'user10', '', NEWID(), 0, 'Predeterminada', 'Predeterminada');

INSERT INTO Proveedor (codproveedor, codlocalidad, proveedor, direccion, nit, rowguid, proveedorlegal)
VALUES
('2', '1', 'Proveedor 2', 'Dirección 2', '1234567891', NEWID(), 'Proveedor Legal 2'),
('3', '2', 'Proveedor 3', 'Dirección 3', '1234567892', NEWID(), 'Proveedor Legal 3'),
('4', '3', 'Proveedor 4', 'Dirección 4', '1234567893', NEWID(), 'Proveedor Legal 4'),
('5', '4', 'Proveedor 5', 'Dirección 5', '1234567894', NEWID(), 'Proveedor Legal 5'),
('6', '5', 'Proveedor 6', 'Dirección 6', '1234567895', NEWID(), 'Proveedor Legal 6'),
('7', '6', 'Proveedor 7', 'Dirección 7', '1234567896', NEWID(), 'Proveedor Legal 7'),
('8', '7', 'Proveedor 8', 'Dirección 8', '1234567897', NEWID(), 'Proveedor Legal 8'),
('9', '8', 'Proveedor 9', 'Dirección 9', '1234567898', NEWID(), 'Proveedor Legal 9'),
('10', '9', 'Proveedor 10', 'Dirección 10', '1234567899', NEWID(), 'Proveedor Legal 10'),
('11', '10', 'Proveedor 11', 'Dirección 11', '1234567900', NEWID(), 'Proveedor Legal 11'),
('12', '11', 'Proveedor 12', 'Dirección 12', '1234567901', NEWID(), 'Proveedor Legal 12'),
('13', '12', 'Proveedor 13', 'Dirección 13', '1234567902', NEWID(), 'Proveedor Legal 13'),
('14', '13', 'Proveedor 14', 'Dirección 14', '1234567903', NEWID(), 'Proveedor Legal 14'),
('15', '14', 'Proveedor 15', 'Dirección 15', '1234567904', NEWID(), 'Proveedor Legal 15'),
('16', '15', 'Proveedor 16', 'Dirección 16', '1234567905', NEWID(), 'Proveedor Legal 16'),
('17', '16', 'Proveedor 17', 'Dirección 17', '1234567906', NEWID(), 'Proveedor Legal 17'),
('18', '17', 'Proveedor 18', 'Dirección 18', '1234567907', NEWID(), 'Proveedor Legal 18');

INSERT INTO Producto (codproducto, codlocalidad, producto, laboratorio, rowguid, Abreviatura, DescAbreviatura, AplicaTaraFinMes, AplicaTaraAutomatica, Aplica_NoEnvio_Manual, Restriccion_Vehiculo)
VALUES
('2', '1', 'Producto 2', 'Laboratorio 2', NEWID(), 'Abr 2', 'Descripción abreviada 2', 1, 1, 1, 'Restricción vehículo 2'),
('3', '2', 'Producto 3', 'Laboratorio 3', NEWID(), 'Abr 3', 'Descripción abreviada 3', 1, 1, 1, 'Restricción vehículo 3'),
('4', '3', 'Producto 4', 'Laboratorio 4', NEWID(), 'Abr 4', 'Descripción abreviada 4', 1, 1, 1, 'Restricción vehículo 4'),
('5', '4', 'Producto 5', 'Laboratorio 5', NEWID(), 'Abr 5', 'Descripción abreviada 5', 1, 1, 1, 'Restricción vehículo 5'),
('6', '5', 'Producto 6', 'Laboratorio 6', NEWID(), 'Abr 6', 'Descripción abreviada 6', 1, 1, 1, 'Restricción vehículo 6'),
('7', '6', 'Producto 7', 'Laboratorio 7', NEWID(), 'Abr 7', 'Descripción abreviada 7', 1, 1, 1, 'Restricción vehículo 7'),
('8', '7', 'Producto 8', 'Laboratorio 8', NEWID(), 'Abr 8', 'Descripción abreviada 8', 1, 1, 1, 'Restricción vehículo 8'),
('9', '8', 'Producto 9', 'Laboratorio 9', NEWID(), 'Abr 9', 'Descripción abreviada 9', 1, 1, 1, 'Restricción vehículo 9'),
('10', '9', 'Producto 10', 'Laboratorio 10', NEWID(), 'Abr 10', 'Descripción abreviada 10', 1, 1, 1, 'Restricción vehículo 10'),
('11', '10', 'Producto 11', 'Laboratorio 11', NEWID(), 'Abr 11', 'Descripción abreviada 11', 1, 1, 1, 'Restricción vehículo 11'),
('12', '11', 'Producto 12', 'Laboratorio 12', NEWID(), 'Abr 12', 'Descripción abreviada 12', 1, 1, 1, 'Restricción vehículo 12'),
('13', '12', 'Producto 13', 'Laboratorio 13', NEWID(), 'Abr 13', 'Descripción abreviada 13', 1, 1, 1, 'Restricción vehículo 13'),
('14', '13', 'Producto 14', 'Laboratorio 14', NEWID(), 'Abr 14', 'Descripción abreviada 14', 1, 1, 1, 'Restricción vehículo 14'),
('15', '14', 'Producto 15', 'Laboratorio 15', NEWID(), 'Abr 15', 'Descripción abreviada 15', 1, 1, 1, 'Restricción vehículo 15');

INSERT INTO IdFinca (codempresa, codfinca, finca, codempresaow, codfincaow, rowguid)
VALUES
('1', '1', 'Finca 1', 1, '1', NEWID()),
('2', '2', 'Finca 2', 2, '2', NEWID()),
('3', '3', 'Finca 3', 3, '3', NEWID()),
('4', '4', 'Finca 4', 4, '4', NEWID()),
('5', '5', 'Finca 5', 5, '5', NEWID()),
('6', '6', 'Finca 6', 6, '6', NEWID()),
('7', '7', 'Finca 7', 7, '7', NEWID()),
('8', '8', 'Finca 8', 8, '8', NEWID()),
('9', '9', 'Finca 9', 9, '9', NEWID()),
('10', '10', 'Finca 10', 10, '10', NEWID()),
('11', '11', 'Finca 11', 11, '11', NEWID()),
('12', '12', 'Finca 12', 12, '12', NEWID()),
('13', '13', 'Finca 13', 13, '13', NEWID()),
('14', '14', 'Finca 14', 14, '14', NEWID()),
('15', '15', 'Finca 15', 15, '15', NEWID()),
('16', '16', 'Finca 16', 16, '16', NEWID()),
('17', '17', 'Finca 17', 17, '17', NEWID()),
('18', '18', 'Finca 18', 18, '18', NEWID()),
('19', '19', 'Finca 19', 19, '19', NEWID()),
('20', '20', 'Finca 20', 20, '20', NEWID());

INSERT INTO Empresa (codempresa, empresa, nit, direccion, rowguid)
VALUES
('1', 'Empresa 1', '1234567890', 'Dirección 1', NEWID()),
('2', 'Empresa 2', '1234567891', 'Dirección 2', NEWID()),
('3', 'Empresa 3', '1234567892', 'Dirección 3', NEWID()),
('4', 'Empresa 4', '1234567893', 'Dirección 4', NEWID()),
('5', 'Empresa 5', '1234567894', 'Dirección 5', NEWID()),
('6', 'Empresa 6', '1234567895', 'Dirección 6', NEWID()),
('7', 'Empresa 7', '1234567896', 'Dirección 7', NEWID()),
('8', 'Empresa 8', '1234567897', 'Dirección 8', NEWID()),
('9', 'Empresa 9', '1234567898', 'Dirección 9', NEWID()),
('10', 'Empresa 10', '1234567899', 'Dirección 10', NEWID()),
('11', 'Empresa 11', '1234567900', 'Dirección 11', NEWID()),
('12', 'Empresa 12', '1234567901', 'Dirección 12', NEWID()),
('13', 'Empresa 13', '1234567902', 'Dirección 13', NEWID()),
('14', 'Empresa 14', '1234567903', 'Dirección 14', NEWID()),
('15', 'Empresa 15', '1234567904', 'Dirección 15', NEWID()),
('16', 'Empresa 16', '1234567905', 'Dirección 16', NEWID()),
('17', 'Empresa 17', '1234567906', 'Dirección 17', NEWID()),
('18', 'Empresa 18', '1234567907', 'Dirección 18', NEWID()),
('19', 'Empresa 19', '1234567908', 'Dirección 19', NEWID()),
('20', 'Empresa 20', '1234567909', 'Dirección 20', NEWID());

INSERT INTO Cliente (codcliente, codlocalidad, cliente, direccion, nit, grupo, rowguid)
VALUES
('4', '4', 'Cliente 4', 'Dirección 4', '1234567893', 'Grupo 4', NEWID()),
('5', '5', 'Cliente 5', 'Dirección 5', '1234567894', 'Grupo 5', NEWID()),
('6', '6', 'Cliente 6', 'Dirección 6', '1234567895', 'Grupo 6', NEWID()),
('7', '7', 'Cliente 7', 'Dirección 7', '1234567896', 'Grupo 7', NEWID()),
('8', '8', 'Cliente 8', 'Dirección 8', '1234567897', 'Grupo 8', NEWID()),
('9', '9', 'Cliente 9', 'Dirección 9', '1234567898', 'Grupo 9', NEWID()),
('10', '10', 'Cliente 10', 'Dirección 10', '1234567899', 'Grupo 10', NEWID()),
('11', '11', 'Cliente 11', 'Dirección 11', '1234567900', 'Grupo 11', NEWID()),
('12', '12', 'Cliente 12', 'Dirección 12', '1234567901', 'Grupo 12', NEWID()),
('13', '13', 'Cliente 13', 'Dirección 13', '1234567902', 'Grupo 13', NEWID()),
('14', '14', 'Cliente 14', 'Dirección 14', '1234567903', 'Grupo 14', NEWID()),
('15', '15', 'Cliente 15', 'Dirección 15', '1234567904', 'Grupo 15', NEWID()),
('16', '16', 'Cliente 16', 'Dirección 16', '1234567905', 'Grupo 16', NEWID()),
('17', '17', 'Cliente 17', 'Dirección 17', '1234567906', 'Grupo 17', NEWID()),
('18', '18', 'Cliente 18', 'Dirección 18', '1234567907', 'Grupo 18', NEWID()),
('19', '19', 'Cliente 19', 'Dirección 19', '1234567908', 'Grupo 19', NEWID()),
('20', '20', 'Cliente 20', 'Dirección 20', '1234567909', 'Grupo 20', NEWID());

INSERT INTO Localidad (localidad, departamento, pais)
VALUES
('Guatemala', 'Guatemala', 'Guatemala'),
('Quetzaltenango', 'Quetzaltenango', 'Guatemala'),
('Antigua Guatemala', 'Sacatepéquez', 'Guatemala'),
('San Pedro Sula', 'Cortés', 'Honduras'),
('Tegucigalpa', 'Francisco Morazán', 'Honduras'),
('San Salvador', 'San Salvador', 'El Salvador'),
('Managua', 'Managua', 'Nicaragua'),
('San José', 'San José', 'Costa Rica'),
('Panamá', 'Panamá', 'Panamá');

INSERT INTO TipoVehiculo (tipovehiculo, capacidad)
VALUES
('Camión cisterna', 20),
('Camión cisterna doble', 40),
('Tractocamión tanque', 60),
('Camión plataforma', 10),
('Camión plataforma doble', 20),
('Camión tanque', 20),
('Camión tanque doble', 40),
('Tractocamión plataforma', 30),
('Tractocamión plataforma doble', 60);






--Creacion de vistas
-- a. Top 10 de clientes que tienen mayor peso bruto generado por producto y por mes 
--      durante el año 2014. listar:
--      - Nombre cliente (cliente)
--      - Dirección del cliente (dirección)
--      - NIT del cliente (nit)
--      - Nombre del producto (producto)
--      - Suma peso bruto de la transacción (pbruto)
--      - Mes (fecha)
--      - Año (fecha

DROP TABLE IF EXISTS VistaTopClientesPorProductoMes;
CREATE VIEW VistaTopClientesPorProductoMes AS
SELECT TOP 10
    C.cliente AS NombreCliente,
    C.direccion AS DireccionCliente,
    C.nit AS NITCliente,
    P.producto AS NombreProducto,
    DATEPART(MONTH, E.fecha) AS Mes,
    DATEPART(YEAR, E.fecha) AS Año,
    SUM(E.pbruto) AS PesoBruto
FROM Cliente C
INNER JOIN Envio E ON C.codcliente = E.codcliente
INNER JOIN Producto P ON E.codproducto = P.codproducto
WHERE DATEPART(YEAR, E.fecha) = 2014
GROUP BY C.cliente, C.direccion, C.nit, P.producto, DATEPART(MONTH, E.fecha), DATEPART(YEAR, E.fecha)
ORDER BY SUM(E.pbruto) DESC;

-- b. Generar un detalle por finca del número[conteo] de transacciones[envios] mensuales 
--     durante el primer semestre del 2015, excluir aquellos conteos inferiores a 100, ordenar 
--     por finca. Listar:
--     - Nombre de la finca (finca)
--     - Nombre de la empresa (empresa)
--     - Total transacciones
--     - Mes (fecha)
--     - Año (fecha)

CREATE VIEW VistaDetallePorFinca AS
SELECT
    F.finca AS NombreFinca,
    E.empresa AS NombreEmpresa,
    COUNT(E.idenvio) AS TotalTransacciones,
    DATEPART(MONTH, E.fecha) AS Mes,
    DATEPART(YEAR, E.fecha) AS Año
FROM IdFinca F
INNER JOIN Envio E ON F.idfinca = E.codfinca
INNER JOIN Empresa EM ON F.codempresa = EM.idempresa
WHERE DATEPART(YEAR, E.fecha) = 2015
    AND DATEPART(MONTH, E.fecha) BETWEEN 1 AND 6
GROUP BY F.finca, E.empresa, DATEPART(MONTH, E.fecha), DATEPART(YEAR, E.fecha)
HAVING COUNT(E.idenvio) >= 100
ORDER BY F.finca, DATEPART(MONTH, E.fecha);

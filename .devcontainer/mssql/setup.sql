USE master
GO

DROP DATABASE IF EXISTS dbapp;
CREATE DATABASE dbapp
GO

USE dbapp;
GO

DROP TABLE IF EXISTS Clientes;
-- Tabla de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre NVARCHAR(255),
    Codigo NVARCHAR(50),
    FechaAlta DATE,
    Direccion NVARCHAR(255),
    Correo NVARCHAR(255),
    Telefono NVARCHAR(20),
    EsClienteCable BIT,
    EsClienteInternet BIT
);

DROP TABLE IF EXISTS Servicios;
-- Tabla de Servicios
CREATE TABLE Servicios (
    ServicioID INT PRIMARY KEY,
    ClienteID INT,
    TipoServicio NVARCHAR(50), -- Cable o Internet
    Velocidad INT, -- Para clientes de Internet
    TipoCable NVARCHAR(50), -- Básico o Premium para clientes de cable
    Ubicacion NVARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

DROP TABLE IF EXISTS PaquetesServicios;
-- Tabla de Paquetes de Servicios
CREATE TABLE PaquetesServicios (
    PaqueteID INT PRIMARY KEY,
    Nombre NVARCHAR(255),
    CostoMensual DECIMAL(10, 2),
    Descuento DECIMAL(5, 2),
    AumentoVelocidad INT,
    UbicacionServicio NVARCHAR(255)
);

DROP TABLE IF EXISTS Facturas;
-- Tabla de Facturas
CREATE TABLE Facturas (
    FacturaID INT PRIMARY KEY,
    ClienteID INT,
    NumeroFactura NVARCHAR(50),
    Fecha DATE,
    Serie NVARCHAR(20),
    Total DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

DROP TABLE IF EXISTS DetallesFactura;
-- Tabla de Detalles de Factura
CREATE TABLE DetallesFactura (
    DetalleID INT PRIMARY KEY,
    FacturaID INT,
    CodigoServicio NVARCHAR(20),
    TipoServicio NVARCHAR(50),
    CostoMensual DECIMAL(10, 2),
    Descuento DECIMAL(5, 2),
    CostoConDescuento DECIMAL(10, 2),
    FOREIGN KEY (FacturaID) REFERENCES Facturas(FacturaID)
);

DROP TABLE IF EXISTS Pagos;
-- Tabla de Pagos
CREATE TABLE Pagos (
    PagoID INT PRIMARY KEY,
    FacturaID INT,
    FechaPago DATE,
    MontoPagado DECIMAL(10, 2),
    FOREIGN KEY (FacturaID) REFERENCES Facturas(FacturaID)
);

DROP TABLE IF EXISTS Empleados;
-- Tabla de Empleados
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    NombreEmpleado NVARCHAR(255),
    Puesto NVARCHAR(50),
    Sueldo DECIMAL(10, 2),
    -- Otros campos relacionados con la nómina
);

DROP TABLE IF EXISTS PagosEmpleados;
-- Tabla de Pagos de Empleados
CREATE TABLE PagosEmpleados (
    PagoEmpleadoID INT PRIMARY KEY,
    EmpleadoID INT,
    FechaPago DATE,
    MontoPagar DECIMAL(10, 2),
    CuotasIGSS DECIMAL(10, 2),
    RetencionISR DECIMAL(10, 2),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);

-- Insertar----
INSERT INTO Clientes(Nombre,Codigo,FechaAlta,Direccion,Correo,Telefono,EsClienteCable,EsClienteInternet)
VALUES
  ('Octavia Landry',1,'08/08/2023','853-3178 Morbi Ave','nunc.mauris@google.couk','761404732',1,1),
  ('Noel Carroll',2,'08/12/2024','528-2763 Duis St.','adipiscing.mauris@icloud.edu','945334534',1,0),
  ('Sheila Lee',3,'09/24/2024','758-4256 Erat. Rd.','mauris.aliquam@outlook.ca','706886232',1,1),
  ('Neve Higgins',4,'01/28/2023','346-8187 Ipsum Av.','rutrum.justo@icloud.ca','258056325',1,1),
  ('Baker Joyner',5,'08/18/2024','1523 Lacinia Rd.','nunc.ullamcorper@yahoo.com','484810720',1,0);
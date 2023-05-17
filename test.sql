create database test

CREATE TABLE Products (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(30) NOT NULL,
    stock INT NOT NULL,
    cost FLOAT NOT NULL,
    price FLOAT NOT NULL
)

INSERT INTO Products (name, description, stock, cost, price)
VALUES ('Producto1', 'Descripción del Producto1', 10, 5.0, 10.0)

 select * from products

CREATE PROCEDURE InsertarProducto
    @nombre NVARCHAR(30),
    @descripcion NVARCHAR(30),
    @stock INT,
    @costo FLOAT,
    @precio FLOAT
AS
BEGIN
    INSERT INTO Products (name, description, stock, cost, price)
    VALUES (@nombre, @descripcion, @stock, @costo, @precio)
END

EXEC InsertarProducto 'test1', 'Nom producto', 10, 5.0, 10.0


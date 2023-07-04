--INSERT
CREATE PROCEDURE [dbo].[CreateProduct]
    @name NVARCHAR(500),
    @description NVARCHAR(500),
    @stock INT,
    @cost FLOAT,
    @price FLOAT,
    @currency INT,
    @category INT
AS
BEGIN
    INSERT INTO Products (name, description, stock, cost, price, currency, category)
    VALUES (@name, @description, @stock, @cost, @price, @currency, @category)
END



--SELECT bY ID 
CREATE PROCEDURE [dbo].[GetProductById]
    @id INT
AS
BEGIN
    SELECT * FROM Products WHERE id = @id
END

--SELECT

CREATE PROCEDURE [dbo].[GetAllProducts]
AS
BEGIN
    SELECT * FROM Products
END



--UPDATE BY ID
CREATE PROCEDURE [dbo].[UpdateProduct]
    @id INT,
    @name NVARCHAR(500),
    @description NVARCHAR(500),
    @stock INT,
    @cost FLOAT,
    @price FLOAT,
    @currency INT,
    @category INT
AS
BEGIN
    UPDATE Products
    SET name = @name,
        description = @description,
        stock = @stock,
        cost = @cost,
        price = @price,
        currency = @currency,
        category = @category
    WHERE id = @id
END



--DELETE BY ID
CREATE PROCEDURE [dbo].[DeleteProduct]
    @id INT
AS
BEGIN
    DELETE FROM Products WHERE id = @id
END
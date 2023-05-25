--INSERT
CREATE PROCEDURE CreateProduct
    @name VARCHAR(30),
    @description VARCHAR(200),
    @stock INT,
    @cost FLOAT,
    @price FLOAT,
    @category_id INT
AS
BEGIN
    INSERT INTO Products (name, description, stock, cost, price, id_category)
    VALUES (@name, @description, @stock, @cost, @price, @category_id)
END


--SELECT 
CREATE PROCEDURE GetProducts
AS
BEGIN
    SELECT * FROM Products
END


--SELECT BY ID 
CREATE PROCEDURE GetProductById
    @product_id INT
AS
BEGIN
    SELECT * FROM Products WHERE id = @product_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateProduct
    @product_id INT,
    @name VARCHAR(30),
    @description VARCHAR(200),
    @stock INT,
    @cost FLOAT,
    @price FLOAT,
    @category_id INT
AS
BEGIN
    UPDATE Products
    SET name = @name, description = @description, stock = @stock, cost = @cost, price = @price, id_category = @category_id
    WHERE id = @product_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteProduct
    @product_id INT
AS
BEGIN
    DELETE FROM Products WHERE id = @product_id
END

--INSERT 
CREATE PROCEDURE CreateCustomer
    @full_name VARCHAR(10),
    @type INT
AS
BEGIN
    INSERT INTO Customer (full_name, type)
    VALUES (@full_name, @type)
END


--SELECT
CREATE PROCEDURE GetCustomers
AS
BEGIN
    SELECT * FROM Customer
END


--SELECT BY ID
CREATE PROCEDURE GetCustomerById
    @customer_id INT
AS
BEGIN
    SELECT * FROM Customer WHERE id = @customer_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateCustomer
    @customer_id INT,
    @full_name VARCHAR(10),
    @type INT
AS
BEGIN
    UPDATE Customer
    SET full_name = @full_name,
        type = @type
    WHERE id = @customer_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteCustomer
    @customer_id INT
AS
BEGIN
    DELETE FROM Customer WHERE id = @customer_id
END


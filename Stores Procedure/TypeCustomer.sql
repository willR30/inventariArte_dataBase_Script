--INSERT
CREATE PROCEDURE CreateTypeCustomer
    @customerType VARCHAR(50)
AS
BEGIN
    INSERT INTO TypeCustomer (customerType)
    VALUES (@customerType)
END


--SELECT 
CREATE PROCEDURE GetTypeCustomers
AS
BEGIN
    SELECT * FROM TypeCustomer
END


--SELECT BY ID
CREATE PROCEDURE GetTypeCustomerById
    @type_customer_id INT
AS
BEGIN
    SELECT * FROM TypeCustomer WHERE id = @type_customer_id
END


--UPDate BY ID
CREATE PROCEDURE UpdateTypeCustomer
    @type_customer_id INT,
    @customerType VARCHAR(50)
AS
BEGIN
    UPDATE TypeCustomer
    SET customerType = @customerType
    WHERE id = @type_customer_id
END


-- DELETE BY ID
CREATE PROCEDURE DeleteTypeCustomer
    @type_customer_id INT
AS
BEGIN
    DELETE FROM TypeCustomer WHERE id = @type_customer_id
END
CREATE PROCEDURE DeleteTypeCustomer
    @type_customer_id INT
AS
BEGIN
    DELETE FROM TypeCustomer WHERE id = @type_customer_id
END

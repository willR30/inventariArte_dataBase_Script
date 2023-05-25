--INSERT 
CREATE PROCEDURE CreatePaymentType
    @payment_type VARCHAR(20)
AS
BEGIN
    INSERT INTO PaymentType (payment_type)
    VALUES (@payment_type)
END


--- SELECT 
CREATE PROCEDURE GetPaymentTypes
AS
BEGIN
    SELECT * FROM PaymentType
END


--SELECT BY ID
CREATE PROCEDURE GetPaymentTypeById
    @payment_type_id INT
AS
BEGIN
    SELECT * FROM PaymentType WHERE id = @payment_type_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdatePaymentType
    @payment_type_id INT,
    @payment_type VARCHAR(20)
AS
BEGIN
    UPDATE PaymentType
    SET payment_type = @payment_type
    WHERE id = @payment_type_id
END


--DELETE BY ID
CREATE PROCEDURE DeletePaymentType
    @payment_type_id INT
AS
BEGIN
    DELETE FROM PaymentType WHERE id = @payment_type_id
END



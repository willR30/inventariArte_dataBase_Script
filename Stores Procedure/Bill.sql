--INSERT
CREATE PROCEDURE [dbo].[CreateBill]
    @billNumber NVARCHAR(20),
    @customer_name NVARCHAR(500),
    @customer_type INT,
    @phoneNumber NVARCHAR(9),
    @sub_total DECIMAL(20, 2),
    @iva DECIMAL(20, 2),
    @total DECIMAL(20, 2),
    @currency_type INT,
    @payment_type INT,
    @id_month INT,
    @id_year INT,
    @created_at DATE,
    @bill_state INT
AS
BEGIN
    INSERT INTO Bill (billNumber, customer_name, customer_type, phoneNumber, sub_total, iva, total, currency_type, payment_type, id_month, id_year, created_at, bill_state)
    VALUES (@billNumber, @customer_name, @customer_type, @phoneNumber, @sub_total, @iva, @total, @currency_type, @payment_type, @id_month, @id_year, @created_at, @bill_state)
END



--SELECT
CREATE PROCEDURE [dbo].[GetBillById]
    @id INT
AS
BEGIN
    SELECT * FROM Bill WHERE id = @id
END

CREATE PROCEDURE [dbo].[GetAllBills]
AS
BEGIN
    SELECT * FROM Bill
END



--SELECT BY ID
CREATE PROCEDURE GetBillById
    @bill_id INT
AS
BEGIN
    SELECT * FROM Bill WHERE id = @bill_id
END


--UPDATE BY ID
CREATE PROCEDURE [dbo].[UpdateBill]
    @id INT,
    @billNumber NVARCHAR(20),
    @customer_name NVARCHAR(500),
    @customer_type INT,
    @phoneNumber NVARCHAR(9),
    @sub_total DECIMAL(20, 2),
    @iva DECIMAL(20, 2),
    @total DECIMAL(20, 2),
    @currency_type INT,
    @payment_type INT,
    @id_month INT,
    @id_year INT,
    @created_at DATE,
    @bill_state INT
AS
BEGIN
    UPDATE Bill
    SET billNumber = @billNumber,
        customer_name = @customer_name,
        customer_type = @customer_type,
        phoneNumber = @phoneNumber,
        sub_total = @sub_total,
        iva = @iva,
        total = @total,
        currency_type = @currency_type,
        payment_type = @payment_type,
        id_month = @id_month,
        id_year = @id_year,
        created_at = @created_at,
        bill_state = @bill_state
    WHERE id = @id
END



--DELETE BY ID
CREATE PROCEDURE [dbo].[DeleteBill]
    @id INT
AS
BEGIN
    DELETE FROM Bill WHERE id = @id
END

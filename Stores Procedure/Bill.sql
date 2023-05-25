--INSERT
CREATE PROCEDURE CreateBill
    @date DATE,
    @customer_name INT,
    @sub_total FLOAT,
    @iva FLOAT,
    @total FLOAT,
    @id_month INT,
    @id_year INT,
    @id_bill_state INT,
    @id_currency_type INT,
    @id_payment_type INT
AS
BEGIN
    INSERT INTO Bill (date, customer_name, sub_total, iva, total, id_month, id_year, id_bill_state, id_currency_type, id_payment_type)
    VALUES (@date, @customer_name, @sub_total, @iva, @total, @id_month, @id_year, @id_bill_state, @id_currency_type, @id_payment_type)
END


--SELECT
CREATE PROCEDURE GetBills
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
CREATE PROCEDURE UpdateBill
    @bill_id INT,
    @date DATE,
    @customer_name INT,
    @sub_total FLOAT,
    @iva FLOAT,
    @total FLOAT,
    @id_month INT,
    @id_year INT,
    @id_bill_state INT,
    @id_currency_type INT,
    @id_payment_type INT
AS
BEGIN
    UPDATE Bill
    SET date = @date,
        customer_name = @customer_name,
        sub_total = @sub_total,
        iva = @iva,
        total = @total,
        id_month = @id_month,
        id_year = @id_year,
        id_bill_state = @id_bill_state,
        id_currency_type = @id_currency_type,
        id_payment_type = @id_payment_type
    WHERE id = @bill_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteBill
    @bill_id INT
AS
BEGIN
    DELETE FROM Bill WHERE id = @bill_id
END

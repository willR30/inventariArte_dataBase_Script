--INSERT
CREATE PROCEDURE CreateSale
    @id_bill INT,
    @id_product INT,
    @amount_products INT,
    @price_at_moment FLOAT,
    @total_sale FLOAT
AS
BEGIN
    INSERT INTO Sale (id_bill, id_products, amount_products, price_at_moment, total_sale)
    VALUES (@id_bill, @id_product, @amount_products, @price_at_moment, @total_sale)
END


--SELECT 
CREATE PROCEDURE GetSales
AS
BEGIN
    SELECT * FROM Sale
END


--SELECT BY ID
CREATE PROCEDURE GetSaleById
    @sale_id INT
AS
BEGIN
    SELECT * FROM Sale WHERE id = @sale_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateSale
    @sale_id INT,
    @id_bill INT,
    @id_product INT,
    @amount_products INT,
    @price_at_moment FLOAT,
    @total_sale FLOAT
AS
BEGIN
    UPDATE Sale
    SET id_bill = @id_bill,
        id_products = @id_product,
        amount_products = @amount_products,
        price_at_moment = @price_at_moment,
        total_sale = @total_sale
    WHERE id = @sale_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteSale
    @sale_id INT
AS
BEGIN
    DELETE FROM Sale WHERE id = @sale_id
END

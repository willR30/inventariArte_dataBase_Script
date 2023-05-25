--INSERT
CREATE PROCEDURE CreateCurrencyType
    @currency VARCHAR(20),
    @symbol VARCHAR(5)
AS
BEGIN
    INSERT INTO CurrencyType (currency, symbol)
    VALUES (@currency, @symbol)
END


--SELECT 
CREATE PROCEDURE GetCurrencyTypes
AS
BEGIN
    SELECT * FROM CurrencyType
END


--SELECT BY ID
CREATE PROCEDURE GetCurrencyTypeById
    @currency_type_id INT
AS
BEGIN
    SELECT * FROM CurrencyType WHERE id = @currency_type_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateCurrencyType
    @currency_type_id INT,
    @currency VARCHAR(20),
    @symbol VARCHAR(5)
AS
BEGIN
    UPDATE CurrencyType
    SET currency = @currency,
        symbol = @symbol
    WHERE id = @currency_type_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteCurrencyType
    @currency_type_id INT
AS
BEGIN
    DELETE FROM CurrencyType WHERE id = @currency_type_id
END

--INSERT 
CREATE PROCEDURE CreateMonth
    @name VARCHAR(30)
AS
BEGIN
    INSERT INTO Month (name)
    VALUES (@name)
END


--SELECT 
CREATE PROCEDURE GetMonths
AS
BEGIN
    SELECT * FROM Month
END


--SELECT BY ID 
CREATE PROCEDURE GetMonthById
    @month_id INT
AS
BEGIN
    SELECT * FROM Month WHERE id = @month_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateMonth
    @month_id INT,
    @name VARCHAR(30)
AS
BEGIN
    UPDATE Month
    SET name = @name
    WHERE id = @month_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteMonth
    @month_id INT
AS
BEGIN
    DELETE FROM Month WHERE id = @month_id
END

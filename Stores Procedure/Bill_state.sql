--INSERT 
CREATE PROCEDURE CreateBillState
    @name VARCHAR(10)
AS
BEGIN
    INSERT INTO Bill_state (name)
    VALUES (@name)
END


--Select 
CREATE PROCEDURE GetBillStates
AS
BEGIN
    SELECT * FROM Bill_state
END


--SELECT BY ID
CREATE PROCEDURE GetBillStateById
    @bill_state_id INT
AS
BEGIN
    SELECT * FROM Bill_state WHERE id = @bill_state_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateBillState
    @bill_state_id INT,
    @name VARCHAR(10)
AS
BEGIN
    UPDATE Bill_state
    SET name = @name
    WHERE id = @bill_state_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteBillState
    @bill_state_id INT
AS
BEGIN
    DELETE FROM Bill_state WHERE id = @bill_state_id
END

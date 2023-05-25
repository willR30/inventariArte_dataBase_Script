--INSERT
CREATE PROCEDURE CreateGroup
    @name NVARCHAR(150)
AS
BEGIN
    INSERT INTO [Group] (name)
    VALUES (@name)
END


--SELECT 
CREATE PROCEDURE GetGroups
AS
BEGIN
    SELECT * FROM [Group]
END


--SELECT BY ID
CREATE PROCEDURE GetGroupById
    @group_id INT
AS
BEGIN
    SELECT * FROM [Group] WHERE id = @group_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateGroup
    @group_id INT,
    @name NVARCHAR(150)
AS
BEGIN
    UPDATE [Group]
    SET name = @name
    WHERE id = @group_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteGroup
    @group_id INT
AS
BEGIN
    DELETE FROM [Group] WHERE id = @group_id
END

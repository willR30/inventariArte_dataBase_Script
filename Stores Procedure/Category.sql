--insert
CREATE PROCEDURE CreateCategory
    @name VARCHAR(30),
    @description VARCHAR(200)
AS
BEGIN
    INSERT INTO Category (name, description)
    VALUES (@name, @description)
END


--SELECT
CREATE PROCEDURE GetCategories
AS
BEGIN
    SELECT * FROM Category
END


--SELECT BY ID
CREATE PROCEDURE GetCategoryById
    @category_id INT
AS
BEGIN
    SELECT * FROM Category WHERE id = @category_id
END


--UPDATE CATEGORY BY ID
CREATE PROCEDURE UpdateCategory
    @category_id INT,
    @name VARCHAR(30),
    @description VARCHAR(200)
AS
BEGIN
    UPDATE Category
    SET name = @name, description = @description
    WHERE id = @category_id
END


--DELETE CATEGORY BY ID
CREATE PROCEDURE DeleteCategory
    @category_id INT
AS
BEGIN
    DELETE FROM Category WHERE id = @category_id
END

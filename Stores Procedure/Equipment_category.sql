--
--Insert
CREATE PROCEDURE CreateEquipmentCategory
    @name VARCHAR(30),
    @description VARCHAR(200)
AS
BEGIN
    INSERT INTO Equipment_Category (name, description)
    VALUES (@name, @description)
END

--Select
CREATE PROCEDURE GetEquipmentCategories
AS
BEGIN
    SELECT * FROM Equipment_Category
END


--Select by ID
CREATE PROCEDURE GetEquipmentCategoryByID
    @categoryID INT
AS
BEGIN
    SELECT * FROM Equipment_Category WHERE id = @categoryID
END


--Update by ID
CREATE PROCEDURE UpdateEquipmentCategory
    @categoryID INT,
    @name VARCHAR(30),
    @description VARCHAR(200)
AS
BEGIN
    UPDATE Equipment_Category
    SET name = @name,
        description = @description
    WHERE id = @categoryID
END

--Delete by ID
CREATE PROCEDURE DeleteEquipmentCategory
    @categoryID INT
AS
BEGIN
    DELETE FROM Equipment_Category WHERE id = @categoryID
END

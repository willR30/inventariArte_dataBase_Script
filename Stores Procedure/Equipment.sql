--Create
CREATE PROCEDURE CreateEquipment
    @name VARCHAR(30),
    @equipmentCategoryID INT
AS
BEGIN
    INSERT INTO Equipment (name, id_equipment_category)
    VALUES (@name, @equipmentCategoryID)
END

--Select
CREATE PROCEDURE GetEquipment
AS
BEGIN
    SELECT * FROM Equipment
END

--Select by ID
CREATE PROCEDURE GetEquipmentByID
    @equipmentID INT
AS
BEGIN
    SELECT * FROM Equipment WHERE id = @equipmentID
END

--Update by ID
CREATE PROCEDURE UpdateEquipment
    @equipmentID INT,
    @name VARCHAR(30),
    @equipmentCategoryID INT
AS
BEGIN
    UPDATE Equipment
    SET name = @name,
        id_equipment_category = @equipmentCategoryID
    WHERE id = @equipmentID
END

--Delete by ID
CREATE PROCEDURE DeleteEquipment
    @equipmentID INT
AS
BEGIN
    DELETE FROM Equipment WHERE id = @equipmentID
END


CREATE PROCEDURE Sp_InsertEquipment_Category
@name varchar(50),
@description varchar(200)
AS
BEGIN
insert into Equipment_Category
(name, description)
VALUES (@name, @description);
END
GO

CREATE PROCEDURE sp_UpdateEquipmentCategory
    @id int,
	@name varchar(50),
	@new_description varchar(200)
AS
BEGIN
    UPDATE Equipment_Category 
    SET name = @name,
		description = @new_description
    WHERE id = @id;
END

CREATE PROCEDURE sp_DeleteEquipmentCategory
    @id int
AS
BEGIN
    DELETE FROM Equipment_Category 
    WHERE id = @id;
END

/*********************************EQUIPMENT************************************************/
CREATE PROCEDURE Sp_InsertEquipment
    @name varchar(50),
    @id_equipment_category int
AS
BEGIN
    INSERT INTO Equipment (name, id_equipment_category)
    VALUES (@name, @id_equipment_category);
END

CREATE PROCEDURE sp_UpdateEquipment
    @id int,
    @new_name varchar(50),
	@id_equipment_category int
AS
BEGIN
    UPDATE Equipment
    SET name = @new_name,
		id_equipment_category = @id_equipment_category
    WHERE id = @id;
END

CREATE PROCEDURE DeleteEquipment
    @id int
AS
BEGIN
    DELETE FROM Equipment
    WHERE id = @id;
END

/*********************************CATEGORY************************************************/
CREATE PROCEDURE sp_InsertCategory
    @name varchar(50),
    @description varchar(100)
AS
BEGIN
    INSERT INTO Category 
	(name, description)
    VALUES (@name, @description);
END

CREATE PROCEDURE sp_UpdateCategory
    @id int,
	@name varchar(30),
    @new_description varchar(100)
AS
BEGIN
    UPDATE Category
    SET name = @name,
		description = @new_description
    WHERE id = @id;
END

CREATE PROCEDURE sp_DeleteCategory
    @id int
AS
BEGIN
    DELETE FROM Category
    WHERE id = @id;
END

/*********************************PRODUCTS************************************************/
CREATE PROCEDURE sp_InsertProduct
    @name varchar(50),
    @description varchar(100),
    @stock int,
    @cost decimal(10,2),
    @price decimal(10,2),
    @id_category int
AS
BEGIN
    INSERT INTO Products (name, description, stock, cost, price, id_category)
    VALUES (@name, @description, @stock, @cost, @price, @id_category);
END

CREATE PROCEDURE sp_UpdateProduct
	@id int,
    @name varchar(50),
    @description varchar(100),
    @stock int,
    @cost decimal(10,2),
    @price decimal(10,2),
    @id_category int

AS
BEGIN
UPDATE Products
    SET	   name = @name,
		   description = @description,
		   stock = @stock,
		   cost = @cost,
		   price = @price,
		   id_category = @id_category
WHERE id = @id;
END

CREATE PROCEDURE sp_DeleteProduct
    @id int
AS
BEGIN
    DELETE FROM Products
    WHERE id = @id;
END

/*********************************BILL_STATE************************************************/
CREATE PROCEDURE sp_InsertBill_state
    @id int,
    @name varchar(10)
AS
BEGIN
    insert into Bill_state
	(id,name)
VALUES (@id,@name);
END
GO

create procedure sp_UpdateBill_State
	 @id int,
    @name varchar(10)
as
Begin UPDATE Bill_state
set 
	name = @name
WHERE id = @id
END

Create procedure sp_DeleteBill_state
		@id int
AS
BEGIN DELETE FROM Bill_State
WHERE id = @id
END
GO

/*********************************Month************************************************/
CREATE PROCEDURE sp_InsertMonth
    @id int,
    @name varchar(30)
AS
BEGIN
    insert into Month
	(id,name)
VALUES (@id,@name);
END
GO

create PROCEDURE sp_UpdatetMonth
	 @id int,
    @name varchar(30)
as
Begin UPDATE Month
set 
	name = @name
WHERE id = @id
END

Create PROCEDURE sp_DeleteMonth
		@id int
AS
BEGIN DELETE FROM Bill_State
WHERE id = @id
END
GO
/*********************************year************************************************/
CREATE PROCEDURE sp_Insertyear
    @id int,
    @name varchar(30)
AS
BEGIN
    insert into year
	(id,name)
VALUES (@id,@name);
END
GO

create PROCEDURE sp_UpdateYear
	 @id int,
    @name varchar(30)
as
Begin UPDATE year
set 
	name = @name
WHERE id = @id
END


Create PROCEDURE sp_Deleteyear
		@id int
AS
BEGIN DELETE FROM year
WHERE id = @id
END
GO












/*--------------------------------------------------VISTAS------------------------------------------------------------------------------*/
CREATE VIEW CategoryView AS
SELECT id, name,description
FROM Category;

CREATE VIEW BillStateView AS
SELECT id, name
FROM Bill_State;

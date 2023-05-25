--INSERT
CREATE PROCEDURE CreateUser
    @username NVARCHAR(150),
    @password NVARCHAR(128),
    @first_name NVARCHAR(30),
    @last_name NVARCHAR(150),
    @email NVARCHAR(254),
    @is_staff BIT,
    @is_active BIT,
    @is_superuser BIT,
    @last_login DATETIME,
    @date_joined DATETIME
AS
BEGIN
    INSERT INTO [User] (username, password, first_name, last_name, email, is_staff, is_active, is_superuser, last_login, date_joined)
    VALUES (@username, @password, @first_name, @last_name, @email, @is_staff, @is_active, @is_superuser, @last_login, @date_joined)
END


--SELECT 
CREATE PROCEDURE GetUsers
AS
BEGIN
    SELECT * FROM [User]
END


--SELECT BY ID
CREATE PROCEDURE GetUserById
    @user_id INT
AS
BEGIN
    SELECT * FROM [User] WHERE id = @user_id
END


--UPDATE BY ID
CREATE PROCEDURE UpdateUser
    @user_id INT,
    @username NVARCHAR(150),
    @password NVARCHAR(128),
    @first_name NVARCHAR(30),
    @last_name NVARCHAR(150),
    @email NVARCHAR(254),
    @is_staff BIT,
    @is_active BIT,
    @is_superuser BIT,
    @last_login DATETIME,
    @date_joined DATETIME
AS
BEGIN
    UPDATE [User]
    SET username = @username,
        password = @password,
        first_name = @first_name,
        last_name = @last_name,
        email = @email,
        is_staff = @is_staff,
        is_active = @is_active,
        is_superuser = @is_superuser,
        last_login = @last_login,
        date_joined = @date_joined
    WHERE id = @user_id
END


--DELETE BY ID
CREATE PROCEDURE DeleteUser
    @user_id INT
AS
BEGIN
    DELETE FROM [User] WHERE id = @user_id
END

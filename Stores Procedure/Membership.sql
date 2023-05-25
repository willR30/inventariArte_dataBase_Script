--AGREGAR UN USUARIO AL UN GRUPO
CREATE PROCEDURE AddUserToGroup
    @user_id INT,
    @group_id INT
AS
BEGIN
    INSERT INTO Membership (user_id, group_id)
    VALUES (@user_id, @group_id)
END


--obtener todos los grupos a los que pertenece un usuario:
CREATE PROCEDURE GetGroupsByUser
    @user_id INT
AS
BEGIN
    SELECT [Group].id, [Group].name
    FROM [Group]
    INNER JOIN Membership ON [Group].id = Membership.group_id
    WHERE Membership.user_id = @user_id
END


--obtener todos los usuarios en un grupo:
CREATE PROCEDURE GetUsersInGroup
    @group_id INT
AS
BEGIN
    SELECT [User].id, [User].username, [User].first_name, [User].last_name
    FROM [User]
    INNER JOIN Membership ON [User].id = Membership.user_id
    WHERE Membership.group_id = @group_id
END


-- eliminar la membresía de un usuario
CREATE PROCEDURE RemoveUserFromGroup
    @user_id INT,
    @group_id INT
AS
BEGIN
    DELETE FROM Membership
    WHERE user_id = @user_id AND group_id = @group_id
END

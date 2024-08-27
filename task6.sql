USE crud;
GO
CREATE TABLE signup (
    id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
GO
--Stored Procedure for Create Operation
CREATE PROCEDURE AddUser
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Password VARCHAR(255),
    @Phone VARCHAR(15),
    @DateOfBirth DATE
AS
BEGIN
    INSERT INTO signup (first_name, last_name, email, password, phone, date_of_birth)
    VALUES (@FirstName, @LastName, @Email, @Password, @Phone, @DateOfBirth);
END;
GO
--Stored Procedure for Read Operation
CREATE PROCEDURE GetAllUsers
AS
BEGIN
    SELECT * FROM signup;
END;
GO
CREATE PROCEDURE GetUserById
    @UserId INT
AS
BEGIN
    SELECT * FROM signup WHERE id = @UserId;
END;
GO
CREATE PROCEDURE UpdateUser
    @UserId INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Phone VARCHAR(15),
    @DateOfBirth DATE
AS
BEGIN
    UPDATE signup
    SET first_name = @FirstName,
        last_name = @LastName,
        email = @Email,
        phone = @Phone,
        date_of_birth = @DateOfBirth
    WHERE id = @UserId;
END;
GO
--delete
CREATE PROCEDURE DeleteUser
    @UserId INT
AS
BEGIN
    DELETE FROM signup WHERE id = @UserId;
END;
GO

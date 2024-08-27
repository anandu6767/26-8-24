USE UserManagement;
GO
CREATE TABLE signup (
id INT PRIMARY KEY IDENTITY(1,1),--auto increment
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone VARCHAR(15),
date_of_birth DATE,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP);
GO

-- Create the login table
CREATE TABLE login (
    id INT PRIMARY KEY IDENTITY(1,1), -- Auto-increment ID
    user_id INT,
    login_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES signup(id)
);
GO
-- Insert data into the signup table
INSERT INTO signup (first_name, last_name, email, phone, date_of_birth)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', 'securePass789', '1122334455', '1987-03-22');
GO
INSERT INTO signup (first_name, last_name, email, phone, date_of_birth)
VALUES ('Robert', 'Williams', 'robert.williams@example.com', 'passWord321', '5544332211', '1992-12-14');
GO
-- Insert data into the login table
INSERT INTO login (user_id)
VALUES (1);  -- Assuming user with id 1 (Alice Johnson) logged in
INSERT INTO login (user_id)
VALUES (2);  -- Assuming user with id 2 (Robert Williams) logged in
GO
-- Select all records from the signup table
SELECT * FROM signup;
GO
SELECT * FROM login;
GO
SELECT * FROM signup WHERE email = 'alice.johnson@example.com';
GO
-- Update the phone number of a user in the signup table
UPDATE signup
SET phone = '1122334455'
WHERE email = 'alice.johnson@example.com';
GO
-- Delete a user from the signup table
DELETE FROM signup
WHERE email = 'alice.johnson@example.com';
GO


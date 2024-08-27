USE company;
GO
-- Create the Department table
CREATE TABLE Department (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);
GO
-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);
GO
-- Insert data into the Department table
INSERT INTO Department (name) VALUES ('Sales');
INSERT INTO Department (name) VALUES ('Engineering');
INSERT INTO Department (name) VALUES ('HR');
GO
-- Insert data into the Employee table
INSERT INTO Employee (name, salary, department_id) VALUES ('Alice Johnson', 6000, 1);
INSERT INTO Employee (name, salary, department_id) VALUES ('Bob Brown', 7500, 2);
INSERT INTO Employee (name, salary, department_id) VALUES ('Charlie Davis', 7000, 1);
INSERT INTO Employee (name, salary, department_id) VALUES ('Diana Evans', 8000, 3);
INSERT INTO Employee (name, salary, department_id) VALUES ('Edward Green', 7200, 2);
GO
SELECT d.name AS department, COUNT(e.id) AS employee_count
FROM Employee e
JOIN Department d ON e.department_id = d.id
GROUP BY d.name;
GO
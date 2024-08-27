CREATE DATABASE CompanyDB;
GO

USE CompanyDB; -- Switch to the newly created database
GO

CREATE TABLE Department (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);
GO

INSERT INTO Department (name) VALUES ('Sales');
INSERT INTO Department (name) VALUES ('Engineering');
INSERT INTO Department (name) VALUES ('HR');
GO

INSERT INTO Employee (name, salary, department_id) VALUES ('John Doe', 5000, 1);
INSERT INTO Employee (name, salary, department_id) VALUES ('Jane Smith', 7000, 2);
INSERT INTO Employee (name, salary, department_id) VALUES ('Alice Johnson', 4500, 1);
INSERT INTO Employee (name, salary, department_id) VALUES ('Bob Brown', 6000, 2);
INSERT INTO Employee (name, salary, department_id) VALUES ('Charlie Davis', 7000, 3);
GO

SELECT d.name AS department, COUNT(e.id) AS employee_count
FROM Employee e
JOIN Department d ON e.department_id = d.id
GROUP BY d.name;
GO

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);
GO
INSERT INTO Employee (id, name, salary) VALUES (1, 'Michael Scott', 5000);
INSERT INTO Employee (id, name, salary) VALUES (2, 'Pam Beesly', 7000);
INSERT INTO Employee (id, name, salary) VALUES (3, 'Jim Halpert', 4500);
INSERT INTO Employee (id, name, salary) VALUES (4, 'Dwight Schrute', 6000);
INSERT INTO Employee (id, name, salary) VALUES (5, 'Stanley Hudson', 7000);
GO
SELECT * FROM Employee;
GO
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
GO


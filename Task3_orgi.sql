USE UserManagement;
GO
CREATE TABLE Employee (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);
GO
-- Insert data into the Employee table
INSERT INTO Employee (name, salary) VALUES ('Alice Johnson', 6000);
INSERT INTO Employee (name, salary) VALUES ('Bob Brown', 7500);
INSERT INTO Employee (name, salary) VALUES ('Charlie Davis', 7000);
INSERT INTO Employee (name, salary) VALUES ('Diana Evans', 8000);
INSERT INTO Employee (name, salary) VALUES ('Edward Green', 7200);
GO
SELECT DISTINCT salary 
FROM Employee 
ORDER BY salary DESC 
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;
GO
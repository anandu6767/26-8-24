USE ShopDB;
GO
-- Create the Customers table
CREATE TABLE Customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
GO
-- Create the Orders table
CREATE TABLE Orders (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
GO
-- Insert data into the Customers table
INSERT INTO Customers (name, email) VALUES ('Alice Johnson', 'alice@example.com');
INSERT INTO Customers (name, email) VALUES ('Bob Brown', 'bob@example.com');
INSERT INTO Customers (name, email) VALUES ('Charlie Davis', 'charlie@example.com');
GO
-- Insert data into the Orders table
INSERT INTO Orders (customer_id, order_date, amount) VALUES (1, '2024-08-01', 250.00);
INSERT INTO Orders (customer_id, order_date, amount) VALUES (1, '2024-08-05', 300.00);
INSERT INTO Orders (customer_id, order_date, amount) VALUES (2, '2024-08-10', 450.00);
GO
--innerjoin
SELECT c.name, o.order_date, o.amount
FROM Customers c
INNER JOIN Orders o ON c.id = o.customer_id;
GO
--leftjoin
SELECT c.name, o.order_date, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customer_id;
GO
--right
SELECT c.name, o.order_date, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.id = o.customer_id;
GO
--fullouter
SELECT c.name, o.order_date, o.amount
FROM Customers c
FULL OUTER JOIN Orders o ON c.id = o.customer_id;
GO
--crossjoin
SELECT c.name, o.order_date, o.amount
FROM Customers c
CROSS JOIN Orders o;
GO

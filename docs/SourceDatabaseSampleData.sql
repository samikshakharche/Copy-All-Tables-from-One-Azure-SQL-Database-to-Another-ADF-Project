CREATE TABLE Customer (
    CustomerID INT NOT NULL,
    Name NVARCHAR(100) NULL,
    Email NVARCHAR(100) NULL
);

INSERT INTO Customer (CustomerID, Name, Email) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com');

-- 🔹 TABLE: Orders
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    CustomerID INT NULL,
    OrderDate DATE NULL,
    Amount DECIMAL(10, 2) NULL
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2024-06-10', 200.00),
(102, 2, '2024-06-12', 150.00);

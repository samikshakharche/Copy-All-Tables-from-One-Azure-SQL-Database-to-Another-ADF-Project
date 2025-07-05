-- SQL to create Orders table in destination DB
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    CustomerID INT NULL,
    OrderDate DATE NULL,
    Amount DECIMAL(10, 2) NULL
);

-- SQL to create Customer table in destination DB
CREATE TABLE Customer (
    CustomerID INT NOT NULL,
    Name NVARCHAR(100) NULL,
    Email NVARCHAR(100) NULL
);

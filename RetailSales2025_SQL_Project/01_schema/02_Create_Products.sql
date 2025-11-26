-- Create products table

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);
--Create table for Customers

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Region VARCHAR(50),
    SignupDate DATE NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

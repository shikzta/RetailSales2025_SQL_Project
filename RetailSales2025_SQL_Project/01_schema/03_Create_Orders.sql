-- Create Orders Table

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    OrderStatus VARCHAR(20) NOT NULL DEFAULT 'Completed',
    PaymentMethod VARCHAR(20) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
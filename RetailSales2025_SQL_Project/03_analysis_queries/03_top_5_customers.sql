--Select top 5 customers

SELECT TOP 5
    C.FirstName + ' ' + C.LastName AS CustomerName,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS TotalSpent
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN OrderItems OI ON O.OrderID = OI.OrderID
GROUP BY C.FirstName, C.LastName
ORDER BY TotalSpent DESC;
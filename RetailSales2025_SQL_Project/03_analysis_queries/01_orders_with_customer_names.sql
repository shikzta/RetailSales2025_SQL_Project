--Orders with customer names
SELECT
    O.OrderID,
    C.FirstName + ' ' + C.LastName AS CustomerName,
    O.OrderDate,
    O.PaymentMethod,
    O.OrderStatus
FROM Orders O
JOIN Customers C
    ON O.CustomerID = C.CustomerID;
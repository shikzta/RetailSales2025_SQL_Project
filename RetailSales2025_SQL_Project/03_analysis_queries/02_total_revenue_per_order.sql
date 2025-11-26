--Total revenue for each order

SELECT
    O.OrderID,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS OrderTotal
FROM OrderItems OI
JOIN Orders O
    ON OI.OrderID = O.OrderID
GROUP BY O.OrderID
ORDER BY OrderTotal DESC;
--Show monthly revenue trend

SELECT
    FORMAT(O.OrderDate, 'yyyy-MM') AS Month,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS MonthlyRevenue
FROM Orders O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
GROUP BY FORMAT(O.OrderDate, 'yyyy-MM')
ORDER BY Month;
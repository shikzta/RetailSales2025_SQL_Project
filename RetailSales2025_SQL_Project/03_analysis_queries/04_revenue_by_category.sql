--Show revenue by each category

SELECT
    P.Category,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS CategoryRevenue
FROM Products P
JOIN OrderItems OI ON P.ProductID = OI.ProductID
GROUP BY P.Category
ORDER BY CategoryRevenue DESC;
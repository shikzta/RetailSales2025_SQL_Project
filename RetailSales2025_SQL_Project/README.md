Project Overview
This SQL project simulates a real retail business dataset for the year 2025. It includes customers, products, orders, and order line items.

The project was built to showcase:

	SQL database design
	Data modelling using primary/foreign keys
	Writing analytical SQL queries
	Producing business insights
	Real-world reporting metrics (revenue, category performance, monthly trends, top customers)

This project mirrors the type of SQL work done by Data Analysts, BI Analysts, and Junior Data Engineers in real companies.


Tech Stack

	SQL Server Express 2025
	SQL Server Management Studio (SSMS)
	T-SQL


Database Schema (ERD)

Customers		Orders			OrderItems		Products
	
CustomerID PK		OrderID PK		OrderItemID PK		ProductID PK
FirstName		CustomerID FK		OrderID FK		ProductName
LastName		OrderDate		ProductID FK		Category
Email			OrderStatus		Quantity		UnitPrice
City			PaymentMethod		UnitPriceAtOrder	IsActive
Region


Schema Creation
Stored in:

01_schema/

	Includes:

		CREATE TABLE Customers
		CREATE TABLE Products
		CREATE TABLE Orders
		CREATE TABLE OrderItems

All tables include:

	Primary Keys
	Foreign Keys
	Correct data types
	Basic constraints


Seed Data (Sample Dataset)
Stored in:

02_seed_data/

You will find 4 scripts:

	insert_customers.sql – 20 customers
	insert_products.sql – 10 products
	insert_orders.sql – 30 orders
	insert_order_items.sql – 38 order line items

The dataset simulates real retail sales activity across April–May 2024.


Analysis Queries (Business Insights)
Stored in:

03_analysis_queries/

Below are the main insights included.

All Orders With Customer Names
Shows customer full name, order date, payment method, and order status.


SELECT 
    O.OrderID,
    C.FirstName + ' ' + C.LastName AS CustomerName,
    O.OrderDate,
    O.PaymentMethod,
    O.OrderStatus
FROM Orders O
JOIN Customers C 
    ON O.CustomerID = C.CustomerID;


Total Revenue Per Order


SELECT 
    O.OrderID,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS OrderTotal
FROM OrderItems OI
JOIN Orders O ON OI.OrderID = O.OrderID
GROUP BY O.OrderID
ORDER BY OrderTotal DESC;


Top 5 Customers by Total Spend


SELECT TOP 5
    C.FirstName + ' ' + C.LastName AS CustomerName,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS TotalSpent
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN OrderItems OI ON O.OrderID = OI.OrderID
GROUP BY C.FirstName, C.LastName
ORDER BY TotalSpent DESC;


Revenue by Product Category


SELECT 
    P.Category,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS CategoryRevenue
FROM Products P
JOIN OrderItems OI 
    ON P.ProductID = OI.ProductID
GROUP BY P.Category
ORDER BY CategoryRevenue DESC;


Monthly Revenue Trend


SELECT
    FORMAT(O.OrderDate, 'yyyy-MM') AS Month,
    SUM(OI.Quantity * OI.UnitPriceAtOrder) AS MonthlyRevenue
FROM Orders O
JOIN OrderItems OI 
    ON O.OrderID = OI.OrderID
GROUP BY FORMAT(O.OrderDate, 'yyyy-MM')
ORDER BY Month;


Query Outputs (Screenshots)

Screenshots of all key query results are stored in:

04_outputs_screenshot/


These include:

	Full order list
	Revenue per order
	Top 5 customers
	Revenue by category
	Monthly revenue trend
	These images demonstrate proof of execution, which recruiters love seeing.

Business Insights Summary
From the dataset:

	Best customer: Alice Smith (spends £2425)
	Top revenue category: Electronics (£10,900)
	Busiest month: May 2024
	Total orders: 30
	Largest order: £1,280
	These are realistic metrics that reflect typical retail business activity




Key SQL Skills Demonstrated

	Database design
	ERD modelling
	PK-FK relationships
	JOINs (INNER, LEFT, FULL)
	GROUP BY + Aggregations
	Calculating revenue metrics
	Formatting time-based reports
	Writing professional SQL scripts
	Organizing SQL into a GitHub-ready project


Why This Project Is Valuable for Recruiters

This project proves you can:

	Design a relational SQL database
	Load and transform data
	Produce business-ready insights
	Answer realistic analytical questions
	Write clean, production-style SQL




















CREATE DATABASE superstore_db;
USE superstore_db;
SHOW TABLES;
DESCRIBE cleaned_data;
SELECT * FROM cleaned_data LIMIT 5;

-- highest sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM cleaned_data
GROUP BY Category;

-- orders from each region
SELECT Region, COUNT(*) AS Total_Orders
FROM cleaned_data
GROUP BY Region;

-- Segment with highest orders
SELECT Segment, COUNT(*) Total_Orders
FROM cleaned_data
GROUP BY Segment;

-- Total sales of each states
SELECT State, SUM(Sales) Total_Sales
FROM cleaned_data
GROUP BY State;

-- Average sales value
SELECT Sales, AVG(Sales) Average_Sales
FROM cleaned_data
GROUP BY Sales;

-- City with high orders
SELECT City, COUNT(*) Total_Sales
FROM cleaned_data
GROUP BY City;
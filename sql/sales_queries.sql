create database salesdb;
use salesdb;

/*1. Which product generates the most sales?*/
SELECT
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC;

/*2. Who were the top customers?*/
SELECT
    Customer,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM salesdb.sales_data
GROUP BY Customer
ORDER BY Total_Sales DESC
LIMIT 10;

/*3. Which customers generated the highest sales?*/
SELECT
    Customer,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Customer
ORDER BY Total_Sales DESC;

/* 4. How did sales change between 2023 and 2024?*/
SELECT
    Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Year
ORDER BY Year;

/*5.Which regions generate the most sales and profit?*/
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS Profit_Margin
FROM salesdb.sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;
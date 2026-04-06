-- Total Sales
SELECT SUM(Sales) AS total_sales FROM sales;

-- Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 5 Products
SELECT Product_Name, SUM(Sales) AS total_sales
FROM sales
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS month,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

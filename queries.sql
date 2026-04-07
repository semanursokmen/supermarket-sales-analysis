-- Supermarket Sales Analysis Queries

-- Total sales by product category
SELECT "Product Line", SUM(Sales) as total_sales
FROM sales
GROUP BY "Product Line";

-- Total sales by city
SELECT "City", SUM(Sales) as total_sales
FROM sales
GROUP BY "City";

-- Total sales by gender
SELECT "Gender", SUM(Sales) as total_sales
FROM sales
GROUP BY "Gender";

-- Average spending by gender
SELECT "Gender", AVG(Sales) as avg_spending
FROM sales
GROUP BY "Gender";

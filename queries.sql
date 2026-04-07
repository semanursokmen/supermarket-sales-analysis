-- Supermarket Sales Analysis Queries

-- Total sales by product category
SELECT "Product Line", SUM(total) as total_sales
FROM supermarket
GROUP BY "Product Line";

-- Total sales by city
SELECT "City", SUM(total) as total_sales
FROM supermarket
GROUP BY "City";

-- Total sales by gender
SELECT "Gender", SUM(total) as total_sales
FROM supermarket
GROUP BY "Gender";

-- Average spending by gender
SELECT "Gender", AVG(total) as avg_spending
FROM supermarket
GROUP BY "Gender";

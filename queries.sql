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

-- Total sales by City and Gender (Naypyitaw + Female) 
SELECT 
    "City",
    "Gender",
    SUM(Sales) AS total_sales
FROM sales
WHERE "City" = 'Naypyitaw' AND "Gender" = 'Female'
GROUP BY "City", "Gender";

-- PROBLEM DEFINITION:
-- Write down appropriate SQL statements on computation on a table data.
--  1. counts the total number of orders
--  2. calculate the avg price of all products
--  3. determine the max & min product prices.rename the output as max_price
--  & min_price respectively
--  4. count the number of products having price greater than or equal to 1500.

-- OBJECTIVE:
--  1. Performing various functions on table data. 


-- 1. Count the total number of orders


SELECT COUNT(*) AS total_orders
FROM sales_order_details;

-- ✅ 2. Average product rate


SELECT AVG(product_rate) AS average_rate
FROM sales_order_details;


-- ✅ 3. Maximum & Minimum product rate

SELECT 
    MAX(product_rate) AS max_price,
    MIN(product_rate) AS min_price
FROM sales_order_details;


-- ✅ 4. Count products having price ≥ 1500


SELECT COUNT(product_no) AS high_value_items_count
FROM sales_order_details
WHERE product_rate >= 1500;
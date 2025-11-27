-- 1. Find the names of salesman who have a salary equal to 15000

-- Table: salesman_master
-- Column: sal_amt

-- ✔ SQL:

SELECT salesman_name
FROM salesman_master
WHERE sal_amt = 15000;


-- 2. List all clients who are located in Mumbai


SELECT *
FROM client_master
WHERE city = 'Mumbai';




-- OR ONLY client names:

-- sql

SELECT name
FROM client_master
WHERE city = 'Mumbai';
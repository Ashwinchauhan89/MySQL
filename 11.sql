-- Write down appropriate SQL statements on altering the table structure.
--  1. change the size of sell price col in product_master to 10,2 .
-- .

-- OBJECTIVE:
--  1. Understanding how records are altered. 

-- SQL Statement: Change the size of sell_price column to NUMBER(10,2)

ALTER TABLE product_master
MODIFY COLUMN sell_price DECIMAL(10,2);

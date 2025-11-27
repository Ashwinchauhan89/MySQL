
CREATE TABLE product_master (
    product_no    VARCHAR(6) PRIMARY KEY,
    description   VARCHAR(15) NOT NULL,
    profit_percent DECIMAL(4,2) NOT NULL,
    unit_measure  VARCHAR(10) NOT NULL,
    qty_on_hand   INT NOT NULL,
    reorder_lvl   INT NOT NULL,
    sell_price    DECIMAL(8,2) NOT NULL,
    cost_price    DECIMAL(8,2) NOT NULL
);


INSERT INTO product_master 
(product_no, description, profit_percent, unit_measure, qty_on_hand, reorder_lvl, sell_price, cost_price)
VALUES
('P7890',  'printer',  5.00, 'product', 60, 40, 340.00, 320.00),
('PS123', 'mouse',     8.00, 'piece',   50, 30, 400.00, 375.00),
('PR345', 'speaker',   8.00, 'product', 30, 20, 320.00, 280.00),
('PT567', 'mouse',     8.00, 'piece',   50, 30, 400.00, 375.00),
('PA433', 'keyboard',  6.00, 'product', 40, 20, 350.00, 290.00),
('PS567', 'CPU',       7.00, 'product', 50, 40, 450.00, 430.00);


--Aap column list na likho tab bhi INSERT work karega — BUT ONLY IF you supply values in the exact same order as the table structure.

--like

--INSERT INTO product_master
--VALUES ('P7890', 'printer', 5.00, 'product', 60, 40, 340.00, 320.00);

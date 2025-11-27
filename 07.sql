CREATE TABLE order_detail (

    order_no      VARCHAR(6) PRIMARY KEY,
    product_no    VARCHAR(6),
    qty_ordered   INT,
    qty_disp      INT,
    product_rate  DECIMAL(10,2),

    FOREIGN KEY (product_no) REFERENCES product_master(product_no)
);




    -- CONSTRAINT fk_product FOREIGN KEY (product_no)
    --     REFERENCES product_master(product_no)

--     Yes! You can write it directly, exactly like this:

-- FOREIGN KEY (product_no) REFERENCES product_master(product_no)


-- This is correct SQL and completely valid.
-- You do NOT need to write constraint name unless your teacher specifically asks for it.



INSERT INTO order_detail VALUES
('O10001', 'P7890', 3, 3, 340.00);

INSERT INTO order_detail VALUES
('O10002', 'PS123', 2, 2, 400.00);

INSERT INTO order_detail VALUES
('O10003', 'PR345', 5, 4, 320.00);

INSERT INTO order_detail VALUES
('O10004', 'PT567', 1, 1, 400.00);

INSERT INTO order_detail VALUES
('O10005', 'PA433', 4, 4, 350.00);

INSERT INTO order_detail VALUES
('O10006', 'PS567', 2, 2, 450.00);

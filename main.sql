Create database Clent_sale

use database Clent_sale;

CREATE TABLE client_master (
    clientno   VARCHAR(6)  NOT NULL PRIMARY KEY,
    name       VARCHAR(20) NOT NULL,
    address    VARCHAR(30),
    city       VARCHAR(15),
    pincode    INT,
    state      VARCHAR(15),
    bal_due    DECIMAL(10,2),
    
    CONSTRAINT chk_clientno CHECK (clientno LIKE 'C%')
);

INSERT INTO client_master (clientno, name, address, city, pincode, state, bal_due) VALUES
('C00001', 'Ramesh Bansal', '11/A Tilak Rd', 'Mumbai', 400054, 'Maharashtra', 1500.00),
('C00002', 'Manisha Mukherjee', '6/51 Kalas', 'Kolkata', 700086, 'West Bengal', 0.00),
('C00003', 'Chirag Bankar', 'P-7 Borivli', 'Mumbai', 400057, 'Maharashtra', 5000.00),
('C00004', 'Piyush Dixit', 'A/5 Vihar', 'Delhi', 110001, 'Delhi', 2000.00),
('C00005', 'Manoj Chavan', '10/2 Worli', 'Mumbai', 400060, 'Maharashtra', 10000.00);

SELECT * FROM client_master;

CREATE TABLE product_master;

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


SELECT * FROM product_master;


CREATE TABLE salesman_master (
    salesman_no    VARCHAR(6) PRIMARY KEY,
    salesman_name  VARCHAR(20) NOT NULL,
    address        VARCHAR(30) NOT NULL,
    city           VARCHAR(20),
    pin            INT,
    state          VARCHAR(20),
    sal_amt        DECIMAL(8,2) NOT NULL,
    tgt_to_get     DECIMAL(6,2) NOT NULL,
    ytd_sales      DECIMAL(6,2) NOT NULL,
    remarks        VARCHAR(60)
);

INSERT INTO salesman_master VALUES
('S10001', 'Ramesh Patil', '12 Gandhi Road', 'Mumbai', 400001, 'Maharashtra', 25000.00, 250.00, 300.00, 'Top performer');

INSERT INTO salesman_master VALUES
('S10002', 'Anita Sharma', '44 Park Street', 'Kolkata', 700016, 'West Bengal', 18000.00, 350.00, 220.00, 'Achieved 60% target');

INSERT INTO salesman_master VALUES
('S10003', 'Suresh Mehta', '8 Civil Lines', 'Delhi', 110001, 'Delhi', 30000.00, 600.00, 450.00, 'Good sales');

INSERT INTO salesman_master VALUES
('S10004', 'Kiran Desai', '22 MG Road', 'Pune', 411001, 'Maharashtra', 22000.00, 400.00, 280.00, 'Stable performance');

INSERT INTO salesman_master VALUES
('S10005', 'Neha Gupta', '5 Ring Road', 'Jaipur', 302001, 'Rajasthan', 27000.00, 550.00, 350.00, 'Growing improvement');

INSERT INTO salesman_master VALUES
('S10006', 'Vikas Shah', '10 Mall Road', 'Chennai', 600001, 'Tamil Nadu', 20000.00, 450.00, 310.00, 'Needs training');

SELECT * FROM salesman_master;


CREATE TABLE sales_order (
    order_no      VARCHAR(6) PRIMARY KEY,
    order_date    DATE,
    clientno     VARCHAR(6),
    dely_addr     VARCHAR(25),
    salesman_no   VARCHAR(6),
    dely_type     CHAR(1),
    billed_yn     CHAR(1),
    dely_date     DATE,
    order_status  VARCHAR(10),

    FOREIGN KEY (clientno) REFERENCES client_master(clientno),
    FOREIGN KEY (salesman_no) REFERENCES salesman_master(salesman_no)
);
-- 1. Client C00003 – Salesman S10003 – Cancelled
INSERT INTO sales_order VALUES
('O00001',  '2025-10-25', 'C00003', '99 PQR Lane', 'S10003',
 'F', 'Y',  '2025-10-25', 'Cancelled');

--  2. Client C00004 – Salesman S10004 – Full Delivery Same Day
INSERT INTO sales_order VALUES
('O00002',  '2025-12-01', 'C00004', '1B Park Street', 'S10004',
 'F', 'N',  '2025-12-01', 'Inprocess');

--  3. Client C00005 – Salesman S00005 – Backorder Status
INSERT INTO sales_order VALUES
('O00003',  '2025-12-05', 'C00005', '8A Vasant Kunj', 'S10005',
 'P', 'N',  '2025-12-15', 'Backorder');

--  4. Client C00005 – Salesman S10006 – Partial Delivery
INSERT INTO sales_order VALUES
('O00004',  '2025-12-10', 'C00005', '77 MG Road', 'S10006',
 'P', 'Y', NULL, 'Inprocess');

--  5. Client C00001 – Salesman S10001 – Fully Delivered
INSERT INTO sales_order VALUES
('O00005',  '2025-11-10', 'C00001', '405 ABC Road XYZ Complex', 'S10001',
 'F', 'N',  '2025-11-15', 'Inprocess');

--  6. Client C00002 – Salesman S10002 – Partially Delivered
INSERT INTO sales_order VALUES
('O00006',  '2025-11-10', 'C00002', '68 XYZ Complex', 'S10002',
 'P', 'N', NULL, 'Inprocess');
SELECT * FROM sales_order;

CREATE TABLE order_detail (

    order_no      VARCHAR(6) PRIMARY KEY,
    product_no    VARCHAR(6),
    qty_ordered   INT,
    qty_disp      INT,
    product_rate  DECIMAL(10,2),

    FOREIGN KEY (product_no) REFERENCES product_master(product_no)
);
INSERT INTO order_detail VALUES
('O00001', 'P7890', 3, 3, 340.00);

INSERT INTO order_detail VALUES
('O00002', 'PS123', 2, 2, 400.00);

INSERT INTO order_detail VALUES
('O00003', 'PR345', 5, 4, 320.00);

INSERT INTO order_detail VALUES
('O00004', 'PT567', 1, 1, 400.00);

INSERT INTO order_detail VALUES
('O00005', 'PA433', 4, 4, 350.00);

INSERT INTO order_detail VALUES
('O00006', 'PS567', 2, 2, 450.00);




SELECT salesman_name
FROM salesman_master
WHERE sal_amt = 15000;

SELECT name
FROM client_master
WHERE city = 'Mumbai';

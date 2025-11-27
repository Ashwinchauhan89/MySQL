CREATE TABLE sales_order (
    order_no      VARCHAR(6) PRIMARY KEY,
    order_date    DATE,
    client_no     VARCHAR(6),
    dely_addr     VARCHAR(25),
    salesman_no   VARCHAR(6),
    dely_type     CHAR(1),
    billed_yn     CHAR(1),
    dely_date     DATE,
    order_status  VARCHAR(10),

    FOREIGN KEY (client_no) REFERENCES client_master(client_no),
    FOREIGN KEY (salesman_no) REFERENCES salesman_master(salesman_no)
);


-- 1. Client C00003 – Salesman S00003 – Cancelled
INSERT INTO sales_order VALUES
('O46865',  '2025-10-25', 'C00003', '99 PQR Lane', 'S00003',
 'F', 'Y',  '2025-10-25', 'Cancelled');

--  2. Client C00004 – Salesman S00004 – Full Delivery Same Day
INSERT INTO sales_order VALUES
('O45678',  '2025-12-01', 'C00004', '1B Park Street', 'S00004',
 'F', 'N',  '2025-12-01', 'Inprocess');

--  3. Client C00005 – Salesman S00005 – Backorder Status
INSERT INTO sales_order VALUES
('O55555',  '2025-12-05', 'C00005', '8A Vasant Kunj', 'S00005',
 'P', 'N',  '2025-12-15', 'Backorder');

--  4. Client C00006 – Salesman S00006 – Partial Delivery
INSERT INTO sales_order VALUES
('O88888',  '2025-12-10', 'C00006', '77 MG Road', 'S00006',
 'P', 'Y', NULL, 'Inprocess');

--  5. Client C00001 – Salesman S00001 – Fully Delivered
INSERT INTO sales_order VALUES
('O00001',  '2025-11-10', 'C00001', '405 ABC Road XYZ Complex', 'S00001',
 'F', 'N',  '2025-11-15', 'Inprocess');

--  6. Client C00002 – Salesman S00002 – Partially Delivered
INSERT INTO sales_order VALUES
('O00002',  '2025-11-10', 'C00002', '68 XYZ Complex', 'S00002',
 'P', 'N', NULL, 'Inprocess');

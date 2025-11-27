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
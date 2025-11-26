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



-- This Is Also Right

-- INSERT INTO client VALUES
-- ('C00001', 'Rahul Sharma', '12 MG Road', 'Mumbai', 400001, 'Maharashtra', 1500.50);

-- INSERT INTO client VALUES
-- ('C00002', 'Priya Verma', '22 Park Street', 'Kolkata', 700016, 'West Bengal', 250.00);

-- INSERT INTO client VALUES
-- ('C00003', 'Amit Patel', '5 Ring Road', 'Ahmedabad', 380001, 'Gujarat', 980.75);

-- INSERT INTO client VALUES
-- ('C00004', 'Sneha Kapoor', '44 Civil Lines', 'Delhi', 110001, 'Delhi', 0.00);

-- INSERT INTO client VALUES
-- ('C00005', 'Rohan Singh', '88 JP Nagar', 'Bengaluru', 560076, 'Karnataka', 320.40);

-- INSERT INTO client VALUES
-- ('C00006', 'Kavita Jain', '9 MI Road', 'Jaipur', 302001, 'Rajasthan', 120.00);



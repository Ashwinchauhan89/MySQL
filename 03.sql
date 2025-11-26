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




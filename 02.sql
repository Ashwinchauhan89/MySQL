USE college;

CREATE TABLE students(
  id INT PRIMARY KEY,
  name VARCHAR(30),
  age INT NOT NULL
);


INSERT INTO students VALUES(1, "Ashwin" , 19);
INSERT INTO students VALUES(2, "Arvind" , 17);
INSERT INTO students VALUES(3, "Mohit" , 20);
INSERT INTO students VALUES(4, "Sagar" , 19);

SELECT * FROM students;
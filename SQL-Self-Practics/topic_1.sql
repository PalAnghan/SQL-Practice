CREATE DATABASE VIVA_LEARNING;

USE VIVA_LEARNING;

SHOW TABLES;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT
);


INSERT INTO employees (emp_id, emp_name, salary, dept_id) VALUES
(1, 'John Doe', 50000.00, 101),
(2, 'Jane Smith', 60000.00, 102),
(3, 'Alice Johnson', 55000.00, 101),
(4, 'Bob Brown', 70000.00, 103);

SELECT * FROM employees;

SELECT * FROM employees WHERE salary > 30000;

INSERT INTO employees ( `EMP_ID`, `EMP_NAME`, `SALARY`, `DEPT_ID`) VALUES
(5, 'Rahul', 25000.00, 101),
(6, 'Amit', 40000.00, 102),
(7, 'Sneha', 35000.00, 103),
(8, 'Priya', 45000.00, 101),
(9, 'Rohit', 30000.00, 102),
(10, 'Anjali', 55000.00, 103);

UPDATE employees SET `SALARY` = 30000 WHERE `EMP_NAME` = 'Rahul';

DELETE FROM employees WHERE `EMP_ID` = 3;

SELECT EMP_ID, EMP_NAME, SALARY FROM employees WHERE `SALARY` BETWEEN 25000 AND 50000;


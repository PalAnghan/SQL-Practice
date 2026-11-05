USE VIVA_LEARNING;

SHOW TABLES;

DESC employees;

SELECT * FROM employees;

SELECT * FROM departments;

CREATE TABLE customers (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(100),
    EMAIL VARCHAR(100),
    CITY VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'rahul patel', 'rahul@gmail.com', 'Surat'),
(2, 'amit shah', 'amit@gmail.com', 'Vadodara'),
(3, 'priya joshi', 'priya@gmail.com', 'Ahmedabad');

SELECT CONCAT('Hello', ' ', 'World');

SELECT CONCAT(CUSTOMER_NAME, ' - ', CITY)
AS CUSTOMER_DETAILS
FROM customers;

SELECT UPPER(CUSTOMER_NAME)
FROM customers;

SELECT LOWER(CUSTOMER_NAME)
FROM customers;

SELECT LENGTH('HELLO');

SELECT CHAR_LENGTH('HELLO');

SELECT SUBSTRING('DATABASE', 1, 4);

SELECT SUBSTRING(CUSTOMER_NAME, 1, 5)
FROM customers;

SELECT LEFT('DATABASE', 4);

SELECT RIGHT('DATABASE', 4);

SELECT
    CUSTOMER_NAME,
    LEFT(EMAIL, 5) AS EMAIL_START
FROM customers;

SELECT TRIM('   HELLO   ');

SELECT LTRIM('   HELLO');

SELECT RTRIM('HELLO   ');

SELECT REPLACE(
    'I LOVE SQL',
    'SQL',
    'MYSQL'
);

SELECT REPLACE(
    CUSTOMER_NAME,
    'rahul',
    'RAHUL'
)
FROM customers;

SELECT LOCATE('SQL', 'I LOVE SQL');

SELECT INSTR('I LOVE SQL', 'SQL');
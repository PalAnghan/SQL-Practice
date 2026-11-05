USE VIVA_LEARNING;

SHOW TABLES;

DESC employees;

SELECT COUNT(*) AS total_employees FROM employees;

SELECT AVG(salary) AS average_salary FROM employees;

SELECT MAX(salary) AS highest_salary FROM employees;

SELECT MIN(salary) AS highest_salary FROM employees;

SELECT COUNT(DISTINCT dept_id) AS total_departments FROM employees;
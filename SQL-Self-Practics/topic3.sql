USE VIVA_LEARNING;

SHOW TABLES;

DESC employees;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
INNER JOIN departments d
ON e.DEPT_ID = d.DEPT_ID;

SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
LEFT JOIN departments d
ON e.DEPT_ID = d.DEPT_ID;

SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
RIGHT JOIN departments d
ON e.DEPT_ID = d.DEPT_ID;


SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
LEFT JOIN departments d
ON e.DEPT_ID = d.DEPT_ID
UNION
SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
RIGHT JOIN departments d
ON e.DEPT_ID = d.DEPT_ID;

SELECT e.EMP_NAME, d.DEPT_NAME
FROM employees e
CROSS JOIN departments d;

SELECT
    e.EMP_NAME AS EMPLOYEE,
    m.EMP_NAME AS MANAGER
FROM employees e
LEFT JOIN employees m
ON e.MANAGER_ID = m.EMP_ID;
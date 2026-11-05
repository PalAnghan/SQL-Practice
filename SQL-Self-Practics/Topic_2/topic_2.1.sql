USE VIVA_LEARNING;

SHOW TABLES;

DESC employees;

SELECT emp_id , emp_name, salary, dept_id FROM employees WHERE salary < 40000;

SELECT EMP_ID , EMP_NAME , SALARY, DEPT_ID FROM employees WHERE `SALARY` BETWEEN 30000 AND 50000;

SELECT * FROM employees WHERE `EMP_NAME` != 'RAHUL';
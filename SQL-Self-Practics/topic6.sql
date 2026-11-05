SELECT *
FROM employees
WHERE SALARY > (SELECT AVG(SALARY) FROM employees
);

SELECT *
FROM employees
WHERE DEPT_ID IN (
    SELECT DEPT_ID
    FROM departments
);


SELECT *
FROM employees
WHERE DEPT_ID IN (101, 102);


SELECT * FROM employees
WHERE DEPT_ID IN (
    SELECT DEPT_ID
    FROM departments
    WHERE DEPT_NAME = 'IT'
);


SELECT *
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.DEPT_ID = e.DEPT_ID
);


SELECT *
FROM employees e
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM employees
    WHERE DEPT_ID = e.DEPT_ID
);


SELECT MAX(SALARY) AS SECOND_HIGHEST
FROM employees
WHERE SALARY < (
    SELECT MAX(SALARY)
    FROM employees
);


SELECT *
FROM employees e
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM employees
    WHERE DEPT_ID = e.DEPT_ID
);

SELECT *
FROM employees
WHERE SALARY > (
    SELECT SALARY
    FROM employees
    WHERE EMP_NAME = 'Rahul'
);
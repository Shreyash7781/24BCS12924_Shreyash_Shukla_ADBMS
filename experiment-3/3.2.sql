CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_salary DECIMAL(10, 2) NOT NULL,
      emp_city VARCHAR(100) NOT NULL
);

INSERT INTO employees (emp_id, emp_name, emp_salary, emp_city) VALUES
(101, 'Amit Sharma', 85000.00, 'Mumbai'),
(102, 'Priya Patel', 95000.00, 'Mumbai'),
(103, 'Rahul Verma', 60000.00, 'Delhi'),
(104, 'Ananya Iyer', 110000.00, 'Bangalore'),
(105, 'Vikram Singh', 55000.00, 'Delhi'),
(106, 'Sneha Reddy', 105000.00, 'Bangalore'),
(107, 'Rohan Das', 72000.00, 'Kolkata')

SELECT  emp_city ,count(*) as cnt FROM EMPLOYEES
GROUP BY emp_city

SELECT  emp_city ,count(*) as cnt FROM EMPLOYEES
GROUP BY emp_city
ORDER BY CNT ASC

SELECT  emp_city ,count(EMP_ID) as cnt FROM EMPLOYEES
GROUP BY emp_city
ORDER BY CNT 

SELECT  emp_city , SUM(CASE WHEN EMP_SALARY>=90000 THEN 1 ELSE 0 END) AS CNT
FROM EMPLOYEES
GROUP BY emp_city

ORDER BY CNT DESC,EMP_CITY DESC

SELECT  emp_city , COUNT(CASE WHEN EMP_SALARY>=90000 THEN 1 END) AS CNT
FROM EMPLOYEES
GROUP BY emp_city

SELECT  emp_city , MAX(EMP_SALARY) AS MAX_SALARY
FROM EMPLOYEES
GROUP BY emp_city

SELECT  emp_city , MIN(EMP_SALARY) AS MIN_SALARY
FROM EMPLOYEES
GROUP BY emp_city

SELECT  emp_city , MIN(EMP_SALARY) AS MIN_SALARY
FROM EMPLOYEES
GROUP BY emp_city
HAVING  MIN(EMP_SALARY)>=85000

SELECT  DISTINCT EMP_CITY
FROM EMPLOYEES
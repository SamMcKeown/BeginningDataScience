-- 1. The SQL GROUP BY clause

SELECT age, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY age;

SELECT first_name, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY first_name;

-- 1-1. GROUP BY column numbers

SELECT first_name, 
       age, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY 1, 2;

SELECT first_name, 
       age, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY 2, 1;

-- 1-2. Using GROUP BY with ORDER BY

SELECT first_name, 
       age, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY 1, 2 
ORDER BY 1, 2;

SELECT first_name, 
       age, 
       COUNT(*) AS count 
FROM employee_demographics 
GROUP BY 1, 2 
ORDER BY 2, 1;

-- 2. SQL HAVING

SELECT first_name, 
       last_name, 
       MAX(age) AS age_high 
FROM employee_demographics
GROUP BY 1, 2 
HAVING MAX(age) > 32;
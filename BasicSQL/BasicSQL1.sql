-- 1. SELECT & FROM 

SELECT * 
FROM employee_demographics;

SELECT first_name, 
       last_name, 
       age 
FROM employee_demographics;

-- 2. Column names 

SELECT first_name AS "First Name" 
FROM employee_demographics;

-- 3. The SQL LIMIT command 

SELECT * 
FROM employee_demographics 
LIMIT 5;

-- 4. The SQL WHERE clause

SELECT * 
FROM employee_demographics 
WHERE age <= 31;

SELECT * 
FROM employee_demographics 
WHERE age > 31;
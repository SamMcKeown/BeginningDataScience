-- 1. SQL COUNT 

SELECT COUNT(*) 
FROM employee_demographics;

SELECT COUNT(1) 
FROM employee_demographics;

-- 1-1. Counting individual columns

SELECT COUNT(employee_id) 
FROM employee_demographics;

SELECT COUNT(first_name) 
FROM employee_demographics;

SELECT COUNT(age) AS age_count 
FROM employee_demographics;

-- 2. SQL SUM

SELECT SUM(age) 
FROM employee_demographics;

-- 3. SQL MIN/MAX

SELECT MAX(age) 
FROM employee_demographics;

SELECT MIN(age) 
FROM employee_demographics;

-- 4. SQL AVG

SELECT AVG(age) 
FROM employee_demographics 
WHERE age IS NOT NULL;
-- 1. SQL LIKE

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'Jim';

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'Michael';

-- 1-1. Wilcards & ILIKE

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'm%';

SELECT * 
FROM employee_demographics 
WHERE first_name ILIKE 'm%';

SELECT * 
FROM employee_demographics 
WHERE first_name ILIKE 'to_y';

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'to_y';

-- 2. SQL IN

SELECT * 
FROM employee_demographics 
WHERE first_name IN ('Jim', 'Pam', 'Dwight');

SELECT * 
FROM employee_demographics 
WHERE age IN (30, 31, 32);

-- 3. SQL BETWEEN

SELECT * 
FROM employee_demographics 
WHERE age BETWEEN 20 AND 30;

SELECT * 
FROM employee_demographics 
WHERE age >= 20 AND age <= 30;


-- 4. SQL IS NULL 

SELECT * 
FROM employee_demographics 
WHERE first_name IS NULL;

-- 5. SQL AND 

SELECT * 
FROM employee_demographics 
WHERE age <= 30 AND first_name IN ('Jim', 'Pam', 'Dwight');

-- 6. SQL OR

SELECT * 
FROM employee_demographics 
WHERE age >= 35 OR gender = 'Female';

SELECT * 
FROM employee_demographics 
WHERE age <= 35 AND (gender = 'Female' OR first_name ILIKE 'jim');

-- 7. SQL NOT

SELECT * 
FROM employee_demographics 
WHERE gender = 'Male' AND first_name IS NOT NULL;

SELECT * 
FROM employee_demographics 
WHERE gender = 'Male' AND first_name NOT LIKE 'J%';

-- 8. SQL ORDER BY

SELECT * 
FROM employee_demographics 
ORDER BY age;

SELECT * 
FROM employee_demographics 
WHERE first_name IS NOT NULL 
ORDER BY age DESC;

-- 8-1. Ordering data by multiple columns

SELECT * 
FROM employee_demographics 
ORDER BY first_name, age;

SELECT * 
FROM employee_demographics 
ORDER BY age, first_name;

SELECT * 
FROM employee_demographics 
ORDER BY age, first_name DESC;
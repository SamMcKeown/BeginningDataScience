-- CREATE TABLE statement & INSERT statement --

-- Tables are where data resides & its relationships are defined.
-- When you create a table, you assign a name to each column (field / attribute) & assign that column a data type.
-- Data stored in a table can be accessed, analysed, & queried, with SQL statements.

-- CREATE TABLE
CREATE TABLE employee_demographics
    (employee_id    int,
     first_name     varchar,
     last_name      varchar,
     age            int,
     gender         varchar);
     
-- INSERT      
INSERT INTO employee_demographics VALUES
    (1001, 'Jim', 'Halpert', 30, 'Male'),
    (1002, 'Pam', 'Beasley', 30, 'Female'),
    (1003, 'Dwight', 'Schrute', 29, 'Male'),
    (1004, 'Angela', 'Martin', 31, 'Female'),
    (1005, 'Toby', 'Flenderson', 32, 'Male'),
    (1006, 'Michael', 'Scott', 35, 'Male'),
    (1007, 'Meredith', 'Palmer', 32, 'Female'),
    (1008, 'Stanley', 'Hudson', 38, 'Male'),
    (1009, 'Kevin', 'Malone', 31, 'Male');
    
-- CREATE TABLE    
CREATE TABLE employee_salary
    (employee_id    int,
     job_title      varchar,
     salary         varchar);

-- INSERT INTO
INSERT INTO employee_salary VALUES
    (1001, 'Salesman', 45000),
    (1002, 'Receptionist', 36000),
    (1003, 'Salesman', 63000),
    (1004, 'Accountant', 47000),
    (1005, 'HR', 50000),
    (1006, 'Regional Manager', 65000),
    (1007, 'Supplier Relations', 41000),
    (1008, 'Salesman', 48000),
    (1009, 'Accountant', 42000);
    
-- Basic SELECT syntax --

-- SELECT / FROM
SELECT * 
FROM employee_demographics; 

-- SELECT / FROM
SELECT first_name, age, gender 
FROM employee_demographics; 
    
-- Using DISTINCT to find unique values --

-- SELECT DISTINCT 
SELECT DISTINCT gender 
FROM employee_demographics;

-- SELECT DISTINCT 
SELECT DISTINCT age, gender 
FROM employee_demographics;

-- Sorting data with ORDER BY --

-- ORDER BY 
SELECT * 
FROM employee_demographics 
ORDER BY age;

-- ORDER BY DESC
SELECT first_name, gender, age 
FROM employee_demographics 
ORDER BY age DESC;

-- Filtering rows with WHERE --

-- WHERE
SELECT first_name, last_name 
FROM employee_demographics 
WHERE gender = 'Male';

-- WHERE
SELECT first_name, last_name 
FROM employee_demographics 
WHERE gender != 'Male';

-- WHERE
SELECT first_name, last_name, age 
FROM employee_demographics 
WHERE age <= 32;

-- Using LIKE & ILIKE with WHERE --

-- WHERE LIKE
SELECT first_name, last_name 
FROM employee_demographics 
WHERE first_name LIKE 'jim%';

-- WHERE ILIKE
SELECT first_name, last_name 
FROM employee_demographics 
WHERE first_name ILIKE 'jim%';

-- Combining Operators with AND & OR --

-- WHERE / AND
SELECT first_name, last_name, age 
FROM employee_demographics 
WHERE age <= 30 AND gender = 'Female';

-- WHERE / OR
SELECT first_name, last_name, age 
FROM employee_demographics 
WHERE age <= 30 OR first_name = 'Toby';
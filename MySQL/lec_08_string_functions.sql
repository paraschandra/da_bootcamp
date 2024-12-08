-- String Functions

-- Length
SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- Upper & Lower
SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- Trim
SELECT TRIM('     sky     ');
SELECT LTRIM('     sky     ');
SELECT RTRIM('     sky     ');

-- Substrings
SELECT first_name, LEFT(first_name, 4), RIGHT(first_name, 4)
FROM employee_demographics;

# substring(string, start_pos, number of char)
SELECT first_name, SUBSTRING(first_name, 3, 2),
birth_date, SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- Replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- Locate
SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

-- Concat
SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
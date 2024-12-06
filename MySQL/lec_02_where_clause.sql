-- Lec_02: WHERE CLAUSE

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender <> 'Female'; # not equal to <>

-- AND OR NOT logical operators
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

-- LIKE Statement
-- %: anything and _: character
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__%';
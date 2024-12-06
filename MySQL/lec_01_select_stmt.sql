SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, birth_date, age, age+10 as new_age
FROM parks_and_recreation.employee_demographics;

# distinct keyword
SELECT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;
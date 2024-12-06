-- GROUP BY STATEMENT

SELECT gender, AVG(age), MAX(age), MIN(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- ORDER BY

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC; # also can use column numbers instead of column names( like here 5, 4).
-- LIMIT & Aliasing

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
# LIMIT pos, number of rows to show
LIMIT 2, 3; # 2 is for position and 3 is for after 2 how many tuples to show

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
-- HAVING AVG(age) > 40; 
-- instead use this
HAVING avg_age > 40;
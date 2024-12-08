-- HAVING VS WHERE

-- This will throw an error as Group by is not executed before where
-- SELECT gender, AVG(age)
-- FROM parks_and_recreation.employee_demographics
-- WHERE AVG(age) > 40
-- GROUP BY gender;

-- The correct way to do this is to use having with group by to check conditions
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%' # filter at row level
GROUP BY occupation
HAVING AVG(salary) > 75000; # filter after aggregation
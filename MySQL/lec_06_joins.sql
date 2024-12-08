-- JOINS

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER JOIN
SELECT *
FROM employee_demographics AS demo
JOIN employee_salary AS sal # or INNER JOIN
	ON demo.employee_id = sal.employee_id
;

SELECT demo.employee_id, age, occupation
FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal # or INNER JOIN
	ON demo.employee_id = sal.employee_id
;

-- OUTER JOINS

-- LEFT OUTER JOIN: Everything from left and common from right
SELECT *
FROM employee_demographics AS demo
LEFT JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;

-- RIGHT OUTER JOIN: Everything from right and common from left
SELECT *
FROM employee_demographics AS demo
RIGHT JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;

# NOTE: In all the cases it will populate the uncommon row with NULL for other table

-- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS santa_first_name,
emp1.last_name AS santa_last_name,
emp2.employee_id AS emp_id,
emp2.first_name AS emp_first_name,
emp2.last_name AS emp_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal # or INNER JOIN
	ON demo.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;
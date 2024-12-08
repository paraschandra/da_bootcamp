-- CASE STATEMENTS

SELECT first_name, last_name, age, 
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Adult'
    WHEN age >= 51 THEN 'Old'
END AS age_bracket
FROM employee_demographics;

# Pay Increase and Bonus
# < 50000 : 5%
# > 50000 : 7%
# Finance: 10% Bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
    ELSE salary * 1.00
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
    ELSE 0
END AS Bonus
FROM employee_salary;
-- Stored Procedures
-- Are block of code (functions basically) that can be reused

SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Creating a procedure
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Calling a procedure
CALL large_salaries();

-- When we need to include multiple queries in a single procedure, we need to use or change the delimiter
-- otherwise it will only consider the first query as procedure and others as normal queries

DELIMITER $$ # change delimiter to $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
END $$
DELIMITER ; # reset delimiter to ;

CALL large_salaries2();

-- Passing parameters
DELIMITER $$
CREATE PROCEDURE large_salaries3(p_emp_id INT)
BEGIN
	SELECT salary
    FROM employee_salary
    WHERE employee_id = p_emp_id;
END $$
DELIMITER ;

CALL large_salaries3(1);
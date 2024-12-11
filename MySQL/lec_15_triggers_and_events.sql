-- Triggers and Events


-- Triggers: Performs some queries when an event occurs
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphino', 'Saperstein', 'Exntertainment 720 CEO', 1000000, NULL);

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Events: Occurs when scheduled
DELIMITER $$
CREATE EVENT delete_retiree
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';

SELECT *
FROM employee_demographics;
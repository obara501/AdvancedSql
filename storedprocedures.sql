--STORED PROCEDURE IN SQL

--Stored procedures is sql code that can be saved and reused. Stored procedure are called to be executed

--SCENARIO
--You are tasked with creating a query that returns players who have scored >6 goals(top players) in a tournament.

--Sample db with employee table and players
use sql_iq;

--reate procedure and run to store. 
DELIMITER &&
CREATE PROCEDURE top_players()
BEGIN
SELECT name, country, goals
FROM players WHERE goals > 6;
END &&
DELIMITER ;--Default delimter

--Call procedure
CALL top_players();


--CREATING STORED PROCEDURES USING IN PARAMETER

--SCENARIO
--You have been tasked with creating a procedure to fetch top employees based on their salaries. 

--Create procedure and run to store. 
DELIMITER //
CREATE PROCEDURE sp_sortBySalary(IN var int)
BEGIN
SELECT name, age, salary, FROM emp_details
ORDER BY salary DESC LIMIT var;
END //
DELIMITER ;

--Call Procedure with parameter 3 i.e top 3 employees
CALL sp_sortBySalary(3);

--SCENARIO
--You have been tasked with creating a procedure that updates an employee's salary.

--Create procedure
DELIMITER //
CREATE PROCEDURE update_salary(IN temp_name varchar(20), IN new_salary float)
BEGIN
UPDATE emp_details 
SET salary = new_salary WHERE name = temp_name;
END //
DELIMITER

--Call procedure with parameters Marry and salary of 80000
CALL update_salary('Marry',80000);


--CREATING STORED PROCEDURES USING OUT PARAMETER

--SCENARIO
--You are tasked with creating a procedure to get the count of female employees.
--We'll create the total count as the output parameter type int

--Create procedure.
DELIMITER //
CREATE PROCEDURE sp_countEmployees(OUT Total_Emps int)
BEGIN
SELECT count(name) INTO Total_Emps FROM emp_details
WHERE sex = 'F';
END //
DELIMITER ;

--Call the procedure.
CALL sp_countEmployees (@F_emp);
SELECT @F_emp as Female Employee;

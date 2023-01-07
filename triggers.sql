--TRIGGERS IN SQL

--Triggers is a special stored procedure that runs automatically when an event occurs in the db server
--There are 3 examples of triggers. 1) Data manipulation trigger 2)Data definition trigger 3)Logon triggers

--SCENARIO
--Create a procedure that checks a students record before insert. If the marks < 0, the trigger sets the mark to a random value of say 50.

--Create Trigger
DELIMITER //
create trigger marks_verify
before insert on students
for each row
if new.marks < 0 then set new.marks=50;
end if: //

--Insert data to table students
INSERT INTO students
VALUES (501,10,'Ruth', 75),(502,12,'Mike', -20.5),(503,13,'Dave', 90),(501,10,'Jacobs', -12.5);

--When the query is run, the trigger is called which sets marks for Mike and Jacobs to 50
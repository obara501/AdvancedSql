--SUB QUERIES(inner queries) IN SQL

--SCENARIO
--You are tasked with finding all the employees whose salary is greater than the average salary.

use sql_intro;

SELECT emp_name, dept, salary
FROM employees WHERE salary > (SELECT avg(salary) FROM employees);

--SCENARIO
--You are tasked with fiding all the employees whose salary is greater than John's salary.

SELECT emp_name, gender, dept, salary
FROM employees WHERE salary > 
(SELECT salary FROM employees WHERE emp_name = 'John');



--SCENARIO
--Get details about a record that is available in another table
--Get product details from products table whose priceEach < $100. Price each is in orders table. 

use classicmodels;--Sample db from www.myqsltutorial.org

SELECT productcode, productname, msrp from products
WHERE productcode IN 
(SELECT productcode FROM orderdetails WHERE priceeach< 100);


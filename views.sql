--SQL VIEWS

--Views are virtual tables that don not diaplay data of their own but of other tables. They are created by joining two or more tavles. 

--SCENARIO
--Display some customer details

--Demo database
USE classicmodels;

--Create the view
create view cust_details
as
select customerName, phone, city
from customers;

--Display view content
select * from cust_details


--CREATING VIEWS FROM JOINS.

--SCENARION
--Create a view to display product information.

--Create the view
create view product_description
as
select productName, quantityInStock, msrp, textDescription
from products as p inner join productslines as pl
on p.productline = pl.prodcuctline;

--Dislay view content
select * from product_description

--show all views ina database
show full tables
where yable-type = 'VIEW';



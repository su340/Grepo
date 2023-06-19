--The SQL INSERT INTO SELECT Statement
--The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

--The INSERT INTO SELECT statement requires that the data types in source and target tables match.

--Note: The existing records in the target table are unaffected.

--INSERT INTO SELECT 
--Copy all columns from one table to another table:
--------------------------------------------------
Syntax1:
	INSERT INTO table2
	SELECT * FROM table1
	WHERE condition;
Syntax2:
	INSERT INTO table2 (column1, column2, column3, ...)
	SELECT column1, column2, column3, ...
	FROM table1
	WHERE condition;
---------------------------------------------------
--The following SQL statement copies "Suppliers" into 
--"Customers" (the columns that are not filled with data, will contain NULL):

Insert into Rough
SELECT customer_id,cusotmer_name,cusotmer_city from Customers

Select * from Rough
----------------------------------------------------

Insert into Rough
SELECT customer_id,cusotmer_name,cusotmer_city from Customers
where customer_state = 'Telangana'

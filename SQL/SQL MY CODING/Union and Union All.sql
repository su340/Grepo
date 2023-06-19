
UNION operator  - is used to combine the result-set of two or more SELECT statements.

				Every SELECT statement within UNION must have the same number of columns
				The columns must also have similar data types
				The columns in every SELECT statement must also be in the same order
				A U B, Selects only Distincts values By Default
				** Duplicates will be Eliminated
Syntax:
	SELECT column_name(s) FROM table1
	UNION
	SELECT column_name(s) FROM table2;
----------------------------------------------
Ex: 
	Select Product_id,Product_name from Products
	Union 
	Select Order_id,Order_NAme from Orders

Online W3 UNION Example: 
				SELECT City FROM Customers
				UNION
				SELECT City FROM Suppliers
				ORDER BY City;

Online W3 UNION Example: 
				SELECT 'Customer' AS Type, ContactName, City, Country
				FROM Customers
				UNION
				SELECT 'Supplier', ContactName, City, Country
				FROM Suppliers;

Online W3 UNION Example using 'WHERE': 
				SELECT City, Country FROM Customers
				WHERE Country='Germany'
				UNION
				SELECT City, Country FROM Suppliers
				WHERE Country='Germany'
				ORDER BY City;
---------------------------------------------------------------------------------------------------------

UNION ALL - The UNION operator selects only distinct values by default. 
			To allow duplicate values, use UNION ALL

Syntax:
		SELECT column_name(s) FROM table1
		UNION ALL
		SELECT column_name(s) FROM table2;
-----------------------------------------------
Online W3 UNION ALL Example:
				SELECT City FROM Customers
				UNION ALL
				SELECT City FROM Suppliers
				ORDER BY City;

Online W3 UNION ALL Example using 'WHERE': 
				SELECT City, Country FROM Customers
				WHERE Country='Germany'
				UNION ALL
				SELECT City, Country FROM Suppliers
				WHERE Country='Germany'
				ORDER BY City
	


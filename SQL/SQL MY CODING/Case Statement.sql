

CASE STATEMENT - Helps in Mutliway Decision making

The SQL CASE Expression
The CASE expression goes through conditions and returns a value 
when the first condition is met (like an if-then-else statement).
So, once a condition is true, it will stop reading and return the result.
If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.

Syntax:
	CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
	END;

-----------------------------------------------------

Eg1: From Online Coding

	SELECT OrderID, Quantity,
	CASE WHEN Quantity > 30 THEN 'The quantity is greater than 30'
	WHEN Quantity = 30 THEN 'The quantity is 30'
	ELSE 'The quantity is under 30'
	END AS QuantityText
	FROM OrderDetails;

Eg2:
	SELECT CustomerName, City, Country
	FROM Customers
	ORDER BY
	(
		CASE
			WHEN City IS NULL THEN Country
			ELSE City
		END
	);

-----------------------------------------------------

Eg: 
	Select 
	CASE
		When 10>20 then '10 is Greater than 20'
		When 10<20 then '20 is Greater than 10'
		Else '10 is equal to 20'
	End
-----------------------------------------------------
Eg: 
Select * from Customers

	Select customer_id,cusotmer_name,age,Generation =
	Case
		When age>30 then 'Older'
		When age<30 then 'Younger'
		Else			 'qualified'
		
	End
	from Customers

-----------------------------------------------------


	

	
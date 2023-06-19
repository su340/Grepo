--The SQL GROUP BY Statement:

--The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

--The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
----------------------------------------------
Syntax:

	SELECT column_name(s)
	FROM table_name
	WHERE condition
	GROUP BY column_name(s)
	ORDER BY column_name(s);

------------------------------------------------

Select * from Orders


Select Order_NAme,Order_date
From Orders
Group By Order_NAme,Order_date
Order by Order_date


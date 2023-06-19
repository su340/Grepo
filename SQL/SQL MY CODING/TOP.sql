--The SQL SELECT TOP Clause
--The SELECT TOP clause is used to specify the number of records to return.

----The SELECT TOP clause is useful on large tables with thousands of records.
--Returning a large number of records can impact performance.
----------------------------------------
Syntax:

	SELECT TOP number|percent column_name(s)
	FROM table_name
	WHERE condition;

----------------------------------------
--//TOp 5 by asc age

SELECT top 5 * FROM Customers
order by Age ;

----------------------------------------

--//Get tonly the top 4th (Shaika)


Select *
Into #temp2
from Customers


select * from #temp2

select top 6 * 
into #temp4
from Customers
order by age 

select top 1 * from #temp4
order by age desc
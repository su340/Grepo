--The ORDER BY keyword is used to sort the result-set in ascending or descending order.

--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

Syntax: 

		SELECT column1, column2, ...
		FROM table_name
		ORDER BY column1, column2, ... ASC|DESC;

------------------------------------------------------
--The ORDER BY keyword sorts the records in ascending order by default. 


Select * from Orders 
Order By Orders_total

----------------------------------------------------- 

--To sort the records in descending order, use the DESC keyword.

Select * from Orders
Order by Orders_total DESC;

---------------------------------------------------
--ORDER BY Several Columns Example
--The following SQL statement selects all customers from the "Customers" table,
--sorted by the "Country" and the "CustomerName" column. 
--This means that it orders by Country, but if some rows have the same Country,
--it orders them by CustomerName:

select * from Customers
Order by customer_state,cusotmer_name

------------------------------------------------------
--ORDER BY Several Columns Example 2
--The following SQL statement selects all customers from 
--the "Customers" table, sorted ascending by the "Country" 
--and descending by the "CustomerName" column:

Select  * from Customers
order by cusotmer_name ASC  , customer_state DESC
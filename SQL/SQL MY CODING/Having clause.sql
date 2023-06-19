Use Learning

--The SQL HAVING Clause

--The HAVING clause was added to SQL 
--because the WHERE keyword cannot be used with aggregate functions.

Syntax:
		SELECT column_name(s)
		FROM table_name
		WHERE condition
		GROUP BY column_name(s)
		HAVING condition
		ORDER BY column_name(s);
--------------------------------------

Select cusotmer_city,cusotmer_name,customer_state
From Customers
Group by cusotmer_city,cusotmer_name,customer_state
Having cusotmer_name like '%m%'
order by customer_state

Select * from Customers
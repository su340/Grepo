--Update using Joins

--these join clauses in the UPDATE statement to perform a cross-table update

Syntax:
	UPDATE t1
	SET 
		t1.c1 = t2.c2,
		t1.c2 = expression,
		...   
	FROM t1 
		[INNER | LEFT] JOIN t2 ON join_predicate
	WHERE condition;

----------------------------------------------------------------
Eg: Update the age of the candidates by 10 where city = 'Hyd' using joins 

	Update Customers   ---table to be updated
    set age = age-10   ---what updatation you are looking for
	from Customers     --- from which table the updation you are looking for
	Full join Rough on customer_id = id  --Join the tables on common point, so that modification on one table automically update the other one
	where city = 'Hyd'  ---condition on one table effects the joined table

--------------------------------------------------------------

--Delete Using Joins

--DELETE JOIN is an advanced structured query language(SQL) statement 
--that is used to perform delete operations in multiple tables while using 
--JOIN such that all rows are deleted from the first table and the matching rows in another table

Syntax:

	DELETE [target table]
	FROM [table1]
	INNER JOIN [table2]
	ON [table1.[joining column] = [table2].[joining column]
	WHERE [condition]

-------------------------------------------------------
Eg:
	Delete Customers
	From Customers
	Full Join  Orders
	on Customers.customer_id = Orders.Order_id
	where Orders.Customer_id = 9

-------------------------------------------------------
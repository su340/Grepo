Use Learning

----Except Operator : Combines two Select Statement and returns unique records 
--from the left Query which are not part of the Right Query

--The SQL EXCEPT clause/operator is used to combine two 
--SELECT statements and returns rows from the 
--first SELECT statement that are not returned by the second SELECT statement. 
--This means EXCEPT returns only rows, which are not available in the 
--second SELECT statement.
------------------------------------------
Syntax: 

Select cloulmn_list from Table1
Except 
Select column_list from Table2 

-------------------------------------------

Select cusotmer_name from Customers
except
Select Order_NAme from Orders
except
Select Product_name from Products

-------------------------------------------

Select cusotmer_city,cusotmer_name from Customers
except
select city,name from rough

-------------------------------------------


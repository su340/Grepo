Use Learning

--SQL INTERSECT
--SQL INTERSECT operator combines two select statements 
--and returns only the dataset that is common in both the statements
--To put it simply, it acts as a mathematical intersection. 

--Syntax:
--	Select column_list from Table1
--	Intersect Column_list from Table2

--------------------------------------------
Select * from Customers
Select * from Orders
Select * from Products


SELECT customer_id FROM Customers
INTERSECT SELECT Order_id FROM orders
Intersect SELECT Product_id from Products

---------------------------------------------
 SELECT Order_NAme FROM Orders
Intersect SELECT Product_name from Products

-----------------------------------------------

SELECT cusotmer_zip FROM Customers
INTERSECT SELECT Order_id FROM orders   -- No common, hence no output

---------------------------------------------

--They are very different. 
--The INNER JOIN will return duplicates, 
--if id is duplicated in either table. 
--INTERSECT removes duplicates. 
--The INNER JOIN will never return NULL , 
--but INTERSECT will return NULL
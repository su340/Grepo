Use Learning
--Select into: The SELECT INTO statement copies data from one table into a new table.

Syntax:
	SELECT *
	INTO newtable 
	FROM oldtable
	WHERE condition;

Select * from CUstomers , Select * from Customers_BK ,  Select * from Customers_BK2 , Select * from Customers_BK4 
Select * from Products ,  Select * from Products_BK  ,  Select * from Products_BK2  , Select * from Customers_BK5
Select * from Orders ,    Select * from Orders_bk    ,  Select * from Orders_bk2    , Select * from Customers_BK6

------------------------------------------------ 
--//Creating new backup(Replication of the table) using "SELECT INTO"

Select * into Customers_BK 
from Customers

Select * into Products_BK
from Products

select * into Orders_bk
From Orders

------------------------------------------------

--//Only Required columns int the new table

Select customer_id,cusotmer_name into Customers_BK2 
from Customers

Select Product_id,Product_name into Products_BK2
from Products

select id,Order_NAme  into Orders_bk2
From Orders

----------------------------------------------
--The following SQL statement uses the IN clause to 
--copy the table into a new table in another database

Select * into Customers_BK3 IN '70-461.mbd' from Customers

----------------------------------------------

--The following SQL statement copies only the Telangana customers into a new table:

Select * into Customers_BK4 
from Customers
where customer_state = 'Telangana'

----------------------------------------------

--The following SQL statement copies data from more than one table into a new table:

select  B.id, A.cusotmer_name
into Customers_BK5
From Customers A
Full join Orders B
On A.customer_id = B.id

----------------------------------------------

--SELECT INTO can also be used to create a new, 
--empty table using the schema of another.
--Just add a WHERE clause that causes the query to return no data

SELECT * into Customers_BK6
from Customers
WHERE 1=0

----------------------------------------------


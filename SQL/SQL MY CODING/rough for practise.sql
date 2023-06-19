select sum (age) from Customers 
where customer_state = 'Telangana'
------------------------------------
select * from Customers

select * 
into #try
from Customers
where customer_state = 'Telangana'

select sum(age) from #try

-------------------------------------
SELECT TOP 50 PERCENT * FROM Customers;

--------------------------------------UNION AND UNION ALL------------------------

Insert into Products(Product_name)
Values
('Apple Juice'),
('')

Select * from Products

Alter table Orders
Drop Constraint PK__Orders__F1FF8453AF33E0E0

---------------------------------------------------

Insert into Orders(Order_id, Order_NAme)
Values
(1,'Apple Juice'),
(2,'')

--------------------------------------------------

Select Product_id,Product_name from Products
	Union 
	Select Order_id,Order_NAme from Orders

Select Product_id, Product_name From Products
Union All 
Select Order_id, Order_NAme from Orders
---------------------------------------------------------------------------------

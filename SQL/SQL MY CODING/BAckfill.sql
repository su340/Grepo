USe Learning

----------------------------------------------BACKFILL-------------------------------------------
--BACKFILL is used to add new columns and update 
--the new information provided to be uploaded/Updated

--Customers tabale is the existing table which is to be udated with
--the blood group column and age column by using new table "temp' provided 


Select * from Customers

Alter table Customers
add age int, Bloodgroup char(30)

Create table temp
(
	id int Identity,
	age int,
	BG char(30)
)

Insert into temp(age,BG)
Values
(55,'a+'),
(45,'a+'),
(31,'a+'),
(26,'a+'),
(24,'a+'),
(21,'b+'),
(42,'b+'),
(02,'b+'),
(19,'b+'),
(12,'b+')

Select * from temp

Update c
set c.age = t.age 
from Customers c
Join temp t
on c.customer_id  = t.id

Update c
SET c.Bloodgroup = t.BG
from Customers c
Join temp t
on c.customer_id = t.id	
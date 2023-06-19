--Problem Statement:

--You have successfully cleared the 2nd semester. In your 3rd semester you will work with joins and update statement
--Tasks to be done:

--1.Create an ‘Orders’ table which comprises of these columns – ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’

Create table Orders
(
	Order_id int identity,
	Order_date Datetime,
	amount float,
	customer_id int
)

Insert into Orders(Order_date,amount,customer_id)
Values
('2022-12-10',242.96,5),
('2022-09-01',135.26,4),
('2022-05-08',746.97,2),
('2022-10-10',975.94,7),
('2022-06-02',213.86,4),
('2022-12-05',908.75,2),
('2022-05-10',679.44,1),
('2022-06-30',563.90,3),
('2022-12-08',356.24,7),
('2022-11-30',875.14,3)

select * from Orders
Select * from customers
------------------------------

--2.Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column n

Select * from customers
join Orders
on customers.customer_id = Orders.customer_id

--3.Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column

Select * from customers
left join Orders
on customers.customer_id = Orders.customer_id

Select * from customers
right join Orders
on customers.customer_id = Orders.customer_id

--4.Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3

Update Orders
set amount = 100
where customer_id = 3

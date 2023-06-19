--Problem Statement:

--You have successfully cleared your 5th semester. In the final semester you will work with views, transactions and exception handling
--Tasks to be done:

--1.Create a view named ‘customer_san_jose’ which comprises of only those customers who are from san jose

Create View customer_san_jose AS
Select * from customers
Where city = 'San Jose'

Select * from customer_san_jose
Select * From customers

--2.Inside a transaction, update the first name of the customer to Francis, where the last name is Jordan
Begin transaction
Update customers set first_name = 'Francis'
Where last_name = 'Jordan'

--a.Rollback the transaction

rollback transaction

--b.Set the first name of customer to Alex, where the last name is Jordan

Begin transaction
Update customers set first_name = 'Alex'
Where last_name = 'Jordan'
commit transaction

--3.Inside a try catch block, divide 100 with 0, print the default error message

Declare @var1 int
Declare @var2 int

Begin Try
set @var1=100
set @var2 = @var1/0
end Try

Begin Catch
Print error_message()
End Catch
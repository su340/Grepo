--Problem Statement:
--You have successfully cleared your 4th semester. In the 5th semester you will work with group by, having by clauses and set operators

--Tasks to be done:

--1.Arrange the ‘Orders’ dataset in decreasing order of amount

Select * from Orders 
Order by amount desc


--2.Create a table with name ‘Employee_details1’ and comprising of these columns – 
--‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which comprises of same columns as first table.

Create Table Employee_details1
(
	Emp_id int Primary key,
	Emp_name varchar(100),
	Emp_salary int
)

Insert into Employee_details1(Emp_id,Emp_name,Emp_salary)
Values
(01,'sam',28000),
(02,'sahil',16000),
(03,'Gautam',12000),
(04,'Tushar',500000),
(05,'Shalin',30000),
(06,'Nimrit',20000),
(07,'sami',28000),
(08,'sameer',18000),
(09,'Anjili',8000)

Select * from Employee_details1

Select * into Employee_details2
from Employee_details1

Select * from Employee_details2

--3.Apply the union operator on these two tables

Select * from Employee_details1
Union 
Select * from Employee_details2

--4.Apply the intersect operator on these two tables

Select * from Employee_details1
intersect
Select * from Employee_details2

--5.Apply the except operator on these two tables

Select * from Employee_details1
except
Select * from Employee_details2




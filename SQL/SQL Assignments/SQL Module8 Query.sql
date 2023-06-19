

--Create table Employee8
Create table Employee8
(
	Employee_id int Identity Primary key,
	First_Name Varchar(200),
	Last_Name varchar(200),
	Salary Float,
	Joining_Date DateTime,
	Department varchar(200)
)

Select * from  Employee8

--Insert values in the gven table Employee

Insert into Employee8(First_Name,Last_Name,Salary,Joining_Date,Department)
Values
('Anika','Arora',100000,'2020-02-14 9:00:00','HR'),
('Veena','Verma',80000,'2011-06-15 9:00:00','Admin'),
('Vishal','Singhal',300000,'2020-02-16 9:00:00','HR'),
('Sushanth','Singh',500000,'2020-02-17 9:00:00','Admin'),
('Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin'),
('Dheeraj','Deewan',200000,'2011-06-19 9:00:00','Account'),
('Karan','Kumar',75000,'2020-01-14 9:00:00','Account'),
('Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin')

----------------------

--Create table Bonus
Create Table Bonus
(
	Employee_ref_id int,
	Bonus_Amount int,
	Bonus_Date DateTime
)

Select * from Bonus

--Insert values in the gven table Bonus

Insert into Bonus(Employee_ref_id,Bonus_Amount,Bonus_Date)
Values
(1,5000,'2020-02-16'),
(2,3000,'2011-06-16'),
(3,4000,'2020-02-16'),
(1,4500,'2020-02-16'),
(2,3500,'2011-06-16')

------------------------------------

--Create table Title

Create Table Title
(
	Employee_ref_id int,
	Employee_Title VArchar(100),
	Affective_Date DateTime
)

Select * from Title

--Insert values in the gven table Title

Insert into Title(Employee_ref_id,Employee_Title,Affective_Date)
Values
(1,'Manager','2016-02-20'),
(2,'Executive','2016-06-11'),
(8,'Executive','2016-06-11'),
(5,'Manager','2016-06-11'),
(4,'Asst.Manager','2016-06-11'),
(7,'Executive','2016-06-11'),
(6,'Lead','2016-06-11'),
(3,'Lead','2016-06-11')

--------------------------------------

Tasks To Be Performed:

--1 Display the “FIRST_NAME” from Employee table using the alias name
--as Employee_name.
Select First_Name AS [Employee_Name]From Employee8

--2 Display “LAST_NAME” from Employee table in upper case.

Select Upper(Last_Name) From Employee8

--3 Display unique values of DEPARTMENT from EMPLOYEE table.

Select Distinct Department From Employee8

--4 Display the first three characters of LAST_NAME from EMPLOYEE table.

Select Last_Name,SUBSTRING(Last_Name,1,3) From Employee8

--5 Display the unique values of DEPARTMENT from EMPLOYEE table and
--prints its length.

Select Distinct Department, len(Department) AS [Len of the Department]
From Employee8

--6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a
--single column AS FULL_NAME.
--a space char should separate them.

Select First_Name, Last_Name, CONCAT(First_Name,'  ',Last_Name) As [Full_Name] 
From Employee8

--7 DISPLAY all EMPLOYEE details from the employee table
--order by FIRST_NAME Ascending.

Select * From Employee8
Order by First_Name ASC

--8. Display all EMPLOYEE details order by FIRST_NAME Ascending and
--DEPARTMENT Descending.

Select * From Employee8
Order by First_Name ASC, Department DESC

--9 Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.

Select * From Employee8
Where First_Name = 'Veena'
OR
First_Name = 'Karan'

--10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.

Select * From Employee8
Where Department = 'Admin'

--11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.

Select * From Employee8
Where First_Name Like 'V%'

--12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000.

Select * From Employee8
Where Salary
Between 100000 AND 500000

--13 Display details of the employees who have joined in Feb-2020.

Select * From Employee8
Where (Joining_Date >= '2020-02-01' and Joining_Date <= '2020-02-28')

--14 Display employee names with salaries >= 50000 and <= 100000.

Select * from Employee8
where Salary >=50000
And
Salary <= 100000

--16 DISPLAY details of the EMPLOYEES who are also Managers.

Select * from Employee8
Where Employee_id 
IN
(Select Employee_ref_id from Title
Where Employee_Title = 'Manager')

--17 DISPLAY duplicate records having matching data in some fields of a table.

Select Employee_Title,Affective_Date
From Title
Group by Employee_Title,Affective_Date
Having Count(*) >1

--18 Display only odd rows from a table.

Select * from Employee8
Where Employee_id % 2 = 1

--19 Clone a new table from EMPLOYEE table.

Select * into #temp
From Employee8

--20 DISPLAY the TOP 2 highest salary from a table.

select * from Employee8
where Salary
IN(select Top (2) Salary as [Top 2 Salary]
from Employee8
group by Salary
order by Salary DESC)

--21. DISPLAY the list of employees with the same salary.

select * from Employee8
where Salary
IN(select Salary
from Employee8
group by Salary
having count(Salary) >1
)

--22 Display the second highest salary from a table.

select * from Employee8
where Salary
IN(select Top (2) Salary as [Top 2 Salary]
from Employee8
group by Salary
order by Salary DESC)

--23 Display the first 50% records from a table.

Select top 50 Percent * from Employee8

--24. Display the departments that have less than 4 people in it.

Select Department from Employee8
Group by Department
Having Count(Employee_id) < 4

--25. Display all departments along with the number of people in there.

Select Department,Count(Employee_id) AS [No.Of Employees] 
from Employee8
Group by Department

--26 Display the name of employees having the highest salary in each department.

Select First_Name,Department,Salary From Employee8
Where Salary
IN(Select Max(Salary) From Employee8
Group by Department) 

--27 Display the names of employees who earn the highest salary.

Select * from Employee8
Where Salary 
IN(Select Max(Salary) from Employee8)

--28 Diplay the average salaries for each departmen

Select Department,Avg(Salary) AS [Average salary] From Employee8
Group by Department

--29 display the name of the employee who has got maximum bonus

Select * from Employee8
Where Employee_id
IN(Select Employee_ref_id from Bonus
Where Bonus_Amount
IN(Select Max(Bonus_Amount) From Bonus))

--30 Display the first name and title of all the employees

Select First_Name,Employee_Title from Employee8 A
Join Title B
ON A.Employee_id = B.Employee_ref_id

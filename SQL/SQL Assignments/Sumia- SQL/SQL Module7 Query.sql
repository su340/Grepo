--Create Employee Table
Create Table Employee
(
	Employee_id int Primary key,
	Last_Name varchar(100),
	First_Name Varchar(100),
	Middle_Name char(50),
	Job_id int,
	Manager_id int,
	Hire_Date Date,
	Salary int,
	Comm int,
	Department_id int
)

--Insert given VAlues into Employee TAble

insert into Employee(Employee_id,Last_Name,First_Name,Middle_Name,Job_id,Manager_id,Hire_Date,Salary,Comm,Department_id)
Values
(7369,'SMITH','JOHN','Q',667,7902,'17-DEC-84',800,NULL,20),
(7499,'ALLEN','KEVIN','J',670,7698,'20-FEB-85',1600,300,30),
(7505,'DOYLE','JEAN','K',671,7839,'04-APR-85',2850,NULL,30),
(7506,'DENNIS','LYNN','S',671,7839,'15-MAY-85',2750,NULL,30),
(7507,'BAKER','LESLIE','D',671,7839,'10-JUNE-85',2200,NULL,40),
(7521,'WARK','CYNTHIA','D',670,7698,'22-FEB-85',1250,500,30)
---------------------------
Create table Department
(
	Department_id Int,
	Name varchar(100),
	Location_id int
)

--Insert given VAlues into Department TAble

Insert into Department(Department_Id,Name,Location_id)
Values
(10,'Accounting',122),
(20,'Sales',124),
(30,'Research',123),
(40,'Operations',167)
----------------------------

Create table Location
(
	Location_id int,
	City varchar(100)
)

--Insert given VAlues into Location TAble

Insert into Location(Location_id,City)
Values
(122,'New York'),
(123,'Dallas'),
(124,'Chicago'),
(167,'Boston')

-----------------------------

Create table Job
(
	Job_id int,
	Designation varchar(100)
)

--Insert given VAlues into Job TAble

Insert into Job(Job_id,Designation)
Values
(667,'Clerk'),
(668,'Staff'),
(669,'Analyst'),
(670,'Sales Person'),
(671,'Manager'),
(672,'President')
----------------------------

Select * from Job
Select * from Location
Select * from Employee
Select * from Department

-------------------------------------------------------------------------------------
Simple Queries:

--1. LIST ALL THE EMPLOYEE DETAILS. 
Select * From Employee
-------------------------------

--LIST ALL THE DEPARTMENT DETAILS 
Select * from Department
-------------------------------

--3. LIST ALL JOB DETAILS. 
Select * from Job
-------------------------------

--4. LIST ALL THE LOCATIONS. 
Select * from Location

-------------------------------

--5. LIST OUT THE FIRSTNAME, LASTNAME, SALARY, COMMISSION FOR ALL EMPLOYEES. 
Select First_name,Last_Name,Salary,Comm from Employee

-------------------------------

----6. LIST OUT EMPLOYEEID,LAST NAME, DEPARTMENT ID FOR ALL EMPLOYEES AND
--ALIAS EMPLOYEEID AS "ID OF THE EMPLOYEE", LAST NAME AS "NAME OF THE EMPLOYEE", DEPARTMENTID AS "DEP_ID". 

Select Employee_id AS [ID OF THE EMPLOYEE],
Last_Name AS [NAME OF THE EMPLOYEE],Department_id AS [DEP_ID] From Employee 

-------------------------------

--7. LIST OUT THE EMPLOYEES ANNUAL SALARY WITH THEIR NAMES ONLY. 
Select First_Name,Salary from Employee
---------------------------------------------------------------
Where Condition:

--1.LIST THE DETAILS ABOUT "SMITH" 
Select * from Employee
Where Last_Name = 'Smith'

-------------------------------

--2.LIST OUT THE EMPLOYEES WHO ARE WORKING IN DEPARTMENT 20

Select * from Employee
Where Department_id = 20

---------------------------------
--3.LIST OUT THE EMPLOYEES WHO ARE EARNING SALARY BETWEEN 3000
-- AND 4500.
 
 Select * from Employee
Where Salary
between 3000 and 4500

-------------------------------

--4.LIST OUT THE EMPLOYEES WHO ARE WORKING IN DEPARTMENT 10 OR 20. 
Select * from Employee
Where Department_id = 20 OR Department_id = 10

-------------------------------

--5.FIND OUT THE EMPLOYEES WHO ARE NOT WORKING IN DEPARTMENT 10 OR 30. 

Select * From Employee
Where NOt Department_id =10 
AND NOT Department_id = 30

------------------------------

--6.LIST OUT THE EMPLOYEES WHOSE NAME STARTS WITH 'S'. 

Select * from Employee
Where Last_Name Like 'S%'

------------------------------

--7.LIST OUT THE EMPLOYEES WHOSE NAME STARTS WITH 'S' AND ENDS WITH 'H'. 
Select * From Employee
Where Last_Name Like 'S%%H'

------------------------------

--8.LIST OUT THE EMPLOYEES WHOSE NAME LENGTH IS 4 AND START WITH 'S'. 
Select First_Name,Last_Name From Employee
where len(Last_Name)= 4 and Last_Name Like 'S%'

------------------------------

--9.LIST OUT EMPLOYEES WHO ARE WORKING IN DEPARRTMENT 10 
--AND DRAW THE SALARIES MORE THAN 3500. 
Select * from Employee
Where Department_id = 10
And Salary > 3500

------------------------------

--10.LIST OUT THE EMPLOYEES WHO ARE NOT RECEVING COMMISSION. 
Select * from Employee
Where Comm IS NULL

------------------------------------------------------------------------------------------
ORDER BY CLAUSE: 

--1.LIST OUT THE EMPLOYEE ID, LAST NAME IN ASCENDING ORDER BASED ON THE EMPLOYEE ID. 
Select Employee_id,Last_Name From Employee
Order by Employee_id Asc

--2.LIST OUT THE EMPLOYEE ID, NAME IN DESCENDING ORDER BASED ON SALARY. 

Select Employee_id,First_Name,Last_name,Salary From Employee
Order by Salary DESC

--------------------------------

--3.LIST OUT THE EMPLOYEE DETAILS ACCORDING TO THEIR LAST-NAME IN ASCENDING ORDER AND 

Select * from Employee
Order by Last_Name ASC

--------------------------------
 --4.LIST OUT THE EMPLOYEE DETAILS ACCORDING TO THEIR LAST-NAME
 --IN ASCENDING ORDER AND THEN ON DEPARTMENT_ID IN DESCENDING ORDER. 
 
Select * from Employee
Order by Last_Name ASC              

Select * from Employee
Order by Department_id DESC
           
----------------------------------------------------------
GROUP BY & HAVING CLAUSE 

--1.HOW MANY EMPLOYEES WHO ARE IN DIFFERENT DEPARTMENTS WISE IN THE ORGANIZATION. 

Select Department_id,Count(First_Name) AS [Count Of Employee] from Employee
Group by Department_id 

--------------------------------

--2.LIST OUT THE DEPARTMENT WISE MAXIMUM SALARY, MINIMUM SALARY, AVERAGE SALARY OF THE EMPLOYEES. 

Select Department_id,MIN(salary) AS [Min of Salary], 
MAx(Salary) AS [Max of Salary],
AVG(Salary) AS [Average of Salary] From Employee
Group by Department_id

----------------------------------

--3.LIST OUT JOB WISE MAXIMUM SALARY, 
--MINIMUM SALARY, AVERAGE SALARIES OF THE EMPLOYEES. 

Select Designation,
MIN(Salary) AS [Minimum SALARY],
MAX(Salary) AS [Maximum SALARY],
AVG(Salary) AS [Average SALARY]
from Employee
join Job on Employee.Job_id = Job.Job_id
Group by Designation 

-------------------------------

--4.LIST OUT THE NUMBER OF EMPLOYEES JOINED 
 --IN EVERY MONTH IN ASCENDING ORDER. 

 Select Month(Hire_Date) AS [Month of the Year],
 Count(Employee_id) AS [No. Of Employees Joined] 
 from Employee
 Group by Month(Hire_Date)
 Order by Month(Hire_Date) ASC

---------------------------------

--5.LIST OUT THE NUMBER OF EMPLOYEES FOR EACH MONTH AND YEAR, 
--IN THE ASCENDING ORDER BASED ON THE YEAR, MONTH. 

Select Month(Hire_Date) AS [Month of the Year],
Year(Hire_Date) AS Year,
Count(Employee_id) AS [No. Of Employee Joined]From Employee
Group By Hire_Date
Order by Year(Hire_Date),Month(Hire_Date) ASC

-------------------------------
--6.LIST OUT THE DEPARTMENT ID HAVING ATLEAST FOUR EMPLOYEES

Select Department_id,Count(Department_id) AS [No. Of Employees]
from Employee 
Group by Department_id
Having COunt(Department_id)=4

-------------------------------
--7.HOW MANY EMPLOYEES JOINED IN JANUARY MONTH. 

Select Month(Hire_Date) AS [Month of the Year],
Count(Employee_id) AS [No. Of Employees joined] 
from Employee
Group by Month(Hire_date) 
Having Month(Hire_date)=1

------------------------------
--8.HOW MANY EMPLOYEES JOINED IN JANUARY OR SEPTEMBER MONTH. 

Select Month(Hire_Date) AS [Month of the Year],
Count(Employee_id) AS [No. Of Employees joined]
from Employee
Group by Month(Hire_date) 
Having Month(Hire_date)=1 OR Month(Hire_date)=9

-----------------------------

--9.HOW MANY EMPLOYEES WERE JOINED IN 1985? 

Select Year(Hire_Date) AS Year,
COunt(Employee_id) AS [No. Of Employee Joined] 
from Employee
Group by Year(Hire_Date)
Having Year(Hire_Date)=1985

-----------------------------

--10.HOW MANY EMPLOYEES WERE JOINED EACH MONTH IN 1984. 

Select Year(Hire_Date) AS Year,
COunt(Employee_id) AS [No. Of Employee Joined] 
from Employee
Group by Year(Hire_Date)
Having Year(Hire_Date)=1984

-----------------------------

--11.HOW MANY EMPLOYEES WERE JOINED IN MARCH 1985?

Select Month(Hire_Date) AS [Month of the Year],
Year(Hire_Date) AS [Year],
Count(Employee_id) AS [No. Of Employees Joined] 
from Employee
Group by MONTH(Hire_Date),Year(Hire_Date)
Having Month(Hire_Date) = 3 AND Year(Hire_Date)=1985

----------------------------

--12.WHICH IS THE DEPARTMENT ID, HAVING GREATER THAN OR EQUAL TO 3 EMPLOYEES JOINED IN APRIL 1985? 
Select Department_id,Month(Hire_Date),Year(Hire_date),Count(Department_id) As [No. Of Employees] from Employee
Group by Department_id,Month(Hire_Date),Year(Hire_date)
Having Month(Hire_Date)=4 AND
Year(Hire_date)=1985 AND
Count(Department_id) >= 3

----------------------------------------------------

--1.LIST OUT EMPLOYEES WITH THEIR DEPARTMENT NAMES. 

Select  A.Employee_id,B.Department_Id,A.First_Name,A.Last_Name,B.Name from Employee A
Join Department B
on A.Department_id = B.Department_Id

--------------------------------
--2.DISPLAY EMPLOYEES WITH THEIR DESIGNATIONS. 

Select A.First_Name,A.Last_Name,B.Designation
from Employee A
Join Job B
on A.Job_id = B.Job_id

--------------------------------

--3.DISPLAY THE EMPLOYEES WITH THEIR DEPARTMENT NAMES AND REGIONAL GROUPS. 

Select A.First_Name,B.Name,C.City
from Employee A
Join Department B
ON A.Department_id = B.Department_Id 
Join Location C
ON  B.Location_id = C.Location_id

------------------------------

--4.HOW MANY EMPLOYEES WHO ARE WORKING IN DIFFERENT DEPARTMENTS 
--  AND DISPLAY WITH DEPARTMENT NAMES. 

Select Name, COUNT(Employee_id) AS [Number of Employees Working]
From Department A
Join Employee B
ON A.Department_Id = B.Department_id
Group by Name
------------------------------  

--5.HOW MANY EMPLOYEES WHO ARE WORKING IN SALES DEPARTMENT.

Select [Name],
Count(Employee_id) AS [No. Of Working in Department]
from Department A
Join Employee B
ON A.Department_Id = B.Department_id
Where [Name] = 'Sales'
Group By Name

----------------------------

-- 6. WHICH IS THE DEPARTMENT HAVING GREATER THAN OR EQUAL TO 5 
--EMPLOYEES AND DISPLAY THE DEPARTMENT NAMES IN ASCENDING ORDER. 

Select [Name] AS [Department Name],
Count(B.Department_Id) As [No. Of Employees] 
From Department A
Join Employee B
On A.Department_Id = B.Department_id 
Group By [Name] 
Having Count(B.Department_Id) >= 5

------------------------------
--7. HOW MANY JOBS IN THE ORGANIZATION WITH DESIGNATIONS. 

Select Designation ,
Count(B.Job_id) as [NO of Jobs]
from Job as A
join Employee as B
on A.Job_id=B.Job_id
group by Designation

------------------------------

--8. HOW MANY EMPLOYEES ARE WORKING IN "NEW YORK". 

Select City,Name,Count(Employee_id) AS [No. Of Employees Working] 
From Employee A
Join Department B On A.Department_id = B.Department_Id
Join Location C On C.Location_id = B.Location_id
Where City = 'New York'
Group by Name,City

------------------------------	 
--9. DISPLAY THE EMPLOYEE DETAILS WITH SALARY GRADES. 

------------------------------	 
--10.LIST OUT THE NO. OF EMPLOYEES ON GRADE WISE.
	 
------------------------------

--11.DISPLAY THE EMPLOYEE SALARY GRADES AND NO. OF EMPLOYEES BETWEEN 2000 TO 5000 

Select Count(Employee_Id) AS [No. Of Employee Betwwen 2k & 5k] From Employee
Where Salary 
Between 2000 and 5000

------------------------------
--12.DISPLAY THE EMPLOYEE DETAILS WITH THEIR MANAGER NAMES. 

 Select Employee_id,First_Name,Last_Name,Hire_Date,Salary,Manager_id From Employee
 Group by Manager_id,Last_Name,Employee_id,First_Name,Hire_Date,Salary

------------------------------

--13.DISPLAY THE EMPLOYEE DETAILS WHO EARN MORE THAN THEIR MANAGERS SALARIES. 

------------------------------

--14.SHOW THE NO. OF EMPLOYEES WORKING UNDER EVERY MANAGER.

Select Manager_id,
Count(Employee_Id) AS [No.Of Employees] From Employee
Group by Manager_id
------------------------------	 

--15.DISPLAY EMPLOYEE DETAILS WITH THEIR MANAGER NAMES. 

Select Employee_id,First_Name,Last_Name,Hire_Date,Salary,
Manager_id
From Employee
Group by Manager_id,Last_Name,Employee_id,First_Name,
Hire_Date,Salary

------------------------------ 

--16. DISPLAY ALL EMPLOYEES IN SALES OR OPERATION DEPARTMENTS. SET OPERATORS 

Select Last_Name From Employee
intersect
Select Name from Department
Where Name = 'Sales' 
OR Name = 'Operations'


--1.LIST OUT THE DISTINCT JOBS IN SALES AND ACCOUNTING DEPARTMENTS. 
	 
SELECT DISTINCT Job_ID,Name FROM Employee E
INNER JOIN Department D 
ON E.Department_ID=D.Department_ID
WHERE Name IN ('Sales','Accounting')

--2.LIST OUT ALL THE JOBS IN SALES AND ACCOUNTING DEPARTMENTS. 

SELECT Job_ID,Name FROM Employee E
INNER JOIN Department D 
ON E.Department_ID=D.Department_ID
WHERE Name IN ('Sales','Accounting')

--3.LIST OUT THE COMMON JOBS IN RESEARCH AND ACCOUNTING DEPARTMENTS IN 

SELECT Job_ID,Name FROM Employee E
INNER JOIN Department D 
ON E.Department_ID=D.Department_ID
WHERE Name IN ('Accounting','Research')
	 
----------------------------------------------------------


ASCENDING ORDER. SUB QUERIES 

--1. DISPLAY THE EMPLOYEES LIST WHO GOT THE MAXIMUM SALARY.

Select * from Employee
Where Salary IN
(Select Max(Salary) from Employee)

--2. DISPLAY THE EMPLOYEES WHO ARE WORKING IN SALES DEPARTMENT. 

Select First_Name,Last_Name from Employee
Where Department_id 
IN(Select Department_id from Department
Where Name = 'Sales')

--3. DISPLAY THE EMPLOYEES WHO ARE WORKING AS 'CLERCK'. 

Select First_Name, Last_Name From Employee
Where Job_id
IN
(Select Job_id From Job
Where Designation = 'Clerk')

--4. DISPLAY THE LIST OF EMPLOYEES WHO ARE LIVING IN "NEW YORK". 

Select * From Employee
Where Department_id
IN (Select Department_id from Department 
Where Location_id
IN (Select Location_id From Location
Where City = 'New york'))

--5. FIND OUT NO. OF EMPLOYEES WORKING IN "SALES" DEPARTMENT. 

Select * from Employee
Where Department_id
IN(Select Department_id As [Name of the Department] from Department
Where Name = 'Sales')

--6. UPDATE THE EMPLOYEES SALARIES, WHO ARE WORKING AS CLERK ON THE BASIS OF 10%. 

UPDATE Employee
Set Salary =  Salary + (Salary *10) /100
Where Job_id
IN (Select Job_id From Job
Where Designation = 'Clerk')

--7. DELETE THE EMPLOYEES WHO ARE WORKING IN ACCOUNTING DEPARTMENT. 

Delete from Department
Where Department_id = 
ANY(Select  Department_id from Department
Where Name = 'Accounting')

--8. DISPLAY THE SECOND HIGHEST SALARY DRAWING EMPLOYEE DETAILS. 

Select * From Employee
Where Salary 
IN(Select Max(Salary) AS [2nd Highest Salary] from Employee
Where Salary <
(Select Max(Salary) from Employee))

--9. DISPLAY THE N'TH HIGHEST SALARY DRAWING EMPLOYEE DETAILS. 

--Finding the 3rd Highest Salary
--Let N= 3
--Where N-1// to find the Nth Highest

Select Employee_id,Salary From  Employee A
Where 3-1 IN(Select Count(DIstinct Salary )
From Employee B
Where B.Salary > A.Salary)

--10. LIST OUT THE EMPLOYEES WHO EARN MORE THAN EVERY EMPLOYEE IN DEPARTMENT 30. 
Select * from Employee
Where Salary >
(Select Max(Salary) From Employee
Where Department_id = 40)

--11. LIST OUT THE EMPLOYEES WHO EARN MORE THAN THE LOWEST SALARY IN DEPARTMENT 30. 

Select * from Employee
Where Salary >
(Select Min(Salary) From Employee
Where Department_id = 30)

--12. FIND OUT WHOSE DEPARTMENT HAS
 ----NOT EMPLOYEES. 

Select Department_Id, Name
from Department
Where Department_Id
NOT IN(Select Department_id 
From Employee)


--13. FIND OUT WHICH DEPARTMENT DOES NOT HAVE ANY EMPLOYEES.

Select Department_Id, Name
from Department
Where Department_Id
NOT IN(Select Department_id 
From Employee)

--14. FIND OUT THE EMPLOYEES WHO EARN GREATER THAN THE AVERAGE SALARY FOR THEIR DEPARTMENT. 

Select Department_id,First_Name From Employee
Where (Salary > (Select Avg(Salary) From Employee))


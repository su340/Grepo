
--Create Studeis Table

CREATE TABLE studies
(
	PNAME varchar(20), 
	INSTITUTE varchar(20), 
	COURSE varchar(20), 
	COURSE_FEE int 
)
GO

SELECT * FROM studies

--Insert into Studies Table

INSERT INTO studies
SELECT 'ANAND','SABHARI','PGDCA',4500 UNION ALL
SELECT 'ALTAF','COIT','DCA',7200 UNION ALL
SELECT 'JULIANA','BDPS','MCA',22000 UNION ALL
SELECT 'KAMALA','PRAGATHI','DCA',5000 UNION ALL
SELECT 'MARY','SABHARI','PGDCA ',4500 UNION ALL
SELECT 'NELSON','PRAGATHI','DAP',6200 UNION ALL
SELECT 'PATRICK','PRAGATHI','DCAP',5200 UNION ALL
SELECT 'QADIR','APPLE','HDCA',14000 UNION ALL
SELECT 'RAMESH','SABHARI','PGDCA',4500 UNION ALL
SELECT 'REBECCA','BRILLIANT','DCAP',11000 UNION ALL
SELECT 'REMITHA','BDPS','DCS',6000 UNION ALL
SELECT 'REVATHI','SABHARI','DAP',5000 UNION ALL
SELECT 'VIJAYA','BDPS','DCA',48000
GO

------------------------------------------

--Create Software Table

CREATE TABLE Software 
(
	PNAME varchar(20), 
	TITLE varchar(20),
	DEVELOPIN varchar(20),
	SCOST decimal(10,2), 
	DCOST int,
	SOLD int
)
GO

SELECT * FROM Software

--Insert into Software Table

INSERT INTO Software
SELECT 'MARY','README','CPP',300, 1200, 84 UNION ALL
SELECT 'ANAND','PARACHUTES','BASIC',399.95, 6000, 43 UNION ALL
SELECT 'ANAND','VIDEO TITLING','PASCAL',7500, 16000, 9 UNION ALL
SELECT 'JULIANA','INVENTORY','COBOL',3000, 3500, 0 UNION ALL
SELECT 'KAMALA','PAYROLL PKG.','DBASE',9000, 20000, 7 UNION ALL
SELECT 'MARY','FINANCIAL ACCT.','ORACLE',18000, 85000, 4 UNION ALL
SELECT 'MARY','CODE GENERATOR','C',4500, 20000, 23 UNION ALL
SELECT 'PATTRICK','README','CPP',300, 1200, 84 UNION ALL
SELECT 'QADIR','BOMBS AWAY','ASSEMBLY',750, 3000, 11 UNION ALL
SELECT 'QADIR','VACCINES','C',1900, 3100, 21 UNION ALL
SELECT 'RAMESH','HOTEL MGMT.','DBASE',13000, 35000, 4 UNION ALL
SELECT 'RAMESH','DEAD LEE','PASCAL',599.95, 4500, 73 UNION ALL
SELECT 'REMITHA','PC UTILITIES','C',725, 5000, 51 UNION ALL
SELECT 'REMITHA','TSR HELP PKG.','ASSEMBLY',2500, 6000, 7 UNION ALL
SELECT 'REVATHI','HOSPITAL MGMT.','PASCAL',1100, 75000, 2 UNION ALL
SELECT 'VIJAYA','TSR EDITOR','C',900, 700, 6
Go


-------------------------------------

--Create Table Programmer

CREATE TABLE programmer 
(
	PNAME varchar(20),
	DOB date, 
	DOJ date, 
	GENDER varchar(2), 
	PROF1 varchar(20), 
	PROF2 varchar(20),
	SALARY int
)
GO

SELECT * FROM programmer

--Insert Values Into Programmer

INSERT INTO programmer
SELECT 'ANAND','12-Apr-66','21-Apr-92','M','PASCAL','BASIC',3200 UNION ALL
SELECT 'ALTAF','02-Jul-64','13-Nov-90','M','CLIPPER','COBOL',2800 UNION ALL
SELECT 'JULIANA','31-Jan-60','21-Apr-90','F','COBOL','DBASE',3000 UNION ALL
SELECT 'KAMALA','30-Oct-68','02-Jan-92','F','C','DBASE',2900 UNION ALL
SELECT 'MARY','24-Jun-70','01-Feb-91','F','CPP','ORACLE',4500 UNION ALL
SELECT 'NELSON','11-Sep-85','11-Oct-89','M','COBOL','DBASE',2500 UNION ALL
SELECT 'PATTRICK','10-Nov-65','21-Apr-90','M','PASCAL','CLIPPER',2800 UNION ALL
SELECT 'QADIR','31-Aug-65','21-Apr-91','M','ASSEMBLY','C',3000 UNION ALL
SELECT 'RAMESH','03-May-67','28-Feb-91','M','PASCAL','DBASE',3200 UNION ALL
SELECT 'REBECCA','01-Jan-67','01-Dec-90','F','BASIC','COBOL',2500 UNION ALL
SELECT 'REMITHA','19-Apr-70','20-Apr-93','F','C','ASSEMBLY',3600 UNION ALL
SELECT 'REVATHI','02-Dec-69','02-Jan-92','F','PASCAL','BASIC',3700 UNION ALL
SELECT 'VIJAYA','14-Dec-65','02-May-92','F','FOXPRO','C',3500
Go

---------------------------------------------------------------------

Assignment 9 – SQL Queries

--Problem Statement:
--Consider yourself to be Sam and you have been given the below tasks to complete using
--the Table – STUDIES, SOFTWARE & PROGRAMMER.

Tasks to be performed:

--1. Find out the selling cost AVG for packages developed in Pascal.

Select DEVELOPIN,
Avg(SCOST) AS [Avg COST]
From Software
Where DEVELOPIN = 'PASCAL'
Group by DEVELOPIN

--2. Display Names, Ages of all Programmers.

Select PNAME,
DATEDIFF(YYYY,DOB,GetDAte()) AS AGE 
From programmer

--3. Display the Names of those who have done the DAP Course.

Select PNAME,
Course From studies
WHERE COURSE = 'DAP'

--4. Display the Names and Date of Births of all Programmers Born in January.

Select PNAME,DOB From programmer
Where Month(DOB) =1

--5. What is the Highest Number of copies sold by a Package?

Select Max(SOLD) AS [MAx SOld] From Software

--6. Display lowest course Fee.

Select Min(COURSE_FEE) AS [LOWEST FEE] From studies

--7. How many programmers done the PGDCA Course?

Select * From studies
Where COURSE = 'PGDCA'

--8. How much revenue has been earned thru sales of Packages Developed in C.

Select SUM(SOLD*SCOST)
AS REVENUE From Software
Where DEVELOPIN = 'C'

--9. Display the Details of the Software Developed by Ramesh.

Select * FROM Software
Where PNAME = 'Ramesh'

--10. How many Programmers Studied at Sabhari?

Select INSTITUTE,
COUNT(PNAME) AS [No. OF Programmers STUDIEd]
From studies
Group by INSTITUTE
HAVING INSTITUTE = 'SABHARI'

--11. Display details of Packages whose sales crossed the 2000 Mark.

Select * From Software
Where SCOST > 2000

--12. Display the Details of Packages for which Development Cost have been recovered.

Select * From Software
Where SCOST > DCOST

--13. What is the cost of the costliest software development in Basic?

Select DEVELOPIN,
Max(DCOST) AS [Costliest SOftware] 
From Software
Where DCOST 
IN(Select MAx(DCOST) From Software)
Group by DEVELOPIN

--14. How many Packages Developed in DBASE?

Select DEVELOPIN,
COUnt(DEVELOPIN) AS [No. OF DEVELOPLIN]
From Software
Where DEVELOPIN = 'DBASE'
Group By DEVELOPIN

--15. How many programmers studied in Pragathi?

Select INSTITUTE,
Count(PNAME) AS [No. Of Programmers]
From studies
Where INSTITUTE = 'PRAGATHI'
Group By INSTITUTE

--16. How many Programmers Paid 5000 to 10000 for their course?

Select COunt(PNAME) AS [No.Of Programmers] 
From studies
Where COURSE_FEE
Between 5000 AND 10000

--17. What is AVG Course Fee

Select AVG(COURSE_FEE) AS [Average Fee] 
From studies

--18. Display the details of the Programmers Knowing C.

Select * From Software
Where DEVELOPIN = 'C'

--19. How many Programmers know either COBOL or PASCAL.

Select DEVELOPIN,
COUNT(PNAME) AS [NO.Of Programmers] 
From Software
Where DEVELOPIN = 'COBOL'
OR
DEVELOPIN ='PASCAL'
Group by DEVELOPIN

--20. How many Programmers Don’t know PASCAL and C

Select COUNT(PNAME) AS [No. Of Programmers]
From Software
Where DEVELOPIN NOT LIKE 'PASCAL'
AND
DEVELOPIN= 'C'

--21. How old is the Oldest Male Programmer.

Select GENDER,
Max(DateDiff(YYYY,DOB,GETDATE())) As AGE 
From programmer 
Group by GENDER
Having GENDER = 'M'

--22. What is the AVG age of Female Programmers?

Select GENDER,
avg(DateDiff(YYYY,DOB,GETDATE())) As [AVG AGE] 
From programmer 
Group by GENDER
Having GENDER = 'F'

--23. Calculate the Experience in Years for each Programmer and Display with their
--names in Descending order.

Select PNAME
From programmer
Where DOJ
IN(Select dateDiff(YYYY,DOJ,getDate())
AS Experience From programmer)
Order by PNAME DESC

--24. Who are the Programmers who celebrate their Birthday’s During the Current
--Month?

Select PNAME,DOB 
From Programmer
Group by PNAME,DOB
HAving Month(DOB) = Month(getDAte())

--25. How many Female Programmers are there?

Select GENDER,
Count(GENDER) AS [No. Of Programmers]
From programmer
Where GENDER = 'F'
Group by GENDER

--26. What are the Languages studied by Male Programmers.

Select PNAME,PROF1,PROF2
From programmer
Where GENDER = 'M'
Group by PNAME,PROF1,PROF2

--27. What is the AVG Salary?

Select AVG(SALARY) AS [AVERAGE SALARY]
FROM programmer

--28. How many people draw salary 2000 to 4000?

Select COUNT(PNAME) AS [No. Of EMployess]
From programmer
Where SALARY 
Between 
2000 aND 4000

--29. Display the details of those who don’t know Clipper, COBOL or PASCAL.

Select PNAME From programmer
Where not PROF1 = 'Clipper'
OR  PROF1 ='COBOL'
OR  PROF1 ='PASCAL'
GROUP BY PNAME

--30. Display the Cost of Package Developed By each Programmer.

Select PNAME,
Sum(DCOST) AS [Developing Cost]
From Software
Group by PNAME

--31. Display the sales values of the Packages Developed by the each Programmer.

Select PNAME,
Sum(SCOST) AS [Selling Cost]
From Software
Group by PNAME

--32. Display the Number of Packages sold by Each Programmer.

Select PNAME,
COUNT(SOLD)AS [No. Of Packages SOLD] 
From Software
Group by PNAME

--33. Display the sales cost of the packages Developed by each Programmer Language wise.

Select DEVELOPIN,SUM(SCOST)
From Software
Group by DEVELOPIN

--34. Display each language name with AVG Development Cost, AVG Selling Cost and
--AVG Price per Copy.

IIF(condition, value_if_true, value_if_false)


SELECT DEVELOPIN, AVG(DCOST) AS AvgDevCost, AVG(SCOST) AS AvgSellCost 
,IIF(SUM(SOLD)<>0,sum(SCOST)/sum(SOLD),0) AS AvgPrCopy
FROM software GROUP BY DEVELOPIN

--35. Display each programmer’s name, costliest and cheapest Packages Developed by him or
--her.

Select PNAME,
MAX(DCOST) As [Costliest],
MIN(DCOST) As [Cheapest]
From Software
Group by PNAME

--36. Display each institute name with number of Courses, Average Cost per Course.

Select INSTITUTE,
Count(COURSE) AS [No.Of Course],
AVG(COURSE_FEE) AS [Avg fee]
From studies
Group by INSTITUTE

--37. Display each institute Name with Number of Students.

Select INSTITUTE, 
COunt(PNAME)AS [No. Of Students]
From studies
Group by INSTITUTE

--38. Display Names of Male and Female Programmers. Gender also.

Select PNAME,GENDER 
From programmer
Group by PNAME,GENDER

--39. Display the Name of Programmers and Their Packages.

Select PNAME,DEVELOPIN
From Software
Group by PNAME,DEVELOPIN

--40. Display the Number of Packages 
----in Each Language Except C and C++.

Select DEVELOPIN,
COUNT(DEVELOPIN) AS [No. Of LAnguages]
From Software
Where NOT DEVELOPIN = 'C'
AND DEVELOPIN ='C++'
Group by DEVELOPIN

--41. Display the Number of Packages in Each Language for which Development Cost is
--less than 1000.

Select DEVELOPIN,
COUNT(DEVELOPIN) AS [No.Of Prackages]
From Software
Where DCOST<1000
Group by DEVELOPIN 

--42. Display AVG Difference between SCOST, DCOST for Each Package.

Select DEVELOPIN,
AVG(DCOST)-AVG(SCOST) AS [AVERAGAE DIFFERENCE]
From Software
Group by DEVELOPIN

--43. Display the total SCOST, DCOST and amount to Be Recovered for each
--Programmer for Those Whose Cost has not yet been Recovered.

Select PNAME,SCOST,DCOST,DCOST-SCOST AS [Not REcoverd]
From Software
Group by PNAME,SCOST,DCOST
Having SCOST < DCOST

--44. Display Highest, Lowest and Average Salaries for those earning more than 2000.

Select PNAME,MAX(SALARY) AS [MAXIMUM SALARY],
MIN(SALARY) As [MININUM SALARY],
AVG(SALARY) AS [AVG SALARY]
From programmer
Group by PNAME,SALARY
HAVING SALARY > 2000

--45. Who is the Highest Paid C Programmers?

Select Top 1 * 
From programmer 
Where 'C' IN (PROF1,PROF2)
Order by SALARY DESC

--46. Who is the Highest Paid Female COBOL Programmer?

Select Top 1 * 
From programmer 
Where 'COBOL' IN (PROF1,PROF2)
AND GENDER ='F'
Order by SALARY DESC


--47. Display the names of the highest paid programmers for each Language.

Create table #temp0
(
	Profes varchar(100),
	Salary int
)

--Inserting two columns of PROF1,PROF2 into the one temporary table

Insert into #temp0
Select PROF1,SALARY
From programmer

Insert into #temp0
Select PROF2,SALARY
From programmer

Select * from #temp0

Create table #temp2
(
	Profes varchar(100),
	Salary int
)

Insert into #temp2
Select Profes,Max(Salary)
From #temp0
Group  by Profes

Select * from #temp2

Select p.PNAME,t.Profes,t.Salary
From #temp2 t
Join programmer p
On p.PROF1 = t.Profes OR P.PROF2 = t.Profes
Where p.SALARY = t.Salary

--48. Who is the least experienced Programmer.

Select PNAME,DateDiff(YY,DOJ,getDAte()) AS [Years of Experience]
From programmer
Where DateDiff(YY,DOJ,getDAte()) = (Select MIN(DateDiff(YY,DOJ,getDAte())) FROM programmer)

--49. Who is the most experienced male programmer knowing PASCAL.

Select PNAME,GENDER,DateDiff(YY,DOJ,getDAte()) AS [Years of Experience]
From programmer
Where DateDiff(YY,DOJ,getDAte()) = (Select MAX(DateDiff(YY,DOJ,getDAte()))
FROM programmer
Where GENDER = 'M'
AND PROF1='COBOL'
OR PROF2 = 'COBOL')

--50. Which Language is known by only one Programmer?

Select PROF1,PROF2
From programmer
Group by PROF1,PROF2
Having PROF1 NOT IN(Select PROF2 From programmer)
AND Count(PROF1) = 1
Union
Select PROF2,PROF1
From programmer
Group by PROF1,PROF2
Having PROF2 NOT IN(Select PROF1 From programmer)
AND Count(PROF2) = 1

--51. Who is the Above Programmer Referred in 50?

Create table #temp1
(
	PROF Varchar(100)
)

Insert into #temp1
Select PROF1
From programmer
Group by PROF1
Having PROF1 NOT IN (Select PROF2 From programmer)
AND Count(PROF1) = 1
UNION 
Select PROF2 
From programmer
Group by PROF2
Having PROF2 NOT IN (Select PROF1 From programmer)
AND COUNT(PROF2) = 1 

SELECT PNAME,PROF 
From programmer
Join #temp1
on PROF=PROF1
OR PROF = PROF2

--52. Who is the Youngest Programmer knowing DBASE?

Select PNAME,DAteDiff(YY,DOB,getDAte()) AS [Youngest Programmer]
From programmer
where DateDiff(YY,DOB,getDate())= (Select MIN(DAteDiff(YY,DOB,GetDate())) From programmer
Where 'DBASE' IN (PROF1,PROF2))

--53. Which Female Programmer earning more than 3000 does not know C, C++,
--ORACLE or DBASE?

Select PNAME,GENDER,SALARY
From programmer
Where Salary > 3000 
AND GENDER= 'F'
AND PROF1 NOT IN ('C','C++','ORACLE','DBASE')

--54. Which Institute has most number of Students?

Create table #temp4
(
	Institute varchar(100),
	Students int
)

Insert into #temp4
Select INSTITUTE, COUNT(PNAME)
From studies
Group by INSTITUTE

Select * FROM #temp4

Select Institute,Students AS[No. of Students]
From #temp4
Where Students = (Select MAX(Students) From #temp4)

--55. What is the Costliest course?


Select COURSE, COURSE_FEE AS [Costliest COURSE]
From studies
Where COURSE_FEE = (Select Max(COURSE_FEE) From studies)

--56. Which course has been done by the most of the Students?

CREATE TABLE #Coure 
(
CourNam VARCHAR(20),
StdNo INT
)

INSERT INTO #Coure
SELECT COURSE,COUNT(PNAME) 
FROM studies 
GROUP BY COURSE

Select * from #Coure

SELECT CourNam,StdNo AS [COUNT OF STUDENTS] 
FROM #Coure
WHERE StdNo = 
(SELECT MAX(StdNo) FROM #Coure)

--57. Which Institute conducts costliest course.

Select INSTITUTE,COURSE_FEE
From studies
Where COURSE_FEE = (Select MAX(COURSE_FEE) From studies)

--58. Display the name of the Institute and Course, which has below AVG course fee.

Select INSTITUTE,COURSE,COURSE_FEE
From studies
Where COURSE_FEE < (Select AVG(COURSE_FEE) FROm studies)


--59. Display the names of the courses whose fees are within 1000 (+ or -) of the
--Average Fee,

Select COURSE,COURSE_FEE
From studies
Where COURSE_FEE <(Select Avg(COURSE_FEE)+1000 FRom studies)
AND  COURSE_FEE >(Select Avg(COURSE_FEE)-1000 FRom studies)
Group  by COURSE

--60. Which package has the Highest Development cost?

Select TITLE,DCOST
From Software
Where DCOST = (Select MAx(DCOSt) From Software)

--61. Which course has below AVG number of Students?

Create Table #AvgCO
(
	Course varchar(100),
	NameCount int
)

Insert into #AvgCO
Select COURSE,COunt(Pname)
From studies
Group by COURSE

Select * from #AvgCO

Select Course,NameCount
From #AvgCO
Where NameCount <= (Select Avg(NameCount) from #AvgCO)

--62. Which Package has the lowest selling cost?

Select TITLE,SCOST
From Software
Where SCOST = (Select MIN(SCOST) From Software)
Group by TITLE,SCOST

--63. Who Developed the Package that has sold the least number of copies?

Select PNAME,TITLE,SOLD
From Software
Where SOLD = 
(
Select Min(SOLD) From Software
)

--64. Which language has used to develop the package, which has the highest
--sales amount?

Select TITLE,DEVELOPIN,SOLD
From Software
Where SOLD = (Select MAX(SOLD) From Software)

--65. How many copies of package that has the least difference between
--development and selling cost where sold.

Select TITLE,SOLD,DCOST-SCOST As [Least Difference]
From Software
Where DCOST-SCOST = 
(
Select MIN(DCOST-SCOST)
From Software
)

--66. Which is the costliest package developed in PASCAL.

Select TITLE,DEVELOPIN,DCOST
From Software
Where DCOST = (Select MAX(DCOST) FROM Software Where DEVELOPIN = 'PASCAL')

--67. Which language was used to develop the most number of Packages.

Create table #Temp01
(
	Developin varchar(100),
	counts int
)

Insert into #temp01
Select DEVELOPIN,COUNT(TITLE)
From Software
Group by DEVELOPIN

Select * from #Temp01

Select DEVELOPIN,counts
From #temp01
Where counts = (Select MAx(Counts)From #temp01)

--68. Which programmer has developed the highest number of Packages?

Create table #temp0 
(
	PNAME Varchar(100),
	Counts int
)


INsert into #temp0
Select PNAME,COUNT(TITLE)
From Software
Group by PNAME

Select * from #temp0 

Select PNAME,Counts
From #temp0
Where Counts = (Select MAX(Counts) From #temp0)

--69. Who is the Author of the Costliest Package?

Select PNAME,TITLE,SCOST
From Software
Where SCOST = (Select Max(SCOST) From Software)

--70. Display the names of the packages, which have sold less than the AVG
--number of copies.

Select TITLE,SOLD 
From Software
Where SOLD < (Select AVG(SOLD) From Software)

--71. Who are the authors of the Packages, which have recovered more than double the
--Development cost?
 
Select PNAME,TITLE 
From Software
Where SOLD*SCOST> 2*DCOST

----72. Display the programmer Name and the cheapest packages developed by them in
----each language.

Create table #temp13
(
	pname varchar(100),
	Title varchar(100),
	Dcost int
)

Insert into #temp13
Select PNAME,TITLE,MIN(DCOST)
From Software
Group by PNAME,TITLE

Select * From #temp13

Select pname,Title,Dcost
From #temp13 
where Dcost = (Select MIn(Dcost) 
from #temp13)

--73. Display the language used by each programmer to develop the Highest
--Selling and Lowest-selling package.

Select PNAME,DEVELOPIN,SOLD,'HIGHEST' AS [Selling COst]
From Software
Where SOLD
IN(Select MAX(SOLD) FROM Software)
UNION
Select PNAME,DEVELOPIN,SOLD,'LOWEST'
FRom Software
Where SOLD 
IN (Select Min(SOLD) From Software)

--74. Who is the youngest male Programmer born in 1965?

Select PNAME,DOB,GENDER
from programmer
Where DateDIff(DD,DOB,getDAte()) =
(Select MIN(DateDIff(DD,DOB,getDAte()))
From programmer
Where GENDER = 'M'
AND Year(DOB) = '1965')

--75. Who is the oldest Female Programmer who joined in 1992?

Select PNAME,GENDER,Year(DOJ)
From programmer
Where DAteDiff(DD,DOB,getdate()) = 
(Select MAx(DateDiff(DD,DOB,getDAte()))
From programmer
Where YEAR(DOJ) = '1992'
AND GENDER = 'F')

--76. In which year was the most number of Programmers born.

--COunt(year) is MAx DOB ? from programmers

CREATE TABLE #TEMP
(
	YOB INT, 
	CNT INT
)

INSERT INTO #TEMP
SELECT YEAR(DOB),COUNT(YEAR(DOB))
FROM programmer 
GROUP BY YEAR(DOB)

SELECT YOB, CNT 
FROM #TEMP 
WHERE CNT= (SELECT MAX(CNT) FROM #TEMP)

--77. In which month did most number of programmers join?

Create table #temp4
(
	MOJ int,
	COUNTS int
)

Insert Into #temp4
Select MONTH(DOJ),Count(MONTH(DOJ))
From programmer
Group by Month(DOJ)

Select MOJ,COUNTS
From #temp4
Where COUNTS = 
(Select MAX(COUNTS) From #temp4)

--78. In which language are most of the programmer’s proficient.

Create table #temp1
(
	Prof varchar(20),
	Counts int
)

Insert into #temp1
Select PROF1,COUNT(PROF1) 
FROM programmer
Group by PROF1
Union all
Select PROF2, COUNT(PROF2)
From programmer
Group by PROF2

Select * from #temp1

Create table #Summ
(
	Pr varchar(20),
	Counts int
)

INsert into #Summ 
Select Prof,Sum(Counts)
From #temp1
Group by Prof

Select * from #Summ

Select Pr,Counts
From #Summ
where Counts = (Select MAX(Counts) From #Summ)

--79. Who are the male programmers earning below the AVG salary of
--Female Programmers?

Select PNAME,SALARY 
From programmer
Where GENDER = 'M' 
AND
SALARY < (Select AVG(Salary) 
From programmer
Where GENDER = 'F')

--80. Who are the Female Programmers earning more than the Highest Paid male?

Select PNAME,SALARY
FROM programmer
Where GENDER = 'F'
AND SALARY >
(Select MAX(SALARY) FROM programmer
Where GENDER = 'M')

--81. Which language has been stated as the proficiency by most of the Programmers?

Create table #temp1
(
	Prof varchar(20),
	Counts int
)

Insert into #temp1
Select PROF1,COUNT(PROF1) 
FROM programmer
Group by PROF1
Union all
Select PROF2, COUNT(PROF2)
From programmer
Group by PROF2

Select * from #temp1

Create table #Summ
(
	Pr varchar(20),
	Counts int
)

INsert into #Summ 
Select Prof,Sum(Counts)
From #temp1
Group by Prof

Select * from #Summ

Select Pr,Counts
From #Summ
where Counts = (Select MAX(Counts) From #Summ)

--82. Display the details of those who are drawing the same salary.

Select A.PNAME,A.SALARY From programmer A
JOIN Programmer B
On A.SALARY = B.SALARY
AND A.PNAME <> B.PNAME
Order by SALARY

--83. Display the details of the Software Developed by the Male Programmers Earning
--More than 3000/-.

Select * FROM Software
Where PNAME 
IN(Select PNAME FROm programmer
WHere GENDER = 'M'
AND SALARY > 3000)

--84. Display the details of the packages developed in Pascal by the Female
--Programmers.

Select * 
FROM Software S,
programmer p
Where S.PNAME = P.PNAME
AND GENDER = 'F'
AND DEVELOPIN = 'PASCAL'

--85. Display the details of the Programmers who joined before 1990.

Select * from programmer
Where Year(DOJ)<1990

--86. Display the details of the Software Developed in C By female programmers of
--Pragathi.

Select s.*,GENDER,DEVELOPIN,INSTITUTE 
fROm Software s,programmer p,studies t
Where p.PNAME = s.PNAME 
AND s.PNAME = t.PNAME
AND p.GENDER = 'F'
AND s.DEVELOPIN = 'C'
AND t.INSTITUTE = 'PRAGATHI'

--87. Display the number of packages, No. of Copies Sold and sales value of
--each programmer institute wise.

Select t.INSTITUTE,Count(s.TITLE) as [No.of Packages],Count(s.SOLD) as [No. of Sold], Sum(SCOST*SOLD) as [Sales value]
From Software s, studies t
Where s.PNAME = t.PNAME
Group by INSTITUTE

--88. Display the details of the software developed in DBASE by Male Programmers, who
--belong to the institute in which most number of Programmers studied.

Select s.* from Software s,programmer p,studies t,#INST
Where t.PNAME = s.PNAME
AND s.PNAME = p.PNAME
AND DEVELOPIN = 'DBASE'
AND GENDER ='M'
AND INSTITUTE = INS 
AND CNT= (SELECT MAX(CNT) FROM #INST)

--89. Display the details of the software Developed by the male programmers Born
--before 1965 and female programmers born after 1975.

Select s.*,p.GENDER,Year(p.DOB) AS [Year of Birth]
from Software s,programmer p 
Where p.PNAME = s.PNAME
AND
((GENDER = 'M' AND YEAR(DOB)<1965) OR (GENDER = 'F' ANd YEAR(DOB)>1975))

--90. Display the details of the software that has developed in the language which is
--neither the first nor the second proficiency of the programmers.

Select s.* FROM Software s, programmer p
Where s.PNAME = p.PNAME
AND s.DEVELOPIN <> p.PROF1 
AND s.DEVELOPIN <> p.PROF2

--91. Display the details of the software developed by the male students of Sabhari.

Select s.*,p.GENDER,t.INSTITUTE from Software s,programmer p, studies t
Where s.PNAME = t.PNAME ANd p.PNAME = s.PNAME
AND p.GENDER = 'M'
AND t.INSTITUTE = 'SABHARI'

--92. Display the names of the programmers who have not developed any packages.

Select PNAME From programmer 
Where PNAME 
NOT IN (Select PNAME From Software)


Select DEVELOPIN From Software
Where DEVELOPIN = NULL

--93. What is the total cost of the Software developed by the programmers of Apple?

Select SUM(s.SCOST) FROM Software s, studies t
Where t.PNAME = S.PNAME
AND t.INSTITUTE = 'APPLE'

--94. Who are the programmers who joined on the same day?

Select A.PNAME,A.DOJ from programmer A
JOIn programmer B
ON A.DOJ = B.DOJ 
AND A.PNAME <> B.PNAME
Order by DOJ

--95. Who are the programmers who have the same Prof2?

Select DISTINCT A.PNAME,A.PROF2 FROM programmer A
JOin programmer B
ON A.PROF2 = B.PROF2
ANd A.PNAME <> B.PNAME
Order by A.PROF2

--96. Display the total sales value of the software, institute wise.

Select t.INSTITUTE,SUM(s.SCOST*s.SOLD) AS [TOtal sale]
FRom Software s, studies t
Where s.PNAME = t.PNAME
GROUP BY t.INSTITUTE

--97. In which institute does the person who developed the costliest package studied.

Select s.PNAME,t.INSTITUTE,s.DEVELOPIN,s.DCOST
FROM Software S, studies t
Where s.PNAME = t.PNAME 
AND DCOST= (Select MAX(DCOST) AS [Costliest Package] from Software)

--98. Which language listed in prof1, prof2 has not been used to develop any package.

Select DISTINCT PROF1 FROm programmer 
Where PROF1 
NOT IN (Select DEVELOPIN FROM Software)
UNION 
Select DISTINCT PROF2 From programmer
Where PROF2
NOT IN (Select DEVELOPIN FROM Software)

--99. How much does the person who developed the highest selling package earn and
--what course did HE/SHE undergo.

Select s.PNAME,COURSE,SALARY from programmer p,studies t, Software s
Where p.PNAME = t.PNAME AND t.PNAME = s.PNAME
AND SOLD =(SELECT MAX(SOLD) From Software)

--100. What is the AVG salary for those whose software sales is more than 50,000/-.

Select AVG(SALARY) as [AVERAGE SALARY] 
FROM programmer p,Software s
Where p.PNAME = s.PNAME
AND s.SOLD*s.SCOST> 50000

--101. How many packages were developed by students, who studied in institute that
--charge the lowest course fee?

Select s.PNAME,INSTITUTE,COUNT(TITLE) as[NO.of PAckages] FROM Software s,studies t
Where s.PNAME = t.PNAME
AND s.PNAME IN(Select PNAME From studies
where INSTITUTE =(Select DISTINCT INSTITUTE from studies
Where COURSE_FEE = (Select MIN(COURSE_FEE) from studies)))
Group by s.PNAME,INSTITUTE

--102. How many packages were developed by the person who developed the
--cheapest package, where did HE/SHE study?

SELECT TG.*, ST.INSTITUTE FROM studies AS ST INNER JOIN 
(
SELECT SW.PNAME, COUNT(TITLE) AS SWCNT 
--INSTITUTE 
FROM software AS SW 
--INNER JOIN studies AS ST ON SW.PNAME=ST.PNAME
WHERE SW.PNAME = (SELECT PNAME FROM software WHERE DCOST = (SELECT MIN(DCOST) FROM software)) 
GROUP BY SW.PNAME
) AS TG
ON ST.PNAME= TG.PNAME

--103. How many packages were developed by the female programmers earning more
--than the highest paid male programmer?

Select s.PNAME,COUNT(TITLE)AS [No. Of PAckages]
From Software s, programmer p
Where s.PNAME = p.PNAME
AND GENDER = 'F'
ANd SALARY > (Select MAX(SALARY) From programmer
Where GENDER = 'M')
GROUP by s.PNAME

--104. How many packages are developed by the most experienced programmer form
--BDPS.
 
Select PNAME from Software
Where PNAME = 
(Select PNAME from programmer
Where DateDiff(DD,DOJ,getDAte())=
(Select MAX(DateDiff(DD,DOJ,getDate())) from programmer p,studies t
Where p.PNAME = t.PNAME AND p.PNAME IN(Select PNAME from studies
Where t.INSTITUTE = 'BDPS')))


--105. List the programmers (form the software table) and the institutes they studied.

Select PNAME,INSTITUTE From studies
Where PNAME IN(Select PNAME From Software)

--106. List each PROFIT with the number of Programmers having that PROF and the
--number of the packages in that PROF.

Select DEVELOPIN,SUm(SCOST*SOLD-DCOST) AS [PROFIT],COUNT(1) As [No.of Programmers]
from Software
Where DEVELOPIN IN 
((Select PROF1 FROM programmer) UNION ALL(Select PROF2 From programmer))
Group by DEVELOPIN

--107. List the programmer names (from the programmer table) and No. Of Packages
--each has developed.

Select s.PNAME,COUNT(TITLE) AS [No. of Packages] from programmer p,Software s
Where s.PNAME = p.PNAME
Group by s.PNAME


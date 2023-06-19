DATABASE : Adventure Works 2012

Select * from Person.EmailAddress
Select * from Person.PhoneNumberType
Select * from Person.PersonPhone
Select * from Person.Person
Select * FROm Sales.PersonCreditCard
Select * From Sales.SalesOrderHeader
Select * From Sales.SalesOrderDetail
Select * FROm Sales.Customer

-----------------------------------------

--3) Perform the following with help of the above database

--Get all the details from the person table including
--email ID, phone number, and phone number type

Select P.Title,P.FirstName,P.MiddleName,P.LastName,E.EmailAddress,T.PhoneNumberTypeID, N.PhoneNumber
From Person.Person P, Person.EmailAddress E, Person.PhoneNumberType T, Person.PersonPhone N
Where N.PhoneNumberTypeID = T.PhoneNumberTypeID 
AND P.BusinessEntityID = E.BusinessEntityID
AND N.BusinessEntityID = P.BusinessEntityID

--4)Get the details of the sales header order made in May 2011

Select * From Sales.SalesOrderHeader
Where Month(OrderDate) = 5
AND Year(OrderDate) = 2011

--5)Get the details of the sales details order made in the month of May 2011

Select * From Sales.SalesOrderDetail D, Sales.SalesOrderHeader H
Where D.SalesOrderID = H.SalesOrderID
And Month(OrderDate) = 5
AND Year(OrderDate) = 2011 

--6)Get the total sales made in May 2011

Select Sum(TotalDue) As [Total Sales] 
From Sales.SalesOrderHeader
Where Month(OrderDate) = 5
AND Year(OrderDate) = 2011

--7)Get the total sales made in the year 2011 by 
--month order by increasing sales

Select OrderDate,Sum(TotalDue) As [Total Sales] 
From Sales.SalesOrderHeader
Where Year(OrderDate) = 2011
Group by OrderDate,TotalDue
Order by Sum(TotalDue) ASC


--8)Get the total sales made to the customer with 
--FirstName='Gustavo' and LastName='Achong'

Select P.FirstName, P.LastName, Sum(T.TotalDue) As [Total Sales] 
From Sales.SalesOrderHeader T, Person.Person P, Sales.PersonCreditCard C
Where T.CreditCardID =  C.CreditCardID 
AND C.BusinessEntityID = P.BusinessEntityID
AND P.FirstName = 'Gustavo'
AND P.LastName = 'Achong'
Group by P.FirstName, P.LastName





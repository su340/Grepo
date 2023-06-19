
NUll Function

Online Example:

In the example above, 
if any of the "UnitsOnOrder" values are NULL, the result will be NULL.

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;

------------------------------------------------
Online Example:

The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL:

SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;
or we can use the COALESCE() function, like this:

SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;
------------------------------------------------

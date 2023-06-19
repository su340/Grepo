
--Problem Statement:
--You have successfully cleared your 3rd semester. In the 4th semester, you will work with inbuilt functions and user-defined functions

--Tasks to be done:

--1Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

Select Max(amount) from Orders
Select Min(amount) from Orders
Select Avg(amount) from Orders

--2.Create a user-defined function, which will multiply the given number with 10

Create function mul(@num int)
Returns int
As
Begin
Return
(
	@num*10
)
End

Select dbo.mul(5)   //Output :50

--3.Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value

Select 
Case 
	When 100<200 then '100 is Lesser than 200'
	When 100>200 then '100 is Greater than 100'
	Else '100 is Equal to 200'
End

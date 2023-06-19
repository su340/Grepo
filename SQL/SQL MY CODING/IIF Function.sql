What does IIF mean in SQL?

IIF IIf (an abbreviation for Immediate if)is a shorthand way for writing a CASE expression. 
If the expression is true, IIf returns one value; if it is false, IIf returns another.
It evaluates the Boolean expression passed as the first argument,
and then returns either of the other two arguments based
on the result of the evaluation.

What is the difference between IF and IIF in SQL?
With nothing specified, it returns Null. The IF statement tests only if >50.
It doesnt return True, so the Tableau IF statement returns the False value.
Both the IF and IIF first check if the test is true; 
but the IIF then tests if the value is False.

Which is better IIF or CASE?
For small items with two outcomes, 
I typically use IIF statements (i.e. If x < a, then 1, else 0)
but for longer drawn out statements that can have multiple outcomes, I use CASE.

Syntax: 

	IIF(Boolean_expression,true_value,False_value)

Eg:
	SELECT
	IIf(10>20,'True','False')
------------------------------------------------------

Select * from Customers

SELECT Customer_id,cusotmer_name,
IIF(age>30,'Older','Younger') as generations from Customers

------------------------------------------------------



  




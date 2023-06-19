
User- Defined Functions

A user-defined function takes zero or more input parameters and 
returns either a scalar value or a table. 
A function can have a maximum of 1024 input parameters.

There are two types of UDF
a)Scalar valued
b)Table valued
--------------------------------------------

Scalar valued - Scalar valued Functiosns always returns a scalar value 

Syntax: 
	Create Function function_name(@param1 datatype,@param2 datatype)
	Return return_datatype
	As
	Begin
		Function Body
	Return value
	End

Eg:
   Create Function add_ten(@num int)  --Creating a function with a function name add_ten()
   returns int						  --Declaring what datype , we are looking for output
   As 
   Begin							  --beginging of the fucntion
	Return							  --Running the function
	(
		@num+10						  --body, operation performed
	)
   End								  --End of the Function

Select dbo.add_ten(40)				 --Calling the Function add_ten() with the associated Schema

---------------------------------------------------------

Tabule Valued - Table valued Functions return a table

Syntax:
	Create Function function_name(@param1 datatype,@param2 datatype)
	Returns Table
	AS
	Returns(columns_list from table_Name where condition)


Eg:
	Create Function bloodgroup(@bg char(10))
	Returns table
	AS
	Return
	(
		select * from Customers where Bloodgroup = @bg
	)

	Select * from dbo.bloodgroup('a+')

-------------------------------------------------------



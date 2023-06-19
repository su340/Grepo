--Dropping Column 

Syntax:
	Alter table tablName
	Drop Column col1,col2,col3
----------------------------------------
--Droppping Constrain, -- To Drop any column, constrain shoukd be dropped first if any specified

Syntax:
	Alter Table TableName
	Drop constraint Constraintname

Eg:
	Alter table Customers
	Drop constraint DF__Customers__cusot__24927208

-----------------------------------------
--Change/Modify the Data type of the Column
Syntax:
Alter table TableName
Alter Column NewDAtatype size

Eg:
	alter table Customers
	alter column customer_phone int

-----------------------------------------
--Change/Modify the Size of the Column

Syntax:
	Alter table TableName
	Alter Column NewDAtatype size

Eg:
	alter table Customers
	alter column customer_state varchar(100)

------------------------------------------
--Modifying Constraint on an existing Column

Syntax:
	Alter table tableName
	Alter column ColumnNAme Datatype (size) Constraint

Eg:
	Alter table Customers
	Alter Column customer_email varchar(100) not null  --changing default null constrain to null on the column

--If Modidication is done later on, on the exisitng column , it wil be effected only from the point it was created,Previous Data is not effected
	----------------------------------------
--To add Identity Constaint of an existing column

--How can add identity to existing column in SQL Server?
--There are potential methods like below of solving this problem.
--Drop and re-create table with INT IDENTITY column.
--Drop INT column and re-create it as an INT IDENTITY column.
--ALTER column with INT IDENTITY NOT NULL (only if there is no NULL values in it already eg.
syntax: 

	ALter Table TableName
	Add Newcolumn Datatype(INT) Identity(1,1)

	--Have to drop also

	ALter Table TableNAme
	Drop COlumn OldcolumnName

----------------------------------------------------



------------------------------------------------//Temp to see Identity and Primary in one-----------------------------------------------------

Create Table ##tempCustomers --Creating a new TempTable "Customers"
(
	customer_id int primary key Identity(3,1), --Defining Columns of Customers Table with Primary key as customer_id
	cusotmer_name varchar(100) Not null, --The name column cant be left empty due to not null constrain
	customer_email varchar(100),
	cusotmer_city varchar(50) Default 'Hyd', --Setting the "HYD" defualt value for the the column city which cant be changed at the runtime
	customer_state char(20),
	cusotmer_zip int,
	customer_phone Bigint
)

Insert into ##tempCustomers (cusotmer_name,customer_email,customer_state,cusotmer_zip,customer_phone) -- Inserting values into customers table by definig the columns name so that the data is inserted in the proper manner
Values
('Jaleel', 'jal@yahoo.com',     'IL',        86917, 1234435134),
('Amun',   'amu@gmail.com',    'Telangana', 3466,  3467),
('Sumi',   'sum@yahoo.com',    'IL',        346,   347437),
('aziz',   'aziz@gmail.com',   'IL',        356563,3473468),
('majeed', 'majeed@yahoo.com', 'Telangana', 45774, 346734),
('shaika', 'shaiks@gmail.com', 'IL',        436788,3457345),
('aslam',  'aslam@yahoo.com',  'IL',        835687,98569),
('sameeha','sameeha@yahoo.com','Telangana', 3568,  3462),
('abdul',  'abdul@gmail.com',  'IL',        3568,  76989),
('salva',  'salva@yahoo.com',  'Telangana',  34676, 5762)

Select * from ##tempCustomers

----------I am Able to use identity and primary key at once... Allhamdulillah


------------------------------------------------Change of Column Datatype---------------------------------------------------------


Create Table #tempDate(DOB Date)

Insert into  #tempDate(DOB)
Values
('1995-06-11')

Select * from  #tempDate

Alter Table  #tempDate
Alter column DOB datetime


Create database sqlassign

--Problem Statement:
--You have successfully cleared the first semester. In your second semester you will learn how to create tables, 
--work with where clause and basic operators
--Tasks to be done:

--1.Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’

Create table customers
(
	customer_id int Identity primary key,
	first_name varchar(100),
	last_name varchar(100),
	email varchar(100),
	[address] nvarchar(200),
	city char(150),
	[state] char(100),
	zip int
)

select * from customers
-----------------------

--2.Insert 5 new records into the table

Insert into customers(first_name,last_name,email,[address],city,[state],zip)
Values
('Sameer',	'Malhotra',	'Sameer@gamil.com',	'12-24/235,Rosiland',	'San Jose',	'California', 23521),
('Gaurav',	'Kumar',	'Gaurav@yahoo.com',	'10-65/w47,burdete',	'Chicago',	'Illinois',	  905555),
('Geeta',	'Kapoor',	'Geeta@yahoo.com',	'36-24/645,high court',	'Bengaluru','Karnataka',  595387),
('Faiz',	'Shaik',	'Faiz@gamil.com',	'674,lombard',			'Mumbai',	'Maharastra', 34573),
('Rosi',	'Fernandez','Rosi@yahoo.com',	'764-34-as4,hightech',	'San Jose',	'California', 73582),
('Ganesh',	'Kumar',	'Gaurav@yahoo.com',	'10-65/w47,burdete',	'San Jose',	'California', 509556),
('Geeta',	'sexena',	'Geeta@yahoo.com',	'36-24/645,high court',	'San Jose','California',  259860)

------------------------------

--3.Select only the ‘first_name’ & ‘last_name’ columns from the customer table

Select first_name,last_name from customers

--4.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

Select first_name,city from customers 
where first_name
like 'G%'
and city = 'San Jose'



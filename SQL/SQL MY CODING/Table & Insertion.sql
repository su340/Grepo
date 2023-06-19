
Create Database Learning --Create a new DATABASE

Use Learning --Use "LEARNING" DATABASE

--------------------------------------------Create 1st table Customers

Create Table Customers --Creating a new Table "Customers"
(
	customer_id int primary key, --Defining Columns of Customers Table with Primary key as customer_id
	cusotmer_name varchar(100) Not null, --The name column cant be left empty due to not null constrain
	customer_email varchar(100),
	cusotmer_city varchar(50) Default 'Hyd', --Setting the "HYD" defualt value for the the column city which cant be changed at the runtime
	customer_state char(20),
	cusotmer_zip int,
	customer_phone Bigint
)


Insert into Customers (customer_id,cusotmer_name,customer_email,customer_state,cusotmer_zip,customer_phone) -- Inserting values into customers table by definig the columns name so that the data is inserted in the proper manner
Values
(1,  'Jaleel', 'jal@yahoo.com',     'IL',        86917, 1234435134),
(2,  'Amun',   'amu@gmail.com',    'Telangana', 3466,  3467),
(3,  'Sumi',   'sum@yahoo.com',    'IL',        346,   347437),
(4,  'aziz',   'aziz@gmail.com',   'IL',        356563,3473468),
(5,  'majeed', 'majeed@yahoo.com', 'Telangana', 45774, 346734),
(6,  'shaika', 'shaiks@gmail.com', 'IL',        436788,3457345),
(7,  'aslam',  'aslam@yahoo.com',  'IL',        835687,98569),
(8,  'sameeha','sameeha@yahoo.com','Telangana', 3568,  3462),
(9,  'abdul',  'abdul@gmail.com',  'IL',        3568,  76989),
(10, 'salva',  'salva@yahoo.com',  'Telangana',  34676, 5762)

select * from Customers

--------------------------------------------------Create 2nd table "PRODUCT"

Create Table Products
(
	Product_id int Primary KEy Identity(2,1),
	Product_name varchar(100),
	Company varchar(100),
	MFG Date Default getDate(),
	ExpiryDate Date
)


Insert into Products (Product_name,Company,ExpiryDate)
Values
('Apple Juice'     ,'Walmart'   ,'2025-01-23'), 
('Mango Jelly'     ,'Target'    ,'2023-04-21'),
('Strawberry shake','Amazon'    ,'2028-11-12'),
('Choclate'        ,'Aldi'      ,'2002-12-06'),
('Cookie'          ,'Desi Bazar','2030-09-22')

Select *from Products


--------------------------------------------------Create 3rd Table Orders

Create table Orders
(
	id int Identity(1,1),
	Order_id int Primary key,
	Order_NAme Varchar(100) Not null,
	Order_date Date,
	Customer_id int
)

Insert into Orders(Order_id,Order_NAme,Order_date,Customer_id )
Values
(1,'Apple Juice'       ,'2022-10-12',1),
(2,'Mango Jelly'       ,'2022-06-19',5),
(3,'Choclate'          ,'2022-11-09',3),
(4,'Apple Juice'       ,'2022-07-15',6),
(5,'Cookie'            ,'2022-10-13',4),
(6,'Strawberry shake'  ,'2022-10-09',1),
(7,'Strawberry shake'  ,'2022-04-30',2),
(8,'Choclate'          ,'2022-12-24',8),
(9,'Cookie'            ,'2022-11-08',7),
(10,'Mango Jelly'      ,'2022-05-11',9),
(11,'Strawberry shake' ,'2022-05-11',4),
(12,'Choclate'         ,'2022-05-11',2),
(13,'Cookie'           ,'2022-05-11',10)


Select * from Orders


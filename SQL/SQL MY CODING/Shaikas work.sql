create database official;

use official;

create table Candidates
(

	c_name char(100) primary key,
	c_age int not null,
	c_gender char(30),
	c_city varchar(100),
	c_email varchar(100),
	c_qualification varchar(50),
	c_experience varchar(100),
	c_ExpectedSal varchar(100)

)

select * from Candidates;

insert into Candidates(c_name,c_age,c_gender,c_city,c_email,c_qualification,c_experience,c_ExpectedSal)
values

('James',     38,    'Male',     'Illinois',     'james31@gmail.com',       'PHD',        '13 Years',   55000),
('Anna',      32,    'Female',   'HYD',          'annahath65@gmail.com',    'Masters',    '5 Years',    40500),
('Julia',     27,    'Female',   'Toronto',      'jules763@gmail.com',      'Diploma',    '1 Year',     32000),
('Veronica',  25,    'Female',   'Whales',       'vero98@yahoo.com',        'Bachelors',  'Fresher',    25000),
('Lucas',     30,    'Male',     'Illinois',     'lucaca98@yahoo.com',      'Masters',    '7 Years',    35000),
('Jeffery',   24,    'Male',     'Sydney',       'Jeffyy54@gmail.com',      'Bachelors',  'Fresher',    28000),
('Monica',    35,    'Female',   'HYD',          'monica87@yahoo.com',      'PHD',        '9 Years',    38000),
('Mathew',    29,    'Male',     'Whales',       'mathewK098@gmail.com',    'Diploma',    '3 Years',    30000),
('Stuart',    40,    'Male',     'Illionois',    'stuarttt1@gmail.com',     'PHD',        '15 Years',   60000),
('Sally',     21,    'Female',   'TimesSquare',  'sall732@yahoo.com',       'Bachelors',  'Fresher',    22000)

select * from Candidates

-----------------------------------------------------------------------------------------------------------------------

create table Jobs

(
  Company varchar (100),
  Position varchar (100),
  Website varchar (100),
  Openings int,
  [last date] varchar (50)
  
)

insert into Jobs
values

('Amazon',    'Customer support',    'Naukri.com',    5,    '4 November'),
('Flipkart',  'Web developer',       'jobs.com',      2,    '16 October'),
('Curb',      'Sales executive',     'Linkden',       4,    '30 November'),
('Amazon',    'Engineer',            'Naukri.com',    2,    '27 December'),
('Flipkart',  'Accountant',          'Linkden',       3,    '1 December')

select * from Jobs

create table Salary

(
    Job char(100),
	Estimated_sal int,
	Experience varchar(100),

)

insert into Salary
values

('Customer Support',        25000,   '0-2 Years'),
('Accountant',              30000,   '1-3 Years'),
('Data Entry',              15000,   '0 Years'),
('Voice Process',           20000,   '0-1 Year'),
('Web Developer',           50000,   '8-9 Years'),
('Techinal engineer',       45000,   '5-6 Years'),
('Manager',                 40000,   '7-8 Years'),
('Chief Executive',         60000,   '12-13 Years'),
('Analyst',                 28000,   '2-3 Years'),
('Designer',                35000,   '3-4 Years'),
('Coder',                   37000,   '5-6 Years')


select * from Salary


--DELETE from Salary
--where Job='Analyst';                 -------------------------to delete a row, use this statement and put characters in brackets and numbers directly. 





----------------------------------------------------------------INNER JOIN-----------------------------------------------------------------





select Candidates.c_name, Candidates.c_ExpectedSal, Salary.job, Salary.Estimated_sal
FROM Candidates                                                                               ----statement for INNER JOIN. Inner join can be done only on columns that contains similar values.
INNER JOIN Salary ON Candidates.c_ExpectedSal=Salary.Estimated_sal;                           -----for eg; the condition is kept on expected sal and estimated sal to find those that are common in both.


select Jobs.Company, Jobs.Position, Salary.Job,Salary.Estimated_sal
FROM Jobs                     
INNER JOIN Salary ON Jobs.Position=Salary.Job;





-------------------------------------------------------------LEFT JOIN-----------------------------------------------------------------------------------------





select Candidates.c_name, Candidates.c_experience, Salary.Job, Salary.Experience                 ---------Syntax for left join similar to inner join, just replacing inner with left in the syntax
FROM Candidates                                                                                 ---------left join gives all the values of left side table and matching values from right side table.
LEFT JOIN Salary ON Candidates.c_experience=Salary.Experience;                                   -------and writes NULL in the dismatched values.


select Jobs.Company, Jobs.Position, Salary.Job,Salary.Estimated_sal
FROM Jobs                     
LEFT JOIN Salary ON Jobs.Position=Salary.Job;
  


----------------------------------------------------------RIGHT JOIN-----------------------------------------------------------------------------------------------


select Candidates.c_name, Candidates.c_ExpectedSal, Salary.Job, Salary.Estimated_sal                  ---------Syntax for right join similar to left join, just replacing left with right in the syntax
FROM Candidates                                                                                       ---------right join gives all the values of right side table and matching values from left side table.
RIGHT JOIN Salary ON Candidates.c_ExpectedSal=Salary.Estimated_sal;                                   -------and writes NULL in the unmatched values.


select Salary.Job, Salary.Experience, Candidates.c_name, Candidates.c_ExpectedSal                    ---------Syntax for left join similar to inner join, just replacing inner with left in the syntax
FROM Salary                                                                                          ---------left join gives all the values of left side table and matching values from right side table.
RIGHT JOIN Candidates ON Salary.Experience=Candidates.c_experience;                                  -------and writes NULL in the dismatched values.





---------------------------------------------------FULL JOIN-------------------------------------------------------------------------------



select Candidates.c_name, Candidates.c_ExpectedSal, Salary.job, Salary.Estimated_sal                  ---------FULL JOIN gives all the records of the given tables irrespective of if they match or not.
FROM Candidates                                                                                        ---------The unmacthed values will be shown as NULL
FULL JOIN Salary
ON Candidates.c_ExpectedSal=Salary.Estimated_sal; 


select Jobs.Company, Jobs.Position, Salary.Job,Salary.Estimated_sal
FROM Jobs                     
FULL JOIN Salary
ON Jobs.Position=Salary.Job;



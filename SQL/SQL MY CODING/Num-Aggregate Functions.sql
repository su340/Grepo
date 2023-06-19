use Learning

---------------------------------------------------------------Functions---------------------------------------------------------------------------------------------

------------Aggregate Functions/Math/Numeric
------------String functions
------------Date functions
------------Advanced Functions




-----------------------------------------------------Aggregate Functions/Math/Numeric-------------------------------------------------------------------------


Select Min(Orders_total) As lowesromount from Orders   --Select Min(column) as new columnname from Tablename

Select Max(Orders_total) As HigestOrderamount from Orders   --Select Max(column) as new columnname from Tablename

Select Sum(Orders_total) As totalAmount from Orders         --Select Sum(column) as new columnname from Tablename

Select Avg(Orders_total) As Averageoftotals from Orders     --Select avg(column) as new columnname from Tablename

Select Abs(Orders_total) As AbsoluteValue from Orders       --Abs() Returns Positive Value

Select Count(Orders_total) As NoOfRecords From Orders       --COUNT() Return Number of Records in the selected columns

Select Exp(65) As Expression   --#1.69488..                 --EXP() Returns e Raised to the power of a specific Number

-------------------ERROR--------------------------

Declare @num int =66.08                            --#FORMAT() CHange the Format of the given value        --Used the online Code
SELECT Format(@num,'Currency')
AS Formattedamount                                 --Syntax FORMAT(value, format, culture(OPT))

DECLARE @d DATETIME = '12/01/2018';  
SELECT FORMAT (@d, 'd', 'en-US') AS 'US English Result',  
       FORMAT (@d, 'd', 'no') AS 'Norwegian Result',  
       FORMAT (@d, 'd', 'zu') AS 'Zulu Result';

---------------------------------------------------------


Select Ceiling(-24.2) as Nearesthighnumber --# -24      --Returns nearnest high number
Select Ceiling(24.2) as Nearesthighnumber  --# 25
Select Ceiling(-0.245) as Nearesthighnumber --# 0
Select Ceiling(0.245) as Nearesthighnumber  --# 1

SELECT FLOOR(25.75) AS FloorValue;   --#  25            --Returns the smallest or equal to the given number
SELECT FLOOR(-25.75) AS FloorValue;  --# -26
SELECT FLOOR(05.75) AS FloorValue;   --#  5
SELECT FLOOR(-05.75) AS FloorValue;  --# -6

------------------------------------------------------------

SELECT PI(); --#3.14159265358979                        --PI value
SELECT POWER(4, 3);  --#64                              --POWER(a,b) Return 4 raised to the 3


--------------------------------------------------------
--A degree is a unit of measurement which is used to measure circles, spheres, and angles
--while a radian is also a unit of measurement which is used to measure angles.
--A circle has 360 degrees which are its full area 
--while its radian is only half of it which is 180 degrees or one pi radian.

--One radian is greater than one degree.

SELECT DEGREES(0.234) as Degreeofnumber     --# 13.40            --DEGREES() Returns the Degree of the given number
SELECT DEGREES(-0.234) as Degreeofnumber    --# -13.40
SELECT DEGREES(234) as Degreeofnumber       --# 13407

SELECT RADIANS(180) as RadianValue;  --# 3                              --RADIANS() Returns a degree value into radians
SELECT RADIANS(80) as RadianValue;   --# 1
SELECT RADIANS(-80) as RadianValue;  --# -1

------------------------------------------------


SELECT SQUARE(64) as SquareValue;     --# 4096                    --SQUARE() Returns the square of the given number
SELECT SQUARE(-64) as SquareValue;    --# 4096
SELECT SQUARE(0.64) as SquareValue;   --# 0.4096
SELECT SQUARE(-0.64) as SquareValue;  --# 0.4096

SELECT ROUND(235.415, 2) AS RoundValue;   --# 235.420             --Round() returns the round value upto the given value
SELECT ROUND(235.415, 3) AS RoundValue;   --# 235.415
SELECT ROUND(235.415, 1) AS RoundValue;   --# 235.400
SELECT ROUND(235.415, 4) AS RoundValue;   --# 235.415

SELECT ROUND(235.415, -2) AS RoundValue;    --# 200.000           --3rd parameter , How does it works, different outputs
SELECT ROUND(235.415, 2, 1) AS RoundValue;  --# 235.410
SELECT ROUND(235.415, 2, 2) AS RoundValue;  --# 235.410
SELECT ROUND(235.415, 2,-1) AS RoundValue;  --# 235.410           --2nd and 3rd unable to understand
SELECT ROUND(235.415, -2,-1) AS RoundValue; --# 200.000


----------------------------------------------
--The SIGN() function returns the sign of a number.

--This function will return one of the following:

--If number > 0, it returns 1
--If number = 0, it returns 0
--If number < 0, it returns -1


SELECT SIGN(255.5) ;     
SELECT SIGN(-255.5) ;  
SELECT SIGN(0) ;  
 
------------------------------------------------------

SELECT SQRT(64);       --#8               --SQRT() Returns the Square root of the value given
SELECT SQRT(13);       --#3.60..

SELECT SQUARE(64);     --# 4096           -- SQUARE() Returns the Square of the given value
SELECT SQUARE(13);     --# 169

-------------------------------------------------------



             
                                                         



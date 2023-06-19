
-------------------------------------------------------------------DATE FUNCTION()-----------------------------------------------------------------------------------

--The CURRENT_TIMESTAMP function returns the current date and time, 
--in a 'YYYY-MM-DD hh:mm:ss.mmm' format.

SELECT CURRENT_TIMESTAMP;

----------------------------------------------

--The DATEADD() function adds a time/date 
--interval to a date and then returns the date.

--interval	Required. The time/date interval to add. Can be one of the following values:
--year, yyyy, yy = Year
--quarter, qq, q = Quarter
--month, mm, m = month
--dayofyear, dy, y = Day of the year
--day, dd, d = Day
--week, ww, wk = Week
--weekday, dw, w = Weekday
--hour, hh = hour
--minute, mi, n = Minute
--second, ss, s = Second
--millisecond, ms = Millisecond

SELECT DATEADD(year, 1, '2017/08/25') AS DateAdd;                                     --#SYNTAX: DATEADD(interval, number, date)
SELECT DATEADD(month, 2, '2017/08/25') AS DateAdd;
SELECT DATEADD(month, -2, '2017/08/25') AS DateAdd;
SELECT customer_id, Order_date, DATEADD(year, 18, Order_date) AS DateAdd FROM Orders;


-----------------------------------------------

--The DATEDIFF() function returns the difference between two dates.

SELECT DATEDIFF(year, '2017/08/25', '2011/08/25') AS DateDiff;                             --#SYNTAX: DATEDIFF(interval, date1, date2)
SELECT DATEDIFF(month, '2017/08/25', '2011/08/25') AS DateDiff;
SELECT DATEDIFF(hour, '2017/08/25 07:00', '2017/08/25 12:45') AS DateDiff;

-----------------------------------------------

--The DATEFROMPARTS() function returns a date from 
--the specified parts (year, month, and day values).

SELECT DATEFROMPARTS(2018, 10, 31) AS DateFromParts;                                       --#SYNTAX: DATEFROMPARTS(year, month, day) 

-----------------------------------------------

--The DATENAME() function returns a specified part of a date.

SELECT DATENAME(year, '2017/08/25') AS DatePartString;                                     --#SYNTAX: DATENAME(interval, date)
SELECT DATENAME(day, '2017/08/25') AS DatePartString;
SELECT DATENAME(yy, '2017/08/25') AS DatePartString;
SELECT DATENAME(mm, '2017/08/25') AS DatePartString;
SELECT DATENAME(hour, '2017/08/25 08:36') AS DatePartString;
SELECT DATENAME(minute, '2017/08/25 08:36') AS DatePartString;

-----------------------------------------------

--The DATEPART() function returns a specified part of a date.

SELECT DATEPART(year, '2017/08/25') AS DatePartInt;                                       --#SYNTAX: DATEPART(interval, date)      
SELECT DATEPART(yy, '2017/08/25') AS DatePartInt;
SELECT DATEPART(month, '2017/08/25') AS DatePartInt;
SELECT DATEPART(hour, '2017/08/25 08:36') AS DatePartInt;
SELECT DATEPART(minute, '2017/08/25 08:36') AS DatePartInt;
---------------------------------------------

--The DAY() function returns the day of the month (from 1 to 31) for a specified date.

SELECT DAY('2017/08/25') AS DayOfMonth;                                                   --#SYNTAX: DAY(date)
SELECT DAY('2017/08/13 09:08') AS DayOfMonth;

---------------------------------------------

--The GETDATE() function returns the current database system date and time, 
--in a 'YYYY-MM-DD hh:mm:ss.mmm' format.

SELECT GETDATE();                                                                         --#SYNTAX: GETDATE()
---------------------------------------------

--The GETUTCDATE() function returns the current database system UTC date and time,
--in a 'YYYY-MM-DD hh:mm:ss.mmm' format.

SELECT GETUTCDATE();         --Coordinated Universal Time (UTC)                          --#SYNTAX: GETUTCDATE()

--------------------------------------------

--The ISDATE() function checks an expression and 
--returns 1 if it is a valid date,
--otherwise 0.

SELECT ISDATE('2017-08-25');                                                             --#SYNTAX: ISDATE(expression)
SELECT ISDATE('2017');
SELECT ISDATE('Hello world!');
---------------------------------------------

--The MONTH() function returns the month part for a specified date 
--(a number from 1 to 12).

SELECT MONTH('2017/08/25') AS Month;                                                    --#SYNTAX: MONTH(date)
SELECT MONTH('2017/05/25 09:08') AS Month;

--------------------------------------------

--The SYSDATETIME() function returns the date and time of the computer          
--where the SQL Server is running.

SELECT SYSDATETIME() AS SysDateTime;                                                     --#SYNTAX: SYSDATETIME()

--------------------------------------------

--The YEAR() function returns the year part for a specified date.

SELECT YEAR('2017/08/25') AS Year;                                                      --#SYNTAX: YEAR(date)
SELECT YEAR('1998/05/25 09:08') AS Year;
                                             
-----------------------------------------

--Get the Age from the DOB from the column

Select DATEDIFF(YY,DOB,Getdate())  -----(YY[to get the result in years],DOB(COlumnNAme),Getdate()[Current Date])
    								   --DAte diff get the diff between the DOB and Current date and gic=ves the age in YY,I think we can get it in months also
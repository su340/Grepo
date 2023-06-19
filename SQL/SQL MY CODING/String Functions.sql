
--------------------------------------------------------------STRING FUNCTION--------------------------------------------------------------------------------------

Select * from Customers

SELECT cusotmer_name, ASCII(cusotmer_name) AS NumCodeOfFirstChar           --ASCII() Returns the number of characters
FROM Customers;


SELECT CHAR(65) AS CodeToCharacter;   --#A   --CHAR() function returns the character based on the ASCII code.
SELECT CHAR(60) AS CodeToCharacter;   --#<
SELECT CHAR(50) AS CodeToCharacter;   --#2
SELECT CHAR(74) AS CodeToCharacter;   --#J
--------------------------------------------

SELECT CHARINDEX('t', 'Customer') AS MatchPosition;  --#4   --#CHarINdex() returns the position if the character
SELECT CHARINDEX('u', 'Customer') AS MatchPosition;  --#2
SELECT CHARINDEX('OM', 'Customer') AS MatchPosition;   --#5    --#Returns the first position of the value
SELECT CHARINDEX('mer', 'Customer', 3) AS MatchPosition;  --#6
--------------------------------------------- 

SELECT CONCAT('HI,', 'How are you');    --#The CONCAT() function adds two or more strings together.
SELECT CONCAT('google', '.com');   --# '','' concat
Select CONCAT('Voilet+ ','Indigo+ ','BLue+ ','Green+ ','Yellow+ ','Orange+ ','Red= ') As Rainbow

SELECT 'yahoo' + '.com' as Otherwayofconcating --# + concat

SELECT CONCAT_WS('.', 'www', 'W3Schools', 'com');   ---# concat_ws () "CONCAT WITH SEPERATOR" adds the  first paramether after evry parameter of the value as a single value with a seperator
SELECT CONCAT_WS('*', 'www', 'W3Schools', 'com');
SELECT CONCAT_WS('%', 'www', 'W3Schools', 'com');
-------------------------------------------------------

SELECT DATALENGTH('W3Schools.com');   --#13  DATALENGTH() Returns the length in bytes of the given value, it also calculate the leading and trailing spaces
SELECT DATALENGTH(3);                 --# 4 
SELECT DATALENGTH(2346356);           --# 4 --I think as the maximum len of INT is 4 so the answer for both the condition is 4
SELECT DATALENGTH(-4);                --# 4
SELECT DATALENGTH(-43);               --# 4
SELECT DATALENGTH('a');               --# 1
SELECT DATALENGTH('a ');              --# 2
SELECT DATALENGTH(null);              --# NULL
-----------------------------------------------

--The DIFFERENCE() function compares two SOUNDEX values, 
--and returns an integer. 
--The integer value indicates the match for the two SOUNDEX values, 
--from 0 to 4.

--0 indicates weak or no similarity
--between the SOUNDEX values.
--4 indicates strong similarity or identically SOUNDEX values.

SELECT DIFFERENCE('Juice', 'Jucy');           --# 4sSTRONG SIMILARITY
SELECT DIFFERENCE('Juice', 'Banana');         --# 2 MEDIUM SIMILARITY
SELECT DIFFERENCE('Juice', 'ANIMAL');         --# 0 WEAK SIMILARITY
SELECT DIFFERENCE('Juice', '1244');           --# 0 WEAK SIMILARITY

------------------------------------------------------

--The FORMAT() function formats a value
--with the specified format (and an optional culture in SQL Server 2017).

--Use the FORMAT() function to format date/time values
--and number values. 
--For general data type conversions, use CAST() or CONVERT().
-------------------------------------------

--FORMAT(value, format, culture)

SELECT FORMAT(123456789, '##-##-#####');  --# 12-34-56789
Declare @d Datetime = '21-12-1998'
SELECT FORMAT(@d ,'d','en-us')            --# DATE 

-------------------------------------------------

SELECT LEFT('SQL Tutorial', 3) AS EXTRACTSTRING;     --# SQL    --#The LEFT() function extracts a number of characters from a string (starting from left).
SELECT cusotmer_name, LEFT(cusotmer_name, 3) AS ExtractString  --Extract 5 characsters from the customer_Name column from cutomers table
FROM Customers;
Select Order_NAme, LEFT(Order_NAme,3) as Leftcharacters 
From Orders
-----------------------------------------------------
--LEN() Returns the number of characters of the specified string expression,
--excluding trailing blanks. 
--DATALENGTH() Returns the number of bytes used to represent any expression.

SELECT LEN('W3Schools.com');
SELECT LEN('W3Schools.com ');
SELECT LEN(' W3Schools.com ');  --#calculates the Before Space
SELECT LEN('2017-08');

SELECT DATALENgth('W3Schools.com');
SELECT DATALENgth('W3Schools.com  ');
-------------------------------------------------------

SELECT LOWER('SQL Tutorial is FUN!');
SELECT cusotmer_NAme, LOWER(cusotmer_NAme) AS LowercaseCustomerName
FROM Customers;


SELECT LTRIM('     SQL Tutorial') AS LeftTrimmedString;  --# LTRIM removes left side leading spaces
SELECT NCHAR(65) AS NumberCodeToUnicode;   --#The NCHAR() function returns the Unicode character based on the number code.

------------------------------------------------------
--The PATINDEX() function returns the position of a pattern in a string.
--If the pattern is not found, this function returns 0.
--Note: The search is case-insensitive and the first position in string is 1.

SELECT PATINDEX('%schools%', 'Schools.com');                                           --#SYNTAX: PATINDEX(%pattern%, string)
SELECT PATINDEX('%s%com%', 'Schools.com');
SELECT PATINDEX('%[ol]%', 'Schgols.com');   
SELECT PATINDEX('%[z]%', 'Schools.com');    
SELECT PATINDEX('%[^c]%', 'Schools.com'); 
SELECT PATINDEX('%[^c]%', 'School.com');  --#can't understand

--%pattern%	Required. The pattern to find. It MUST be surrounded by %. Other wildcards can be used in pattern, such as:
--% - Match any string of any length (including 0 length)
--_ - Match one single character
--[] - Match any characters in the brackets, e.g. [xyz]
--[^] - Match any character not in the brackets, e.g. [^xyz]

--------------------------------------------------------
SELECT QUOTENAME('abcdef');                                                      --#SYNTAX: QUOTENAME(string, quote_char)
SELECT QUOTENAME('abcdef', '()');
SELECT QUOTENAME('abcdef', '{}');
SELECT QUOTENAME('abcdef', '<>');

--------------------------------------------------------

--The REPLACE() function replaces all occurrences of a substring 
--within a string, with a new substring.

SELECT REPLACE('SQL Tutorial', 'T', 'M');                                                     --#SYNTAX: REPLACE(string, old_string, new_string)
SELECT REPLACE('SQL Tutorial', 'SQL', 'HTML');
SELECT REPLACE('ABC ABC ABC', 'a', 'c');
--------------------------------------------------------

--The REPLICATE() function repeats a string a specified number of times.

SELECT REPLICATE('SQL Tutorial ,', 5);                                                         --#SYNTAX: REPLICATE(string, integer)
SELECT REPLICATE(123 , 5); 
SELECT REPLICATE(NULL , 5); 
SELECT REPLICATE('*?%  ', 5); 
SELECT cusotmer_NAme, REPLICATE(cusotmer_NAme, 2)
FROM Customers;

--------------------------------------------------------
--The REVERSE() function reverses a string and returns the result.

SELECT REVERSE('SQL Tutorial');                                                                  --#SYNTAX: REVERSE(string)
SELECT REVERSE(1234);
SELECT REVERSE('%^#!&');
SELECT cusotmer_NAme, REVERSE(cusotmer_NAme)
FROM Customers;

---------------------------------------------------------------

----The RIGHT() function extracts a number of characters 
--from a string (starting from right).

SELECT RIGHT('SQL Tutorial', 3) AS ExtractString;                                                 --#SYNTAX: RIGHT(string, number_of_chars)
SELECT RIGHT(1234,1);
SELECT RIGHT('%^#!&',3);
SELECT RIGHT(NULL,1);
SELECT RIGHT(cusotmer_NAme, 3) AS ExtractString
FROM Customers;

--------------------------------------------------------------
--The RTRIM() function removes trailing spaces from a string.
 
SELECT RTRIM('SQL Tutorial     ') AS RightTrimmedString;                                          --#SYNTAX:  RTRIM(string)


----------------------------------------------------------
--The SOUNDEX() function returns a four-character code 
--to evaluate the similarity of two expressions.

SELECT SOUNDEX('Juice'), SOUNDEX('Jucy');                                                          --#SYNTAX:  SOUNDEX(expression)
SELECT SOUNDEX('Juice')SELECT SOUNDEX('Juice')SELECT SOUNDEX('Juice')
SELECT SOUNDEX('Juice'), SOUNDEX('Banana');
SELECT SOUNDEX(1234),SOUNDEX(1234);
SELECT SOUNDEX('!@#$'),SOUNDEX('!@#$'),SOUNDEX(1234)
SELECT SOUNDEX(NULL),SOUNDEX('ASD')
SELECT SOUNDEX(NULL),SOUNDEX(12344764);

----------------------------------------------------------

--The SPACE() function returns a string of the specified number 
--of space characters.

SELECT SPACE(10);

DECLARE @var varchar(100) = 'abcd'
Select  @var +(select space(20)) + @var

--------------------------------------------------
--The STR() function returns a number as a string.

SELECT STR(185);                                                                                         --#SYNTAX:  STR(number, length, decimals)
SELECT STR(185.5);
SELECT STR(185.476, 6, 2);

---------------------------------------------------

--The STUFF() function deletes a part of a string 
--and then inserts another part into the string,
--starting at a specified position.

SELECT STUFF('SQL Tutorial', 1, 3, 'HTML');                                                                --#SYNTAX:   STUFF(string, start, length, new_string)
SELECT STUFF('SQL Tutorial!', 13, 1, ' is fun!');
SELECT STUFF('SQL Tutorial!', 12, 0, ' is fun!');
SELECT STUFF('SQL Tutorial!', 8, 1, ' is fun!');
SELECT STUFF('SQL Tutorial!', 6, 1, ' is fun!');

-------------------------------------------------------
--The SUBSTRING() function extracts some characters from a string.

SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString;                                                    --#SYNTAX: SUBSTRING(string, start, length)
SELECT SUBSTRING(cusotmer_NAme, 1, 5) AS ExtractString
FROM Customers;
SELECT SUBSTRING(cusotmer_NAme, 1, 2) AS ExtractString
FROM Customers;
                        
---------------------------------------------------------

--The TRANSLATE() function returns the string 
--from the first argument after the characters specified
--in the second argument are translated into 
--the characters specified in the third argument.

SELECT TRANSLATE('Monday', 'Monday', 'Sunday'); --// Results in Sunday                                        --#SYNTAX:  TRANSLATE(string, characters, translations) 
SELECT TRANSLATE('3*[2+1]/{8-4}', '[]{}', '()()'); -- // Results in 3*(2+1)/(8-4)

----------------------------------------------------------

--By default, the TRIM() function removes 
--leading and trailing spaces from a string.

SELECT TRIM('     SQL Tutorial!     ') AS TrimmedString;                                                --#SYNTAX: TRIM([characters FROM ]string)
SELECT TRIM(  '!@# ' FROM  'S@!#QL' )
SELECT TRIM('#! ' FROM '    #SQL Tutorial!    ') AS TrimmedString;

----------------------------------------------------------

--The UNICODE() function returns an integer value (the Unicode value)
--, for the first character of the input expression.

SELECT UNICODE('Atlanta');                                                                              --#SYNTAX:  UNICODE(character_expression)
SELECT cusotmer_NAme,UNICODE(cusotmer_NAme) AS UnicodeOfFirstChar
FROM Customers;


---------------------------------------------------------

--The UPPER() function converts a string to upper-case.

SELECT UPPER('SQL Tutorial is FUN!');
SELECT cusotmer_NAme,UPPER(cusotmer_NAme) AS UppercaseCustomerName
FROM Customers;

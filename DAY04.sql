SELECT "Hello world!";

-- POW(m,n)
SELECT POW(2,4);              -- 16
SELECT POW(2,-2);             -- 0.25
SELECT POW(-2,3);             -- -8
SELECT POW(2.37, 3.45);       -- 19.6282..

-- ROUND(x,d)
SELECT ROUND(1.58);             -- 2
SELECT ROUND(-1.23);            -- -1
SELECT ROUND(1.298, 0);         -- 1
SELECT ROUND(-5.898, 0);        -- -6
SELECT ROUND(3.79867, 3);       -- 3.799
SELECT ROUND(23.298, -1);       -- 20
SELECT ROUND(36567.78, -4)      -- 40000

--TRUNCATE(x,d)
SELECT TRUNCATE(7.29, 0);               --7
SELECT TRUNCATE(27.59, 1);              --27.5
SELECT TRUNCATE(389.23, -2);            --300

--MOD(dividend, divisor)
SELECT MOD(11,3);           -- 2
SELECT MOD(10.5,3);         -- 1.5

--SQRT(value)
SELECT SQRT(64);        --8
SELECT SQRT(169);       --13

--ABS(value)
SELECT ABS(-12);         --12
SELECT ABS(-234.67);     --234.67


-------------------------------------
---- STRING (Text) Functions
-------------------------------------

--ASCII(char)
SELECT ASCII('a')   FROM DUAL;   --97
SELECT ASCII('A')   FROM DUAL;   --65
SELECT ASCII('1')   FROM DUAL;   --49
SELECT ASCII('ABC') FROM DUAL;   --65

-- 'A' to 'Z' is 65 to 90, 'a' to 'z' is 97 to 122
-- '0' to '9' the ASCII Value is 48 to 57
--If no table name is specified, then SQL uses DUAL TABLE
--which is a dummy table used for performing operations.

--LOWER(String)/LCASE(String)
SELECT LOWER("INFORMATION TECHNOLOGY");

--UPPER(String)/UCASE(String)
SELECT UPPER('Information Technology');  --22

--LENGTH(String)
SELECT LENGTH('Information Technology');

--REPLACE('String1', 'String2', 'String3')
SELECT REPLACE("INFORMATION TECHNOLOGY", "INFORMATION", "LATEST"); -- LATEST TECHNOLOGY

--LEFT(String, Integer)
SELECT LEFT('INFORMATION TECHNOLOGY', 6); -- INFORM

--RIGHT(String, Integer)
SELECT RIGHT('INFORMATION TECHNOLOGY', 8); --FUNCTION

--LTRIM(String)
SELECT LTRIM(' LIBRARY FUNCTION'); -- LIBRARY FUNCTION

--RTRIM(String)
SELECT RTRIM('LIBRARY FUNCTION '); -- LIBRARY FUNCTION

--TRIM(String)
SELECT TRIM('LIBRARY FUNCTION');  -- LIBRARY FUNCTION

--REVERSE(String)
SELECT REVERSE('HELLO');  -- OLLEH

--REPEAT(String)
SELECT REPEAT('SIX', 3);  --SIXSIXSIX

--SUBSTRING(String, Start_Index, Length)/MID()/SUBSTR()
SELECT SUBSTRING('STRING FUNCTION', 1, 6); --STRING
SELECT SUBSTRING('STRING FUNCTION', 8, 8); --FUNCTION
SELECT SUBSTRING('STRING FUNCTION', 3,4); --RING

--INSTR(String, Substring)
SELECT INSTR("Informatics", "ma");  --6

--CONCAT(String1, String2, String3, String4..Stringn)
SELECT CONCAT("informatics", 'Practices', 'Class-XII');
-- informaticsPracticesClass-XII


-------------------------------------
-- DATE/TIME FUNCTIONS
-------------------------------------

--CURDATE() {Return Current System Date}
SELECT CURDATE();

--NOW()  {Returns Current Date and Time}
SELECT NOW();

--SYSDATE() {Returns the time at which the function executes}
SELECT SYSDATE():

--DATE() {Extracts the date part of a date or date-time expression}
SELECT DATE('2021-02-03 01:02:03'); --2021-02-03

--MONTH() {Returns the month fromt he date passed}
SELECT MONTH('2021-02-03');         -- 2

--YEAR()  {Returns the year from the inputted date}
SELECT YEAR('2021-02-03');          --2021

--DAYNAME()  {Returns the name of the weekday}
SELECT DAYNAME('2021-02-03');       --Wednesday

--DAYOFMONTH()  {Returns of the day of the month (0-31)}
SELECT DAYOFMONTH('2021-02-03');     -- 3

--MONTHNAME()  {Returns the name of the month}
SELECT MONTHNAME('2021-02-03');      --February

--DAYOFWEEK()   {Returns the weekday index Sunday as 1}
SELECT DAYOFWEEK('2021-02-03');      --4

--DAYOFYEAR()   {Returns the day of the year (1-366)}
SELECT DAYOFYEAR('2021-02-03');      --34


------------------------------------------
-- AGGREGATE FUNCTIONS IN SQL
------------------------------------------

SELECT SUM(MARKS) FROM STUDENT;
SELECT SUM(MARKS) FROM STUDENT WHERE Marks > 80;

SELECT AVG(Marks) FROM STUDENT;
SELECT AVG(Marks) FROM STUDENT WHERE DOB < '1999/04/12';

SELECT MAX(Marks) FROM STUDENT WHERE Gender='M';
SELECT MIN(Marks) FROM STUDENT WHERE Stream="Science";

SELECT MIN(Rollno), MAX(Marks) FROM STUDENT;

SELECT COUNT(*) FROM STUDENT;
SELECT COUNT(Marks) FROM STUDENT;

SELECT COUNT(DISTINCT Stream) FROM STUDENT;

--------------------------------------
-- SORTING IN SQL ORDER BY
--------------------------------------

SELECT Rollno, Name, Marks
FROM STUDENT
ORDER BY Name;


SELECT Rollno, Name, Marks
FROM STUDENT
ORDER BY Marks DESC, Name;

SELECT Rollno, Name, Marks as "Marks_obtained"
FROM STUDENT
ORDER BY Marks_obtained;



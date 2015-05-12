#SQL 

## SQL commands

* Don't forget ';'. They're used to ...*
* SQL commands are case-insensitive*
* text values : single quotes (' ')
* numeric fields : NO quotes
* // = next line

####SQL Wildcard Characters
* % : a substitue for 0 or more characters
    * prefix = % at *end* of pattern
    * suffix = % at *beginning* of pattern
    * anywhere = wrap in 2 %
* _ : a substitute for a single character
* [charlist] : sets and ranges of characters to match
    * '[bsp]%' = begins with "b", "s", or "p"
    * '[a-c]%' = begins with "a', "b", "c'
* [^charlist] or [!charlist] : matches only a character NOT specified within the brackets

---

####Select
+ .. all from a particular table : **SELECT * FROM Table_Name;**  
+ .. multiple columns from table : **SELECT column1,column2 FROM Table_Name;**  
+ .. unique (nondup) values : **SELECT _DISTINCT_ column1,column2 FROM Table_Name;**  
+ .. based on criterion : **SELECT * FROM table _WHERE_ _column="criterion"_;** 
    + *(no quotes if criterion=#)* 
    + possible operators: ```=, <> (not equal), >, <, >=, <=, BETWEEN (b/w inclusive range), LIKE (search for pattern), IN (to specify multiple possible values for a column)```
+ .. filter with AND & OR : SELECT * FROM table **WHERE column="criterion" && (||) column2=# ;**
+ .. sort result-set ( sort in ascending OR descending order): SELECT * FROM table **_ORDER BY_ column, _column2 ASC OR (DESC)_;**
+ ..specify the number of records to return 
    + useful on LARGE tables with thousands of records.-- would impact performance
    + not all database systems support the **SELECT TOP** clause
        + **SQL Server/ MS Access Syntax**: SELECT TOP number | percent colName(s) // FROM tableName;
        + **MySQL Syntax** : SELECT colName(s) // FROM tableName // _**LIMIT number**_;
        + **Oracle Syntax** : SELECT colName(s) // FROM tableName // _**WHERE ROWNUM <= number**_;
+ .. to search for pattern : SELECT * FROM Table_Name WHERE column **LIKE pattern**;
    + ex : "LIKE 's%';"
        + pattern: starting with letter "s"
        + The "%" is used to define wildcards 
+ .. specify multiple values in a WHERE clause : ... WHERE column **IN (value1,value2 ...);**
+ .. selects values (not) within a range (use BETWEEN in WHERE clause) : ... WHERE column ** (NOT) BETWEEN value1 AND value2;**
    + databases vary whether inclusive or exclusive range
+ 


---

####Insert  (adds records in a table)

+ ..values only specified : **INSERT INTO table_name // VALUES (value1,value2,value3....);**
    + doesn't specify the column names where the data will be inserted, _only values_
* .. columns and values specified : **INSERT INTO table_name (col1, col2, col3,...)// VALUES (val1,val2,val3,...);**
    * second form specifies _both the column names and values_ to be inserted.
* .. only in specified columns : **INSERT INTO table_name (col1, col4, col6) // VALUES (val1, val4,val5)**;

####Update
* .. existing records in a table : **UPDATE table_name // SET col1 = val1, col2 = val2,...// _WHERE some_col = updated_val_;**
    * The **WHERE** clause specifies which record(s) should be updated. If it is omitted, _ALL FILES WILL BE UPDATED_!

####Delete (delete rows)
* .. specific portion : **DELETE FROM table_name // _WHERE some col=specific_val_**
    * specify which one with WHERE
* .. all data (***careful--permanent***) : DELETE FROM table_name;  || DELETE * FROM table_name;


---

####Injection (Potentially dangeous! Can destroy database)
* Example 1: SQL is used to display data on web page// Letting web users input their own search values
    *  **txtUserId = getRequestString("UserId");**
    *  **txtSQL = "SELECT * FROM Users WHERE UserID = " + txtUserId;**
        *  txtUserId is a string that is requested by user
        *  Select will fetch the variable 
   *  Dangers:
       *   SQL injection is a technique in which malicious users can inject SQL commands into a SQL statement, via page input.
       *  Injected SQL commands can alter SQL statement and compromise the security of a web app.
  *  Danger ex: 
        *  SELECT UserId, Name, Password FROM Users **WHERE UserId = 105 or 1=1**
            *  A smart hacker might get access to all user names and passwords by inserting 105 or 1=1 into the input box.
            *  ***"="*** is ALWAYS TRUE!!
*  Example 2: SQL Injection based on Batched SQL Statements (joining statements with ;)
    *  SELECT * FROM **Users ; DROP TABLE Suppliers**
        *  Returns all rows in the User table, then deletes the table called Supplies
*  Parameters for Protection
    * **NOT SUCH A GOOD IDEA**:  Use a "blacklist" of words or characters to search for in SQL input, to prevent SQL injection attacks.
        * Some words (like delete or drop) and characters (like semicolons and quotation marks), are used in common language and should be allowed in many types of input
   * **BETTER IDEA** : Use SQL parameters = values that are added to an SQL query at execution time, in a controlled manner.
       * txtUserId = getRequestString("UserId");
       * txtSQL = "SELECT * FROM Users WHERE UserId = **@0"**;
       * db.Execute(txtSQL,txtUserId);
           * SQL parameters are represented by @ marker in statements.
           * The SQL engine checks each parameter to ensure that it is correct for its column and are treated literally, and not as part of the SQL to be executed.

---

####SQL Aliases 
 
+ temporarily rename a table or column heading
+ basically created to make column names more readable

+ alias for columns : SELECT column1 AS alias1, column2 AS alias2
FROM table_name;
alias for tables : SELECT column(s)
FROM table AS alias;
+ combining columns under one alias : SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS Address
FROM Customers;

---

###SQL Join 
(combine rows from two or more tables based on a commonality)

+ Most common type : **SQL INNER JOIN (simple join)** 
    + SELECT column(s)
    + FROM table1
    + **INNER JOIN table2**
    + **ON table1.col = table2.col;**
OR
    + **JOIN table 2**
    + **ON table1.col = table2.col;**

+ Different SQL types :
    + **(INNER) JOIN** : returns all rows when there is at least one match in *BOTH* tables
    
    ![INNER JOIN](http://www.w3schools.com/sql/img_innerjoin.gif)
    
    + **LEFT (OUTER) JOIN** : returns all rows from the left table, and the matched rows from the right table
    ![](http://www.w3schools.com/sql/img_leftjoin.gif) 
    + **RIGHT (OUTER) JOIN** : return all rows from the right table, and the matched rows from the left table
    ![](http://www.w3schools.com/sql/img_rightjoin.gif)
    + **FULL JOIN** return all rows when there is a match in *ONE* of the tables

    ![](http://www.w3schools.com/sql/img_fulljoin.gif)
    


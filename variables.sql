PL/SQL variables must be declared in the declaration section or in a package as a global variable. When you declare a variable, PL/SQL allocates memory for the variable's value and the storage location is identified by the variable name.

The syntax for declaring a variable is −

variable_name [CONSTANT] datatype [NOT NULL] [:= | DEFAULT initial_value] 
Whenever you declare a variable, PL/SQL assigns it a default value of NULL. If you want to initialize a variable with a value other than the NULL value, you can do so during the declaration, using either of the following −

The DEFAULT keyword
The assignment operator
DECLARE 
   a integer := 10; 
   b integer := 20; 
   c integer; 
   f real; 
BEGIN 
   c := a + b; 
   dbms_output.put_line('Value of c: ' || c); 
   f := 70.0/3.0; 
   dbms_output.put_line('Value of f: ' || f); 
END; 
/  
---declare and initilization---
Declare
var1 varchar2(30);
var2 := 'shiv';
date3 DATE;
BEGIN
Select sysdate into date3 from dual;
DBMS_OUTPUT.PUT_LINE(‘Todays Date using select into is:  ‘ ||date3);
DBMS_OUTPUT.PUT_LINE(var1);
DBMS_OUTPUT.Put_Line(var2);
End;

--local and global variables--


DECLARE    — Global variables

num1 number := 950;
num2 number := 850;
BEGIN
dbms_output.put_line(‘Outer Variable num1: ‘ || num1);
dbms_output.put_line(‘Outer Variable num2: ‘ || num2);
DECLARE        — Local variables
num1 number := 1950;
num2 number := 1850;
BEGIN
dbms_output.put_line(‘Inner Variable number1: ‘ || number1);
dbms_output.put_line(‘Inner Variable number2: ‘ || number2);
END;
END; /

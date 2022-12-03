Raise exceptions – learn how to raise an exception explicitly with the RAISE statement.
PL/SQL provides the raise exception functionality to the user; many times, exceptions may occur in our application or software that means there is a problem or error 
in our code to execute the application. 
There is no control, but when an exception is raised, we can handle all the errors or problems during the execution of an application. 
\See here every error or problem we cannot consider as an exception. 
Sometimes it occurs internal processing of the database, or sometimes it may occur with different data conditions. 
In this case, we need to stop the execution of our application and notify the end-user that something may be wrong.

EXAMPLE::
---------
set serveroutput on
declare 
a number:=&NUMBER1;
b number:=&NUMBER2;
ex1 exception;
ex2 exception;
begin
if a=0 then
    raise ex1;
elsif b=0 then
    raise ex2;
else
    dbms_output.put_line('Sum is : '||a+b);
end if;
exception 
when ex1 then
    dbms_output.put_line('a value is 0');
when ex2 then
    dbms_output.put_line('b value is 0');
end;

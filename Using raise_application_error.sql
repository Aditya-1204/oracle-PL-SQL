set serveroutput on;
declare
a number :=12;
b number :=0;
c number;
exp1 exception ;
begin
if b=0 then
raise exp1;
elsif b>a then
raise exp1;
else
c :=a/b;
dbms_output.put_line('The division of a and b is'||c);
end if;
exception 
when exp1 then
dbms_output.put_line('Illegal division');

end;

set serveroutput on;
declare
name emp.ename%type;
begin
select ename into name from emp where empno=-1;
exception
when no_data_found then
dbms_output.put_line('No such data');
end;

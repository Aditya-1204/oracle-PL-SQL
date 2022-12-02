select name into ename from employe38 where id=1201;

declare
sal varchar(10,2)
begin
select salary into sal from employe38 where id=1207;
dbms_output.put_line('Salary:' || sal);

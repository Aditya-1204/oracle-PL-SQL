set SERVEROUTPUT on
declare
CURSOR cur is select regno from student_details;
x student_details.regno%type;
begin
open cur;
loop
fetch cur into x;
exit when cur%notfound;
insert into flat(redgno) values(x);
end loop;
close cur;
end;

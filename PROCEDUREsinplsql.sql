--stntax
CREATE [OR REPLACE ] PROCEDURE procedure_name (parameter_list)     
IS/AS
//variables
BEGIN                                     
END;
--example
declare
a number;
procedure squarenum(x in out number)
is
begin 
x:=x*x;
end;
begin
a:=5;
squarenum(a);
dbms_output.put_line('Square is ' || a);
end;

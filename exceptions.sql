CREATE OR REPLACE PROCEDURE empdet(eno number := 7499)
IS
    qwer emp2%rowtype;
BEGIN
    SELECT * INTO qwer from emp2  where empno = eno;
    dbms_output.put_line(qwer.empno||' ' || qwer.ename || '= '|| eno);
EXCEPTION 
    WHEN OTHERS THEN
        dbms_output.put_line( SQLERRM );
END;

exec empdet;

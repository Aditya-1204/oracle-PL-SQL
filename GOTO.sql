

--GOTO

set serveroutput on;
DECLARE 
   a number(2) := 10; 
BEGIN 
   <<first>> 
   -- while loop execution  
   WHILE a < 20 LOOP
   dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a = 15 THEN 
         a := a + 1; 
         GOTO first; 
      END IF; 
   END LOOP; 
END; 
/

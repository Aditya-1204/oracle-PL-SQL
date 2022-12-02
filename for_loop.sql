
--Example
DECLARE 
   a number(2); 
BEGIN 
   FOR a in 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
  END LOOP; 
END; 
/



--Reverse FOR LOOP Statement

DECLARE 
   a number(2) ; 
BEGIN 
   FOR a IN REVERSE 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
   END LOOP; 
END; 
/

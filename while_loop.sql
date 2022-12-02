set SERVEROUTPUT on
DECLARE 
   a number(2) := 10; 
BEGIN 
   WHILE a < 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
      a := a + 1; 
   END LOOP; 
END; 
/ 





--Continue

BEGIN
  FOR n IN 1 .. 10
  LOOP
    -- skip odd numbers
    IF MOD( n, 2 ) = 1 THEN
      CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT_LINE( n );
  END LOOP;
END;

--Continue when

BEGIN
  FOR n_index IN 1 .. 10
  LOOP
    -- skip even numbers
    CONTINUE
  WHEN MOD( n_index, 2 ) = 0;
    DBMS_OUTPUT.PUT_LINE( n_index );
  END LOOP;
END;


--Exit

DECLARE 
   a number(2) := 10; 
BEGIN 
    
   WHILE a < 20 LOOP 
      dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a > 15 THEN 
       
         EXIT; 
      END IF; 
   END LOOP; 
END; 
/ 


--Exit when
DECLARE 
   a number(2) := 10; 
BEGIN 
   
   WHILE a < 20 LOOP 
      dbms_output.put_line ('value of a: ' || a);  
      a := a + 1; 
       
   EXIT WHEN a > 15; 
   END LOOP; 
END;   
/ 

--PROCEDURE

SET SERVEROUTPUT ON
DECLARE 
   a number; 
   b number; 
   c number;
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;   
BEGIN 
   a:= &number; 
   b:= &number; 
   findMin(a, b, c); 
   dbms_output.put_line(' Minimum of ('||a||','||b ||') is : '|| c); 
END; 
/

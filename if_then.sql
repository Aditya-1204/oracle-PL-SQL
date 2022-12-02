--IF-THEN

DECLARE n_sales NUMBER := 2000000; 
BEGIN 
   IF n_sales > 100000 THEN 
      DBMS_OUTPUT.PUT_LINE( 'Sales revenue is greater than 100K ' ); 
   END IF; 
END;

DECLARE
  sales  NUMBER(8,2) := 12100;
  quota  NUMBER(8,2) := 10000;
  bonus  NUMBER(6,2);
  eno NUMBER(6) := 7369;
BEGIN
  IF sales > (quota + 200) THEN
     bonus := (sales - quota)/4;
  ELSE
     bonus := 50;
  END IF;
  UPDATE emp SET sal = sal + bonus WHERE empno = eno;
END;




--IF-THEN ELSE


DECLARE 
   a number(3) := 100; 
BEGIN 
   IF ( a = 10 ) THEN 
      dbms_output.put_line('Value of a is 10' ); 
   ELSIF ( a = 20 ) THEN 
      dbms_output.put_line('Value of a is 20' ); 
   ELSIF ( a = 30 ) THEN 
      dbms_output.put_line('Value of a is 30' ); 
   ELSE 
       dbms_output.put_line('None of the values is matching'); 
   END IF; 
   dbms_output.put_line('Exact value of a is: '|| a );  
END; 
/ 


DECLARE
  sales  NUMBER(8,2) := 12100;
  quota  NUMBER(8,2) := 10000;
  bonus  NUMBER(6,2);
  eno NUMBER(6) := 7369;
BEGIN
  IF sales > (quota + 200) THEN
     bonus := (sales - quota)/4;
  ELSE
     bonus := 50;
  END IF;
  UPDATE emp SET sal = sal + bonus WHERE empno = eno;
END;

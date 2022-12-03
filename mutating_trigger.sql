CREATE OR REPLACE TRIGGER equitable_salary_trg 
   AFTER INSERT OR UPDATE 
   ON employees 
   FOR EACH ROW 
DECLARE 
   l_max_allowed   employees.salary%TYPE; 
BEGIN 
   SELECT MIN (salary) * 25 
     INTO l_max_allowed 
     FROM employees; 
 
   IF l_max_allowed < :NEW.salary 
   THEN 
      UPDATE employees      '''BEGIN UPDATE employees SET salary = 100000 WHERE last_name = 'King'; END; '''
         SET salary = l_max_allowed 
       WHERE employee_id = :NEW.employee_id; 
   END IF; 
END equitable_salary_trg;


Error : ORA-04091: table EMPLOYEES is mutating, trigger/function may not see it
ORA-06512: at "EQUITABLE_SALARY_TRG 

we use compound triggers to fix it
CREATE OR REPLACE TRIGGER equitable_salary_trg    
FOR UPDATE OR INSERT ON employees    
COMPOUND TRIGGER     
   TYPE id_salary_rt IS RECORD (    
      employee_id   employees.employee_id%TYPE    
    , salary        employees.salary%TYPE    
   );    
    
   TYPE row_level_info_t IS TABLE OF id_salary_rt  INDEX BY PLS_INTEGER;    
    
   g_row_level_info   row_level_info_t;    
    
   AFTER EACH ROW IS    
   BEGIN  
      g_row_level_info (g_row_level_info.COUNT + 1).employee_id :=    
           :NEW.employee_id;    
      g_row_level_info (g_row_level_info.COUNT).salary := :NEW.salary;
   END AFTER EACH ROW;    
    
   AFTER STATEMENT IS    
      l_max_allowed   employees.salary%TYPE;    
   BEGIN      
      SELECT MIN (salary) * 25    
        INTO l_max_allowed    
        FROM employees;     
       
      FOR indx IN 1 .. g_row_level_info.COUNT    
      LOOP                                      
         IF l_max_allowed < g_row_level_info (indx).salary    
         THEN    
            UPDATE employees    
               SET salary = l_max_allowed    
             WHERE employee_id = g_row_level_info (indx).employee_id;    
         END IF;    
      END LOOP;    
   END AFTER STATEMENT;    
END equitable_salary_trg; 

SET SERVEROUTPUT ON
DECLARE
  TYPE t_name IS RECORD(
     first_name employees.first_name%TYPE,
     last_name  employees.last_name%TYPE
  );
  r_name   t_name; -- name record
  n_emp_id employees.employee_id%TYPE := 200;
BEGIN
  SELECT first_name,
         last_name
  INTO r_name
  FROM employees
  WHERE employee_id = n_emp_id;
  -- print out the employee's name
  DBMS_OUTPUT.PUT_LINE(r_name.first_name || ',' || r_name.last_name );
END;
/

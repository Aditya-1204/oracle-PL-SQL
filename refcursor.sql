CREATE PACKAGE emp_data AS
   TYPE EmpCurTyp IS REF CURSOR RETURN employees%ROWTYPE;
   PROCEDURE open_emp_cv (emp_cv IN OUT EmpCurTyp,
                          choice IN NUMBER);
END emp_data;
/
CREATE PACKAGE BODY emp_data AS
   PROCEDURE open_emp_cv (emp_cv IN OUT EmpCurTyp, choice IN NUMBER)
   IS
   BEGIN
      IF choice = 1 THEN
         OPEN emp_cv FOR SELECT * FROM employees WHERE commission_pct IS NOT NULL;
      ELSIF choice = 2 THEN
         OPEN emp_cv FOR SELECT * FROM employees WHERE salary > 2500;
      ELSIF choice = 3 THEN
         OPEN emp_cv FOR SELECT * FROM employees WHERE department_id = 20;
      END IF;
   END open_emp_cv;
END emp_data;
/
DROP PACKAGE emp_data;


CREATE OR REPLACE FUNCTION get_ref_cursor
  RETURN SYS_REFCURSOR
AS
  l_cursor   SYS_REFCURSOR;
BEGIN
  OPEN l_cursor FOR
  SELECT level AS id,
         'Description for ' || level AS description
  FROM   dual
  CONNECT BY level <= 5;
  RETURN l_cursor;
END;

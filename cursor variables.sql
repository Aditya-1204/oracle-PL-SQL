 The cursor is used To execute a multi-row query, Oracle opens an unnamed work area that stores processing information.
 You can access this area through an explicit cursor, which names the work area, or through a cursor variable, which points to the work area. 
To create cursor variables, you define a REF CURSOR type, then declare cursor variables of that type.
DECLARE
TYPE customer_t IS REF CURSOR RETURN customers%rowtype;
     c_customer customer_t;
CREATE OR REPLACE FUNCTION get_direct_reports(
      in_manager_id IN employees.manager_id%TYPE)
   RETURN SYS_REFCURSOR
AS
   c_direct_reports SYS_REFCURSOR;
BEGIN

   OPEN c_direct_reports FOR 
   SELECT 
      employee_id, 
      first_name, 
      last_name, 
      email
   FROM 
      employees 
   WHERE 
      manager_id = in_manager_id 
   ORDER BY 
         first_name,   
         last_name;

   RETURN c_direct_reports;
END;

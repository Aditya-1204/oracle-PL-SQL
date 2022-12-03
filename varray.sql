-->these are modified version of nested table type collection.Varray is the acronym of variable sized arrays
SET SERVEROUTPUT ON;
DECLARE
  TYPE vry IS VARRAY (5) OF NUMBER;
-->Initialization of varray.To initialize it we have to initialize a collection variable
vry_obj vry:=vry();
-->insert data into varray
BEGIN
  vry_obj.EXTEND(5);
  vry_obj(1) := 10*2;
  DBMS_OUTPUT.PUT_LINE(vry_obj(1));
END;
/

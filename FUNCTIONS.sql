 --FUNCTIONS.
CREATE OR REPLACE FUNCTION even_or_odd (
    n IN NUMBER
) RETURN NUMBER IS
    c NUMBER;
BEGIN
    IF ( MOD(n, 2) = 0 ) THEN
        c := 1;
    ELSE
        c := 0;
    END IF;

    RETURN c;
END;

SELECT
    even_or_odd(21)
  FROM
    dual;

   SET SERVEROUTPUT ON

DECLARE
    a NUMBER := &number;
    c NUMBER;
BEGIN
    c := even_or_odd(a);
    IF ( c = 1 ) THEN
        dbms_output.put_line('IT IS A EVEN NUMBER');
    ELSE
        dbms_output.put_line('IT IS A ODD NUMBER');
    END IF;

END;

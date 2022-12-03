set serveroutput on;
CREATE OR REPLACE TYPE nest IS TABLE OF VARCHAR2(10)
CREATE TABLE subject(
subid NUMBER,
subname VARCHAR2(20),
subschedule nest
)NESTED TABLE subschedule STORE AS nested_tab;
INSERT INTO subject(subid,subname,subschedule) VALUES(1,'maths',nest('sun','thurs'));


-->select statement to retrieve data from table
SELECT * FROM subject;

-->to select a specific row
SELECT * FROM TABLE(SELECT subschedule FROM subject WHERE subid=1);

--view creation
CREATE VIEW demo AS
      SELECT empno, ename, job
      FROM emp


--insertion into view
INSERT INTO demo VALUES (100, 'dhoni','cricket');

--selecting from view
select * from demo

--upadating view
UPDATE
   demo
SET
    ename = 'jhony'
WHERE
    empno = 7499;

--creating sequence 
    CREATE SEQUENCE emp_sequence
      INCREMENT BY 1
      START WITH 10
      NOMAXVALUE
      NOCYCLE
      CACHE 10;
--Inserting into sequence
      INSERT INTO emp (empno, ename)
    VALUES (emp_sequence.nextval,'kohli');

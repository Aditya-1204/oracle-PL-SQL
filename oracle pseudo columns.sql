Pseudocolumn: A pseudo-column behaves like a table column but is not actually stored in the table. You can select from pseudo-columns, but you cannot insert, update, or delete their values. A pseudo-column is also similar to a function without arguments. This section describes these pseudo-columns: 

CURRVAL and NEXTVAL
LEVEL
ROWID
ROWNUM

SELECT STUDENTSEQ.currval FROM student;

INSERT INTO STUDENT VALUES (STUDENTSEQ.nextval, ‘BISHAL’, ‘JAVA’, 7902);

SELECT * FROM EMP WHERE ROWNUM <= 3; 

SELECT ROWID, ename FROM emp WHERE deptno = 20;

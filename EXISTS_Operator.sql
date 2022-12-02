
The EXISTS condition in SQL is used to check whether the result of a correlated nested query is empty (contains no tuples) or not. The result of EXISTS is a
boolean value True or False. It can be used in a SELECT, UPDATE, INSERT or DELETE statement.

Syntax:
SELECT column_name(s) 
FROM table_name
WHERE EXISTS 
  (SELECT column_name(s) 
   FROM table_name
   WHERE condition);

Example:
SELECT ename, empno 
FROM emp
WHERE EXISTS (SELECT * 
              FROM dept 
              WHERE emp.deptno=dept.deptno);

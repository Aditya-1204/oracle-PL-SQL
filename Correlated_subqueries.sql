Correlated subqueries are used for row-by-row processing. Each subquery is executed once for every row of the outer query.

A correlated subquery is evaluated once for each row processed by the parent statement. The parent statement can be a SELECT, UPDATE, or DELETE statement.

A correlated subquery is one way of reading every row in a table and comparing values in each row against related data. It is used whenever a subquery must 
return a different result or set of results for each candidate row considered by the main query. In other words, you can use a correlated subquery to answer a 
multipart question whose answer depends on the value in each row processed by the parent statement.

Syntax:
SELECT column1, column2, ....
FROM table1 outer
WHERE column1 operator
                    (SELECT column1, column2
                     FROM table2
                     WHERE expr1 = 
                               outer.expr2);

Example:
SELECT ename, sal, deptno
 FROM emp outer
 WHERE sal >
                (SELECT AVG(sal)
                 FROM emp
                 WHERE depatno=
                        outer.deptno);

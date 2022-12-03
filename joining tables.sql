SELECT * FROM emp A
RIGHT JOIN dept B
ON A.deptno=B.deptno

SELECT * FROM emp A
left JOIN dept B
ON A.deptno=B.deptno

SELECT * FROM emp A
JOIN dept B
ON A.deptno=B.deptno

SELECT * FROM emp A
inner JOIN dept B
ON A.deptno=B.deptno

SELECT * FROM emp A
full  outer JOIN dept B
ON A.deptno=B.deptno

SELECT * FROM emp A, dept B
where A.deptno=B.deptno

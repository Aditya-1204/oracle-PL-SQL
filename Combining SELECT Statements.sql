SELECT ename,sal
  FROM EMP
  WHERE Sal = 1500
UNION
SELECT ename,sal
  FROM emp
  WHERE  sal>1500
 ORDER BY sal
 
 SELECT ename,sal
  FROM EMP1
  WHERE Sal = 1500
intersect
SELECT ename,sal
  FROM emp2
  WHERE  sal>1500
 ORDER BY sal
 
  
 
 

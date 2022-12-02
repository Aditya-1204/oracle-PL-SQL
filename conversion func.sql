SELECT ename,
       TO_CHAR (hiredate, 'MONTH DD, YYYY') HIREDATE,
	   TO_CHAR (sal, '$99999.99') Sal
FROM emp
WHERE rownum < 5;
 
 

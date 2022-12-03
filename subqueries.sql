SELECT * 
   FROM emp
   WHERE sal IN (SELECT sal
         FROM emp
         WHERE SAL > 4500) ;

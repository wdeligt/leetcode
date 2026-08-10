CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
        WITH rnk AS 
        (
            SELECT id, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk_sal
            FROM Employee
        )
        SELECT DISTINCT salary
        FROM rnk 
        WHERE rnk_sal = N
  );
END

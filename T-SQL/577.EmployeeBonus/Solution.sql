USE LeetCode_EmployeeBonus
GO

SELECT
	name,
	bonus
FROM Employee T1
LEFT JOIN Bonus T2
  ON T1.empId = T2.empId
WHERE bonus < 1000 OR bonus IS NULL
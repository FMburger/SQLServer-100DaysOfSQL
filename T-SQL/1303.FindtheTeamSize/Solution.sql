USE LeetCode_FindTheTeamSize
GO
SELECT
	employee_id,
	team_size
FROM employee
INNER JOIN(
	SELECT
		team_id, COUNT(employee_id) AS team_size
	FROM Employee
	GROUP BY team_id
)Team
  ON employee.team_id = Team.team_id
ORDER BY employee_id

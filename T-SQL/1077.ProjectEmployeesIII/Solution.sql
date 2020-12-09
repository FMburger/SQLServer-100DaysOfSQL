SELECT 
	Pid1 AS project_id,
	Emp1 AS employee_id

FROM
	(SELECT 
		P1.project_id AS Pid1,
		P1.employee_id AS Emp1,
		experience_years AS Years1
	FROM Project P1
	INNER JOIN Employee E1
	  ON P1.employee_id = E1.employee_id) T1
	INNER JOIN(
		SELECT
			P2.project_id AS Pid2,
			MAX(E2.experience_years) AS Years2
		FROM Employee E2
		LEFT JOIN Project P2
		 ON E2.employee_id = P2.employee_id
		GROUP BY project_id
	) T2
	ON T1.Pid1 = T2.Pid2 AND T1.Years1 = T2.Years2
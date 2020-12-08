SELECT
    project_id 
FROM 
    Project 
GROUP BY project_id
HAVING COUNT(employee_id) = (
    SELECT TOP 1
        COUNT(employee_id) 
    FROM 
        Project 
    GROUP BY project_id 
    ORDER BY COUNT(employee_id) DESC
)
	
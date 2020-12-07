SELECT
    project_id,
    Round(
        Avg(
            CAST(experience_years AS decimal(10,2))
        ),
        2
    ) AS average_years
FROM Project P 
INNER JOIN Employee E 
  ON P.employee_id = E.employee_id
GROUP BY project_id
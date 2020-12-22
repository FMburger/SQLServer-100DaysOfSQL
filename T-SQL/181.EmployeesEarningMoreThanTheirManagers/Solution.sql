USE LeetCode_EmployeesEarningMoreThanTheirManagers
GO
SELECT
    Name as Employee
FROM
    Employee E1
WHERE
    E1.salary > (
        SELECT
           E2.salary
        FROM
            Employee E2
        WHERE
            E1.ManagerId = E2.Id
    )
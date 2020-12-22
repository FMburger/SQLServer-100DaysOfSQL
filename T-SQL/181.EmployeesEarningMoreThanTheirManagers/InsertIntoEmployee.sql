USE LeetCode_EmployeesEarningMoreThanTheirManagers
GO

INSERT INTO Employee
(
	Id,
	Name,
	Salary,
	ManagerId
)
VALUES
	(1, 'joe', 70000, 3),
	(2, 'Henry', 80000, 4),
	(3, 'Sam', 60000, NULL),
	(4, 'Max', 90000, NULL)
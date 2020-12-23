USE LeetCode_EmployeeBonus
GO

INSERT INTO Employee
(
	empId,
	name,
	supervisor,
	salary
)
VALUES
	(1, 'John', 3, 1000),
	(2, 'Dan', 3, 2000),
	(3, 'Brad', null, 4000),
	(4, 'Thomas', 3, 4000)
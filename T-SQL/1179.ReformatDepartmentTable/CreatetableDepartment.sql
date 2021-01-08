USE LeetCode_ReformatDepartmentTable
GO

CREATE TABLE Department
(
	id int,
	revenue int,
	month varchar(50),
	PRIMARY KEY(id, month)
)
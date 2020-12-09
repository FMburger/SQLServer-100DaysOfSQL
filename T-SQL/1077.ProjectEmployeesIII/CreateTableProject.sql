CREATE TABLE Project(
	project_id INT,
	employee_id INT FOREIGN KEY REFERENCES Employee(employee_id),
	PRIMARY KEY(project_id, employee_id)
)
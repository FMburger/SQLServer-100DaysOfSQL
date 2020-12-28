USE LeetCode_NumberofCommentsperPost
GO

INSERT INTO Submissions
(
	sub_id,
	parent_id
)
VALUES
	(1, Null),
	(2, Null),
	(1, Null),
	(12, Null),
	(3, 1),
	(5, 2),
	(3, 1),
	(4, 1),
	(9, 1),
	(10, 2),
	(6, 7)
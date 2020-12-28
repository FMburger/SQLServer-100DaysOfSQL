USE LeetCode_NumberofCommentsperPost
GO

	SELECT DISTINCT
		sub_id
	FROM Submissions
	WHERE parent_id IS NULL

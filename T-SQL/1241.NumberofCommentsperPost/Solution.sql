USE LeetCode_NumberofCommentsperPost
GO

SELECT DISTINCT 
	s.sub_id AS post_id,
	ISNULL(t.number_of_comments,0) AS number_of_comments
FROM submissions s
LEFT JOIN
(
	SELECT DISTINCT 
		parent_id,
		count(DISTINCT sub_id) AS number_of_comments
	FROM submissions
	WHERE parent_id IS NOT NULL
	GROUP BY parent_id
) AS t
  ON s.sub_id = t.parent_id
WHERE s.parent_id IS NULL

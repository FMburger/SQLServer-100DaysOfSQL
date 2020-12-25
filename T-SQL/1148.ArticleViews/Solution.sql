USE LeetCode_ArticleViews
GO
SELECT DISTINCT
	viewer_id AS id
FROM Views
WHERE author_id = viewer_id 
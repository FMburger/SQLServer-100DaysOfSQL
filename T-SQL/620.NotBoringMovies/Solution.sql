USE LeetCode_NotBoringMovies
GO

SELECT
	id,
	movie,
	description,
	rating
FROM cinema
WHERE id % 2 != 0
  AND description != 'boring'
ORDER By rating DESC
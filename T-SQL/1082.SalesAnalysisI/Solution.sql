SELECT
	seller_id
FROM(
	SELECT
		seller_id,
		RANK()OVER(
			ORDER BY SUM(price) DESC
		) AS totalRank
	FROM Sales
	GROUP BY seller_id
) AS s
WHERE totalRank = 1
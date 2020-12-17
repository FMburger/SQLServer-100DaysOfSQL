USE LeetCode_GamePlayAnalysis
GO

SELECT
	 ROUND(
		CAST(
			COUNT(
				DISTINCT CASE WHEN DATEDIFF(DAY,d1,d2)=1
				  THEN player_id 
				  ELSE null END
			) AS DECIMAL(18,2)
		)/COUNT(DISTINCT player_id),
		2
	) AS fraction
FROM(
	SELECT 
		player_id,
		event_date d1,
		lead(event_date,1)
		  OVER(
			PARTITION BY player_id
			ORDER BY rk
		) d2
	FROM(
		SELECT 
			player_id,
			event_date,
			DENSE_RANK()OVER(
				PARTITION BY player_id 
				ORDER BY event_date
			) AS rk
		FROM Activity
	) t
WHERE rk=1 or rk=2) t
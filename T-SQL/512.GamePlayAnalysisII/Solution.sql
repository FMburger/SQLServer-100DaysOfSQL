USE LeetCode_GamePlayAnalysis
GO

	SELECT 
		player_id,
		device_id
	FROM (SELECT
		player_id,
		device_id,
		RANK() OVER (
			PARTITION BY player_id ORDER BY event_date
		) AS RANK
		FROM Activity
	)T2 
	WHERE RANK=1
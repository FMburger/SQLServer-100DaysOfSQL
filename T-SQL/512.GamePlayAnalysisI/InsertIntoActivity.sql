USE LeetCode_GamePlayAnalysis
GO

INSERT INTO Activity(
	player_id,
	device_id,
	event_date,
	games_played
)
VALUES
	(1, 2, '2016-03-01', 5),
	(1, 2, '2016-05-02', 6),
	(2, 3, '2017-07-25', 1),
	(3, 1, '2016-03-02', 0),
	(3, 4, '2018-07-03', 5)
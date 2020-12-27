USE LeetCode_FindCustomerReferee
GO

INSERT INTO customer
(
	id,
	name,
	referee_id
)
VALUES
	(1, 'will', null),
	(2, 'Jane', null),
	(3, 'Alex', 2),
	(4, 'Bill', null),
	(5, 'Zack', 1),
	(6, 'Mark', 2)

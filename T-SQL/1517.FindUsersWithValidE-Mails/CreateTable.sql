USE LeetCode_FindUsersWithValidEmails
GO

CREATE TABLE Users
(
	user_id int,
	name varchar(50),
	mail varchar(50),
	PRIMARY KEY(user_id)
)
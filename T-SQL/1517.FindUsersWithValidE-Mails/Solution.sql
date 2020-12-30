USE LeetCode_FindUsersWithValidEmails
GO
SELECT
	*
FROM Users
WHERE (
	mail LIKE '[a-z]%' 
)AND(
	LEFT(mail, LEN(mail) - 13) NOT LIKE '%[^0-9a-zA-Z_.-]%'
)AND(
	mail LIKE '%@leetcode.com'
)
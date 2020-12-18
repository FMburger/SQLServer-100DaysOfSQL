USE LeetCode_CombineTwoTables
GO
SELECT 
    FirstName,
    LastName,
    City,
    State
FROM Address right join Person ON Address.PersonId = Person.PersonId
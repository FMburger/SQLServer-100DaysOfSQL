USE LeetCode_CustomersWhoNeverOrder
GO
SELECT
	Name
FROM Customers T1
LEFT JOIN Orders T2
  ON T1.Id = T2.CustomersId
WHERE T2.Id IS NULL
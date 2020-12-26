USE LeetCode_ProductPriceAtAGivenDate
GO

SELECT
	T1.product_id,
	MAX(T1.new_price) AS price
FROM Products T1
RIGHT JOIN(
	SELECT
		*
	FROM Products
	WHERE change_date <= '2019-08-16'
)T2
  ON T1.change_date = T2.change_date
GROUP BY T1.product_id
USE LeetCode_ListtheProductsOrderedinaPeriod
GO
SELECT
	product_name,
	unit
FROM Products T1
INNER JOIN(
	SELECT
		product_id,
		SUM(unit) as unit
	FROM Orders
	WHERE (
		order_date >= '2020-02-01'
		AND order_date < '2020-03-01'
	)
	GROUP BY product_id
) T2
  ON T1.product_id = T2. product_id
WHERE unit >= 100




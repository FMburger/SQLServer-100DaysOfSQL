USE LeetCode_ProductSalesAnalysis

SELECT
	product_name,
	year,
	price
FROM Product P1
INNER JOIN Sales S1
  ON P1.product_id = S1.product_id
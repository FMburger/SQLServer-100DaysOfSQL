USE LeetCode_FixProductNameFormat
GO

SELECT
	product_name,
	sale_date,
	count(*) AS total
FROM(
	SELECT 
	lower(ltrim(rtrim(product_name))) product_name,
	convert(varchar(7),sale_date,126) AS sale_date
	FROM Sales
	WHERE year(sale_date) = '2000'
) T2
GROUP BY product_name,sale_date
ORDER BY product_name,sale_date
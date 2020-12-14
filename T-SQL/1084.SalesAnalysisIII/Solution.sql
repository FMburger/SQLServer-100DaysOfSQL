USE LeetCode_SalesAnalysis
SELECT 
	buyer_id 
FROM sales s, product p 
WHERE s.product_id=p.product_id and p.product_name='S8'
EXCEPT
SELECT
		buyer_id 
FROM sales s, product p 
WHERE s.product_id=p.product_id and p.product_name='iPhone'
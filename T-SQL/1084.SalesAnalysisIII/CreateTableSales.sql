USE LeetCode_SalesAnalysis
CREATE TABLE Sales(
	seller_id int,
	product_id int,
	buyer_id int,
	sale_date date,
	quantity int,
	price int
	FOREIGN KEY(product_id) REFERENCES Product(product_id)
)
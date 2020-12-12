USE LeetCode_ProductSalesAnalysis
CREATE TABLE Sales(
	sale_id int,
	product_id int,
	year int,
	quantity int,
	price int,
	PRIMARY KEY(sale_id, year),
	FOREIGN KEY(product_id) REFERENCES Product(product_id)
)
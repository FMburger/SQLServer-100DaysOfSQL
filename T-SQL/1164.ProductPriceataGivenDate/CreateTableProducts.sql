USE LeetCode_ProductPriceAtAGivenDate
GO

CREATE TABLE Products
(
	product_id int,
	new_price int,
	change_date date,
	PRIMARY KEY (product_id, change_date)
)
USE LeetCode_ImmediateFoodDeliveryI
GO

CREATE TABLE Delivery
(
	delivery_id int,
	customer_id int,
	order_date date,
	customer_pref_delivery_date date,
	PRIMARY KEY(delivery_id)
)
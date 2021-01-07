USE LeetCode_ImmediateFoodDeliveryI
GO

SELECT
  ROUND(
    (
      (
        (
          COUNT(t.delivery_id)
		  ) * 1.0 / (
          SELECT 
            (
              COUNT(delivery_id)
            )* 1.0 
          FROM 
            delivery
        )
      ) * 100
    ), 
    2
  ) AS immediate_percentage 
FROM 
  (
    SELECT
      delivery_id, 
      CASE
	    WHEN order_date = customer_pref_delivery_date THEN 'immediate'
	    else 'scheduled' END AS customerDeliveryDate 
    FROM 
      delivery
  ) AS t 
WHERE 
  t.customerDeliveryDate = 'immediate'
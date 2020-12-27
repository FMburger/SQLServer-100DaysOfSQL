USE LeetCode_ProductPriceAtAGivenDate
GO


    SELECT DISTINCT
        T1.product_id,
        isnull(T2.new_price, 10) AS price
    FROM products T1
    LEFT JOIN
    (
        SELECT 
            a.product_id,
            a.new_price,
            a.change_date
        FROM Products a
        WHERE a.change_date IN 
        (
            SELECT 
                MAX(b.change_date)
            FROM Products b
            WHERE b.product_id = a.product_id
                AND b.change_date <= '2019-08-16'
            GROUP BY b.product_id
        )
    ) T2
    ON T1.product_id = T2.product_id
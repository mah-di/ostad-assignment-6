-- ============================================= Task 1 =============================================

SELECT c.*, COUNT(o.customer_id) `number_of_orders`
    FROM `Customers` c
    LEFT JOIN `Orders` o
    ON c.id=o.customer_id
    GROUP BY c.id
    ORDER BY COUNT(o.customer_id) DESC

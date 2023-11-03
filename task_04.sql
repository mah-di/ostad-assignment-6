-- ============================================= Task 4 =============================================

SELECT c.name, SUM(o.total_amount) `total_purchase_amount`
    FROM `Customers` c
    LEFT JOIN `Orders` o
    ON c.id=o.customer_id
    GROUP BY c.id
    ORDER BY SUM(o.total_amount) DESC
    LIMIT 5

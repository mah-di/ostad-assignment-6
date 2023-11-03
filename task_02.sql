-- ============================================= Task 2 =============================================

SELECT p.name, oi.quantity, (oi.quantity * oi.unit_price) `total_amount`
    FROM `Order_Items` oi
    LEFT JOIN `Products` p
    ON p.ID=oi.product_id
    ORDER BY oi.order_id ASC

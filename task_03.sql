-- ============================================= Task 3 =============================================

SELECT cg.name, SUM(oi.quantity * oi.unit_price) `revenue`
    FROM `Categories` cg
    LEFT JOIN `Products` p
    ON cg.id=p.category_id
    LEFT JOIN `Order_Items` oi
    ON p.id=oi.product_id
    GROUP BY cg.id
    ORDER BY SUM(oi.quantity * oi.unit_price) DESC

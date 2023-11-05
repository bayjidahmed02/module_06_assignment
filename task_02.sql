SELECT
    p.product_name,
    oi.quantity,
    p.price * oi.quantity AS total_amount
FROM Order_items oi
    LEFT JOIN Products p ON oi.product_id = p.product_id
ORDER BY oi.order_id ASC;
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS Total_Order
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY
    customer_id,
    customer_name
ORDER BY Total_Order DESC;
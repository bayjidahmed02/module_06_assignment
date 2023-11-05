SELECT
    c.customer_name,
    SUM(oi.quantity * p.price) AS Total_Purchase_Amount
FROM Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
    LEFT JOIN Order_items oi ON o.order_id = oi.order_id
    LEFT JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY
    Total_Purchase_Amount DESC
LIMIT 5;
SELECT
    c.category_name,
    SUM(p.price * oi.quantity) AS Total_Revenue
FROM Categories c
    LEFT JOIN Products p ON c.category_id = p.category_id
    LEFT JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY category_name
ORDER BY Total_Revenue DESC;
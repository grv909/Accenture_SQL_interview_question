
SELECT orders.customer_id , customer_name , SUM(total_amount) AS purchased_amount
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id
WHERE order_date BETWEEN '2023-02-01' AND '2023-02-28'
GROUP BY  orders.customer_id , customer_name;
USE pizza_sales_db;
SET profiling = 1;

SELECT mi.Pizza_Type, mi.Size, SUM(od.Quantity) AS total_sold
FROM order_details od
JOIN menu_items mi ON od.Item_ID = mi.Item_ID
GROUP BY mi.Pizza_Type, mi.Size;

SELECT o.Order_ID, c.First_Name, c.Last_Name, o.Total_Amount
FROM orders o
JOIN customers c ON o.Customer_ID = c.Customer_ID
WHERE o.Total_Amount > 50;

SHOW PROFILES;

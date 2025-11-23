
SELECT mi.Pizza_Type, SUM(od.Quantity) AS total_sold
FROM order_details od
JOIN menu_items mi ON od.Item_ID = mi.Item_ID
GROUP BY mi.Pizza_Type
ORDER BY total_sold DESC;

SELECT b.Branch_Name, AVG(o.Total_Amount) AS avg_ticket
FROM orders o
JOIN staff s ON o.Staff_ID = s.Staff_ID
JOIN branches b ON s.Branch_ID = b.Branch_ID
GROUP BY b.Branch_Name;


SELECT AVG(Delivery_Time_Minutes) AS avg_delivery
FROM orders;


SELECT mi.Pizza_Type, mi.Size, COUNT(*) 
FROM order_details od 
JOIN menu_items mi ON od.Item_ID = mi.Item_ID
GROUP BY mi.Pizza_Type, mi.Size
ORDER BY COUNT(*) DESC
LIMIT 10;

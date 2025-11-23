USE pizza_sales_db;

CREATE INDEX idx_orders_customer ON orders(Customer_ID);

CREATE INDEX idx_orders_staff ON orders(Staff_ID);

CREATE INDEX idx_orders_date ON orders(Order_Date);

CREATE INDEX idx_order_details_order ON order_details(Order_ID);

CREATE INDEX idx_menu_items_type_size ON menu_items(Pizza_Type, Size);

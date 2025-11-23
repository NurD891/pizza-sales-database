USE pizza_sales_db;

DROP PROCEDURE IF EXISTS fill_orders;

DELIMITER $$

CREATE PROCEDURE fill_orders()
BEGIN
  DECLARE i INT DEFAULT 1;

  WHILE i <= 1000 DO
    INSERT INTO orders(Order_ID, Customer_ID, Staff_ID, Order_Date, Delivery_Time_Minutes, Total_Amount)
    VALUES (
      i,
      FLOOR(1 + RAND()*1000),
      FLOOR(1 + RAND()*150),
      NOW() - INTERVAL FLOOR(RAND()*365) DAY,
      FLOOR(15 + RAND()*50),
      ROUND(10 + RAND()*60,2)
    );
    SET i = i + i;
  END WHILE;

END $$
DELIMITER ;

CALL fill_orders();

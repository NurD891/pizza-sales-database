USE pizza_sales_db;

DROP PROCEDURE IF EXISTS fill_order_details;

DELIMITER $$

CREATE PROCEDURE fill_order_details()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 20000 DO
    INSERT INTO order_details(Order_ID, Item_ID, Quantity)
    VALUES (
      FLOOR(1 + RAND()*1000),
      FLOOR(1 + RAND()*100),
      FLOOR(1 + RAND()*3)
    );
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;

CALL fill_order_details();

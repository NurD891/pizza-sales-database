USE pizza_sales_db;

DROP PROCEDURE IF EXISTS fill_menu;

DELIMITER $$

CREATE PROCEDURE fill_menu()
BEGIN
  DECLARE i INT DEFAULT 1;

  WHILE i <= 100 DO
    INSERT INTO menu_items(Item_ID, Pizza_Type, Size, Price)
    VALUES (
      i,
      CONCAT('Pizza_', CEIL(i/4)),
      ELT((i % 4) + 1,'S','M','L','XL'),
      ROUND(5 + RAND()*15,2)
    );
    SET i = i + 1;
  END WHILE;

END $$
DELIMITER ;

CALL fill_menu();

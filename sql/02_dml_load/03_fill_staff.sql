USE pizza_sales_db;

DROP PROCEDURE IF EXISTS fill_staff;

DELIMITER $$

CREATE PROCEDURE fill_staff()
BEGIN
  DECLARE i INT DEFAULT 1;

  WHILE i <= 150 DO
    INSERT INTO staff(Staff_ID, Branch_ID, Role)
    VALUES (
      i,
      CASE WHEN i <= 50 THEN 1 WHEN i <= 100 THEN 2 ELSE 3 END,
      CASE WHEN i % 3 = 0 THEN 'Courier'
           WHEN i % 3 = 1 THEN 'Cashier'
           ELSE 'Manager' END
    );
    SET i = i + 1;
  END WHILE;

END $$
DELIMITER ;

CALL fill_staff();

USE pizza_sales_db;

DROP PROCEDURE IF EXISTS fill_customers;

DELIMITER $$

CREATE PROCEDURE fill_customers()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 1000 DO
    INSERT INTO customers(Customer_ID, First_Name, Last_Name, Phone)
    VALUES (
      i,
      CONCAT('Name', i),
      CONCAT('Surname', i),
      CONCAT('+996', LPAD(i, 7, '0'))
    );
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;

CALL fill_customers();

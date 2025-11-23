DROP DATABASE IF EXISTS pizza_sales_db;
CREATE DATABASE pizza_sales_db;
USE pizza_sales_db;

CREATE TABLE branches (
  Branch_ID INT PRIMARY KEY,
  Branch_Name VARCHAR(100) NOT NULL,
  City VARCHAR(50) NOT NULL
);

CREATE TABLE customers (
  Customer_ID INT PRIMARY KEY,
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Phone VARCHAR(15) UNIQUE
);

CREATE TABLE staff (
  Staff_ID INT PRIMARY KEY,
  Branch_ID INT,
  Role VARCHAR(50),
  FOREIGN KEY (Branch_ID) REFERENCES branches(Branch_ID)
);

CREATE TABLE menu_items (
  Item_ID INT PRIMARY KEY,
  Pizza_Type VARCHAR(100),
  Size CHAR(2),
  Price DECIMAL(5,2)
);

CREATE TABLE orders (
  Order_ID INT PRIMARY KEY,
  Customer_ID INT,
  Staff_ID INT,
  Order_Date DATETIME NOT NULL,
  Delivery_Time_Minutes INT,
  Total_Amount DECIMAL(6,2),
  FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID),
  FOREIGN KEY (Staff_ID) REFERENCES staff(Staff_ID)
);

CREATE TABLE order_details (
  Order_Detail_ID INT PRIMARY KEY AUTO_INCREMENT,
  Order_ID INT,
  Item_ID INT,
  Quantity INT,
  FOREIGN KEY (Order_ID) REFERENCES orders(Order_ID),
  FOREIGN KEY (Item_ID) REFERENCES menu_items(Item_ID)
);

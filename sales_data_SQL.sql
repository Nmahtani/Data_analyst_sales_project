-- Create a database for this project and select it

CREATE DATABASE sales_project;

USE sales_project;

SET SQL_SAFE_UPDATES = 0;

-- Display all records from the table

SELECT * FROM sales_data_project;

-- Now I will transform and clean data.

-- 1. Eliminate Total amounts that are less than 100.

DELETE FROM sales_data_project 
WHERE TotalAmount < 100;

-- 2. Convert Regions to uppercase.

UPDATE sales_data_project 
SET Region = UPPER(Region);

-- 3. Calculate the average sold quantities per region.

SELECT Region, AVG(Quantity) AS AvgQuantitySold
FROM sales_data_project
GROUP BY Region;

-- 4. Remove rows with missing data.

DELETE FROM sales_data_project
WHERE CustomerName IS NULL OR Product IS NULL;

-- 5. Add a new column which shows an applied tax of 10% of TotalAmount.

ALTER TABLE sales_data_project ADD COLUMN Tax DECIMAL(10, 2);

UPDATE sales_data_project
SET Tax = TotalAmount * 0.10;

-- 6. Convert all the product names to lowercase.

UPDATE sales_data_project
SET Product = LOWER(Product);

-- 7. Combine date and time data. Lets say time is '12:00:00' for all OrderDate.

ALTER TABLE sales_data_project ADD COLUMN OrderDateTime DATETIME;
UPDATE sales_data_project
SET OrderDateTime = CONCAT(OrderDate, ' ', '12:00:00');

-- 8. Apply a table for discount of 5% for all orders in the total amount where Quantity is more than 3.

ALTER TABLE sales_data_project ADD COLUMN Discount DECIMAL(10, 2);
UPDATE sales_data_project
SET Discount = TotalAmount * 0.05
WHERE Quantity > 3;

SELECT * FROM sales_data_project;








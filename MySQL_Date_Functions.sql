use ecommercedb;
/*

CREATE TABLE orderDetails (
orderID INT PRIMARY KEY,
custName VARCHAR(50),
productName VARCHAR(50),
price DECIMAL(10,2),
qty INT,
OrderDate DATE,
DeliveryDate DATE,
amount DECIMAL(10,2)
GENERATED ALWAYS AS (price * qty) STORED
);

INSERT INTO orderDetails
(orderID, custName, productName, price, qty, OrderDate, DeliveryDate)
VALUES
(1, 'Amit Sharma', 'Keyboard', 550.00, 2, '2026-01-05', '2026-01-08'),
(2, 'Sara Khan', 'Mouse', 350.00, 4, '2026-01-07', '2026-01-12'),
(3, 'Rahul Patil', 'Monitor', 8500.00, 1, '2026-01-10', '2026-01-16'),
(4, 'Ayesha Shaikh', 'Laptop', 55000.00, 1, '2026-01-12', '2026-01-17'),
(5, 'John Dsouza', 'USB Cable', 180.00, 6, '2026-01-15', '2026-01-18'),
(6, 'Neha Joshi', 'Webcam', 2200.00, 2, '2026-01-18', '2026-01-25'),
(7, 'Arman Khan', 'Headphones', 1500.00, 3, '2026-01-20', '2026-01-24'),
(8, 'Priya Verma', 'Printer', 12500.00, 1, '2026-01-23', '2026-01-30'),
(9, 'Imran Sheikh', 'Pen Drive 32GB', 650.00, 5, '2026-01-25', '2026-01-29'),
(10, 'Sneha More', 'SSD 500GB', 4200.00, 2, '2026-01-28', '2026-02-03'),
(11, 'Rohan Deshmukh', 'External HDD 1TB', 5800.00, 1, '2026-02-01', '2026-02-05'),
(12, 'Fatima Ansari', 'WiFi Router', 1800.00, 3, '2026-02-04', '2026-02-09'),
(13, 'Vikas Pawar', 'Laptop Bag', 1200.00, 2, '2026-02-07', '2026-02-11'),
(14, 'Zoya Khan', 'HDMI Cable', 450.00, 7, '2026-02-10', '2026-02-15'),
(15, 'Sahil Shaikh', 'Bluetooth Speaker', 2800.00, 2, '2026-02-14', '2026-02-20'),
(16, 'Pooja Kulkarni', 'Power Bank', 1600.00, 4, '2026-02-18', '2026-02-23'),
(17, 'Adnan Qureshi', 'Mobile Stand', 250.00, 10, '2026-02-21', '2026-02-24'),
(18, 'Kiran Jadhav', 'Graphics Tablet', 7200.00, 1, '2026-02-25', '2026-03-02'),
(19, 'Sameer Khan', 'Mechanical Keyboard', 3200.00, 2, '2026-03-02', '2026-03-07'),
(20, 'Riya Shah', 'Gaming Mouse', 1800.00, 3, '2026-03-05', '2026-03-10'),
(21, 'Nadeem Shaikh', 'Projector', 28500.00, 1, '2026-03-10', '2026-03-17'),
(22, 'Meena Patil', 'UPS', 4500.00, 2, '2026-03-14', '2026-03-19'),
(23, 'Faizan Ahmed', 'Memory Card 128GB', 950.00, 5, '2026-03-18', '2026-03-23'),
(24, 'Anjali Desai', 'Office Chair', 6500.00, 2, '2026-03-22', '2026-03-28'),
(25, 'Yusuf Khan', 'Table Lamp', 750.00, 6, '2026-03-25', '2026-03-29');

SELECT * FROM orderDetails;
-- Display orderID, OrderDate, and the day number.
SELECT orderID, OrderDate, DAY(OrderDate) AS OrderDay
FROM orderDetails;


-- Display cust_name, OrderDate, and month number.
SELECT custName, OrderDate, MONTH(OrderDate) AS OrderMonth
FROM orderDetails;

-- Display orderID, OrderDate, and year.
SELECT orderID, OrderDate, YEAR(OrderDate) AS OrderYear
FROM orderDetails;

-- Display cust_name, OrderDate, and month name.
SELECT custName, OrderDate, MONTHNAME(OrderDate) AS MonthName
FROM orderDetails;

-- Display orderID, OrderDate, and day name.
SELECT orderID, OrderDate, DAYNAME(OrderDate) AS DayName
FROM orderDetails;

-- Calculate the number of days taken for delivery.
SELECT orderID, custName, OrderDate, DeliveryDate,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays
FROM orderDetails;

-- Create a complete date analysis report
SELECT orderID,custName,OrderDate,
DAY(OrderDate) AS OrderDay,
MONTH(OrderDate) AS OrderMonth,
MONTHNAME(OrderDate) AS MonthName,
YEAR(OrderDate) AS OrderYear,
DAYNAME(OrderDate) AS DayName,
DeliveryDate,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays
FROM orderDetails;

-- Display customer, product, amount, order month, and delivery days
SELECT
orderID,
custName,
productName,
amount,
OrderDate,
MONTHNAME(OrderDate) AS MonthName,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays
FROM orderDetails;

-- Find orders that took more than 5 days to delive
SELECT
orderID,
custname,
productname,
OrderDate,
DeliveryDate,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays
FROM orderDetails
WHERE DATEDIFF(DeliveryDate, OrderDate) > 5;

-- Find all orders placed in January
SELECT *
FROM orderDetails
WHERE MONTH(OrderDate) = 1;

-- Find all orders placed in February.
SELECT *
FROM orderDetails
WHERE MONTH(OrderDate) = 2;

-- ind all orders placed in March
SELECT *
FROM orderDetails
WHERE MONTH(OrderDate) = 3;
*/
--  Find all orders placed in 2026
SELECT *
FROM orderDetails
WHERE YEAR(OrderDate) = 2026;
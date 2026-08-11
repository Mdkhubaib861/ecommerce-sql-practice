use Ecommercedb;
/*
SELECT * FROM categories;
SELECT COUNT(*) AS ALL_categories
FROM categories;

SELECT * FROM orderitems;
SELECT SUM(Quantity) AS total_Quantity
FROM orderitems;

SELECT SUM(price * qty) AS total_revenue 
FROM orderDetails;

SELECT COUNT(orderID) AS total_orders 
FROM orderDetails;

SELECT AVG(price) AS average_price 
FROM orderDetails;

SELECT YEAR(OrderDate) AS OrderYear, 
COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY YEAR(OrderDate);

SELECT MONTH(OrderDate) AS ORDER_MONTH,  
COUNT(OrderID) AS TotalOrders 
FROM Orders 
GROUP BY MONTH(OrderDate);

SELECT MONTHNAME(OrderDate) AS ORDER_MONTH,  
COUNT(OrderID) AS TotalOrders 
FROM Orders 
GROUP BY MONTHNAME(OrderDate);

SELECT DAY(OrderDate) AS ORDER_DAY,  
COUNT(OrderID) AS TotalOrders 
FROM Orders 
GROUP BY DAY(OrderDate);

SELECT DAYNAME(OrderDate) AS ORDER_DAYNAME,  
COUNT(OrderID) AS TotalOrders 
FROM Orders 
GROUP BY DAYNAME(OrderDate);

SELECT DISTINCT custName , productName, qty 
FROM orderDetails 
WHERE MONTH(OrderDate) = 2;

SELECT custName, SUM(price * qty) AS TotalAmount 
FROM orderDetails 
WHERE MONTH(OrderDate) = 2 
GROUP BY custName;

SELECT MONTH(OrderDate) AS OrderMonth, 
SUM(price * qty) AS MonthlySales 
FROM orderDetails 
GROUP BY MONTH(OrderDate);

SELECT productName, qty, (price * qty) AS TotalAmount 
FROM orderDetails 
WHERE MONTH(OrderDate) = 1 AND qty < 5;

SELECT DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays, 
COUNT(orderID) AS TotalOrdersDelivered 
FROM orderDetails 
WHERE DeliveryDate
GROUP BY DATEDIFF(DeliveryDate, OrderDate);
*/

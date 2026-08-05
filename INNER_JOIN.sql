USE ECOMMERCEDB;
/*
SELECT * FROM customers;
SELECT * FROM Orders;
-- Display the total number of orders placed by each customer.
SELECT c.customerID, count(orderID) orders
FROM customers c INNER JOIN ORDERS o
ON c.customerID=o.customerID
GROUP BY customerID;

-- Display the total quantity ordered for each product.
SELECT productName, SUM(o.quantity) AS total_quantity
FROM Products p INNER JOIN Orderitems o
on P.productID = o.productID
GROUP BY productName;
*/
-- Display the customers who placed orders after '2026-07-01'.
SELECT DISTINCT c.customerID, c.customerName
FROM customers c
INNER JOIN orders o ON c.customerID = o.customerID
WHERE o.orderDate > '2026-07-01';
